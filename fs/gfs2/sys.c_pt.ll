; ModuleID = '/llk/IR_all_yes/fs/gfs2/sys.c_pt.bc'
source_filename = "../fs/gfs2/sys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.gfs2_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.uuid_t = type { [16 x i8] }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.lm_lockops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RDONLY=%d\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPECTATOR=%d\00", [19 x i8] zeroinitializer }, align 32
@gfs2_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gfs2_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @gfs2_sbd_release, ptr @gfs2_attr_ops, ptr null, ptr @gfs2_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tune_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.37, ptr null, ptr null, ptr @tune_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lock_module_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.48, ptr null, ptr null, ptr @lock_module_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@gfs2_sys_fs_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gfs2: fsid=%s: error %d adding sysfs files\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfs2_sys_fs_add\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/gfs2/sys.c\00", [18 x i8] zeroinitializer }, align 32
@gfs2_sys_fs_add._entry_ptr = internal global ptr @gfs2_sys_fs_add._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gfs2\00", [27 x i8] zeroinitializer }, align 32
@gfs2_uevent_ops = internal constant { %struct.kset_uevent_ops, [20 x i8] } { %struct.kset_uevent_ops { ptr null, ptr null, ptr @gfs2_uevent }, [20 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@gfs2_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @gfs2_attr_show, ptr @gfs2_attr_store }, [24 x i8] zeroinitializer }, align 32
@gfs2_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gfs2_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gfs2_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gfs2_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gfs2_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @gfs2_attr_id, ptr @gfs2_attr_fsname, ptr @gfs2_attr_uuid, ptr @gfs2_attr_freeze, ptr @gfs2_attr_withdraw, ptr @gfs2_attr_statfs_sync, ptr @gfs2_attr_quota_sync, ptr @gfs2_attr_quota_refresh_user, ptr @gfs2_attr_quota_refresh_group, ptr @gfs2_attr_demote_rq, ptr @gfs2_attr_status, ptr null], [48 x i8] zeroinitializer }, align 32
@gfs2_attr_id = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_fsname = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fsname_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_uuid = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uuid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_freeze = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @freeze_show, ptr @freeze_store }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_withdraw = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @withdraw_show, ptr @withdraw_store }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_statfs_sync = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.22, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @statfs_sync_store }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_quota_sync = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.23, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @quota_sync_store }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_quota_refresh_user = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.24, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @quota_refresh_user_store }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_quota_refresh_group = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.25, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @quota_refresh_group_store }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_demote_rq = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.26, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @demote_rq_store }, [36 x i8] zeroinitializer }, align 32
@gfs2_attr_status = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.35, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u:%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsname\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uuid\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pUB\0A\00", [26 x i8] zeroinitializer }, align 32
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"freeze\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@freeze_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014gfs2: fsid=%s: freeze %d error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"freeze_store\00", [19 x i8] zeroinitializer }, align 32
@freeze_store._entry_ptr = internal global ptr @freeze_store._entry, section ".printk_index", align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"withdraw\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"withdrawing from cluster at user's request\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"statfs_sync\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"quota_sync\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"quota_refresh_user\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"quota_refresh_group\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"demote_rq\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%u:%llu %15s\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EX\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CW\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DF\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SH\00", [29 x i8] zeroinitializer }, align 32
@gfs2_freeze_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@gfs2_glops_list = external dso_local local_unnamed_addr global [0 x ptr], align 4
@demote_rq_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016gfs2: fsid=%s: demote interface used\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"demote_rq_store\00", [16 x i8] zeroinitializer }, align 32
@demote_rq_store._entry_ptr = internal global ptr @demote_rq_store._entry, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [813 x i8], [211 x i8] } { [813 x i8] c"Journal Checked:          %d\0AJournal Live:             %d\0AJournal ID:               %d\0ASpectator:                %d\0AWithdrawn:                %d\0ANo barriers:              %d\0ANo recovery:              %d\0ADemote:                   %d\0ANo Journal ID:            %d\0AMounted RO:               %d\0ARO Recovery:              %d\0ASkip DLM Unlock:          %d\0AForce AIL Flush:          %d\0AFS Frozen:                %d\0AWithdrawing:              %d\0AWithdraw In Prog:         %d\0ARemote Withdraw:          %d\0AWithdraw Recovery:        %d\0Asd_log_error:             %d\0Asd_log_flush_lock:        %d\0Asd_log_num_revoke:        %u\0Asd_log_in_flight:         %d\0Asd_log_blks_needed:       %d\0Asd_log_blks_free:         %d\0Asd_log_flush_head:        %d\0Asd_log_flush_tail:        %d\0Asd_log_blks_reserved:     %d\0Asd_log_revokes_available: %d\0A\00", [211 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tune\00", [27 x i8] zeroinitializer }, align 32
@tune_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @tune_attr_quota_warn_period, ptr @tune_attr_quota_quantum, ptr @tune_attr_max_readahead, ptr @tune_attr_complain_secs, ptr @tune_attr_statfs_slow, ptr @tune_attr_statfs_quantum, ptr @tune_attr_quota_scale, ptr @tune_attr_new_files_jdata, ptr null], [60 x i8] zeroinitializer }, align 32
@tune_attr_quota_warn_period = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @quota_warn_period_show, ptr @quota_warn_period_store }, [36 x i8] zeroinitializer }, align 32
@tune_attr_quota_quantum = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @quota_quantum_show, ptr @quota_quantum_store }, [36 x i8] zeroinitializer }, align 32
@tune_attr_max_readahead = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_readahead_show, ptr @max_readahead_store }, [36 x i8] zeroinitializer }, align 32
@tune_attr_complain_secs = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @complain_secs_show, ptr @complain_secs_store }, [36 x i8] zeroinitializer }, align 32
@tune_attr_statfs_slow = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @statfs_slow_show, ptr @statfs_slow_store }, [36 x i8] zeroinitializer }, align 32
@tune_attr_statfs_quantum = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @statfs_quantum_show, ptr @statfs_quantum_store }, [36 x i8] zeroinitializer }, align 32
@tune_attr_quota_scale = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @quota_scale_show, ptr @quota_scale_store }, [36 x i8] zeroinitializer }, align 32
@tune_attr_new_files_jdata = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @new_files_jdata_show, ptr @new_files_jdata_store }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"quota_warn_period\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"quota_quantum\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_readahead\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"complain_secs\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"statfs_slow\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"statfs_quantum\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"quota_scale\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %u\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"new_files_jdata\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lock_module\00", [20 x i8] zeroinitializer }, align 32
@lock_module_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @gdlm_attr_proto_name, ptr @gdlm_attr_block, ptr @gdlm_attr_withdraw, ptr @gdlm_attr_jid, ptr @gdlm_attr_first, ptr @gdlm_attr_first_done, ptr @gdlm_attr_recover, ptr @gdlm_attr_recover_done, ptr @gdlm_attr_recover_status, ptr null], [56 x i8] zeroinitializer }, align 32
@gdlm_attr_proto_name = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @proto_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_block = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @block_show, ptr @block_store }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_withdraw = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wdack_show, ptr @wdack_store }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_jid = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @jid_show, ptr @jid_store }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_first = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lkfirst_show, ptr @lkfirst_store }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_first_done = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @first_done_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_recover = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.57, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @recover_store }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_recover_done = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @recover_done_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gdlm_attr_recover_status = internal global { %struct.gfs2_attr, [36 x i8] } { %struct.gfs2_attr { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @recover_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"proto_name\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"block\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lock_dlm\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"jid\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"first\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"first_done\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recover\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"recover_done\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"recover_status\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOCKTABLE=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOCKPROTO=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"JOURNALID=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UUID=%pUB\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 722, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 723, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"gfs2_kset\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 58, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"gfs2_ktype\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 376, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 728, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"tune_group\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 704, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"lock_module_group\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 709, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 742, i32 7 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 754, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 790, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"gfs2_uevent_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 784, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"gfs2_attr_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 52, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"gfs2_groups\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [11 x i8] c"gfs2_group\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 367, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"gfs2_attrs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 353, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"gfs2_attr_id\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"gfs2_attr_fsname\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"gfs2_attr_uuid\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"gfs2_attr_freeze\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"gfs2_attr_withdraw\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"gfs2_attr_statfs_sync\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"gfs2_attr_quota_sync\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [29 x i8] c"gfs2_attr_quota_refresh_user\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [30 x i8] c"gfs2_attr_quota_refresh_group\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"gfs2_attr_demote_rq\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"gfs2_attr_status\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 341, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 62, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 342, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 133, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 343, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 143, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 344, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 151, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 177, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 345, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 187, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 204, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 346, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 347, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 348, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 349, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 350, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 305, i32 19 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 310, i32 19 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 312, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 312, i32 54 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 314, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 314, i32 54 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 328, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 351, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 72, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 705, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant [11 x i8] c"tune_attrs\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 692, i32 26 }
@___asan_gen_.254 = private unnamed_addr constant [28 x i8] c"tune_attr_quota_warn_period\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [24 x i8] c"tune_attr_quota_quantum\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"tune_attr_max_readahead\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [24 x i8] c"tune_attr_complain_secs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [22 x i8] c"tune_attr_statfs_slow\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [25 x i8] c"tune_attr_statfs_quantum\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [22 x i8] c"tune_attr_quota_scale\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [26 x i8] c"tune_attr_new_files_jdata\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 683, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 684, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 685, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 686, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 687, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 689, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 690, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 619, i32 34 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 633, i32 18 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 688, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 710, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"lock_module_attrs\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 600, i32 26 }
@___asan_gen_.314 = private unnamed_addr constant [21 x i8] c"gdlm_attr_proto_name\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [16 x i8] c"gdlm_attr_block\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [19 x i8] c"gdlm_attr_withdraw\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 592, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant [14 x i8] c"gdlm_attr_jid\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [16 x i8] c"gdlm_attr_first\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"gdlm_attr_first_done\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [18 x i8] c"gdlm_attr_recover\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [23 x i8] c"gdlm_attr_recover_done\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [25 x i8] c"gdlm_attr_recover_status\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 590, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 591, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 442, i32 56 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 593, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 562, i32 19 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 594, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 460, i32 19 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 595, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 596, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 597, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 598, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 775, i32 22 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 776, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 778, i32 23 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.384 = private constant [17 x i8] c"../fs/gfs2/sys.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 780, i32 23 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @demote_rq_store._entry, ptr @demote_rq_store._entry_ptr, ptr @freeze_store._entry, ptr @freeze_store._entry_ptr, ptr @gfs2_sys_fs_add._entry, ptr @gfs2_sys_fs_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @gfs2_kset, ptr @gfs2_ktype, ptr @.str.2, ptr @tune_group, ptr @lock_module_group, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gfs2_uevent_ops, ptr @init_completion.__key, ptr @.str.8, ptr @gfs2_attr_ops, ptr @gfs2_groups, ptr @gfs2_group, ptr @gfs2_attrs, ptr @gfs2_attr_id, ptr @gfs2_attr_fsname, ptr @gfs2_attr_uuid, ptr @gfs2_attr_freeze, ptr @gfs2_attr_withdraw, ptr @gfs2_attr_statfs_sync, ptr @gfs2_attr_quota_sync, ptr @gfs2_attr_quota_refresh_user, ptr @gfs2_attr_quota_refresh_group, ptr @gfs2_attr_demote_rq, ptr @gfs2_attr_status, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @tune_attrs, ptr @tune_attr_quota_warn_period, ptr @tune_attr_quota_quantum, ptr @tune_attr_max_readahead, ptr @tune_attr_complain_secs, ptr @tune_attr_statfs_slow, ptr @tune_attr_statfs_quantum, ptr @tune_attr_quota_scale, ptr @tune_attr_new_files_jdata, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @lock_module_attrs, ptr @gdlm_attr_proto_name, ptr @gdlm_attr_block, ptr @gdlm_attr_withdraw, ptr @gdlm_attr_jid, ptr @gdlm_attr_first, ptr @gdlm_attr_first_done, ptr @gdlm_attr_recover, ptr @gdlm_attr_recover_done, ptr @gdlm_attr_recover_status, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_module_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_sys_fs_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_uevent_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_fsname to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_uuid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_freeze to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_withdraw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_statfs_sync to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_quota_sync to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_quota_refresh_user to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_quota_refresh_group to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_demote_rq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_attr_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demote_rq_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 813, i32 1024, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_quota_warn_period to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_quota_quantum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_max_readahead to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_complain_secs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_statfs_slow to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_statfs_quantum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_quota_scale to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tune_attr_new_files_jdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_module_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_proto_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_block to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_withdraw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_jid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_first to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_first_done to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_recover to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_recover_done to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_attr_recover_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_recover_set(ptr noundef %sdp, i32 noundef %jid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_journal_ready = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 63
  tail call void @wait_for_completion(ptr noundef %sd_journal_ready) #9
  %sd_jindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %sd_jindex_spin) #9
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %0 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_jdesc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jd_jid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %jid)
  %cmp = icmp eq i32 %3, %jid
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool2.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %sd_jindex_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52
  %ar_spectator11 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true9.for.cond_crit_edge, %if.end4
  %jd.0.in = phi ptr [ %sd_jindex_list, %if.end4 ], [ %jd.0, %land.lhs.true9.for.cond_crit_edge ]
  %5 = ptrtoint ptr %jd.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %jd.0 = load ptr, ptr %jd.0.in, align 8
  %cmp6.not = icmp eq ptr %jd.0, %sd_jindex_list
  br i1 %cmp6.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.cond
  %jd_jid7 = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.0, i32 0, i32 7
  %6 = ptrtoint ptr %jd_jid7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jd_jid7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %jid)
  %cmp8.not = icmp eq i32 %7, %jid
  br i1 %cmp8.not, label %for.body.if.end16_crit_edge, label %land.lhs.true9

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true9:                                   ; preds = %for.body
  %8 = ptrtoint ptr %ar_spectator11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load12 = load i32, ptr %ar_spectator11, align 4
  %tobool14.not = icmp sgt i32 %bf.load12, -1
  br i1 %tobool14.not, label %land.lhs.true9.for.cond_crit_edge, label %land.lhs.true9.if.end16_crit_edge

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true9.for.cond_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end16:                                         ; preds = %land.lhs.true9.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %call = tail call i32 @gfs2_recover_journal(ptr noundef %jd.0, i1 noundef zeroext false) #9
  br label %out

out:                                              ; preds = %if.end16, %for.cond.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %rv.0 = phi i32 [ %call, %if.end16 ], [ -16, %land.lhs.true.out_crit_edge ], [ -16, %entry.out_crit_edge ], [ -2, %for.cond.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin) #9
  ret i32 %rv.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_recover_journal(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_sys_fs_add(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %ro = alloca [20 x i8], align 1
  %spectator = alloca [20 x i8], align 1
  %envp = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ro) #9
  %2 = call ptr @memset(ptr %ro, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %spectator) #9
  %3 = call ptr @memset(ptr %spectator, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #9
  %4 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 1
  %5 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 2
  %6 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ro, ptr %envp, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spectator, ptr %4, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %10, 1
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ro, ptr noundef nonnull @.str, i32 noundef %and.i)
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %11 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %ar_spectator, align 4
  %bf.load.lobit = lshr i32 %bf.load, 31
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %spectator, ptr noundef nonnull @.str.1, i32 noundef %bf.load.lobit)
  %sd_kobj_unregister = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 3
  %12 = ptrtoint ptr %sd_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sd_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #9
  %13 = load ptr, ptr @gfs2_kset, align 4
  %sd_kobj = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 2
  %kset = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %kset, align 8
  %sd_table_name = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 111
  %call9 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %sd_kobj, ptr noundef nonnull @gfs2_ktype, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %sd_table_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %call12 = call i32 @sysfs_create_group(ptr noundef %sd_kobj, ptr noundef nonnull @tune_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end15:                                         ; preds = %if.end
  %call17 = call i32 @sysfs_create_group(ptr noundef %sd_kobj, ptr noundef nonnull @lock_module_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.fail_tune_crit_edge

if.end15.fail_tune_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_tune

if.end20:                                         ; preds = %if.end15
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 10
  %call22 = call i32 @sysfs_create_link(ptr noundef %sd_kobj, ptr noundef %bd_device, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %fail_lock_module

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = call i32 @kobject_uevent_env(ptr noundef %sd_kobj, i32 noundef 0, ptr noundef nonnull %envp) #9
  br label %cleanup

fail_lock_module:                                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @sysfs_remove_group(ptr noundef %sd_kobj, ptr noundef nonnull @lock_module_group) #9
  br label %fail_tune

fail_tune:                                        ; preds = %fail_lock_module, %if.end15.fail_tune_crit_edge
  %error.0 = phi i32 [ %call17, %if.end15.fail_tune_crit_edge ], [ %call22, %fail_lock_module ]
  call void @sysfs_remove_group(ptr noundef %sd_kobj, ptr noundef nonnull @tune_group) #9
  br label %do.end

do.end:                                           ; preds = %fail_tune, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %error.1 = phi i32 [ %call9, %entry.do.end_crit_edge ], [ %call12, %if.end.do.end_crit_edge ], [ %error.0, %fail_tune ]
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname, i32 noundef %error.1) #12
  call void @kobject_put(ptr noundef %sd_kobj) #9
  call void @wait_for_completion(ptr noundef %sd_kobj_unregister) #9
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end25
  %retval.0 = phi i32 [ %error.1, %do.end ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %spectator) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ro) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_sys_fs_del(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_kobj = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 2
  tail call void @sysfs_remove_link(ptr noundef %sd_kobj, ptr noundef nonnull @.str.3) #9
  tail call void @sysfs_remove_group(ptr noundef %sd_kobj, ptr noundef nonnull @tune_group) #9
  tail call void @sysfs_remove_group(ptr noundef %sd_kobj, ptr noundef nonnull @lock_module_group) #9
  tail call void @kobject_put(ptr noundef %sd_kobj) #9
  %sd_kobj_unregister = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %sd_kobj_unregister) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_sys_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.7, ptr noundef nonnull @gfs2_uevent_ops, ptr noundef %0) #9
  store ptr %call, ptr @gfs2_kset, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_sys_uninit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gfs2_kset, align 4
  tail call void @kset_unregister(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_sbd_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %sd_kobj_unregister) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.gfs2_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %kobj, i32 -8
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buf) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.gfs2_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %kobj, i32 -8
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ %len, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %shr, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsname_show(ptr noundef %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %sd_fsname)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uuid_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 40
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %s_uuid, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %s_uuid)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freeze_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  %s_writers = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  %cond = zext i1 %cmp to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freeze_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !195
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %n) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdp, align 8
  %call4 = call i32 @thaw_super(ptr noundef %5) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdp, align 8
  %call7 = call i32 @freeze_super(ptr noundef %7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %error.0 = phi i32 [ %call7, %sw.bb5 ], [ %call4, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool8.not = icmp eq i32 %error.0, 0
  br i1 %tobool8.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %sd_fsname, i32 noundef %9, i32 noundef %error.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %len, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @withdraw_show(ptr noundef %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.gfs2_withdrawn.exit_crit_edge

entry.gfs2_withdrawn.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_withdrawn.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = lshr i32 %4, 11
  %.lobit = and i32 %5, 1
  br label %gfs2_withdrawn.exit

gfs2_withdrawn.exit:                              ; preds = %lor.rhs.i, %entry.gfs2_withdrawn.exit_crit_edge
  %6 = phi i32 [ 1, %entry.gfs2_withdrawn.exit_crit_edge ], [ %.lobit, %lor.rhs.i ]
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %6)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @withdraw_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !195
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %sdp, ptr noundef nonnull @.str.21) #9
  %call6 = call i32 @gfs2_withdraw(ptr noundef %sdp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_lm(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_withdraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @statfs_sync_store(ptr nocapture noundef readonly %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !195
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdp, align 8
  %call6 = call i32 @gfs2_statfs_sync(ptr noundef %4, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_statfs_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_sync_store(ptr nocapture noundef readonly %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !195
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdp, align 8
  %call6 = call i32 @gfs2_quota_sync(ptr noundef %4, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_refresh_user_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !195
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call.i24 = call i32 @make_kuid(ptr noundef %8, i32 noundef %10) #9, !noalias !196
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call.i24, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 0, 1
  %call7 = call zeroext i1 @qid_valid([2 x i32] %.fca.1.insert) #9
  br i1 %call7, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 @gfs2_quota_refresh(ptr noundef %sdp, [2 x i32] %.fca.1.insert) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %len.call10 = select i1 %tobool11.not, i32 %len, i32 %call10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call10, %if.end9 ], [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qid_valid([2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_refresh(ptr noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_refresh_group_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !195
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call4.i = call i32 @make_kgid(ptr noundef %8, i32 noundef %10) #9, !noalias !199
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call4.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  %call7 = call zeroext i1 @qid_valid([2 x i32] %.fca.1.insert) #9
  br i1 %call7, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 @gfs2_quota_refresh(ptr noundef %sdp, [2 x i32] %.fca.1.insert) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %len.call10 = select i1 %tobool11.not, i32 %len, i32 %call10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call10, %if.end9 ], [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @demote_rq_store(ptr noundef %sdp, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %gl = alloca ptr, align 4
  %gltype = alloca i32, align 4
  %glnum = alloca i64, align 8
  %mode = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gl) #9
  %0 = ptrtoint ptr %gl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %gl, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gltype) #9
  %1 = ptrtoint ptr %gltype to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %gltype, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %glnum) #9
  %2 = ptrtoint ptr %glnum to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %glnum, align 8, !annotation !195
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mode) #9
  %3 = call ptr @memset(ptr %mode, i32 255, i32 16)
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef nonnull %gltype, ptr noundef nonnull %glnum, ptr noundef nonnull %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 3
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %mode, ptr noundef nonnull dereferenceable(3) @.str.28, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp6 = icmp eq i32 %bcmp, 0
  br i1 %cmp6, label %if.end3.if.end27_crit_edge, label %if.else

if.end3.if.end27_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.else:                                          ; preds = %if.end3
  %bcmp59 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %mode, ptr noundef nonnull dereferenceable(3) @.str.29, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp59)
  %cmp10 = icmp eq i32 %bcmp59, 0
  br i1 %cmp10, label %if.else.if.end27_crit_edge, label %lor.lhs.false

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false:                                    ; preds = %if.else
  %bcmp60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %mode, ptr noundef nonnull dereferenceable(3) @.str.30, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp60)
  %cmp13 = icmp eq i32 %bcmp60, 0
  br i1 %cmp13, label %lor.lhs.false.if.end27_crit_edge, label %if.else15

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.else15:                                        ; preds = %lor.lhs.false
  %bcmp61 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %mode, ptr noundef nonnull dereferenceable(3) @.str.31, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp61)
  %cmp18 = icmp eq i32 %bcmp61, 0
  br i1 %cmp18, label %if.else15.if.end27_crit_edge, label %lor.lhs.false19

if.else15.if.end27_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false19:                                  ; preds = %if.else15
  %bcmp62 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %mode, ptr noundef nonnull dereferenceable(3) @.str.32, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp62)
  %cmp22 = icmp eq i32 %bcmp62, 0
  br i1 %cmp22, label %lor.lhs.false19.if.end27_crit_edge, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false19.if.end27_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %lor.lhs.false19.if.end27_crit_edge, %if.else15.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge, %if.else.if.end27_crit_edge, %if.end3.if.end27_crit_edge
  %glmode.0 = phi i32 [ 0, %if.end3.if.end27_crit_edge ], [ 2, %lor.lhs.false.if.end27_crit_edge ], [ 2, %if.else.if.end27_crit_edge ], [ 3, %lor.lhs.false19.if.end27_crit_edge ], [ 3, %if.else15.if.end27_crit_edge ]
  %4 = ptrtoint ptr %gltype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gltype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp28 = icmp ugt i32 %5, 9
  br i1 %cmp28, label %if.end27.cleanup_crit_edge, label %if.end30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp31 = icmp eq i32 %5, 1
  br i1 %cmp31, label %land.lhs.true, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end30
  %6 = ptrtoint ptr %glnum to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %glnum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %7)
  %cmp32 = icmp eq i64 %7, 2
  br i1 %cmp32, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end30.if.end35_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr @gfs2_glops_list, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp36 = icmp eq ptr %9, null
  br i1 %cmp36, label %if.end35.cleanup_crit_edge, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end35.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge
  %glops.065 = phi ptr [ %9, %if.end35.if.end38_crit_edge ], [ @gfs2_freeze_glops, %land.lhs.true.if.end38_crit_edge ]
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %call39 = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %sd_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %do.end, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %sd_fsname) #12
  br label %if.end43

if.end43:                                         ; preds = %do.end, %if.end38.if.end43_crit_edge
  %10 = ptrtoint ptr %glnum to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %glnum, align 8
  %call44 = call i32 @gfs2_glock_get(ptr noundef %sdp, i64 noundef %11, ptr noundef nonnull %glops.065, i32 noundef 0, ptr noundef nonnull %gl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %gl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gl, align 4
  call void @gfs2_glock_cb(ptr noundef %13, i32 noundef %glmode.0) #9
  %14 = ptrtoint ptr %gl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gl, align 4
  call void @gfs2_glock_put(ptr noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end43.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end47 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mode) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %glnum) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gltype) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gl) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr noundef %sdp, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %f = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f)
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_flags, align 8
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %f, align 4
  %f.0.f.0. = load volatile i32, ptr %f, align 4
  %f.0.f.0.70 = load volatile i32, ptr %f, align 4
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %3 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_jdesc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jd_jid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %shr.i = lshr i32 %f.0.f.0.70, 1
  %and1.i40 = and i32 %shr.i, 1
  %and1.i = and i32 %f.0.f.0., 1
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %7 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %ar_spectator, align 4
  %bf.load.lobit = lshr i32 %bf.load, 31
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %f.0.f.0.71 = load volatile i32, ptr %f, align 4
  %shr.i41 = lshr i32 %f.0.f.0.71, 2
  %and1.i42 = and i32 %shr.i41, 1
  %f.0.f.0.72 = load volatile i32, ptr %f, align 4
  %shr.i43 = lshr i32 %f.0.f.0.72, 3
  %and1.i44 = and i32 %shr.i43, 1
  %f.0.f.0.73 = load volatile i32, ptr %f, align 4
  %shr.i45 = lshr i32 %f.0.f.0.73, 4
  %and1.i46 = and i32 %shr.i45, 1
  %f.0.f.0.74 = load volatile i32, ptr %f, align 4
  %shr.i47 = lshr i32 %f.0.f.0.74, 5
  %and1.i48 = and i32 %shr.i47, 1
  %f.0.f.0.75 = load volatile i32, ptr %f, align 4
  %shr.i49 = lshr i32 %f.0.f.0.75, 6
  %and1.i50 = and i32 %shr.i49, 1
  %9 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdp, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %12, 1
  %f.0.f.0.76 = load volatile i32, ptr %f, align 4
  %shr.i51 = lshr i32 %f.0.f.0.76, 7
  %and1.i52 = and i32 %shr.i51, 1
  %f.0.f.0.77 = load volatile i32, ptr %f, align 4
  %shr.i53 = lshr i32 %f.0.f.0.77, 8
  %and1.i54 = and i32 %shr.i53, 1
  %f.0.f.0.78 = load volatile i32, ptr %f, align 4
  %shr.i55 = lshr i32 %f.0.f.0.78, 9
  %and1.i56 = and i32 %shr.i55, 1
  %f.0.f.0.79 = load volatile i32, ptr %f, align 4
  %shr.i57 = lshr i32 %f.0.f.0.79, 10
  %and1.i58 = and i32 %shr.i57, 1
  %f.0.f.0.80 = load volatile i32, ptr %f, align 4
  %shr.i59 = lshr i32 %f.0.f.0.80, 11
  %and1.i60 = and i32 %shr.i59, 1
  %f.0.f.0.81 = load volatile i32, ptr %f, align 4
  %shr.i61 = lshr i32 %f.0.f.0.81, 12
  %and1.i62 = and i32 %shr.i61, 1
  %f.0.f.0.82 = load volatile i32, ptr %f, align 4
  %shr.i63 = lshr i32 %f.0.f.0.82, 13
  %and1.i64 = and i32 %shr.i63, 1
  %f.0.f.0.83 = load volatile i32, ptr %f, align 4
  %shr.i65 = lshr i32 %f.0.f.0.83, 14
  %and1.i66 = and i32 %shr.i65, 1
  %sd_log_error = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 98
  %13 = ptrtoint ptr %sd_log_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd_log_error, align 4
  %sd_log_flush_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 95
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_flush_lock, i32 noundef 4) #9
  %15 = ptrtoint ptr %sd_log_flush_lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sd_log_flush_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp ne i32 %16, 0
  %conv.i = zext i1 %cmp.i to i32
  %sd_log_num_revoke = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 82
  %17 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sd_log_num_revoke, align 4
  %sd_log_in_flight = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_in_flight, i32 noundef 4) #9
  %19 = ptrtoint ptr %sd_log_in_flight to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sd_log_in_flight, align 4
  %sd_log_blks_needed = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 89
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed, i32 noundef 4) #9
  %21 = ptrtoint ptr %sd_log_blks_needed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %sd_log_blks_needed, align 4
  %sd_log_blks_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %call.i.i68 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %23 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sd_log_blks_free, align 4
  %sd_log_flush_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 103
  %25 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sd_log_flush_head, align 8
  %sd_log_flush_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 101
  %27 = ptrtoint ptr %sd_log_flush_tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sd_log_flush_tail, align 8
  %sd_log_blks_reserved = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 80
  %29 = ptrtoint ptr %sd_log_blks_reserved to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sd_log_blks_reserved, align 4
  %sd_log_revokes_available = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 90
  %call.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_revokes_available, i32 noundef 4) #9
  %31 = ptrtoint ptr %sd_log_revokes_available to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sd_log_revokes_available, align 4
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.36, i32 noundef %and1.i, i32 noundef %and1.i40, i32 noundef %cond, i32 noundef %bf.load.lobit, i32 noundef %and1.i42, i32 noundef %and1.i44, i32 noundef %and1.i46, i32 noundef %and1.i48, i32 noundef %and1.i50, i32 noundef %and.i, i32 noundef %and1.i52, i32 noundef %and1.i54, i32 noundef %and1.i56, i32 noundef %and1.i58, i32 noundef %and1.i60, i32 noundef %and1.i62, i32 noundef %and1.i64, i32 noundef %and1.i66, i32 noundef %14, i32 noundef %conv.i, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f)
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_warn_period_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_quota_warn_period = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 2
  %0 = ptrtoint ptr %gt_quota_warn_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_quota_warn_period, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_warn_period_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_quota_warn_period = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 2
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #9
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !195
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %entry.tune_set.exit_crit_edge

entry.tune_set.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.tune_set.exit_crit_edge

if.end.i.tune_set.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #9
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %gt_quota_warn_period to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gt_quota_warn_period, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #9
  br label %tune_set.exit

tune_set.exit:                                    ; preds = %if.end3.i, %if.end.i.tune_set.exit_crit_edge, %entry.tune_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.tune_set.exit_crit_edge ], [ %call1.i, %if.end.i.tune_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_quantum_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 5
  %0 = ptrtoint ptr %gt_quota_quantum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_quota_quantum, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_quantum_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 5
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #9
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !195
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %entry.tune_set.exit_crit_edge

entry.tune_set.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.tune_set.exit_crit_edge

if.end.i.tune_set.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #9
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %gt_quota_quantum to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gt_quota_quantum, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #9
  br label %tune_set.exit

tune_set.exit:                                    ; preds = %if.end3.i, %if.end.i.tune_set.exit_crit_edge, %entry.tune_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.tune_set.exit_crit_edge ], [ %call1.i, %if.end.i.tune_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_readahead_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_max_readahead = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 7
  %0 = ptrtoint ptr %gt_max_readahead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_max_readahead, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_readahead_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_max_readahead = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 7
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #9
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !195
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %entry.tune_set.exit_crit_edge

entry.tune_set.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.tune_set.exit_crit_edge

if.end.i.tune_set.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #9
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %gt_max_readahead to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gt_max_readahead, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #9
  br label %tune_set.exit

tune_set.exit:                                    ; preds = %if.end3.i, %if.end.i.tune_set.exit_crit_edge, %entry.tune_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.tune_set.exit_crit_edge ], [ %call1.i, %if.end.i.tune_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @complain_secs_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_complain_secs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 8
  %0 = ptrtoint ptr %gt_complain_secs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_complain_secs, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @complain_secs_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_complain_secs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 8
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #9
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !195
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %entry.tune_set.exit_crit_edge

entry.tune_set.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.tune_set.exit_crit_edge

if.end.i.tune_set.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #9
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %gt_complain_secs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gt_complain_secs, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #9
  br label %tune_set.exit

tune_set.exit:                                    ; preds = %if.end3.i, %if.end.i.tune_set.exit_crit_edge, %entry.tune_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.tune_set.exit_crit_edge ], [ %call1.i, %if.end.i.tune_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @statfs_slow_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_statfs_slow = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 10
  %0 = ptrtoint ptr %gt_statfs_slow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_statfs_slow, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @statfs_slow_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_statfs_slow = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 10
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #9
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !195
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %entry.tune_set.exit_crit_edge

entry.tune_set.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.tune_set.exit_crit_edge

if.end.i.tune_set.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #9
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %gt_statfs_slow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gt_statfs_slow, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #9
  br label %tune_set.exit

tune_set.exit:                                    ; preds = %if.end3.i, %if.end.i.tune_set.exit_crit_edge, %entry.tune_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.tune_set.exit_crit_edge ], [ %call1.i, %if.end.i.tune_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @statfs_quantum_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_statfs_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %gt_statfs_quantum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_statfs_quantum, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @statfs_quantum_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_statfs_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 9
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #9
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !195
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %entry.tune_set.exit_crit_edge

entry.tune_set.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.tune_set.exit_crit_edge

if.end.i.tune_set.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not.i = icmp eq i32 %2, 0
  br i1 %tobool5.not.i, label %if.end3.i.tune_set.exit_crit_edge, label %if.end7.i

if.end3.i.tune_set.exit_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #9
  %3 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %x.i, align 4
  %5 = ptrtoint ptr %gt_statfs_quantum to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %gt_statfs_quantum, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #9
  br label %tune_set.exit

tune_set.exit:                                    ; preds = %if.end7.i, %if.end3.i.tune_set.exit_crit_edge, %if.end.i.tune_set.exit_crit_edge, %entry.tune_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end7.i ], [ -1, %entry.tune_set.exit_crit_edge ], [ %call1.i, %if.end.i.tune_set.exit_crit_edge ], [ -22, %if.end3.i.tune_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_scale_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_quota_scale_num = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 3
  %0 = ptrtoint ptr %gt_quota_scale_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_quota_scale_num, align 4
  %gt_quota_scale_den = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 4
  %2 = ptrtoint ptr %gt_quota_scale_den to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gt_quota_scale_den, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.45, i32 noundef %1, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_scale_store(ptr noundef %sdp, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #9
  %0 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #9
  %1 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %y, align 4, !annotation !195
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.46, ptr noundef nonnull %x, ptr noundef nonnull %y)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune) #9
  %4 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x, align 4
  %gt_quota_scale_num = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 3
  %6 = ptrtoint ptr %gt_quota_scale_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gt_quota_scale_num, align 4
  %7 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %y, align 4
  %gt_quota_scale_den = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 4
  %9 = ptrtoint ptr %gt_quota_scale_den to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %gt_quota_scale_den, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end3 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_files_jdata_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_new_files_jdata = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 6
  %0 = ptrtoint ptr %gt_new_files_jdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gt_new_files_jdata, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_files_jdata_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gt_new_files_jdata = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 6
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #9
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !195
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %entry.tune_set.exit_crit_edge

entry.tune_set.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.tune_set.exit_crit_edge

if.end.i.tune_set.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tune_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #9
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %gt_new_files_jdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gt_new_files_jdata, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #9
  br label %tune_set.exit

tune_set.exit:                                    ; preds = %if.end3.i, %if.end.i.tune_set.exit_crit_edge, %entry.tune_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.tune_set.exit_crit_edge ], [ %call1.i, %if.end.i.tune_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proto_name_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %0 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block_show(ptr noundef %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  %0 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_recover_flags, align 4
  %and1.i = and i32 %1, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !195
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then1
    i32 0, label %if.then3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %ls_recover_flags) #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ls_recover_flags4 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %ls_recover_flags4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !202
  call void @gfs2_glock_thaw(ptr noundef %sdp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %len, %if.then3 ], [ %len, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_thaw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdack_show(ptr noundef %sdp, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_wdack = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 32
  %call = tail call zeroext i1 @completion_done(ptr noundef %sd_wdack) #9
  %cond = zext i1 %call to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdack_store(ptr noundef %sdp, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !195
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %3 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ls_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(9) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sd_wdack = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 32
  call void @complete(ptr noundef %sd_wdack) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jid_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  %0 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_lockstruct, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jid_store(ptr noundef %sdp, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %jid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jid) #9
  %0 = ptrtoint ptr %jid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %jid, align 4, !annotation !195
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.53, ptr noundef nonnull %jid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_locking_init = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 31
  %call1 = call i32 @wait_for_completion_killable(ptr noundef %sd_locking_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sd_jindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 53
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin) #9
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %1 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ls_ops, align 4
  %lm_mount = getelementptr inbounds %struct.lm_lockops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %lm_mount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lm_mount, align 4
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.end3.cleanup.sink.split_crit_edge, label %if.end6

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end3
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %5 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sd_flags, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.end6.cleanup.sink.split_crit_edge, label %if.end10

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end6
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %8 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool11.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool11.not, label %if.end10.out_crit_edge, label %land.lhs.true

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true:                                    ; preds = %if.end10
  %9 = ptrtoint ptr %jid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp sgt i32 %10, 0
  br i1 %cmp12, label %if.then13, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %jid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %jid, align 4
  br label %out

out:                                              ; preds = %if.then13, %land.lhs.true.out_crit_edge, %if.end10.out_crit_edge
  %tobool22.not = phi i32 [ %len, %if.end10.out_crit_edge ], [ %len, %land.lhs.true.out_crit_edge ], [ -22, %if.then13 ]
  %12 = ptrtoint ptr %jid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jid, align 4
  %14 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sd_lockstruct, align 4
  call void @_clear_bit(i32 noundef 6, ptr noundef %sd_flags) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !203
  call void @wake_up_bit(ptr noundef %sd_flags, i32 noundef 6) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end6.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %tobool22.not, %out ], [ -16, %if.end6.cleanup.sink.split_crit_edge ], [ -22, %if.end3.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jid) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkfirst_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_first = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 1
  %0 = ptrtoint ptr %ls_first to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_first, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkfirst_store(ptr noundef %sdp, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %first = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first) #9
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first, align 4, !annotation !195
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.55, ptr noundef nonnull %first)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp ugt i32 %2, 1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sd_locking_init = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 31
  %call2 = call i32 @wait_for_completion_killable(ptr noundef %sd_locking_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sd_jindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 53
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin) #9
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %3 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.end4.cleanup.sink.split_crit_edge, label %if.end8

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %6 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool9.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end8
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %7 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ls_ops, align 4
  %lm_mount = getelementptr inbounds %struct.lm_lockops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %lm_mount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lm_mount, align 4
  %cmp12 = icmp eq ptr %10, null
  br i1 %cmp12, label %if.end11.cleanup.sink.split_crit_edge, label %11

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

11:                                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first, align 4
  %ls_first = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 1
  %14 = ptrtoint ptr %ls_first to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ls_first, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %11, %if.end11.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %len, %11 ], [ -16, %if.end4.cleanup.sink.split_crit_edge ], [ -22, %if.end8.cleanup.sink.split_crit_edge ], [ -22, %if.end11.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @first_done_show(ptr noundef %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  %0 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_recover_flags, align 4
  %2 = lshr i32 %1, 3
  %.lobit = and i32 %2, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %.lobit)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recover_store(ptr noundef %sdp, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %jid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jid) #9
  %0 = ptrtoint ptr %jid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %jid, align 4, !annotation !195
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.55, ptr noundef nonnull %jid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %1 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sd_flags, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %jid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jid, align 4
  %sd_journal_ready.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 63
  call void @wait_for_completion(ptr noundef %sd_journal_ready.i) #9
  %sd_jindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 53
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin.i) #9
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %6 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_jdesc.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end3.out.thread12_crit_edge, label %if.end.i

if.end3.out.thread12_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread12

if.end.i:                                         ; preds = %if.end3
  %jd_jid.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %jd_jid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jd_jid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.i = icmp eq i32 %9, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ar_spectator.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %10 = ptrtoint ptr %ar_spectator.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %ar_spectator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool2.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool2.not.i, label %land.lhs.true.i.out.thread12_crit_edge, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

land.lhs.true.i.out.thread12_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread12

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %sd_jindex_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52
  %ar_spectator11.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true9.i.for.cond.i_crit_edge, %if.end4.i
  %jd.0.in.i = phi ptr [ %sd_jindex_list.i, %if.end4.i ], [ %jd.0.i, %land.lhs.true9.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %jd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %jd.0.i = load ptr, ptr %jd.0.in.i, align 8
  %cmp6.not.i = icmp eq ptr %jd.0.i, %sd_jindex_list.i
  br i1 %cmp6.not.i, label %for.cond.i.out.thread12_crit_edge, label %for.body.i

for.cond.i.out.thread12_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread12

for.body.i:                                       ; preds = %for.cond.i
  %jd_jid7.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.0.i, i32 0, i32 7
  %12 = ptrtoint ptr %jd_jid7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jd_jid7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp8.not.i = icmp eq i32 %13, %5
  br i1 %cmp8.not.i, label %for.body.i.out_crit_edge, label %land.lhs.true9.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true9.i:                                 ; preds = %for.body.i
  %14 = ptrtoint ptr %ar_spectator11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load12.i = load i32, ptr %ar_spectator11.i, align 4
  %tobool14.not.i = icmp sgt i32 %bf.load12.i, -1
  br i1 %tobool14.not.i, label %land.lhs.true9.i.for.cond.i_crit_edge, label %land.lhs.true9.i.out_crit_edge

land.lhs.true9.i.out_crit_edge:                   ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true9.i.for.cond.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

out.thread12:                                     ; preds = %for.cond.i.out.thread12_crit_edge, %land.lhs.true.i.out.thread12_crit_edge, %if.end3.out.thread12_crit_edge
  %rv.0.i.ph = phi i32 [ -16, %if.end3.out.thread12_crit_edge ], [ -16, %land.lhs.true.i.out.thread12_crit_edge ], [ -2, %for.cond.i.out.thread12_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i) #9
  br label %cleanup

out:                                              ; preds = %land.lhs.true9.i.out_crit_edge, %for.body.i.out_crit_edge
  %call.i = call i32 @gfs2_recover_journal(ptr noundef %jd.0.i, i1 noundef zeroext false) #9
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool5.not, i32 %len, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %rv.0.i.ph, %out.thread12 ], [ -108, %if.end.cleanup_crit_edge ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jid) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recover_done_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_jid_done = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 4
  %0 = ptrtoint ptr %ls_recover_jid_done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_recover_jid_done, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recover_status_show(ptr nocapture noundef readonly %sdp, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_jid_status = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 5
  %0 = ptrtoint ptr %ls_recover_jid_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_recover_jid_status, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_uevent(ptr noundef %kobj, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %sd_table_name = getelementptr i8, ptr %kobj, i32 3638
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.60, ptr noundef %sd_table_name) #9
  %sd_proto_name = getelementptr i8, ptr %kobj, i32 3894
  %call2 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.61, ptr noundef %sd_proto_name) #9
  %sd_flags = getelementptr i8, ptr %kobj, i32 192
  %2 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sd_flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sd_lockstruct = getelementptr i8, ptr %kobj, i32 828
  %5 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_lockstruct, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.62, i32 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 40
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %s_uuid, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.63, ptr noundef %s_uuid) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !65, !67, !68, !70, !71, !73, !75, !76, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !103, !105, !107, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !137, !139, !141, !143, !145, !146, !148, !149, !151, !153, !155, !156, !158, !160, !161, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !179, !181, !183}
!llvm.named.register.sp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/sys.c", i32 722, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/gfs2/sys.c", i32 723, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/gfs2/sys.c", i32 728, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/gfs2/sys.c", i32 742, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/gfs2/sys.c", i32 754, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gfs2_sys_fs_add._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @gfs2_sys_fs_add._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/gfs2/sys.c", i32 790, i32 34}
!16 = !{ptr @gfs2_kset, !17, !"gfs2_kset", i1 false, i1 false}
!17 = !{!"../fs/gfs2/sys.c", i32 58, i32 21}
!18 = !{ptr @init_completion.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/completion.h", i32 87, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gfs2_ktype, !22, !"gfs2_ktype", i1 false, i1 false}
!22 = !{!"../fs/gfs2/sys.c", i32 376, i32 25}
!23 = !{ptr @gfs2_attr_ops, !24, !"gfs2_attr_ops", i1 false, i1 false}
!24 = !{!"../fs/gfs2/sys.c", i32 52, i32 31}
!25 = !{ptr @gfs2_groups, !26, !"gfs2_groups", i1 false, i1 false}
!26 = !{!"../fs/gfs2/sys.c", i32 367, i32 1}
!27 = !{ptr @gfs2_group, !26, !"gfs2_group", i1 false, i1 false}
!28 = !{ptr @gfs2_attrs, !29, !"gfs2_attrs", i1 false, i1 false}
!29 = !{!"../fs/gfs2/sys.c", i32 353, i32 26}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/gfs2/sys.c", i32 341, i32 1}
!32 = !{ptr @gfs2_attr_id, !31, !"gfs2_attr_id", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/gfs2/sys.c", i32 62, i32 34}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/gfs2/sys.c", i32 342, i32 1}
!37 = !{ptr @gfs2_attr_fsname, !36, !"gfs2_attr_fsname", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/gfs2/sys.c", i32 133, i32 34}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/gfs2/sys.c", i32 343, i32 1}
!42 = !{ptr @gfs2_attr_uuid, !41, !"gfs2_attr_uuid", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/gfs2/sys.c", i32 143, i32 34}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/gfs2/sys.c", i32 344, i32 1}
!47 = !{ptr @gfs2_attr_freeze, !46, !"gfs2_attr_freeze", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/gfs2/sys.c", i32 151, i32 34}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/gfs2/sys.c", i32 177, i32 3}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @freeze_store._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @freeze_store._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/gfs2/sys.c", i32 345, i32 1}
!57 = !{ptr @gfs2_attr_withdraw, !56, !"gfs2_attr_withdraw", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/gfs2/sys.c", i32 187, i32 34}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/gfs2/sys.c", i32 204, i32 15}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/gfs2/sys.c", i32 346, i32 1}
!64 = !{ptr @gfs2_attr_statfs_sync, !63, !"gfs2_attr_statfs_sync", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/gfs2/sys.c", i32 347, i32 1}
!67 = !{ptr @gfs2_attr_quota_sync, !66, !"gfs2_attr_quota_sync", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/gfs2/sys.c", i32 348, i32 1}
!70 = !{ptr @gfs2_attr_quota_refresh_user, !69, !"gfs2_attr_quota_refresh_user", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../fs/gfs2/sys.c", i32 262, i32 18}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/gfs2/sys.c", i32 349, i32 1}
!75 = !{ptr @gfs2_attr_quota_refresh_group, !74, !"gfs2_attr_quota_refresh_group", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../fs/gfs2/sys.c", i32 284, i32 18}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/gfs2/sys.c", i32 350, i32 1}
!80 = !{ptr @gfs2_attr_demote_rq, !79, !"gfs2_attr_demote_rq", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/gfs2/sys.c", i32 305, i32 19}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/gfs2/sys.c", i32 310, i32 19}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/gfs2/sys.c", i32 312, i32 25}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/gfs2/sys.c", i32 312, i32 54}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/gfs2/sys.c", i32 314, i32 25}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/gfs2/sys.c", i32 314, i32 54}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/gfs2/sys.c", i32 328, i32 3}
!95 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @demote_rq_store._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @demote_rq_store._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/gfs2/sys.c", i32 351, i32 1}
!100 = !{ptr @gfs2_attr_status, !99, !"gfs2_attr_status", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/gfs2/sys.c", i32 72, i32 8}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/gfs2/sys.c", i32 705, i32 10}
!105 = !{ptr @tune_group, !106, !"tune_group", i1 false, i1 false}
!106 = !{!"../fs/gfs2/sys.c", i32 704, i32 37}
!107 = !{ptr @tune_attrs, !108, !"tune_attrs", i1 false, i1 false}
!108 = !{!"../fs/gfs2/sys.c", i32 692, i32 26}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/gfs2/sys.c", i32 683, i32 1}
!111 = !{ptr @tune_attr_quota_warn_period, !110, !"tune_attr_quota_warn_period", i1 false, i1 false}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/gfs2/sys.c", i32 684, i32 1}
!114 = !{ptr @tune_attr_quota_quantum, !113, !"tune_attr_quota_quantum", i1 false, i1 false}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/gfs2/sys.c", i32 685, i32 1}
!117 = !{ptr @tune_attr_max_readahead, !116, !"tune_attr_max_readahead", i1 false, i1 false}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/gfs2/sys.c", i32 686, i32 1}
!120 = !{ptr @tune_attr_complain_secs, !119, !"tune_attr_complain_secs", i1 false, i1 false}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/gfs2/sys.c", i32 687, i32 1}
!123 = !{ptr @tune_attr_statfs_slow, !122, !"tune_attr_statfs_slow", i1 false, i1 false}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/gfs2/sys.c", i32 689, i32 1}
!126 = !{ptr @tune_attr_statfs_quantum, !125, !"tune_attr_statfs_quantum", i1 false, i1 false}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/gfs2/sys.c", i32 690, i32 1}
!129 = !{ptr @tune_attr_quota_scale, !128, !"tune_attr_quota_scale", i1 false, i1 false}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/gfs2/sys.c", i32 619, i32 34}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/gfs2/sys.c", i32 633, i32 18}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/gfs2/sys.c", i32 688, i32 1}
!136 = !{ptr @tune_attr_new_files_jdata, !135, !"tune_attr_new_files_jdata", i1 false, i1 false}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/gfs2/sys.c", i32 710, i32 10}
!139 = !{ptr @lock_module_group, !140, !"lock_module_group", i1 false, i1 false}
!140 = !{!"../fs/gfs2/sys.c", i32 709, i32 37}
!141 = !{ptr @lock_module_attrs, !142, !"lock_module_attrs", i1 false, i1 false}
!142 = !{!"../fs/gfs2/sys.c", i32 600, i32 26}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/gfs2/sys.c", i32 590, i32 1}
!145 = !{ptr @gdlm_attr_proto_name, !144, !"gdlm_attr_proto_name", i1 false, i1 false}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/gfs2/sys.c", i32 591, i32 1}
!148 = !{ptr @gdlm_attr_block, !147, !"gdlm_attr_block", i1 false, i1 false}
!149 = !{ptr @gdlm_attr_withdraw, !150, !"gdlm_attr_withdraw", i1 false, i1 false}
!150 = !{!"../fs/gfs2/sys.c", i32 592, i32 1}
!151 = !{ptr @.str.51, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/gfs2/sys.c", i32 442, i32 56}
!153 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/gfs2/sys.c", i32 593, i32 1}
!155 = !{ptr @gdlm_attr_jid, !154, !"gdlm_attr_jid", i1 false, i1 false}
!156 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/gfs2/sys.c", i32 562, i32 19}
!158 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/gfs2/sys.c", i32 594, i32 1}
!160 = !{ptr @gdlm_attr_first, !159, !"gdlm_attr_first", i1 false, i1 false}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/gfs2/sys.c", i32 460, i32 19}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/gfs2/sys.c", i32 595, i32 1}
!165 = !{ptr @gdlm_attr_first_done, !164, !"gdlm_attr_first_done", i1 false, i1 false}
!166 = !{ptr @.str.57, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/gfs2/sys.c", i32 596, i32 1}
!168 = !{ptr @gdlm_attr_recover, !167, !"gdlm_attr_recover", i1 false, i1 false}
!169 = !{ptr @.str.58, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/gfs2/sys.c", i32 597, i32 1}
!171 = !{ptr @gdlm_attr_recover_done, !170, !"gdlm_attr_recover_done", i1 false, i1 false}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/gfs2/sys.c", i32 598, i32 1}
!174 = !{ptr @gdlm_attr_recover_status, !173, !"gdlm_attr_recover_status", i1 false, i1 false}
!175 = !{ptr @gfs2_uevent_ops, !176, !"gfs2_uevent_ops", i1 false, i1 false}
!176 = !{!"../fs/gfs2/sys.c", i32 784, i32 37}
!177 = !{ptr @.str.60, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/gfs2/sys.c", i32 775, i32 22}
!179 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/gfs2/sys.c", i32 776, i32 22}
!181 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/gfs2/sys.c", i32 778, i32 23}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/gfs2/sys.c", i32 780, i32 23}
!185 = !{!"sp"}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"auto-init"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"make_kqid: %agg.result"}
!198 = distinct !{!198, !"make_kqid"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"make_kqid: %agg.result"}
!201 = distinct !{!201, !"make_kqid"}
!202 = !{i64 2154523755}
!203 = !{i64 2154527564}
