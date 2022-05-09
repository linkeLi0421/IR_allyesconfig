; ModuleID = '/llk/IR_all_yes/fs/overlayfs/super.c_pt.bc'
source_filename = "../fs/overlayfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.72 }
%union.anon.72 = type { ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.match_token = type { i32, ptr }
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
%struct.rb_root = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.substring_t = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.ovl_layer = type { ptr, ptr, ptr, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.ovl_sb = type { ptr, i32, i8, i8 }
%struct.ovl_entry = type { %union.anon.79, i32, [0 x %struct.ovl_path] }
%union.anon.79 = type { %struct.callback_head }
%struct.ovl_path = type { ptr, ptr }
%struct.ovl_inode_params = type { ptr, ptr, ptr, i8, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.78 = type { ptr }
%struct.ovl_inode = type { %union.anon.81, ptr, i64, i32, %struct.inode, ptr, ptr, %struct.mutex }
%union.anon.81 = type { ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.ovl_cattr = type { i32, i16, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.74 }
%union.anon.74 = type { %struct.kuid_t }

@__UNIQUE_ID_author248 = internal constant [50 x i8] c"overlay.author=Miklos Szeredi <miklos@szeredi.hu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [39 x i8] c"overlay.description=Overlay filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [34 x i8] c"overlay.file=fs/overlayfs/overlay\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [20 x i8] c"overlay.license=GPL\00", section ".modinfo", align 1
@__param_str_redirect_dir = internal constant [21 x i8] c"overlay.redirect_dir\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ovl_redirect_dir_def = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_redirect_dir = internal constant %struct.kernel_param { ptr @__param_str_redirect_dir, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @ovl_redirect_dir_def } }, section "__param", align 4
@__UNIQUE_ID_redirect_dirtype252 = internal constant [35 x i8] c"overlay.parmtype=redirect_dir:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_redirect_dir253 = internal constant [76 x i8] c"overlay.parm=redirect_dir:Default to on or off for the redirect_dir feature\00", section ".modinfo", align 1
@__param_str_redirect_always_follow = internal constant [31 x i8] c"overlay.redirect_always_follow\00", align 1
@ovl_redirect_always_follow = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_redirect_always_follow = internal constant %struct.kernel_param { ptr @__param_str_redirect_always_follow, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @ovl_redirect_always_follow } }, section "__param", align 4
@__UNIQUE_ID_redirect_always_followtype254 = internal constant [45 x i8] c"overlay.parmtype=redirect_always_follow:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_redirect_always_follow255 = internal constant [96 x i8] c"overlay.parm=redirect_always_follow:Follow redirects even if redirect_dir feature is turned off\00", section ".modinfo", align 1
@__param_str_index = internal constant [14 x i8] c"overlay.index\00", align 1
@ovl_index_def = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @ovl_index_def } }, section "__param", align 4
@__UNIQUE_ID_indextype256 = internal constant [28 x i8] c"overlay.parmtype=index:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_index257 = internal constant [69 x i8] c"overlay.parm=index:Default to on or off for the inodes index feature\00", section ".modinfo", align 1
@__param_str_nfs_export = internal constant [19 x i8] c"overlay.nfs_export\00", align 1
@ovl_nfs_export_def = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nfs_export = internal constant %struct.kernel_param { ptr @__param_str_nfs_export, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @ovl_nfs_export_def } }, section "__param", align 4
@__UNIQUE_ID_nfs_exporttype258 = internal constant [33 x i8] c"overlay.parmtype=nfs_export:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nfs_export259 = internal constant [72 x i8] c"overlay.parm=nfs_export:Default to on or off for the NFS export feature\00", section ".modinfo", align 1
@__param_str_xino_auto = internal constant [18 x i8] c"overlay.xino_auto\00", align 1
@ovl_xino_auto_def = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_xino_auto = internal constant %struct.kernel_param { ptr @__param_str_xino_auto, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @ovl_xino_auto_def } }, section "__param", align 4
@__UNIQUE_ID_xino_autotype260 = internal constant [32 x i8] c"overlay.parmtype=xino_auto:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_xino_auto261 = internal constant [48 x i8] c"overlay.parm=xino_auto:Auto enable xino feature\00", section ".modinfo", align 1
@__param_str_metacopy = internal constant [17 x i8] c"overlay.metacopy\00", align 1
@ovl_metacopy_def = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_metacopy = internal constant %struct.kernel_param { ptr @__param_str_metacopy, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @ovl_metacopy_def } }, section "__param", align 4
@__UNIQUE_ID_metacopytype262 = internal constant [31 x i8] c"overlay.parmtype=metacopy:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_metacopy263 = internal constant [81 x i8] c"overlay.parm=metacopy:Default to on or off for the metadata only copy up feature\00", section ".modinfo", align 1
@__UNIQUE_ID_alias270 = internal constant [25 x i8] c"overlay.alias=fs-overlay\00", section ".modinfo", align 1
@ovl_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 8, ptr null, ptr null, ptr @ovl_mount, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@ovl_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_overlay__271_2219_ovl_init6 = internal global ptr @ovl_init, section ".initcall6.init", align 4
@__exitcall_ovl_exit = internal global ptr @ovl_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/overlayfs/super.c\00", [43 x i8] zeroinitializer }, align 32
@ovl_dentry_operations = internal constant %struct.dentry_operations { ptr @ovl_dentry_revalidate, ptr @ovl_dentry_weak_revalidate, ptr null, ptr null, ptr null, ptr null, ptr @ovl_dentry_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ovl_d_real, [76 x i8] undef }, align 128
@ovl_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 2007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013overlayfs: missing 'lowerdir'\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovl_fill_super\00", [17 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr = internal global ptr @ovl_fill_super._entry, section ".printk_index", align 4
@ovl_fill_super._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.1, i32 2020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013overlayfs: too many lower directories, limit is %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr.6 = internal global ptr @ovl_fill_super._entry.4, section ".printk_index", align 4
@ovl_fill_super._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.1, i32 2040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014overlayfs: xino not supported on 32bit kernel, falling back to xino=off.\0A\00", [52 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr.9 = internal global ptr @ovl_fill_super._entry.7, section ".printk_index", align 4
@ovl_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @ovl_alloc_inode, ptr @ovl_destroy_inode, ptr @ovl_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr @ovl_put_super, ptr @ovl_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @ovl_statfs, ptr @ovl_remount, ptr null, ptr @ovl_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.1, i32 2053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013overlayfs: missing 'workdir'\0A\00", [32 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr.12 = internal global ptr @ovl_fill_super._entry.10, section ".printk_index", align 4
@ovl_fill_super._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.1, i32 2066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013overlayfs: Cannot mount volatile when upperdir has an unseen error. Sync upperdir fs to clear state.\0A\00", [56 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr.15 = internal global ptr @ovl_fill_super._entry.13, section ".printk_index", align 4
@ovl_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.1, i32 2091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014overlayfs: The uuid=off requires a single fs for lower and upper, falling back to uuid=on.\0A\00", [34 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr.18 = internal global ptr @ovl_fill_super._entry.16, section ".printk_index", align 4
@ovl_fill_super._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.1, i32 2113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014overlayfs: NFS export requires an index dir, falling back to nfs_export=off.\0A\00", [48 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr.21 = internal global ptr @ovl_fill_super._entry.19, section ".printk_index", align 4
@ovl_fill_super._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.1, i32 2119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014overlayfs: NFS export is not supported with metadata only copy up, falling back to nfs_export=off.\0A\00", [58 x i8] zeroinitializer }, align 32
@ovl_fill_super._entry_ptr.24 = internal global ptr @ovl_fill_super._entry.22, section ".printk_index", align 4
@ovl_export_operations = external dso_local constant %struct.export_operations, align 4
@ovl_user_xattr_handlers = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ovl_posix_acl_access_xattr_handler, ptr @ovl_posix_acl_default_xattr_handler, ptr @ovl_own_user_xattr_handler, ptr @ovl_other_xattr_handler, ptr null], [44 x i8] zeroinitializer }, align 32
@ovl_trusted_xattr_handlers = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ovl_posix_acl_access_xattr_handler, ptr @ovl_posix_acl_default_xattr_handler, ptr @ovl_own_trusted_xattr_handler, ptr @ovl_other_xattr_handler, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(%pd4, %s:%lu): real dentry (%p/%lu) not found\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ovl_d_real = private unnamed_addr constant [11 x i8] c"ovl_d_real\00", align 1
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ovl_tokens = internal constant { [19 x %struct.match_token], [40 x i8] } { [19 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.70 }, %struct.match_token { i32 1, ptr @.str.71 }, %struct.match_token { i32 2, ptr @.str.72 }, %struct.match_token { i32 3, ptr @.str.73 }, %struct.match_token { i32 4, ptr @.str.74 }, %struct.match_token { i32 5, ptr @.str.75 }, %struct.match_token { i32 6, ptr @.str.76 }, %struct.match_token { i32 10, ptr @.str.77 }, %struct.match_token { i32 7, ptr @.str.78 }, %struct.match_token { i32 8, ptr @.str.79 }, %struct.match_token { i32 9, ptr @.str.80 }, %struct.match_token { i32 11, ptr @.str.81 }, %struct.match_token { i32 12, ptr @.str.82 }, %struct.match_token { i32 13, ptr @.str.83 }, %struct.match_token { i32 14, ptr @.str.84 }, %struct.match_token { i32 15, ptr @.str.85 }, %struct.match_token { i32 16, ptr @.str.86 }, %struct.match_token { i32 17, ptr @.str.87 }, %struct.match_token { i32 18, ptr null }], [40 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.1, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013overlayfs: unrecognized mount option \22%s\22 or missing value\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_parse_opt\00", [18 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr = internal global ptr @ovl_parse_opt._entry, section ".printk_index", align 4
@ovl_parse_opt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.1, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016overlayfs: option \22workdir=%s\22 is useless in a non-upper mount, ignore\0A\00", [54 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.31 = internal global ptr @ovl_parse_opt._entry.29, section ".printk_index", align 4
@ovl_parse_opt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.1, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016overlayfs: option \22index=on\22 is useless in a non-upper mount, ignore\0A\00", [56 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.34 = internal global ptr @ovl_parse_opt._entry.32, section ".printk_index", align 4
@ovl_parse_opt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.1, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016overlayfs: option \22volatile\22 is meaningless in a non-upper mount, ignoring it.\0A\00", [46 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.37 = internal global ptr @ovl_parse_opt._entry.35, section ".printk_index", align 4
@ovl_parse_opt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.1, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013overlayfs: conflicting options: metacopy=on,redirect_dir=%s\0A\00", [33 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.40 = internal global ptr @ovl_parse_opt._entry.38, section ".printk_index", align 4
@ovl_parse_opt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.1, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016overlayfs: disabling metacopy due to redirect_dir=%s\0A\00", [40 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.43 = internal global ptr @ovl_parse_opt._entry.41, section ".printk_index", align 4
@ovl_parse_opt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.28, ptr @.str.1, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\016overlayfs: NFS export requires \22redirect_dir=nofollow\22 on non-upper mount, falling back to nfs_export=off.\0A\00", [50 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.46 = internal global ptr @ovl_parse_opt._entry.44, section ".printk_index", align 4
@ovl_parse_opt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.28, ptr @.str.1, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013overlayfs: conflicting options: nfs_export=on,index=off\0A\00", [37 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.49 = internal global ptr @ovl_parse_opt._entry.47, section ".printk_index", align 4
@ovl_parse_opt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.28, ptr @.str.1, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016overlayfs: disabling nfs_export due to index=off\0A\00", [44 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.52 = internal global ptr @ovl_parse_opt._entry.50, section ".printk_index", align 4
@ovl_parse_opt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.28, ptr @.str.1, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013overlayfs: conflicting options: nfs_export=on,metacopy=on\0A\00", [35 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.55 = internal global ptr @ovl_parse_opt._entry.53, section ".printk_index", align 4
@ovl_parse_opt._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.28, ptr @.str.1, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016overlayfs: disabling nfs_export due to metacopy=on\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.58 = internal global ptr @ovl_parse_opt._entry.56, section ".printk_index", align 4
@ovl_parse_opt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.28, ptr @.str.1, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016overlayfs: disabling metacopy due to nfs_export=on\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.61 = internal global ptr @ovl_parse_opt._entry.59, section ".printk_index", align 4
@ovl_parse_opt._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.28, ptr @.str.1, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013overlayfs: conflicting options: userxattr,redirect_dir=%s\0A\00", [35 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.64 = internal global ptr @ovl_parse_opt._entry.62, section ".printk_index", align 4
@ovl_parse_opt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.28, ptr @.str.1, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013overlayfs: conflicting options: userxattr,metacopy=on\0A\00", [39 x i8] zeroinitializer }, align 32
@ovl_parse_opt._entry_ptr.67 = internal global ptr @ovl_parse_opt._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lowerdir=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"upperdir=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"workdir=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"default_permissions\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"redirect_dir=%s\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"index=on\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"index=off\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"userxattr\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uuid=on\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uuid=off\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfs_export=on\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs_export=off\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xino=on\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xino=off\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xino=auto\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"metacopy=on\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"metacopy=off\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"volatile\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"follow\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nofollow\00", [23 x i8] zeroinitializer }, align 32
@ovl_parse_redirect_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.1, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013overlayfs: bad mount option \22redirect_dir=%s\22\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ovl_parse_redirect_mode\00", [40 x i8] zeroinitializer }, align 32
@ovl_parse_redirect_mode._entry_ptr = internal global ptr @ovl_parse_redirect_mode._entry, section ".printk_index", align 4
@ovl_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&oi->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lowerdir\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"upperdir\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"workdir\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",default_permissions\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",redirect_dir=%s\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",index=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",uuid=off\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",nfs_export=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",xino=%s\00", [23 x i8] zeroinitializer }, align 32
@ovl_xino_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.69, ptr @.str.107, ptr @.str.68], [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",metacopy=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",volatile\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",userxattr\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@ovl_get_upper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.1, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013overlayfs: upper fs is r/o, try multi-lower layers mount\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_get_upper\00", [18 x i8] zeroinitializer }, align 32
@ovl_get_upper._entry_ptr = internal global ptr @ovl_get_upper._entry, section ".printk_index", align 4
@ovl_get_upper._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.1, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013overlayfs: failed to clone upperpath\0A\00", [56 x i8] zeroinitializer }, align 32
@ovl_get_upper._entry_ptr.112 = internal global ptr @ovl_get_upper._entry.110, section ".printk_index", align 4
@ovl_mount_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.1, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013overlayfs: filesystem on '%s' not supported as upperdir\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_mount_dir\00", [18 x i8] zeroinitializer }, align 32
@ovl_mount_dir._entry_ptr = internal global ptr @ovl_mount_dir._entry, section ".printk_index", align 4
@ovl_mount_dir_noesc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.1, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013overlayfs: empty lowerdir\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ovl_mount_dir_noesc\00", [44 x i8] zeroinitializer }, align 32
@ovl_mount_dir_noesc._entry_ptr = internal global ptr @ovl_mount_dir_noesc._entry, section ".printk_index", align 4
@ovl_mount_dir_noesc._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.1, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013overlayfs: failed to resolve '%s': %i\0A\00", [55 x i8] zeroinitializer }, align 32
@ovl_mount_dir_noesc._entry_ptr.119 = internal global ptr @ovl_mount_dir_noesc._entry.117, section ".printk_index", align 4
@ovl_mount_dir_noesc._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.1, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013overlayfs: filesystem on '%s' not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@ovl_mount_dir_noesc._entry_ptr.122 = internal global ptr @ovl_mount_dir_noesc._entry.120, section ".printk_index", align 4
@ovl_mount_dir_noesc._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.1, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013overlayfs: idmapped layers are currently not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@ovl_mount_dir_noesc._entry_ptr.125 = internal global ptr @ovl_mount_dir_noesc._entry.123, section ".printk_index", align 4
@ovl_mount_dir_noesc._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.1, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013overlayfs: '%s' not a directory\0A\00", [61 x i8] zeroinitializer }, align 32
@ovl_mount_dir_noesc._entry_ptr.128 = internal global ptr @ovl_mount_dir_noesc._entry.126, section ".printk_index", align 4
@ovl_check_namelen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.1, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013overlayfs: statfs failed on '%s'\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ovl_check_namelen\00", [46 x i8] zeroinitializer }, align 32
@ovl_check_namelen._entry_ptr = internal global ptr @ovl_check_namelen._entry, section ".printk_index", align 4
@ovl_setup_trap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.1, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013overlayfs: conflicting %s path\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovl_setup_trap\00", [17 x i8] zeroinitializer }, align 32
@ovl_setup_trap._entry_ptr = internal global ptr @ovl_setup_trap._entry, section ".printk_index", align 4
@ovl_report_in_use._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.1, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\013overlayfs: %s is in-use as upperdir/workdir of another mount, mount with '-o index=off' to override exclusive upperdir protection.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ovl_report_in_use\00", [46 x i8] zeroinitializer }, align 32
@ovl_report_in_use._entry_ptr = internal global ptr @ovl_report_in_use._entry, section ".printk_index", align 4
@ovl_report_in_use._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.1, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"\014overlayfs: %s is in-use as upperdir/workdir of another mount, accessing files from both mounts will result in undefined behavior.\0A\00", [59 x i8] zeroinitializer }, align 32
@ovl_report_in_use._entry_ptr.137 = internal global ptr @ovl_report_in_use._entry.135, section ".printk_index", align 4
@ovl_get_workdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.1, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013overlayfs: workdir and upperdir must reside under the same mount\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_get_workdir\00", [16 x i8] zeroinitializer }, align 32
@ovl_get_workdir._entry_ptr = internal global ptr @ovl_get_workdir._entry, section ".printk_index", align 4
@ovl_get_workdir._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.1, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013overlayfs: workdir and upperdir must be separate subtrees\0A\00", [35 x i8] zeroinitializer }, align 32
@ovl_get_workdir._entry_ptr.142 = internal global ptr @ovl_get_workdir._entry.140, section ".printk_index", align 4
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"work\00", [27 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.1, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014overlayfs: upper fs needs to support d_type.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ovl_make_workdir\00", [47 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr = internal global ptr @ovl_make_workdir._entry, section ".printk_index", align 4
@ovl_make_workdir._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.1, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014overlayfs: upper fs does not support tmpfile.\0A\00", [47 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.148 = internal global ptr @ovl_make_workdir._entry.146, section ".printk_index", align 4
@ovl_make_workdir._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.1, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014overlayfs: upper fs does not support RENAME_WHITEOUT.\0A\00", [39 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.151 = internal global ptr @ovl_make_workdir._entry.149, section ".printk_index", align 4
@.str.152 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.145, ptr @.str.1, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014overlayfs: upper fs does not support xattr, falling back to index=off,metacopy=off.\0A\00", [41 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.155 = internal global ptr @ovl_make_workdir._entry.153, section ".printk_index", align 4
@ovl_make_workdir._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.145, ptr @.str.1, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014overlayfs: upper fs does not support xattr, falling back to xino=off.\0A\00", [55 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.158 = internal global ptr @ovl_make_workdir._entry.156, section ".printk_index", align 4
@ovl_make_workdir._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.145, ptr @.str.1, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013overlayfs: upper fs missing required features.\0A\00", [46 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.161 = internal global ptr @ovl_make_workdir._entry.159, section ".printk_index", align 4
@ovl_make_workdir._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.145, ptr @.str.1, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013overlayfs: Failed to create volatile/dirty file.\0A\00", [44 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.164 = internal global ptr @ovl_make_workdir._entry.162, section ".printk_index", align 4
@ovl_make_workdir._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.145, ptr @.str.1, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014overlayfs: upper fs does not support file handles, falling back to index=off.\0A\00", [47 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.167 = internal global ptr @ovl_make_workdir._entry.165, section ".printk_index", align 4
@ovl_make_workdir._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.145, ptr @.str.1, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014overlayfs: NFS export requires \22index=on\22, falling back to nfs_export=off.\0A\00", [50 x i8] zeroinitializer }, align 32
@ovl_make_workdir._entry_ptr.170 = internal global ptr @ovl_make_workdir._entry.168, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@ovl_workdir_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.1, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014overlayfs: failed to create directory %s/%s (errno: %i); mounting read-only\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovl_workdir_create\00", [45 x i8] zeroinitializer }, align 32
@ovl_workdir_create._entry_ptr = internal global ptr @ovl_workdir_create._entry, section ".printk_index", align 4
@ovl_do_tmpfile.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.175, ptr @.str.176, ptr @.str.177, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovl_do_tmpfile\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/overlayfs/overlayfs.h\00", [39 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tmpfile(%pd2, 0%o) = %i\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"overlayfs: tmpfile(%pd2, 0%o) = %i\0A\00", [60 x i8] zeroinitializer }, align 32
@ovl_do_rename.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.179, ptr @.str.176, ptr @.str.180, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_do_rename\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rename(%pd2, %pd2, 0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"overlayfs: rename(%pd2, %pd2, 0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@ovl_do_rename.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.179, ptr @.str.176, ptr @.str.182, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"...rename(%pd2, %pd2, ...) = %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"overlayfs: ...rename(%pd2, %pd2, ...) = %i\0A\00", [52 x i8] zeroinitializer }, align 32
@ovl_do_setxattr.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.184, ptr @.str.176, ptr @.str.185, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_setxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_xattr_table = external dso_local local_unnamed_addr constant [0 x [2 x ptr]], align 4
@ovl_do_removexattr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.187, ptr @.str.176, ptr @.str.188, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovl_do_removexattr\00", [45 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"removexattr(%pd2, \22%s\22) = %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"overlayfs: removexattr(%pd2, \22%s\22) = %i\0A\00", [55 x i8] zeroinitializer }, align 32
@ovl_create_volatile_dirty.volatile_path = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.143, ptr @.str.190, ptr @.str.87, ptr @.str.191], [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"incompat\00", [23 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirty\00", [26 x i8] zeroinitializer }, align 32
@ovl_get_lowerstack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.1, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013overlayfs: at least 2 lowerdir are needed while upperdir nonexistent\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovl_get_lowerstack\00", [45 x i8] zeroinitializer }, align 32
@ovl_get_lowerstack._entry_ptr = internal global ptr @ovl_get_lowerstack._entry, section ".printk_index", align 4
@ovl_get_lowerstack._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.1, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013overlayfs: maximum fs stacking depth exceeded\0A\00", [47 x i8] zeroinitializer }, align 32
@ovl_get_lowerstack._entry_ptr.196 = internal global ptr @ovl_get_lowerstack._entry.194, section ".printk_index", align 4
@ovl_lower_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.1, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\014overlayfs: fs on '%s' does not support file handles, falling back to index=off,nfs_export=off.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_lower_dir\00", [18 x i8] zeroinitializer }, align 32
@ovl_lower_dir._entry_ptr = internal global ptr @ovl_lower_dir._entry, section ".printk_index", align 4
@ovl_lower_dir._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.1, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014overlayfs: fs on '%s' does not support file handles, falling back to xino=off.\0A\00", [46 x i8] zeroinitializer }, align 32
@ovl_lower_dir._entry_ptr.201 = internal global ptr @ovl_lower_dir._entry.199, section ".printk_index", align 4
@ovl_get_layers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.1, i32 1696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013overlayfs: failed to get anonymous bdev for upper fs\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovl_get_layers\00", [17 x i8] zeroinitializer }, align 32
@ovl_get_layers._entry_ptr = internal global ptr @ovl_get_layers._entry, section ".printk_index", align 4
@ovl_get_layers._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.1, i32 1736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013overlayfs: failed to clone lowerpath\0A\00", [56 x i8] zeroinitializer }, align 32
@ovl_get_layers._entry_ptr.206 = internal global ptr @ovl_get_layers._entry.204, section ".printk_index", align 4
@ovl_get_layers._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.203, ptr @.str.1, i32 1767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016overlayfs: \22xino=on\22 is useless with all layers on same fs, ignore.\0A\00", [57 x i8] zeroinitializer }, align 32
@ovl_get_layers._entry_ptr.209 = internal global ptr @ovl_get_layers._entry.207, section ".printk_index", align 4
@ovl_get_layers._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.203, ptr @.str.1, i32 1785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016overlayfs: \22xino\22 feature enabled using %d upper inode bits.\0A\00", [32 x i8] zeroinitializer }, align 32
@ovl_get_layers._entry_ptr.212 = internal global ptr @ovl_get_layers._entry.210, section ".printk_index", align 4
@ovl_get_fsid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.1, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\014overlayfs: %s uuid detected in lower fs '%pd2', falling back to xino=%s,index=off,nfs_export=off.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_get_fsid\00", [19 x i8] zeroinitializer }, align 32
@ovl_get_fsid._entry_ptr = internal global ptr @ovl_get_fsid._entry, section ".printk_index", align 4
@.str.215 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"conflicting\00", [20 x i8] zeroinitializer }, align 32
@ovl_get_fsid._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.214, ptr @.str.1, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013overlayfs: failed to get anonymous bdev for lowerpath\0A\00", [39 x i8] zeroinitializer }, align 32
@ovl_get_fsid._entry_ptr.219 = internal global ptr @ovl_get_fsid._entry.217, section ".printk_index", align 4
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@ovl_get_indexdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.1, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013overlayfs: failed to verify upper root origin\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ovl_get_indexdir\00", [47 x i8] zeroinitializer }, align 32
@ovl_get_indexdir._entry_ptr = internal global ptr @ovl_get_indexdir._entry, section ".printk_index", align 4
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"indexdir\00", [23 x i8] zeroinitializer }, align 32
@ovl_get_indexdir._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.221, ptr @.str.1, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013overlayfs: failed to verify index dir 'origin' xattr\0A\00", [40 x i8] zeroinitializer }, align 32
@ovl_get_indexdir._entry_ptr.226 = internal global ptr @ovl_get_indexdir._entry.224, section ".printk_index", align 4
@ovl_get_indexdir._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.221, ptr @.str.1, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013overlayfs: failed to verify index dir 'upper' xattr\0A\00", [41 x i8] zeroinitializer }, align 32
@ovl_get_indexdir._entry_ptr.229 = internal global ptr @ovl_get_indexdir._entry.227, section ".printk_index", align 4
@ovl_get_indexdir._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.221, ptr @.str.1, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014overlayfs: try deleting index dir or mounting with '-o index=off' to disable inodes index.\0A\00", [34 x i8] zeroinitializer }, align 32
@ovl_get_indexdir._entry_ptr.232 = internal global ptr @ovl_get_indexdir._entry.230, section ".printk_index", align 4
@ovl_check_layer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.1, i32 1874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013overlayfs: overlapping %s path\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_check_layer\00", [16 x i8] zeroinitializer }, align 32
@ovl_check_layer._entry_ptr = internal global ptr @ovl_check_layer._entry, section ".printk_index", align 4
@ovl_posix_acl_access_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.172, ptr null, i32 32768, ptr null, ptr @ovl_posix_acl_xattr_get, ptr @ovl_posix_acl_xattr_set }, [40 x i8] zeroinitializer }, align 32
@ovl_posix_acl_default_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.171, ptr null, i32 16384, ptr null, ptr @ovl_posix_acl_xattr_get, ptr @ovl_posix_acl_xattr_set }, [40 x i8] zeroinitializer }, align 32
@ovl_own_user_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.235, i32 0, ptr null, ptr @ovl_own_xattr_get, ptr @ovl_own_xattr_set }, [40 x i8] zeroinitializer }, align 32
@ovl_other_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.236, i32 0, ptr null, ptr @ovl_other_xattr_get, ptr @ovl_other_xattr_set }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"user.overlay.\00", [18 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ovl_own_trusted_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.237, i32 0, ptr null, ptr @ovl_own_xattr_get, ptr @ovl_own_xattr_set }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trusted.overlay.\00", [47 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ovl_inode\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 44, i64 92]
@__sancov_gen_cov_switch_values.240 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 8, i64 58, i64 92]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967256]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967256]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967256]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967256]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967256]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.248 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.249 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.250 = private unnamed_addr constant [21 x i8] c"ovl_redirect_dir_def\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 29, i32 13 }
@___asan_gen_.253 = private unnamed_addr constant [27 x i8] c"ovl_redirect_always_follow\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 34, i32 13 }
@___asan_gen_.256 = private unnamed_addr constant [14 x i8] c"ovl_index_def\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 41, i32 13 }
@___asan_gen_.259 = private unnamed_addr constant [19 x i8] c"ovl_nfs_export_def\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 46, i32 13 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"ovl_xino_auto_def\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 51, i32 13 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"ovl_metacopy_def\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 64, i32 13 }
@___asan_gen_.268 = private unnamed_addr constant [12 x i8] c"ovl_fs_type\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2165, i32 32 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"ovl_inode_cachep\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 173, i32 27 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2167, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1977, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2007, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2019, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2040, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant [21 x i8] c"ovl_super_operations\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 409, i32 38 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2053, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2066, i32 5 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2091, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2113, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2119, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [24 x i8] c"ovl_user_xattr_handlers\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1144, i32 36 }
@___asan_gen_.337 = private unnamed_addr constant [27 x i8] c"ovl_trusted_xattr_handlers\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1134, i32 36 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 112, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [11 x i8] c"ovl_tokens\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 443, i32 28 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 623, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 632, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 638, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 645, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 663, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 672, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 684, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 687, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 694, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 705, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 713, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 720, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 729, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 734, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 335, i32 32 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 335, i32 39 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 444, i32 19 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 445, i32 19 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 446, i32 18 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 447, i32 28 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 448, i32 22 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 449, i32 19 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 450, i32 20 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 451, i32 20 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 452, i32 18 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 453, i32 19 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 454, i32 23 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 455, i32 24 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 456, i32 18 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 457, i32 19 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 458, i32 20 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 459, i32 21 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 460, i32 22 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 461, i32 19 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 497, i32 26 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 502, i32 26 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 503, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 189, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 360, i32 21 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 362, i32 22 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 363, i32 22 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 366, i32 15 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 368, i32 17 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 370, i32 17 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 372, i32 15 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 374, i32 17 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 377, i32 17 }
@___asan_gen_.544 = private unnamed_addr constant [13 x i8] c"ovl_xino_str\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 338, i32 27 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 379, i32 17 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 382, i32 15 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 384, i32 15 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 242, i32 22 }
@___asan_gen_.560 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 245, i32 24 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 340, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1203, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1220, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 902, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 863, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 868, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 873, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 877, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 881, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 919, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1164, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1181, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1185, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1492, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1496, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1368, i32 36 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1391, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1399, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1409, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1414, i32 61 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1420, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1428, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1442, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1454, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1463, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1472, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 813, i32 11 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 818, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 839, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.791, i32 254, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.791, i32 233, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.791, i32 236, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.791, i32 204, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [28 x i8] c"../fs/overlayfs/overlayfs.h\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.791, i32 214, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [14 x i8] c"volatile_path\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1340, i32 27 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1341, i32 21 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1341, i32 45 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1803, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1823, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 951, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 961, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1696, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1736, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1767, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1784, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1653, i32 4 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1662, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1538, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1547, i32 37 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1555, i32 10 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1572, i32 5 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1577, i32 4 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1584, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1874, i32 4 }
@___asan_gen_.922 = private unnamed_addr constant [35 x i8] c"ovl_posix_acl_access_xattr_handler\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1101, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant [36 x i8] c"ovl_posix_acl_default_xattr_handler\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1109, i32 1 }
@___asan_gen_.928 = private unnamed_addr constant [27 x i8] c"ovl_own_user_xattr_handler\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1122, i32 35 }
@___asan_gen_.931 = private unnamed_addr constant [24 x i8] c"ovl_other_xattr_handler\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1128, i32 35 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1123, i32 12 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1129, i32 12 }
@___asan_gen_.940 = private unnamed_addr constant [30 x i8] c"ovl_own_trusted_xattr_handler\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1116, i32 35 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 1117, i32 12 }
@___asan_gen_.947 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.947, i32 286, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.950 = private constant [24 x i8] c"../fs/overlayfs/super.c\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.950, i32 2185, i32 39 }
@llvm.compiler.used = appending global [322 x ptr] [ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_index257, ptr @__UNIQUE_ID_indextype256, ptr @__UNIQUE_ID_license251, ptr @__UNIQUE_ID_metacopy263, ptr @__UNIQUE_ID_metacopytype262, ptr @__UNIQUE_ID_nfs_export259, ptr @__UNIQUE_ID_nfs_exporttype258, ptr @__UNIQUE_ID_redirect_always_follow255, ptr @__UNIQUE_ID_redirect_always_followtype254, ptr @__UNIQUE_ID_redirect_dir253, ptr @__UNIQUE_ID_redirect_dirtype252, ptr @__UNIQUE_ID_xino_auto261, ptr @__UNIQUE_ID_xino_autotype260, ptr @__exitcall_ovl_exit, ptr @__initcall__kmod_overlay__271_2219_ovl_init6, ptr @__param_index, ptr @__param_metacopy, ptr @__param_nfs_export, ptr @__param_redirect_always_follow, ptr @__param_redirect_dir, ptr @__param_xino_auto, ptr @ovl_check_layer._entry, ptr @ovl_check_layer._entry_ptr, ptr @ovl_check_namelen._entry, ptr @ovl_check_namelen._entry_ptr, ptr @ovl_exit, ptr @ovl_fill_super._entry, ptr @ovl_fill_super._entry.10, ptr @ovl_fill_super._entry.13, ptr @ovl_fill_super._entry.16, ptr @ovl_fill_super._entry.19, ptr @ovl_fill_super._entry.22, ptr @ovl_fill_super._entry.4, ptr @ovl_fill_super._entry.7, ptr @ovl_fill_super._entry_ptr, ptr @ovl_fill_super._entry_ptr.12, ptr @ovl_fill_super._entry_ptr.15, ptr @ovl_fill_super._entry_ptr.18, ptr @ovl_fill_super._entry_ptr.21, ptr @ovl_fill_super._entry_ptr.24, ptr @ovl_fill_super._entry_ptr.6, ptr @ovl_fill_super._entry_ptr.9, ptr @ovl_get_fsid._entry, ptr @ovl_get_fsid._entry.217, ptr @ovl_get_fsid._entry_ptr, ptr @ovl_get_fsid._entry_ptr.219, ptr @ovl_get_indexdir._entry, ptr @ovl_get_indexdir._entry.224, ptr @ovl_get_indexdir._entry.227, ptr @ovl_get_indexdir._entry.230, ptr @ovl_get_indexdir._entry_ptr, ptr @ovl_get_indexdir._entry_ptr.226, ptr @ovl_get_indexdir._entry_ptr.229, ptr @ovl_get_indexdir._entry_ptr.232, ptr @ovl_get_layers._entry, ptr @ovl_get_layers._entry.204, ptr @ovl_get_layers._entry.207, ptr @ovl_get_layers._entry.210, ptr @ovl_get_layers._entry_ptr, ptr @ovl_get_layers._entry_ptr.206, ptr @ovl_get_layers._entry_ptr.209, ptr @ovl_get_layers._entry_ptr.212, ptr @ovl_get_lowerstack._entry, ptr @ovl_get_lowerstack._entry.194, ptr @ovl_get_lowerstack._entry_ptr, ptr @ovl_get_lowerstack._entry_ptr.196, ptr @ovl_get_upper._entry, ptr @ovl_get_upper._entry.110, ptr @ovl_get_upper._entry_ptr, ptr @ovl_get_upper._entry_ptr.112, ptr @ovl_get_workdir._entry, ptr @ovl_get_workdir._entry.140, ptr @ovl_get_workdir._entry_ptr, ptr @ovl_get_workdir._entry_ptr.142, ptr @ovl_lower_dir._entry, ptr @ovl_lower_dir._entry.199, ptr @ovl_lower_dir._entry_ptr, ptr @ovl_lower_dir._entry_ptr.201, ptr @ovl_make_workdir._entry, ptr @ovl_make_workdir._entry.146, ptr @ovl_make_workdir._entry.149, ptr @ovl_make_workdir._entry.153, ptr @ovl_make_workdir._entry.156, ptr @ovl_make_workdir._entry.159, ptr @ovl_make_workdir._entry.162, ptr @ovl_make_workdir._entry.165, ptr @ovl_make_workdir._entry.168, ptr @ovl_make_workdir._entry_ptr, ptr @ovl_make_workdir._entry_ptr.148, ptr @ovl_make_workdir._entry_ptr.151, ptr @ovl_make_workdir._entry_ptr.155, ptr @ovl_make_workdir._entry_ptr.158, ptr @ovl_make_workdir._entry_ptr.161, ptr @ovl_make_workdir._entry_ptr.164, ptr @ovl_make_workdir._entry_ptr.167, ptr @ovl_make_workdir._entry_ptr.170, ptr @ovl_mount_dir._entry, ptr @ovl_mount_dir._entry_ptr, ptr @ovl_mount_dir_noesc._entry, ptr @ovl_mount_dir_noesc._entry.117, ptr @ovl_mount_dir_noesc._entry.120, ptr @ovl_mount_dir_noesc._entry.123, ptr @ovl_mount_dir_noesc._entry.126, ptr @ovl_mount_dir_noesc._entry_ptr, ptr @ovl_mount_dir_noesc._entry_ptr.119, ptr @ovl_mount_dir_noesc._entry_ptr.122, ptr @ovl_mount_dir_noesc._entry_ptr.125, ptr @ovl_mount_dir_noesc._entry_ptr.128, ptr @ovl_parse_opt._entry, ptr @ovl_parse_opt._entry.29, ptr @ovl_parse_opt._entry.32, ptr @ovl_parse_opt._entry.35, ptr @ovl_parse_opt._entry.38, ptr @ovl_parse_opt._entry.41, ptr @ovl_parse_opt._entry.44, ptr @ovl_parse_opt._entry.47, ptr @ovl_parse_opt._entry.50, ptr @ovl_parse_opt._entry.53, ptr @ovl_parse_opt._entry.56, ptr @ovl_parse_opt._entry.59, ptr @ovl_parse_opt._entry.62, ptr @ovl_parse_opt._entry.65, ptr @ovl_parse_opt._entry_ptr, ptr @ovl_parse_opt._entry_ptr.31, ptr @ovl_parse_opt._entry_ptr.34, ptr @ovl_parse_opt._entry_ptr.37, ptr @ovl_parse_opt._entry_ptr.40, ptr @ovl_parse_opt._entry_ptr.43, ptr @ovl_parse_opt._entry_ptr.46, ptr @ovl_parse_opt._entry_ptr.49, ptr @ovl_parse_opt._entry_ptr.52, ptr @ovl_parse_opt._entry_ptr.55, ptr @ovl_parse_opt._entry_ptr.58, ptr @ovl_parse_opt._entry_ptr.61, ptr @ovl_parse_opt._entry_ptr.64, ptr @ovl_parse_opt._entry_ptr.67, ptr @ovl_parse_redirect_mode._entry, ptr @ovl_parse_redirect_mode._entry_ptr, ptr @ovl_report_in_use._entry, ptr @ovl_report_in_use._entry.135, ptr @ovl_report_in_use._entry_ptr, ptr @ovl_report_in_use._entry_ptr.137, ptr @ovl_setup_trap._entry, ptr @ovl_setup_trap._entry_ptr, ptr @ovl_workdir_create._entry, ptr @ovl_workdir_create._entry_ptr, ptr @ovl_redirect_dir_def, ptr @ovl_redirect_always_follow, ptr @ovl_index_def, ptr @ovl_nfs_export_def, ptr @ovl_xino_auto_def, ptr @ovl_metacopy_def, ptr @ovl_fs_type, ptr @ovl_inode_cachep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @ovl_super_operations, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @ovl_user_xattr_handlers, ptr @ovl_trusted_xattr_handlers, ptr @.str.25, ptr @.str.26, ptr @ovl_tokens, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @ovl_alloc_inode.__key, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @ovl_xino_str, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @ovl_create_volatile_dirty.volatile_path, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @ovl_posix_acl_access_xattr_handler, ptr @ovl_posix_acl_default_xattr_handler, ptr @ovl_own_user_xattr_handler, ptr @ovl_other_xattr_handler, ptr @.str.235, ptr @.str.236, ptr @ovl_own_trusted_xattr_handler, ptr @.str.237, ptr @.str.238, ptr @.str.239], section "llvm.metadata"
@0 = internal global [234 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_redirect_dir_def to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_redirect_always_follow to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_index_def to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_nfs_export_def to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_xino_auto_def to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_metacopy_def to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fill_super._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_user_xattr_handlers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_trusted_xattr_handlers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_tokens to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_opt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_parse_redirect_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_xino_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_upper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_upper._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_mount_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_mount_dir_noesc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_mount_dir_noesc._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_mount_dir_noesc._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_mount_dir_noesc._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_mount_dir_noesc._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_namelen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_setup_trap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_report_in_use._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_report_in_use._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_workdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_workdir._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_make_workdir._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_workdir_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_create_volatile_dirty.volatile_path to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_lowerstack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_lowerstack._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lower_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lower_dir._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_layers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_layers._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_layers._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_layers._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_fsid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_fsid._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_indexdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_indexdir._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_indexdir._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_indexdir._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_layer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_posix_acl_access_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_posix_acl_default_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_own_user_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_other_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_own_trusted_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ovl_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @ovl_fs_type) #14
  tail call void @rcu_barrier() #14
  %0 = load ptr, ptr @ovl_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  tail call void @ovl_aio_request_cache_destroy() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_aio_request_cache_destroy() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.239, i32 noundef 912, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @ovl_inode_init_once) #14
  store ptr %call, ptr @ovl_inode_cachep, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ovl_aio_request_cache_init() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @register_filesystem(ptr noundef nonnull @ovl_fs_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ovl_aio_request_cache_destroy() #14
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.if.end7_crit_edge ], [ %call3, %if.end6 ]
  %0 = load ptr, ptr @ovl_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ovl_mount(ptr noundef %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %raw_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_nodev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %raw_data, ptr noundef nonnull @ovl_fill_super) #14
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #2 align 64 {
entry:
  %args.i = alloca [3 x %struct.substring_t], align 4
  %upperpath = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upperpath) #14
  %0 = ptrtoint ptr %upperpath to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %upperpath, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %1 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_user_ns, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !494) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred2 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred2, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns, align 4
  %cmp.not = icmp eq ptr %2, %10
  br i1 %cmp.not, label %if.end27.critedge, label %do.end12, !prof !504

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1977, i32 noundef 9, ptr noundef null) #14
  br label %cleanup239

if.end27.critedge:                                ; preds = %entry
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %11 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ovl_dentry_operations, ptr %s_d_op, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 104) #18
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %if.end27.critedge.cleanup239_crit_edge, label %if.end31

if.end27.critedge.cleanup239_crit_edge:           ; preds = %if.end27.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup239

if.end31:                                         ; preds = %if.end27.critedge
  %call32 = tail call ptr @prepare_creds() #14
  %creator_cred = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %creator_cred to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %creator_cred, align 8
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.out_err_crit_edge, label %if.end35

if.end31.out_err_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end35:                                         ; preds = %if.end31
  %share_whiteout = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %share_whiteout to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %share_whiteout, align 8
  %15 = load i8, ptr @ovl_index_def, align 1, !range !505
  %config = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8
  %index = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %index, align 4
  %uuid = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 8
  %17 = ptrtoint ptr %uuid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %uuid, align 1
  %18 = load i8, ptr @ovl_nfs_export_def, align 1, !range !505
  %nfs_export = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 9
  %19 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %nfs_export, align 2
  %20 = load i8, ptr @ovl_xino_auto_def, align 1, !range !505
  %21 = zext i8 %20 to i32
  %xino = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 10
  %22 = ptrtoint ptr %xino to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %xino, align 8
  %23 = load i8, ptr @ovl_metacopy_def, align 1, !range !505
  %metacopy = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 11
  %24 = ptrtoint ptr %metacopy to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %metacopy, align 4
  %25 = load i8, ptr @ovl_redirect_dir_def, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.69, ptr @.str.68
  %call1.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %cond.i.i, i32 noundef 3264) #14
  %redirect_mode.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 6
  %26 = ptrtoint ptr %redirect_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1.i, ptr %redirect_mode.i, align 8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end35.out_err_crit_edge, label %while.cond.preheader.i

if.end35.out_err_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

while.cond.preheader.i:                           ; preds = %if.end35
  %cmp.i470.i = icmp eq ptr %data, null
  br i1 %cmp.i470.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %for.cond.i.preheader.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

for.cond.i.preheader.lr.ph.i:                     ; preds = %while.cond.preheader.i
  %userxattr.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 12
  %ovl_volatile.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 13
  %default_permissions.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 3
  %workdir.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 2
  %upperdir.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 1
  br label %for.cond.i.preheader.i

for.cond.i.preheader.i:                           ; preds = %cleanup.i.for.cond.i.preheader.i_crit_edge, %for.cond.i.preheader.lr.ph.i
  %metacopy_opt.0.off0475.i = phi i1 [ false, %for.cond.i.preheader.lr.ph.i ], [ %metacopy_opt.2.off0.i, %cleanup.i.for.cond.i.preheader.i_crit_edge ]
  %redirect_opt.0.off0474.i = phi i1 [ false, %for.cond.i.preheader.lr.ph.i ], [ %redirect_opt.2.off0.i, %cleanup.i.for.cond.i.preheader.i_crit_edge ]
  %nfs_export_opt.0.off0473.i = phi i1 [ false, %for.cond.i.preheader.lr.ph.i ], [ %nfs_export_opt.2.off0.i, %cleanup.i.for.cond.i.preheader.i_crit_edge ]
  %index_opt.0.off0472.i = phi i1 [ false, %for.cond.i.preheader.lr.ph.i ], [ %index_opt.2.off0.i, %cleanup.i.for.cond.i.preheader.i_crit_edge ]
  %opt.addr.0471.i = phi ptr [ %data, %for.cond.i.preheader.lr.ph.i ], [ %opt.addr.1.i, %cleanup.i.for.cond.i.preheader.i_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.cond.i.preheader.i
  %p.0.i.i = phi ptr [ %incdec.ptr13.i.i, %for.inc.i.i ], [ %opt.addr.0471.i, %for.cond.i.preheader.i ]
  %27 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %p.0.i.i, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %28, label %for.cond.i.i.for.inc.i.i_crit_edge [
    i8 0, label %for.cond.i.i.while.body.i_crit_edge
    i8 92, label %if.then3.i.i
    i8 44, label %if.then10.i.i
  ]

for.cond.i.i.while.body.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then3.i.i:                                     ; preds = %for.cond.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %p.0.i.i, i32 1
  %30 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool4.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool4.not.i.i, label %if.then3.i.i.while.body.i_crit_edge, label %if.then3.i.i.for.inc.i.i_crit_edge

if.then3.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then3.i.i.while.body.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.then10.i.i:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %p.0.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %p.0.i.i, i32 1
  br label %while.body.i

for.inc.i.i:                                      ; preds = %if.then3.i.i.for.inc.i.i_crit_edge, %for.cond.i.i.for.inc.i.i_crit_edge
  %p.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then3.i.i.for.inc.i.i_crit_edge ], [ %p.0.i.i, %for.cond.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr13.i.i = getelementptr i8, ptr %p.1.i.i, i32 1
  br label %for.cond.i.i

while.body.i:                                     ; preds = %if.then10.i.i, %if.then3.i.i.while.body.i_crit_edge, %for.cond.i.i.while.body.i_crit_edge
  %opt.addr.1.i = phi ptr [ %add.ptr.i.i, %if.then10.i.i ], [ null, %for.cond.i.i.while.body.i_crit_edge ], [ null, %if.then3.i.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #14
  %33 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  %34 = ptrtoint ptr %opt.addr.0471.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %opt.addr.0471.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool4.not.i = icmp eq i8 %35, 0
  br i1 %tobool4.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end6.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end6.i:                                        ; preds = %while.body.i
  %call7.i = call i32 @match_token(ptr noundef nonnull %opt.addr.0471.i, ptr noundef nonnull @ovl_tokens, ptr noundef nonnull %args.i) #14
  %36 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %call7.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb14.i
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb30.i
    i32 4, label %sw.bb31.i
    i32 5, label %sw.bb40.i
    i32 6, label %sw.bb41.i
    i32 7, label %sw.bb43.i
    i32 8, label %sw.bb44.i
    i32 9, label %sw.bb46.i
    i32 11, label %sw.bb47.i
    i32 12, label %sw.bb49.i
    i32 13, label %sw.bb50.i
    i32 14, label %sw.bb52.i
    i32 15, label %sw.bb54.i
    i32 16, label %sw.bb55.i
    i32 17, label %sw.bb57.i
    i32 10, label %sw.bb58.i
  ]

sw.bb.i:                                          ; preds = %if.end6.i
  %37 = ptrtoint ptr %upperdir.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %upperdir.i, align 4
  call void @kfree(ptr noundef %38) #14
  %call8.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #14
  %39 = ptrtoint ptr %upperdir.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i, ptr %upperdir.i, align 4
  %tobool11.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool11.not.i, label %sw.bb.i.cleanup.thread.i_crit_edge, label %sw.bb.i.cleanup.i_crit_edge

sw.bb.i.cleanup.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

sw.bb.i.cleanup.thread.i_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

sw.bb14.i:                                        ; preds = %if.end6.i
  %40 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config, align 8
  call void @kfree(ptr noundef %41) #14
  %call16.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #14
  %42 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call16.i, ptr %config, align 8
  %tobool19.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool19.not.i, label %sw.bb14.i.cleanup.thread.i_crit_edge, label %sw.bb14.i.cleanup.i_crit_edge

sw.bb14.i.cleanup.i_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

sw.bb14.i.cleanup.thread.i_crit_edge:             ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

sw.bb22.i:                                        ; preds = %if.end6.i
  %43 = ptrtoint ptr %workdir.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %workdir.i, align 8
  call void @kfree(ptr noundef %44) #14
  %call24.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #14
  %45 = ptrtoint ptr %workdir.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call24.i, ptr %workdir.i, align 8
  %tobool27.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool27.not.i, label %sw.bb22.i.cleanup.thread.i_crit_edge, label %sw.bb22.i.cleanup.i_crit_edge

sw.bb22.i.cleanup.i_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

sw.bb22.i.cleanup.thread.i_crit_edge:             ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

sw.bb30.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %default_permissions.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %default_permissions.i, align 4
  br label %cleanup.i

sw.bb31.i:                                        ; preds = %if.end6.i
  %47 = ptrtoint ptr %redirect_mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %redirect_mode.i, align 8
  call void @kfree(ptr noundef %48) #14
  %call34.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #14
  %49 = ptrtoint ptr %redirect_mode.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call34.i, ptr %redirect_mode.i, align 8
  %tobool37.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool37.not.i, label %sw.bb31.i.cleanup.thread.i_crit_edge, label %sw.bb31.i.cleanup.i_crit_edge

sw.bb31.i.cleanup.i_crit_edge:                    ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

sw.bb31.i.cleanup.thread.i_crit_edge:             ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

sw.bb40.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %index, align 4
  br label %cleanup.i

sw.bb41.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %index, align 4
  br label %cleanup.i

sw.bb43.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %uuid to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %uuid, align 1
  br label %cleanup.i

sw.bb44.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %uuid to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %uuid, align 1
  br label %cleanup.i

sw.bb46.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %nfs_export, align 2
  br label %cleanup.i

sw.bb47.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %nfs_export, align 2
  br label %cleanup.i

sw.bb49.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %xino to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %xino, align 8
  br label %cleanup.i

sw.bb50.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %xino to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %xino, align 8
  br label %cleanup.i

sw.bb52.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %xino to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %xino, align 8
  br label %cleanup.i

sw.bb54.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %metacopy to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %metacopy, align 4
  br label %cleanup.i

sw.bb55.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %metacopy to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %metacopy, align 4
  br label %cleanup.i

sw.bb57.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %ovl_volatile.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %ovl_volatile.i, align 2
  br label %cleanup.i

sw.bb58.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %userxattr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %userxattr.i, align 1
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %opt.addr.0471.i) #17
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end.i, %sw.bb31.i.cleanup.thread.i_crit_edge, %sw.bb22.i.cleanup.thread.i_crit_edge, %sw.bb14.i.cleanup.thread.i_crit_edge, %sw.bb.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ -22, %do.end.i ], [ -12, %sw.bb.i.cleanup.thread.i_crit_edge ], [ -12, %sw.bb14.i.cleanup.thread.i_crit_edge ], [ -12, %sw.bb22.i.cleanup.thread.i_crit_edge ], [ -12, %sw.bb31.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #14
  br label %out_err

cleanup.i:                                        ; preds = %sw.bb58.i, %sw.bb57.i, %sw.bb55.i, %sw.bb54.i, %sw.bb52.i, %sw.bb50.i, %sw.bb49.i, %sw.bb47.i, %sw.bb46.i, %sw.bb44.i, %sw.bb43.i, %sw.bb41.i, %sw.bb40.i, %sw.bb31.i.cleanup.i_crit_edge, %sw.bb30.i, %sw.bb22.i.cleanup.i_crit_edge, %sw.bb14.i.cleanup.i_crit_edge, %sw.bb.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %index_opt.2.off0.i = phi i1 [ %index_opt.0.off0472.i, %while.body.i.cleanup.i_crit_edge ], [ %index_opt.0.off0472.i, %sw.bb58.i ], [ %index_opt.0.off0472.i, %sw.bb57.i ], [ %index_opt.0.off0472.i, %sw.bb55.i ], [ %index_opt.0.off0472.i, %sw.bb54.i ], [ %index_opt.0.off0472.i, %sw.bb52.i ], [ %index_opt.0.off0472.i, %sw.bb50.i ], [ %index_opt.0.off0472.i, %sw.bb49.i ], [ %index_opt.0.off0472.i, %sw.bb47.i ], [ %index_opt.0.off0472.i, %sw.bb46.i ], [ %index_opt.0.off0472.i, %sw.bb44.i ], [ %index_opt.0.off0472.i, %sw.bb43.i ], [ true, %sw.bb41.i ], [ true, %sw.bb40.i ], [ %index_opt.0.off0472.i, %sw.bb30.i ], [ %index_opt.0.off0472.i, %sw.bb22.i.cleanup.i_crit_edge ], [ %index_opt.0.off0472.i, %sw.bb14.i.cleanup.i_crit_edge ], [ %index_opt.0.off0472.i, %sw.bb.i.cleanup.i_crit_edge ], [ %index_opt.0.off0472.i, %sw.bb31.i.cleanup.i_crit_edge ]
  %nfs_export_opt.2.off0.i = phi i1 [ %nfs_export_opt.0.off0473.i, %while.body.i.cleanup.i_crit_edge ], [ %nfs_export_opt.0.off0473.i, %sw.bb58.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb57.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb55.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb54.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb52.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb50.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb49.i ], [ true, %sw.bb47.i ], [ true, %sw.bb46.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb44.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb43.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb41.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb40.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb30.i ], [ %nfs_export_opt.0.off0473.i, %sw.bb22.i.cleanup.i_crit_edge ], [ %nfs_export_opt.0.off0473.i, %sw.bb14.i.cleanup.i_crit_edge ], [ %nfs_export_opt.0.off0473.i, %sw.bb.i.cleanup.i_crit_edge ], [ %nfs_export_opt.0.off0473.i, %sw.bb31.i.cleanup.i_crit_edge ]
  %redirect_opt.2.off0.i = phi i1 [ %redirect_opt.0.off0474.i, %while.body.i.cleanup.i_crit_edge ], [ %redirect_opt.0.off0474.i, %sw.bb58.i ], [ %redirect_opt.0.off0474.i, %sw.bb57.i ], [ %redirect_opt.0.off0474.i, %sw.bb55.i ], [ %redirect_opt.0.off0474.i, %sw.bb54.i ], [ %redirect_opt.0.off0474.i, %sw.bb52.i ], [ %redirect_opt.0.off0474.i, %sw.bb50.i ], [ %redirect_opt.0.off0474.i, %sw.bb49.i ], [ %redirect_opt.0.off0474.i, %sw.bb47.i ], [ %redirect_opt.0.off0474.i, %sw.bb46.i ], [ %redirect_opt.0.off0474.i, %sw.bb44.i ], [ %redirect_opt.0.off0474.i, %sw.bb43.i ], [ %redirect_opt.0.off0474.i, %sw.bb41.i ], [ %redirect_opt.0.off0474.i, %sw.bb40.i ], [ %redirect_opt.0.off0474.i, %sw.bb30.i ], [ %redirect_opt.0.off0474.i, %sw.bb22.i.cleanup.i_crit_edge ], [ %redirect_opt.0.off0474.i, %sw.bb14.i.cleanup.i_crit_edge ], [ %redirect_opt.0.off0474.i, %sw.bb.i.cleanup.i_crit_edge ], [ true, %sw.bb31.i.cleanup.i_crit_edge ]
  %metacopy_opt.2.off0.i = phi i1 [ %metacopy_opt.0.off0475.i, %while.body.i.cleanup.i_crit_edge ], [ %metacopy_opt.0.off0475.i, %sw.bb58.i ], [ %metacopy_opt.0.off0475.i, %sw.bb57.i ], [ true, %sw.bb55.i ], [ true, %sw.bb54.i ], [ %metacopy_opt.0.off0475.i, %sw.bb52.i ], [ %metacopy_opt.0.off0475.i, %sw.bb50.i ], [ %metacopy_opt.0.off0475.i, %sw.bb49.i ], [ %metacopy_opt.0.off0475.i, %sw.bb47.i ], [ %metacopy_opt.0.off0475.i, %sw.bb46.i ], [ %metacopy_opt.0.off0475.i, %sw.bb44.i ], [ %metacopy_opt.0.off0475.i, %sw.bb43.i ], [ %metacopy_opt.0.off0475.i, %sw.bb41.i ], [ %metacopy_opt.0.off0475.i, %sw.bb40.i ], [ %metacopy_opt.0.off0475.i, %sw.bb30.i ], [ %metacopy_opt.0.off0475.i, %sw.bb22.i.cleanup.i_crit_edge ], [ %metacopy_opt.0.off0475.i, %sw.bb14.i.cleanup.i_crit_edge ], [ %metacopy_opt.0.off0475.i, %sw.bb.i.cleanup.i_crit_edge ], [ %metacopy_opt.0.off0475.i, %sw.bb31.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #14
  %cmp.i.i = icmp eq ptr %opt.addr.1.i, null
  br i1 %cmp.i.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.for.cond.i.preheader.i_crit_edge

cleanup.i.for.cond.i.preheader.i_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.preheader.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %index_opt.0.off0.lcssa.i = phi i1 [ false, %while.cond.preheader.i.while.end.i_crit_edge ], [ %index_opt.2.off0.i, %cleanup.i.while.end.i_crit_edge ]
  %nfs_export_opt.0.off0.lcssa.i = phi i1 [ false, %while.cond.preheader.i.while.end.i_crit_edge ], [ %nfs_export_opt.2.off0.i, %cleanup.i.while.end.i_crit_edge ]
  %redirect_opt.0.off0.lcssa.i = phi i1 [ false, %while.cond.preheader.i.while.end.i_crit_edge ], [ %redirect_opt.2.off0.i, %cleanup.i.while.end.i_crit_edge ]
  %metacopy_opt.0.off0.lcssa.i = phi i1 [ false, %while.cond.preheader.i.while.end.i_crit_edge ], [ %metacopy_opt.2.off0.i, %cleanup.i.while.end.i_crit_edge ]
  %upperdir61.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %upperdir61.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %upperdir61.i, align 4
  %tobool62.not.i = icmp eq ptr %64, null
  br i1 %tobool62.not.i, label %if.then63.i, label %while.end.i.if.end100.i_crit_edge

while.end.i.if.end100.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.then63.i:                                      ; preds = %while.end.i
  %workdir64.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 2
  %65 = ptrtoint ptr %workdir64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %workdir64.i, align 8
  %tobool65.not.i = icmp eq ptr %66, null
  br i1 %tobool65.not.i, label %if.then63.i.if.end75.i_crit_edge, label %do.end69.i

if.then63.i.if.end75.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.i

do.end69.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #16
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull %66) #17
  %67 = ptrtoint ptr %workdir64.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %workdir64.i, align 8
  call void @kfree(ptr noundef %68) #14
  %69 = ptrtoint ptr %workdir64.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %workdir64.i, align 8
  br label %if.end75.i

if.end75.i:                                       ; preds = %do.end69.i, %if.then63.i.if.end75.i_crit_edge
  %70 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %index, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool77.not.i = icmp eq i8 %71, 0
  %index_opt.0.off0.not.i = xor i1 %index_opt.0.off0.lcssa.i, true
  %brmerge.i = select i1 %tobool77.not.i, i1 true, i1 %index_opt.0.off0.not.i
  br i1 %brmerge.i, label %if.end75.i.if.end87.i_crit_edge, label %do.end82.i

if.end75.i.if.end87.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87.i

do.end82.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #17
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.end82.i, %if.end75.i.if.end87.i_crit_edge
  %index_opt.3.off0.i = phi i1 [ false, %do.end82.i ], [ %index_opt.0.off0.lcssa.i, %if.end75.i.if.end87.i_crit_edge ]
  %72 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %index, align 4
  %73 = ptrtoint ptr %upperdir61.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr.i = load ptr, ptr %upperdir61.i, align 4
  %tobool89.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool89.not.i, label %land.lhs.true90.i, label %if.end87.i.if.end100.i_crit_edge

if.end87.i.if.end100.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

land.lhs.true90.i:                                ; preds = %if.end87.i
  %ovl_volatile91.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 13
  %74 = ptrtoint ptr %ovl_volatile91.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ovl_volatile91.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool92.not.i = icmp eq i8 %75, 0
  br i1 %tobool92.not.i, label %land.lhs.true90.i.if.end100.i_crit_edge, label %do.end96.i

land.lhs.true90.i.if.end100.i_crit_edge:          ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

do.end96.i:                                       ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #16
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #17
  %76 = ptrtoint ptr %ovl_volatile91.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %ovl_volatile91.i, align 2
  br label %if.end100.i

if.end100.i:                                      ; preds = %do.end96.i, %land.lhs.true90.i.if.end100.i_crit_edge, %if.end87.i.if.end100.i_crit_edge, %while.end.i.if.end100.i_crit_edge
  %index_opt.4.off0450.i = phi i1 [ %index_opt.3.off0.i, %do.end96.i ], [ %index_opt.3.off0.i, %land.lhs.true90.i.if.end100.i_crit_edge ], [ %index_opt.3.off0.i, %if.end87.i.if.end100.i_crit_edge ], [ %index_opt.0.off0.lcssa.i, %while.end.i.if.end100.i_crit_edge ]
  %77 = ptrtoint ptr %redirect_mode.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %redirect_mode.i, align 8
  %call.i.i343 = call i32 @strcmp(ptr noundef %78, ptr noundef nonnull dereferenceable(3) @.str.68) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i343)
  %cmp.i438.i = icmp eq i32 %call.i.i343, 0
  br i1 %cmp.i438.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #16
  %redirect_dir.i.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 4
  %79 = ptrtoint ptr %redirect_dir.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %redirect_dir.i.i, align 1
  br label %if.end105.sink.split.i

if.else.i.i:                                      ; preds = %if.end100.i
  %call1.i.i = call i32 @strcmp(ptr noundef %78, ptr noundef nonnull dereferenceable(7) @.str.88) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.else.i.i.if.end105.sink.split.i_crit_edge, label %if.else5.i.i

if.else.i.i.if.end105.sink.split.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.sink.split.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %call6.i.i = call i32 @strcmp(ptr noundef %78, ptr noundef nonnull dereferenceable(4) @.str.69) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else11.i.i

if.then8.i.i:                                     ; preds = %if.else5.i.i
  %80 = load i8, ptr @ovl_redirect_always_follow, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i440.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i440.i, label %if.then8.i.i.if.end105.i_crit_edge, label %if.then8.i.i.if.end105.sink.split.i_crit_edge

if.then8.i.i.if.end105.sink.split.i_crit_edge:    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.sink.split.i

if.then8.i.i.if.end105.i_crit_edge:               ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i

if.else11.i.i:                                    ; preds = %if.else5.i.i
  %call12.i.i = call i32 @strcmp(ptr noundef %78, ptr noundef nonnull dereferenceable(9) @.str.89) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %cmp13.not.i.i, label %if.else11.i.i.if.end105.i_crit_edge, label %ovl_parse_redirect_mode.exit.i

if.else11.i.i.if.end105.i_crit_edge:              ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i

ovl_parse_redirect_mode.exit.i:                   ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %78) #17
  br label %out_err

if.end105.sink.split.i:                           ; preds = %if.then8.i.i.if.end105.sink.split.i_crit_edge, %if.else.i.i.if.end105.sink.split.i_crit_edge, %if.then.i.i
  %redirect_follow4.i.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 5
  %81 = ptrtoint ptr %redirect_follow4.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %redirect_follow4.i.i, align 2
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end105.sink.split.i, %if.else11.i.i.if.end105.i_crit_edge, %if.then8.i.i.if.end105.i_crit_edge
  %82 = ptrtoint ptr %upperdir61.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %upperdir61.i, align 4
  %tobool107.not.i = icmp eq ptr %83, null
  br i1 %tobool107.not.i, label %land.lhs.true108.i, label %if.end105.i.if.end111.i_crit_edge

if.end105.i.if.end111.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111.i

land.lhs.true108.i:                               ; preds = %if.end105.i
  %redirect_follow.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 5
  %84 = ptrtoint ptr %redirect_follow.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %redirect_follow.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool109.not.i = icmp eq i8 %85, 0
  br i1 %tobool109.not.i, label %land.lhs.true108.i.if.end111.i_crit_edge, label %if.then110.i

land.lhs.true108.i.if.end111.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111.i

if.then110.i:                                     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #16
  %redirect_dir.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 4
  %86 = ptrtoint ptr %redirect_dir.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %redirect_dir.i, align 1
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then110.i, %land.lhs.true108.i.if.end111.i_crit_edge, %if.end105.i.if.end111.i_crit_edge
  %87 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %metacopy, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool113.not.i = icmp eq i8 %88, 0
  br i1 %tobool113.not.i, label %if.end111.i.if.end141.i_crit_edge, label %land.lhs.true114.i

if.end111.i.if.end141.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141.i

land.lhs.true114.i:                               ; preds = %if.end111.i
  %redirect_dir115.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 4
  %89 = ptrtoint ptr %redirect_dir115.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %redirect_dir115.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool116.not.i = icmp eq i8 %90, 0
  br i1 %tobool116.not.i, label %if.then117.i, label %land.lhs.true114.i.if.end141.i_crit_edge

land.lhs.true114.i.if.end141.i_crit_edge:         ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141.i

if.then117.i:                                     ; preds = %land.lhs.true114.i
  %91 = select i1 %metacopy_opt.0.off0.lcssa.i, i1 %redirect_opt.0.off0.lcssa.i, i1 false
  br i1 %91, label %do.end124.i, label %if.end128.i

do.end124.i:                                      ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %redirect_mode.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %redirect_mode.i, align 8
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %93) #17
  br label %out_err

if.end128.i:                                      ; preds = %if.then117.i
  br i1 %redirect_opt.0.off0.lcssa.i, label %do.end133.i, label %if.else.i

do.end133.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %redirect_mode.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %redirect_mode.i, align 8
  %call136.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %95) #17
  %96 = ptrtoint ptr %metacopy to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %metacopy, align 4
  br label %if.end141.i

if.else.i:                                        ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %redirect_dir115.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %redirect_dir115.i, align 1
  %redirect_follow139.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 5
  %98 = ptrtoint ptr %redirect_follow139.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %redirect_follow139.i, align 2
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else.i, %do.end133.i, %land.lhs.true114.i.if.end141.i_crit_edge, %if.end111.i.if.end141.i_crit_edge
  %99 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nfs_export, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool143.not.i = icmp eq i8 %100, 0
  br i1 %tobool143.not.i, label %if.end141.i.if.end217.i_crit_edge, label %land.lhs.true144.i

if.end141.i.if.end217.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end217.i

land.lhs.true144.i:                               ; preds = %if.end141.i
  %101 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %index, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool146.not.i = icmp eq i8 %102, 0
  br i1 %tobool146.not.i, label %if.then147.i, label %land.lhs.true144.i.land.lhs.true187.i_crit_edge

land.lhs.true144.i.land.lhs.true187.i_crit_edge:  ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true187.i

if.then147.i:                                     ; preds = %land.lhs.true144.i
  %103 = ptrtoint ptr %upperdir61.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %upperdir61.i, align 4
  %tobool149.not.i = icmp eq ptr %104, null
  br i1 %tobool149.not.i, label %land.lhs.true150.i, label %if.then147.i.if.else160.i_crit_edge

if.then147.i.if.else160.i_crit_edge:              ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else160.i

land.lhs.true150.i:                               ; preds = %if.then147.i
  %redirect_follow151.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 5
  %105 = ptrtoint ptr %redirect_follow151.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %redirect_follow151.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool152.not.i = icmp eq i8 %106, 0
  br i1 %tobool152.not.i, label %land.lhs.true150.i.if.else160.i_crit_edge, label %do.end156.i

land.lhs.true150.i.if.else160.i_crit_edge:        ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else160.i

do.end156.i:                                      ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #16
  %call158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #17
  %107 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %nfs_export, align 2
  br label %if.end217.i

if.else160.i:                                     ; preds = %land.lhs.true150.i.if.else160.i_crit_edge, %if.then147.i.if.else160.i_crit_edge
  %108 = select i1 %nfs_export_opt.0.off0.lcssa.i, i1 %index_opt.4.off0450.i, i1 false
  br i1 %108, label %do.end167.i, label %if.else170.i

do.end167.i:                                      ; preds = %if.else160.i
  call void @__sanitizer_cov_trace_pc() #16
  %call169.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #17
  br label %out_err

if.else170.i:                                     ; preds = %if.else160.i
  br i1 %index_opt.4.off0450.i, label %do.end175.i, label %if.end184.i

do.end175.i:                                      ; preds = %if.else170.i
  call void @__sanitizer_cov_trace_pc() #16
  %call177.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  %109 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %nfs_export, align 2
  br label %if.end217.i

if.end184.i:                                      ; preds = %if.else170.i
  %110 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %index, align 4
  %111 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %111)
  %.pr453.i.pr = load i8, ptr %nfs_export, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr453.i.pr)
  %tobool186.not.i = icmp eq i8 %.pr453.i.pr, 0
  br i1 %tobool186.not.i, label %if.end184.i.if.end217.i_crit_edge, label %if.end184.i.land.lhs.true187.i_crit_edge

if.end184.i.land.lhs.true187.i_crit_edge:         ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true187.i

if.end184.i.if.end217.i_crit_edge:                ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end217.i

land.lhs.true187.i:                               ; preds = %if.end184.i.land.lhs.true187.i_crit_edge, %land.lhs.true144.i.land.lhs.true187.i_crit_edge
  %112 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %metacopy, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool189.not.i = icmp eq i8 %113, 0
  br i1 %tobool189.not.i, label %land.lhs.true187.i.if.end217.i_crit_edge, label %if.then190.i

land.lhs.true187.i.if.end217.i_crit_edge:         ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end217.i

if.then190.i:                                     ; preds = %land.lhs.true187.i
  %114 = select i1 %nfs_export_opt.0.off0.lcssa.i, i1 %metacopy_opt.0.off0.lcssa.i, i1 false
  br i1 %114, label %do.end197.i, label %if.end200.i

do.end197.i:                                      ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #16
  %call199.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #17
  br label %out_err

if.end200.i:                                      ; preds = %if.then190.i
  br i1 %metacopy_opt.0.off0.lcssa.i, label %do.end205.i, label %do.end212.i

do.end205.i:                                      ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #16
  %call207.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #17
  %115 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %nfs_export, align 2
  br label %if.end217.i

do.end212.i:                                      ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #16
  %call214.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #17
  %116 = ptrtoint ptr %metacopy to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %metacopy, align 4
  br label %if.end217.i

if.end217.i:                                      ; preds = %do.end212.i, %do.end205.i, %land.lhs.true187.i.if.end217.i_crit_edge, %if.end184.i.if.end217.i_crit_edge, %do.end175.i, %do.end156.i, %if.end141.i.if.end217.i_crit_edge
  %userxattr218.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 12
  %117 = ptrtoint ptr %userxattr218.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %userxattr218.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool219.not.i = icmp eq i8 %118, 0
  br i1 %tobool219.not.i, label %if.end217.i.if.end50_crit_edge, label %if.then220.i

if.end217.i.if.end50_crit_edge:                   ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then220.i:                                     ; preds = %if.end217.i
  %redirect_follow221.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 5
  %119 = ptrtoint ptr %redirect_follow221.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %redirect_follow221.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool222.not.i = icmp eq i8 %120, 0
  %redirect_opt.0.off0.not434.i = xor i1 %redirect_opt.0.off0.lcssa.i, true
  %brmerge435.i = select i1 %tobool222.not.i, i1 true, i1 %redirect_opt.0.off0.not434.i
  br i1 %brmerge435.i, label %if.end232.i, label %do.end228.i

do.end228.i:                                      ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #16
  %121 = ptrtoint ptr %redirect_mode.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %redirect_mode.i, align 8
  %call231.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %122) #17
  br label %out_err

if.end232.i:                                      ; preds = %if.then220.i
  %123 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %metacopy, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool234.not.i = icmp eq i8 %124, 0
  %metacopy_opt.0.off0.not436.i = xor i1 %metacopy_opt.0.off0.lcssa.i, true
  %brmerge437.i = select i1 %tobool234.not.i, i1 true, i1 %metacopy_opt.0.off0.not436.i
  br i1 %brmerge437.i, label %if.end243.i, label %do.end240.i

do.end240.i:                                      ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #16
  %call242.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #17
  br label %out_err

if.end243.i:                                      ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %redirect_follow221.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %redirect_follow221.i, align 2
  %redirect_dir245.i = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 4
  %126 = ptrtoint ptr %redirect_dir245.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %redirect_dir245.i, align 1
  %127 = ptrtoint ptr %metacopy to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %metacopy, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end243.i, %if.end217.i.if.end50_crit_edge
  %128 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %config, align 8
  %tobool52.not = icmp eq ptr %129, null
  br i1 %tobool52.not, label %if.then53, label %if.end62

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool54.not = icmp eq i32 %silent, 0
  br i1 %tobool54.not, label %do.end58, label %if.then53.out_err_crit_edge

if.then53.out_err_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

do.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #17
  br label %out_err

if.end62:                                         ; preds = %if.end50
  %call65 = call noalias ptr @kstrdup(ptr noundef nonnull %129, i32 noundef 3264) #14
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end62.out_err_crit_edge, label %if.end62.for.cond.i_crit_edge

if.end62.for.cond.i_crit_edge:                    ; preds = %if.end62
  br label %for.cond.i

if.end62.out_err_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

for.cond.i:                                       ; preds = %for.inc.i, %if.end62.for.cond.i_crit_edge
  %ctr.0.i = phi i32 [ %ctr.1.i, %for.inc.i ], [ 1, %if.end62.for.cond.i_crit_edge ]
  %s.0.i = phi ptr [ %incdec.ptr9.i, %for.inc.i ], [ %call65, %if.end62.for.cond.i_crit_edge ]
  %d.0.i = phi ptr [ %incdec.ptr10.i, %for.inc.i ], [ %call65, %if.end62.for.cond.i_crit_edge ]
  %130 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %s.0.i, align 1
  %132 = zext i8 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.241)
  switch i8 %131, label %for.cond.i.if.end6.i345_crit_edge [
    i8 92, label %if.then.i
    i8 58, label %if.then5.i
  ]

for.cond.i.if.end6.i345_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i345

if.then.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i = getelementptr i8, ptr %s.0.i, i32 1
  br label %if.end6.i345

if.then5.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %133 = ptrtoint ptr %d.0.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %d.0.i, align 1
  %inc.i = add i32 %ctr.0.i, 1
  br label %for.inc.i

if.end6.i345:                                     ; preds = %if.then.i, %for.cond.i.if.end6.i345_crit_edge
  %s.1.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %s.0.i, %for.cond.i.if.end6.i345_crit_edge ]
  %134 = ptrtoint ptr %s.1.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %s.1.i, align 1
  %136 = ptrtoint ptr %d.0.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %d.0.i, align 1
  %137 = load i8, ptr %s.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i344 = icmp eq i8 %137, 0
  br i1 %tobool.not.i344, label %ovl_split_lowerdirs.exit, label %if.end6.i345.for.inc.i_crit_edge

if.end6.i345.for.inc.i_crit_edge:                 ; preds = %if.end6.i345
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i345.for.inc.i_crit_edge, %if.then5.i
  %ctr.1.i = phi i32 [ %ctr.0.i, %if.end6.i345.for.inc.i_crit_edge ], [ %inc.i, %if.then5.i ]
  %s.2.i = phi ptr [ %s.1.i, %if.end6.i345.for.inc.i_crit_edge ], [ %s.0.i, %if.then5.i ]
  %incdec.ptr9.i = getelementptr i8, ptr %s.2.i, i32 1
  %incdec.ptr10.i = getelementptr i8, ptr %d.0.i, i32 1
  br label %for.cond.i

ovl_split_lowerdirs.exit:                         ; preds = %if.end6.i345
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %ctr.0.i)
  %cmp70 = icmp ugt i32 %ctr.0.i, 500
  br i1 %cmp70, label %do.end74, label %if.end7.i.i

do.end74:                                         ; preds = %ovl_split_lowerdirs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 500) #17
  br label %out_err

if.end7.i.i:                                      ; preds = %ovl_split_lowerdirs.exit
  %138 = mul i32 %ctr.0.i, 20
  %139 = add i32 %138, 20
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %139, i32 noundef 3520) #20
  %tobool79.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool79.not, label %if.end7.i.i.out_err_crit_edge, label %if.end81

if.end7.i.i.out_err_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end81:                                         ; preds = %if.end7.i.i
  %layers82 = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 2
  %140 = ptrtoint ptr %layers82 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call8.i.i, ptr %layers82, align 8
  %141 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %call7.i.i, align 8
  %s_stack_depth = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 59
  %142 = ptrtoint ptr %s_stack_depth to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %s_stack_depth, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %143 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %last_ino = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 19
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %last_ino, i32 noundef 4) #14
  %144 = ptrtoint ptr %last_ino to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 1, ptr %last_ino, align 4
  %145 = ptrtoint ptr %xino to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %xino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp85.not = icmp eq i32 %146, 0
  br i1 %cmp85.not, label %if.end81.if.end98_crit_edge, label %if.then86

if.end81.if.end98_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %xino_mode = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 18
  %147 = ptrtoint ptr %xino_mode to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %xino_mode, align 8
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #17
  %148 = ptrtoint ptr %xino to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %xino, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then86, %if.end81.if.end98_crit_edge
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %149 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @ovl_super_operations, ptr %s_op, align 4
  %150 = ptrtoint ptr %upperdir61.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %upperdir61.i, align 4
  %tobool100.not = icmp eq ptr %151, null
  br i1 %tobool100.not, label %if.end98.if.end142_crit_edge, label %if.then101

if.end98.if.end142_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

if.then101:                                       ; preds = %if.end98
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 2
  %152 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %workdir, align 8
  %tobool103.not = icmp eq ptr %153, null
  br i1 %tobool103.not, label %do.end107, label %if.end110

do.end107:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  br label %out_err

if.end110:                                        ; preds = %if.then101
  %call111 = call fastcc i32 @ovl_get_upper(ptr noundef %sb, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call8.i.i, ptr noundef nonnull %upperpath)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.out_err_crit_edge

if.end110.out_err_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end114:                                        ; preds = %if.end110
  %154 = ptrtoint ptr %layers82 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %layers82, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mnt_sb, align 4
  %ovl_volatile.i346 = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 8, i32 13
  %160 = ptrtoint ptr %ovl_volatile.i346 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %ovl_volatile.i346, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i347 = icmp eq i8 %161, 0
  br i1 %tobool.not.i347, label %if.end114.if.end130_crit_edge, label %if.then117

if.end114.if.end130_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130

if.then117:                                       ; preds = %if.end114
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 50
  %call118 = call i32 @errseq_sample(ptr noundef %s_wb_err) #14
  %errseq = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 21
  %162 = ptrtoint ptr %errseq to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %call118, ptr %errseq, align 4
  %call121 = call i32 @errseq_check(ptr noundef %s_wb_err, i32 noundef %call118) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then117.if.end130_crit_edge, label %if.then123

if.then117.if.end130_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130

if.then123:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #16
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #17
  br label %out_err

if.end130:                                        ; preds = %if.then117.if.end130_crit_edge, %if.end114.if.end130_crit_edge
  %call131 = call fastcc i32 @ovl_get_workdir(ptr noundef %sb, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %upperpath)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end130.out_err_crit_edge

if.end130.out_err_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end134:                                        ; preds = %if.end130
  %workdir135 = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 5
  %163 = ptrtoint ptr %workdir135 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %workdir135, align 4
  %tobool136.not = icmp eq ptr %164, null
  br i1 %tobool136.not, label %if.then137, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %165 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %s_flags, align 4
  %or = or i32 %166, 1
  store i32 %or, ptr %s_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %if.end134.cleanup_crit_edge
  %s_stack_depth139 = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 59
  %167 = ptrtoint ptr %s_stack_depth139 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %s_stack_depth139, align 4
  %169 = ptrtoint ptr %s_stack_depth to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %s_stack_depth, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 34
  %170 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %s_time_gran, align 4
  %s_time_gran141 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %172 = ptrtoint ptr %s_time_gran141 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %s_time_gran141, align 4
  br label %if.end142

if.end142:                                        ; preds = %cleanup, %if.end98.if.end142_crit_edge
  %call143 = call fastcc ptr @ovl_get_lowerstack(ptr noundef %sb, ptr noundef nonnull %call65, i32 noundef %ctr.0.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call8.i.i)
  %173 = ptrtoint ptr %call143 to i32
  %cmp.i = icmp ugt ptr %call143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end142.out_err_crit_edge, label %if.end147

if.end142.out_err_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end147:                                        ; preds = %if.end142
  %174 = ptrtoint ptr %layers82 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %layers82, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %tobool149.not = icmp eq ptr %177, null
  br i1 %tobool149.not, label %if.then150, label %if.end147.if.end153_crit_edge

if.end147.if.end153_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  %s_flags151 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %178 = ptrtoint ptr %s_flags151 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %s_flags151, align 4
  %or152 = or i32 %179, 1
  store i32 %or152, ptr %s_flags151, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end147.if.end153_crit_edge
  %180 = ptrtoint ptr %uuid to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %uuid, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool156.not = icmp eq i8 %181, 0
  br i1 %tobool156.not, label %land.lhs.true, label %if.end153.if.end166_crit_edge

if.end153.if.end166_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

land.lhs.true:                                    ; preds = %if.end153
  %numfs = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %numfs to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %numfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %183)
  %cmp157 = icmp ugt i32 %183, 1
  br i1 %cmp157, label %do.end161, label %land.lhs.true.if.end166_crit_edge

land.lhs.true.if.end166_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

do.end161:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  %184 = ptrtoint ptr %uuid to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %uuid, align 1
  br label %if.end166

if.end166:                                        ; preds = %do.end161, %land.lhs.true.if.end166_crit_edge, %if.end153.if.end166_crit_edge
  %185 = ptrtoint ptr %layers82 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %layers82, align 8
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %tobool.not.i349 = icmp eq ptr %188, null
  br i1 %tobool.not.i349, label %if.end166.if.end182_crit_edge, label %ovl_force_readonly.exit

if.end166.if.end182_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

ovl_force_readonly.exit:                          ; preds = %if.end166
  %workdir.i350 = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 5
  %189 = ptrtoint ptr %workdir.i350 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %workdir.i350, align 4
  %tobool1.not.i = icmp eq ptr %190, null
  br i1 %tobool1.not.i, label %ovl_force_readonly.exit.if.end182_crit_edge, label %land.lhs.true168

ovl_force_readonly.exit.if.end182_crit_edge:      ; preds = %ovl_force_readonly.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

land.lhs.true168:                                 ; preds = %ovl_force_readonly.exit
  %191 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %index, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool171.not = icmp eq i8 %192, 0
  br i1 %tobool171.not, label %land.lhs.true168.if.end182_crit_edge, label %if.then172

land.lhs.true168.if.end182_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.then172:                                       ; preds = %land.lhs.true168
  %call173 = call fastcc i32 @ovl_get_indexdir(ptr noundef %sb, ptr noundef nonnull %call7.i.i, ptr noundef %call143, ptr noundef nonnull %upperpath)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.then172.out_free_oe_crit_edge

if.then172.out_free_oe_crit_edge:                 ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_oe

if.end176:                                        ; preds = %if.then172
  %indexdir = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 6
  %193 = ptrtoint ptr %indexdir to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %indexdir, align 8
  %tobool177.not = icmp eq ptr %194, null
  br i1 %tobool177.not, label %if.then178, label %if.end176.if.end182_crit_edge

if.end176.if.end182_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.then178:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #16
  %s_flags179 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %195 = ptrtoint ptr %s_flags179 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_flags179, align 4
  %or180 = or i32 %196, 1
  store i32 %or180, ptr %s_flags179, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %if.end176.if.end182_crit_edge, %land.lhs.true168.if.end182_crit_edge, %ovl_force_readonly.exit.if.end182_crit_edge, %if.end166.if.end182_crit_edge
  %call183 = call fastcc i32 @ovl_check_overlapping_layers(ptr noundef %sb, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.end182.out_free_oe_crit_edge

if.end182.out_free_oe_crit_edge:                  ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_oe

if.end186:                                        ; preds = %if.end182
  %indexdir187 = getelementptr inbounds %struct.ovl_fs, ptr %call7.i.i, i32 0, i32 6
  %197 = ptrtoint ptr %indexdir187 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %indexdir187, align 8
  %tobool188.not = icmp eq ptr %198, null
  br i1 %tobool188.not, label %if.then189, label %if.end186.if.end207_crit_edge

if.end186.if.end207_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end207

if.then189:                                       ; preds = %if.end186
  %199 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %index, align 4
  %200 = ptrtoint ptr %layers82 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %layers82, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %tobool193.not = icmp eq ptr %203, null
  br i1 %tobool193.not, label %if.then189.if.end207_crit_edge, label %land.lhs.true194

if.then189.if.end207_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end207

land.lhs.true194:                                 ; preds = %if.then189
  %204 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %nfs_export, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool197.not = icmp eq i8 %205, 0
  br i1 %tobool197.not, label %land.lhs.true194.if.end207_crit_edge, label %do.end201

land.lhs.true194.if.end207_crit_edge:             ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end207

do.end201:                                        ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #16
  %call203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  %206 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %nfs_export, align 2
  br label %if.end207

if.end207:                                        ; preds = %do.end201, %land.lhs.true194.if.end207_crit_edge, %if.then189.if.end207_crit_edge, %if.end186.if.end207_crit_edge
  %207 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %metacopy, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool210.not = icmp eq i8 %208, 0
  %209 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %209)
  %.pr = load i8, ptr %nfs_export, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool226.not = icmp eq i8 %.pr, 0
  br i1 %tobool210.not, label %if.end223, label %land.lhs.true211

land.lhs.true211:                                 ; preds = %if.end207
  br i1 %tobool226.not, label %land.lhs.true211.if.end228_crit_edge, label %do.end218

land.lhs.true211.if.end228_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end228

do.end218:                                        ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #16
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #17
  %210 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %nfs_export, align 2
  br label %if.end228

if.end223:                                        ; preds = %if.end207
  br i1 %tobool226.not, label %if.end223.if.end228_crit_edge, label %if.then227

if.end223.if.end228_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end228

if.then227:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #16
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %211 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @ovl_export_operations, ptr %s_export_op, align 16
  br label %if.end228

if.end228:                                        ; preds = %if.then227, %if.end223.if.end228_crit_edge, %do.end218, %land.lhs.true211.if.end228_crit_edge
  %cap_effective = getelementptr inbounds %struct.cred, ptr %call32, i32 0, i32 15
  %212 = ptrtoint ptr %cap_effective to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %cap_effective, align 4
  %and = and i32 %213, -16777217
  store i32 %and, ptr %cap_effective, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %214 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 2035054128, ptr %s_magic, align 4
  %215 = ptrtoint ptr %userxattr218.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %userxattr218.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool231.not = icmp eq i8 %216, 0
  %cond = select i1 %tobool231.not, ptr @ovl_trusted_xattr_handlers, ptr @ovl_user_xattr_handlers
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %217 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %cond, ptr %s_xattr, align 16
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %218 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_flags232 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %219 = ptrtoint ptr %s_flags232 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %s_flags232, align 4
  %or233 = or i32 %220, 65536
  store i32 %or233, ptr %s_flags232, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %221 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %s_iflags, align 8
  %or234 = or i32 %222, 256
  store i32 %or234, ptr %s_iflags, align 8
  %dentry = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %223 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dentry, align 4
  %call235 = call fastcc ptr @ovl_get_root(ptr noundef %sb, ptr noundef %224, ptr noundef %call143)
  %tobool236.not = icmp eq ptr %call235, null
  br i1 %tobool236.not, label %if.end228.out_free_oe_crit_edge, label %if.end238

if.end228.out_free_oe_crit_edge:                  ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_oe

if.end238:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #16
  %225 = ptrtoint ptr %upperpath to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %upperpath, align 8
  call void @mntput(ptr noundef %226) #14
  call void @kfree(ptr noundef nonnull %call65) #14
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %227 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call235, ptr %s_root, align 64
  br label %cleanup239

out_free_oe:                                      ; preds = %if.end228.out_free_oe_crit_edge, %if.end182.out_free_oe_crit_edge, %if.then172.out_free_oe_crit_edge
  %err.1 = phi i32 [ %call183, %if.end182.out_free_oe_crit_edge ], [ -12, %if.end228.out_free_oe_crit_edge ], [ %call173, %if.then172.out_free_oe_crit_edge ]
  call fastcc void @ovl_entry_stack_free(ptr noundef %call143)
  call void @kfree(ptr noundef %call143) #14
  br label %out_err

out_err:                                          ; preds = %out_free_oe, %if.end142.out_err_crit_edge, %if.end130.out_err_crit_edge, %if.then123, %if.end110.out_err_crit_edge, %do.end107, %if.end7.i.i.out_err_crit_edge, %do.end74, %if.end62.out_err_crit_edge, %do.end58, %if.then53.out_err_crit_edge, %do.end240.i, %do.end228.i, %do.end197.i, %do.end167.i, %do.end124.i, %ovl_parse_redirect_mode.exit.i, %cleanup.thread.i, %if.end35.out_err_crit_edge, %if.end31.out_err_crit_edge
  %err.2 = phi i32 [ -22, %do.end74 ], [ %173, %if.end142.out_err_crit_edge ], [ %err.1, %out_free_oe ], [ -12, %if.end7.i.i.out_err_crit_edge ], [ -12, %if.end62.out_err_crit_edge ], [ -22, %if.then53.out_err_crit_edge ], [ -22, %do.end58 ], [ -12, %if.end31.out_err_crit_edge ], [ %retval.1.ph.i, %cleanup.thread.i ], [ -22, %ovl_parse_redirect_mode.exit.i ], [ -12, %if.end35.out_err_crit_edge ], [ -22, %do.end124.i ], [ -22, %do.end167.i ], [ -22, %do.end240.i ], [ -22, %do.end228.i ], [ -22, %do.end197.i ], [ %call131, %if.end130.out_err_crit_edge ], [ %call111, %if.end110.out_err_crit_edge ], [ -22, %do.end107 ], [ -5, %if.then123 ]
  %splitlower.0 = phi ptr [ %call65, %do.end74 ], [ %call65, %if.end142.out_err_crit_edge ], [ %call65, %out_free_oe ], [ %call65, %if.end7.i.i.out_err_crit_edge ], [ null, %if.end62.out_err_crit_edge ], [ null, %if.then53.out_err_crit_edge ], [ null, %do.end58 ], [ null, %if.end31.out_err_crit_edge ], [ null, %cleanup.thread.i ], [ null, %ovl_parse_redirect_mode.exit.i ], [ null, %if.end35.out_err_crit_edge ], [ null, %do.end124.i ], [ null, %do.end167.i ], [ null, %do.end240.i ], [ null, %do.end228.i ], [ null, %do.end197.i ], [ %call65, %if.end130.out_err_crit_edge ], [ %call65, %if.end110.out_err_crit_edge ], [ %call65, %do.end107 ], [ %call65, %if.then123 ]
  call void @kfree(ptr noundef %splitlower.0) #14
  call void @path_put(ptr noundef nonnull %upperpath) #14
  call fastcc void @ovl_free_fs(ptr noundef nonnull %call7.i.i)
  br label %cleanup239

cleanup239:                                       ; preds = %out_err, %if.end238, %if.end27.critedge.cleanup239_crit_edge, %do.end12
  %retval.0 = phi i32 [ 0, %if.end238 ], [ %err.2, %out_err ], [ -12, %if.end27.critedge.cleanup239_crit_edge ], [ -5, %do.end12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_get_upper(ptr noundef %sb, ptr nocapture noundef %ofs, ptr nocapture noundef writeonly %upper_layer, ptr noundef %upperpath) unnamed_addr #2 align 64 {
entry:
  %statfs.i = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %upperdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %upperdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upperdir, align 4
  %call = tail call fastcc i32 @ovl_mount_dir(ptr noundef %1, ptr noundef %upperpath)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %upperpath to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upperpath, align 4
  %call1 = tail call zeroext i1 @__mnt_is_readonly(ptr noundef %3) #14
  br i1 %call1, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #17
  br label %out

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %upperdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upperdir, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %statfs.i) #14
  %6 = call ptr @memset(ptr %statfs.i, i32 255, i32 88)
  %call.i = call i32 @vfs_statfs(ptr noundef %upperpath, ptr noundef nonnull %statfs.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10, label %ovl_check_namelen.exit

ovl_check_namelen.exit:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %5) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %statfs.i) #14
  br label %out

if.end10:                                         ; preds = %if.end4
  %namelen.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 7
  %7 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %namelen.i, align 4
  %f_namelen.i = getelementptr inbounds %struct.kstatfs, ptr %statfs.i, i32 0, i32 8
  %9 = ptrtoint ptr %f_namelen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_namelen.i, align 8
  %11 = call i32 @llvm.smax.i32(i32 %8, i32 %10) #14
  %12 = ptrtoint ptr %namelen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %namelen.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %statfs.i) #14
  %dentry = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry, align 4
  %call.i60 = call ptr @ovl_get_trap_inode(ptr noundef %sb, ptr noundef %14) #14
  %cmp.i.i.i = icmp ugt ptr %call.i60, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call.i60 to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %15, i32 0
  %16 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %spec.select.i.i, label %if.end10.out_crit_edge [
    i32 0, label %ovl_setup_trap.exit.thread
    i32 -40, label %ovl_setup_trap.exit.thread64
  ]

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

ovl_setup_trap.exit.thread64:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.94) #17
  br label %out

ovl_setup_trap.exit.thread:                       ; preds = %if.end10
  %trap = getelementptr inbounds %struct.ovl_layer, ptr %upper_layer, i32 0, i32 1
  %17 = ptrtoint ptr %trap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i60, ptr %trap, align 4
  %call15 = call ptr @clone_private_mount(ptr noundef %upperpath) #14
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end24

do.end21:                                         ; preds = %ovl_setup_trap.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %call15 to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #17
  br label %out

if.end24:                                         ; preds = %ovl_setup_trap.exit.thread
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %call15, i32 0, i32 2
  %19 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %20, -57
  store i32 %and, ptr %mnt_flags, align 4
  %21 = ptrtoint ptr %upper_layer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call15, ptr %upper_layer, align 4
  %idx = getelementptr inbounds %struct.ovl_layer, ptr %upper_layer, i32 0, i32 3
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %idx, align 4
  %fsid = getelementptr inbounds %struct.ovl_layer, ptr %upper_layer, i32 0, i32 4
  %23 = ptrtoint ptr %fsid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %fsid, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %call15, i32 0, i32 1
  %24 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mnt_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_flags, align 4
  %and26 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end30_crit_edge, label %if.then28

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %s_flags29 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %28 = ptrtoint ptr %s_flags29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags29, align 4
  %or = or i32 %29, 268435456
  store i32 %or, ptr %s_flags29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24.if.end30_crit_edge
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %30 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %layers.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call32 = call zeroext i1 @ovl_inuse_trylock(ptr noundef %35) #14
  br i1 %call32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %upperdir_locked = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 12
  %36 = ptrtoint ptr %upperdir_locked to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %upperdir_locked, align 2
  br label %if.end38

if.else:                                          ; preds = %if.end30
  %index.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 7
  %37 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i62 = icmp eq i8 %38, 0
  %.str.136..str.133.i = select i1 %tobool.not.i62, ptr @.str.136, ptr @.str.133
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.136..str.133.i, ptr noundef nonnull @.str.94) #17
  br i1 %tobool.not.i62, label %if.else.if.end38_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end38:                                         ; preds = %if.else.if.end38_crit_edge, %if.then33
  br label %out

out:                                              ; preds = %if.end38, %if.else.out_crit_edge, %do.end21, %ovl_setup_trap.exit.thread64, %if.end10.out_crit_edge, %ovl_check_namelen.exit, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -22, %do.end ], [ %call.i, %ovl_check_namelen.exit ], [ %18, %do.end21 ], [ 0, %if.end38 ], [ -16, %if.else.out_crit_edge ], [ -40, %ovl_setup_trap.exit.thread64 ], [ %spec.select.i.i, %if.end10.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_get_workdir(ptr noundef %sb, ptr nocapture noundef %ofs, ptr nocapture noundef readonly %upperpath) unnamed_addr #2 align 64 {
entry:
  %workpath = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %workpath) #14
  %0 = ptrtoint ptr %workpath to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %workpath, align 8
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %workdir, align 4
  %call = call fastcc i32 @ovl_mount_dir(ptr noundef %2, ptr noundef nonnull %workpath)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %upperpath to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %upperpath, align 4
  %5 = ptrtoint ptr %workpath to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workpath, align 8
  %cmp.not = icmp eq ptr %4, %6
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #17
  br label %out

if.end4:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, ptr %workpath, i32 0, i32 1
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry, align 4
  %dentry5 = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %9 = ptrtoint ptr %dentry5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry5, align 4
  %cmp.not.i = icmp eq ptr %8, %10
  br i1 %cmp.not.i, label %if.end4.do.end10_crit_edge, label %ovl_workdir_ok.exit

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

ovl_workdir_ok.exit:                              ; preds = %if.end4
  %call.i = call ptr @lock_rename(ptr noundef %8, ptr noundef %10) #14
  %cmp1.i = icmp eq ptr %call.i, null
  call void @unlock_rename(ptr noundef %8, ptr noundef %10) #14
  br i1 %cmp1.i, label %if.end13, label %ovl_workdir_ok.exit.do.end10_crit_edge

ovl_workdir_ok.exit.do.end10_crit_edge:           ; preds = %ovl_workdir_ok.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

do.end10:                                         ; preds = %ovl_workdir_ok.exit.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #17
  br label %out

if.end13:                                         ; preds = %ovl_workdir_ok.exit
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end13.dget.exit_crit_edge, label %if.then.i42

if.end13.dget.exit_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i42:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i42, %if.end13.dget.exit_crit_edge
  %workbasedir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 4
  %13 = ptrtoint ptr %workbasedir to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %workbasedir, align 4
  %call17 = call zeroext i1 @ovl_inuse_trylock(ptr noundef %12) #14
  br i1 %call17, label %if.then18, label %if.else

if.then18:                                        ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %workdir_locked = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 13
  %14 = ptrtoint ptr %workdir_locked to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %workdir_locked, align 1
  br label %if.end23

if.else:                                          ; preds = %dget.exit
  %index.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i43 = icmp eq i8 %16, 0
  %.str.136..str.133.i = select i1 %tobool.not.i43, ptr @.str.136, ptr @.str.133
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.136..str.133.i, ptr noundef nonnull @.str.95) #17
  br i1 %tobool.not.i43, label %if.else.if.end23_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.then18
  %17 = ptrtoint ptr %workbasedir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %workbasedir, align 4
  %call.i44 = call ptr @ovl_get_trap_inode(ptr noundef %sb, ptr noundef %18) #14
  %cmp.i.i.i = icmp ugt ptr %call.i44, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call.i44 to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %19, i32 0
  %20 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %spec.select.i.i, label %if.end23.out_crit_edge [
    i32 0, label %ovl_setup_trap.exit.thread
    i32 -40, label %ovl_setup_trap.exit.thread47
  ]

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

ovl_setup_trap.exit.thread47:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.95) #17
  br label %out

ovl_setup_trap.exit.thread:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %workbasedir_trap = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 15
  %21 = ptrtoint ptr %workbasedir_trap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i44, ptr %workbasedir_trap, align 4
  %call29 = call fastcc i32 @ovl_make_workdir(ptr noundef %sb, ptr noundef %ofs, ptr noundef nonnull %workpath)
  br label %out

out:                                              ; preds = %ovl_setup_trap.exit.thread, %ovl_setup_trap.exit.thread47, %if.end23.out_crit_edge, %if.else.out_crit_edge, %do.end10, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -22, %do.end ], [ %call29, %ovl_setup_trap.exit.thread ], [ -16, %if.else.out_crit_edge ], [ -22, %do.end10 ], [ -40, %ovl_setup_trap.exit.thread47 ], [ %spec.select.i.i, %if.end23.out_crit_edge ]
  call void @path_put(ptr noundef nonnull %workpath) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %workpath) #14
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_get_lowerstack(ptr noundef %sb, ptr noundef %lower, i32 noundef %numlower, ptr noundef %ofs, ptr nocapture noundef writeonly %layers) unnamed_addr #2 align 64 {
entry:
  %dev.i.i = alloca i32, align 4
  %statfs.i.i = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %upperdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %upperdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upperdir, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %numlower)
  %cmp = icmp eq i32 %numlower, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %numlower, i32 8) #14
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !506

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #20
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numlower)
  %cmp7140.not = icmp eq i32 %numlower, 0
  br i1 %cmp7140.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %s_stack_depth = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 59
  %namelen.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 7
  %f_namelen.i.i = getelementptr inbounds %struct.kstatfs, ptr %statfs.i.i, i32 0, i32 8
  %nfs_export.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 9
  %index.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 7
  %xino.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 10
  %xino_mode.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %lower.addr.0142 = phi ptr [ %lower, %for.body.lr.ph ], [ %add.ptr, %if.end11.for.body_crit_edge ]
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.path, ptr %call8.i.i, i32 %i.0141
  %call.i = call fastcc i32 @ovl_mount_dir_noesc(ptr noundef %lower.addr.0142, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.out_err_crit_edge

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end.i:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %statfs.i.i) #14
  %5 = call ptr @memset(ptr %statfs.i.i, i32 255, i32 88)
  %call.i.i = call i32 @vfs_statfs(ptr noundef %arrayidx, ptr noundef nonnull %statfs.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i, label %ovl_check_namelen.exit.i

ovl_check_namelen.exit.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %lower.addr.0142) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %statfs.i.i) #14
  br label %out_err

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %namelen.i.i, align 4
  %8 = ptrtoint ptr %f_namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_namelen.i.i, align 8
  %10 = call i32 @llvm.smax.i32(i32 %7, i32 %9) #14
  %11 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %namelen.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %statfs.i.i) #14
  %12 = ptrtoint ptr %s_stack_depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_stack_depth, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 8
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mnt_sb.i, align 4
  %s_stack_depth.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 59
  %18 = ptrtoint ptr %s_stack_depth.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_stack_depth.i, align 4
  %20 = call i32 @llvm.smax.i32(i32 %13, i32 %19) #14
  %21 = ptrtoint ptr %s_stack_depth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %s_stack_depth, align 4
  %dentry.i = getelementptr %struct.path, ptr %call8.i.i, i32 %i.0141, i32 1
  %22 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_sb.i, align 4
  %call5.i = call i32 @ovl_can_decode_fh(ptr noundef %25) #14
  %26 = ptrtoint ptr %nfs_export.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nfs_export.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool6.not.i = icmp eq i8 %27, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.lhs.true11.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not.i = icmp eq i8 %29, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.if.end20.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end20.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %30 = ptrtoint ptr %upperdir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %upperdir, align 4
  %tobool10.not.i = icmp ne ptr %31, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool12.not.i = icmp eq i32 %call5.i, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.if.then13.i_crit_edge, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

land.lhs.true.i.if.then13.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13.i

land.lhs.true11.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool12.not.old.i = icmp eq i32 %call5.i, 0
  br i1 %tobool12.not.old.i, label %land.lhs.true11.i.if.then13.i_crit_edge, label %land.lhs.true11.i.if.end20.i_crit_edge

land.lhs.true11.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

land.lhs.true11.i.if.then13.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13.i

if.then13.i:                                      ; preds = %land.lhs.true11.i.if.then13.i_crit_edge, %land.lhs.true.i.if.then13.i_crit_edge
  %32 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %index.i, align 4
  %33 = ptrtoint ptr %nfs_export.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %nfs_export.i, align 2
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %lower.addr.0142) #17
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then13.i, %land.lhs.true11.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %lor.lhs.false.i.if.end20.i_crit_edge
  %34 = ptrtoint ptr %xino.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xino.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp22.i = icmp eq i32 %35, 1
  br i1 %cmp22.i, label %land.lhs.true23.i, label %if.end20.i.if.end37.i_crit_edge

if.end20.i.if.end37.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

land.lhs.true23.i:                                ; preds = %if.end20.i
  %36 = ptrtoint ptr %upperdir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %upperdir, align 4
  %tobool26.not.i = icmp ne ptr %37, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool28.not.i = icmp eq i32 %call5.i, 0
  %or.cond66.i = select i1 %tobool26.not.i, i1 %tobool28.not.i, i1 false
  br i1 %or.cond66.i, label %if.end37.thread.i, label %land.lhs.true23.i.if.end37.i_crit_edge

land.lhs.true23.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.end37.thread.i:                                ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %xino.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %xino.i, align 4
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef %lower.addr.0142) #17
  br label %if.then39.i

if.end37.i:                                       ; preds = %land.lhs.true23.i.if.end37.i_crit_edge, %if.end20.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp38.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp38.not.i, label %if.end37.i.if.end11_crit_edge, label %if.end37.i.if.then39.i_crit_edge

if.end37.i.if.then39.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39.i

if.end37.i.if.end11_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then39.i:                                      ; preds = %if.end37.i.if.then39.i_crit_edge, %if.end37.thread.i
  %39 = ptrtoint ptr %xino_mode.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %xino_mode.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then39.i, %if.end37.i.if.end11_crit_edge
  %strlen = call i32 @strlen(ptr %lower.addr.0142) #21
  %strchr = getelementptr i8, ptr %lower.addr.0142, i32 1
  %add.ptr = getelementptr i8, ptr %strchr, i32 %strlen
  %inc = add nuw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %numlower
  br i1 %exitcond.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %s_stack_depth13 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 59
  %40 = ptrtoint ptr %s_stack_depth13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_stack_depth13, align 4
  %inc14 = add i32 %41, 1
  store i32 %inc14, ptr %s_stack_depth13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc14)
  %cmp16 = icmp sgt i32 %inc14, 2
  br i1 %cmp16, label %do.end20, label %if.end23

do.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195) #17
  br label %out_err

if.end23:                                         ; preds = %for.end
  %add.i = add i32 %numlower, 1
  %42 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 12) #14
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !506

kcalloc.exit.thread.i:                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %fs198.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 3
  %44 = ptrtoint ptr %fs198.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %fs198.i, align 4
  br label %out_err

if.end7.i.i.i:                                    ; preds = %if.end23
  %45 = extractvalue { i32, i1 } %42, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #20
  %fs.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 3
  %46 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i.i, ptr %fs.i, align 4
  %cmp.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i, label %if.end7.i.i.i.out_err_crit_edge, label %if.end.i95

if.end7.i.i.i.out_err_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end.i95:                                       ; preds = %if.end7.i.i.i
  %numfs.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 1
  %47 = ptrtoint ptr %numfs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %numfs.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %numfs.i, align 4
  %pseudo_dev.i = getelementptr inbounds %struct.ovl_sb, ptr %call8.i.i.i, i32 0, i32 1
  %call3.i = call i32 @get_anon_bdev(ptr noundef %pseudo_dev.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i94 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i94, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202) #17
  br label %out_err

if.end6.i:                                        ; preds = %if.end.i95
  %layers.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %49 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %layers.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool8.not.i97 = icmp eq ptr %52, null
  br i1 %tobool8.not.i97, label %if.end6.i.if.end16.i_crit_edge, label %if.then9.i

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %mnt_sb.i98 = getelementptr inbounds %struct.vfsmount, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %mnt_sb.i98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mnt_sb.i98, align 4
  %55 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fs.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %56, align 4
  %58 = load ptr, ptr %fs.i, align 4
  %is_lower.i = getelementptr inbounds %struct.ovl_sb, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %is_lower.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %is_lower.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end16.i_crit_edge
  br i1 %cmp7140.not, label %if.end16.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %nfs_export.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 9
  %index.i.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 7
  %metacopy.i.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 11
  %redirect_dir.i.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 4
  %xino.i.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0221.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc71.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.path, ptr %call8.i.i, i32 %i.0221.i
  %60 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx18.i, align 8
  %mnt_sb.i.i = getelementptr inbounds %struct.vfsmount, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %mnt_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mnt_sb.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev.i.i) #14
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %dev.i.i, align 4, !annotation !507
  %65 = ptrtoint ptr %numfs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %numfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp87.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp87.not.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %67 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fs.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.088.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ovl_sb, ptr %68, i32 %i.088.i.i
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp2.i.i = icmp eq ptr %70, %63
  br i1 %cmp2.i.i, label %for.body.i.i.ovl_get_fsid.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.ovl_get_fsid.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_get_fsid.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.088.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %66
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %s_uuid.i.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 40
  %71 = ptrtoint ptr %nfs_export.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %nfs_export.i.i.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i186.i, label %for.end.i.i.if.end.i.i187.i_crit_edge

for.end.i.i.if.end.i.i187.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i187.i

land.lhs.true.i.i186.i:                           ; preds = %for.end.i.i
  %73 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %layers.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %tobool1.not.i.i.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i186.i.if.end27.i.i_crit_edge, label %land.lhs.true.i.i186.i.if.end.i.i187.i_crit_edge

land.lhs.true.i.i186.i.if.end.i.i187.i_crit_edge: ; preds = %land.lhs.true.i.i186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i187.i

land.lhs.true.i.i186.i.if.end27.i.i_crit_edge:    ; preds = %land.lhs.true.i.i186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.end.i.i187.i:                                  ; preds = %land.lhs.true.i.i186.i.if.end.i.i187.i_crit_edge, %for.end.i.i.if.end.i.i187.i_crit_edge
  %77 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %index.i.i.i.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i.i.i99 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i.i.i99, label %land.lhs.true.i.i.i.i, label %if.end.i.i187.i.if.end6.i.i.i_crit_edge

if.end.i.i187.i.if.end6.i.i.i_crit_edge:          ; preds = %if.end.i.i187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i187.i
  %79 = ptrtoint ptr %metacopy.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %metacopy.i.i.i.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool2.not.i.i.i.i = icmp eq i8 %80, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true3.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end6.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end6.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %81 = ptrtoint ptr %redirect_dir.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %redirect_dir.i.i.i.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool5.not.i.i.i.i = icmp eq i8 %82, 0
  br i1 %tobool5.not.i.i.i.i, label %ovl_allow_offline_changes.exit.i.i.i, label %land.lhs.true3.i.i.i.i.if.end6.i.i.i_crit_edge

land.lhs.true3.i.i.i.i.if.end6.i.i.i_crit_edge:   ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i.i

ovl_allow_offline_changes.exit.i.i.i:             ; preds = %land.lhs.true3.i.i.i.i
  %83 = ptrtoint ptr %xino.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xino.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i.not.i.i.i = icmp eq i32 %84, 2
  br i1 %cmp.i.not.i.i.i, label %ovl_allow_offline_changes.exit.i.i.i.if.end6.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

ovl_allow_offline_changes.exit.i.i.i.if.end6.i.i.i_crit_edge: ; preds = %ovl_allow_offline_changes.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %ovl_allow_offline_changes.exit.i.i.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %s_uuid.i.i, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i.i)
  %cmp.i.i.i.i188.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i188.i, label %land.lhs.true3.i.i.i.if.then3.i.i_crit_edge, label %land.lhs.true3.i.i.i.if.end6.i.i.i_crit_edge

land.lhs.true3.i.i.i.if.end6.i.i.i_crit_edge:     ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i.i

land.lhs.true3.i.i.i.if.then3.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i.i

if.end6.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i.if.end6.i.i.i_crit_edge, %ovl_allow_offline_changes.exit.i.i.i.if.end6.i.i.i_crit_edge, %land.lhs.true3.i.i.i.i.if.end6.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.end6.i.i.i_crit_edge, %if.end.i.i187.i.if.end6.i.i.i_crit_edge
  br i1 %cmp87.not.i.i, label %if.end6.i.i.i.if.end27.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end6.i.i.i.if.end27.i.i_crit_edge:             ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end6.i.i.i
  %85 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fs.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.030.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %is_lower.i.i.i = getelementptr %struct.ovl_sb, ptr %86, i32 %i.030.i.i.i, i32 3
  %87 = ptrtoint ptr %is_lower.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %is_lower.i.i.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool7.not.i.i.i = icmp eq i8 %88, 0
  br i1 %tobool7.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true8.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.ovl_sb, ptr %86, i32 %i.030.i.i.i
  %89 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i.i, align 4
  %s_uuid.i.i.i = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 40
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %s_uuid.i.i.i, ptr noundef dereferenceable(16) %s_uuid.i.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %cmp.i27.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %cmp.i27.i.i.i, label %if.then12.i.i.i, label %land.lhs.true8.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true8.i.i.i.for.inc.i.i.i_crit_edge:     ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.then12.i.i.i:                                  ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bad_uuid.i.i.i = getelementptr %struct.ovl_sb, ptr %86, i32 %i.030.i.i.i, i32 2
  %91 = ptrtoint ptr %bad_uuid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %bad_uuid.i.i.i, align 4
  %92 = ptrtoint ptr %xino.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr.i = load i32, ptr %xino.i.i.i.i, align 4
  br label %if.then3.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true8.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.030.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %66
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end27.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.if.end27.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.then3.i.i:                                     ; preds = %if.then12.i.i.i, %land.lhs.true3.i.i.i.if.then3.i.i_crit_edge
  %93 = phi i32 [ %.pr.i, %if.then12.i.i.i ], [ %84, %land.lhs.true3.i.i.i.if.then3.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp4.i.i = icmp eq i32 %93, 1
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.then3.i.i.if.end8.i.i_crit_edge

if.then3.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %xino.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %xino.i.i.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.then3.i.i.if.end8.i.i_crit_edge
  %95 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %index.i.i.i.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i.i100 = icmp eq i8 %96, 0
  br i1 %tobool.not.i.i100, label %lor.lhs.false.i.i, label %if.end8.i.i.if.then12.i.i_crit_edge

if.end8.i.i.if.then12.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i.i

lor.lhs.false.i.i:                                ; preds = %if.end8.i.i
  %97 = ptrtoint ptr %nfs_export.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %nfs_export.i.i.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool11.not.i.i = icmp eq i8 %98, 0
  br i1 %tobool11.not.i.i, label %if.end17.i.i, label %lor.lhs.false.i.i.if.then12.i.i_crit_edge

lor.lhs.false.i.i.if.then12.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then12.i.i_crit_edge, %if.end8.i.i.if.then12.i.i_crit_edge
  %99 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %index.i.i.i.i, align 4
  %100 = ptrtoint ptr %nfs_export.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %nfs_export.i.i.i, align 2
  br label %do.end.i.i

if.end17.i.i:                                     ; preds = %lor.lhs.false.i.i
  br i1 %cmp4.i.i, label %if.end17.i.i.do.end.i.i_crit_edge, label %if.end17.i.i.if.end27.i.i_crit_edge

if.end17.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.end17.i.i.do.end.i.i_crit_edge:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end17.i.i.do.end.i.i_crit_edge, %if.then12.i.i
  %bcmp.i.i80.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %s_uuid.i.i, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i80.i.i)
  %cmp.i.i.i189.i = icmp eq i32 %bcmp.i.i80.i.i, 0
  %cond.i.i = select i1 %cmp.i.i.i189.i, ptr @.str.215, ptr @.str.216
  %dentry.i.i = getelementptr %struct.path, ptr %call8.i.i, i32 %i.0221.i, i32 1
  %101 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dentry.i.i, align 4
  %103 = ptrtoint ptr %xino.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %xino.i.i.i.i, align 4
  %arrayidx24.i.i = getelementptr [3 x ptr], ptr @ovl_xino_str, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx24.i.i, align 4
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull %cond.i.i, ptr noundef %102, ptr noundef %106) #17
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %do.end.i.i, %if.end17.i.i.if.end27.i.i_crit_edge, %for.inc.i.i.i.if.end27.i.i_crit_edge, %if.end6.i.i.i.if.end27.i.i_crit_edge, %land.lhs.true.i.i186.i.if.end27.i.i_crit_edge
  %retval.0.i82.i.i = phi i1 [ true, %if.end17.i.i.if.end27.i.i_crit_edge ], [ true, %do.end.i.i ], [ false, %land.lhs.true.i.i186.i.if.end27.i.i_crit_edge ], [ false, %if.end6.i.i.i.if.end27.i.i_crit_edge ], [ false, %for.inc.i.i.i.if.end27.i.i_crit_edge ]
  %call28.i.i = call i32 @get_anon_bdev(ptr noundef nonnull %dev.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end36.i.i, label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #17
  br label %ovl_get_fsid.exit.i

if.end36.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fs.i, align 4
  %109 = ptrtoint ptr %numfs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %numfs.i, align 4
  %arrayidx39.i.i = getelementptr %struct.ovl_sb, ptr %108, i32 %110
  %111 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %63, ptr %arrayidx39.i.i, align 4
  %112 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dev.i.i, align 4
  %114 = load ptr, ptr %fs.i, align 4
  %115 = load i32, ptr %numfs.i, align 4
  %pseudo_dev.i.i = getelementptr %struct.ovl_sb, ptr %114, i32 %115, i32 1
  %116 = ptrtoint ptr %pseudo_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %113, ptr %pseudo_dev.i.i, align 4
  %117 = load ptr, ptr %fs.i, align 4
  %118 = load i32, ptr %numfs.i, align 4
  %bad_uuid48.i.i = getelementptr %struct.ovl_sb, ptr %117, i32 %118, i32 2
  %frombool.i.i = zext i1 %retval.0.i82.i.i to i8
  %119 = ptrtoint ptr %bad_uuid48.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %frombool.i.i, ptr %bad_uuid48.i.i, align 4
  %120 = load i32, ptr %numfs.i, align 4
  %inc50.i.i = add i32 %120, 1
  store i32 %inc50.i.i, ptr %numfs.i, align 4
  br label %ovl_get_fsid.exit.i

ovl_get_fsid.exit.i:                              ; preds = %if.end36.i.i, %do.end33.i.i, %for.body.i.i.ovl_get_fsid.exit.i_crit_edge
  %retval.0.i.i101 = phi i32 [ %call28.i.i, %do.end33.i.i ], [ %120, %if.end36.i.i ], [ %i.088.i.i, %for.body.i.i.ovl_get_fsid.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i101)
  %cmp20.i = icmp slt i32 %retval.0.i.i101, 0
  br i1 %cmp20.i, label %ovl_get_fsid.exit.i.out_err_crit_edge, label %if.end22.i

ovl_get_fsid.exit.i.out_err_crit_edge:            ; preds = %ovl_get_fsid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end22.i:                                       ; preds = %ovl_get_fsid.exit.i
  %dentry.i102 = getelementptr %struct.path, ptr %call8.i.i, i32 %i.0221.i, i32 1
  %121 = ptrtoint ptr %dentry.i102 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dentry.i102, align 4
  %call.i.i103 = call ptr @ovl_get_trap_inode(ptr noundef %sb, ptr noundef %122) #14
  %cmp.i.i.i190.i = icmp ugt ptr %call.i.i103, inttoptr (i32 -4096 to ptr)
  %123 = ptrtoint ptr %call.i.i103 to i32
  %spec.select.i.i.i = select i1 %cmp.i.i.i190.i, i32 %123, i32 0
  %124 = zext i32 %spec.select.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %spec.select.i.i.i, label %if.end22.i.ovl_get_layers.exit_crit_edge [
    i32 0, label %if.end27.i
    i32 -40, label %ovl_setup_trap.exit.thread210.i
  ]

if.end22.i.ovl_get_layers.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_get_layers.exit

ovl_setup_trap.exit.thread210.i:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.93) #17
  br label %out_err

if.end27.i:                                       ; preds = %if.end22.i
  %125 = ptrtoint ptr %dentry.i102 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dentry.i102, align 4
  %call30.i = call zeroext i1 @ovl_is_inuse(ptr noundef %126) #14
  br i1 %call30.i, label %if.then31.i, label %if.end27.i.if.end36.i_crit_edge

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end27.i
  %127 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %index.i.i.i.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i192.i = icmp eq i8 %128, 0
  %.str.136..str.133.i.i = select i1 %tobool.not.i192.i, ptr @.str.136, ptr @.str.133
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.136..str.133.i.i, ptr noundef nonnull @.str.93) #17
  br i1 %tobool.not.i192.i, label %if.then31.i.if.end36.i_crit_edge, label %if.then34.i

if.then31.i.if.end36.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %call.i.i103) #14
  br label %out_err

if.end36.i:                                       ; preds = %if.then31.i.if.end36.i_crit_edge, %if.end27.i.if.end36.i_crit_edge
  %call38.i = call ptr @clone_private_mount(ptr noundef %arrayidx18.i) #14
  %cmp.i.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end44.i, label %for.inc.i

do.end44.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  %129 = ptrtoint ptr %call38.i to i32
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205) #17
  call void @iput(ptr noundef %call.i.i103) #14
  br label %ovl_get_layers.exit

for.inc.i:                                        ; preds = %if.end36.i
  %mnt_flags.i = getelementptr inbounds %struct.vfsmount, ptr %call38.i, i32 0, i32 2
  %130 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mnt_flags.i, align 4
  %or.i = or i32 %131, 72
  store i32 %or.i, ptr %mnt_flags.i, align 4
  %132 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ofs, align 4
  %trap49.i = getelementptr %struct.ovl_layer, ptr %layers, i32 %133, i32 1
  %134 = ptrtoint ptr %trap49.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i.i103, ptr %trap49.i, align 4
  %135 = load i32, ptr %ofs, align 4
  %arrayidx51.i = getelementptr %struct.ovl_layer, ptr %layers, i32 %135
  %136 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call38.i, ptr %arrayidx51.i, align 4
  %137 = load i32, ptr %ofs, align 4
  %idx.i = getelementptr %struct.ovl_layer, ptr %layers, i32 %137, i32 3
  %138 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %idx.i, align 4
  %139 = load i32, ptr %ofs, align 4
  %fsid58.i = getelementptr %struct.ovl_layer, ptr %layers, i32 %139, i32 4
  %140 = ptrtoint ptr %fsid58.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %retval.0.i.i101, ptr %fsid58.i, align 4
  %141 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fs.i, align 4
  %arrayidx60.i = getelementptr %struct.ovl_sb, ptr %142, i32 %retval.0.i.i101
  %143 = load i32, ptr %ofs, align 4
  %fs63.i = getelementptr %struct.ovl_layer, ptr %layers, i32 %143, i32 2
  %144 = ptrtoint ptr %fs63.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %arrayidx60.i, ptr %fs63.i, align 4
  %145 = load i32, ptr %ofs, align 4
  %inc65.i = add i32 %145, 1
  store i32 %inc65.i, ptr %ofs, align 4
  %146 = load ptr, ptr %fs.i, align 4
  %is_lower68.i = getelementptr %struct.ovl_sb, ptr %146, i32 %retval.0.i.i101, i32 3
  %147 = ptrtoint ptr %is_lower68.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %is_lower68.i, align 1
  %inc71.i = add nuw i32 %i.0221.i, 1
  %exitcond.not.i = icmp eq i32 %inc71.i, %numlower
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  %148 = ptrtoint ptr %numfs.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %numfs.i, align 4
  %150 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %layers.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %tobool74.not.i = icmp eq ptr %153, null
  %lnot.ext.neg.i = sext i1 %tobool74.not.i to i32
  %sub.i = add i32 %149, %lnot.ext.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp75.i = icmp eq i32 %sub.i, 1
  %xino.i104 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 10
  %154 = ptrtoint ptr %xino.i104 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %xino.i104, align 4
  br i1 %cmp75.i, label %if.then76.i, label %if.else.i

if.then76.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %cmp77.i = icmp eq i32 %155, 2
  br i1 %cmp77.i, label %do.end81.i, label %if.then76.i.if.end84.i_crit_edge

if.then76.i.if.end84.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84.i

do.end81.i:                                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #16
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #17
  br label %if.end84.i

if.end84.i:                                       ; preds = %do.end81.i, %if.then76.i.if.end84.i_crit_edge
  %xino_mode.i105 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 18
  %156 = ptrtoint ptr %xino_mode.i105 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %xino_mode.i105, align 4
  br label %if.end116.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp87.i = icmp eq i32 %155, 0
  %xino_mode89.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 18
  br i1 %cmp87.i, label %if.then88.i, label %if.else90.i

if.then88.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %157 = ptrtoint ptr %xino_mode89.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -1, ptr %xino_mode89.i, align 4
  br label %if.end116.i

if.else90.i:                                      ; preds = %if.else.i
  %158 = ptrtoint ptr %xino_mode89.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %xino_mode89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp92.i = icmp slt i32 %159, 0
  br i1 %cmp92.i, label %cond.end110.i, label %if.else90.i.if.end116.i_crit_edge

if.else90.i.if.end116.i_crit_edge:                ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end116.i

cond.end110.i:                                    ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub98.i = add i32 %149, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub98.i)
  %tobool.not.i.i194.i = icmp eq i32 %sub98.i, 0
  %160 = call i32 @llvm.ctlz.i32(i32 %sub98.i, i1 true) #14, !range !508
  %sub.i.op.i.i.op = sub nuw nsw i32 33, %160
  %add112.i = select i1 %tobool.not.i.i194.i, i32 1, i32 %sub.i.op.i.i.op
  %161 = ptrtoint ptr %xino_mode89.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add112.i, ptr %xino_mode89.i, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %cond.end110.i, %if.else90.i.if.end116.i_crit_edge, %if.then88.i, %if.end84.i
  %xino_mode117.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 18
  %162 = ptrtoint ptr %xino_mode117.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %xino_mode117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp118.i = icmp sgt i32 %163, 0
  br i1 %cmp118.i, label %do.end123.i, label %if.end116.i.if.end27_crit_edge

if.end116.i.if.end27_crit_edge:                   ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

do.end123.i:                                      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #16
  %call126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %163) #17
  br label %if.end27

ovl_get_layers.exit:                              ; preds = %do.end44.i, %if.end22.i.ovl_get_layers.exit_crit_edge
  %err.1.i = phi i32 [ %129, %do.end44.i ], [ %spec.select.i.i.i, %if.end22.i.ovl_get_layers.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool25.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool25.not, label %ovl_get_layers.exit.if.end27_crit_edge, label %ovl_get_layers.exit.out_err_crit_edge

ovl_get_layers.exit.out_err_crit_edge:            ; preds = %ovl_get_layers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

ovl_get_layers.exit.if.end27_crit_edge:           ; preds = %ovl_get_layers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %ovl_get_layers.exit.if.end27_crit_edge, %do.end123.i, %if.end116.i.if.end27_crit_edge
  %call28 = call ptr @ovl_alloc_entry(i32 noundef %numlower) #14
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.out_err_crit_edge, label %for.cond32.preheader

if.end27.out_err_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

for.cond32.preheader:                             ; preds = %if.end27
  br i1 %cmp7140.not, label %for.cond32.preheader.for.end52_crit_edge, label %for.cond32.preheader.for.body34_crit_edge

for.cond32.preheader.for.body34_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body34

for.cond32.preheader.for.end52_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end52

for.body34:                                       ; preds = %dget.exit.for.body34_crit_edge, %for.cond32.preheader.for.body34_crit_edge
  %i.1148 = phi i32 [ %add, %dget.exit.for.body34_crit_edge ], [ 0, %for.cond32.preheader.for.body34_crit_edge ]
  %dentry = getelementptr %struct.path, ptr %call8.i.i, i32 %i.1148, i32 1
  %164 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dentry, align 4
  %tobool.not.i106 = icmp eq ptr %165, null
  br i1 %tobool.not.i106, label %for.body34.dget.exit_crit_edge, label %if.then.i

for.body34.dget.exit_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %165, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %for.body34.dget.exit_crit_edge
  %arrayidx37 = getelementptr %struct.ovl_entry, ptr %call28, i32 0, i32 2, i32 %i.1148
  %dentry38 = getelementptr %struct.ovl_entry, ptr %call28, i32 0, i32 2, i32 %i.1148, i32 1
  %166 = ptrtoint ptr %dentry38 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %165, ptr %dentry38, align 4
  %167 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %layers.i.i, align 4
  %add = add nuw i32 %i.1148, 1
  %arrayidx40 = getelementptr %struct.ovl_layer, ptr %168, i32 %add
  %169 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %arrayidx40, ptr %arrayidx37, align 4
  %exitcond173.not = icmp eq i32 %add, %numlower
  br i1 %exitcond173.not, label %dget.exit.out_crit_edge, label %dget.exit.for.body34_crit_edge

dget.exit.for.body34_crit_edge:                   ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34

dget.exit.out_crit_edge:                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %out_err, %dget.exit.out_crit_edge
  %oe.0 = phi ptr [ %170, %out_err ], [ %call28, %dget.exit.out_crit_edge ]
  br i1 %cmp7140.not, label %out.for.end52_crit_edge, label %out.for.body48_crit_edge

out.for.body48_crit_edge:                         ; preds = %out
  br label %for.body48

out.for.end52_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end52

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %out.for.body48_crit_edge
  %i.2150 = phi i32 [ %inc51, %for.body48.for.body48_crit_edge ], [ 0, %out.for.body48_crit_edge ]
  %arrayidx49 = getelementptr %struct.path, ptr %call8.i.i, i32 %i.2150
  call void @path_put(ptr noundef %arrayidx49) #14
  %inc51 = add nuw i32 %i.2150, 1
  %exitcond174.not = icmp eq i32 %inc51, %numlower
  br i1 %exitcond174.not, label %for.body48.for.end52_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body48

for.body48.for.end52_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end52

for.end52:                                        ; preds = %for.body48.for.end52_crit_edge, %out.for.end52_crit_edge, %for.cond32.preheader.for.end52_crit_edge
  %oe.0183 = phi ptr [ %oe.0, %out.for.end52_crit_edge ], [ %call28, %for.cond32.preheader.for.end52_crit_edge ], [ %oe.0, %for.body48.for.end52_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #14
  br label %cleanup

out_err:                                          ; preds = %if.end27.out_err_crit_edge, %ovl_get_layers.exit.out_err_crit_edge, %if.then34.i, %ovl_setup_trap.exit.thread210.i, %ovl_get_fsid.exit.i.out_err_crit_edge, %do.end.i, %if.end7.i.i.i.out_err_crit_edge, %kcalloc.exit.thread.i, %do.end20, %ovl_check_namelen.exit.i, %for.body.out_err_crit_edge
  %err.0 = phi i32 [ -22, %do.end20 ], [ %err.1.i, %ovl_get_layers.exit.out_err_crit_edge ], [ -12, %if.end27.out_err_crit_edge ], [ %call.i.i, %ovl_check_namelen.exit.i ], [ -16, %if.then34.i ], [ -40, %ovl_setup_trap.exit.thread210.i ], [ -12, %kcalloc.exit.thread.i ], [ %call3.i, %do.end.i ], [ -12, %if.end7.i.i.i.out_err_crit_edge ], [ %retval.0.i.i101, %ovl_get_fsid.exit.i.out_err_crit_edge ], [ %call.i, %for.body.out_err_crit_edge ]
  %170 = inttoptr i32 %err.0 to ptr
  br label %out

cleanup:                                          ; preds = %for.end52, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %oe.0183, %for.end52 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_get_indexdir(ptr noundef %sb, ptr noundef %ofs, ptr nocapture noundef readonly %oe, ptr nocapture noundef readonly %upperpath) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %0 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layers.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @mnt_want_write(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %dentry2 = getelementptr inbounds %struct.ovl_entry, ptr %oe, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry2, align 4
  %call.i = tail call i32 @ovl_verify_set_fh(ptr noundef %ofs, ptr noundef %5, i32 noundef 2, ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220) #17
  br label %out

if.end7:                                          ; preds = %if.end
  %workdir_trap = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 16
  %8 = ptrtoint ptr %workdir_trap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workdir_trap, align 4
  tail call void @iput(ptr noundef %9) #14
  %10 = ptrtoint ptr %workdir_trap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %workdir_trap, align 4
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 5
  %11 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workdir, align 4
  tail call void @dput(ptr noundef %12) #14
  %13 = ptrtoint ptr %workdir to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %workdir, align 4
  %call10 = tail call fastcc ptr @ovl_workdir_create(ptr noundef %ofs, ptr noundef nonnull @.str.222, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %call10 to i32
  br label %if.end55

if.else:                                          ; preds = %if.end7
  %tobool14.not = icmp eq ptr %call10, null
  br i1 %tobool14.not, label %if.else.lor.lhs.false_crit_edge, label %dget.exit

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

dget.exit:                                        ; preds = %if.else
  %indexdir16 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 6
  %15 = ptrtoint ptr %indexdir16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %indexdir16, align 4
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call10, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  %16 = ptrtoint ptr %workdir to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call10, ptr %workdir, align 4
  %17 = ptrtoint ptr %indexdir16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %indexdir16, align 4
  %call.i101 = tail call ptr @ovl_get_trap_inode(ptr noundef %sb, ptr noundef %18) #14
  %cmp.i.i.i = icmp ugt ptr %call.i101, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call.i101 to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %19, i32 0
  %20 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %spec.select.i.i, label %dget.exit.out_crit_edge [
    i32 0, label %ovl_setup_trap.exit.thread
    i32 -40, label %ovl_setup_trap.exit.thread104
  ]

dget.exit.out_crit_edge:                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

ovl_setup_trap.exit.thread104:                    ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.223) #17
  br label %out

ovl_setup_trap.exit.thread:                       ; preds = %dget.exit
  %indexdir_trap = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 17
  %21 = ptrtoint ptr %indexdir_trap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i101, ptr %indexdir_trap, align 4
  %22 = ptrtoint ptr %indexdir16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %indexdir16, align 4
  %call25 = tail call zeroext i1 @ovl_check_origin_xattr(ptr noundef %ofs, ptr noundef %23) #14
  br i1 %call25, label %if.then26, label %ovl_setup_trap.exit.thread.if.end38_crit_edge

ovl_setup_trap.exit.thread.if.end38_crit_edge:    ; preds = %ovl_setup_trap.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then26:                                        ; preds = %ovl_setup_trap.exit.thread
  %24 = ptrtoint ptr %indexdir16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %indexdir16, align 4
  %26 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dentry, align 4
  %call29 = tail call i32 @ovl_verify_set_fh(ptr noundef %ofs, ptr noundef %25, i32 noundef 2, ptr noundef %27, i1 noundef zeroext true, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then26.if.end38_crit_edge, label %do.end34

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

do.end34:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #17
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %if.then26.if.end38_crit_edge, %ovl_setup_trap.exit.thread.if.end38_crit_edge
  %28 = ptrtoint ptr %indexdir16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %indexdir16, align 4
  %30 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dentry, align 4
  %call.i102 = tail call i32 @ovl_verify_set_fh(ptr noundef %ofs, ptr noundef %29, i32 noundef 5, ptr noundef %31, i1 noundef zeroext true, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool42.not = icmp eq i32 %call.i102, 0
  br i1 %tobool42.not, label %if.then51.critedge, label %if.end55.thread110

if.end55.thread110:                               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228) #17
  br label %do.end62

if.then51.critedge:                               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call52 = tail call i32 @ovl_indexdir_cleanup(ptr noundef %ofs) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then51.critedge, %if.then12
  %err.0 = phi i32 [ %14, %if.then12 ], [ %call52, %if.then51.critedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool56.not = icmp eq i32 %err.0, 0
  br i1 %tobool56.not, label %if.end55.lor.lhs.false_crit_edge, label %if.end55.do.end62_crit_edge

if.end55.do.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

if.end55.lor.lhs.false_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end55.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  %indexdir57 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 6
  %32 = ptrtoint ptr %indexdir57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %indexdir57, align 4
  %tobool58.not = icmp eq ptr %33, null
  br i1 %tobool58.not, label %lor.lhs.false.do.end62_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.do.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

do.end62:                                         ; preds = %lor.lhs.false.do.end62_crit_edge, %if.end55.do.end62_crit_edge, %if.end55.thread110
  %err.0108 = phi i32 [ %err.0, %if.end55.do.end62_crit_edge ], [ 0, %lor.lhs.false.do.end62_crit_edge ], [ %call.i102, %if.end55.thread110 ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231) #17
  br label %out

out:                                              ; preds = %do.end62, %lor.lhs.false.out_crit_edge, %ovl_setup_trap.exit.thread104, %dget.exit.out_crit_edge, %do.end
  %err.1 = phi i32 [ %call.i, %do.end ], [ %err.0108, %do.end62 ], [ 0, %lor.lhs.false.out_crit_edge ], [ -40, %ovl_setup_trap.exit.thread104 ], [ %spec.select.i.i, %dget.exit.out_crit_edge ]
  tail call void @mnt_drop_write(ptr noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_check_overlapping_layers(ptr noundef %sb, ptr nocapture noundef readonly %ofs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %0 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layers.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call fastcc i32 @ovl_check_layer(ptr noundef %sb, ptr noundef %ofs, ptr noundef %5, ptr noundef nonnull @.str.94, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %workbasedir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 4
  %6 = ptrtoint ptr %workbasedir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workbasedir, align 4
  %call5 = tail call fastcc i32 @ovl_check_layer(ptr noundef %sb, ptr noundef %ofs, ptr noundef %7, ptr noundef nonnull @.str.95, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %8 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp33 = icmp ugt i32 %9, 1
  br i1 %cmp33, label %if.end9.for.body_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.034, 1
  %10 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ofs, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %if.end9.for.body_crit_edge ]
  %12 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layers.i, align 4
  %arrayidx = getelementptr %struct.ovl_layer, ptr %13, i32 %i.034
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call11 = tail call fastcc i32 @ovl_check_layer(ptr noundef %sb, ptr noundef %ofs, ptr noundef %17, ptr noundef nonnull @.str.93, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call11, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_get_root(ptr noundef %sb, ptr noundef %upperdentry, ptr noundef %oe) unnamed_addr #2 align 64 {
entry:
  %oip = alloca %struct.ovl_inode_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerstack = getelementptr inbounds %struct.ovl_entry, ptr %oe, i32 0, i32 2
  %dentry = getelementptr inbounds %struct.ovl_entry, ptr %oe, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %6 = ptrtoint ptr %lowerstack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lowerstack, align 4
  %fsid1 = getelementptr inbounds %struct.ovl_layer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %fsid1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsid1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %oip) #14
  %10 = getelementptr inbounds i8, ptr %oip, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %12 = ptrtoint ptr %oip to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %oip, align 4
  %upperdentry2 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 1
  %13 = ptrtoint ptr %upperdentry2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %upperdentry, ptr %upperdentry2, align 4
  %lowerpath3 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 2
  %14 = ptrtoint ptr %lowerpath3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lowerstack, ptr %lowerpath3, align 4
  %index = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 3
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %index, align 4
  %numlower = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 4
  %16 = ptrtoint ptr %numlower to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %numlower, align 4
  %redirect = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 5
  %17 = ptrtoint ptr %redirect to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %redirect, align 4
  %lowerdata = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 6
  %18 = ptrtoint ptr %lowerdata to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %lowerdata, align 4
  %call4 = tail call ptr @ovl_new_inode(ptr noundef %sb, i16 noundef zeroext 16384, i32 noundef 0) #14
  %call5 = tail call ptr @d_make_root(ptr noundef %call4) #14
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 11
  %19 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %oe, ptr %d_fsdata, align 4
  %tobool6.not = icmp eq ptr %upperdentry, null
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %d_inode.i39 = getelementptr inbounds %struct.dentry, ptr %upperdentry, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i39, align 8
  %i_ino9 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino9, align 8
  tail call void @ovl_dentry_set_upper_alias(ptr noundef nonnull %call5) #14
  %call.i = tail call zeroext i1 @ovl_check_dir_xattr(ptr noundef %sb, ptr noundef nonnull %upperdentry, i32 noundef 3) #14
  br i1 %call.i, label %if.then11, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i40 = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i40, align 8
  %flags.i = getelementptr i8, ptr %25, i32 -8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then7.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %ino.0 = phi i32 [ %23, %if.then11 ], [ %23, %if.then7.if.end14_crit_edge ], [ %5, %if.end.if.end14_crit_edge ]
  %fsid.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.then7.if.end14_crit_edge ], [ %9, %if.end.if.end14_crit_edge ]
  %d_inode.i41 = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i41, align 8
  %flags.i42 = getelementptr i8, ptr %27, i32 -8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i42) #14
  tail call void @ovl_dentry_set_flag(i32 noundef 2, ptr noundef nonnull %call5) #14
  %28 = ptrtoint ptr %d_inode.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i41, align 8
  tail call void @ovl_set_upperdata(ptr noundef %29) #14
  %30 = ptrtoint ptr %d_inode.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i41, align 8
  call void @ovl_inode_init(ptr noundef %31, ptr noundef nonnull %oip, i32 noundef %ino.0, i32 noundef %fsid.0) #14
  call void @ovl_dentry_update_reval(ptr noundef nonnull %call5, ptr noundef %upperdentry, i32 noundef 2048) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oip) #14
  ret ptr %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_entry_stack_free(ptr nocapture noundef readonly %oe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %oe, i32 0, i32 1
  %0 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dentry = getelementptr %struct.ovl_entry, ptr %oe, i32 0, i32 2, i32 %i.05, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  tail call void @dput(ptr noundef %3) #14
  %inc = add nuw i32 %i.05, 1
  %4 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numlower, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_free_fs(ptr noundef %ofs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %workbasedir_trap = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 15
  %0 = ptrtoint ptr %workbasedir_trap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workbasedir_trap, align 4
  tail call void @iput(ptr noundef %1) #14
  %indexdir_trap = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 17
  %2 = ptrtoint ptr %indexdir_trap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indexdir_trap, align 4
  tail call void @iput(ptr noundef %3) #14
  %workdir_trap = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 16
  %4 = ptrtoint ptr %workdir_trap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workdir_trap, align 4
  tail call void @iput(ptr noundef %5) #14
  %whiteout = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 20
  %6 = ptrtoint ptr %whiteout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %whiteout, align 4
  tail call void @dput(ptr noundef %7) #14
  %indexdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 6
  %8 = ptrtoint ptr %indexdir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %indexdir, align 4
  tail call void @dput(ptr noundef %9) #14
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 5
  %10 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workdir, align 4
  tail call void @dput(ptr noundef %11) #14
  %workdir_locked = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 13
  %12 = ptrtoint ptr %workdir_locked to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %workdir_locked, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %workbasedir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 4
  %14 = ptrtoint ptr %workbasedir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %workbasedir, align 4
  tail call void @ovl_inuse_unlock(ptr noundef %15) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %workbasedir1 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 4
  %16 = ptrtoint ptr %workbasedir1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workbasedir1, align 4
  tail call void @dput(ptr noundef %17) #14
  %upperdir_locked = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 12
  %18 = ptrtoint ptr %upperdir_locked to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %upperdir_locked, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not = icmp eq i8 %19, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %20 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %layers.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void @ovl_inuse_unlock(ptr noundef %25) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %layers = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %26 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %layers, align 4
  %28 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp62.not = icmp eq i32 %29, 0
  br i1 %cmp62.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %30 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %layers, align 4
  %trap = getelementptr %struct.ovl_layer, ptr %31, i32 %i.063, i32 1
  %32 = ptrtoint ptr %trap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trap, align 4
  tail call void @iput(ptr noundef %33) #14
  %34 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %layers, align 4
  %arrayidx7 = getelementptr %struct.ovl_layer, ptr %35, i32 %i.063
  %36 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr ptr, ptr %27, i32 %i.063
  %38 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %arrayidx8, align 4
  %inc = add nuw i32 %i.063, 1
  %39 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ofs, align 4
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end4.for.end_crit_edge ], [ %40, %for.body.for.end_crit_edge ]
  tail call void @kern_unmount_array(ptr noundef %27, i32 noundef %.lcssa) #14
  %41 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %layers, align 4
  tail call void @kfree(ptr noundef %42) #14
  %numfs = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 1
  %43 = ptrtoint ptr %numfs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %numfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp1264.not = icmp eq i32 %44, 0
  br i1 %cmp1264.not, label %for.end.for.end17_crit_edge, label %for.body13.lr.ph

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.body13.lr.ph:                                 ; preds = %for.end
  %fs = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 3
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.165 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc16, %for.body13.for.body13_crit_edge ]
  %45 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fs, align 4
  %pseudo_dev = getelementptr %struct.ovl_sb, ptr %46, i32 %i.165, i32 1
  %47 = ptrtoint ptr %pseudo_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pseudo_dev, align 4
  tail call void @free_anon_bdev(i32 noundef %48) #14
  %inc16 = add nuw i32 %i.165, 1
  %49 = ptrtoint ptr %numfs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %numfs, align 4
  %cmp12 = icmp ult i32 %inc16, %50
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.end17_crit_edge

for.body13.for.end17_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body13

for.end17:                                        ; preds = %for.body13.for.end17_crit_edge, %for.end.for.end17_crit_edge
  %fs18 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 3
  %51 = ptrtoint ptr %fs18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fs18, align 4
  tail call void @kfree(ptr noundef %52) #14
  %config = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8
  %53 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config, align 4
  tail call void @kfree(ptr noundef %54) #14
  %upperdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %upperdir to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %upperdir, align 4
  tail call void @kfree(ptr noundef %56) #14
  %workdir21 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 2
  %57 = ptrtoint ptr %workdir21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %workdir21, align 4
  tail call void @kfree(ptr noundef %58) #14
  %redirect_mode = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 6
  %59 = ptrtoint ptr %redirect_mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %redirect_mode, align 4
  tail call void @kfree(ptr noundef %60) #14
  %creator_cred = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 9
  %61 = ptrtoint ptr %creator_cred to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %creator_cred, align 4
  %tobool23.not = icmp eq ptr %62, null
  br i1 %tobool23.not, label %for.end17.if.end26_crit_edge, label %do.body.i

for.end17.if.end26_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.body.i:                                        ; preds = %for.end17
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %62) #14
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !506

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__invalid_creds(ptr noundef nonnull %62, ptr noundef nonnull @.str.238, i32 noundef 286) #14
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %62, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !509
  tail call void @llvm.prefetch.p0(ptr nonnull %62, i32 1, i32 3, i32 1) #14
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %62, ptr nonnull %62, i32 1, ptr nonnull elementtype(i32) %62) #14, !srcloc !510
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.if.end26_crit_edge

__validate_creds.exit.i.if.end26_crit_edge:       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %62) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then1.i, %__validate_creds.exit.i.if.end26_crit_edge, %for.end17.if.end26_crit_edge
  tail call void @kfree(ptr noundef %ofs) #14
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_dentry_revalidate(ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %call.i = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.land.rhs.lr.ph.i_crit_edge, label %if.then.i

entry.land.rhs.lr.ph.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.lr.ph.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 8
  %and4.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.land.rhs.lr.ph.i_crit_edge, label %if.then6.i.i

if.then.i.land.rhs.lr.ph.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.lr.ph.i

if.then6.i.i:                                     ; preds = %if.then.i
  %d_op7.i.i = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %d_op7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_op7.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %call8.i.i = tail call i32 %7(ptr noundef nonnull %call.i, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.end.i

if.then10.i.i:                                    ; preds = %if.then6.i.i
  %and11.i.i = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.then10.i.i.ovl_dentry_revalidate_common.exit_crit_edge

if.then10.i.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

if.then13.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_invalidate(ptr noundef nonnull %call.i) #14
  br label %ovl_dentry_revalidate_common.exit

if.end.i:                                         ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp35.i = icmp sgt i32 %call8.i.i, 0
  br i1 %cmp35.i, label %if.end.i.land.rhs.lr.ph.i_crit_edge, label %if.end.i.ovl_dentry_revalidate_common.exit_crit_edge

if.end.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

if.end.i.land.rhs.lr.ph.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %if.end.i.land.rhs.lr.ph.i_crit_edge, %if.then.i.land.rhs.lr.ph.i_crit_edge, %entry.land.rhs.lr.ph.i_crit_edge
  %ret.042.i = phi i32 [ %call8.i.i, %if.end.i.land.rhs.lr.ph.i_crit_edge ], [ 1, %if.then.i.land.rhs.lr.ph.i_crit_edge ], [ 1, %entry.land.rhs.lr.ph.i_crit_edge ]
  %numlower43.i = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %and11.i29.i = and i32 %flags, 64
  %8 = ptrtoint ptr %numlower43.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numlower43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i1.not = icmp eq i32 %9, 0
  br i1 %cmp3.i1.not, label %land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge, label %land.rhs.lr.ph.i.for.body.i_crit_edge

land.rhs.lr.ph.i.for.body.i_crit_edge:            ; preds = %land.rhs.lr.ph.i
  br label %for.body.i

land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

land.rhs.i:                                       ; preds = %ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %ret.0.i33.i8 = phi i32 [ %call8.i26.mux.i, %ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge ], [ 1, %for.body.i.land.rhs.i_crit_edge ]
  %inc.i = add nuw i32 %i.036.i2, 1
  %10 = ptrtoint ptr %numlower43.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numlower43.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %11
  br i1 %cmp3.i, label %land.rhs.i.for.body.i_crit_edge, label %land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge

land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i.for.body.i_crit_edge, %land.rhs.lr.ph.i.for.body.i_crit_edge
  %i.036.i2 = phi i32 [ %inc.i, %land.rhs.i.for.body.i_crit_edge ], [ 0, %land.rhs.lr.ph.i.for.body.i_crit_edge ]
  %dentry4.i = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %i.036.i2, i32 1
  %12 = ptrtoint ptr %dentry4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry4.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and4.i22.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i22.i)
  %tobool5.not.i23.i = icmp eq i32 %and4.i22.i, 0
  br i1 %tobool5.not.i23.i, label %for.body.i.land.rhs.i_crit_edge, label %if.then6.i28.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.then6.i28.i:                                   ; preds = %for.body.i
  %d_op7.i25.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %d_op7.i25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_op7.i25.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %call8.i26.i = tail call i32 %19(ptr noundef %13, i32 noundef %flags) #14
  %20 = or i32 %call8.i26.i, %and11.i29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %.not.i = icmp eq i32 %20, 0
  br i1 %.not.i, label %ovl_revalidate_real.exit34.thread.i, label %ovl_revalidate_real.exit34.i

ovl_revalidate_real.exit34.thread.i:              ; preds = %if.then6.i28.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_invalidate(ptr noundef %13) #14
  br label %ovl_dentry_revalidate_common.exit

ovl_revalidate_real.exit34.i:                     ; preds = %if.then6.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i26.i)
  %tobool9.not.i27.not.i = icmp eq i32 %call8.i26.i, 0
  %call8.i26.mux.i = select i1 %tobool9.not.i27.not.i, i32 -116, i32 %call8.i26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i26.mux.i)
  %cmp.i = icmp sgt i32 %call8.i26.mux.i, 0
  br i1 %cmp.i, label %ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge, label %ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge

ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %ovl_revalidate_real.exit34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge: ; preds = %ovl_revalidate_real.exit34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

ovl_dentry_revalidate_common.exit:                ; preds = %ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge, %ovl_revalidate_real.exit34.thread.i, %land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge, %land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge, %if.end.i.ovl_dentry_revalidate_common.exit_crit_edge, %if.then13.i.i, %if.then10.i.i.ovl_dentry_revalidate_common.exit_crit_edge
  %ret.1.lcssa.i = phi i32 [ %call8.i.i, %if.end.i.ovl_dentry_revalidate_common.exit_crit_edge ], [ -116, %ovl_revalidate_real.exit34.thread.i ], [ -116, %if.then13.i.i ], [ -116, %if.then10.i.i.ovl_dentry_revalidate_common.exit_crit_edge ], [ %ret.042.i, %land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge ], [ %call8.i26.mux.i, %ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge ], [ %ret.0.i33.i8, %land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge ]
  ret i32 %ret.1.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_dentry_weak_revalidate(ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %call.i = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.land.rhs.lr.ph.i_crit_edge, label %if.then.i

entry.land.rhs.lr.ph.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.lr.ph.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 8
  %and.i.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.land.rhs.lr.ph.i_crit_edge, label %if.then2.i.i

if.then.i.land.rhs.lr.ph.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.lr.ph.i

if.then2.i.i:                                     ; preds = %if.then.i
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_op.i.i, align 8
  %d_weak_revalidate.i.i = getelementptr inbounds %struct.dentry_operations, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %d_weak_revalidate.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_weak_revalidate.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef nonnull %call.i, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp35.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp35.i, label %if.then2.i.i.land.rhs.lr.ph.i_crit_edge, label %if.then2.i.i.ovl_dentry_revalidate_common.exit_crit_edge

if.then2.i.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

if.then2.i.i.land.rhs.lr.ph.i_crit_edge:          ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %if.then2.i.i.land.rhs.lr.ph.i_crit_edge, %if.then.i.land.rhs.lr.ph.i_crit_edge, %entry.land.rhs.lr.ph.i_crit_edge
  %ret.042.i = phi i32 [ %call.i.i, %if.then2.i.i.land.rhs.lr.ph.i_crit_edge ], [ 1, %if.then.i.land.rhs.lr.ph.i_crit_edge ], [ 1, %entry.land.rhs.lr.ph.i_crit_edge ]
  %numlower43.i = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %numlower43.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numlower43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i1.not = icmp eq i32 %9, 0
  br i1 %cmp3.i1.not, label %land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge, label %land.rhs.lr.ph.i.for.body.i_crit_edge

land.rhs.lr.ph.i.for.body.i_crit_edge:            ; preds = %land.rhs.lr.ph.i
  br label %for.body.i

land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

land.rhs.i:                                       ; preds = %ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %ret.0.i33.i7 = phi i32 [ %call.i20.i, %ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge ], [ 1, %for.body.i.land.rhs.i_crit_edge ]
  %inc.i = add nuw i32 %i.036.i2, 1
  %10 = ptrtoint ptr %numlower43.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numlower43.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %11
  br i1 %cmp3.i, label %land.rhs.i.for.body.i_crit_edge, label %land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge

land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i.for.body.i_crit_edge, %land.rhs.lr.ph.i.for.body.i_crit_edge
  %i.036.i2 = phi i32 [ %inc.i, %land.rhs.i.for.body.i_crit_edge ], [ 0, %land.rhs.lr.ph.i.for.body.i_crit_edge ]
  %dentry4.i = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %i.036.i2, i32 1
  %12 = ptrtoint ptr %dentry4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry4.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i15.i = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool1.not.i16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool1.not.i16.i, label %for.body.i.land.rhs.i_crit_edge, label %ovl_revalidate_real.exit34.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

ovl_revalidate_real.exit34.i:                     ; preds = %for.body.i
  %d_op.i18.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %d_op.i18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_op.i18.i, align 8
  %d_weak_revalidate.i19.i = getelementptr inbounds %struct.dentry_operations, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %d_weak_revalidate.i19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_weak_revalidate.i19.i, align 4
  %call.i20.i = tail call i32 %19(ptr noundef %13, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i = icmp sgt i32 %call.i20.i, 0
  br i1 %cmp.i, label %ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge, label %ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge

ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge: ; preds = %ovl_revalidate_real.exit34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_dentry_revalidate_common.exit

ovl_revalidate_real.exit34.i.land.rhs.i_crit_edge: ; preds = %ovl_revalidate_real.exit34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

ovl_dentry_revalidate_common.exit:                ; preds = %ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge, %land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge, %land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge, %if.then2.i.i.ovl_dentry_revalidate_common.exit_crit_edge
  %ret.1.lcssa.i = phi i32 [ %call.i.i, %if.then2.i.i.ovl_dentry_revalidate_common.exit_crit_edge ], [ %ret.042.i, %land.rhs.lr.ph.i.ovl_dentry_revalidate_common.exit_crit_edge ], [ %call.i20.i, %ovl_revalidate_real.exit34.i.ovl_dentry_revalidate_common.exit_crit_edge ], [ %ret.0.i33.i7, %land.rhs.i.ovl_dentry_revalidate_common.exit_crit_edge ]
  ret i32 %ret.1.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovl_dentry_release(ptr nocapture noundef readonly %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %numlower.i = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %numlower.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numlower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not.i = icmp eq i32 %3, 0
  br i1 %cmp4.not.i, label %if.then.ovl_entry_stack_free.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.ovl_entry_stack_free.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_entry_stack_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %dentry.i = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %i.05.i, i32 1
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  tail call void @dput(ptr noundef %5) #14
  %inc.i = add nuw i32 %i.05.i, 1
  %6 = ptrtoint ptr %numlower.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numlower.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ovl_entry_stack_free.exit_crit_edge

for.body.i.ovl_entry_stack_free.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_entry_stack_free.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

ovl_entry_stack_free.exit:                        ; preds = %for.body.i.ovl_entry_stack_free.exit_crit_edge, %if.then.ovl_entry_stack_free.exit_crit_edge
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #14
  br label %if.end6

if.end6:                                          ; preds = %ovl_entry_stack_free.exit, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ovl_d_real(ptr noundef %dentry, ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp = icmp eq ptr %1, %inode
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %if.end.thread

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %3, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 4194304
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.thread:                                    ; preds = %land.lhs.true
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %and.i.i109 = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i109)
  %cmp.i110 = icmp eq i32 %and.i.i109, 4194304
  br i1 %cmp.i110, label %if.end.thread.if.end8_crit_edge, label %lor.lhs.false

if.end.thread.if.end8_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

lor.lhs.false:                                    ; preds = %if.end.thread
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp5 = icmp eq ptr %7, %inode
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.cond.end44.thread143_crit_edge

lor.lhs.false.cond.end44.thread143_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end44.thread143

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end.thread.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #14
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end23, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %d_inode.i104 = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i104 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i104, align 8
  %cmp13 = icmp eq ptr %9, %inode
  br i1 %cmp13, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true17.critedge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true17.critedge:                         ; preds = %land.lhs.true11
  br i1 %tobool.not, label %land.lhs.true19, label %if.end23.thread

land.lhs.true19:                                  ; preds = %land.lhs.true17.critedge
  %d_inode.i105 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i105 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i105, align 8
  %call21 = tail call zeroext i1 @ovl_has_upperdata(ptr noundef %11) #14
  br i1 %call21, label %land.lhs.true19.cleanup_crit_edge, label %if.end23.thread119

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %call24 = tail call ptr @ovl_dentry_lowerdata(ptr noundef %dentry) #14
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end23.thread119:                               ; preds = %land.lhs.true19
  %call24120 = tail call ptr @ovl_dentry_lowerdata(ptr noundef %dentry) #14
  %tobool25.not121 = icmp eq ptr %call24120, null
  br i1 %tobool25.not121, label %if.end23.thread119.land.lhs.true47_crit_edge, label %if.end23.thread119.if.end27_crit_edge

if.end23.thread119.if.end27_crit_edge:            ; preds = %if.end23.thread119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end23.thread119.land.lhs.true47_crit_edge:     ; preds = %if.end23.thread119
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true47

if.end23.thread:                                  ; preds = %land.lhs.true17.critedge
  %call24114 = tail call ptr @ovl_dentry_lowerdata(ptr noundef %dentry) #14
  %tobool25.not115 = icmp eq ptr %call24114, null
  br i1 %tobool25.not115, label %cond.end44.thread149, label %if.end23.thread.if.end27_crit_edge

if.end23.thread.if.end27_crit_edge:               ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

cond.end44.thread149:                             ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb151 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb151 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb151, align 4
  %s_id152 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  %i_ino153 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino153 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino153, align 8
  br label %land.lhs.true47

if.end27:                                         ; preds = %if.end23.thread.if.end27_crit_edge, %if.end23.thread119.if.end27_crit_edge, %if.end23.if.end27_crit_edge
  %call24116 = phi ptr [ %call24114, %if.end23.thread.if.end27_crit_edge ], [ %call24, %if.end23.if.end27_crit_edge ], [ %call24120, %if.end23.thread119.if.end27_crit_edge ]
  %16 = ptrtoint ptr %call24116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call24116, align 8
  %and.i = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end27.d_real.exit_crit_edge, label %if.then.i, !prof !504

if.end27.d_real.exit_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %d_real.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %d_op.i = getelementptr inbounds %struct.dentry, ptr %call24116, i32 0, i32 8
  %18 = ptrtoint ptr %d_op.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_op.i, align 8
  %d_real.i = getelementptr inbounds %struct.dentry_operations, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %d_real.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_real.i, align 16
  %call.i = tail call ptr %21(ptr noundef nonnull %call24116, ptr noundef %inode) #14
  br label %d_real.exit

d_real.exit:                                      ; preds = %if.then.i, %if.end27.d_real.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %call24116, %if.end27.d_real.exit_crit_edge ]
  br i1 %tobool.not, label %d_real.exit.cleanup_crit_edge, label %lor.lhs.false30

d_real.exit.cleanup_crit_edge:                    ; preds = %d_real.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false30:                                  ; preds = %d_real.exit
  %d_inode.i106 = getelementptr inbounds %struct.dentry, ptr %retval.0.i, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i106 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i106, align 8
  %cmp32 = icmp eq ptr %23, %inode
  br i1 %cmp32, label %lor.lhs.false30.cleanup_crit_edge, label %cond.end44

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end23
  br i1 %tobool.not, label %do.end.cond.end54_crit_edge, label %do.end.cond.end44.thread143_crit_edge

do.end.cond.end44.thread143_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end44.thread143

do.end.cond.end54_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end54

cond.end44.thread143:                             ; preds = %do.end.cond.end44.thread143_crit_edge, %lor.lhs.false.cond.end44.thread143_crit_edge
  %i_sb145 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb145 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb145, align 4
  %s_id146 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 39
  %i_ino147 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino147 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino147, align 8
  br label %cond.end54

cond.end44:                                       ; preds = %lor.lhs.false30
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %tobool46.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool46.not, label %cond.end44.cond.end54_crit_edge, label %cond.end44.land.lhs.true47_crit_edge

cond.end44.land.lhs.true47_crit_edge:             ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true47

cond.end44.cond.end54_crit_edge:                  ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end54

land.lhs.true47:                                  ; preds = %cond.end44.land.lhs.true47_crit_edge, %cond.end44.thread149, %if.end23.thread119.land.lhs.true47_crit_edge
  %cond45142 = phi i32 [ %31, %cond.end44.land.lhs.true47_crit_edge ], [ %15, %cond.end44.thread149 ], [ 0, %if.end23.thread119.land.lhs.true47_crit_edge ]
  %real.0113126141 = phi ptr [ %retval.0.i, %cond.end44.land.lhs.true47_crit_edge ], [ %call9, %cond.end44.thread149 ], [ %call9, %if.end23.thread119.land.lhs.true47_crit_edge ]
  %cond127140 = phi ptr [ %s_id, %cond.end44.land.lhs.true47_crit_edge ], [ %s_id152, %cond.end44.thread149 ], [ @.str.26, %if.end23.thread119.land.lhs.true47_crit_edge ]
  %d_inode.i107 = getelementptr inbounds %struct.dentry, ptr %real.0113126141, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i107, align 8
  %tobool49.not = icmp eq ptr %33, null
  br i1 %tobool49.not, label %land.lhs.true47.cond.end54_crit_edge, label %cond.true50

land.lhs.true47.cond.end54_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end54

cond.true50:                                      ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  %i_ino52 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino52, align 8
  br label %cond.end54

cond.end54:                                       ; preds = %cond.true50, %land.lhs.true47.cond.end54_crit_edge, %cond.end44.cond.end54_crit_edge, %cond.end44.thread143, %do.end.cond.end54_crit_edge
  %cond45134 = phi i32 [ %cond45142, %cond.true50 ], [ %cond45142, %land.lhs.true47.cond.end54_crit_edge ], [ %31, %cond.end44.cond.end54_crit_edge ], [ %27, %cond.end44.thread143 ], [ 0, %do.end.cond.end54_crit_edge ]
  %real.0113126133 = phi ptr [ %real.0113126141, %cond.true50 ], [ %real.0113126141, %land.lhs.true47.cond.end54_crit_edge ], [ null, %cond.end44.cond.end54_crit_edge ], [ null, %cond.end44.thread143 ], [ null, %do.end.cond.end54_crit_edge ]
  %cond127132 = phi ptr [ %cond127140, %cond.true50 ], [ %cond127140, %land.lhs.true47.cond.end54_crit_edge ], [ %s_id, %cond.end44.cond.end54_crit_edge ], [ %s_id146, %cond.end44.thread143 ], [ @.str.26, %do.end.cond.end54_crit_edge ]
  %cond55 = phi i32 [ %35, %cond.true50 ], [ 0, %land.lhs.true47.cond.end54_crit_edge ], [ 0, %cond.end44.cond.end54_crit_edge ], [ 0, %cond.end44.thread143 ], [ 0, %do.end.cond.end54_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.ovl_d_real, ptr noundef %dentry, ptr noundef %cond127132, i32 noundef %cond45134, ptr noundef %real.0113126133, i32 noundef %cond55) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end54, %lor.lhs.false30.cleanup_crit_edge, %d_real.exit.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %dentry, %cond.end54 ], [ %dentry, %land.lhs.true.cleanup_crit_edge ], [ %dentry, %lor.lhs.false.cleanup_crit_edge ], [ %call9, %land.lhs.true11.cleanup_crit_edge ], [ %call9, %land.lhs.true19.cleanup_crit_edge ], [ %retval.0.i, %lor.lhs.false30.cleanup_crit_edge ], [ %retval.0.i, %d_real.exit.cleanup_crit_edge ], [ %dentry, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_upper(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_has_upperdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_lowerdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ovl_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ovl_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %__upperdentry = getelementptr inbounds %struct.ovl_inode, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %__upperdentry to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %__upperdentry, align 8
  %lower = getelementptr inbounds %struct.ovl_inode, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %lower to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %lower, align 4
  %lock = getelementptr inbounds %struct.ovl_inode, ptr %call, i32 0, i32 7
  %3 = call ptr @memset(ptr %call, i32 0, i32 20)
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.92, ptr noundef nonnull @ovl_alloc_inode.__key) #14
  %vfs_inode = getelementptr inbounds %struct.ovl_inode, ptr %call, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovl_destroy_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__upperdentry = getelementptr i8, ptr %inode, i32 784
  %0 = ptrtoint ptr %__upperdentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__upperdentry, align 8
  tail call void @dput(ptr noundef %1) #14
  %lower = getelementptr i8, ptr %inode, i32 788
  %2 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lower, align 4
  tail call void @iput(ptr noundef %3) #14
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ovl_dir_cache_free(ptr noundef %inode) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -24
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  tail call void @iput(ptr noundef %8) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovl_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -24
  %redirect = getelementptr i8, ptr %inode, i32 -20
  %0 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %redirect, align 4
  tail call void @kfree(ptr noundef %1) #14
  %lock = getelementptr i8, ptr %inode, i32 792
  tail call void @mutex_destroy(ptr noundef %lock) #14
  %2 = load ptr, ptr @ovl_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovl_put_super(ptr nocapture noundef readonly %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call fastcc void @ovl_free_fs(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_sync_fs(ptr noundef %sb, i32 noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @ovl_sync_status(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 50
  %call1 = tail call i32 @errseq_set(ptr noundef %s_wb_err, i32 noundef -5) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool4.not = icmp eq i32 %wait, 0
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layers.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mnt_sb, align 4
  %s_umount = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount) #14
  %call8 = tail call i32 @sync_filesystem(ptr noundef %7) #14
  tail call void @up_read(ptr noundef %s_umount) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %call8, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_statfs(ptr nocapture noundef readonly %dentry, ptr noundef %buf) #2 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #14
  %6 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !507
  %7 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !507
  %call = call i32 @ovl_path_real(ptr noundef %5, ptr noundef nonnull %path) #14
  %call2 = call i32 @vfs_statfs(ptr noundef nonnull %path, ptr noundef %buf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %namelen = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %namelen, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %11 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %f_namelen, align 8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2035054128, ptr %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_remount(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %flags, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %layers.i.i = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %ovl_force_readonly.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ovl_force_readonly.exit:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %workdir.i = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %workdir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workdir.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  %spec.select = select i1 %tobool1.not.i, i32 -30, i32 0
  br label %cleanup

land.lhs.true3:                                   ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %10 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then5, label %land.lhs.true3.cleanup_crit_edge

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true3
  %ovl_volatile.i = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 8, i32 13
  %12 = ptrtoint ptr %ovl_volatile.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ovl_volatile.i, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i21 = icmp eq i8 %13, 0
  br i1 %tobool.not.i21, label %if.then8, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %layers.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mnt_sb, align 4
  %s_umount = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount) #14
  %call9 = tail call i32 @sync_filesystem(ptr noundef %19) #14
  tail call void @up_read(ptr noundef %s_umount) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then5.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %ovl_force_readonly.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true3.cleanup_crit_edge ], [ %call9, %if.then8 ], [ 0, %if.then5.cleanup_crit_edge ], [ -30, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %ovl_force_readonly.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_show_options(ptr noundef %m, ptr nocapture noundef readonly %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %config = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #14
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef 8, i32 noundef 8, ptr noundef nonnull @.str.105) #14
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.seq_show_option.exit_crit_edge, label %if.then.i

entry.seq_show_option.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %seq_show_option.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #14
  %call.i.i5.i = tail call i32 @strlen(ptr noundef nonnull %5) #19
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %5, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.106) #14
  br label %seq_show_option.exit

seq_show_option.exit:                             ; preds = %if.then.i, %entry.seq_show_option.exit_crit_edge
  %upperdir = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %upperdir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upperdir, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %seq_show_option.exit.if.end_crit_edge, label %seq_show_option.exit109

seq_show_option.exit.if.end_crit_edge:            ; preds = %seq_show_option.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

seq_show_option.exit109:                          ; preds = %seq_show_option.exit
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #14
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.94, i32 noundef 8, i32 noundef 8, ptr noundef nonnull @.str.105) #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #14
  %call.i.i5.i107 = tail call i32 @strlen(ptr noundef nonnull %7) #19
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %7, i32 noundef %call.i.i5.i107, i32 noundef 8, ptr noundef nonnull @.str.106) #14
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workdir, align 4
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #14
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.95, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.105) #14
  %tobool.not.i111 = icmp eq ptr %9, null
  br i1 %tobool.not.i111, label %seq_show_option.exit109.if.end_crit_edge, label %if.then.i113

seq_show_option.exit109.if.end_crit_edge:         ; preds = %seq_show_option.exit109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i113:                                     ; preds = %seq_show_option.exit109
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #14
  %call.i.i5.i112 = tail call i32 @strlen(ptr noundef nonnull %9) #19
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %9, i32 noundef %call.i.i5.i112, i32 noundef 8, ptr noundef nonnull @.str.106) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i113, %seq_show_option.exit109.if.end_crit_edge, %seq_show_option.exit.if.end_crit_edge
  %default_permissions = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 3
  %10 = ptrtoint ptr %default_permissions to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %default_permissions, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.96) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %redirect_mode = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 6
  %12 = ptrtoint ptr %redirect_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %redirect_mode, align 4
  %14 = load i8, ptr @ovl_redirect_dir_def, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i115 = icmp eq i8 %14, 0
  %cond.i = select i1 %tobool.not.i115, ptr @.str.69, ptr @.str.68
  %call10 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull %cond.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, ptr noundef %13) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %index = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index, align 4, !range !505
  %17 = load i8, ptr @ovl_index_def, align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp19.not = icmp eq i8 %16, %17
  br i1 %cmp19.not, label %if.end14.if.end26_crit_edge, label %if.then21

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  %cond = select i1 %tobool16.not, ptr @.str.69, ptr @.str.68
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, ptr noundef nonnull %cond) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end14.if.end26_crit_edge
  %uuid = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 8
  %18 = ptrtoint ptr %uuid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %uuid, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool28.not = icmp eq i8 %19, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.99) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %nfs_export = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 9
  %20 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nfs_export, align 2, !range !505
  %22 = load i8, ptr @ovl_nfs_export_def, align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %22)
  %cmp36.not = icmp eq i8 %21, %22
  br i1 %cmp36.not, label %if.end30.if.end44_crit_edge, label %if.then38

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  %cond43 = select i1 %tobool32.not, ptr @.str.69, ptr @.str.68
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond43) #14
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end30.if.end44_crit_edge
  %xino = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 10
  %23 = ptrtoint ptr %xino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xino, align 4
  %25 = load i8, ptr @ovl_xino_auto_def, align 1, !range !505
  %26 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp47.not = icmp eq i32 %24, %26
  br i1 %cmp47.not, label %if.end44.if.end53_crit_edge, label %land.lhs.true

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end44
  %27 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info, align 16
  %xino_mode.i = getelementptr inbounds %struct.ovl_fs, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %xino_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xino_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %land.lhs.true.if.end53_crit_edge, label %if.then50

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [3 x ptr], ptr @ovl_xino_str, i32 0, i32 %24
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, ptr noundef %32) #14
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %land.lhs.true.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %metacopy = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 11
  %33 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %metacopy, align 4, !range !505
  %35 = load i8, ptr @ovl_metacopy_def, align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %35)
  %cmp59.not = icmp eq i8 %34, %35
  br i1 %cmp59.not, label %if.end53.if.end67_crit_edge, label %if.then61

if.end53.if.end67_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool55.not = icmp eq i8 %34, 0
  %cond66 = select i1 %tobool55.not, ptr @.str.69, ptr @.str.68
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond66) #14
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %if.end53.if.end67_crit_edge
  %ovl_volatile = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 13
  %36 = ptrtoint ptr %ovl_volatile to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ovl_volatile, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool69.not = icmp eq i8 %37, 0
  br i1 %tobool69.not, label %if.end67.if.end71_crit_edge, label %if.then70

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.103) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end67.if.end71_crit_edge
  %userxattr = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 12
  %38 = ptrtoint ptr %userxattr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %userxattr, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool73.not = icmp eq i8 %39, 0
  br i1 %tobool73.not, label %if.end71.if.end75_crit_edge, label %if.then74

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.104) #14
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71.if.end75_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dir_cache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_sync_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_path_real(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_statfs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_mount_dir(ptr noundef %name, ptr noundef %path) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %1)
  %cmp12.i = icmp eq i8 %1, 92
  %spec.select.idx13.i = zext i1 %cmp12.i to i32
  %spec.select14.i = getelementptr i8, ptr %call, i32 %spec.select.idx13.i
  %2 = ptrtoint ptr %spec.select14.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %spec.select14.i, align 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call, align 1
  %5 = load i8, ptr %spec.select14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not15.i = icmp eq i8 %5, 0
  br i1 %tobool.not15.i, label %if.then.ovl_unescape.exit_crit_edge, label %if.then.for.inc.i_crit_edge

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  br label %for.inc.i

if.then.ovl_unescape.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_unescape.exit

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.then.for.inc.i_crit_edge
  %spec.select17.i = phi ptr [ %spec.select.i, %for.inc.i.for.inc.i_crit_edge ], [ %spec.select14.i, %if.then.for.inc.i_crit_edge ]
  %d.016.i = phi ptr [ %incdec.ptr5.i, %for.inc.i.for.inc.i_crit_edge ], [ %call, %if.then.for.inc.i_crit_edge ]
  %incdec.ptr4.i = getelementptr i8, ptr %spec.select17.i, i32 1
  %incdec.ptr5.i = getelementptr i8, ptr %d.016.i, i32 1
  %6 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %7)
  %cmp.i = icmp eq i8 %7, 92
  %spec.select.idx.i = zext i1 %cmp.i to i32
  %spec.select.i = getelementptr i8, ptr %incdec.ptr4.i, i32 %spec.select.idx.i
  %8 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %spec.select.i, align 1
  %10 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %incdec.ptr5.i, align 1
  %11 = load i8, ptr %spec.select.i, align 1
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %for.inc.i.ovl_unescape.exit_crit_edge, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i.ovl_unescape.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_unescape.exit

ovl_unescape.exit:                                ; preds = %for.inc.i.ovl_unescape.exit_crit_edge, %if.then.ovl_unescape.exit_crit_edge
  %call1 = tail call fastcc i32 @ovl_mount_dir_noesc(ptr noundef nonnull %call, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %ovl_unescape.exit.if.end_crit_edge

ovl_unescape.exit.if.end_crit_edge:               ; preds = %ovl_unescape.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %ovl_unescape.exit
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %12 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and = and i32 %15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull %call) #17
  tail call void @path_put(ptr noundef %path) #14
  %16 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %path, align 4
  %17 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dentry, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %ovl_unescape.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call1, %ovl_unescape.exit.if.end_crit_edge ], [ -22, %do.end ], [ 0, %land.lhs.true.if.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #14
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end ], [ -12, %entry.if.end7_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clone_private_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_inuse_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_mount_dir_noesc(ptr noundef %name, ptr noundef %path) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @kern_path(ptr noundef %name, i32 noundef 1, ptr noundef %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name, i32 noundef %call1) #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %call10 = tail call zeroext i1 @ovl_dentry_weird(ptr noundef %3) #14
  br i1 %call10, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name) #17
  br label %out_put

if.end17:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !512
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_user_ns.i, align 8
  %cmp.i.not = icmp eq ptr %7, %11
  br i1 %cmp.i.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #17
  br label %out_put

if.end25:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %16)
  %17 = icmp eq i32 %16, 2097152
  br i1 %17, label %if.end25.cleanup_crit_edge, label %do.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name) #17
  br label %out_put

out_put:                                          ; preds = %do.end31, %do.end22, %do.end14
  tail call void @path_put(ptr noundef %path) #14
  %18 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %path, align 4
  %19 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dentry, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_put, %if.end25.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %call1, %do.end6 ], [ -22, %out_put ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_weird(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_get_trap_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_make_workdir(ptr noundef %sb, ptr nocapture noundef %ofs, ptr noundef %workpath) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %0 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layers.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @mnt_want_write(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @ovl_workdir_create(ptr noundef %ofs, ptr noundef nonnull @.str.143, i1 noundef zeroext false)
  %4 = ptrtoint ptr %call2 to i32
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %if.end
  %workdir7 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 5
  %5 = ptrtoint ptr %workdir7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %workdir7, align 4
  %call.i = tail call ptr @ovl_get_trap_inode(ptr noundef %sb, ptr noundef nonnull %call2) #14
  %cmp.i.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %6, i32 0
  %7 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %spec.select.i.i, label %if.end6.out_crit_edge [
    i32 0, label %ovl_setup_trap.exit.thread
    i32 -40, label %ovl_setup_trap.exit.thread203
  ]

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

ovl_setup_trap.exit.thread203:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.95) #17
  br label %out

ovl_setup_trap.exit.thread:                       ; preds = %if.end6
  %workdir_trap = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 16
  %8 = ptrtoint ptr %workdir_trap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %workdir_trap, align 4
  %call13 = tail call i32 @ovl_check_d_type_supported(ptr noundef %workpath) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %ovl_setup_trap.exit.thread.out_crit_edge, label %if.end15

ovl_setup_trap.exit.thread.out_crit_edge:         ; preds = %ovl_setup_trap.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end15:                                         ; preds = %ovl_setup_trap.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %do.end, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #17
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end15.if.end20_crit_edge
  %9 = ptrtoint ptr %workdir7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workdir7, align 4
  %call.i196 = tail call ptr @vfs_tmpfile(ptr noundef nonnull @init_user_ns, ptr noundef %10, i16 noundef zeroext -32768, i32 noundef 0) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_tmpfile.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_make_workdir, %if.then.i)) #14
          to label %ovl_do_tmpfile.exit [label %if.then.i], !srcloc !513

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %cmp.i.i.i197 = icmp ugt ptr %call.i196, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %call.i196 to i32
  %spec.select.i.i198 = select i1 %cmp.i.i.i197, i32 %11, i32 0
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_tmpfile.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.178, ptr noundef %10, i32 noundef 32768, i32 noundef %spec.select.i.i198) #14
  br label %ovl_do_tmpfile.exit

ovl_do_tmpfile.exit:                              ; preds = %if.then.i, %if.end20
  %cmp.i200 = icmp ugt ptr %call.i196, inttoptr (i32 -4096 to ptr)
  %lnot = xor i1 %cmp.i200, true
  %tmpfile = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 10
  %frombool24 = zext i1 %lnot to i8
  %12 = ptrtoint ptr %tmpfile to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool24, ptr %tmpfile, align 4
  br i1 %cmp.i200, label %do.end30, label %if.then27

if.then27:                                        ; preds = %ovl_do_tmpfile.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %call.i196) #14
  br label %if.end33

do.end30:                                         ; preds = %ovl_do_tmpfile.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #17
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.then27
  %13 = ptrtoint ptr %workdir7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %workdir7, align 4
  %call35 = tail call fastcc i32 @ovl_check_rename_whiteout(ptr noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end33.out_crit_edge, label %if.end38

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool39.not = icmp eq i32 %call35, 0
  br i1 %tobool39.not, label %do.end45, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #17
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end38.if.end48_crit_edge
  %15 = ptrtoint ptr %workdir7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workdir7, align 4
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %17 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %userxattr.i.i, align 1, !range !505
  %19 = zext i8 %18 to i32
  %arrayidx1.i.i = getelementptr [2 x ptr], ptr @ovl_xattr_table, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %16, ptr noundef %21, ptr noundef nonnull @.str.152, i32 noundef 1, i32 noundef 0) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_make_workdir, %cond.end.i)) #14
          to label %ovl_do_setxattr.exit [label %cond.end.i], !srcloc !513

cond.end.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_setxattr.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.186, ptr noundef %16, ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.152, i32 noundef 1, i32 noundef %call1.i) #14
  br label %ovl_do_setxattr.exit

ovl_do_setxattr.exit:                             ; preds = %cond.end.i, %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool51.not = icmp eq i32 %call1.i, 0
  br i1 %tobool51.not, label %if.else78, label %if.then52

if.then52:                                        ; preds = %ovl_do_setxattr.exit
  %noxattr = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 11
  %22 = ptrtoint ptr %noxattr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %noxattr, align 1
  %index = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 7
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool53.not = icmp eq i8 %24, 0
  br i1 %tobool53.not, label %lor.lhs.false, label %if.then52.if.then56_crit_edge

if.then52.if.then56_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.then52
  %metacopy = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 11
  %25 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %metacopy, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool55.not = icmp eq i8 %26, 0
  br i1 %tobool55.not, label %lor.lhs.false.if.end66_crit_edge, label %lor.lhs.false.if.then56_crit_edge

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.end66_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.then52.if.then56_crit_edge
  %27 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %index, align 4
  %metacopy60 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 11
  %28 = ptrtoint ptr %metacopy60 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %metacopy60, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #17
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %lor.lhs.false.if.end66_crit_edge
  %xino = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 10
  %29 = ptrtoint ptr %xino to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp68 = icmp eq i32 %30, 1
  br i1 %cmp68, label %if.then69, label %if.end66.if.end81_crit_edge

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %xino to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %xino, align 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #17
  br label %if.end81

if.else78:                                        ; preds = %ovl_do_setxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %workdir7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %workdir7, align 4
  tail call fastcc void @ovl_do_removexattr(ptr noundef %ofs, ptr noundef %33)
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then69, %if.end66.if.end81_crit_edge
  %34 = ptrtoint ptr %workdir7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %workdir7, align 4
  %call83 = tail call zeroext i1 @ovl_dentry_remote(ptr noundef %35) #14
  br i1 %call83, label %land.lhs.true, label %if.end81.if.end96_crit_edge

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

land.lhs.true:                                    ; preds = %if.end81
  %brmerge = select i1 %tobool16.not, i1 true, i1 %tobool39.not
  br i1 %brmerge, label %land.lhs.true.do.end93_crit_edge, label %lor.lhs.false87

land.lhs.true.do.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end93

lor.lhs.false87:                                  ; preds = %land.lhs.true
  %noxattr88 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 11
  %36 = ptrtoint ptr %noxattr88 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %noxattr88, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool89.not = icmp eq i8 %37, 0
  br i1 %tobool89.not, label %lor.lhs.false87.if.end96_crit_edge, label %lor.lhs.false87.do.end93_crit_edge

lor.lhs.false87.do.end93_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end93

lor.lhs.false87.if.end96_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

do.end93:                                         ; preds = %lor.lhs.false87.do.end93_crit_edge, %land.lhs.true.do.end93_crit_edge
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #17
  br label %out

if.end96:                                         ; preds = %lor.lhs.false87.if.end96_crit_edge, %if.end81.if.end96_crit_edge
  %ovl_volatile = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 13
  %38 = ptrtoint ptr %ovl_volatile to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ovl_volatile, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool98.not = icmp eq i8 %39, 0
  br i1 %tobool98.not, label %if.end96.if.end109_crit_edge, label %if.then99

if.end96.if.end109_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.then99:                                        ; preds = %if.end96
  %call100 = tail call fastcc i32 @ovl_create_volatile_dirty(ptr noundef %ofs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end105, label %if.then99.if.end109_crit_edge

if.then99.if.end109_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

do.end105:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #17
  br label %out

if.end109:                                        ; preds = %if.then99.if.end109_crit_edge, %if.end96.if.end109_crit_edge
  %err.1 = phi i32 [ %call100, %if.then99.if.end109_crit_edge ], [ 0, %if.end96.if.end109_crit_edge ]
  %40 = ptrtoint ptr %workdir7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %workdir7, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_sb, align 4
  %call111 = tail call i32 @ovl_can_decode_fh(ptr noundef %43) #14
  %index113 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 7
  %44 = ptrtoint ptr %index113 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index113, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool114.not = icmp ne i8 %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool116.not = icmp eq i32 %call111, 0
  %or.cond = select i1 %tobool114.not, i1 %tobool116.not, i1 false
  br i1 %or.cond, label %if.end125.thread, label %if.end125

if.end125.thread:                                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %index113 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %index113, align 4
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #17
  br label %if.then127

if.end125:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call111)
  %cmp126.not = icmp eq i32 %call111, 1
  br i1 %cmp126.not, label %if.end125.if.end128_crit_edge, label %if.end125.if.then127_crit_edge

if.end125.if.then127_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then127

if.end125.if.end128_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.then127:                                       ; preds = %if.end125.if.then127_crit_edge, %if.end125.thread
  %xino_mode = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 18
  %47 = ptrtoint ptr %xino_mode to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %xino_mode, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end125.if.end128_crit_edge
  %nfs_export = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 9
  %48 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nfs_export, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool130.not = icmp eq i8 %49, 0
  br i1 %tobool130.not, label %if.end128.out_crit_edge, label %land.lhs.true131

if.end128.out_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true131:                                 ; preds = %if.end128
  %50 = ptrtoint ptr %index113 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %index113, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool134.not = icmp eq i8 %51, 0
  br i1 %tobool134.not, label %do.end138, label %land.lhs.true131.out_crit_edge

land.lhs.true131.out_crit_edge:                   ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end138:                                        ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #16
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #17
  %52 = ptrtoint ptr %nfs_export to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %nfs_export, align 2
  br label %out

out:                                              ; preds = %do.end138, %land.lhs.true131.out_crit_edge, %if.end128.out_crit_edge, %do.end105, %do.end93, %if.end33.out_crit_edge, %ovl_setup_trap.exit.thread.out_crit_edge, %ovl_setup_trap.exit.thread203, %if.end6.out_crit_edge, %if.end.out_crit_edge
  %err.2 = phi i32 [ %4, %if.end.out_crit_edge ], [ %call13, %ovl_setup_trap.exit.thread.out_crit_edge ], [ %call35, %if.end33.out_crit_edge ], [ -22, %do.end93 ], [ %call100, %do.end105 ], [ %err.1, %land.lhs.true131.out_crit_edge ], [ %err.1, %do.end138 ], [ %err.1, %if.end128.out_crit_edge ], [ -40, %ovl_setup_trap.exit.thread203 ], [ %spec.select.i.i, %if.end6.out_crit_edge ]
  tail call void @mnt_drop_write(ptr noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_workdir_create(ptr nocapture noundef readonly %ofs, ptr noundef %name, i1 noundef zeroext %persist) unnamed_addr #2 align 64 {
entry:
  %work = alloca ptr, align 4
  %attr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %workbasedir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 4
  %0 = ptrtoint ptr %workbasedir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workbasedir, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %4 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work) #14
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #14
  %8 = getelementptr inbounds { i32, i16, [2 x i8], %struct.kuid_t, %struct.kgid_t, i64, { i64, i32, [4 x i8] }, { i64, i32, [4 x i8] }, { i64, i32, [4 x i8] }, ptr, [4 x i8] }, ptr %attr, i32 0, i32 1
  br label %retry

retry:                                            ; preds = %cleanup.retry_crit_edge, %entry
  %retried.0.off0 = phi i1 [ false, %entry ], [ %retried.1.off0, %cleanup.retry_crit_edge ]
  %9 = ptrtoint ptr %workbasedir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workbasedir, align 4
  %call2 = tail call i32 @strlen(ptr noundef %name) #21
  %call3 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %10, i32 noundef %call2) #14
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %retry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr) #14
  %11 = call ptr @memset(ptr %attr, i32 0, i32 80)
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %attr, align 8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16384, ptr %8, align 4
  %d_inode5 = getelementptr inbounds %struct.dentry, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode5, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end16, label %if.then6

if.then6:                                         ; preds = %if.then
  %brmerge = or i1 %retried.0.off0, %persist
  %.mux = select i1 %retried.0.off0, i32 3, i32 4
  br i1 %brmerge, label %if.then6.cleanup_crit_edge, label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %call12 = tail call i32 @ovl_workdir_cleanup(ptr noundef %3, ptr noundef %7, ptr noundef %call3, i32 noundef 0) #14
  tail call void @dput(ptr noundef %call3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call12)
  %cmp = icmp eq i32 %call12, -22
  br i1 %cmp, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -22 to ptr), ptr %work, align 4
  br label %cleanup.thread89

if.end16:                                         ; preds = %if.then
  %17 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3, ptr %work, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %8, align 4
  %call17 = call i32 @ovl_mkdir_real(ptr noundef %3, ptr noundef nonnull %work, i16 noundef zeroext %19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup.thread_crit_edge

if.end16.cleanup.thread_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end16
  %20 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %work, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i, align 8
  %cmp.i79 = icmp eq ptr %23, null
  br i1 %cmp.i79, label %if.end20.cleanup.thread_crit_edge, label %if.end23

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end20
  %call24 = call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %21, ptr noundef nonnull @.str.171) #14
  %24 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %call24, label %if.end23.cleanup.thread_crit_edge [
    i32 0, label %if.end23.if.end30_crit_edge
    i32 -61, label %if.end23.if.end30_crit_edge140
    i32 -95, label %if.end23.if.end30_crit_edge141
  ]

if.end23.if.end30_crit_edge141:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end23.if.end30_crit_edge140:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end23.cleanup.thread_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end30:                                         ; preds = %if.end23.if.end30_crit_edge, %if.end23.if.end30_crit_edge140, %if.end23.if.end30_crit_edge141
  %25 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %work, align 4
  %call31 = call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %26, ptr noundef nonnull @.str.172) #14
  %27 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %call31, label %if.end30.cleanup.thread_crit_edge [
    i32 0, label %if.end30.if.end38_crit_edge
    i32 -61, label %if.end30.if.end38_crit_edge142
    i32 -95, label %if.end30.if.end38_crit_edge143
  ]

if.end30.if.end38_crit_edge143:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end30.if.end38_crit_edge142:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end30.cleanup.thread_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end38:                                         ; preds = %if.end30.if.end38_crit_edge, %if.end30.if.end38_crit_edge142, %if.end30.if.end38_crit_edge143
  %28 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %work, align 4
  %d_inode39 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode39, align 8
  %i_rwsem.i80 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i80) #14
  %32 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %work, align 4
  %call40 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %33, ptr noundef nonnull %attr, ptr noundef null) #14
  %34 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %work, align 4
  %d_inode41 = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %d_inode41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode41, align 8
  %i_rwsem.i81 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i81) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end38.cleanup.thread89_crit_edge, label %if.end38.cleanup.thread_crit_edge

if.end38.cleanup.thread_crit_edge:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end38.cleanup.thread89_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread89

cleanup.thread:                                   ; preds = %if.end38.cleanup.thread_crit_edge, %if.end30.cleanup.thread_crit_edge, %if.end23.cleanup.thread_crit_edge, %if.end20.cleanup.thread_crit_edge, %if.end16.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ %call40, %if.end38.cleanup.thread_crit_edge ], [ %call31, %if.end30.cleanup.thread_crit_edge ], [ %call24, %if.end23.cleanup.thread_crit_edge ], [ -22, %if.end20.cleanup.thread_crit_edge ], [ %call17, %if.end16.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr) #14
  br label %out_dput

cleanup.thread89:                                 ; preds = %if.end38.cleanup.thread89_crit_edge, %if.then13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr) #14
  br label %out_unlock

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %err.0 = phi i32 [ -17, %if.then6.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
  %retried.1.off0 = phi i1 [ %retried.0.off0, %if.then6.cleanup_crit_edge ], [ true, %if.end11.cleanup_crit_edge ]
  %cleanup.dest.slot.0 = phi i32 [ %.mux, %if.then6.cleanup_crit_edge ], [ 2, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr) #14
  %38 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup48_crit_edge [
    i32 3, label %out_dput.loopexit
    i32 2, label %cleanup.retry_crit_edge
    i32 4, label %out_unlock.loopexit
  ]

cleanup.retry_crit_edge:                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

cleanup.cleanup48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup48

if.else:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call3, ptr %work, align 4
  %40 = ptrtoint ptr %call3 to i32
  br label %do.end

out_unlock.loopexit:                              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call3, ptr %work, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %do.end, %out_unlock.loopexit, %cleanup.thread89
  call void @up_write(ptr noundef %i_rwsem.i) #14
  %42 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %work, align 4
  br label %cleanup48

out_dput.loopexit:                                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call3, ptr %work, align 4
  br label %out_dput

out_dput:                                         ; preds = %out_dput.loopexit, %cleanup.thread
  %err.086 = phi i32 [ %err.0.ph, %cleanup.thread ], [ %err.0, %out_dput.loopexit ]
  %45 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %work, align 4
  call void @dput(ptr noundef %46) #14
  br label %do.end

do.end:                                           ; preds = %out_dput, %if.else
  %err.1 = phi i32 [ %40, %if.else ], [ %err.086, %out_dput ]
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %workdir, align 4
  %sub = sub i32 0, %err.1
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %48, ptr noundef %name, i32 noundef %sub) #17
  %49 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %work, align 4
  br label %out_unlock

cleanup48:                                        ; preds = %out_unlock, %cleanup.cleanup48_crit_edge
  %retval.0 = phi ptr [ %43, %out_unlock ], [ undef, %cleanup.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_check_d_type_supported(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_check_rename_whiteout(ptr noundef %workdir) unnamed_addr #2 align 64 {
entry:
  %rd.i = alloca %struct.renamedata, align 4
  %name = alloca %struct.name_snapshot, align 8
  %.compoundliteral = alloca %struct.ovl_cattr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %workdir, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %name) #14
  %2 = call ptr @memset(ptr %name, i32 255, i32 56)
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #14
  %3 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %.compoundliteral, align 4
  %mode = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -32768, ptr %mode, align 4
  %link = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 2
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %link, align 4
  %hardlink = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 3
  %6 = ptrtoint ptr %hardlink to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hardlink, align 4
  %call1 = call ptr @ovl_create_temp(ptr noundef %workdir, ptr noundef nonnull %.compoundliteral) #14
  %7 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call4 = call ptr @ovl_lookup_temp(ptr noundef %workdir) #14
  %cmp.i52 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %call4 to i32
  br label %out_unlock.sink.split

if.end8:                                          ; preds = %if.end
  call void @take_dentry_name_snapshot(ptr noundef nonnull %name, ptr noundef %call1) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd.i) #14
  %9 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 4
  %13 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 5
  %14 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 6
  %15 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 7
  %16 = ptrtoint ptr %rd.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @init_user_ns, ptr %rd.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %9, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1, ptr %10, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @init_user_ns, ptr %11, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %12, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4, ptr %13, align 4
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %14, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %15, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_check_rename_whiteout, %if.then.i)) #14
          to label %do.end.i [label %if.then.i], !srcloc !513

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.181, ptr noundef %call1, ptr noundef %call4, i32 noundef 4) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end8
  %call4.i = call i32 @vfs_rename(ptr noundef nonnull %rd.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end13, label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_check_rename_whiteout, %if.then19.i)) #14
          to label %if.then10 [label %if.then19.i], !srcloc !513

if.then19.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.183, ptr noundef %call1, ptr noundef %call4, i32 noundef %call4.i) #14
  br label %if.then10

if.then10:                                        ; preds = %if.then19.i, %do.body7.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call4.i)
  %cmp = icmp eq i32 %call4.i, -22
  %spec.store.select = select i1 %cmp, i32 0, i32 %call4.i
  br label %cleanup_temp

if.end13:                                         ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd.i) #14
  %name15 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %24 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name15, align 8
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %name, align 8
  %call17 = call ptr @lookup_one_len(ptr noundef %25, ptr noundef %workdir, i32 noundef %27) #14
  %28 = ptrtoint ptr %call17 to i32
  %cmp.i53 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.end13.cleanup_temp_crit_edge, label %if.end21

if.end13.cleanup_temp_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_temp

if.end21:                                         ; preds = %if.end13
  %call22 = call zeroext i1 @ovl_is_whiteout(ptr noundef %call17) #14
  %conv = zext i1 %call22 to i32
  br i1 %call22, label %if.then24, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = call i32 @ovl_cleanup(ptr noundef %1, ptr noundef %call17) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  call void @dput(ptr noundef %call17) #14
  br label %cleanup_temp

cleanup_temp:                                     ; preds = %if.end26, %if.end13.cleanup_temp_crit_edge, %if.then10
  %err.0 = phi i32 [ %spec.store.select, %if.then10 ], [ %28, %if.end13.cleanup_temp_crit_edge ], [ %conv, %if.end26 ]
  %call27 = call i32 @ovl_cleanup(ptr noundef %1, ptr noundef %call1) #14
  call void @release_dentry_name_snapshot(ptr noundef nonnull %name) #14
  call void @dput(ptr noundef %call1) #14
  br label %out_unlock.sink.split

out_unlock.sink.split:                            ; preds = %cleanup_temp, %if.then7
  %call4.sink = phi ptr [ %call4, %cleanup_temp ], [ %call1, %if.then7 ]
  %err.1.ph = phi i32 [ %err.0, %cleanup_temp ], [ %8, %if.then7 ]
  call void @dput(ptr noundef %call4.sink) #14
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %entry.out_unlock_crit_edge
  %err.1 = phi i32 [ %7, %entry.out_unlock_crit_edge ], [ %err.1.ph, %out_unlock.sink.split ]
  call void @up_write(ptr noundef %i_rwsem.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %name) #14
  ret i32 %err.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_do_removexattr(ptr nocapture noundef readonly %ofs, ptr noundef %dentry) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %userxattr.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %0 = ptrtoint ptr %userxattr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %userxattr.i, align 1, !range !505
  %2 = zext i8 %1 to i32
  %arrayidx1.i = getelementptr [2 x ptr], ptr @ovl_xattr_table, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i, align 4
  %call1 = tail call i32 @vfs_removexattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %4) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_do_removexattr, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !513

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_removexattr.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.189, ptr noundef %dentry, ptr noundef %4, i32 noundef %call1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_remote(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_create_volatile_dirty(ptr nocapture noundef readonly %ofs) unnamed_addr #2 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.ovl_cattr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %workbasedir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 4
  %0 = ptrtoint ptr %workbasedir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workbasedir, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  %mode5.i = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral.i, i32 0, i32 1
  %link.i = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral.i, i32 0, i32 2
  %hardlink.i = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %dget.exit
  %name.017 = phi ptr [ @ovl_create_volatile_dirty.volatile_path, %dget.exit ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %d.016 = phi ptr [ %1, %dget.exit ], [ %child.0.i, %for.inc.for.body_crit_edge ]
  %ctr.015 = phi i32 [ 4, %dget.exit ], [ %dec, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %name.017 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.017, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ctr.015)
  %cmp.not = icmp eq i32 %ctr.015, 1
  %conv = select i1 %cmp.not, i16 -32768, i16 16384
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i)
  %call.i = call i32 @strlen(ptr noundef %3) #19
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %d.016, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #14
  %call1.i = call ptr @lookup_one_len(ptr noundef %3, ptr noundef %d.016, i32 noundef %call.i) #14
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.ovl_lookup_or_create.exit_crit_edge, label %land.lhs.true.i

for.body.ovl_lookup_or_create.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_lookup_or_create.exit

land.lhs.true.i:                                  ; preds = %for.body
  %d_inode3.i = getelementptr inbounds %struct.dentry, ptr %call1.i, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode3.i, align 8
  %tobool.not.i12 = icmp eq ptr %7, null
  br i1 %tobool.not.i12, label %if.then.i13, label %land.lhs.true.i.ovl_lookup_or_create.exit_crit_edge

land.lhs.true.i.ovl_lookup_or_create.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovl_lookup_or_create.exit

if.then.i13:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %10 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %.compoundliteral.i, align 4
  %11 = ptrtoint ptr %mode5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %mode5.i, align 4
  %12 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %link.i, align 4
  %13 = ptrtoint ptr %hardlink.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %hardlink.i, align 4
  %call6.i = call ptr @ovl_create_real(ptr noundef %9, ptr noundef %call1.i, ptr noundef nonnull %.compoundliteral.i) #14
  br label %ovl_lookup_or_create.exit

ovl_lookup_or_create.exit:                        ; preds = %if.then.i13, %land.lhs.true.i.ovl_lookup_or_create.exit_crit_edge, %for.body.ovl_lookup_or_create.exit_crit_edge
  %child.0.i = phi ptr [ %call1.i, %for.body.ovl_lookup_or_create.exit_crit_edge ], [ %call1.i, %land.lhs.true.i.ovl_lookup_or_create.exit_crit_edge ], [ %call6.i, %if.then.i13 ]
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i16.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i16.i) #14
  call void @dput(ptr noundef %d.016) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i)
  %cmp.i = icmp ugt ptr %child.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.inc

if.then:                                          ; preds = %ovl_lookup_or_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %child.0.i to i32
  br label %cleanup

for.inc:                                          ; preds = %ovl_lookup_or_create.exit
  %dec = add nsw i32 %ctr.015, -1
  %incdec.ptr = getelementptr ptr, ptr %name.017, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef %child.0.i) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_can_decode_fh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_workdir_cleanup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_mkdir_real(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_tmpfile(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_create_temp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_lookup_temp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_whiteout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rename(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_create_real(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_alloc_entry(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_anon_bdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_inuse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_check_origin_xattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_verify_set_fh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_indexdir_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_check_layer(ptr noundef %sb, ptr nocapture noundef readonly %ofs, ptr noundef %dentry, ptr noundef %name, i1 noundef zeroext %is_lower) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dget_parent(ptr noundef nonnull %dentry) #14
  %cmp.not24 = icmp eq ptr %call, %dentry
  br i1 %cmp.not24, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %index.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.lr.ph
  %parent.025 = phi ptr [ %call, %while.body.lr.ph ], [ %call11, %if.end10.while.body_crit_edge ]
  br i1 %is_lower, label %land.lhs.true, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %call3 = tail call zeroext i1 @ovl_lookup_trap_inode(ptr noundef %sb, ptr noundef %parent.025) #14
  br i1 %call3, label %land.lhs.true.if.end10.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.if.end10.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %call6 = tail call zeroext i1 @ovl_is_inuse(ptr noundef %parent.025) #14
  br i1 %call6, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %.str.136..str.133.i = select i1 %tobool.not.i, ptr @.str.136, ptr @.str.133
  %..i = select i1 %tobool.not.i, i32 0, i32 -16
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then7, %land.lhs.true.if.end10.sink.split_crit_edge
  %.str.136..str.133.i.sink = phi ptr [ %.str.136..str.133.i, %if.then7 ], [ @.str.233, %land.lhs.true.if.end10.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %..i, %if.then7 ], [ -40, %land.lhs.true.if.end10.sink.split_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.136..str.133.i.sink, ptr noundef %name) #17
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  %err.1 = phi i32 [ 0, %if.else.if.end10_crit_edge ], [ %err.1.ph, %if.end10.sink.split ]
  %call11 = tail call ptr @dget_parent(ptr noundef %parent.025) #14
  tail call void @dput(ptr noundef %parent.025) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool1.not = icmp ne i32 %err.1, 0
  %cmp.not = icmp eq ptr %call11, %parent.025
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %if.end.while.end_crit_edge
  %parent.0.lcssa = phi ptr [ %dentry, %if.end.while.end_crit_edge ], [ %call11, %if.end10.while.end_crit_edge ]
  %err.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %err.1, %if.end10.while.end_crit_edge ]
  tail call void @dput(ptr noundef %parent.0.lcssa) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.lcssa, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_lookup_trap_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_posix_acl_xattr_get(ptr nocapture noundef readonly %handler, ptr noundef %dentry, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr noundef %buffer, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 4
  %call = tail call i32 @ovl_xattr_get(ptr noundef %dentry, ptr noundef %inode, ptr noundef %1, ptr noundef %buffer, i32 noundef %size) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_posix_acl_xattr_set(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_workdir(ptr noundef %dentry) #14
  %call1 = tail call ptr @ovl_inode_real(ptr noundef %inode) #14
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %value, i32 noundef %size) #14
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup47

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %acl.0 = phi ptr [ %call2, %if.then.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  %and = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end6.out_acl_release_crit_edge, label %if.end10

if.end6.out_acl_release_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_acl_release

if.end10:                                         ; preds = %if.end6
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %7 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_op, align 8
  %set_acl = getelementptr inbounds %struct.inode_operations, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %set_acl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_acl, align 16
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end10.out_acl_release_crit_edge, label %if.end13

if.end10.out_acl_release_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_acl_release

if.end13:                                         ; preds = %if.end10
  %flags14 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %11 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %12)
  %cmp = icmp eq i32 %12, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %inode, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp16 = icmp eq i16 %15, 16384
  br i1 %cmp16, label %land.lhs.true.if.end20_crit_edge, label %if.then18

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %tobool19.not = icmp eq ptr %acl.0, null
  %cond = select i1 %tobool19.not, i32 0, i32 -13
  br label %out_acl_release

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %call21 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %inode) #14
  br i1 %call21, label %if.end23, label %if.end20.out_acl_release_crit_edge

if.end20.out_acl_release_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_acl_release

if.end23:                                         ; preds = %if.end20
  %tobool.not.i = icmp eq ptr %acl.0, null
  br i1 %tobool.not.i, label %if.end23.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

if.end23.posix_acl_release.exit_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl.0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !514
  tail call void @llvm.prefetch.p0(ptr nonnull %acl.0, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl.0, ptr nonnull %acl.0, i32 1, ptr nonnull elementtype(i32) %acl.0) #14, !srcloc !515
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !504

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl.0, i32 noundef 3) #14
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !516
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %acl.0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #14
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %if.end23.posix_acl_release.exit_crit_edge
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %inode, align 8
  %19 = and i16 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool27.not = icmp eq i16 %19, 0
  br i1 %tobool27.not, label %posix_acl_release.exit.if.end44_crit_edge, label %land.lhs.true30, !prof !504

posix_acl_release.exit.if.end44_crit_edge:        ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true30:                                  ; preds = %posix_acl_release.exit
  %20 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %21)
  %cmp32 = icmp eq i32 %21, 32768
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true30.if.end44_crit_edge

land.lhs.true30.if.end44_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %22 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack = load i32, ptr %i_gid, align 8
  %23 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call35 = tail call i32 @in_group_p([1 x i32] %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true34.if.end44_crit_edge

land.lhs.true34.if.end44_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %call38 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef 4) #14
  br i1 %call38, label %land.lhs.true37.if.end44_crit_edge, label %if.then39

land.lhs.true37.if.end44_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then39:                                        ; preds = %land.lhs.true37
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #14
  %24 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %25 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4096, ptr %iattr, align 8
  %call40 = call i32 @ovl_setattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull %iattr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #14
  br i1 %tobool41.not, label %if.then39.if.end44_crit_edge, label %if.then39.cleanup47_crit_edge

if.then39.cleanup47_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup47

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.end44:                                         ; preds = %if.then39.if.end44_crit_edge, %land.lhs.true37.if.end44_crit_edge, %land.lhs.true34.if.end44_crit_edge, %land.lhs.true30.if.end44_crit_edge, %posix_acl_release.exit.if.end44_crit_edge
  %26 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handler, align 4
  %call46 = call i32 @ovl_xattr_set(ptr noundef %dentry, ptr noundef %inode, ptr noundef %27, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #14
  br label %cleanup47

out_acl_release:                                  ; preds = %if.end20.out_acl_release_crit_edge, %if.then18, %if.end10.out_acl_release_crit_edge, %if.end6.out_acl_release_crit_edge
  %err.0 = phi i32 [ -1, %if.end20.out_acl_release_crit_edge ], [ %cond, %if.then18 ], [ -95, %if.end10.out_acl_release_crit_edge ], [ -95, %if.end6.out_acl_release_crit_edge ]
  %tobool.not.i72 = icmp eq ptr %acl.0, null
  br i1 %tobool.not.i72, label %out_acl_release.cleanup47_crit_edge, label %land.lhs.true.i76

out_acl_release.cleanup47_crit_edge:              ; preds = %out_acl_release
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup47

land.lhs.true.i76:                                ; preds = %out_acl_release
  %call.i.i.i.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl.0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !514
  tail call void @llvm.prefetch.p0(ptr nonnull %acl.0, i32 1, i32 3, i32 1) #14
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl.0, ptr nonnull %acl.0, i32 1, ptr nonnull elementtype(i32) %acl.0) #14, !srcloc !515
  %asmresult.i.i.i.i.i.i.i74 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i74)
  %cmp.i.i.i.i75 = icmp eq i32 %asmresult.i.i.i.i.i.i.i74, 1
  br i1 %cmp.i.i.i.i75, label %do.end.i81, label %if.end5.i.i.i.i78

if.end5.i.i.i.i78:                                ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i74)
  %.not.i.i.i.i77 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i74, 0
  br i1 %.not.i.i.i.i77, label %if.end5.i.i.i.i78.cleanup47_crit_edge, label %if.then10.i.i.i.i79, !prof !504

if.end5.i.i.i.i78.cleanup47_crit_edge:            ; preds = %if.end5.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup47

if.then10.i.i.i.i79:                              ; preds = %if.end5.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl.0, i32 noundef 3) #14
  br label %cleanup47

do.end.i81:                                       ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !516
  %a_rcu.i80 = getelementptr inbounds %struct.posix_acl, ptr %acl.0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i80, ptr noundef nonnull inttoptr (i32 4 to ptr)) #14
  br label %cleanup47

cleanup47:                                        ; preds = %do.end.i81, %if.then10.i.i.i.i79, %if.end5.i.i.i.i78.cleanup47_crit_edge, %out_acl_release.cleanup47_crit_edge, %if.end44, %if.then39.cleanup47_crit_edge, %if.then4
  %retval.1 = phi i32 [ %0, %if.then4 ], [ %call46, %if.end44 ], [ %call40, %if.then39.cleanup47_crit_edge ], [ %err.0, %out_acl_release.cleanup47_crit_edge ], [ %err.0, %if.end5.i.i.i.i78.cleanup47_crit_edge ], [ %err.0, %if.then10.i.i.i.i79 ], [ %err.0, %do.end.i81 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_xattr_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_workdir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_real(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_xattr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ovl_own_xattr_get(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef readnone %buffer, i32 noundef %size) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ovl_own_xattr_set(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef readnone %value, i32 noundef %size, i32 noundef %flags) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_other_xattr_get(ptr nocapture noundef readnone %handler, ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ovl_xattr_get(ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_other_xattr_set(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ovl_xattr_set(ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_new_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_upper_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_flag(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_set_upperdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_inode_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_update_reval(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_check_dir_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_inuse_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_anon_bdev(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovl_inode_init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ovl_inode, ptr %foo, i32 0, i32 4
  tail call void @inode_init_once(ptr noundef %vfs_inode) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ovl_aio_request_cache_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 234)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 234)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !217, !219, !221, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !313, !315, !316, !317, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !362, !364, !365, !366, !367, !369, !370, !371, !372, !373, !375, !376, !377, !378, !380, !381, !382, !384, !385, !386, !387, !389, !390, !391, !392, !394, !396, !398, !400, !401, !402, !403, !405, !406, !407, !409, !410, !411, !412, !414, !415, !416, !418, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !438, !439, !440, !442, !443, !444, !446, !447, !448, !449, !451, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492}
!llvm.named.register.sp = !{!494}
!llvm.module.flags = !{!495, !496, !497, !498, !499, !500, !501, !502}
!llvm.ident = !{!503}

!0 = !{ptr @__UNIQUE_ID_author248, !1, !"__UNIQUE_ID_author248", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/super.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description249, !3, !"__UNIQUE_ID_description249", i1 false, i1 false}
!3 = !{!"../fs/overlayfs/super.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file250, !5, !"__UNIQUE_ID_file250", i1 false, i1 false}
!5 = !{!"../fs/overlayfs/super.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license251, !5, !"__UNIQUE_ID_license251", i1 false, i1 false}
!7 = !{ptr @__param_redirect_dir, !8, !"__param_redirect_dir", i1 false, i1 false}
!8 = !{!"../fs/overlayfs/super.c", i32 30, i32 1}
!9 = !{ptr @__UNIQUE_ID_redirect_dirtype252, !8, !"__UNIQUE_ID_redirect_dirtype252", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_redirect_dir253, !11, !"__UNIQUE_ID_redirect_dir253", i1 false, i1 false}
!11 = !{!"../fs/overlayfs/super.c", i32 31, i32 1}
!12 = !{ptr @__param_redirect_always_follow, !13, !"__param_redirect_always_follow", i1 false, i1 false}
!13 = !{!"../fs/overlayfs/super.c", i32 36, i32 1}
!14 = !{ptr @__UNIQUE_ID_redirect_always_followtype254, !13, !"__UNIQUE_ID_redirect_always_followtype254", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_redirect_always_follow255, !16, !"__UNIQUE_ID_redirect_always_follow255", i1 false, i1 false}
!16 = !{!"../fs/overlayfs/super.c", i32 38, i32 1}
!17 = !{ptr @__param_index, !18, !"__param_index", i1 false, i1 false}
!18 = !{!"../fs/overlayfs/super.c", i32 42, i32 1}
!19 = !{ptr @__UNIQUE_ID_indextype256, !18, !"__UNIQUE_ID_indextype256", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_index257, !21, !"__UNIQUE_ID_index257", i1 false, i1 false}
!21 = !{!"../fs/overlayfs/super.c", i32 43, i32 1}
!22 = !{ptr @__param_nfs_export, !23, !"__param_nfs_export", i1 false, i1 false}
!23 = !{!"../fs/overlayfs/super.c", i32 47, i32 1}
!24 = !{ptr @__UNIQUE_ID_nfs_exporttype258, !23, !"__UNIQUE_ID_nfs_exporttype258", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_nfs_export259, !26, !"__UNIQUE_ID_nfs_export259", i1 false, i1 false}
!26 = !{!"../fs/overlayfs/super.c", i32 48, i32 1}
!27 = !{ptr @__param_xino_auto, !28, !"__param_xino_auto", i1 false, i1 false}
!28 = !{!"../fs/overlayfs/super.c", i32 52, i32 1}
!29 = !{ptr @__UNIQUE_ID_xino_autotype260, !28, !"__UNIQUE_ID_xino_autotype260", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_xino_auto261, !31, !"__UNIQUE_ID_xino_auto261", i1 false, i1 false}
!31 = !{!"../fs/overlayfs/super.c", i32 53, i32 1}
!32 = !{ptr @__param_metacopy, !33, !"__param_metacopy", i1 false, i1 false}
!33 = !{!"../fs/overlayfs/super.c", i32 65, i32 1}
!34 = !{ptr @__UNIQUE_ID_metacopytype262, !33, !"__UNIQUE_ID_metacopytype262", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_metacopy263, !36, !"__UNIQUE_ID_metacopy263", i1 false, i1 false}
!36 = !{!"../fs/overlayfs/super.c", i32 66, i32 1}
!37 = !{ptr @__UNIQUE_ID_alias270, !38, !"__UNIQUE_ID_alias270", i1 false, i1 false}
!38 = !{!"../fs/overlayfs/super.c", i32 2172, i32 1}
!39 = !{ptr @__initcall__kmod_overlay__271_2219_ovl_init6, !40, !"__initcall__kmod_overlay__271_2219_ovl_init6", i1 false, i1 false}
!40 = !{!"../fs/overlayfs/super.c", i32 2219, i32 1}
!41 = !{ptr @__exitcall_ovl_exit, !42, !"__exitcall_ovl_exit", i1 false, i1 false}
!42 = !{!"../fs/overlayfs/super.c", i32 2220, i32 1}
!43 = !{ptr @ovl_inode_cachep, !44, !"ovl_inode_cachep", i1 false, i1 false}
!44 = !{!"../fs/overlayfs/super.c", i32 173, i32 27}
!45 = !{ptr @__param_str_redirect_dir, !8, !"__param_str_redirect_dir", i1 false, i1 false}
!46 = !{ptr @ovl_redirect_dir_def, !47, !"ovl_redirect_dir_def", i1 false, i1 false}
!47 = !{!"../fs/overlayfs/super.c", i32 29, i32 13}
!48 = !{ptr @__param_str_redirect_always_follow, !13, !"__param_str_redirect_always_follow", i1 false, i1 false}
!49 = !{ptr @ovl_redirect_always_follow, !50, !"ovl_redirect_always_follow", i1 false, i1 false}
!50 = !{!"../fs/overlayfs/super.c", i32 34, i32 13}
!51 = !{ptr @__param_str_index, !18, !"__param_str_index", i1 false, i1 false}
!52 = !{ptr @ovl_index_def, !53, !"ovl_index_def", i1 false, i1 false}
!53 = !{!"../fs/overlayfs/super.c", i32 41, i32 13}
!54 = !{ptr @__param_str_nfs_export, !23, !"__param_str_nfs_export", i1 false, i1 false}
!55 = !{ptr @ovl_nfs_export_def, !56, !"ovl_nfs_export_def", i1 false, i1 false}
!56 = !{!"../fs/overlayfs/super.c", i32 46, i32 13}
!57 = !{ptr @__param_str_xino_auto, !28, !"__param_str_xino_auto", i1 false, i1 false}
!58 = !{ptr @ovl_xino_auto_def, !59, !"ovl_xino_auto_def", i1 false, i1 false}
!59 = !{!"../fs/overlayfs/super.c", i32 51, i32 13}
!60 = !{ptr @__param_str_metacopy, !33, !"__param_str_metacopy", i1 false, i1 false}
!61 = !{ptr @ovl_metacopy_def, !62, !"ovl_metacopy_def", i1 false, i1 false}
!62 = !{!"../fs/overlayfs/super.c", i32 64, i32 13}
!63 = !{ptr @.str, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/overlayfs/super.c", i32 2167, i32 11}
!65 = !{ptr @ovl_fs_type, !66, !"ovl_fs_type", i1 false, i1 false}
!66 = !{!"../fs/overlayfs/super.c", i32 2165, i32 32}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../fs/overlayfs/super.c", i32 1977, i32 6}
!69 = !{ptr @.str.1, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.2, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/overlayfs/super.c", i32 2007, i32 4}
!72 = !{ptr @.str.3, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ovl_fill_super._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ovl_fill_super._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.5, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/overlayfs/super.c", i32 2019, i32 3}
!77 = !{ptr @ovl_fill_super._entry.4, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ovl_fill_super._entry_ptr.6, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.8, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/overlayfs/super.c", i32 2040, i32 4}
!81 = !{ptr @ovl_fill_super._entry.7, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ovl_fill_super._entry_ptr.9, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.11, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/overlayfs/super.c", i32 2053, i32 4}
!85 = !{ptr @ovl_fill_super._entry.10, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ovl_fill_super._entry_ptr.12, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.14, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/overlayfs/super.c", i32 2066, i32 5}
!89 = !{ptr @ovl_fill_super._entry.13, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ovl_fill_super._entry_ptr.15, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.17, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/overlayfs/super.c", i32 2091, i32 3}
!93 = !{ptr @ovl_fill_super._entry.16, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ovl_fill_super._entry_ptr.18, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/overlayfs/super.c", i32 2113, i32 4}
!97 = !{ptr @ovl_fill_super._entry.19, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ovl_fill_super._entry_ptr.21, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/overlayfs/super.c", i32 2119, i32 3}
!101 = !{ptr @ovl_fill_super._entry.22, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ovl_fill_super._entry_ptr.24, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @ovl_dentry_operations, !104, !"ovl_dentry_operations", i1 false, i1 false}
!104 = !{!"../fs/overlayfs/super.c", i32 166, i32 39}
!105 = !{ptr @.str.25, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/overlayfs/super.c", i32 112, i32 2}
!107 = !{ptr @__func__.ovl_d_real, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.27, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/overlayfs/super.c", i32 623, i32 4}
!111 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ovl_parse_opt._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ovl_parse_opt._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/overlayfs/super.c", i32 632, i32 4}
!116 = !{ptr @ovl_parse_opt._entry.29, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ovl_parse_opt._entry_ptr.31, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.33, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/overlayfs/super.c", i32 638, i32 4}
!120 = !{ptr @ovl_parse_opt._entry.32, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ovl_parse_opt._entry_ptr.34, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/overlayfs/super.c", i32 645, i32 3}
!124 = !{ptr @ovl_parse_opt._entry.35, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ovl_parse_opt._entry_ptr.37, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/overlayfs/super.c", i32 663, i32 4}
!128 = !{ptr @ovl_parse_opt._entry.38, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ovl_parse_opt._entry_ptr.40, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/overlayfs/super.c", i32 672, i32 4}
!132 = !{ptr @ovl_parse_opt._entry.41, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ovl_parse_opt._entry_ptr.43, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/overlayfs/super.c", i32 684, i32 4}
!136 = !{ptr @ovl_parse_opt._entry.44, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ovl_parse_opt._entry_ptr.46, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/overlayfs/super.c", i32 687, i32 4}
!140 = !{ptr @ovl_parse_opt._entry.47, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ovl_parse_opt._entry_ptr.49, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/overlayfs/super.c", i32 694, i32 4}
!144 = !{ptr @ovl_parse_opt._entry.50, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ovl_parse_opt._entry_ptr.52, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/overlayfs/super.c", i32 705, i32 4}
!148 = !{ptr @ovl_parse_opt._entry.53, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ovl_parse_opt._entry_ptr.55, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/overlayfs/super.c", i32 713, i32 4}
!152 = !{ptr @ovl_parse_opt._entry.56, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ovl_parse_opt._entry_ptr.58, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/overlayfs/super.c", i32 720, i32 4}
!156 = !{ptr @ovl_parse_opt._entry.59, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ovl_parse_opt._entry_ptr.61, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/overlayfs/super.c", i32 729, i32 4}
!160 = !{ptr @ovl_parse_opt._entry.62, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ovl_parse_opt._entry_ptr.64, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/overlayfs/super.c", i32 734, i32 4}
!164 = !{ptr @ovl_parse_opt._entry.65, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ovl_parse_opt._entry_ptr.67, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/overlayfs/super.c", i32 335, i32 32}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/overlayfs/super.c", i32 335, i32 39}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/overlayfs/super.c", i32 444, i32 19}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/overlayfs/super.c", i32 445, i32 19}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/overlayfs/super.c", i32 446, i32 18}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/overlayfs/super.c", i32 447, i32 28}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/overlayfs/super.c", i32 448, i32 22}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/overlayfs/super.c", i32 449, i32 19}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/overlayfs/super.c", i32 450, i32 20}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/overlayfs/super.c", i32 451, i32 20}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/overlayfs/super.c", i32 452, i32 18}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/overlayfs/super.c", i32 453, i32 19}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/overlayfs/super.c", i32 454, i32 23}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/overlayfs/super.c", i32 455, i32 24}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/overlayfs/super.c", i32 456, i32 18}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/overlayfs/super.c", i32 457, i32 19}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/overlayfs/super.c", i32 458, i32 20}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/overlayfs/super.c", i32 459, i32 21}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/overlayfs/super.c", i32 460, i32 22}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/overlayfs/super.c", i32 461, i32 19}
!206 = !{ptr @ovl_tokens, !207, !"ovl_tokens", i1 false, i1 false}
!207 = !{!"../fs/overlayfs/super.c", i32 443, i32 28}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/overlayfs/super.c", i32 497, i32 26}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/overlayfs/super.c", i32 502, i32 26}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/overlayfs/super.c", i32 503, i32 3}
!214 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @ovl_parse_redirect_mode._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @ovl_parse_redirect_mode._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @ovl_super_operations, !218, !"ovl_super_operations", i1 false, i1 false}
!218 = !{!"../fs/overlayfs/super.c", i32 409, i32 38}
!219 = !{ptr @ovl_alloc_inode.__key, !220, !"__key", i1 false, i1 false}
!220 = !{!"../fs/overlayfs/super.c", i32 189, i32 2}
!221 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.93, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/overlayfs/super.c", i32 360, i32 21}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/overlayfs/super.c", i32 362, i32 22}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/overlayfs/super.c", i32 363, i32 22}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/overlayfs/super.c", i32 366, i32 15}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/overlayfs/super.c", i32 368, i32 17}
!232 = !{ptr @.str.98, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/overlayfs/super.c", i32 370, i32 17}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/overlayfs/super.c", i32 372, i32 15}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/overlayfs/super.c", i32 374, i32 17}
!238 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/overlayfs/super.c", i32 377, i32 17}
!240 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/overlayfs/super.c", i32 379, i32 17}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/overlayfs/super.c", i32 382, i32 15}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/overlayfs/super.c", i32 384, i32 15}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!250 = !{ptr @.str.107, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/overlayfs/super.c", i32 340, i32 2}
!252 = !{ptr @ovl_xino_str, !253, !"ovl_xino_str", i1 false, i1 false}
!253 = !{!"../fs/overlayfs/super.c", i32 338, i32 27}
!254 = !{ptr @.str.108, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/overlayfs/super.c", i32 1203, i32 3}
!256 = !{ptr @.str.109, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @ovl_get_upper._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @ovl_get_upper._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.111, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/overlayfs/super.c", i32 1220, i32 3}
!261 = !{ptr @ovl_get_upper._entry.110, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ovl_get_upper._entry_ptr.112, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.113, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/overlayfs/super.c", i32 902, i32 4}
!265 = !{ptr @.str.114, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @ovl_mount_dir._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @ovl_mount_dir._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/overlayfs/super.c", i32 863, i32 3}
!270 = !{ptr @.str.116, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @ovl_mount_dir_noesc._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @ovl_mount_dir_noesc._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.118, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/overlayfs/super.c", i32 868, i32 3}
!275 = !{ptr @ovl_mount_dir_noesc._entry.117, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @ovl_mount_dir_noesc._entry_ptr.119, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/overlayfs/super.c", i32 873, i32 3}
!279 = !{ptr @ovl_mount_dir_noesc._entry.120, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @ovl_mount_dir_noesc._entry_ptr.122, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.124, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/overlayfs/super.c", i32 877, i32 3}
!283 = !{ptr @ovl_mount_dir_noesc._entry.123, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @ovl_mount_dir_noesc._entry_ptr.125, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/overlayfs/super.c", i32 881, i32 3}
!287 = !{ptr @ovl_mount_dir_noesc._entry.126, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @ovl_mount_dir_noesc._entry_ptr.128, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/overlayfs/super.c", i32 919, i32 3}
!291 = !{ptr @.str.130, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @ovl_check_namelen._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @ovl_check_namelen._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.131, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/overlayfs/super.c", i32 1164, i32 4}
!296 = !{ptr @.str.132, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @ovl_setup_trap._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @ovl_setup_trap._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.133, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/overlayfs/super.c", i32 1181, i32 3}
!301 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @ovl_report_in_use._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @ovl_report_in_use._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.136, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/overlayfs/super.c", i32 1185, i32 3}
!306 = !{ptr @ovl_report_in_use._entry.135, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @ovl_report_in_use._entry_ptr.137, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.138, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/overlayfs/super.c", i32 1492, i32 3}
!310 = !{ptr @.str.139, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @ovl_get_workdir._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @ovl_get_workdir._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.141, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/overlayfs/super.c", i32 1496, i32 3}
!315 = !{ptr @ovl_get_workdir._entry.140, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @ovl_get_workdir._entry_ptr.142, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.143, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/overlayfs/super.c", i32 1368, i32 36}
!319 = !{ptr @.str.144, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/overlayfs/super.c", i32 1391, i32 3}
!321 = !{ptr @.str.145, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @ovl_make_workdir._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @ovl_make_workdir._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.147, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/overlayfs/super.c", i32 1399, i32 3}
!326 = !{ptr @ovl_make_workdir._entry.146, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @ovl_make_workdir._entry_ptr.148, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.150, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/overlayfs/super.c", i32 1409, i32 3}
!330 = !{ptr @ovl_make_workdir._entry.149, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @ovl_make_workdir._entry_ptr.151, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.152, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/overlayfs/super.c", i32 1414, i32 61}
!334 = !{ptr @.str.154, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/overlayfs/super.c", i32 1420, i32 4}
!336 = !{ptr @ovl_make_workdir._entry.153, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @ovl_make_workdir._entry_ptr.155, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.157, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/overlayfs/super.c", i32 1428, i32 4}
!340 = !{ptr @ovl_make_workdir._entry.156, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @ovl_make_workdir._entry_ptr.158, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.160, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/overlayfs/super.c", i32 1442, i32 3}
!344 = !{ptr @ovl_make_workdir._entry.159, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @ovl_make_workdir._entry_ptr.161, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.163, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/overlayfs/super.c", i32 1454, i32 4}
!348 = !{ptr @ovl_make_workdir._entry.162, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @ovl_make_workdir._entry_ptr.164, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.166, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/overlayfs/super.c", i32 1463, i32 3}
!352 = !{ptr @ovl_make_workdir._entry.165, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @ovl_make_workdir._entry_ptr.167, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.169, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/overlayfs/super.c", i32 1472, i32 3}
!356 = !{ptr @ovl_make_workdir._entry.168, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @ovl_make_workdir._entry_ptr.170, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.171, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/overlayfs/super.c", i32 813, i32 11}
!360 = !{ptr @.str.172, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/overlayfs/super.c", i32 818, i32 11}
!362 = !{ptr @.str.173, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/overlayfs/super.c", i32 839, i32 2}
!364 = !{ptr @.str.174, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @ovl_workdir_create._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @ovl_workdir_create._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.175, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../fs/overlayfs/overlayfs.h", i32 254, i32 2}
!369 = !{ptr @.str.176, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.177, !368, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @ovl_do_tmpfile.__UNIQUE_ID_ddebug247, !368, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!372 = !{ptr @.str.178, !368, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.179, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/overlayfs/overlayfs.h", i32 233, i32 2}
!375 = !{ptr @.str.180, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @ovl_do_rename.__UNIQUE_ID_ddebug244, !374, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!377 = !{ptr @.str.181, !374, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.182, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../fs/overlayfs/overlayfs.h", i32 236, i32 3}
!380 = !{ptr @ovl_do_rename.__UNIQUE_ID_ddebug245, !379, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!381 = !{ptr @.str.183, !379, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.184, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/overlayfs/overlayfs.h", i32 204, i32 2}
!384 = !{ptr @.str.185, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug240, !383, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!386 = !{ptr @.str.186, !383, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.187, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../fs/overlayfs/overlayfs.h", i32 214, i32 2}
!389 = !{ptr @.str.188, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @ovl_do_removexattr.__UNIQUE_ID_ddebug243, !388, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!391 = !{ptr @.str.189, !388, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.190, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../fs/overlayfs/super.c", i32 1341, i32 21}
!394 = !{ptr @.str.191, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/overlayfs/super.c", i32 1341, i32 45}
!396 = !{ptr @ovl_create_volatile_dirty.volatile_path, !397, !"volatile_path", i1 false, i1 false}
!397 = !{!"../fs/overlayfs/super.c", i32 1340, i32 27}
!398 = !{ptr @.str.192, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/overlayfs/super.c", i32 1803, i32 3}
!400 = !{ptr @.str.193, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @ovl_get_lowerstack._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @ovl_get_lowerstack._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.195, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../fs/overlayfs/super.c", i32 1823, i32 3}
!405 = !{ptr @ovl_get_lowerstack._entry.194, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @ovl_get_lowerstack._entry_ptr.196, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.197, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../fs/overlayfs/super.c", i32 951, i32 3}
!409 = !{ptr @.str.198, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @ovl_lower_dir._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @ovl_lower_dir._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.200, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../fs/overlayfs/super.c", i32 961, i32 3}
!414 = !{ptr @ovl_lower_dir._entry.199, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @ovl_lower_dir._entry_ptr.201, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.202, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../fs/overlayfs/super.c", i32 1696, i32 3}
!418 = !{ptr @.str.203, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @ovl_get_layers._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @ovl_get_layers._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.205, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../fs/overlayfs/super.c", i32 1736, i32 4}
!423 = !{ptr @ovl_get_layers._entry.204, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @ovl_get_layers._entry_ptr.206, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.208, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../fs/overlayfs/super.c", i32 1767, i32 4}
!427 = !{ptr @ovl_get_layers._entry.207, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @ovl_get_layers._entry_ptr.209, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.211, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../fs/overlayfs/super.c", i32 1784, i32 3}
!431 = !{ptr @ovl_get_layers._entry.210, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @ovl_get_layers._entry_ptr.212, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.213, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../fs/overlayfs/super.c", i32 1653, i32 4}
!435 = !{ptr @.str.214, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @ovl_get_fsid._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @ovl_get_fsid._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.215, !434, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.216, !434, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.218, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../fs/overlayfs/super.c", i32 1662, i32 3}
!442 = !{ptr @ovl_get_fsid._entry.217, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @ovl_get_fsid._entry_ptr.219, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.220, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../fs/overlayfs/super.c", i32 1538, i32 3}
!446 = !{ptr @.str.221, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @ovl_get_indexdir._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @ovl_get_indexdir._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.222, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../fs/overlayfs/super.c", i32 1547, i32 37}
!451 = !{ptr @.str.223, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../fs/overlayfs/super.c", i32 1555, i32 10}
!453 = !{ptr @.str.225, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../fs/overlayfs/super.c", i32 1572, i32 5}
!455 = !{ptr @ovl_get_indexdir._entry.224, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @ovl_get_indexdir._entry_ptr.226, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.228, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../fs/overlayfs/super.c", i32 1577, i32 4}
!459 = !{ptr @ovl_get_indexdir._entry.227, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @ovl_get_indexdir._entry_ptr.229, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.231, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../fs/overlayfs/super.c", i32 1584, i32 3}
!463 = !{ptr @ovl_get_indexdir._entry.230, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @ovl_get_indexdir._entry_ptr.232, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.233, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../fs/overlayfs/super.c", i32 1874, i32 4}
!467 = !{ptr @.str.234, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @ovl_check_layer._entry, !466, !"_entry", i1 false, i1 false}
!469 = !{ptr @ovl_check_layer._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @ovl_user_xattr_handlers, !471, !"ovl_user_xattr_handlers", i1 false, i1 false}
!471 = !{!"../fs/overlayfs/super.c", i32 1144, i32 36}
!472 = !{ptr @ovl_posix_acl_access_xattr_handler, !473, !"ovl_posix_acl_access_xattr_handler", i1 false, i1 false}
!473 = !{!"../fs/overlayfs/super.c", i32 1101, i32 1}
!474 = !{ptr @ovl_posix_acl_default_xattr_handler, !475, !"ovl_posix_acl_default_xattr_handler", i1 false, i1 false}
!475 = !{!"../fs/overlayfs/super.c", i32 1109, i32 1}
!476 = !{ptr @.str.235, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../fs/overlayfs/super.c", i32 1123, i32 12}
!478 = !{ptr @ovl_own_user_xattr_handler, !479, !"ovl_own_user_xattr_handler", i1 false, i1 false}
!479 = !{!"../fs/overlayfs/super.c", i32 1122, i32 35}
!480 = !{ptr @.str.236, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../fs/overlayfs/super.c", i32 1129, i32 12}
!482 = !{ptr @ovl_other_xattr_handler, !483, !"ovl_other_xattr_handler", i1 false, i1 false}
!483 = !{!"../fs/overlayfs/super.c", i32 1128, i32 35}
!484 = !{ptr @ovl_trusted_xattr_handlers, !485, !"ovl_trusted_xattr_handlers", i1 false, i1 false}
!485 = !{!"../fs/overlayfs/super.c", i32 1134, i32 36}
!486 = !{ptr @.str.237, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../fs/overlayfs/super.c", i32 1117, i32 12}
!488 = !{ptr @ovl_own_trusted_xattr_handler, !489, !"ovl_own_trusted_xattr_handler", i1 false, i1 false}
!489 = !{!"../fs/overlayfs/super.c", i32 1116, i32 35}
!490 = !{ptr @.str.238, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../include/linux/cred.h", i32 286, i32 3}
!492 = !{ptr @.str.239, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../fs/overlayfs/super.c", i32 2185, i32 39}
!494 = !{!"sp"}
!495 = !{i32 1, !"wchar_size", i32 2}
!496 = !{i32 1, !"min_enum_size", i32 4}
!497 = !{i32 8, !"branch-target-enforcement", i32 0}
!498 = !{i32 8, !"sign-return-address", i32 0}
!499 = !{i32 8, !"sign-return-address-all", i32 0}
!500 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!501 = !{i32 7, !"uwtable", i32 1}
!502 = !{i32 7, !"frame-pointer", i32 2}
!503 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!504 = !{!"branch_weights", i32 2000, i32 1}
!505 = !{i8 0, i8 2}
!506 = !{!"branch_weights", i32 1, i32 2000}
!507 = !{!"auto-init"}
!508 = !{i32 0, i32 33}
!509 = !{i64 2148798161}
!510 = !{i64 2148712870, i64 2148712902, i64 2148712931, i64 2148712965, i64 2148712996, i64 2148713019}
!511 = !{i64 2148798390}
!512 = !{i64 2152461145}
!513 = !{i64 2148534283, i64 2148534288, i64 2148534301, i64 2148534345, i64 2148534379, i64 2148534400}
!514 = !{i64 2148799240}
!515 = !{i64 2148713680, i64 2148713712, i64 2148713741, i64 2148713775, i64 2148713806, i64 2148713829}
!516 = !{i64 2150420329}
