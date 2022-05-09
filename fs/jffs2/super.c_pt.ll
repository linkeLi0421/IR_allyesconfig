; ModuleID = '/llk/IR_all_yes/fs/jffs2/super.c_pt.bc'
source_filename = "../fs/jffs2/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.fs_parse_result = type { i8, %union.anon.86 }
%union.anon.86 = type { i64 }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.84, %struct.list_head, %struct.list_head, %union.anon.85 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.spinlock, i32 }
%union.anon.84 = type { %struct.list_head }
%union.anon.85 = type { %struct.hlist_node }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.75 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.75 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.81 = type { ptr }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
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
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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

@__UNIQUE_ID_alias250 = internal constant [21 x i8] c"jffs2.alias=fs-jffs2\00", section ".modinfo", align 1
@jffs2_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 0, ptr @jffs2_init_fs_context, ptr @jffs2_fs_parameters, ptr null, ptr @jffs2_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@jffs2_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_jffs2__255_435_init_jffs2_fs6 = internal global ptr @init_jffs2_fs, section ".initcall6.init", align 4
@__exitcall_exit_jffs2_fs = internal global ptr @exit_jffs2_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_description256 = internal constant [56 x i8] c"jffs2.description=The Journalling Flash File System, v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [27 x i8] c"jffs2.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [26 x i8] c"jffs2.file=fs/jffs2/jffs2\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [18 x i8] c"jffs2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"jffs2\00", [26 x i8] zeroinitializer }, align 32
@jffs2_fs_parameters = internal constant { [3 x %struct.fs_parameter_spec], [48 x i8] } { [3 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.23, ptr @fs_param_is_enum, i8 0, i16 0, ptr @jffs2_param_compr }, %struct.fs_parameter_spec { ptr @.str.24, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@jffs2_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @jffs2_free_fc, ptr null, ptr @jffs2_parse_param, ptr null, ptr @jffs2_get_tree, ptr @jffs2_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"jffs2: rp_size unrepresentable\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"jffs2: Too large reserve pool specified, max is %llu KB\00", [40 x i8] zeroinitializer }, align 32
@jffs2_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c->alloc_sem\00", [18 x i8] zeroinitializer }, align 32
@jffs2_fill_super.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&c->erase_free_sem\00", [45 x i8] zeroinitializer }, align 32
@jffs2_fill_super.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&c->erase_wait\00", [17 x i8] zeroinitializer }, align 32
@jffs2_fill_super.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&c->inocache_wq\00", [16 x i8] zeroinitializer }, align 32
@jffs2_fill_super.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&c->erase_completion_lock\00", [38 x i8] zeroinitializer }, align 32
@jffs2_fill_super.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&c->inocache_lock\00", [46 x i8] zeroinitializer }, align 32
@jffs2_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @jffs2_alloc_inode, ptr null, ptr @jffs2_free_inode, ptr @jffs2_dirty_inode, ptr null, ptr null, ptr @jffs2_evict_inode, ptr @jffs2_put_super, ptr @jffs2_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @jffs2_statfs, ptr null, ptr null, ptr @jffs2_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@jffs2_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @jffs2_fh_to_dentry, ptr @jffs2_fh_to_parent, ptr null, ptr @jffs2_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@jffs2_xattr_handlers = external dso_local global [0 x ptr], align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",compr=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",rp_size=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zlib\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jffs2/super.c\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@jffs2_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.19, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017[JFFS2 DBG] (%d) %s: Parent of directory ino #%u is #%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jffs2_get_parent\00", [47 x i8] zeroinitializer }, align 32
@jffs2_get_parent._entry_ptr = internal global ptr @jffs2_get_parent._entry, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"compr\00", [26 x i8] zeroinitializer }, align 32
@jffs2_param_compr = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.16, i32 0 }, %struct.constant_table { ptr @.str.17, i32 4 }, %struct.constant_table { ptr @.str.18, i32 5 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rp_size\00", [24 x i8] zeroinitializer }, align 32
@init_jffs2_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.19, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016jffs2: version 2.2. (NAND) (SUMMARY)  \C2\A9 2001-2006 Red Hat, Inc.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_jffs2_fs\00", [18 x i8] zeroinitializer }, align 32
@init_jffs2_fs._entry_ptr = internal global ptr @init_jffs2_fs._entry, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jffs2_i\00", [24 x i8] zeroinitializer }, align 32
@init_jffs2_fs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.19, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013jffs2: error: Failed to initialise inode cache\0A\00", [46 x i8] zeroinitializer }, align 32
@init_jffs2_fs._entry_ptr.30 = internal global ptr @init_jffs2_fs._entry.28, section ".printk_index", align 4
@init_jffs2_fs._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.19, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013jffs2: error: Failed to initialise compressors\0A\00", [46 x i8] zeroinitializer }, align 32
@init_jffs2_fs._entry_ptr.33 = internal global ptr @init_jffs2_fs._entry.31, section ".printk_index", align 4
@init_jffs2_fs._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.19, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013jffs2: error: Failed to initialise slab caches\0A\00", [46 x i8] zeroinitializer }, align 32
@init_jffs2_fs._entry_ptr.36 = internal global ptr @init_jffs2_fs._entry.34, section ".printk_index", align 4
@init_jffs2_fs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.19, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013jffs2: error: Failed to register filesystem\0A\00", [49 x i8] zeroinitializer }, align 32
@init_jffs2_fs._entry_ptr.39 = internal global ptr @init_jffs2_fs._entry.37, section ".printk_index", align 4
@jffs2_i_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"&f->sem\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"jffs2_fs_type\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 352, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"jffs2_inode_cachep\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 36, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 354, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"jffs2_fs_parameters\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 181, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"jffs2_context_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 301, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 204, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 269, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 274, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 275, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 276, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 277, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 278, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 279, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"jffs2_super_operations\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 242, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"jffs2_export_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 152, i32 39 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 90, i32 17 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 92, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 68, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 71, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 75, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 79, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 80, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 146, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 182, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"jffs2_param_compr\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 170, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 183, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 377, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 386, i32 41 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 392, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 397, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 402, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 407, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [20 x i8] c"../fs/jffs2/super.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 60, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_exit_jffs2_fs, ptr @__initcall__kmod_jffs2__255_435_init_jffs2_fs6, ptr @exit_jffs2_fs, ptr @init_jffs2_fs._entry, ptr @init_jffs2_fs._entry.28, ptr @init_jffs2_fs._entry.31, ptr @init_jffs2_fs._entry.34, ptr @init_jffs2_fs._entry.37, ptr @init_jffs2_fs._entry_ptr, ptr @init_jffs2_fs._entry_ptr.30, ptr @init_jffs2_fs._entry_ptr.33, ptr @init_jffs2_fs._entry_ptr.36, ptr @init_jffs2_fs._entry_ptr.39, ptr @jffs2_get_parent._entry, ptr @jffs2_get_parent._entry_ptr, ptr @jffs2_fs_type, ptr @jffs2_inode_cachep, ptr @.str, ptr @jffs2_fs_parameters, ptr @jffs2_context_ops, ptr @.str.1, ptr @.str.2, ptr @jffs2_fill_super.__key, ptr @.str.3, ptr @jffs2_fill_super.__key.4, ptr @.str.5, ptr @jffs2_fill_super.__key.6, ptr @.str.7, ptr @jffs2_fill_super.__key.8, ptr @.str.9, ptr @jffs2_fill_super.__key.10, ptr @.str.11, ptr @jffs2_fill_super.__key.12, ptr @.str.13, ptr @jffs2_super_operations, ptr @jffs2_export_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @jffs2_param_compr, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @jffs2_i_init_once.__key, ptr @.str.40], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fs_parameters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fill_super.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fill_super.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fill_super.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fill_super.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_fill_super.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_param_compr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jffs2_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jffs2_fs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jffs2_fs._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jffs2_fs._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_jffs2_fs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_i_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_jffs2_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @jffs2_fs_type) #7
  tail call void @jffs2_destroy_slab_caches() #7
  %call1 = tail call i32 @jffs2_compressors_exit() #7
  tail call void @rcu_barrier() #7
  %0 = load ptr, ptr @jffs2_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_destroy_slab_caches() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_compressors_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_jffs2_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  %call13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.27, i32 noundef 904, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @jffs2_i_init_once) #7
  store ptr %call13, ptr @jffs2_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %do.end16, label %if.end

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call19 = tail call i32 @jffs2_compressors_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  br label %out

if.end27:                                         ; preds = %if.end
  %call28 = tail call i32 @jffs2_create_slab_caches() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %out_compressors

if.end36:                                         ; preds = %if.end27
  %call37 = tail call i32 @register_filesystem(ptr noundef nonnull @jffs2_fs_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %do.end42

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  tail call void @jffs2_destroy_slab_caches() #7
  br label %out_compressors

out_compressors:                                  ; preds = %do.end42, %do.end33
  %ret.0 = phi i32 [ %call28, %do.end33 ], [ %call37, %do.end42 ]
  %call46 = tail call i32 @jffs2_compressors_exit() #7
  br label %out

out:                                              ; preds = %out_compressors, %do.end24
  %ret.1 = phi i32 [ %call19, %do.end24 ], [ %ret.0, %out_compressors ]
  %0 = load ptr, ptr @jffs2_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end36.cleanup_crit_edge, %do.end16
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %do.end16 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_init_fs_context(ptr nocapture noundef writeonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1532) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 4
  %2 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @jffs2_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jffs2_kill_sb(ptr noundef %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @jffs2_stop_garbage_collect_thread(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kill_mtd_super(ptr noundef %sb) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jffs2_free_fc(ptr nocapture noundef readonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_parse_param(ptr noundef %fc, ptr noundef %param) #2 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #7
  %0 = call ptr @memset(ptr %result, i32 255, i32 16)
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info, align 4
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @jffs2_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %mount_opts = getelementptr inbounds %struct.jffs2_sb_info, ptr %2, i32 0, i32 61
  %compr = getelementptr inbounds %struct.jffs2_sb_info, ptr %2, i32 0, i32 61, i32 1
  %7 = ptrtoint ptr %compr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %compr, align 4
  %8 = ptrtoint ptr %mount_opts to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mount_opts, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %9 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %11)
  %cmp3 = icmp ugt i32 %11, 4194303
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %log5 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %log5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log5, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %13, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl nuw i32 %11, 10
  %rp_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %2, i32 0, i32 61, i32 3
  %14 = ptrtoint ptr %rp_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %rp_size, align 4
  %set_rp_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %2, i32 0, i32 61, i32 2
  %15 = ptrtoint ptr %set_rp_size to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %set_rp_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end6 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_get_tree(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_mtd(ptr noundef %fc, ptr noundef nonnull @jffs2_fill_super) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_reconfigure(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %call = tail call i32 @sync_filesystem(ptr noundef %3) #7
  %s_fs_info.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 4
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info1.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info1.i, align 16
  %alloc_sem.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %11, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem.i, i32 noundef 0) #7
  %mount_opts.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %5, i32 0, i32 61
  %12 = ptrtoint ptr %mount_opts.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mount_opts.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mount_opts5.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %11, i32 0, i32 61
  %14 = ptrtoint ptr %mount_opts5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %mount_opts5.i, align 4
  %compr.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %5, i32 0, i32 61, i32 1
  %15 = ptrtoint ptr %compr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %compr.i, align 4
  %compr9.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %11, i32 0, i32 61, i32 1
  %17 = ptrtoint ptr %compr9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %compr9.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %set_rp_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %5, i32 0, i32 61, i32 2
  %18 = ptrtoint ptr %set_rp_size.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %set_rp_size.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not.i = icmp eq i8 %19, 0
  br i1 %tobool11.not.i, label %if.end.i.jffs2_update_mount_opts.exit_crit_edge, label %if.then12.i

if.end.i.jffs2_update_mount_opts.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jffs2_update_mount_opts.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %set_rp_size17.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %11, i32 0, i32 61, i32 2
  %20 = ptrtoint ptr %set_rp_size17.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %set_rp_size17.i, align 4
  %rp_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %5, i32 0, i32 61, i32 3
  %21 = ptrtoint ptr %rp_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rp_size.i, align 4
  %rp_size21.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %11, i32 0, i32 61, i32 3
  %23 = ptrtoint ptr %rp_size21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rp_size21.i, align 4
  br label %jffs2_update_mount_opts.exit

jffs2_update_mount_opts.exit:                     ; preds = %if.then12.i, %if.end.i.jffs2_update_mount_opts.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %alloc_sem.i) #7
  %call1 = tail call i32 @jffs2_do_remount_fs(ptr noundef %3, ptr noundef %fc) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_mtd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_fill_super(ptr noundef %sb, ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_mtd = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_mtd, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %1, align 4
  %os_priv = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 72
  %5 = ptrtoint ptr %os_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sb, ptr %os_priv, align 4
  %rp_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 61, i32 3
  %6 = ptrtoint ptr %rp_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rp_size, align 4
  %conv = zext i32 %7 to i64
  %size = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp = icmp ult i64 %9, %conv
  br i1 %cmp, label %if.then, label %do.body6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %log3 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %log3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log3, align 4
  %div49 = lshr i64 %9, 10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %11, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2, i64 noundef %div49) #7
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %alloc_sem, ptr noundef nonnull @.str.3, ptr noundef nonnull @jffs2_fill_super.__key) #7
  %erase_free_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 49
  tail call void @__mutex_init(ptr noundef %erase_free_sem, ptr noundef nonnull @.str.5, ptr noundef nonnull @jffs2_fill_super.__key.4) #7
  %erase_wait = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 44
  tail call void @__init_waitqueue_head(ptr noundef %erase_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @jffs2_fill_super.__key.6) #7
  %inocache_wq = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 45
  tail call void @__init_waitqueue_head(ptr noundef %inocache_wq, ptr noundef nonnull @.str.9, ptr noundef nonnull @jffs2_fill_super.__key.8) #7
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 43
  tail call void @__raw_spin_lock_init(ptr noundef %erase_completion_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @jffs2_fill_super.__key.10, i16 noundef signext 3) #7
  %inocache_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 48
  tail call void @__raw_spin_lock_init(ptr noundef %inocache_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @jffs2_fill_super.__key.12, i16 noundef signext 3) #7
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @jffs2_super_operations, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %13 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @jffs2_export_ops, ptr %s_export_op, align 16
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %16 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @jffs2_xattr_handlers, ptr %s_xattr, align 16
  %or27 = or i32 %15, 66560
  store i32 %or27, ptr %s_flags, align 4
  %call28 = tail call i32 @jffs2_do_fill_super(ptr noundef %sb, ptr noundef %fc) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call28, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_fill_super(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @jffs2_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jffs2_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.jffs2_inode_info, ptr %call, i32 0, i32 9
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jffs2_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode, i32 -120
  %target = getelementptr i8, ptr %inode, i32 -12
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = load ptr, ptr @jffs2_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_dirty_inode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_evict_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jffs2_put_super(ptr nocapture noundef readonly %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #7
  %call = tail call i32 @jffs2_flush_wbuf_pad(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #7
  tail call void @jffs2_sum_exit(ptr noundef %1) #7
  tail call void @jffs2_free_ino_caches(ptr noundef %1) #7
  tail call void @jffs2_free_raw_node_refs(ptr noundef %1) #7
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blocks, align 4
  tail call void @kvfree(ptr noundef %3) #7
  tail call void @jffs2_flash_cleanup(ptr noundef %1) #7
  %inocache_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inocache_list, align 4
  tail call void @kfree(ptr noundef %5) #7
  tail call void @jffs2_clear_xattr_subsystem(ptr noundef %1) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %mtd.addr.0.i.i = phi ptr [ %7, %entry ], [ %9, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %10 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.mtd_sync.exit_crit_edge, label %if.then.i

mtd_get_master.exit.i.mtd_sync.exit_crit_edge:    ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_sync.exit

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %mtd.addr.0.i.i) #7
  br label %mtd_sync.exit

mtd_sync.exit:                                    ; preds = %if.then.i, %mtd_get_master.exit.i.mtd_sync.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wbuf, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wbuf_dwork = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 57
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wbuf_dwork) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #7
  %call1 = tail call i32 @jffs2_flush_wbuf_pad(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_show_options(ptr noundef %s, ptr nocapture noundef readonly %root) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %mount_opts = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mount_opts, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %compr = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 61, i32 1
  %6 = ptrtoint ptr %compr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %compr, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %do.end.i [
    i32 0, label %if.then.jffs2_compr_name.exit_crit_edge
    i32 4, label %sw.bb1.i
    i32 5, label %sw.bb2.i
  ]

if.then.jffs2_compr_name.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %jffs2_compr_name.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %jffs2_compr_name.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %jffs2_compr_name.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 79, i32 noundef 9, ptr noundef null) #7
  br label %jffs2_compr_name.exit

jffs2_compr_name.exit:                            ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %if.then.jffs2_compr_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.20, %do.end.i ], [ @.str.18, %sw.bb2.i ], [ @.str.17, %sw.bb1.i ], [ @.str.16, %if.then.jffs2_compr_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, ptr noundef nonnull %retval.0.i) #7
  br label %if.end

if.end:                                           ; preds = %jffs2_compr_name.exit, %entry.if.end_crit_edge
  %set_rp_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 61, i32 2
  %9 = ptrtoint ptr %set_rp_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %set_rp_size, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rp_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 61, i32 3
  %11 = ptrtoint ptr %rp_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rp_size, align 4
  %div8 = lshr i32 %12, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %div8) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flush_wbuf_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_sum_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_ino_caches(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_node_refs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_flash_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_clear_xattr_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jffs2_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @jffs2_nfs_get_inode) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jffs2_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @jffs2_nfs_get_inode) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jffs2_get_parent(ptr nocapture noundef readonly %child) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %child, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  br i1 %3, label %do.end8, label %do.body3, !prof !111

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 140, 0\0A.popsection", ""() #7, !srcloc !112
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %inocache = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inocache, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pino_nlink, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !100) #7
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ino, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %15, ptr noundef nonnull @.str.22, i32 noundef %17, i32 noundef %9) #10
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %18 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_sb, align 4
  %call18 = tail call ptr @jffs2_iget(ptr noundef %19, i32 noundef %9) #7
  %call19 = tail call ptr @d_obtain_alias(ptr noundef %call18) #7
  ret ptr %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jffs2_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ino to i32
  %call = tail call ptr @jffs2_iget(ptr noundef %sb, i32 noundef %conv) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_remount_fs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_stop_garbage_collect_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_mtd_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jffs2_i_init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef %foo, ptr noundef nonnull @.str.40, ptr noundef nonnull @jffs2_i_init_once.__key) #7
  %vfs_inode = getelementptr inbounds %struct.jffs2_inode_info, ptr %foo, i32 0, i32 9
  tail call void @inode_init_once(ptr noundef %vfs_inode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_compressors_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_create_slab_caches() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__UNIQUE_ID_alias250, !1, !"__UNIQUE_ID_alias250", i1 false, i1 false}
!1 = !{!"../fs/jffs2/super.c", i32 359, i32 1}
!2 = !{ptr @__initcall__kmod_jffs2__255_435_init_jffs2_fs6, !3, !"__initcall__kmod_jffs2__255_435_init_jffs2_fs6", i1 false, i1 false}
!3 = !{!"../fs/jffs2/super.c", i32 435, i32 1}
!4 = !{ptr @__exitcall_exit_jffs2_fs, !5, !"__exitcall_exit_jffs2_fs", i1 false, i1 false}
!5 = !{!"../fs/jffs2/super.c", i32 436, i32 1}
!6 = !{ptr @__UNIQUE_ID_description256, !7, !"__UNIQUE_ID_description256", i1 false, i1 false}
!7 = !{!"../fs/jffs2/super.c", i32 438, i32 1}
!8 = !{ptr @__UNIQUE_ID_author257, !9, !"__UNIQUE_ID_author257", i1 false, i1 false}
!9 = !{!"../fs/jffs2/super.c", i32 439, i32 1}
!10 = !{ptr @__UNIQUE_ID_file258, !11, !"__UNIQUE_ID_file258", i1 false, i1 false}
!11 = !{!"../fs/jffs2/super.c", i32 440, i32 1}
!12 = !{ptr @__UNIQUE_ID_license259, !11, !"__UNIQUE_ID_license259", i1 false, i1 false}
!13 = !{ptr @jffs2_inode_cachep, !14, !"jffs2_inode_cachep", i1 false, i1 false}
!14 = !{!"../fs/jffs2/super.c", i32 36, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/jffs2/super.c", i32 354, i32 11}
!17 = !{ptr @jffs2_fs_type, !18, !"jffs2_fs_type", i1 false, i1 false}
!18 = !{!"../fs/jffs2/super.c", i32 352, i32 32}
!19 = !{ptr @jffs2_context_ops, !20, !"jffs2_context_ops", i1 false, i1 false}
!20 = !{!"../fs/jffs2/super.c", i32 301, i32 43}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/jffs2/super.c", i32 204, i32 11}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/jffs2/super.c", i32 269, i32 10}
!25 = !{ptr @jffs2_fill_super.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../fs/jffs2/super.c", i32 274, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jffs2_fill_super.__key.4, !29, !"__key", i1 false, i1 false}
!29 = !{!"../fs/jffs2/super.c", i32 275, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @jffs2_fill_super.__key.6, !32, !"__key", i1 false, i1 false}
!32 = !{!"../fs/jffs2/super.c", i32 276, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @jffs2_fill_super.__key.8, !35, !"__key", i1 false, i1 false}
!35 = !{!"../fs/jffs2/super.c", i32 277, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jffs2_fill_super.__key.10, !38, !"__key", i1 false, i1 false}
!38 = !{!"../fs/jffs2/super.c", i32 278, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @jffs2_fill_super.__key.12, !41, !"__key", i1 false, i1 false}
!41 = !{!"../fs/jffs2/super.c", i32 279, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @jffs2_super_operations, !44, !"jffs2_super_operations", i1 false, i1 false}
!44 = !{!"../fs/jffs2/super.c", i32 242, i32 38}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/jffs2/super.c", i32 90, i32 17}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/jffs2/super.c", i32 92, i32 17}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/jffs2/super.c", i32 68, i32 10}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/jffs2/super.c", i32 71, i32 10}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/jffs2/super.c", i32 75, i32 10}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/jffs2/super.c", i32 79, i32 3}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/jffs2/super.c", i32 80, i32 10}
!59 = !{ptr @jffs2_export_ops, !60, !"jffs2_export_ops", i1 false, i1 false}
!60 = !{!"../fs/jffs2/super.c", i32 152, i32 39}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/jffs2/super.c", i32 146, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @jffs2_get_parent._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @jffs2_get_parent._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/jffs2/super.c", i32 182, i32 2}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/jffs2/super.c", i32 183, i32 2}
!70 = !{ptr @jffs2_fs_parameters, !71, !"jffs2_fs_parameters", i1 false, i1 false}
!71 = !{!"../fs/jffs2/super.c", i32 181, i32 39}
!72 = !{ptr @jffs2_param_compr, !73, !"jffs2_param_compr", i1 false, i1 false}
!73 = !{!"../fs/jffs2/super.c", i32 170, i32 36}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/jffs2/super.c", i32 377, i32 2}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_jffs2_fs._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @init_jffs2_fs._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/jffs2/super.c", i32 386, i32 41}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/jffs2/super.c", i32 392, i32 3}
!83 = !{ptr @init_jffs2_fs._entry.28, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @init_jffs2_fs._entry_ptr.30, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/jffs2/super.c", i32 397, i32 3}
!87 = !{ptr @init_jffs2_fs._entry.31, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @init_jffs2_fs._entry_ptr.33, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/jffs2/super.c", i32 402, i32 3}
!91 = !{ptr @init_jffs2_fs._entry.34, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @init_jffs2_fs._entry_ptr.36, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/jffs2/super.c", i32 407, i32 3}
!95 = !{ptr @init_jffs2_fs._entry.37, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @init_jffs2_fs._entry_ptr.39, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @jffs2_i_init_once.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../fs/jffs2/super.c", i32 60, i32 2}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i8 0, i8 2}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2154530786, i64 2154531267, i64 2154530823, i64 2154530879, i64 2154530913, i64 2154530937, i64 2154530978, i64 2154530999, i64 2154531027, i64 2154531061}
