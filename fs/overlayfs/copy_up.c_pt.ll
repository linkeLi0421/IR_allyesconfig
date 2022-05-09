; ModuleID = '/llk/IR_all_yes/fs/overlayfs/copy_up.c_pt.bc'
source_filename = "../fs/overlayfs/copy_up.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.72 }
%union.anon.72 = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.77 = type { ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ovl_fh = type { [3 x i8], %union.anon.78 }
%union.anon.78 = type { %struct.ovl_fb }
%struct.ovl_fb = type <{ i8, i8, i8, i8, i8, %struct.uuid_t, [0 x i32] }>
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.ovl_cu_creds = type { ptr, ptr }
%struct.ovl_cattr = type { i32, i16, ptr, ptr }
%struct.delayed_call = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.ovl_copy_up_ctx = type { ptr, ptr, %struct.path, %struct.kstat, %struct.kstat, ptr, ptr, %struct.qstr, ptr, i8, i8, i8 }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__param_str_check_copy_up = internal constant [22 x i8] c"overlay.check_copy_up\00", align 1
@__param_ops_check_copy_up = internal constant %struct.kernel_param_ops { i32 0, ptr @ovl_ccup_set, ptr @ovl_ccup_get, ptr null }, align 4
@__param_check_copy_up = internal constant %struct.kernel_param { ptr @__param_str_check_copy_up, ptr null, ptr @__param_ops_check_copy_up, i16 420, i8 -1, i8 0, %union.anon.72 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_check_copy_up253 = internal constant [50 x i8] c"overlay.parm=check_copy_up:Obsolete; does nothing\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/overlayfs/copy_up.c\00", [41 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ovl_ccup_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014overlayfs: \22check_copy_up\22 module option is obsolete\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_ccup_set\00", [19 x i8] zeroinitializer }, align 32
@ovl_ccup_set._entry_ptr = internal global ptr @ovl_ccup_set._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"N\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"posix_acl_access\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"posix_acl_default\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ovl_do_tmpfile.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovl_do_tmpfile\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/overlayfs/overlayfs.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tmpfile(%pd2, 0%o) = %i\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"overlayfs: tmpfile(%pd2, 0%o) = %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@__const.ovl_copy_fileattr.newfa = private unnamed_addr constant { i32, i32, i32, i32, i32, i32, i8, [3 x i8] } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, [3 x i8] zeroinitializer }, align 4
@ovl_copy_fileattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014overlayfs: failed to retrieve lower fileattr (%pd2, err=%i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ovl_copy_fileattr\00", [46 x i8] zeroinitializer }, align 32
@ovl_copy_fileattr._entry_ptr = internal global ptr @ovl_copy_fileattr._entry, section ".printk_index", align 4
@ovl_copy_fileattr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovl_copy_fileattr._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014overlayfs: copying fileattr: no xattr on upper\0A\00", [46 x i8] zeroinitializer }, align 32
@ovl_copy_fileattr._entry_ptr.17 = internal global ptr @ovl_copy_fileattr._entry.15, section ".printk_index", align 4
@ovl_copy_fileattr.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovl_copy_fileattr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014overlayfs: copying fileattr: no support on upper\0A\00", [44 x i8] zeroinitializer }, align 32
@ovl_copy_fileattr._entry_ptr.21 = internal global ptr @ovl_copy_fileattr._entry.19, section ".printk_index", align 4
@ovl_copy_fileattr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014overlayfs: failed to retrieve upper fileattr (%pd2, err=%i)\0A\00", [33 x i8] zeroinitializer }, align 32
@ovl_copy_fileattr._entry_ptr.24 = internal global ptr @ovl_copy_fileattr._entry.22, section ".printk_index", align 4
@ovl_do_link.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.25, ptr @.str.9, ptr @.str.26, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovl_do_link\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"link(%pd2, %pd2) = %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"overlayfs: link(%pd2, %pd2) = %i\0A\00", [62 x i8] zeroinitializer }, align 32
@ovl_do_setxattr.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.28, ptr @.str.9, ptr @.str.29, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_setxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_xattr_table = external dso_local local_unnamed_addr constant [0 x [2 x ptr]], align 4
@ovl_do_rename.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.31, ptr @.str.9, ptr @.str.32, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_do_rename\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rename(%pd2, %pd2, 0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"overlayfs: rename(%pd2, %pd2, 0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@ovl_do_rename.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.31, ptr @.str.9, ptr @.str.34, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"...rename(%pd2, %pd2, ...) = %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"overlayfs: ...rename(%pd2, %pd2, ...) = %i\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"security.capability\00", [44 x i8] zeroinitializer }, align 32
@ovl_do_removexattr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.37, ptr @.str.9, ptr @.str.38, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovl_do_removexattr\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"removexattr(%pd2, \22%s\22) = %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"overlayfs: removexattr(%pd2, \22%s\22) = %i\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967271, i64 4294967274]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967271, i64 4294967274]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 80, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 28, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 34, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 42, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 43, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 44, i32 24 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 254, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 286, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 147, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 161, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 177, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 180, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 146, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 204, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 233, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 236, i32 3 }
@___asan_gen_.148 = private constant [26 x i8] c"../fs/overlayfs/copy_up.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 909, i32 51 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [28 x i8] c"../fs/overlayfs/overlayfs.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 214, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_check_copy_up253, ptr @__param_check_copy_up, ptr @ovl_ccup_set._entry, ptr @ovl_ccup_set._entry_ptr, ptr @ovl_copy_fileattr._entry, ptr @ovl_copy_fileattr._entry.15, ptr @ovl_copy_fileattr._entry.19, ptr @ovl_copy_fileattr._entry.22, ptr @ovl_copy_fileattr._entry_ptr, ptr @ovl_copy_fileattr._entry_ptr.17, ptr @ovl_copy_fileattr._entry_ptr.21, ptr @ovl_copy_fileattr._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_ccup_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_copy_fileattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_copy_fileattr._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_copy_fileattr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_copy_fileattr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_copy_xattr(ptr noundef %sb, ptr noundef %old, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %i_opflags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_opflags, align 2
  %4 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup94_crit_edge, label %lor.lhs.false

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup94

lor.lhs.false:                                    ; preds = %entry
  %d_inode1 = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode1, align 8
  %i_opflags2 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %i_opflags2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_opflags2, align 2
  %9 = and i16 %8, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool5.not = icmp eq i16 %9, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup94_crit_edge, label %if.end

lor.lhs.false.cleanup94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup94

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @vfs_listxattr(ptr noundef %old, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp8 = icmp eq i32 %call, -95
  %.call = select i1 %cmp8, i32 0, i32 %call
  br label %cleanup94

if.end12:                                         ; preds = %if.end
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %call, i32 noundef 3520, i32 noundef -1) #16
  %tobool14.not = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup94_crit_edge, label %if.end16

if.end12.cleanup94_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup94

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @vfs_listxattr(ptr noundef %old, ptr noundef nonnull %call.i.i, i32 noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %if.end16.out_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %value.0164 = phi ptr [ %value.3, %for.inc.for.body_crit_edge ], [ null, %if.end16.for.body_crit_edge ]
  %name.0162 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %call.i.i, %if.end16.for.body_crit_edge ]
  %value_size.0161 = phi i32 [ %value_size.3, %for.inc.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %list_size.0160 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %call17, %if.end16.for.body_crit_edge ]
  %call23 = tail call i32 @strnlen(ptr noundef %name.0162, i32 noundef %list_size.0160) #17
  %add = add i32 %call23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %list_size.0160, i32 %add)
  %cmp24 = icmp ult i32 %list_size.0160, %add
  br i1 %cmp24, label %do.end, label %if.end49, !prof !85

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %for.end

if.end49:                                         ; preds = %for.body
  %sub = sub i32 %list_size.0160, %add
  %call50 = tail call zeroext i1 @ovl_is_private_xattr(ptr noundef %sb, ptr noundef %name.0162) #13
  br i1 %call50, label %if.end49.for.inc_crit_edge, label %if.end52

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end52:                                         ; preds = %if.end49
  %call53 = tail call i32 @security_inode_copy_up_xattr(ptr noundef %name.0162) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call53)
  %cmp54 = icmp sgt i32 %call53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call53)
  %cmp56.not = icmp eq i32 %call53, -95
  %or.cond = or i1 %cmp54, %cmp56.not
  br i1 %or.cond, label %if.end59, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53)
  %cmp60 = icmp eq i32 %call53, 1
  br i1 %cmp60, label %if.end59.for.inc_crit_edge, label %if.end59.retry_crit_edge

if.end59.retry_crit_edge:                         ; preds = %if.end59
  br label %retry

if.end59.for.inc_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

retry:                                            ; preds = %cleanup, %if.end59.retry_crit_edge
  %value_size.1 = phi i32 [ %size.0, %cleanup ], [ %value_size.0161, %if.end59.retry_crit_edge ]
  %value.1 = phi ptr [ %call.i, %cleanup ], [ %value.0164, %if.end59.retry_crit_edge ]
  %call64 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %old, ptr noundef %name.0162, ptr noundef %value.1, i32 noundef %value_size.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call64)
  %cmp65 = icmp eq i32 %call64, -34
  br i1 %cmp65, label %if.then67, label %retry.if.end69_crit_edge

retry.if.end69_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then67:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  %call68 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %old, ptr noundef %name.0162, ptr noundef null, i32 noundef 0) #13
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %retry.if.end69_crit_edge
  %size.0 = phi i32 [ %call68, %if.then67 ], [ %call64, %retry.if.end69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp70 = icmp slt i32 %size.0, 0
  br i1 %cmp70, label %if.end69.for.end_crit_edge, label %if.end73

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end73:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %value_size.1)
  %cmp74 = icmp sgt i32 %size.0, %value_size.1
  br i1 %cmp74, label %if.then76, label %if.end82

if.then76:                                        ; preds = %if.end73
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %size.0, i32 noundef 3264, i32 noundef -1) #16
  %tobool79.not = icmp eq ptr %call.i, null
  br i1 %tobool79.not, label %if.then76.for.end_crit_edge, label %cleanup

if.then76.for.end_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree(ptr noundef %value.1) #13
  br label %retry

if.end82:                                         ; preds = %if.end73
  %call83 = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %new, ptr noundef %name.0162, ptr noundef %value.1, i32 noundef %size.0, i32 noundef 0) #13
  %10 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call83, label %if.end82.for.end_crit_edge [
    i32 0, label %if.end82.for.inc_crit_edge
    i32 -95, label %lor.lhs.false88
  ]

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

lor.lhs.false88:                                  ; preds = %if.end82
  %call89 = tail call fastcc zeroext i1 @ovl_must_copy_xattr(ptr noundef %name.0162)
  br i1 %call89, label %lor.lhs.false88.for.end_crit_edge, label %lor.lhs.false88.for.inc_crit_edge

lor.lhs.false88.for.inc_crit_edge:                ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false88.for.end_crit_edge:                ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false88.for.inc_crit_edge, %if.end82.for.inc_crit_edge, %if.end59.for.inc_crit_edge, %if.end49.for.inc_crit_edge
  %value_size.3 = phi i32 [ %value_size.0161, %if.end49.for.inc_crit_edge ], [ %value_size.1, %if.end82.for.inc_crit_edge ], [ %value_size.0161, %if.end59.for.inc_crit_edge ], [ %value_size.1, %lor.lhs.false88.for.inc_crit_edge ]
  %value.3 = phi ptr [ %value.0164, %if.end49.for.inc_crit_edge ], [ %value.1, %if.end82.for.inc_crit_edge ], [ %value.0164, %if.end59.for.inc_crit_edge ], [ %value.1, %lor.lhs.false88.for.inc_crit_edge ]
  %add.ptr = getelementptr i8, ptr %name.0162, i32 %add
  %tobool22.not = icmp eq i32 %sub, 0
  br i1 %tobool22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false88.for.end_crit_edge, %if.end82.for.end_crit_edge, %if.then76.for.end_crit_edge, %if.end69.for.end_crit_edge, %if.end52.for.end_crit_edge, %do.end
  %value.4 = phi ptr [ %value.0164, %do.end ], [ %value.1, %if.end69.for.end_crit_edge ], [ %value.1, %if.then76.for.end_crit_edge ], [ %value.3, %for.inc.for.end_crit_edge ], [ %value.1, %lor.lhs.false88.for.end_crit_edge ], [ %value.0164, %if.end52.for.end_crit_edge ], [ %value.1, %if.end82.for.end_crit_edge ]
  %error.4 = phi i32 [ -5, %do.end ], [ -12, %if.then76.for.end_crit_edge ], [ %size.0, %if.end69.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ -95, %lor.lhs.false88.for.end_crit_edge ], [ %call53, %if.end52.for.end_crit_edge ], [ %call83, %if.end82.for.end_crit_edge ]
  tail call void @kvfree(ptr noundef %value.4) #13
  br label %out

out:                                              ; preds = %for.end, %if.end16.out_crit_edge
  %error.5 = phi i32 [ %error.4, %for.end ], [ %call17, %if.end16.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #13
  br label %cleanup94

cleanup94:                                        ; preds = %out, %if.end12.cleanup94_crit_edge, %if.then7, %lor.lhs.false.cleanup94_crit_edge, %entry.cleanup94_crit_edge
  %retval.0 = phi i32 [ %error.5, %out ], [ 0, %lor.lhs.false.cleanup94_crit_edge ], [ 0, %entry.cleanup94_crit_edge ], [ %.call, %if.then7 ], [ -12, %if.end12.cleanup94_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_listxattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_private_xattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_copy_up_xattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ovl_must_copy_xattr(ptr nocapture noundef readonly %name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(18) @.str.5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.6, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %0 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %tobool4.not, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_set_attr(ptr noundef %upperdentry, ptr nocapture noundef readonly %stat) local_unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca %struct.iattr, align 8
  %attr = alloca %struct.iattr, align 8
  %attr4 = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode, align 4
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp = icmp eq i16 %2, -24576
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr) #13
  %3 = call ptr @memset(ptr %attr, i32 0, i32 80)
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %attr, align 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %1, ptr %ia_mode, align 4
  %call = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %upperdentry, ptr noundef nonnull %attr, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr4) #13
  %6 = call ptr @memset(ptr %attr4, i32 0, i32 80)
  %7 = ptrtoint ptr %attr4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %attr4, align 8
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr4, i32 0, i32 2
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uid, align 8
  %10 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ia_uid, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr4, i32 0, i32 3
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %11 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gid, align 4
  %13 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ia_gid, align 4
  %call7 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %upperdentry, ptr noundef nonnull %attr4, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr.i) #13
  %14 = call ptr @memset(ptr %attr.i, i32 255, i32 80)
  %15 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 432, ptr %attr.i, align 8
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 1
  %16 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %ia_mode.i, align 4
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 2
  %ia_atime.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 5
  %atime.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %17 = call ptr @memset(ptr %ia_uid.i, i32 0, i32 16)
  %18 = call ptr @memcpy(ptr %ia_atime.i, ptr %atime.i, i32 16)
  %ia_mtime.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 6
  %mtime.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %19 = call ptr @memcpy(ptr %ia_mtime.i, ptr %mtime.i, i32 16)
  %ia_ctime.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 7
  %20 = call ptr @memset(ptr %ia_ctime.i, i32 0, i32 20)
  %call.i = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %upperdentry, ptr noundef nonnull %attr.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %err.125 = phi i32 [ 0, %if.then10 ], [ %call7, %if.end8.if.end12_crit_edge ], [ %call, %if.end.if.end12_crit_edge ]
  ret i32 %err.125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_encode_real_fh(ptr nocapture noundef readonly %ofs, ptr noundef %real, i1 noundef zeroext %is_upper) local_unnamed_addr #0 align 64 {
entry:
  %dwords = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwords) #13
  %d_sb = getelementptr inbounds %struct.dentry, ptr %real, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 152) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dwords to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %dwords, align 4
  %4 = getelementptr inbounds %struct.ovl_fh, ptr %call7.i.i, i32 0, i32 1
  %fid = getelementptr inbounds %struct.ovl_fh, ptr %call7.i.i, i32 1
  %call5 = call i32 @exportfs_encode_fh(ptr noundef %real, ptr noundef %fid, ptr noundef nonnull %dwords, i32 noundef 0) #13
  %5 = ptrtoint ptr %dwords to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dwords, align 4
  %shl = shl i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.out_err_crit_edge, label %lor.lhs.false.critedge, !prof !85

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

lor.lhs.false.critedge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shl)
  %cmp32 = icmp sgt i32 %shl, 128
  br i1 %cmp32, label %lor.lhs.false.critedge.out_err_crit_edge, label %lor.lhs.false63.critedge, !prof !85

lor.lhs.false.critedge.out_err_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

lor.lhs.false63.critedge:                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call5)
  %cmp65 = icmp eq i32 %call5, 255
  br i1 %cmp65, label %lor.lhs.false63.critedge.out_err_crit_edge, label %if.end97.critedge, !prof !85

lor.lhs.false63.critedge.out_err_crit_edge:       ; preds = %lor.lhs.false63.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

if.end97.critedge:                                ; preds = %lor.lhs.false63.critedge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %magic = getelementptr inbounds %struct.ovl_fh, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -5, ptr %magic, align 4
  %conv = trunc i32 %call5 to i8
  %type = getelementptr inbounds %struct.ovl_fh, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %type, align 1
  %flags = getelementptr inbounds %struct.ovl_fh, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %storemerge = select i1 %is_upper, i8 5, i8 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %flags, align 2
  %11 = trunc i32 %shl to i8
  %conv105 = add i8 %11, 21
  %len = getelementptr inbounds %struct.ovl_fh, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv105, ptr %len, align 1
  %uuid106 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 8
  %13 = ptrtoint ptr %uuid106 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %uuid106, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool107.not = icmp eq i8 %14, 0
  br i1 %tobool107.not, label %if.end97.critedge.cleanup_crit_edge, label %if.then108

if.end97.critedge.cleanup_crit_edge:              ; preds = %if.end97.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then108:                                       ; preds = %if.end97.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %uuid109 = getelementptr inbounds %struct.ovl_fh, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %uuid109, ptr %s_uuid, i32 16)
  br label %cleanup

out_err:                                          ; preds = %lor.lhs.false63.critedge.out_err_crit_edge, %lor.lhs.false.critedge.out_err_crit_edge, %if.end.out_err_crit_edge
  %.sink = phi i32 [ 369, %if.end.out_err_crit_edge ], [ 370, %lor.lhs.false.critedge.out_err_crit_edge ], [ 371, %lor.lhs.false63.critedge.out_err_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then108, %if.end97.critedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %out_err ], [ %call7.i.i, %if.then108 ], [ %call7.i.i, %if.end97.critedge.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exportfs_encode_fh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_set_origin(ptr noundef %ofs, ptr noundef %lower, ptr noundef %upper) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %lower, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call = tail call i32 @ovl_can_decode_fh(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %if.then

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @ovl_encode_real_fh(ptr noundef %ofs, ptr noundef %lower, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.then
  %3 = getelementptr inbounds %struct.ovl_fh, ptr %call1, i32 0, i32 1
  %tobool6.not = icmp eq ptr %call1, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.ovl_fh, ptr %call1, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv = zext i8 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge, %entry.cond.end_crit_edge
  %6 = phi ptr [ %3, %cond.true ], [ %3, %if.end5.cond.end_crit_edge ], [ inttoptr (i32 3 to ptr), %entry.cond.end_crit_edge ]
  %fh.024 = phi ptr [ %call1, %cond.true ], [ null, %if.end5.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %call7 = tail call i32 @ovl_check_setxattr(ptr noundef %ofs, ptr noundef %upper, i32 noundef 2, ptr noundef %6, i32 noundef %cond, i32 noundef 0) #13
  tail call void @kfree(ptr noundef %fh.024) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp = icmp eq i32 %call7, -1
  %spec.select = select i1 %cmp, i32 0, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then3
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %spec.select, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_can_decode_fh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_check_setxattr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_maybe_copy_up(ptr noundef %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @ovl_already_copied_up(ptr noundef %dentry, i32 noundef %flags) #13
  br i1 %call.i, label %entry.if.end4_crit_edge, label %if.end.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i:                                         ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %4, label %if.end24.i [
    i16 8192, label %if.end.i.if.end4_crit_edge
    i16 24576, label %if.end.i.if.end4_crit_edge11
    i16 4096, label %if.end.i.if.end4_crit_edge12
    i16 -16384, label %if.end.i.if.end4_crit_edge13
  ]

if.end.i.if.end4_crit_edge13:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i.if.end4_crit_edge12:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i.if.end4_crit_edge11:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i.i, label %if.end24.i.if.end4_crit_edge, label %ovl_open_need_copy_up.exit

if.end24.i.if.end4_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

ovl_open_need_copy_up.exit:                       ; preds = %if.end24.i
  %add.i.i = add i32 %flags, 1
  %and2.i.i = and i32 %add.i.i, 2
  %and4.i.i = and i32 %flags, 512
  %6 = or i32 %and2.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %ovl_open_need_copy_up.exit.if.end4_crit_edge, label %if.then

ovl_open_need_copy_up.exit.if.end4_crit_edge:     ; preds = %ovl_open_need_copy_up.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %ovl_open_need_copy_up.exit
  %call1 = tail call i32 @ovl_want_write(ptr noundef %dentry) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @ovl_copy_up_flags(ptr noundef %dentry, i32 noundef %flags)
  tail call void @ovl_drop_write(ptr noundef %dentry) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %ovl_open_need_copy_up.exit.if.end4_crit_edge, %if.end24.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge11, %if.end.i.if.end4_crit_edge12, %if.end.i.if.end4_crit_edge13, %entry.if.end4_crit_edge
  %err.0 = phi i32 [ %call1, %if.then.if.end4_crit_edge ], [ %call3, %if.then2 ], [ 0, %ovl_open_need_copy_up.exit.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ], [ 0, %if.end.i.if.end4_crit_edge ], [ 0, %if.end.i.if.end4_crit_edge11 ], [ 0, %if.end.i.if.end4_crit_edge12 ], [ 0, %if.end.i.if.end4_crit_edge13 ], [ 0, %if.end24.i.if.end4_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_copy_up_flags(ptr noundef %dentry, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %attr.i.i.i = alloca %struct.iattr, align 8
  %cc.i.i.i = alloca %struct.ovl_cu_creds, align 4
  %cattr.i.i.i = alloca %struct.ovl_cattr, align 4
  %done.i = alloca %struct.delayed_call, align 8
  %parentpath.i = alloca %struct.path, align 4
  %ctx.i = alloca %struct.ovl_copy_up_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  %or.cond = select i1 %tobool.not.not, i1 %3, i1 false
  br i1 %or.cond, label %do.end, label %if.end23, !prof !87

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1017, i32 noundef 9, ptr noundef null) #13
  br label %cleanup42

if.end23:                                         ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %call24 = tail call ptr @ovl_override_creds(ptr noundef %5) #13
  %tobool.not.i = icmp eq ptr %dentry, null
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  %6 = getelementptr inbounds %struct.path, ptr %parentpath.i, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %ctx.i, i32 8
  %dentry2.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 1
  %workdir.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 8
  %stat.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 3
  %mode.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool4.not.i.i = icmp eq i32 %flags, 0
  %add.i.i = add i32 %flags, 1
  %and7.i.i = and i32 %add.i.i, 2
  %and9.i.i = and i32 %flags, 512
  %8 = or i32 %and7.i.i, %and9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %metacopy.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 11
  %destdir.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 6
  %destname.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 7
  %pstat.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool42.not.i = icmp eq i32 %and9.i.i, 0
  %size.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 3, i32 11
  %dentry52.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 2, i32 1
  %link.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 5
  %indexed.i.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 10
  %nlink.i.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 3, i32 2
  %origin.i.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 9
  %10 = getelementptr inbounds %struct.ovl_cu_creds, ptr %cc.i.i.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %cattr.i.i.i, i32 4
  %rdev2.i.i.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 3, i32 8
  %link.i.i.i = getelementptr inbounds %struct.ovl_cattr, ptr %cattr.i.i.i, i32 0, i32 2
  %hardlink.i.i.i = getelementptr inbounds %struct.ovl_cattr, ptr %cattr.i.i.i, i32 0, i32 3
  %name.i.i.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 7, i32 1
  %ia_mode.i.i.i = getelementptr inbounds %struct.iattr, ptr %attr.i.i.i, i32 0, i32 1
  %ia_uid.i.i.i = getelementptr inbounds %struct.iattr, ptr %attr.i.i.i, i32 0, i32 2
  %ia_atime.i.i.i = getelementptr inbounds %struct.iattr, ptr %attr.i.i.i, i32 0, i32 5
  %atime.i.i.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 4, i32 12
  %ia_mtime.i.i.i = getelementptr inbounds %struct.iattr, ptr %attr.i.i.i, i32 0, i32 6
  %mtime.i.i.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %ctx.i, i32 0, i32 4, i32 13
  %ia_ctime.i.i.i = getelementptr inbounds %struct.iattr, ptr %attr.i.i.i, i32 0, i32 7
  %arg.i.i = getelementptr inbounds %struct.delayed_call, ptr %done.i, i32 0, i32 1
  %brmerge = or i1 %tobool4.not.i.i, %9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end23
  %call28 = call zeroext i1 @ovl_already_copied_up(ptr noundef %dentry, i32 noundef %flags) #13
  br i1 %call28, label %while.body.while.end_crit_edge, label %if.end30

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end30:                                         ; preds = %while.body
  br i1 %tobool.not.i, label %if.end30.dget.exit_crit_edge, label %if.then.i

if.end30.dget.exit_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %dget.exit

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end30.dget.exit_crit_edge
  br i1 %tobool.not, label %for.body.preheader, label %dget.exit.for.end_crit_edge

dget.exit.for.end_crit_edge:                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %dget.exit
  %call3570 = call ptr @dget_parent(ptr noundef %dentry) #13
  %call3671 = call ptr @ovl_dentry_upper(ptr noundef %call3570) #13
  %tobool37.not72 = icmp eq ptr %call3671, null
  br i1 %tobool37.not72, label %for.body.preheader.for.body.critedge_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader.for.body.critedge_crit_edge:   ; preds = %for.body.preheader
  br label %for.body.critedge

for.body.critedge:                                ; preds = %for.body.critedge.for.body.critedge_crit_edge, %for.body.preheader.for.body.critedge_crit_edge
  %call3574 = phi ptr [ %call35, %for.body.critedge.for.body.critedge_crit_edge ], [ %call3570, %for.body.preheader.for.body.critedge_crit_edge ]
  %next.06473 = phi ptr [ %call3574, %for.body.critedge.for.body.critedge_crit_edge ], [ %dentry, %for.body.preheader.for.body.critedge_crit_edge ]
  call void @dput(ptr noundef %next.06473) #13
  %call35 = call ptr @dget_parent(ptr noundef %call3574) #13
  %call36 = call ptr @ovl_dentry_upper(ptr noundef %call35) #13
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %for.body.critedge.for.body.critedge_crit_edge, label %for.body.critedge.for.end_crit_edge

for.body.critedge.for.end_crit_edge:              ; preds = %for.body.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.critedge.for.body.critedge_crit_edge:    ; preds = %for.body.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.critedge

for.end:                                          ; preds = %for.body.critedge.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %dget.exit.for.end_crit_edge
  %next.0.lcssa = phi ptr [ %dentry, %dget.exit.for.end_crit_edge ], [ %dentry, %for.body.preheader.for.end_crit_edge ], [ %call3574, %for.body.critedge.for.end_crit_edge ]
  %parent.1 = phi ptr [ null, %dget.exit.for.end_crit_edge ], [ %call3570, %for.body.preheader.for.end_crit_edge ], [ %call35, %for.body.critedge.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done.i) #13
  %12 = ptrtoint ptr %done.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %done.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parentpath.i) #13
  %13 = ptrtoint ptr %parentpath.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %parentpath.i, align 4, !annotation !88
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %ctx.i) #13
  %15 = call ptr @memset(ptr %7, i32 0, i32 328)
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %parent.1, ptr %ctx.i, align 8
  %17 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %next.0.lcssa, ptr %dentry2.i, align 4
  %call.i = call ptr @ovl_workdir(ptr noundef %next.0.lcssa) #13
  %18 = ptrtoint ptr %workdir.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %workdir.i, align 8
  %tobool.not.i59 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i59, label %do.end.i, label %if.end26.i, !prof !85

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 954, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end26.i:                                       ; preds = %for.end
  call void @ovl_path_lower(ptr noundef %next.0.lcssa, ptr noundef %7) #13
  %call28.i = call i32 @vfs_getattr(ptr noundef %7, ptr noundef %stat.i, i32 noundef 2047, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31.i:                                       ; preds = %if.end26.i
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mode.i, align 4
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %next.0.lcssa, i32 0, i32 9
  %21 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %metacopy.i.i = getelementptr inbounds %struct.ovl_fs, ptr %24, i32 0, i32 8, i32 11
  %25 = ptrtoint ptr %metacopy.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %metacopy.i.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp ne i8 %26, 0
  %27 = and i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %27)
  %cmp.i.i = icmp eq i16 %27, -32768
  %or.cond16.i.i = and i1 %cmp.i.i, %tobool.not.i.i
  %or.cond69 = and i1 %or.cond16.i.i, %brmerge
  %frombool.i = zext i1 %or.cond69 to i8
  %28 = ptrtoint ptr %metacopy.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool.i, ptr %metacopy.i, align 2
  %tobool34.not.i = icmp eq ptr %parent.1, null
  br i1 %tobool34.not.i, label %if.end31.i.if.end41.i_crit_edge, label %if.then35.i

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then35.i:                                      ; preds = %if.end31.i
  call void @ovl_path_upper(ptr noundef nonnull %parent.1, ptr noundef nonnull %parentpath.i) #13
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %6, align 4
  %31 = ptrtoint ptr %destdir.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %destdir.i, align 4
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %next.0.lcssa, i32 0, i32 4
  %32 = call ptr @memcpy(ptr %destname.i, ptr %d_name.i, i32 16)
  %call37.i = call i32 @vfs_getattr(ptr noundef nonnull %parentpath.i, ptr noundef %pstat.i, i32 noundef 96, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then35.i.if.end41.i_crit_edge, label %if.then35.i.cleanup_crit_edge

if.then35.i.cleanup_crit_edge:                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35.i.if.end41.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then35.i.if.end41.i_crit_edge, %if.end31.i.if.end41.i_crit_edge
  br i1 %tobool42.not.i, label %if.end41.i.if.end45.i_crit_edge, label %if.then43.i

if.end41.i.if.end45.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %size.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %if.end41.i.if.end45.i_crit_edge
  %34 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mode.i, align 4
  %36 = and i16 %35, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %36)
  %cmp.i = icmp eq i16 %36, -24576
  br i1 %cmp.i, label %if.then50.i, label %if.end45.i.if.end60.i_crit_edge

if.end45.i.if.end60.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

if.then50.i:                                      ; preds = %if.end45.i
  %37 = ptrtoint ptr %dentry52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentry52.i, align 4
  %call53.i = call ptr @vfs_get_link(ptr noundef %38, ptr noundef nonnull %done.i) #13
  %39 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call53.i, ptr %link.i, align 8
  %cmp.i121.i = icmp ugt ptr %call53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i, label %if.then56.i, label %if.then50.i.if.end60.i_crit_edge

if.then50.i.if.end60.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %call53.i to i32
  br label %cleanup

if.end60.i:                                       ; preds = %if.then50.i.if.end60.i_crit_edge, %if.end45.i.if.end60.i_crit_edge
  %call61.i = call i32 @ovl_copy_up_start(ptr noundef %next.0.lcssa, i32 noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.else.i, label %if.then69.i, !prof !89

if.then69.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = call i32 @llvm.smin.i32(i32 %call61.i, i32 0) #13
  br label %if.end93.i

if.else.i:                                        ; preds = %if.end60.i
  %call74.i = call ptr @ovl_dentry_upper(ptr noundef %next.0.lcssa) #13
  %tobool75.not.i = icmp eq ptr %call74.i, null
  br i1 %tobool75.not.i, label %if.then76.i, label %if.else.i.if.end78.i_crit_edge

if.else.i.if.end78.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78.i

if.then76.i:                                      ; preds = %if.else.i
  %42 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dentry2.i, align 4
  %d_sb.i122.i = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %d_sb.i122.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_sb.i122.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %call2.i.i = call zeroext i1 @ovl_need_index(ptr noundef %43) #13
  br i1 %call2.i.i, label %if.then.i.i, label %if.then76.i.if.end8.i.i_crit_edge

if.then76.i.if.end8.i.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %if.then76.i
  %48 = ptrtoint ptr %indexed.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %indexed.i.i, align 1
  %49 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mode.i, align 4
  %51 = and i16 %50, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %51)
  %cmp.i123.i = icmp eq i16 %51, 16384
  br i1 %cmp.i123.i, label %if.then4.i.i, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dentry2.i, align 4
  %d_sb6.i.i = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %d_sb6.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_sb6.i.i, align 4
  %call7.i.i = call ptr @ovl_indexdir(ptr noundef %55) #13
  %56 = ptrtoint ptr %workdir.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %workdir.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i.if.end8.i.i_crit_edge, %if.then76.i.if.end8.i.i_crit_edge
  %to_index.0.off0.i.i = phi i1 [ false, %if.then4.i.i ], [ false, %if.then76.i.if.end8.i.i_crit_edge ], [ true, %if.then.i.i.if.end8.i.i_crit_edge ]
  %57 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mode.i, align 4
  %59 = and i16 %58, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %59)
  %cmp13.i.i = icmp eq i16 %59, 16384
  br i1 %cmp13.i.i, label %if.end8.i.i.if.then20.i.i_crit_edge, label %lor.lhs.false.i.i

if.end8.i.i.if.then20.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i.i

lor.lhs.false.i.i:                                ; preds = %if.end8.i.i
  %60 = ptrtoint ptr %nlink.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nlink.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp16.i.i = icmp eq i32 %61, 1
  %brmerge.i.i = or i1 %to_index.0.off0.i.i, %cmp16.i.i
  br i1 %brmerge.i.i, label %lor.lhs.false.i.i.if.then20.i.i_crit_edge, label %lor.lhs.false.i.i.if.end21.i.i_crit_edge

lor.lhs.false.i.i.if.end21.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i.i

lor.lhs.false.i.i.if.then20.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then20.i.i_crit_edge, %if.end8.i.i.if.then20.i.i_crit_edge
  %62 = ptrtoint ptr %origin.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %origin.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then20.i.i, %lor.lhs.false.i.i.if.end21.i.i_crit_edge
  br i1 %to_index.0.off0.i.i, label %if.then23.i.i, label %if.else32.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  %63 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dentry2.i, align 4
  %d_sb25.i.i = getelementptr inbounds %struct.dentry, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %d_sb25.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_sb25.i.i, align 4
  %call26.i.i = call ptr @ovl_indexdir(ptr noundef %66) #13
  %67 = ptrtoint ptr %destdir.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call26.i.i, ptr %destdir.i, align 4
  %68 = ptrtoint ptr %dentry52.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dentry52.i, align 4
  %call28.i.i = call i32 @ovl_get_index_name(ptr noundef %47, ptr noundef %69, ptr noundef %destname.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then23.i.i.if.end66.i.i_crit_edge, label %if.then23.i.i.if.end92.i_crit_edge

if.then23.i.i.if.end92.i_crit_edge:               ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.i

if.then23.i.i.if.end66.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i.i

if.else32.i.i:                                    ; preds = %if.end21.i.i
  %70 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx.i, align 8
  %tobool33.not.i.i = icmp eq ptr %71, null
  br i1 %tobool33.not.i.i, label %do.end.i.i, label %if.else58.i.i, !prof !85

do.end.i.i:                                       ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 807, i32 noundef 9, ptr noundef null) #13
  br label %if.end92.i

if.else58.i.i:                                    ; preds = %if.else32.i.i
  %72 = ptrtoint ptr %destdir.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %destdir.i, align 4
  %call61.i.i = call i32 @ovl_set_impure(ptr noundef nonnull %71, ptr noundef %73) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %tobool62.not.i.i = icmp eq i32 %call61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.else58.i.i.if.end66.i.i_crit_edge, label %if.else58.i.i.if.end92.i_crit_edge

if.else58.i.i.if.end92.i_crit_edge:               ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.i

if.else58.i.i.if.end66.i.i_crit_edge:             ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else58.i.i.if.end66.i.i_crit_edge, %if.then23.i.i.if.end66.i.i_crit_edge
  %74 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mode.i, align 4
  %76 = and i16 %75, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %76)
  %cmp71.i.i = icmp eq i16 %76, -32768
  br i1 %cmp71.i.i, label %land.lhs.true.i124.i, label %if.end66.i.i.if.else77.i.i_crit_edge

if.end66.i.i.if.else77.i.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else77.i.i

land.lhs.true.i124.i:                             ; preds = %if.end66.i.i
  %tmpfile.i.i = getelementptr inbounds %struct.ovl_fs, ptr %47, i32 0, i32 10
  %77 = ptrtoint ptr %tmpfile.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tmpfile.i.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool73.not.i.i = icmp eq i8 %78, 0
  br i1 %tobool73.not.i.i, label %land.lhs.true.i124.i.if.else77.i.i_crit_edge, label %if.then75.i.i

land.lhs.true.i124.i.if.else77.i.i_crit_edge:     ; preds = %land.lhs.true.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else77.i.i

if.then75.i.i:                                    ; preds = %land.lhs.true.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  %call76.i.i = call fastcc i32 @ovl_copy_up_tmpfile(ptr noundef nonnull %ctx.i) #13
  br label %if.end79.i.i

if.else77.i.i:                                    ; preds = %land.lhs.true.i124.i.if.else77.i.i_crit_edge, %if.end66.i.i.if.else77.i.i_crit_edge
  %79 = ptrtoint ptr %destdir.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %destdir.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %83 = ptrtoint ptr %workdir.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %workdir.i, align 8
  %d_inode.i113.i.i.i = getelementptr inbounds %struct.dentry, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %d_inode.i113.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %d_inode.i113.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cc.i.i.i) #13
  %87 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 -1 to ptr), ptr %cc.i.i.i, align 4, !annotation !88
  %88 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cattr.i.i.i) #13
  %89 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %11, align 4
  %90 = ptrtoint ptr %rdev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rdev2.i.i.i, align 4
  %92 = ptrtoint ptr %cattr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %cattr.i.i.i, align 4
  store i16 %76, ptr %11, align 4
  %93 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %link.i, align 8
  %95 = ptrtoint ptr %link.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %link.i.i.i, align 4
  %96 = ptrtoint ptr %hardlink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %hardlink.i.i.i, align 4
  %call9.i.i.i = call ptr @lock_rename(ptr noundef %84, ptr noundef %80) #13
  %cmp.not.i.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.else77.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge

if.else77.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge: ; preds = %if.else77.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_up_workdir.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else77.i.i
  %97 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dentry2.i, align 4
  %99 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %10, align 4
  %100 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %cc.i.i.i, align 4
  %call.i.i.i.i = call i32 @security_inode_copy_up(ptr noundef %98, ptr noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_up_workdir.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %101 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %10, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.if.end13.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.if.end13.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i.i.i.i = call ptr @override_creds(ptr noundef nonnull %102) #13
  %103 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call5.i.i.i.i, ptr %cc.i.i.i, align 4
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then3.i.i.i.i, %if.end.i.i.i.i.if.end13.i.i.i_crit_edge
  %104 = ptrtoint ptr %workdir.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %workdir.i, align 8
  %call15.i.i.i = call ptr @ovl_create_temp(ptr noundef %105, ptr noundef nonnull %cattr.i.i.i) #13
  call fastcc void @ovl_revert_cu_creds(ptr noundef nonnull %cc.i.i.i) #13
  %106 = ptrtoint ptr %call15.i.i.i to i32
  %cmp.i114.i.i.i = icmp ugt ptr %call15.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114.i.i.i, label %if.end13.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge, label %if.end19.i.i.i

if.end13.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_up_workdir.exit.i.i

if.end19.i.i.i:                                   ; preds = %if.end13.i.i.i
  %call20.i.i.i = call fastcc i32 @ovl_copy_up_inode(ptr noundef nonnull %ctx.i, ptr noundef %call15.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.end23.i.i.i, label %if.end19.i.i.i.cleanup.i.i.i_crit_edge

if.end19.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end19.i.i.i
  %107 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %mode.i, align 4
  %109 = and i16 %108, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %109)
  %cmp28.i.i.i = icmp eq i16 %109, 16384
  br i1 %cmp28.i.i.i, label %land.lhs.true.i.i.i, label %if.end23.i.i.i.if.end39.i.i.i_crit_edge

if.end23.i.i.i.if.end39.i.i.i_crit_edge:          ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end23.i.i.i
  %110 = ptrtoint ptr %indexed.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %indexed.i.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool30.not.i.i.i = icmp eq i8 %111, 0
  br i1 %tobool30.not.i.i.i, label %land.lhs.true.i.i.i.if.end39.i.i.i_crit_edge, label %if.then32.i.i.i

land.lhs.true.i.i.i.if.end39.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i.i.i

if.then32.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %112 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dentry2.i, align 4
  %114 = ptrtoint ptr %dentry52.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dentry52.i, align 4
  %call35.i.i.i = call fastcc i32 @ovl_create_index(ptr noundef %113, ptr noundef %115, ptr noundef %call15.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %call35.i.i.i, 0
  br i1 %tobool36.not.i.i.i, label %if.then32.i.i.i.if.end39.i.i.i_crit_edge, label %if.then32.i.i.i.cleanup.i.i.i_crit_edge

if.then32.i.i.i.cleanup.i.i.i_crit_edge:          ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i.i

if.then32.i.i.i.if.end39.i.i.i_crit_edge:         ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then32.i.i.i.if.end39.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end39.i.i.i_crit_edge, %if.end23.i.i.i.if.end39.i.i.i_crit_edge
  %116 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name.i.i.i, align 8
  %118 = ptrtoint ptr %destdir.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %destdir.i, align 4
  %120 = ptrtoint ptr %destname.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %destname.i, align 8
  %call42.i.i.i = call ptr @lookup_one_len(ptr noundef %117, ptr noundef %119, i32 noundef %121) #13
  %122 = ptrtoint ptr %call42.i.i.i to i32
  %cmp.i115.i.i.i = icmp ugt ptr %call42.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115.i.i.i, label %if.end39.i.i.i.cleanup.i.i.i_crit_edge, label %if.end46.i.i.i

if.end39.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i.i

if.end46.i.i.i:                                   ; preds = %if.end39.i.i.i
  %call47.i.i.i = call fastcc i32 @ovl_do_rename(ptr noundef %86, ptr noundef %call15.i.i.i, ptr noundef %82, ptr noundef %call42.i.i.i) #13
  call void @dput(ptr noundef %call42.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %if.end50.i.i.i, label %if.end46.i.i.i.cleanup.i.i.i_crit_edge

if.end46.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i.i

if.end50.i.i.i:                                   ; preds = %if.end46.i.i.i
  %123 = ptrtoint ptr %metacopy.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %metacopy.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool51.not.i.i.i = icmp eq i8 %124, 0
  br i1 %tobool51.not.i.i.i, label %if.then52.i.i.i, label %if.end50.i.i.i.if.end55.i.i.i_crit_edge

if.end50.i.i.i.if.end55.i.i.i_crit_edge:          ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i.i.i

if.then52.i.i.i:                                  ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dentry2.i, align 4
  %d_inode.i116.i.i.i = getelementptr inbounds %struct.dentry, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %d_inode.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %d_inode.i116.i.i.i, align 8
  call void @ovl_set_upperdata(ptr noundef %128) #13
  br label %if.end55.i.i.i

if.end55.i.i.i:                                   ; preds = %if.then52.i.i.i, %if.end50.i.i.i.if.end55.i.i.i_crit_edge
  %129 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dentry2.i, align 4
  %d_inode.i117.i.i.i = getelementptr inbounds %struct.dentry, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %d_inode.i117.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %d_inode.i117.i.i.i, align 8
  call void @ovl_inode_update(ptr noundef %132, ptr noundef %call15.i.i.i) #13
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %132, align 8
  %135 = and i16 %134, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %135)
  %cmp60.i.i.i = icmp eq i16 %135, 16384
  br i1 %cmp60.i.i.i, label %if.then62.i.i.i, label %if.end55.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge

if.end55.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge: ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_up_workdir.exit.i.i

if.then62.i.i.i:                                  ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i.i.i.i = getelementptr i8, ptr %132, i32 -8
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i.i.i) #13
  br label %ovl_copy_up_workdir.exit.i.i

cleanup.i.i.i:                                    ; preds = %if.end46.i.i.i.cleanup.i.i.i_crit_edge, %if.end39.i.i.i.cleanup.i.i.i_crit_edge, %if.then32.i.i.i.cleanup.i.i.i_crit_edge, %if.end19.i.i.i.cleanup.i.i.i_crit_edge
  %err.1.i.i.i = phi i32 [ %call20.i.i.i, %if.end19.i.i.i.cleanup.i.i.i_crit_edge ], [ %call35.i.i.i, %if.then32.i.i.i.cleanup.i.i.i_crit_edge ], [ %122, %if.end39.i.i.i.cleanup.i.i.i_crit_edge ], [ %call47.i.i.i, %if.end46.i.i.i.cleanup.i.i.i_crit_edge ]
  %call66.i.i.i = call i32 @ovl_cleanup(ptr noundef %86, ptr noundef %call15.i.i.i) #13
  call void @dput(ptr noundef %call15.i.i.i) #13
  br label %ovl_copy_up_workdir.exit.i.i

ovl_copy_up_workdir.exit.i.i:                     ; preds = %cleanup.i.i.i, %if.then62.i.i.i, %if.end55.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge, %if.end13.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge, %if.end.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge, %if.else77.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge
  %err.0.i.i.i = phi i32 [ -5, %if.else77.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge ], [ %106, %if.end13.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge ], [ %err.1.i.i.i, %cleanup.i.i.i ], [ 0, %if.then62.i.i.i ], [ 0, %if.end55.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i.i.ovl_copy_up_workdir.exit.i.i_crit_edge ]
  %136 = ptrtoint ptr %workdir.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %workdir.i, align 8
  %138 = ptrtoint ptr %destdir.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %destdir.i, align 4
  call void @unlock_rename(ptr noundef %137, ptr noundef %139) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cattr.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cc.i.i.i) #13
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %ovl_copy_up_workdir.exit.i.i, %if.then75.i.i
  %err.0.i.i = phi i32 [ %call76.i.i, %if.then75.i.i ], [ %err.0.i.i.i, %ovl_copy_up_workdir.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool80.not.i.i = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end82.i.i, label %out.i.i

if.end82.i.i:                                     ; preds = %if.end79.i.i
  %140 = ptrtoint ptr %indexed.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %indexed.i.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool84.not.i.i = icmp eq i8 %141, 0
  br i1 %tobool84.not.i.i, label %if.end82.i.i.if.end88.i.i_crit_edge, label %if.then85.i.i

if.end82.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i.i

if.then85.i.i:                                    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dentry2.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %d_inode.i.i.i, align 8
  %flags.i.i.i = getelementptr i8, ptr %145, i32 -8
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.i.i) #13
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then85.i.i, %if.end82.i.i.if.end88.i.i_crit_edge
  br i1 %to_index.0.off0.i.i, label %out.thread.i.i, label %out.thread147.i.i

out.thread.i.i:                                   ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %146 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dentry2.i, align 4
  %call92.i.i = call i32 @ovl_set_nlink_upper(ptr noundef %147) #13
  br label %if.then101.i.i

out.thread147.i.i:                                ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %destdir.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %destdir.i, align 4
  %d_inode.i143.i.i = getelementptr inbounds %struct.dentry, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %d_inode.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %d_inode.i143.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %151, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #13
  %152 = ptrtoint ptr %destdir.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %destdir.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr.i.i.i) #13
  %154 = call ptr @memset(ptr %attr.i.i.i, i32 255, i32 80)
  %155 = ptrtoint ptr %attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 432, ptr %attr.i.i.i, align 8
  %156 = ptrtoint ptr %ia_mode.i.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %ia_mode.i.i.i, align 4
  %157 = call ptr @memset(ptr %ia_uid.i.i.i, i32 0, i32 16)
  %158 = call ptr @memcpy(ptr %ia_atime.i.i.i, ptr %atime.i.i.i, i32 16)
  %159 = call ptr @memcpy(ptr %ia_mtime.i.i.i, ptr %mtime.i.i.i, i32 16)
  %160 = call ptr @memset(ptr %ia_ctime.i.i.i, i32 0, i32 20)
  %call.i.i.i = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %153, ptr noundef nonnull %attr.i.i.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i.i.i) #13
  call void @up_write(ptr noundef %i_rwsem.i.i.i) #13
  %161 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dentry2.i, align 4
  call void @ovl_dentry_set_upper_alias(ptr noundef %162) #13
  br label %if.end78.i

out.i.i:                                          ; preds = %if.end79.i.i
  br i1 %to_index.0.off0.i.i, label %out.i.i.if.then101.i.i_crit_edge, label %out.i.i.if.end92.i_crit_edge

out.i.i.if.end92.i_crit_edge:                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.i

out.i.i.if.then101.i.i_crit_edge:                 ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then101.i.i

if.then101.i.i:                                   ; preds = %out.i.i.if.then101.i.i_crit_edge, %out.thread.i.i
  %err.1146.i.i = phi i32 [ %call92.i.i, %out.thread.i.i ], [ %err.0.i.i, %out.i.i.if.then101.i.i_crit_edge ]
  %163 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %name.i.i.i, align 8
  call void @kfree(ptr noundef %164) #13
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then101.i.i, %out.thread147.i.i, %if.else.i.if.end78.i_crit_edge
  %err.0.i = phi i32 [ 0, %if.else.i.if.end78.i_crit_edge ], [ %err.1146.i.i, %if.then101.i.i ], [ 0, %out.thread147.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool79.not.i = icmp ne i32 %err.0.i, 0
  %brmerge.i = or i1 %tobool34.not.i, %tobool79.not.i
  br i1 %brmerge.i, label %if.end78.i.if.end85.i_crit_edge, label %land.lhs.true81.i

if.end78.i.if.end85.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85.i

land.lhs.true81.i:                                ; preds = %if.end78.i
  %call82.i = call zeroext i1 @ovl_dentry_has_upper_alias(ptr noundef %next.0.lcssa) #13
  br i1 %call82.i, label %land.lhs.true81.i.land.lhs.true87.i_crit_edge, label %if.then83.i

land.lhs.true81.i.land.lhs.true87.i_crit_edge:    ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true87.i

if.then83.i:                                      ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #15
  %call84.i = call fastcc i32 @ovl_link_up(ptr noundef nonnull %ctx.i) #13
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i, %if.end78.i.if.end85.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %if.end78.i.if.end85.i_crit_edge ], [ %call84.i, %if.then83.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool86.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool86.not.i, label %if.end85.i.land.lhs.true87.i_crit_edge, label %if.end85.i.if.end92.i_crit_edge

if.end85.i.if.end92.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.i

if.end85.i.land.lhs.true87.i_crit_edge:           ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true87.i

land.lhs.true87.i:                                ; preds = %if.end85.i.land.lhs.true87.i_crit_edge, %land.lhs.true81.i.land.lhs.true87.i_crit_edge
  %call88.i = call zeroext i1 @ovl_dentry_needs_data_copy_up_locked(ptr noundef %next.0.lcssa, i32 noundef %flags) #13
  br i1 %call88.i, label %if.then90.i, label %land.lhs.true87.i.if.end92.i_crit_edge

land.lhs.true87.i.if.end92.i_crit_edge:           ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.i

if.then90.i:                                      ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #15
  %call91.i = call fastcc i32 @ovl_copy_up_meta_inode_data(ptr noundef nonnull %ctx.i) #13
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then90.i, %land.lhs.true87.i.if.end92.i_crit_edge, %if.end85.i.if.end92.i_crit_edge, %out.i.i.if.end92.i_crit_edge, %if.else58.i.i.if.end92.i_crit_edge, %do.end.i.i, %if.then23.i.i.if.end92.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %if.end85.i.if.end92.i_crit_edge ], [ %call91.i, %if.then90.i ], [ 0, %land.lhs.true87.i.if.end92.i_crit_edge ], [ %err.0.i.i, %out.i.i.if.end92.i_crit_edge ], [ %call61.i.i, %if.else58.i.i.if.end92.i_crit_edge ], [ %call28.i.i, %if.then23.i.i.if.end92.i_crit_edge ], [ -5, %do.end.i.i ]
  call void @ovl_copy_up_end(ptr noundef %next.0.lcssa) #13
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.end92.i, %if.then69.i
  %err.3.i = phi i32 [ %41, %if.then69.i ], [ %err.2.i, %if.end92.i ]
  %165 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %done.i, align 8
  %tobool.not.i126.i = icmp eq ptr %166, null
  br i1 %tobool.not.i126.i, label %if.end93.i.cleanup_crit_edge, label %if.then.i127.i

if.end93.i.cleanup_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i127.i:                                   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  %167 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arg.i.i, align 4
  call void %166(ptr noundef %168) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i127.i, %if.end93.i.cleanup_crit_edge, %if.then56.i, %if.then35.i.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -30, %do.end.i ], [ %40, %if.then56.i ], [ %call28.i, %if.end26.i.cleanup_crit_edge ], [ %call37.i, %if.then35.i.cleanup_crit_edge ], [ %err.3.i, %if.end93.i.cleanup_crit_edge ], [ %err.3.i, %if.then.i127.i ]
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %ctx.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parentpath.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done.i) #13
  call void @dput(ptr noundef %parent.1) #13
  call void @dput(ptr noundef %next.0.lcssa) #13
  %tobool25.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool25.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %while.body.while.end_crit_edge ], [ %retval.0.i, %cleanup.while.end_crit_edge ]
  call void @revert_creds(ptr noundef %call24) #13
  br label %cleanup42

cleanup42:                                        ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %err.0.lcssa, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_copy_up_with_data(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ovl_copy_up_flags(ptr noundef %dentry, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_copy_up(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ovl_copy_up_flags(ptr noundef %dentry, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_ccup_set(ptr nocapture noundef readnone %buf, ptr nocapture noundef readnone %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #19
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ovl_ccup_get(ptr nocapture noundef writeonly %buf, ptr nocapture noundef readnone %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.3, i32 3)
  ret i32 2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_already_copied_up(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_workdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_lower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_upper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_get_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_copy_up_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_has_upper_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_link_up(ptr nocapture noundef readonly %c) unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %call = tail call ptr @ovl_dentry_upper(ptr noundef %1) #13
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 8
  %call3 = tail call i32 @ovl_set_impure(ptr noundef %5, ptr noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry, align 4
  %call4 = tail call i32 @ovl_set_nlink_lower(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #13
  %8 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %12 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_name, align 8
  %call11 = tail call ptr @lookup_one_len(ptr noundef %11, ptr noundef %call, i32 noundef %13) #13
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end23, label %if.then14

if.then14:                                        ; preds = %if.end7
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry, align 4
  %call16 = tail call ptr @ovl_dentry_upper(ptr noundef %15) #13
  %call.i = tail call i32 @vfs_link(ptr noundef %call16, ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %call11, ptr noundef null) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_link.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_link_up, %if.then.i)) #13
          to label %ovl_do_link.exit [label %if.then.i], !srcloc !90

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_link.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.27, ptr noundef %call16, ptr noundef %call11, i32 noundef %call.i) #13
  br label %ovl_do_link.exit

ovl_do_link.exit:                                 ; preds = %if.then.i, %if.then14
  tail call void @dput(ptr noundef %call11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end23.thread, label %if.end23.thread59

if.end23.thread59:                                ; preds = %ovl_do_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_write(ptr noundef %i_rwsem.i) #13
  br label %cleanup

if.end23.thread:                                  ; preds = %ovl_do_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr.i) #13
  %16 = call ptr @memset(ptr %attr.i, i32 255, i32 80)
  %17 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 432, ptr %attr.i, align 8
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 1
  %18 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %ia_mode.i, align 4
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 2
  %ia_atime.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 5
  %atime.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 4, i32 12
  %19 = call ptr @memset(ptr %ia_uid.i, i32 0, i32 16)
  %20 = call ptr @memcpy(ptr %ia_atime.i, ptr %atime.i, i32 16)
  %ia_mtime.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 6
  %mtime.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 4, i32 13
  %21 = call ptr @memcpy(ptr %ia_mtime.i, ptr %mtime.i, i32 16)
  %ia_ctime.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 7
  %22 = call ptr @memset(ptr %ia_ctime.i, i32 0, i32 20)
  %call.i55 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %call, ptr noundef nonnull %attr.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i) #13
  %23 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dentry, align 4
  call void @ovl_dentry_set_upper_alias(ptr noundef %24) #13
  call void @up_write(ptr noundef %i_rwsem.i) #13
  %25 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentry, align 4
  %call28 = call i32 @ovl_set_nlink_upper(ptr noundef %26) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %call11 to i32
  tail call void @up_write(ptr noundef %i_rwsem.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end23.thread, %if.end23.thread59, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end23.thread ], [ %call3, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %27, %if.end23 ], [ %call.i, %if.end23.thread59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_needs_data_copy_up_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_copy_up_meta_inode_data(ptr nocapture noundef readonly %c) unnamed_addr #0 align 64 {
entry:
  %upperpath = alloca %struct.path, align 4
  %datapath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upperpath) #13
  %6 = ptrtoint ptr %upperpath to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %upperpath, align 4, !annotation !88
  %7 = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datapath) #13
  %9 = ptrtoint ptr %datapath to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %datapath, align 4, !annotation !88
  %10 = getelementptr inbounds %struct.path, ptr %datapath, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !88
  call void @ovl_path_upper(ptr noundef %1, ptr noundef nonnull %upperpath) #13
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %do.end, label %if.end23, !prof !85

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 901, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry, align 4
  call void @ovl_path_lowerdata(ptr noundef %15, ptr noundef nonnull %datapath) #13
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  %cmp27 = icmp eq ptr %17, null
  br i1 %cmp27, label %do.end43, label %if.end59, !prof !85

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 905, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end59:                                         ; preds = %if.end23
  %size = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 3, i32 11
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool60.not = icmp eq i64 %19, 0
  br i1 %tobool60.not, label %if.end59.if.end67_crit_edge, label %if.then61

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then61:                                        ; preds = %if.end59
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %7, align 4
  %call.i = call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %21, ptr noundef nonnull @.str.36, ptr noundef null, i32 noundef 0) #13
  %22 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call.i, label %if.end.i [
    i32 -61, label %if.then61.if.end67_crit_edge
    i32 -95, label %if.then61.if.end67_crit_edge116
  ]

if.then61.if.end67_crit_edge116:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then61.if.end67_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end.i:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp sgt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end8.i.i.i, label %ovl_getxattr.exit

if.end8.i.i.i:                                    ; preds = %if.end.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call.i, i32 noundef 3520) #16
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end6.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.end8.i.i.i
  %call7.i = call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %21, ptr noundef nonnull @.str.36, ptr noundef nonnull %call9.i.i.i, i32 noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.if.end67_crit_edge

if.end6.i.if.end67_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %cleanup

ovl_getxattr.exit:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp64 = icmp slt i32 %call.i, 0
  br i1 %cmp64, label %ovl_getxattr.exit.cleanup_crit_edge, label %ovl_getxattr.exit.if.end67_crit_edge

ovl_getxattr.exit.if.end67_crit_edge:             ; preds = %ovl_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

ovl_getxattr.exit.cleanup_crit_edge:              ; preds = %ovl_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end67:                                         ; preds = %ovl_getxattr.exit.if.end67_crit_edge, %if.end6.i.if.end67_crit_edge, %if.then61.if.end67_crit_edge, %if.then61.if.end67_crit_edge116, %if.end59.if.end67_crit_edge
  %capability.1 = phi ptr [ null, %if.end59.if.end67_crit_edge ], [ null, %ovl_getxattr.exit.if.end67_crit_edge ], [ %call9.i.i.i, %if.end6.i.if.end67_crit_edge ], [ null, %if.then61.if.end67_crit_edge ], [ null, %if.then61.if.end67_crit_edge116 ]
  %cap_size.0 = phi i32 [ -1, %if.end59.if.end67_crit_edge ], [ 0, %ovl_getxattr.exit.if.end67_crit_edge ], [ %call7.i, %if.end6.i.if.end67_crit_edge ], [ 0, %if.then61.if.end67_crit_edge ], [ 0, %if.then61.if.end67_crit_edge116 ]
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %size, align 8
  %call70 = call fastcc i32 @ovl_copy_up_data(ptr noundef %5, ptr noundef nonnull %datapath, ptr noundef nonnull %upperpath, i64 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.out_free_crit_edge

if.end67.out_free_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end73:                                         ; preds = %if.end67
  %tobool74.not = icmp eq ptr %capability.1, null
  br i1 %tobool74.not, label %if.end73.if.end81_crit_edge, label %if.then75

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then75:                                        ; preds = %if.end73
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %call77 = call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %26, ptr noundef nonnull @.str.36, ptr noundef nonnull %capability.1, i32 noundef %cap_size.0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then75.if.end81_crit_edge, label %if.then75.out_free_crit_edge

if.then75.out_free_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then75.if.end81_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end81:                                         ; preds = %if.then75.if.end81_crit_edge, %if.end73.if.end81_crit_edge
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 4
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %5, i32 0, i32 8, i32 12
  %29 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %userxattr.i.i, align 1, !range !86
  %31 = zext i8 %30 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 6, i32 %31
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %28, ptr noundef %33) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_copy_up_meta_inode_data, %if.then.i)) #13
          to label %ovl_do_removexattr.exit [label %if.then.i], !srcloc !90

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_removexattr.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.39, ptr noundef %28, ptr noundef %33, i32 noundef %call1.i) #13
  br label %ovl_do_removexattr.exit

ovl_do_removexattr.exit:                          ; preds = %if.then.i, %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool84.not = icmp eq i32 %call1.i, 0
  br i1 %tobool84.not, label %if.end86, label %ovl_do_removexattr.exit.out_free_crit_edge

ovl_do_removexattr.exit.out_free_crit_edge:       ; preds = %ovl_do_removexattr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end86:                                         ; preds = %ovl_do_removexattr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i, align 8
  call void @ovl_set_upperdata(ptr noundef %37) #13
  br label %out_free

out_free:                                         ; preds = %if.end86, %ovl_do_removexattr.exit.out_free_crit_edge, %if.then75.out_free_crit_edge, %if.end67.out_free_crit_edge
  %err.0 = phi i32 [ %call70, %if.end67.out_free_crit_edge ], [ %call77, %if.then75.out_free_crit_edge ], [ %call1.i, %ovl_do_removexattr.exit.out_free_crit_edge ], [ 0, %if.end86 ]
  call void @kfree(ptr noundef %capability.1) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %ovl_getxattr.exit.cleanup_crit_edge, %if.then9.i, %if.end8.i.i.i.cleanup_crit_edge, %do.end43, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end43 ], [ %call.i, %ovl_getxattr.exit.cleanup_crit_edge ], [ %err.0, %out_free ], [ %call7.i, %if.then9.i ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datapath) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_copy_up_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_need_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_indexdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_get_index_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_impure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_copy_up_tmpfile(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %cc = alloca %struct.ovl_cu_creds, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %destdir = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 6
  %0 = ptrtoint ptr %destdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destdir, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cc) #13
  %4 = getelementptr inbounds %struct.ovl_cu_creds, ptr %cc, i32 0, i32 1
  %dentry = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 1
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %4, align 4
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cc, align 4
  %call.i = call i32 @security_inode_copy_up(ptr noundef %6, ptr noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = call ptr @override_creds(ptr noundef nonnull %10) #13
  %11 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i, ptr %cc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge
  %workdir = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 8
  %12 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %workdir, align 8
  %mode = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mode, align 4
  %call.i57 = call ptr @vfs_tmpfile(ptr noundef nonnull @init_user_ns, ptr noundef %13, i16 noundef zeroext %15, i32 noundef 0) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_tmpfile.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_copy_up_tmpfile, %if.then.i)) #13
          to label %ovl_do_tmpfile.exit [label %if.then.i], !srcloc !90

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cmp.i.i.i = icmp ugt ptr %call.i57, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call.i57 to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %16, i32 0
  %conv.i = zext i16 %15 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_tmpfile.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.11, ptr noundef %13, i32 noundef %conv.i, i32 noundef %spec.select.i.i) #13
  br label %ovl_do_tmpfile.exit

ovl_do_tmpfile.exit:                              ; preds = %if.then.i, %if.end
  call fastcc void @ovl_revert_cu_creds(ptr noundef nonnull %cc)
  %cmp.i58 = icmp ugt ptr %call.i57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then4, label %if.end6

if.then4:                                         ; preds = %ovl_do_tmpfile.exit
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call.i57 to i32
  br label %cleanup

if.end6:                                          ; preds = %ovl_do_tmpfile.exit
  %call7 = call fastcc i32 @ovl_copy_up_inode(ptr noundef %c, ptr noundef %call.i57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_dput_crit_edge

if.end6.out_dput_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end10:                                         ; preds = %if.end6
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #13
  %destname = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 7
  %name = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 8
  %20 = ptrtoint ptr %destdir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %destdir, align 4
  %22 = ptrtoint ptr %destname to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %destname, align 8
  %call13 = call ptr @lookup_one_len(ptr noundef %19, ptr noundef %21, i32 noundef %23) #13
  %24 = ptrtoint ptr %call13 to i32
  %cmp.i59 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.end10.if.end18_crit_edge, label %if.then16

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %if.end10
  %call.i60 = call i32 @vfs_link(ptr noundef %call.i57, ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %call13, ptr noundef null) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_link.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_copy_up_tmpfile, %if.then.i61)) #13
          to label %ovl_do_link.exit [label %if.then.i61], !srcloc !90

if.then.i61:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_link.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.27, ptr noundef %call.i57, ptr noundef %call13, i32 noundef %call.i60) #13
  br label %ovl_do_link.exit

ovl_do_link.exit:                                 ; preds = %if.then.i61, %if.then16
  call void @dput(ptr noundef %call13) #13
  br label %if.end18

if.end18:                                         ; preds = %ovl_do_link.exit, %if.end10.if.end18_crit_edge
  %err.0 = phi i32 [ %24, %if.end10.if.end18_crit_edge ], [ %call.i60, %ovl_do_link.exit ]
  call void @up_write(ptr noundef %i_rwsem.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool19.not = icmp eq i32 %err.0, 0
  br i1 %tobool19.not, label %if.end21, label %if.end18.out_dput_crit_edge

if.end18.out_dput_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end21:                                         ; preds = %if.end18
  %metacopy = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 11
  %25 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %metacopy, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not = icmp eq i8 %26, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dentry, align 4
  %d_inode.i63 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i63, align 8
  call void @ovl_set_upperdata(ptr noundef %30) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge
  %31 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry, align 4
  %d_inode.i64 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i64, align 8
  call void @ovl_inode_update(ptr noundef %34, ptr noundef %call.i57) #13
  br label %cleanup

out_dput:                                         ; preds = %if.end18.out_dput_crit_edge, %if.end6.out_dput_crit_edge
  %err.1 = phi i32 [ %call7, %if.end6.out_dput_crit_edge ], [ %err.0, %if.end18.out_dput_crit_edge ]
  call void @dput(ptr noundef %call.i57) #13
  br label %cleanup

cleanup:                                          ; preds = %out_dput, %if.end26, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then4 ], [ %err.1, %out_dput ], [ 0, %if.end26 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cc) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_nlink_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_upper_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_revert_cu_creds(ptr nocapture noundef readonly %cc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %new = getelementptr inbounds %struct.ovl_cu_creds, ptr %cc, i32 0, i32 1
  %0 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %new, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc, align 4
  tail call void @revert_creds(ptr noundef %3) #13
  %4 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body.i:                                        ; preds = %if.then
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %5) #13
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !85

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i32 noundef 286) #13
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #13, !srcloc !92
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.if.end_crit_edge

__validate_creds.exit.i.if.end_crit_edge:         ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_cred(ptr noundef nonnull %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %__validate_creds.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_copy_up_inode(ptr noundef %c, ptr noundef %temp) unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca %struct.iattr, align 8
  %oldfa.i = alloca %struct.fileattr, align 4
  %newfa.i = alloca %struct.fileattr, align 4
  %upperpath = alloca %struct.path, align 4
  %datapath = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upperpath) #13
  %8 = ptrtoint ptr %upperpath to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %upperpath, align 4, !annotation !88
  %9 = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datapath) #13
  %11 = ptrtoint ptr %datapath to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %datapath, align 4, !annotation !88
  %12 = getelementptr inbounds %struct.path, ptr %datapath, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %12, align 4, !annotation !88
  call void @ovl_path_upper(ptr noundef %1, ptr noundef nonnull %upperpath) #13
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !89

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end25:                                         ; preds = %entry
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %temp, ptr %9, align 4
  %stat = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 3
  %mode = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mode, align 4
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %19)
  %cmp27 = icmp eq i16 %19, -32768
  br i1 %cmp27, label %land.lhs.true, label %if.end25.if.end37_crit_edge

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end25
  %metacopy = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 11
  %20 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %metacopy, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not = icmp eq i8 %21, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then30:                                        ; preds = %land.lhs.true
  %22 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry, align 4
  call void @ovl_path_lowerdata(ptr noundef %23, ptr noundef nonnull %datapath) #13
  %size = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 3, i32 11
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size, align 8
  %call33 = call fastcc i32 @ovl_copy_up_data(ptr noundef %5, ptr noundef nonnull %datapath, ptr noundef nonnull %upperpath, i64 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then30.if.end37_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %26 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dentry, align 4
  %d_sb39 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %d_sb39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_sb39, align 4
  %lowerpath = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 2
  %dentry40 = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %dentry40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dentry40, align 4
  %call41 = call i32 @ovl_copy_xattr(ptr noundef %29, ptr noundef %31, ptr noundef %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %i_flags = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %32 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_flags, align 4
  %and45 = and i32 %33, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %if.then47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %oldfa.i) #13
  %34 = call ptr @memcpy(ptr %oldfa.i, ptr @__const.ovl_copy_fileattr.newfa, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %newfa.i) #13
  %35 = call ptr @memcpy(ptr %newfa.i, ptr @__const.ovl_copy_fileattr.newfa, i32 28)
  %call.i = call i32 @ovl_real_fileattr_get(ptr noundef %lowerpath, ptr noundef nonnull %oldfa.i) #13
  %36 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call.i, label %do.end.i [
    i32 0, label %if.end4.i
    i32 -25, label %if.then47.ovl_copy_fileattr.exit.thread_crit_edge
    i32 -22, label %if.then47.ovl_copy_fileattr.exit.thread_crit_edge141
  ]

if.then47.ovl_copy_fileattr.exit.thread_crit_edge141: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_fileattr.exit.thread

if.then47.ovl_copy_fileattr.exit.thread_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_fileattr.exit.thread

do.end.i:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %dentry40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentry40, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %38, i32 noundef %call.i) #19
  br label %ovl_copy_fileattr.exit

if.end4.i:                                        ; preds = %if.then47
  %39 = ptrtoint ptr %oldfa.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oldfa.i, align 4
  %and.i = and i32 %40, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end34.i_crit_edge, label %if.then6.i

if.end4.i.if.end34.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then6.i:                                       ; preds = %if.end4.i
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %9, align 4
  %call8.i = call i32 @ovl_set_protattr(ptr noundef %7, ptr noundef %42, ptr noundef nonnull %oldfa.i) #13
  %43 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call8.i, label %ovl_copy_fileattr.exit.thread134 [
    i32 -1, label %land.end.i
    i32 0, label %if.then6.i.if.end34.i_crit_edge
  ]

if.then6.i.if.end34.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

ovl_copy_fileattr.exit.thread134:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %newfa.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oldfa.i) #13
  br label %cleanup

land.end.i:                                       ; preds = %if.then6.i
  %.b121.i = load i1, ptr @ovl_copy_fileattr.__already_done, align 1
  br i1 %.b121.i, label %land.end.i.if.end34.i_crit_edge, label %if.then16.i, !prof !89

land.end.i.if.end34.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then16.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovl_copy_fileattr.__already_done, align 1
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #19
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then16.i, %land.end.i.if.end34.i_crit_edge, %if.then6.i.if.end34.i_crit_edge, %if.end4.i.if.end34.i_crit_edge
  %44 = ptrtoint ptr %oldfa.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oldfa.i, align 4
  %and36.i = and i32 %45, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.ovl_copy_fileattr.exit.thread_crit_edge, label %if.end39.i

if.end34.i.ovl_copy_fileattr.exit.thread_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_fileattr.exit.thread

if.end39.i:                                       ; preds = %if.end34.i
  %call40.i = call i32 @ovl_real_fileattr_get(ptr noundef nonnull %upperpath, ptr noundef nonnull %newfa.i) #13
  %46 = zext i32 %call40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call40.i, label %do.end77.i [
    i32 0, label %do.end84.i
    i32 -25, label %if.end39.i.land.end53.i_crit_edge
    i32 -22, label %if.end39.i.land.end53.i_crit_edge142
  ]

if.end39.i.land.end53.i_crit_edge142:             ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end53.i

if.end39.i.land.end53.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end53.i

land.end53.i:                                     ; preds = %if.end39.i.land.end53.i_crit_edge, %if.end39.i.land.end53.i_crit_edge142
  %.b119120.i = load i1, ptr @ovl_copy_fileattr.__already_done.18, align 1
  br i1 %.b119120.i, label %land.end53.i.ovl_copy_fileattr.exit.thread_crit_edge, label %if.then60.i, !prof !89

land.end53.i.ovl_copy_fileattr.exit.thread_crit_edge: ; preds = %land.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_copy_fileattr.exit.thread

if.then60.i:                                      ; preds = %land.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovl_copy_fileattr.__already_done.18, align 1
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #19
  br label %ovl_copy_fileattr.exit.thread

do.end77.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %9, align 4
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %48, i32 noundef %call40.i) #19
  br label %ovl_copy_fileattr.exit

do.end84.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %newfa.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %newfa.i, align 4
  %and86.i = and i32 %50, -137
  %51 = ptrtoint ptr %oldfa.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %oldfa.i, align 4
  %and88.i = and i32 %52, 136
  %or.i = or i32 %and88.i, %and86.i
  store i32 %or.i, ptr %newfa.i, align 4
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %newfa.i, i32 0, i32 1
  %53 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fsx_xflags.i, align 4
  %and93.i = and i32 %54, -97
  %fsx_xflags94.i = getelementptr inbounds %struct.fileattr, ptr %oldfa.i, i32 0, i32 1
  %55 = ptrtoint ptr %fsx_xflags94.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fsx_xflags94.i, align 4
  %and95.i = and i32 %56, 96
  %or97.i = or i32 %and95.i, %and93.i
  store i32 %or97.i, ptr %fsx_xflags.i, align 4
  %call98.i = call i32 @ovl_real_fileattr_set(ptr noundef nonnull %upperpath, ptr noundef nonnull %newfa.i) #13
  br label %ovl_copy_fileattr.exit

ovl_copy_fileattr.exit.thread:                    ; preds = %if.then60.i, %land.end53.i.ovl_copy_fileattr.exit.thread_crit_edge, %if.end34.i.ovl_copy_fileattr.exit.thread_crit_edge, %if.then47.ovl_copy_fileattr.exit.thread_crit_edge, %if.then47.ovl_copy_fileattr.exit.thread_crit_edge141
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %newfa.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oldfa.i) #13
  br label %if.end53

ovl_copy_fileattr.exit:                           ; preds = %do.end84.i, %do.end77.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call40.i, %do.end77.i ], [ %call98.i, %do.end84.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %newfa.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oldfa.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool50.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool50.not, label %ovl_copy_fileattr.exit.if.end53_crit_edge, label %ovl_copy_fileattr.exit.cleanup_crit_edge

ovl_copy_fileattr.exit.cleanup_crit_edge:         ; preds = %ovl_copy_fileattr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ovl_copy_fileattr.exit.if.end53_crit_edge:        ; preds = %ovl_copy_fileattr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.end53:                                         ; preds = %ovl_copy_fileattr.exit.if.end53_crit_edge, %ovl_copy_fileattr.exit.thread, %if.end44.if.end53_crit_edge
  %origin = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 9
  %57 = ptrtoint ptr %origin to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %origin, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool54.not = icmp eq i8 %58, 0
  br i1 %tobool54.not, label %if.end53.if.end62_crit_edge, label %if.then55

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then55:                                        ; preds = %if.end53
  %59 = ptrtoint ptr %dentry40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dentry40, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_sb.i, align 4
  %call.i128 = call i32 @ovl_can_decode_fh(ptr noundef %62) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i, label %if.then55.cond.end.i_crit_edge, label %if.then.i

if.then55.cond.end.i_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.then.i:                                        ; preds = %if.then55
  %call1.i = call ptr @ovl_encode_real_fh(ptr noundef %5, ptr noundef %60, i1 noundef zeroext false) #13
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %call1.i to i32
  br label %ovl_set_origin.exit

if.end5.i:                                        ; preds = %if.then.i
  %64 = getelementptr inbounds %struct.ovl_fh, ptr %call1.i, i32 0, i32 1
  %tobool6.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool6.not.i, label %if.end5.i.cond.end.i_crit_edge, label %cond.true.i

if.end5.i.cond.end.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i = getelementptr inbounds %struct.ovl_fh, ptr %call1.i, i32 0, i32 1, i32 0, i32 2
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %66 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end5.i.cond.end.i_crit_edge, %if.then55.cond.end.i_crit_edge
  %67 = phi ptr [ %64, %cond.true.i ], [ %64, %if.end5.i.cond.end.i_crit_edge ], [ inttoptr (i32 3 to ptr), %if.then55.cond.end.i_crit_edge ]
  %fh.024.i = phi ptr [ %call1.i, %cond.true.i ], [ null, %if.end5.i.cond.end.i_crit_edge ], [ null, %if.then55.cond.end.i_crit_edge ]
  %cond.i = phi i32 [ %conv.i, %cond.true.i ], [ 0, %if.end5.i.cond.end.i_crit_edge ], [ 0, %if.then55.cond.end.i_crit_edge ]
  %call7.i = call i32 @ovl_check_setxattr(ptr noundef %5, ptr noundef %temp, i32 noundef 2, ptr noundef %67, i32 noundef %cond.i, i32 noundef 0) #13
  call void @kfree(ptr noundef %fh.024.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp.i = icmp eq i32 %call7.i, -1
  br i1 %cmp.i, label %cond.end.i.if.end62_crit_edge, label %cond.end.i.ovl_set_origin.exit_crit_edge

cond.end.i.ovl_set_origin.exit_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_set_origin.exit

cond.end.i.if.end62_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

ovl_set_origin.exit:                              ; preds = %cond.end.i.ovl_set_origin.exit_crit_edge, %if.then3.i
  %retval.0.i129 = phi i32 [ %63, %if.then3.i ], [ %call7.i, %cond.end.i.ovl_set_origin.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129)
  %tobool59.not = icmp eq i32 %retval.0.i129, 0
  br i1 %tobool59.not, label %ovl_set_origin.exit.if.end62_crit_edge, label %ovl_set_origin.exit.cleanup_crit_edge

ovl_set_origin.exit.cleanup_crit_edge:            ; preds = %ovl_set_origin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ovl_set_origin.exit.if.end62_crit_edge:           ; preds = %ovl_set_origin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.end62:                                         ; preds = %ovl_set_origin.exit.if.end62_crit_edge, %cond.end.i.if.end62_crit_edge, %if.end53.if.end62_crit_edge
  %metacopy63 = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 11
  %68 = ptrtoint ptr %metacopy63 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %metacopy63, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool64.not = icmp eq i8 %69, 0
  br i1 %tobool64.not, label %if.end62.if.end70_crit_edge, label %if.then65

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then65:                                        ; preds = %if.end62
  %call66 = call i32 @ovl_check_setxattr(ptr noundef %5, ptr noundef %temp, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef -95) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end70_crit_edge, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.end70:                                         ; preds = %if.then65.if.end70_crit_edge, %if.end62.if.end70_crit_edge
  %d_inode = getelementptr inbounds %struct.dentry, ptr %temp, i32 0, i32 5
  %70 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #13
  %72 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mode, align 4
  %74 = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %74)
  %cmp75 = icmp eq i16 %74, -32768
  br i1 %cmp75, label %if.end80, label %if.end70.if.then82_crit_edge

if.end70.if.then82_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then82

if.end80:                                         ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr.i) #13
  %75 = call ptr @memset(ptr %attr.i, i32 0, i32 80)
  %76 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 8, ptr %attr.i, align 8
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.ovl_copy_up_ctx, ptr %c, i32 0, i32 3, i32 11
  %77 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %size.i, align 8
  %79 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %ia_size.i, align 8
  %call.i130 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %temp, ptr noundef nonnull %attr.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool81.not = icmp eq i32 %call.i130, 0
  br i1 %tobool81.not, label %if.end80.if.then82_crit_edge, label %if.end80.if.end85_crit_edge

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end80.if.then82_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then82

if.then82:                                        ; preds = %if.end80.if.then82_crit_edge, %if.end70.if.then82_crit_edge
  %call84 = call i32 @ovl_set_attr(ptr noundef %temp, ptr noundef %stat)
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end80.if.end85_crit_edge
  %err.4 = phi i32 [ %call.i130, %if.end80.if.end85_crit_edge ], [ %call84, %if.then82 ]
  %80 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i131 = getelementptr inbounds %struct.inode, ptr %81, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i131) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then65.cleanup_crit_edge, %ovl_set_origin.exit.cleanup_crit_edge, %ovl_copy_fileattr.exit.cleanup_crit_edge, %ovl_copy_fileattr.exit.thread134, %if.end37.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %err.4, %if.end85 ], [ %call33, %if.then30.cleanup_crit_edge ], [ %call41, %if.end37.cleanup_crit_edge ], [ %retval.0.i, %ovl_copy_fileattr.exit.cleanup_crit_edge ], [ %retval.0.i129, %ovl_set_origin.exit.cleanup_crit_edge ], [ %call66, %if.then65.cleanup_crit_edge ], [ %call8.i, %ovl_copy_fileattr.exit.thread134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datapath) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_set_upperdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_inode_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_copy_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_tmpfile(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_lowerdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_copy_up_data(ptr nocapture noundef readonly %ofs, ptr noundef %old, ptr noundef %new, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  %old_pos = alloca i64, align 8
  %new_pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_pos) #13
  %0 = ptrtoint ptr %old_pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %old_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_pos) #13
  %1 = ptrtoint ptr %new_pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %new_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %entry.cleanup88_crit_edge, label %if.end

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

if.end:                                           ; preds = %entry
  %call = tail call ptr @ovl_path_open(ptr noundef %old, i32 noundef 131072) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call to i32
  br label %cleanup88

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @ovl_path_open(ptr noundef %new, i32 noundef 131073) #13
  %cmp.i138 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %call5 to i32
  br label %out_fput

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i64 @do_clone_file_range(ptr noundef %call, i64 noundef 0, ptr noundef %call5, i64 noundef 0, i64 noundef %len, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call10, i64 %len)
  %cmp11 = icmp eq i64 %call10, %len
  br i1 %cmp11, label %if.end9.land.lhs.true82_crit_edge, label %if.end13

if.end9.land.lhs.true82_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

if.end13:                                         ; preds = %if.end9
  %f_mode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13.while.body.preheader_crit_edge, label %land.lhs.true

if.end13.while.body.preheader_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.preheader

land.lhs.true:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %f_op = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op, align 4
  %llseek = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %llseek to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %llseek, align 4
  %tobool14.not = icmp ne ptr %9, null
  br label %while.body.preheader

while.body.preheader:                             ; preds = %land.lhs.true, %if.end13.while.body.preheader_crit_edge
  %skip_hole.1.off0159.ph = phi i1 [ %tobool14.not, %land.lhs.true ], [ false, %if.end13.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %skip_hole.1.off0159 = phi i1 [ %skip_hole.3.off0, %cleanup.while.body_crit_edge ], [ %skip_hole.1.off0159.ph, %while.body.preheader ]
  %data_pos.0158 = phi i64 [ %data_pos.2, %cleanup.while.body_crit_edge ], [ -1, %while.body.preheader ]
  %len.addr.0156 = phi i64 [ %len.addr.1, %cleanup.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %10 = call i64 @llvm.smin.i64(i64 %len.addr.0156, i64 1048576)
  %11 = trunc i64 %10 to i32
  %12 = call i32 @llvm.read_register.i32(metadata !75) #13
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %while.body.signal_pending_state.exit_crit_edge, !prof !89

while.body.signal_pending_state.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %signal_pending_state.exit

signal_pending.exit.i:                            ; preds = %while.body
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending.exit.i.if.end27_crit_edge, label %signal_pending.exit.i.signal_pending_state.exit_crit_edge

signal_pending.exit.i.signal_pending_state.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %signal_pending_state.exit

signal_pending.exit.i.if.end27_crit_edge:         ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

signal_pending_state.exit:                        ; preds = %signal_pending.exit.i.signal_pending_state.exit_crit_edge, %while.body.signal_pending_state.exit_crit_edge
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 116, i32 1
  %23 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %signal.i.i, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %signal_pending_state.exit.if.end27_crit_edge, label %signal_pending_state.exit.if.end87_crit_edge

signal_pending_state.exit.if.end87_crit_edge:     ; preds = %signal_pending_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

signal_pending_state.exit.if.end27_crit_edge:     ; preds = %signal_pending_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end27:                                         ; preds = %signal_pending_state.exit.if.end27_crit_edge, %signal_pending.exit.i.if.end27_crit_edge
  br i1 %skip_hole.1.off0159, label %land.lhs.true30, label %if.end27.if.end49_crit_edge

if.end27.if.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

land.lhs.true30:                                  ; preds = %if.end27
  %26 = ptrtoint ptr %old_pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %old_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %data_pos.0158, i64 %27)
  %cmp31 = icmp slt i64 %data_pos.0158, %27
  br i1 %cmp31, label %if.then33, label %land.lhs.true30.if.end49_crit_edge

land.lhs.true30.if.end49_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then33:                                        ; preds = %land.lhs.true30
  %call34 = call i64 @vfs_llseek(ptr noundef %call, i64 noundef %27, i32 noundef 3) #13
  %28 = ptrtoint ptr %old_pos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %old_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %call34)
  %cmp35 = icmp slt i64 %29, %call34
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg = sub i64 %len.addr.0156, %call34
  %sub38 = add i64 %sub.neg, %29
  %30 = ptrtoint ptr %new_pos to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call34, ptr %new_pos, align 8
  %31 = ptrtoint ptr %old_pos to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call34, ptr %old_pos, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %call34)
  %cmp39 = icmp eq i64 %call34, -6
  br i1 %cmp39, label %if.else.land.lhs.true82_crit_edge, label %if.else42

if.else.land.lhs.true82_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call34)
  %cmp43 = icmp sgt i64 %call34, -1
  br label %if.end49

if.end49:                                         ; preds = %if.else42, %land.lhs.true30.if.end49_crit_edge, %if.end27.if.end49_crit_edge
  %data_pos.1 = phi i64 [ %data_pos.0158, %land.lhs.true30.if.end49_crit_edge ], [ %data_pos.0158, %if.end27.if.end49_crit_edge ], [ %call34, %if.else42 ]
  %skip_hole.2.off0 = phi i1 [ true, %land.lhs.true30.if.end49_crit_edge ], [ false, %if.end27.if.end49_crit_edge ], [ %cmp43, %if.else42 ]
  %call50 = call i32 @do_splice_direct(ptr noundef %call, ptr noundef nonnull %old_pos, ptr noundef %call5, ptr noundef nonnull %new_pos, i32 noundef %11, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %out, label %if.end54

if.end54:                                         ; preds = %if.end49
  %32 = ptrtoint ptr %old_pos to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %old_pos, align 8
  %34 = ptrtoint ptr %new_pos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %new_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp55.not = icmp eq i64 %33, %35
  br i1 %cmp55.not, label %if.end54.if.end71_crit_edge, label %do.end, !prof !89

if.end54.if.end71_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

do.end:                                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef null) #13
  br label %if.end71

if.end71:                                         ; preds = %do.end, %if.end54.if.end71_crit_edge
  %conv78153 = zext i32 %call50 to i64
  %sub79 = sub i64 %len.addr.0156, %conv78153
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then37
  %len.addr.1 = phi i64 [ %sub38, %if.then37 ], [ %sub79, %if.end71 ]
  %data_pos.2 = phi i64 [ %call34, %if.then37 ], [ %data_pos.1, %if.end71 ]
  %skip_hole.3.off0 = phi i1 [ true, %if.then37 ], [ %skip_hole.2.off0, %if.end71 ]
  %tobool17.not = icmp eq i64 %len.addr.1, 0
  br i1 %tobool17.not, label %cleanup.land.lhs.true82_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.land.lhs.true82_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

out:                                              ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool81.not = icmp eq i32 %call50, 0
  br i1 %tobool81.not, label %out.land.lhs.true82_crit_edge, label %out.if.end87_crit_edge

out.if.end87_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

out.land.lhs.true82_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

land.lhs.true82:                                  ; preds = %out.land.lhs.true82_crit_edge, %cleanup.land.lhs.true82_crit_edge, %if.else.land.lhs.true82_crit_edge, %if.end9.land.lhs.true82_crit_edge
  %ovl_volatile.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 13
  %36 = ptrtoint ptr %ovl_volatile.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ovl_volatile.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.then85, label %land.lhs.true82.if.end87_crit_edge

land.lhs.true82.if.end87_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then85:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = call i32 @vfs_fsync(ptr noundef %call5, i32 noundef 0) #13
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %land.lhs.true82.if.end87_crit_edge, %out.if.end87_crit_edge, %signal_pending_state.exit.if.end87_crit_edge
  %error.3 = phi i32 [ %call50, %out.if.end87_crit_edge ], [ %call86, %if.then85 ], [ 0, %land.lhs.true82.if.end87_crit_edge ], [ -4, %signal_pending_state.exit.if.end87_crit_edge ]
  call void @fput(ptr noundef %call5) #13
  br label %out_fput

out_fput:                                         ; preds = %if.end87, %if.then7
  %error.4 = phi i32 [ %3, %if.then7 ], [ %error.3, %if.end87 ]
  call void @fput(ptr noundef %call) #13
  br label %cleanup88

cleanup88:                                        ; preds = %out_fput, %if.then2, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %2, %if.then2 ], [ %error.4, %out_fput ], [ 0, %entry.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_pos) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_pos) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_path_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @do_clone_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_splice_direct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_real_fileattr_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_protattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_real_fileattr_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_create_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_create_index(ptr nocapture noundef readonly %dentry, ptr noundef %origin, ptr noundef %upper) unnamed_addr #0 align 64 {
entry:
  %rd.i = alloca %struct.renamedata, align 4
  %name = alloca %struct.qstr, align 8
  %.compoundliteral = alloca %struct.ovl_cattr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @ovl_indexdir(ptr noundef %1) #13
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #13
  %6 = call ptr @memset(ptr %name, i32 0, i32 16)
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dentry, align 8
  %9 = and i32 %8, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %9)
  %10 = icmp eq i32 %9, 2097152
  br i1 %10, label %if.end26, label %do.end, !prof !89

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 466, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end26:                                         ; preds = %entry
  %d_inode.i115 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i115 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i115, align 8
  %flags.i = getelementptr i8, ptr %12, i32 -8
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.end61, label %do.end45, !prof !89

do.end45:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end61:                                         ; preds = %if.end26
  %call62 = call i32 @ovl_get_index_name(ptr noundef %3, ptr noundef %origin, ptr noundef nonnull %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %16 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %.compoundliteral, align 4
  %mode = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 1
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 16384, ptr %mode, align 4
  %link = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 2
  %18 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %link, align 4
  %hardlink = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 3
  %19 = ptrtoint ptr %hardlink to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %hardlink, align 4
  %call66 = call ptr @ovl_create_temp(ptr noundef %call2, ptr noundef nonnull %.compoundliteral) #13
  %20 = ptrtoint ptr %call66 to i32
  %cmp.i = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end65.free_name_crit_edge, label %if.end70

if.end65.free_name_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_name

if.end70:                                         ; preds = %if.end65
  %call.i = call ptr @ovl_encode_real_fh(ptr noundef %3, ptr noundef %upper, i1 noundef zeroext true) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %call.i to i32
  br label %ovl_set_upper_fh.exit

if.end.i:                                         ; preds = %if.end70
  %22 = getelementptr inbounds %struct.ovl_fh, ptr %call.i, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.ovl_fh, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %24 to i32
  %userxattr.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 12
  %25 = ptrtoint ptr %userxattr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %userxattr.i.i.i, align 1, !range !86
  %27 = zext i8 %26 to i32
  %arrayidx1.i.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 5, i32 %27
  %28 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx1.i.i.i, align 4
  %call1.i.i = call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %call66, ptr noundef %29, ptr noundef %22, i32 noundef %conv.i, i32 noundef 0) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_create_index, %if.then.i.i)) #13
          to label %ovl_do_setxattr.exit.i [label %if.then.i.i], !srcloc !90

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = call i32 @llvm.smin.i32(i32 %conv.i, i32 48) #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_setxattr.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.30, ptr noundef %call66, ptr noundef %29, i32 noundef %30, ptr noundef %22, i32 noundef %conv.i, i32 noundef %call1.i.i) #13
  br label %ovl_do_setxattr.exit.i

ovl_do_setxattr.exit.i:                           ; preds = %if.then.i.i, %if.end.i
  call void @kfree(ptr noundef %call.i) #13
  br label %ovl_set_upper_fh.exit

ovl_set_upper_fh.exit:                            ; preds = %ovl_do_setxattr.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %21, %if.then.i ], [ %call1.i.i, %ovl_do_setxattr.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool72.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool72.not, label %if.end74, label %ovl_set_upper_fh.exit.if.then83_crit_edge

ovl_set_upper_fh.exit.if.then83_crit_edge:        ; preds = %ovl_set_upper_fh.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then83

if.end74:                                         ; preds = %ovl_set_upper_fh.exit
  %name75 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %31 = ptrtoint ptr %name75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name75, align 8
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %name, align 8
  %call76 = call ptr @lookup_one_len(ptr noundef %32, ptr noundef %call2, i32 noundef %34) #13
  %cmp.i116 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %call76 to i32
  br label %out

if.else:                                          ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd.i) #13
  %36 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 3
  %39 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 4
  %40 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 5
  %41 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 6
  %42 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 7
  %43 = ptrtoint ptr %rd.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @init_user_ns, ptr %rd.i, align 4
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %5, ptr %36, align 4
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call66, ptr %37, align 4
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @init_user_ns, ptr %38, align 4
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %5, ptr %39, align 4
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call76, ptr %40, align 4
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %41, align 4
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %42, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_create_index, %if.then.i117)) #13
          to label %do.end.i [label %if.then.i117], !srcloc !90

if.then.i117:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.33, ptr noundef %call66, ptr noundef %call76, i32 noundef 0) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i117, %if.else
  %call4.i = call i32 @vfs_rename(ptr noundef nonnull %rd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end.i.ovl_do_rename.exit_crit_edge, label %do.body7.i

do.end.i.ovl_do_rename.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovl_do_rename.exit

do.body7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_create_index, %if.then19.i)) #13
          to label %ovl_do_rename.exit [label %if.then19.i], !srcloc !90

if.then19.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.35, ptr noundef %call66, ptr noundef %call76, i32 noundef %call4.i) #13
  br label %ovl_do_rename.exit

ovl_do_rename.exit:                               ; preds = %if.then19.i, %do.body7.i, %do.end.i.ovl_do_rename.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd.i) #13
  call void @dput(ptr noundef %call76) #13
  br label %out

out:                                              ; preds = %ovl_do_rename.exit, %if.then78
  %err.0 = phi i32 [ %35, %if.then78 ], [ %call4.i, %ovl_do_rename.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool82.not = icmp eq i32 %err.0, 0
  br i1 %tobool82.not, label %out.if.end85_crit_edge, label %out.if.then83_crit_edge

out.if.then83_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then83

out.if.end85_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then83:                                        ; preds = %out.if.then83_crit_edge, %ovl_set_upper_fh.exit.if.then83_crit_edge
  %err.0120 = phi i32 [ %err.0, %out.if.then83_crit_edge ], [ %retval.0.i, %ovl_set_upper_fh.exit.if.then83_crit_edge ]
  %call84 = call i32 @ovl_cleanup(ptr noundef %5, ptr noundef %call66) #13
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %out.if.end85_crit_edge
  %err.0121 = phi i32 [ %err.0120, %if.then83 ], [ 0, %out.if.end85_crit_edge ]
  call void @dput(ptr noundef %call66) #13
  br label %free_name

free_name:                                        ; preds = %if.end85, %if.end65.free_name_crit_edge
  %err.1 = phi i32 [ %20, %if.end65.free_name_crit_edge ], [ %err.0121, %if.end85 ]
  %name86 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %51 = ptrtoint ptr %name86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name86, align 8
  call void @kfree(ptr noundef %52) #13
  br label %cleanup

cleanup:                                          ; preds = %free_name, %if.end61.cleanup_crit_edge, %do.end45, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end45 ], [ %err.1, %free_name ], [ %call62, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_do_rename(ptr noundef %olddir, ptr noundef %olddentry, ptr noundef %newdir, ptr noundef %newdentry) unnamed_addr #11 align 64 {
entry:
  %rd = alloca %struct.renamedata, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd) #13
  %0 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 5
  %5 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 6
  %6 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 7
  %7 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @init_user_ns, ptr %rd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %olddir, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %olddentry, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_user_ns, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %newdir, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %newdentry, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_do_rename, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.33, ptr noundef %olddentry, ptr noundef %newdentry, i32 noundef 0) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 @vfs_rename(ptr noundef nonnull %rd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end23_crit_edge, label %do.body7

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_do_rename, %if.then19)) #13
          to label %if.end23 [label %if.then19], !srcloc !90

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.35, ptr noundef %olddentry, ptr noundef %newdentry, i32 noundef %call4) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %do.body7, %do.end.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd) #13
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_nlink_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__param_check_copy_up, !1, !"__param_check_copy_up", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/copy_up.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_check_copy_up253, !3, !"__UNIQUE_ID_check_copy_up253", i1 false, i1 false}
!3 = !{!"../fs/overlayfs/copy_up.c", i32 38, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/overlayfs/copy_up.c", i32 80, i32 7}
!6 = !{ptr @__param_str_check_copy_up, !1, !"__param_str_check_copy_up", i1 false, i1 false}
!7 = !{ptr @__param_ops_check_copy_up, !1, !"__param_ops_check_copy_up", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/overlayfs/copy_up.c", i32 28, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ovl_ccup_set._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ovl_ccup_set._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/overlayfs/copy_up.c", i32 34, i32 22}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/overlayfs/copy_up.c", i32 42, i32 23}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/overlayfs/copy_up.c", i32 43, i32 23}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/overlayfs/copy_up.c", i32 44, i32 24}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/overlayfs/overlayfs.h", i32 254, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ovl_do_tmpfile.__UNIQUE_ID_ddebug252, !22, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!27 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/cred.h", i32 286, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/overlayfs/copy_up.c", i32 147, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ovl_copy_fileattr._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ovl_copy_fileattr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/overlayfs/copy_up.c", i32 161, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ovl_copy_fileattr._entry.15, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ovl_copy_fileattr._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/overlayfs/copy_up.c", i32 177, i32 4}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ovl_copy_fileattr._entry.19, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ovl_copy_fileattr._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/overlayfs/copy_up.c", i32 180, i32 3}
!47 = !{ptr @ovl_copy_fileattr._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ovl_copy_fileattr._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/overlayfs/overlayfs.h", i32 146, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ovl_do_link.__UNIQUE_ID_ddebug237, !50, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!53 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/overlayfs/overlayfs.h", i32 204, i32 2}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug245, !55, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!58 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/overlayfs/overlayfs.h", i32 233, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ovl_do_rename.__UNIQUE_ID_ddebug249, !60, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!63 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/overlayfs/overlayfs.h", i32 236, i32 3}
!66 = !{ptr @ovl_do_rename.__UNIQUE_ID_ddebug250, !65, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!67 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/overlayfs/copy_up.c", i32 909, i32 51}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/overlayfs/overlayfs.h", i32 214, i32 2}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug248, !71, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!74 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i8 0, i8 2}
!87 = !{!"branch_weights", i32 1, i32 4001}
!88 = !{!"auto-init"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2148977006, i64 2148977011, i64 2148977024, i64 2148977068, i64 2148977102, i64 2148977123}
!91 = !{i64 2148452105}
!92 = !{i64 2148366814, i64 2148366846, i64 2148366875, i64 2148366909, i64 2148366940, i64 2148366963}
!93 = !{i64 2148452334}
