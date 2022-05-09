; ModuleID = '/llk/IR_all_yes/fs/gfs2/ops_fstype.c_pt.bc'
source_filename = "../fs/gfs2/ops_fstype.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.export_operations = type opaque
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lm_lockops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.41 }
%union.anon.41 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.constant_table = type { ptr, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.fs_parse_result = type { i8, %union.anon.82 }
%union.anon.82 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.substring_t = type { ptr, ptr }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%union.anon.77 = type { ptr }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.page = type { i32, %union.anon.18, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.43, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.43 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.gfs2_sb = type { %struct.gfs2_meta_header, i32, i32, i32, i32, i32, i32, %struct.gfs2_inum, %struct.gfs2_inum, %struct.gfs2_inum, [64 x i8], [64 x i8], %struct.gfs2_inum, %struct.gfs2_inum, [16 x i8] }
%struct.gfs2_inum = type { i64, i64 }
%struct.anon.5 = type { i32, i32 }
%struct.local_statfs_inode = type { %struct.list_head, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.path = type { ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RDONLY=%d\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPECTATOR=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gfs2\00", [27 x i8] zeroinitializer }, align 32
@gfs2_fs_parameters = internal constant { [26 x %struct.fs_parameter_spec], [96 x i8] } { [26 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.214, ptr @fs_param_is_string, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.215, ptr @fs_param_is_string, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.216, ptr @fs_param_is_string, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.217, ptr null, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.218, ptr null, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.219, ptr null, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.220, ptr null, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.221, ptr null, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.222, ptr null, i8 7, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.223, ptr null, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.224, ptr null, i8 9, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.225, ptr null, i8 12, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.226, ptr @fs_param_is_enum, i8 13, i16 0, ptr @gfs2_param_data }, %struct.fs_parameter_spec { ptr @.str.227, ptr null, i8 14, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.228, ptr null, i8 15, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.229, ptr @fs_param_is_s32, i8 16, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.230, ptr @fs_param_is_enum, i8 17, i16 0, ptr @gfs2_param_errors }, %struct.fs_parameter_spec { ptr @.str.231, ptr @fs_param_is_s32, i8 18, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.232, ptr @fs_param_is_s32, i8 19, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.233, ptr @fs_param_is_s32, i8 20, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.234, ptr null, i8 21, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.235, ptr null, i8 22, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.236, ptr null, i8 23, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.131, ptr null, i8 11, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.131, ptr @fs_param_is_enum, i8 10, i16 0, ptr @gfs2_param_quota }, %struct.fs_parameter_spec zeroinitializer], [96 x i8] zeroinitializer }, align 32
@gfs2_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.2, i32 1, ptr @gfs2_init_fs_context, ptr @gfs2_fs_parameters, ptr null, ptr @gfs2_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias373 = internal constant [19 x i8] c"gfs2.alias=fs-gfs2\00", section ".modinfo", align 1
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfs2meta\00", [23 x i8] zeroinitializer }, align 32
@gfs2meta_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.3, i32 1, ptr @gfs2_meta_init_fs_context, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias374 = internal constant [23 x i8] c"gfs2.alias=fs-gfs2meta\00", section ".modinfo", align 1
@gfs2_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @gfs2_fc_free, ptr null, ptr @gfs2_parse_param, ptr null, ptr @gfs2_get_tree, ptr @gfs2_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"-o debug and -o errors=panic are mutually exclusive\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"commit mount option requires a positive numeric argument\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"statfs_quantum mount option requires a non-negative numeric argument\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"quota_quantum mount option requires a positive numeric argument\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"statfs_percent mount option requires a numeric argument between 0 and 100\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid mount option: %s\00", [39 x i8] zeroinitializer }, align 32
@gfs2_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014gfs2: can't alloc struct gfs2_sbd\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfs2_fill_super\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/ops_fstype.c\00", [43 x i8] zeroinitializer }, align 32
@gfs2_fill_super._entry_ptr = internal global ptr @gfs2_fill_super._entry, section ".printk_index", align 4
@gfs2_super_ops = external dso_local constant %struct.super_operations, align 4
@gfs2_dops = external dso_local constant %struct.dentry_operations, align 128
@gfs2_export_ops = external dso_local constant %struct.export_operations, align 1
@gfs2_quotactl_ops = external dso_local constant %struct.quotactl_ops, align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s.s\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%u\00", [26 x i8] zeroinitializer }, align 32
@gfs2_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.12, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gfs2: fsid=%s: can't initialize statfs subsystem: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@gfs2_fill_super._entry_ptr.18 = internal global ptr @gfs2_fill_super._entry.16, section ".printk_index", align 4
@gfs2_fill_super._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.12, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gfs2: fsid=%s: can't make FS RW: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@gfs2_fill_super._entry_ptr.21 = internal global ptr @gfs2_fill_super._entry.19, section ".printk_index", align 4
@init_sbd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sdp->sd_glock_wait\00", [44 x i8] zeroinitializer }, align 32
@init_sbd.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sdp->sd_async_glock_wait\00", [38 x i8] zeroinitializer }, align 32
@init_sbd.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdp->sd_statfs_spin\00", [43 x i8] zeroinitializer }, align 32
@init_sbd.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdp->sd_rindex_spin\00", [43 x i8] zeroinitializer }, align 32
@init_sbd.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdp->sd_jindex_spin\00", [43 x i8] zeroinitializer }, align 32
@init_sbd.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sdp->sd_jindex_mutex\00", [42 x i8] zeroinitializer }, align 32
@init_sbd.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdp->sd_quota_mutex\00", [43 x i8] zeroinitializer }, align 32
@init_sbd.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sdp->sd_quota_sync_mutex\00", [38 x i8] zeroinitializer }, align 32
@init_sbd.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sdp->sd_quota_wait\00", [44 x i8] zeroinitializer }, align 32
@init_sbd.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sdp->sd_trunc_lock\00", [44 x i8] zeroinitializer }, align 32
@init_sbd.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdp->sd_bitmap_lock\00", [43 x i8] zeroinitializer }, align 32
@gfs2_rgrp_aops = external dso_local constant %struct.address_space_operations, align 4
@init_sbd.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sdp->sd_log_lock\00", [46 x i8] zeroinitializer }, align 32
@init_sbd.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sdp->sd_ordered_lock\00", [42 x i8] zeroinitializer }, align 32
@init_sbd.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sdp->sd_log_waitq\00", [45 x i8] zeroinitializer }, align 32
@init_sbd.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sdp->sd_logd_waitq\00", [44 x i8] zeroinitializer }, align 32
@init_sbd.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sdp->sd_ail_lock\00", [46 x i8] zeroinitializer }, align 32
@init_sbd.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&sdp->sd_log_flush_lock\00", [40 x i8] zeroinitializer }, align 32
@init_sbd.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&sdp->sd_log_flush_wait\00", [40 x i8] zeroinitializer }, align 32
@init_sbd.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sdp->sd_freeze_mutex\00", [42 x i8] zeroinitializer }, align 32
@gfs2_tune_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&gt->gt_spin\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@end_bio_io_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.12, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014gfs2: error %d reading superblock\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"end_bio_io_page\00", [16 x i8] zeroinitializer }, align 32
@end_bio_io_page._entry_ptr = internal global ptr @end_bio_io_page._entry, section ".printk_index", align 4
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@gfs2_check_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.12, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014gfs2: not a GFS2 filesystem\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfs2_check_sb\00", [18 x i8] zeroinitializer }, align 32
@gfs2_check_sb._entry_ptr = internal global ptr @gfs2_check_sb._entry, section ".printk_index", align 4
@gfs2_check_sb._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.12, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014gfs2: fsid=%s: Unknown on-disk format, unable to mount\0A\00", [38 x i8] zeroinitializer }, align 32
@gfs2_check_sb._entry_ptr.74 = internal global ptr @gfs2_check_sb._entry.72, section ".printk_index", align 4
@gfs2_check_sb._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.12, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014gfs2: Invalid block size\0A\00", [36 x i8] zeroinitializer }, align 32
@gfs2_check_sb._entry_ptr.77 = internal global ptr @gfs2_check_sb._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lock_nolock\00", [20 x i8] zeroinitializer }, align 32
@nolock_ops = internal constant { %struct.lm_lockops, [56 x i8] } { %struct.lm_lockops { ptr @.str.78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_glock_free, ptr null, ptr null, ptr @nolock_tokens }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lock_dlm\00", [23 x i8] zeroinitializer }, align 32
@gfs2_dlm_ops = external dso_local constant %struct.lm_lockops, align 4
@gfs2_lm_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.12, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016gfs2: can't find protocol %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfs2_lm_mount\00", [18 x i8] zeroinitializer }, align 32
@gfs2_lm_mount._entry_ptr = internal global ptr @gfs2_lm_mount._entry, section ".printk_index", align 4
@gfs2_lm_mount._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.12, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016gfs2: fsid=%s: Trying to join cluster \22%s\22, \22%s\22\0A\00", [44 x i8] zeroinitializer }, align 32
@gfs2_lm_mount._entry_ptr.84 = internal global ptr @gfs2_lm_mount._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@gfs2_lm_mount._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.81, ptr @.str.12, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016gfs2: fsid=%s: unknown hostdata (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@gfs2_lm_mount._entry_ptr.88 = internal global ptr @gfs2_lm_mount._entry.86, section ".printk_index", align 4
@gfs2_lm_mount._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.81, ptr @.str.12, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016gfs2: fsid=%s: Now mounting FS (format %u)...\0A\00", [47 x i8] zeroinitializer }, align 32
@gfs2_lm_mount._entry_ptr.91 = internal global ptr @gfs2_lm_mount._entry.89, section ".printk_index", align 4
@gfs2_lm_mount._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.81, ptr @.str.12, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016gfs2: fsid=%s: Joined cluster. Now mounting FS (format %u)...\0A\00", [63 x i8] zeroinitializer }, align 32
@gfs2_lm_mount._entry_ptr.94 = internal global ptr @gfs2_lm_mount._entry.92, section ".printk_index", align 4
@nolock_tokens = internal constant { [2 x %struct.match_token], [16 x i8] } { [2 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.95 }, %struct.match_token { i32 4, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jid=%d\00", [25 x i8] zeroinitializer }, align 32
@gfs2_nondisk_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@init_locking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.12, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gfs2: fsid=%s: can't acquire mount glock: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_locking\00", [19 x i8] zeroinitializer }, align 32
@init_locking._entry_ptr = internal global ptr @init_locking._entry, section ".printk_index", align 4
@init_locking._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.12, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gfs2: fsid=%s: can't acquire live glock: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@init_locking._entry_ptr.100 = internal global ptr @init_locking._entry.98, section ".printk_index", align 4
@init_locking._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.12, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gfs2: fsid=%s: can't create rename glock: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@init_locking._entry_ptr.103 = internal global ptr @init_locking._entry.101, section ".printk_index", align 4
@gfs2_freeze_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@init_locking._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.97, ptr @.str.12, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gfs2: fsid=%s: can't create transaction glock: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@init_locking._entry_ptr.106 = internal global ptr @init_locking._entry.104, section ".printk_index", align 4
@gfs2_meta_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@init_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.12, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gfs2: fsid=%s: can't acquire superblock glock: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init_sb\00", [24 x i8] zeroinitializer }, align 32
@init_sb._entry_ptr = internal global ptr @init_sb._entry, section ".printk_index", align 4
@init_sb._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.12, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013gfs2: fsid=%s: can't read superblock: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@init_sb._entry_ptr.111 = internal global ptr @init_sb._entry.109, section ".printk_index", align 4
@gfs2_xattr_handlers_max = external dso_local global [0 x ptr], align 4
@gfs2_xattr_handlers_min = external dso_local local_unnamed_addr global ptr, align 4
@init_sb._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.12, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013gfs2: fsid=%s: FS block size (%u) is too small for device block size (%u)\0A\00", [51 x i8] zeroinitializer }, align 32
@init_sb._entry_ptr.114 = internal global ptr @init_sb._entry.112, section ".printk_index", align 4
@init_sb._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.12, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013gfs2: fsid=%s: FS block size (%u) is too big for machine page size (%u)\0A\00", [53 x i8] zeroinitializer }, align 32
@init_sb._entry_ptr.117 = internal global ptr @init_sb._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@gfs2_read_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.12, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gfs2: fsid=%s: can't read superblock\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gfs2_read_sb\00", [19 x i8] zeroinitializer }, align 32
@gfs2_read_sb._entry_ptr = internal global ptr @gfs2_read_sb._entry, section ".printk_index", align 4
@gfs2_lookup_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.12, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gfs2: fsid=%s: can't read in %s inode: %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gfs2_lookup_root\00", [47 x i8] zeroinitializer }, align 32
@gfs2_lookup_root._entry_ptr = internal global ptr @gfs2_lookup_root._entry, section ".printk_index", align 4
@gfs2_lookup_root._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.12, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gfs2: fsid=%s: can't alloc %s dentry\0A\00", [56 x i8] zeroinitializer }, align 32
@gfs2_lookup_root._entry_ptr.126 = internal global ptr @gfs2_lookup_root._entry.124, section ".printk_index", align 4
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rindex\00", [25 x i8] zeroinitializer }, align 32
@init_inodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.12, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gfs2: fsid=%s: can't get resource index inode: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_inodes\00", [20 x i8] zeroinitializer }, align 32
@init_inodes._entry_ptr = internal global ptr @init_inodes._entry, section ".printk_index", align 4
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quota\00", [26 x i8] zeroinitializer }, align 32
@init_inodes._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.130, ptr @.str.12, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gfs2: fsid=%s: can't get quota file inode: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_inodes._entry_ptr.134 = internal global ptr @init_inodes._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&gfs2_quota_imutex_key\00", [41 x i8] zeroinitializer }, align 32
@gfs2_quota_imutex_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jindex\00", [25 x i8] zeroinitializer }, align 32
@init_journal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.12, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gfs2: fsid=%s: can't lookup journal index: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_journal\00", [19 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr = internal global ptr @init_journal._entry, section ".printk_index", align 4
@init_journal._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.12, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gfs2: fsid=%s: can't read journal index: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.141 = internal global ptr @init_journal._entry.139, section ".printk_index", align 4
@init_journal._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.12, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gfs2: fsid=%s: no journals!\0A\00", [33 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.144 = internal global ptr @init_journal._entry.142, section ".printk_index", align 4
@init_journal._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.138, ptr @.str.12, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013gfs2: fsid=%s: can't mount journal #%u\0A\00", [54 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.147 = internal global ptr @init_journal._entry.145, section ".printk_index", align 4
@init_journal._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.138, ptr @.str.12, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gfs2: fsid=%s: there are only %u journals (0 - %u)\0A\00", [42 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.150 = internal global ptr @init_journal._entry.148, section ".printk_index", align 4
@gfs2_journal_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@init_journal._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.138, ptr @.str.12, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gfs2: fsid=%s: can't acquire journal glock: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.153 = internal global ptr @init_journal._entry.151, section ".printk_index", align 4
@init_journal._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.138, ptr @.str.12, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gfs2: fsid=%s: can't acquire journal inode glock: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.156 = internal global ptr @init_journal._entry.154, section ".printk_index", align 4
@init_journal._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.138, ptr @.str.12, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gfs2: fsid=%s: my journal (%u) is bad: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.159 = internal global ptr @init_journal._entry.157, section ".printk_index", align 4
@init_journal._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.138, ptr @.str.12, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gfs2: fsid=%s: error recovering journal %u: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.162 = internal global ptr @init_journal._entry.160, section ".printk_index", align 4
@init_journal._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.138, ptr @.str.12, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gfs2: fsid=%s: error recovering my journal: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@init_journal._entry_ptr.165 = internal global ptr @init_journal._entry.163, section ".printk_index", align 4
@init_journal.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.166 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&sdp->sd_freeze_work)\00", [56 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"journal%u\00", [22 x i8] zeroinitializer }, align 32
@gfs2_jindex_hold.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&jd->jd_work)\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_gfs2_log_blocks = external dso_local global %struct.tracepoint, align 4
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/trace_gfs2.h\00", [43 x i8] zeroinitializer }, align 32
@trace_gfs2_log_blocks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.170 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"statfs\00", [25 x i8] zeroinitializer }, align 32
@init_statfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.12, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gfs2: fsid=%s: can't read in statfs inode: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_statfs\00", [20 x i8] zeroinitializer }, align 32
@init_statfs._entry_ptr = internal global ptr @init_statfs._entry, section ".printk_index", align 4
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_node\00", [23 x i8] zeroinitializer }, align 32
@init_statfs._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.174, ptr @.str.12, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013gfs2: fsid=%s: can't find per_node directory: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@init_statfs._entry_ptr.178 = internal global ptr @init_statfs._entry.176, section ".printk_index", align 4
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"statfs_change%u\00", [16 x i8] zeroinitializer }, align 32
@init_statfs._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.174, ptr @.str.12, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013gfs2: fsid=%s: can't find local \22sc\22 file#%u: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@init_statfs._entry_ptr.182 = internal global ptr @init_statfs._entry.180, section ".printk_index", align 4
@init_statfs._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.174, ptr @.str.12, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gfs2: fsid=%s: can't lock local \22sc\22 file: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_statfs._entry_ptr.185 = internal global ptr @init_statfs._entry.183, section ".printk_index", align 4
@init_statfs._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.174, ptr @.str.12, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gfs2: fsid=%s: Cannot read in local statfs: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@init_statfs._entry_ptr.188 = internal global ptr @init_statfs._entry.186, section ".printk_index", align 4
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIRSTMOUNT=Done\00", [16 x i8] zeroinitializer }, align 32
@gfs2_others_may_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.12, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gfs2: fsid=%s: first mount done, others may mount\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gfs2_others_may_mount\00", [42 x i8] zeroinitializer }, align 32
@gfs2_others_may_mount._entry_ptr = internal global ptr @gfs2_others_may_mount._entry, section ".printk_index", align 4
@init_per_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.192, ptr @.str.12, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_per_node\00", [18 x i8] zeroinitializer }, align 32
@init_per_node._entry_ptr = internal global ptr @init_per_node._entry, section ".printk_index", align 4
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"quota_change%u\00", [17 x i8] zeroinitializer }, align 32
@init_per_node._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.192, ptr @.str.12, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gfs2: fsid=%s: can't find local \22qc\22 file: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_per_node._entry_ptr.196 = internal global ptr @init_per_node._entry.194, section ".printk_index", align 4
@init_per_node._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.192, ptr @.str.12, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gfs2: fsid=%s: can't lock local \22qc\22 file: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_per_node._entry_ptr.199 = internal global ptr @init_per_node._entry.197, section ".printk_index", align 4
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfs2_logd\00", [22 x i8] zeroinitializer }, align 32
@init_threads._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.12, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gfs2: fsid=%s: can't start logd thread: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_threads\00", [19 x i8] zeroinitializer }, align 32
@init_threads._entry_ptr = internal global ptr @init_threads._entry, section ".printk_index", align 4
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gfs2_quotad\00", [20 x i8] zeroinitializer }, align 32
@init_threads._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.202, ptr @.str.12, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gfs2: fsid=%s: can't start quotad thread: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@init_threads._entry_ptr.206 = internal global ptr @init_threads._entry.204, section ".printk_index", align 4
@.str.207 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"reconfiguration of locking protocol not allowed\00", [48 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"reconfiguration of lock table not allowed\00", [54 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reconfiguration of host data not allowed\00", [55 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"reconfiguration of spectator mode not allowed\00", [50 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reconfiguration of localflocks not allowed\00", [53 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"switching between gfs2 and gfs2meta not allowed\00", [48 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to remount read-write\00", [35 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lockproto\00", [22 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"locktable\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hostdata\00", [23 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spectator\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"norecovery\00", [21 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ignore_local_fs\00", [16 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"localflocks\00", [20 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"localcaching\00", [19 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"upgrade\00", [24 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suiddir\00", [24 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@gfs2_param_data = internal constant { [3 x %struct.constant_table], [40 x i8] } { [3 x %struct.constant_table] [%struct.constant_table { ptr @.str.237, i32 1 }, %struct.constant_table { ptr @.str.238, i32 2 }, %struct.constant_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"meta\00", [27 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"commit\00", [25 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errors\00", [25 x i8] zeroinitializer }, align 32
@gfs2_param_errors = internal constant { [3 x %struct.constant_table], [40 x i8] } { [3 x %struct.constant_table] [%struct.constant_table { ptr @.str.239, i32 0 }, %struct.constant_table { ptr @.str.240, i32 3 }, %struct.constant_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"statfs_quantum\00", [17 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"statfs_percent\00", [17 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"quota_quantum\00", [18 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"barrier\00", [24 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rgrplvb\00", [24 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"loccookie\00", [22 x i8] zeroinitializer }, align 32
@gfs2_param_quota = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.241, i32 0 }, %struct.constant_table { ptr @.str.242, i32 1 }, %struct.constant_table { ptr @.str.243, i32 2 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ordered\00", [24 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"withdraw\00", [23 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"account\00", [24 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@gfs2_meta_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @gfs2_fc_free, ptr null, ptr null, ptr null, ptr @gfs2_meta_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@gfs2_meta_get_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.12, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014gfs2: path_lookup on %s returned error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfs2_meta_get_tree\00", [45 x i8] zeroinitializer }, align 32
@gfs2_meta_get_tree._entry_ptr = internal global ptr @gfs2_meta_get_tree._entry, section ".printk_index", align 4
@gfs2_meta_get_tree._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.245, ptr @.str.12, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014gfs2: gfs2 mount does not exist\0A\00", [61 x i8] zeroinitializer }, align 32
@gfs2_meta_get_tree._entry_ptr.248 = internal global ptr @gfs2_meta_get_tree._entry.246, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [26 x i64] [i64 24, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 1801, i64 1802]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1097, i32 14 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1098, i32 21 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1739, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant [19 x i8] c"gfs2_fs_parameters\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1403, i32 39 }
@___asan_gen_.265 = private unnamed_addr constant [13 x i8] c"gfs2_fs_type\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1738, i32 25 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1749, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"gfs2meta_fs_type\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1748, i32 25 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"gfs2_context_ops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1627, i32 43 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1468, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1498, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1503, i32 11 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1508, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1513, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1532, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1148, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1195, i32 51 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1238, i32 52 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1241, i32 52 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1254, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1281, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 90, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 91, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 95, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 97, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 101, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 102, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 106, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 107, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 108, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 110, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 111, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 125, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 129, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 131, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 132, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 133, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 137, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 139, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 141, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 55, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 87, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 678, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 788, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 260, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 194, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 44, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 167, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 174, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 180, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1011, i32 14 }
@___asan_gen_.502 = private unnamed_addr constant [11 x i8] c"nolock_ops\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 987, i32 32 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1015, i32 21 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1019, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1023, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1028, i32 58 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1057, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1063, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1069, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant [14 x i8] c"nolock_tokens\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 982, i32 28 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 983, i32 13 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 411, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 421, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 428, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 435, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 485, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 491, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 511, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 518, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 527, i32 57 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 533, i32 59 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 293, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 463, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 468, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.635, i32 73, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 892, i32 46 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 895, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 901, i32 51 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 904, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 911, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [22 x i8] c"gfs2_quota_imutex_key\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 876, i32 30 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 743, i32 46 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 745, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 753, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 759, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 771, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 773, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 786, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 796, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 803, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 834, i32 5 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 844, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 853, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 584, i32 27 }
@___asan_gen_.739 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 606, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant [24 x i8] c"../fs/gfs2/trace_gfs2.h\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 378, i32 1 }
@___asan_gen_.752 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 108, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 650, i32 52 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 653, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 659, i32 34 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 662, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 675, i32 16 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 679, i32 4 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 697, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 703, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 546, i32 18 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 549, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 948, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 952, i32 15 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 956, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 967, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1107, i32 6 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1110, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1115, i32 6 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1118, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1558, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1562, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1566, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1570, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1574, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1578, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1596, i32 5 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1404, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1405, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1406, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1407, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1408, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1409, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1410, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1411, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1412, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1413, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1414, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1415, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1416, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant [16 x i8] c"gfs2_param_data\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1386, i32 36 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1417, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1418, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1419, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1420, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant [18 x i8] c"gfs2_param_errors\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1397, i32 36 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1421, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1422, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1423, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1424, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1425, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1426, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant [17 x i8] c"gfs2_param_quota\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1374, i32 36 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1387, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1388, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1398, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1399, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1375, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1376, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1377, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant [22 x i8] c"gfs2_meta_context_ops\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1704, i32 43 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1683, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.985 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.986 = private constant [24 x i8] c"../fs/gfs2/ops_fstype.c\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.986, i32 1692, i32 3 }
@llvm.compiler.used = appending global [295 x ptr] [ptr @__UNIQUE_ID_alias373, ptr @__UNIQUE_ID_alias374, ptr @end_bio_io_page._entry, ptr @end_bio_io_page._entry_ptr, ptr @gfs2_check_sb._entry, ptr @gfs2_check_sb._entry.72, ptr @gfs2_check_sb._entry.75, ptr @gfs2_check_sb._entry_ptr, ptr @gfs2_check_sb._entry_ptr.74, ptr @gfs2_check_sb._entry_ptr.77, ptr @gfs2_fill_super._entry, ptr @gfs2_fill_super._entry.16, ptr @gfs2_fill_super._entry.19, ptr @gfs2_fill_super._entry_ptr, ptr @gfs2_fill_super._entry_ptr.18, ptr @gfs2_fill_super._entry_ptr.21, ptr @gfs2_lm_mount._entry, ptr @gfs2_lm_mount._entry.82, ptr @gfs2_lm_mount._entry.86, ptr @gfs2_lm_mount._entry.89, ptr @gfs2_lm_mount._entry.92, ptr @gfs2_lm_mount._entry_ptr, ptr @gfs2_lm_mount._entry_ptr.84, ptr @gfs2_lm_mount._entry_ptr.88, ptr @gfs2_lm_mount._entry_ptr.91, ptr @gfs2_lm_mount._entry_ptr.94, ptr @gfs2_lookup_root._entry, ptr @gfs2_lookup_root._entry.124, ptr @gfs2_lookup_root._entry_ptr, ptr @gfs2_lookup_root._entry_ptr.126, ptr @gfs2_meta_get_tree._entry, ptr @gfs2_meta_get_tree._entry.246, ptr @gfs2_meta_get_tree._entry_ptr, ptr @gfs2_meta_get_tree._entry_ptr.248, ptr @gfs2_others_may_mount._entry, ptr @gfs2_others_may_mount._entry_ptr, ptr @gfs2_read_sb._entry, ptr @gfs2_read_sb._entry_ptr, ptr @init_inodes._entry, ptr @init_inodes._entry.132, ptr @init_inodes._entry_ptr, ptr @init_inodes._entry_ptr.134, ptr @init_journal._entry, ptr @init_journal._entry.139, ptr @init_journal._entry.142, ptr @init_journal._entry.145, ptr @init_journal._entry.148, ptr @init_journal._entry.151, ptr @init_journal._entry.154, ptr @init_journal._entry.157, ptr @init_journal._entry.160, ptr @init_journal._entry.163, ptr @init_journal._entry_ptr, ptr @init_journal._entry_ptr.141, ptr @init_journal._entry_ptr.144, ptr @init_journal._entry_ptr.147, ptr @init_journal._entry_ptr.150, ptr @init_journal._entry_ptr.153, ptr @init_journal._entry_ptr.156, ptr @init_journal._entry_ptr.159, ptr @init_journal._entry_ptr.162, ptr @init_journal._entry_ptr.165, ptr @init_locking._entry, ptr @init_locking._entry.101, ptr @init_locking._entry.104, ptr @init_locking._entry.98, ptr @init_locking._entry_ptr, ptr @init_locking._entry_ptr.100, ptr @init_locking._entry_ptr.103, ptr @init_locking._entry_ptr.106, ptr @init_per_node._entry, ptr @init_per_node._entry.194, ptr @init_per_node._entry.197, ptr @init_per_node._entry_ptr, ptr @init_per_node._entry_ptr.196, ptr @init_per_node._entry_ptr.199, ptr @init_sb._entry, ptr @init_sb._entry.109, ptr @init_sb._entry.112, ptr @init_sb._entry.115, ptr @init_sb._entry_ptr, ptr @init_sb._entry_ptr.111, ptr @init_sb._entry_ptr.114, ptr @init_sb._entry_ptr.117, ptr @init_statfs._entry, ptr @init_statfs._entry.176, ptr @init_statfs._entry.180, ptr @init_statfs._entry.183, ptr @init_statfs._entry.186, ptr @init_statfs._entry_ptr, ptr @init_statfs._entry_ptr.178, ptr @init_statfs._entry_ptr.182, ptr @init_statfs._entry_ptr.185, ptr @init_statfs._entry_ptr.188, ptr @init_threads._entry, ptr @init_threads._entry.204, ptr @init_threads._entry_ptr, ptr @init_threads._entry_ptr.206, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gfs2_fs_parameters, ptr @gfs2_fs_type, ptr @.str.3, ptr @gfs2meta_fs_type, ptr @gfs2_context_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @init_sbd.__key, ptr @.str.22, ptr @init_sbd.__key.23, ptr @.str.24, ptr @init_sbd.__key.25, ptr @.str.26, ptr @init_sbd.__key.27, ptr @.str.28, ptr @init_sbd.__key.29, ptr @.str.30, ptr @init_sbd.__key.31, ptr @.str.32, ptr @init_sbd.__key.33, ptr @.str.34, ptr @init_sbd.__key.35, ptr @.str.36, ptr @init_sbd.__key.37, ptr @.str.38, ptr @init_sbd.__key.39, ptr @.str.40, ptr @init_sbd.__key.41, ptr @.str.42, ptr @init_sbd.__key.43, ptr @.str.44, ptr @init_sbd.__key.45, ptr @.str.46, ptr @init_sbd.__key.47, ptr @.str.48, ptr @init_sbd.__key.49, ptr @.str.50, ptr @init_sbd.__key.51, ptr @.str.52, ptr @init_sbd.__key.53, ptr @.str.54, ptr @init_sbd.__key.55, ptr @.str.56, ptr @init_sbd.__key.57, ptr @.str.58, ptr @gfs2_tune_init.__key, ptr @.str.59, ptr @init_completion.__key, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @nolock_ops, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @nolock_tokens, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @gfs2_quota_imutex_key, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @init_journal.__key, ptr @.str.166, ptr @.str.167, ptr @gfs2_jindex_hold.__key, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @gfs2_param_data, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @gfs2_param_errors, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @gfs2_param_quota, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @gfs2_meta_context_ops, ptr @.str.244, ptr @.str.245, ptr @.str.247], section "llvm.metadata"
@0 = internal global [245 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_fs_parameters to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2meta_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_fill_super._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sbd.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_tune_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @end_bio_io_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_check_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_check_sb._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_check_sb._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nolock_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lm_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lm_mount._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lm_mount._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lm_mount._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lm_mount._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nolock_tokens to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_locking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_locking._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_locking._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_locking._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sb._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sb._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sb._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_read_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lookup_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lookup_root._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_inodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_inodes._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_quota_imutex_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_journal.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_jindex_hold.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_statfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_statfs._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_statfs._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_statfs._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_statfs._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_others_may_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_per_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_per_node._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_per_node._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_threads._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_threads._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_param_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_param_errors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_param_quota to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_meta_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_meta_get_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_meta_get_tree._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_sbd(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_lkstats = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 1
  %0 = ptrtoint ptr %sd_lkstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_lkstats, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @free_percpu(ptr noundef nonnull %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %sdp) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_lm_unmount(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %0 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_ops, align 4
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %2 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sd_flags.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.if.end_crit_edge, !prof !471

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

gfs2_withdrawn.exit:                              ; preds = %entry
  %5 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sd_flags.i, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.i.not = icmp eq i32 %7, 0
  br i1 %tobool3.i.not, label %land.lhs.true, label %gfs2_withdrawn.exit.if.end_crit_edge, !prof !472

gfs2_withdrawn.exit.if.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %gfs2_withdrawn.exit
  %lm_unmount = getelementptr inbounds %struct.lm_lockops, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lm_unmount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lm_unmount, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %9(ptr noundef %sdp) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %gfs2_withdrawn.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_online_uevent(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %ro = alloca [20 x i8], align 1
  %spectator = alloca [20 x i8], align 1
  %envp = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ro) #17
  %2 = call ptr @memset(ptr %ro, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %spectator) #17
  %3 = call ptr @memset(ptr %spectator, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #17
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
  %sd_kobj = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 2
  %call8 = call i32 @kobject_uevent_env(ptr noundef %sd_kobj, i32 noundef 4, ptr noundef nonnull %envp) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %spectator) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ro) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 212) #20
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %purpose = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 17
  %1 = ptrtoint ptr %purpose to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %purpose, align 4
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp1 = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %sd_args = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 21
  %8 = call ptr @memcpy(ptr %call7.i, ptr %sd_args, i32 212)
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %9 = call ptr @memset(ptr %call7.i, i32 0, i32 212)
  %ar_quota = getelementptr inbounds %struct.gfs2_args, ptr %call7.i, i32 0, i32 3
  %ar_commit = getelementptr inbounds %struct.gfs2_args, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %ar_commit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 30, ptr %ar_commit, align 4
  %ar_statfs_quantum = getelementptr inbounds %struct.gfs2_args, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %ar_statfs_quantum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %ar_statfs_quantum, align 8
  %ar_quota_quantum = getelementptr inbounds %struct.gfs2_args, ptr %call7.i, i32 0, i32 6
  %12 = ptrtoint ptr %ar_quota_quantum to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 60, ptr %ar_quota_quantum, align 4
  %13 = ptrtoint ptr %ar_quota to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %ar_quota, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %14 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %fs_private, align 4
  %15 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gfs2_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @gfs2_log_flush(ptr noundef nonnull %1, ptr noundef null, i32 noundef 131076) #17
  %sd_root_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %sd_root_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_root_dir, align 8
  tail call void @dput(ptr noundef %3) #17
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_master_dir, align 4
  tail call void @dput(ptr noundef %5) #17
  %6 = ptrtoint ptr %sd_root_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sd_root_dir, align 8
  %7 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sd_master_dir, align 4
  tail call void @shrink_dcache_sb(ptr noundef %sb) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @kill_block_super(ptr noundef %sb) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_meta_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 212) #20
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %purpose.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 17
  %1 = ptrtoint ptr %purpose.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load.i = load i32, ptr %purpose.i, align 4
  %bf.lshr.mask.i = and i32 %bf.load.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask.i)
  %cmp1.i = icmp eq i32 %bf.lshr.mask.i, 33554432
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %root.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %sd_args.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 21
  %8 = call ptr @memcpy(ptr %call7.i.i, ptr %sd_args.i, i32 212)
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %9 = call ptr @memset(ptr %call7.i.i, i32 0, i32 212)
  %ar_quota.i = getelementptr inbounds %struct.gfs2_args, ptr %call7.i.i, i32 0, i32 3
  %ar_commit.i = getelementptr inbounds %struct.gfs2_args, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %ar_commit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 30, ptr %ar_commit.i, align 4
  %ar_statfs_quantum.i = getelementptr inbounds %struct.gfs2_args, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ar_statfs_quantum.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %ar_statfs_quantum.i, align 8
  %ar_quota_quantum.i = getelementptr inbounds %struct.gfs2_args, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %ar_quota_quantum.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 60, ptr %ar_quota_quantum.i, align 4
  %13 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %ar_quota.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then2.i
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %14 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %fs_private.i, align 4
  %15 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gfs2_meta_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_fc_free(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #17
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @gfs2_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %if.end.cleanup_crit_edge
    i32 5, label %sw.bb9
    i32 6, label %if.end.cleanup_crit_edge213
    i32 7, label %sw.bb13
    i32 8, label %if.end.cleanup_crit_edge214
    i32 9, label %sw.bb25
    i32 11, label %sw.bb33
    i32 10, label %sw.bb41
    i32 12, label %sw.bb48
    i32 13, label %sw.bb56
    i32 14, label %sw.bb62
    i32 15, label %sw.bb66
    i32 16, label %sw.bb74
    i32 18, label %sw.bb83
    i32 20, label %sw.bb92
    i32 19, label %sw.bb101
    i32 17, label %sw.bb112
    i32 21, label %sw.bb133
    i32 22, label %sw.bb141
    i32 23, label %sw.bb152
  ]

if.end.cleanup_crit_edge214:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.cleanup_crit_edge213:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %4 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = call i32 @strlcpy(ptr noundef %1, ptr noundef %6, i32 noundef 64) #17
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ar_locktable = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call4 = call i32 @strlcpy(ptr noundef %ar_locktable, ptr noundef %9, i32 noundef 64) #17
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ar_hostdata = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call7 = call i32 @strlcpy(ptr noundef %ar_hostdata, ptr noundef %12, i32 noundef 64) #17
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ar_spectator = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %ar_spectator, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %ar_spectator, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ar_localflocks = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ar_localflocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load10 = load i32, ptr %ar_localflocks, align 4
  %bf.set12 = or i32 %bf.load10, 1073741824
  store i32 %bf.set12, ptr %ar_localflocks, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %15 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 8, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %sw.bb13.if.end20_crit_edge, label %land.lhs.true

sw.bb13.if.end20_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

land.lhs.true:                                    ; preds = %sw.bb13
  %ar_errors = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load14 = load i32, ptr %ar_errors, align 4
  %19 = and i32 %bf.load14, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %19)
  %cmp16 = icmp eq i32 %19, 1572864
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %log18 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %log18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log18, align 4
  %22 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %21, ptr noundef %23, i8 noundef zeroext 101, ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %sw.bb13.if.end20_crit_edge
  %24 = zext i8 %17 to i32
  %ar_debug = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %ar_debug to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load22 = load i32, ptr %ar_debug, align 4
  %bf.shl = shl nuw nsw i32 %24, 29
  %bf.clear23 = and i32 %bf.load22, -536870913
  %bf.set24 = or i32 %bf.clear23, %bf.shl
  store i32 %bf.set24, ptr %ar_debug, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %26 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 8, !range !473
  %29 = zext i8 %28 to i32
  %ar_posix_acl = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %ar_posix_acl to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load28 = load i32, ptr %ar_posix_acl, align 4
  %bf.shl30 = shl nuw nsw i32 %29, 28
  %bf.clear31 = and i32 %bf.load28, -268435457
  %bf.set32 = or i32 %bf.clear31, %bf.shl30
  store i32 %bf.set32, ptr %ar_posix_acl, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %result, align 8, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool34.not = icmp eq i8 %32, 0
  %cond = select i1 %tobool34.not, i32 134217728, i32 0
  %ar_quota = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load36 = load i32, ptr %ar_quota, align 4
  %bf.clear39 = and i32 %bf.load36, -201326593
  %bf.set40 = or i32 %bf.clear39, %cond
  store i32 %bf.set40, ptr %ar_quota, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %34 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %ar_quota42 = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %ar_quota42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load43 = load i32, ptr %ar_quota42, align 4
  %bf.value44 = shl i32 %36, 26
  %bf.shl45 = and i32 %bf.value44, 201326592
  %bf.clear46 = and i32 %bf.load43, -201326593
  %bf.set47 = or i32 %bf.clear46, %bf.shl45
  store i32 %bf.set47, ptr %ar_quota42, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %38 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 8, !range !473
  %41 = zext i8 %40 to i32
  %ar_suiddir = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %ar_suiddir to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load51 = load i32, ptr %ar_suiddir, align 4
  %bf.shl53 = shl nuw nsw i32 %41, 25
  %bf.clear54 = and i32 %bf.load51, -33554433
  %bf.set55 = or i32 %bf.clear54, %bf.shl53
  store i32 %bf.set55, ptr %ar_suiddir, align 4
  br label %cleanup

sw.bb56:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %43 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %ar_data = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %ar_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load57 = load i32, ptr %ar_data, align 4
  %bf.value58 = shl i32 %45, 23
  %bf.shl59 = and i32 %bf.value58, 25165824
  %bf.clear60 = and i32 %bf.load57, -25165825
  %bf.set61 = or i32 %bf.clear60, %bf.shl59
  store i32 %bf.set61, ptr %ar_data, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ar_meta = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %ar_meta to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load63 = load i32, ptr %ar_meta, align 4
  %bf.set65 = or i32 %bf.load63, 4194304
  store i32 %bf.set65, ptr %ar_meta, align 4
  br label %cleanup

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %48 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 8, !range !473
  %51 = zext i8 %50 to i32
  %ar_discard = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %ar_discard to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load69 = load i32, ptr %ar_discard, align 4
  %bf.shl71 = shl nuw nsw i32 %51, 21
  %bf.clear72 = and i32 %bf.load69, -2097153
  %bf.set73 = or i32 %bf.clear72, %bf.shl71
  store i32 %bf.set73, ptr %ar_discard, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %if.end
  %53 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp75 = icmp slt i32 %55, 1
  br i1 %cmp75, label %if.then77, label %if.end82

if.then77:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #19
  %log79 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %log79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %log79, align 4
  %58 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %57, ptr noundef %59, i8 noundef zeroext 101, ptr noundef nonnull @.str.5) #17
  br label %cleanup

if.end82:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #19
  %ar_commit = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %ar_commit to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %ar_commit, align 4
  br label %cleanup

sw.bb83:                                          ; preds = %if.end
  %61 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp84 = icmp slt i32 %63, 0
  br i1 %cmp84, label %if.then86, label %if.end91

if.then86:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #19
  %log88 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %64 = ptrtoint ptr %log88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %log88, align 4
  %66 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %65, ptr noundef %67, i8 noundef zeroext 101, ptr noundef nonnull @.str.6) #17
  br label %cleanup

if.end91:                                         ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #19
  %ar_statfs_quantum = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %ar_statfs_quantum to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %ar_statfs_quantum, align 4
  br label %cleanup

sw.bb92:                                          ; preds = %if.end
  %69 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp93 = icmp slt i32 %71, 1
  br i1 %cmp93, label %if.then95, label %if.end100

if.then95:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #19
  %log97 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %log97 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %log97, align 4
  %74 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %73, ptr noundef %75, i8 noundef zeroext 101, ptr noundef nonnull @.str.7) #17
  br label %cleanup

if.end100:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #19
  %ar_quota_quantum = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 6
  %76 = ptrtoint ptr %ar_quota_quantum to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %71, ptr %ar_quota_quantum, align 4
  br label %cleanup

sw.bb101:                                         ; preds = %if.end
  %77 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %79)
  %80 = icmp ugt i32 %79, 100
  br i1 %80, label %if.then106, label %if.end111

if.then106:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #19
  %log108 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %81 = ptrtoint ptr %log108 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %log108, align 4
  %83 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %82, ptr noundef %84, i8 noundef zeroext 101, ptr noundef nonnull @.str.8) #17
  br label %cleanup

if.end111:                                        ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #19
  %ar_statfs_percent = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 7
  %85 = ptrtoint ptr %ar_statfs_percent to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %79, ptr %ar_statfs_percent, align 4
  br label %cleanup

sw.bb112:                                         ; preds = %if.end
  %ar_debug113 = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %ar_debug113 to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load114 = load i32, ptr %ar_debug113, align 4
  %87 = and i32 %bf.load114, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool117.not = icmp eq i32 %87, 0
  br i1 %tobool117.not, label %sw.bb112.if.end126_crit_edge, label %land.lhs.true118

sw.bb112.if.end126_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end126

land.lhs.true118:                                 ; preds = %sw.bb112
  %88 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp119 = icmp eq i32 %90, 3
  br i1 %cmp119, label %if.then121, label %land.lhs.true118.if.end126_crit_edge

land.lhs.true118.if.end126_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end126

if.then121:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #19
  %log123 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %log123 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %log123, align 4
  %93 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %92, ptr noundef %94, i8 noundef zeroext 101, ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end126:                                        ; preds = %land.lhs.true118.if.end126_crit_edge, %sw.bb112.if.end126_crit_edge
  %95 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %bf.value129 = shl i32 %97, 19
  %bf.shl130 = and i32 %bf.value129, 1572864
  %bf.clear131 = and i32 %bf.load114, -1572865
  %bf.set132 = or i32 %bf.shl130, %bf.clear131
  %98 = ptrtoint ptr %ar_debug113 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %bf.set132, ptr %ar_debug113, align 4
  br label %cleanup

sw.bb133:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %99 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 8, !range !473
  %102 = zext i8 %101 to i32
  %ar_nobarrier = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %103 = ptrtoint ptr %ar_nobarrier to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load136 = load i32, ptr %ar_nobarrier, align 4
  %bf.shl138 = shl nuw nsw i32 %102, 18
  %bf.clear139 = and i32 %bf.load136, -262145
  %bf.set140 = or i32 %bf.clear139, %bf.shl138
  store i32 %bf.set140, ptr %ar_nobarrier, align 4
  br label %cleanup

sw.bb141:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %104 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 8, !range !473
  %107 = zext i8 %106 to i32
  %ar_rgrplvb = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %108 = ptrtoint ptr %ar_rgrplvb to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load144 = load i32, ptr %ar_rgrplvb, align 4
  %bf.shl146 = shl nuw nsw i32 %107, 17
  %bf.clear147 = and i32 %bf.load144, -196609
  %bf.set148 = or i32 %bf.clear147, %bf.shl146
  %bf.set151 = or i32 %bf.set148, 65536
  store i32 %bf.set151, ptr %ar_rgrplvb, align 4
  br label %cleanup

sw.bb152:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %109 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 8, !range !473
  %112 = zext i8 %111 to i32
  %ar_loccookie = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %113 = ptrtoint ptr %ar_loccookie to i32
  call void @__asan_load4_noabort(i32 %113)
  %bf.load155 = load i32, ptr %ar_loccookie, align 4
  %bf.shl157 = shl nuw nsw i32 %112, 15
  %bf.clear158 = and i32 %bf.load155, -32769
  %bf.set159 = or i32 %bf.clear158, %bf.shl157
  store i32 %bf.set159, ptr %ar_loccookie, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %log161 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %114 = ptrtoint ptr %log161 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %log161, align 4
  %116 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %log.i, align 4
  %118 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %115, ptr noundef %117, i8 noundef zeroext 101, ptr noundef nonnull @.str.9, ptr noundef %119) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb152, %sw.bb141, %sw.bb133, %if.end126, %if.then121, %if.end111, %if.then106, %if.end100, %if.then95, %if.end91, %if.then86, %if.end82, %if.then77, %sw.bb66, %sw.bb62, %sw.bb56, %sw.bb48, %sw.bb41, %sw.bb33, %sw.bb25, %if.end20, %if.then17, %sw.bb9, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge213, %if.end.cleanup_crit_edge214, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.then121 ], [ -22, %if.then106 ], [ -22, %if.then95 ], [ -22, %if.then86 ], [ -22, %if.then77 ], [ -22, %if.then17 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %sw.bb152 ], [ 0, %sw.bb141 ], [ 0, %sw.bb133 ], [ 0, %if.end126 ], [ 0, %if.end111 ], [ 0, %if.end100 ], [ 0, %if.end91 ], [ 0, %if.end82 ], [ 0, %sw.bb66 ], [ 0, %sw.bb62 ], [ 0, %sw.bb56 ], [ 0, %sw.bb48 ], [ 0, %sw.bb41 ], [ 0, %sw.bb33 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge213 ], [ 0, %if.end.cleanup_crit_edge214 ], [ 0, %sw.bb25 ], [ 0, %if.end20 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %sw.bb5 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %call = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @gfs2_fill_super) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  tail call void @dput(ptr noundef %3) #17
  %ar_meta = getelementptr inbounds %struct.gfs2_args, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ar_meta to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ar_meta, align 4
  %9 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 34
  %10 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_master_dir, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then3.if.end8_crit_edge, label %if.then3.if.end8.sink.split_crit_edge

if.then3.if.end8.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.sink.split

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.else:                                          ; preds = %if.end
  %sd_root_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 35
  %12 = ptrtoint ptr %sd_root_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_root_dir, align 8
  %tobool.not.i18 = icmp eq ptr %13, null
  br i1 %tobool.not.i18, label %if.else.if.end8_crit_edge, label %if.else.if.end8.sink.split_crit_edge

if.else.if.end8.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.sink.split

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end8.sink.split:                               ; preds = %if.else.if.end8.sink.split_crit_edge, %if.then3.if.end8.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.then3.if.end8.sink.split_crit_edge ], [ %13, %if.else.if.end8.sink.split_crit_edge ]
  %d_lockref.i19 = getelementptr inbounds %struct.dentry, ptr %.sink, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i19) #17
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.else.if.end8_crit_edge, %if.then3.if.end8_crit_edge
  %storemerge = phi ptr [ null, %if.then3.if.end8_crit_edge ], [ null, %if.else.if.end8_crit_edge ], [ %.sink, %if.end8.sink.split ]
  %14 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %storemerge, ptr %root, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_reconfigure(ptr nocapture noundef %fc) #0 align 64 {
entry:
  %freeze_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %sd_args = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private, align 4
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 22
  %call = tail call i32 @sync_filesystem(ptr noundef %3) #17
  tail call void @_raw_spin_lock(ptr noundef %sd_tune) #17
  %gt_logd_secs = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %gt_logd_secs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gt_logd_secs, align 4
  %ar_commit = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 4
  %10 = ptrtoint ptr %ar_commit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ar_commit, align 4
  %gt_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %gt_quota_quantum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gt_quota_quantum, align 4
  %ar_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 6
  %13 = ptrtoint ptr %ar_quota_quantum to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ar_quota_quantum, align 4
  %gt_statfs_slow = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 22, i32 10
  %14 = ptrtoint ptr %gt_statfs_slow to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gt_statfs_slow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %gt_statfs_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 22, i32 9
  %16 = ptrtoint ptr %gt_statfs_quantum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gt_statfs_quantum, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ %17, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %18 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_tune) #17
  %call5 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %sd_args) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log8 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %log8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log8, align 4
  %22 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %21, ptr noundef %23, i8 noundef zeroext 101, ptr noundef nonnull @.str.207) #17
  br label %cleanup135

if.end10:                                         ; preds = %if.end
  %ar_locktable = getelementptr inbounds %struct.gfs2_args, ptr %7, i32 0, i32 1
  %ar_locktable12 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 1
  %call14 = tail call i32 @strcmp(ptr noundef %ar_locktable, ptr noundef %ar_locktable12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %log17 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log18 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %log18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log18, align 4
  %26 = ptrtoint ptr %log17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %log17, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %25, ptr noundef %27, i8 noundef zeroext 101, ptr noundef nonnull @.str.208) #17
  br label %cleanup135

if.end21:                                         ; preds = %if.end10
  %ar_hostdata = getelementptr inbounds %struct.gfs2_args, ptr %7, i32 0, i32 2
  %ar_hostdata23 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 2
  %call25 = tail call i32 @strcmp(ptr noundef %ar_hostdata, ptr noundef %ar_hostdata23) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %log28 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log29 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %log29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %log29, align 4
  %30 = ptrtoint ptr %log28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %log28, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %29, ptr noundef %31, i8 noundef zeroext 101, ptr noundef nonnull @.str.209) #17
  br label %cleanup135

if.end32:                                         ; preds = %if.end21
  %ar_spectator = getelementptr inbounds %struct.gfs2_args, ptr %7, i32 0, i32 3
  %32 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load = load i32, ptr %ar_spectator, align 4
  %ar_spectator33 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 3
  %33 = ptrtoint ptr %ar_spectator33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load34 = load i32, ptr %ar_spectator33, align 4
  %cmp.not.unshifted = xor i32 %bf.load34, %bf.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmp.not.unshifted)
  %cmp.not = icmp sgt i32 %cmp.not.unshifted, -1
  br i1 %cmp.not, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %log37 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log38 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %log38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log38, align 4
  %36 = ptrtoint ptr %log37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %log37, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %35, ptr noundef %37, i8 noundef zeroext 101, ptr noundef nonnull @.str.210) #17
  br label %cleanup135

if.end41:                                         ; preds = %if.end32
  %38 = and i32 %cmp.not.unshifted, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp48.not = icmp eq i32 %38, 0
  br i1 %cmp48.not, label %if.end54, label %if.then49

if.then49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %log50 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log51 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %log51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %log51, align 4
  %41 = ptrtoint ptr %log50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %log50, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %40, ptr noundef %42, i8 noundef zeroext 101, ptr noundef nonnull @.str.211) #17
  br label %cleanup135

if.end54:                                         ; preds = %if.end41
  %43 = and i32 %cmp.not.unshifted, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp62.not = icmp eq i32 %43, 0
  br i1 %cmp62.not, label %if.end68, label %if.then63

if.then63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %log64 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log65 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %log65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %log65, align 4
  %46 = ptrtoint ptr %log64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %log64, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %45, ptr noundef %47, i8 noundef zeroext 101, ptr noundef nonnull @.str.212) #17
  br label %cleanup135

if.end68:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load34)
  %tobool72.not = icmp sgt i32 %bf.load34, -1
  br i1 %tobool72.not, label %if.end68.if.end74_crit_edge, label %if.then73

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %48 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sb_flags, align 4
  %or = or i32 %49, 1
  store i32 %or, ptr %sb_flags, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end68.if.end74_crit_edge
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %50 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_flags, align 4
  %sb_flags75 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %52 = ptrtoint ptr %sb_flags75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sb_flags75, align 4
  %xor = xor i32 %53, %51
  %and = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.end74.if.end96_crit_edge, label %if.then77

if.end74.if.end96_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

if.then77:                                        ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freeze_gh) #17
  %54 = call ptr @memset(ptr %freeze_gh, i32 255, i32 32)
  %call78 = call i32 @gfs2_freeze_lock(ptr noundef %5, ptr noundef nonnull %freeze_gh, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %cleanup

if.end81:                                         ; preds = %if.then77
  %55 = ptrtoint ptr %sb_flags75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sb_flags75, align 4
  %and83 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else86, label %if.then85

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  call void @gfs2_make_fs_ro(ptr noundef %5) #17
  br label %cleanup.thread

if.else86:                                        ; preds = %if.end81
  %call87 = call i32 @gfs2_make_fs_rw(ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.else86.cleanup.thread_crit_edge, label %if.then89

if.else86.cleanup.thread_crit_edge:               ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.then89:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #19
  %log90 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log91 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %log91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %log91, align 4
  %59 = ptrtoint ptr %log90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %log90, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %58, ptr noundef %60, i8 noundef zeroext 101, ptr noundef nonnull @.str.213) #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then89, %if.else86.cleanup.thread_crit_edge, %if.then85
  %error.0 = phi i32 [ 0, %if.then85 ], [ %call87, %if.then89 ], [ 0, %if.else86.cleanup.thread_crit_edge ]
  call void @gfs2_freeze_unlock(ptr noundef nonnull %freeze_gh) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freeze_gh) #17
  br label %if.end96

cleanup:                                          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freeze_gh) #17
  br label %cleanup135

if.end96:                                         ; preds = %cleanup.thread, %if.end74.if.end96_crit_edge
  %error.2 = phi i32 [ 0, %if.end74.if.end96_crit_edge ], [ %error.0, %cleanup.thread ]
  %61 = call ptr @memcpy(ptr %sd_args, ptr %7, i32 212)
  %62 = ptrtoint ptr %ar_spectator33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load99 = load i32, ptr %ar_spectator33, align 4
  %63 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_flags, align 4
  %and108 = and i32 %64, -65537
  %65 = lshr i32 %bf.load99, 12
  %66 = and i32 %65, 65536
  %storemerge = or i32 %and108, %66
  store i32 %storemerge, ptr %s_flags, align 4
  %bf.load111 = load i32, ptr %ar_spectator33, align 4
  %67 = and i32 %bf.load111, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool114.not = icmp eq i32 %67, 0
  %sd_flags117 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 4
  br i1 %tobool114.not, label %if.else116, label %if.then115

if.then115:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 3, ptr noundef %sd_flags117) #17
  br label %if.end118

if.else116:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 3, ptr noundef %sd_flags117) #17
  br label %if.end118

if.end118:                                        ; preds = %if.else116, %if.then115
  call void @_raw_spin_lock(ptr noundef %sd_tune) #17
  %ar_commit120 = getelementptr inbounds %struct.gfs2_args, ptr %7, i32 0, i32 4
  %68 = ptrtoint ptr %ar_commit120 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ar_commit120, align 4
  %70 = ptrtoint ptr %gt_logd_secs to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %gt_logd_secs, align 4
  %ar_quota_quantum122 = getelementptr inbounds %struct.gfs2_args, ptr %7, i32 0, i32 6
  %71 = ptrtoint ptr %ar_quota_quantum122 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ar_quota_quantum122, align 4
  %73 = ptrtoint ptr %gt_quota_quantum to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %gt_quota_quantum, align 4
  %ar_statfs_quantum124 = getelementptr inbounds %struct.gfs2_args, ptr %7, i32 0, i32 5
  %74 = ptrtoint ptr %ar_statfs_quantum124 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ar_statfs_quantum124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool125.not = icmp eq i32 %75, 0
  br i1 %tobool125.not, label %if.else130, label %if.then126

if.then126:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  %76 = ptrtoint ptr %gt_statfs_slow to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %gt_statfs_slow, align 4
  %77 = ptrtoint ptr %ar_statfs_quantum124 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ar_statfs_quantum124, align 4
  br label %if.end133

if.else130:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  %79 = ptrtoint ptr %gt_statfs_slow to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %gt_statfs_slow, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.else130, %if.then126
  %.sink211 = phi i32 [ 30, %if.else130 ], [ %78, %if.then126 ]
  %80 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 22, i32 9
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink211, ptr %80, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune) #17
  call void @gfs2_online_uevent(ptr noundef %5)
  br label %cleanup135

cleanup135:                                       ; preds = %if.end133, %cleanup, %if.then63, %if.then49, %if.then36, %if.then27, %if.then16, %if.then7
  %retval.1 = phi i32 [ -22, %if.then7 ], [ -22, %if.then16 ], [ -22, %if.then27 ], [ -22, %if.then36 ], [ -22, %if.then49 ], [ -22, %if.then63 ], [ %error.2, %if.end133 ], [ -22, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  %options.i = alloca ptr, align 4
  %tmp18.i = alloca [3 x %struct.substring_t], align 4
  %option.i = alloca i32, align 4
  %mount_gh = alloca %struct.gfs2_holder, align 4
  %freeze_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %2 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_flags, align 4
  %and = and i32 %3, 32768
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mount_gh) #17
  %4 = call ptr @memset(ptr %mount_gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freeze_gh) #17
  %5 = call ptr @memset(ptr %freeze_gh, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4176) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sb, ptr %call7.i.i.i, align 8
  %call1.i = tail call noalias ptr @__alloc_percpu(i32 noundef 640, i32 noundef 8) #22
  %sd_lkstats.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %sd_lkstats.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %sd_lkstats.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %free_sbd.exit.i, label %if.end

free_sbd.exit.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  br label %do.end

do.end:                                           ; preds = %free_sbd.exit.i, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #23
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %s_fs_info.i, align 16
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %sd_flags.i) #17
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %sd_tune.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @gfs2_tune_init.__key, i16 noundef signext 3) #17
  %gt_quota_warn_period.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 2
  %10 = ptrtoint ptr %gt_quota_warn_period.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %gt_quota_warn_period.i.i, align 8
  %gt_quota_scale_num.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 3
  %11 = ptrtoint ptr %gt_quota_scale_num.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %gt_quota_scale_num.i.i, align 4
  %gt_quota_scale_den.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 4
  %12 = ptrtoint ptr %gt_quota_scale_den.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %gt_quota_scale_den.i.i, align 8
  %gt_new_files_jdata.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 6
  %13 = ptrtoint ptr %gt_new_files_jdata.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %gt_new_files_jdata.i.i, align 8
  %gt_max_readahead.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 7
  %14 = ptrtoint ptr %gt_max_readahead.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262144, ptr %gt_max_readahead.i.i, align 4
  %gt_complain_secs.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 8
  %15 = ptrtoint ptr %gt_complain_secs.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10, ptr %gt_complain_secs.i.i, align 8
  %sd_glock_wait.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 28
  tail call void @__init_waitqueue_head(ptr noundef %sd_glock_wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_sbd.__key) #17
  %sd_async_glock_wait.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %sd_async_glock_wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_sbd.__key.23) #17
  %sd_glock_disposal.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_glock_disposal.i, i32 noundef 4) #17
  %16 = ptrtoint ptr %sd_glock_disposal.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %sd_glock_disposal.i, align 4
  %sd_locking_init.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 31
  %17 = ptrtoint ptr %sd_locking_init.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sd_locking_init.i, align 8
  %wait.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 31, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @init_completion.__key) #17
  %sd_wdack.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 32
  %18 = ptrtoint ptr %sd_wdack.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sd_wdack.i, align 8
  %wait.i124.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 32, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i124.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @init_completion.__key) #17
  %sd_statfs_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 43
  tail call void @__raw_spin_lock_init(ptr noundef %sd_statfs_spin.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_sbd.__key.25, i16 noundef signext 3) #17
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 48
  tail call void @__raw_spin_lock_init(ptr noundef %sd_rindex_spin.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_sbd.__key.27, i16 noundef signext 3) #17
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 49
  %19 = ptrtoint ptr %sd_rindex_tree.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sd_rindex_tree.i, align 4
  %sd_jindex_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 52
  %20 = ptrtoint ptr %sd_jindex_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %sd_jindex_list.i, ptr %sd_jindex_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 52, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sd_jindex_list.i, ptr %prev.i.i, align 4
  %sd_jindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 53
  tail call void @__raw_spin_lock_init(ptr noundef %sd_jindex_spin.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_sbd.__key.29, i16 noundef signext 3) #17
  %sd_jindex_mutex.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 54
  tail call void @__mutex_init(ptr noundef %sd_jindex_mutex.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_sbd.__key.31) #17
  %sd_journal_ready.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 63
  %22 = ptrtoint ptr %sd_journal_ready.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sd_journal_ready.i, align 8
  %wait.i125.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 63, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i125.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @init_completion.__key) #17
  %sd_quota_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 66
  %23 = ptrtoint ptr %sd_quota_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %sd_quota_list.i, ptr %sd_quota_list.i, align 8
  %prev.i126.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 66, i32 1
  %24 = ptrtoint ptr %prev.i126.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sd_quota_list.i, ptr %prev.i126.i, align 4
  %sd_quota_mutex.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 68
  tail call void @__mutex_init(ptr noundef %sd_quota_mutex.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_sbd.__key.33) #17
  %sd_quota_sync_mutex.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 69
  tail call void @__mutex_init(ptr noundef %sd_quota_sync_mutex.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_sbd.__key.35) #17
  %sd_quota_wait.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 70
  tail call void @__init_waitqueue_head(ptr noundef %sd_quota_wait.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_sbd.__key.37) #17
  %sd_trunc_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 71
  %25 = ptrtoint ptr %sd_trunc_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %sd_trunc_list.i, ptr %sd_trunc_list.i, align 8
  %prev.i127.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 71, i32 1
  %26 = ptrtoint ptr %prev.i127.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sd_trunc_list.i, ptr %prev.i127.i, align 4
  %sd_trunc_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 72
  tail call void @__raw_spin_lock_init(ptr noundef %sd_trunc_lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_sbd.__key.39, i16 noundef signext 3) #17
  %sd_bitmap_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 75
  tail call void @__raw_spin_lock_init(ptr noundef %sd_bitmap_lock.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_sbd.__key.41, i16 noundef signext 3) #17
  %sd_sc_inodes_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 39
  %27 = ptrtoint ptr %sd_sc_inodes_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %sd_sc_inodes_list.i, ptr %sd_sc_inodes_list.i, align 8
  %prev.i128.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 39, i32 1
  %28 = ptrtoint ptr %prev.i128.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sd_sc_inodes_list.i, ptr %prev.i128.i, align 4
  %sd_aspace.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 77
  tail call void @address_space_init_once(ptr noundef %sd_aspace.i) #17
  %a_ops.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 77, i32 9
  %29 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gfs2_rgrp_aops, ptr %a_ops.i, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %30 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_bdev.i, align 4
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bd_inode.i, align 4
  %34 = ptrtoint ptr %sd_aspace.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %sd_aspace.i, align 8
  %flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 77, i32 10
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flags.i, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 77, i32 3
  %36 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3136, ptr %gfp_mask.i.i, align 8
  %private_data.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 77, i32 14
  %37 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %private_data.i, align 8
  %writeback_index.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 77, i32 8
  %38 = ptrtoint ptr %writeback_index.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %writeback_index.i, align 4
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 78
  tail call void @__raw_spin_lock_init(ptr noundef %sd_log_lock.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_sbd.__key.43, i16 noundef signext 3) #17
  %sd_log_pinned.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 81
  %call.i.i121.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_pinned.i, i32 noundef 4) #17
  %39 = ptrtoint ptr %sd_log_pinned.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %sd_log_pinned.i, align 8
  %sd_log_revokes.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 83
  %40 = ptrtoint ptr %sd_log_revokes.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %sd_log_revokes.i, ptr %sd_log_revokes.i, align 8
  %prev.i129.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 83, i32 1
  %41 = ptrtoint ptr %prev.i129.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sd_log_revokes.i, ptr %prev.i129.i, align 4
  %sd_log_ordered.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 84
  %42 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %sd_log_ordered.i, ptr %sd_log_ordered.i, align 8
  %prev.i130.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 84, i32 1
  %43 = ptrtoint ptr %prev.i130.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %sd_log_ordered.i, ptr %prev.i130.i, align 4
  %sd_ordered_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 85
  tail call void @__raw_spin_lock_init(ptr noundef %sd_ordered_lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_sbd.__key.45, i16 noundef signext 3) #17
  %sd_log_waitq.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 91
  tail call void @__init_waitqueue_head(ptr noundef %sd_log_waitq.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_sbd.__key.47) #17
  %sd_logd_waitq.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 92
  tail call void @__init_waitqueue_head(ptr noundef %sd_logd_waitq.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_sbd.__key.49) #17
  %sd_ail_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 104
  tail call void @__raw_spin_lock_init(ptr noundef %sd_ail_lock.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_sbd.__key.51, i16 noundef signext 3) #17
  %sd_ail1_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 105
  %44 = ptrtoint ptr %sd_ail1_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %sd_ail1_list.i, ptr %sd_ail1_list.i, align 8
  %prev.i131.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 105, i32 1
  %45 = ptrtoint ptr %prev.i131.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %sd_ail1_list.i, ptr %prev.i131.i, align 4
  %sd_ail2_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 106
  %46 = ptrtoint ptr %sd_ail2_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %sd_ail2_list.i, ptr %sd_ail2_list.i, align 8
  %prev.i132.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 106, i32 1
  %47 = ptrtoint ptr %prev.i132.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %sd_ail2_list.i, ptr %prev.i132.i, align 4
  %sd_log_flush_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 95
  tail call void @__init_rwsem(ptr noundef %sd_log_flush_lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @init_sbd.__key.53) #17
  %sd_log_in_flight.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 96
  %call.i.i122.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_in_flight.i, i32 noundef 4) #17
  %48 = ptrtoint ptr %sd_log_in_flight.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %sd_log_in_flight.i, align 4
  %sd_log_flush_wait.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 97
  tail call void @__init_waitqueue_head(ptr noundef %sd_log_flush_wait.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_sbd.__key.55) #17
  %sd_freeze_state.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 108
  %call.i.i123.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_freeze_state.i, i32 noundef 4) #17
  %49 = ptrtoint ptr %sd_freeze_state.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %sd_freeze_state.i, align 8
  %sd_freeze_mutex.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 109
  tail call void @__mutex_init(ptr noundef %sd_freeze_mutex.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_sbd.__key.57) #17
  %sd_args = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 21
  %50 = call ptr @memcpy(ptr %sd_args, ptr %1, i32 212)
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 21, i32 3
  %51 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool3.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %52 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_flags, align 4
  %or = or i32 %53, 1
  store i32 %or, ptr %s_flags, align 4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %sd_flags.i) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %54 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load7 = load i32, ptr %ar_spectator, align 4
  %55 = and i32 %bf.load7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool9.not = icmp eq i32 %55, 0
  br i1 %tobool9.not, label %if.end5.if.end13_crit_edge, label %if.then10

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %s_flags11 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %56 = ptrtoint ptr %s_flags11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_flags11, align 4
  %or12 = or i32 %57, 65536
  store i32 %or12, ptr %s_flags11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end5.if.end13_crit_edge
  %58 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load15 = load i32, ptr %ar_spectator, align 4
  %59 = and i32 %bf.load15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool18.not = icmp eq i32 %59, 0
  br i1 %tobool18.not, label %if.end13.if.end21_crit_edge, label %if.then19

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 3, ptr noundef %sd_flags.i) #17
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end13.if.end21_crit_edge
  %s_flags22 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %60 = ptrtoint ptr %s_flags22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_flags22, align 4
  %or23 = or i32 %61, 268435456
  store i32 %or23, ptr %s_flags22, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %62 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 18225520, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %63 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @gfs2_super_ops, ptr %s_op, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %64 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @gfs2_dops, ptr %s_d_op, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %65 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @gfs2_export_ops, ptr %s_export_op, align 16
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %66 = ptrtoint ptr %s_qcop to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @gfs2_quotactl_ops, ptr %s_qcop, align 4
  %s_quota_types = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 30
  %67 = ptrtoint ptr %s_quota_types to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %s_quota_types, align 8
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %68 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_dquot.i, align 8
  %or25 = or i32 %69, 512
  store i32 %or25, ptr %s_dquot.i, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %70 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %s_time_gran, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %71 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %call26 = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 512) #17
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 5, i32 4
  %72 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call26, ptr %sb_bsize, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %73 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %74 to i32
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 5, i32 5
  %75 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv, ptr %sb_bsize_shift, align 4
  %sub = add nsw i32 %conv, -9
  %sd_fsb2bb_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %sd_fsb2bb_shift to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub, ptr %sd_fsb2bb_shift, align 4
  %shl = shl nuw i32 1, %sub
  %sd_fsb2bb = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %sd_fsb2bb to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %shl, ptr %sd_fsb2bb, align 8
  %ar_commit = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 21, i32 4
  %78 = ptrtoint ptr %ar_commit to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ar_commit, align 8
  %gt_logd_secs = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 1
  %80 = ptrtoint ptr %gt_logd_secs to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %gt_logd_secs, align 4
  %ar_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 21, i32 6
  %81 = ptrtoint ptr %ar_quota_quantum to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ar_quota_quantum, align 8
  %gt_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 5
  %83 = ptrtoint ptr %gt_quota_quantum to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %gt_quota_quantum, align 4
  %ar_statfs_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 21, i32 5
  %84 = ptrtoint ptr %ar_statfs_quantum to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ar_statfs_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool35.not = icmp eq i32 %85, 0
  %spec.select = zext i1 %tobool35.not to i32
  %spec.select351 = select i1 %tobool35.not, i32 30, i32 %85
  %86 = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 10
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select, ptr %86, align 8
  %88 = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 22, i32 9
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select351, ptr %88, align 4
  %ar_locktable.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %90 = ptrtoint ptr %sd_args to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sd_args, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i303 = icmp eq i8 %91, 0
  br i1 %tobool.not.i303, label %if.end21.if.then.i_crit_edge, label %lor.lhs.false.i

if.end21.if.then.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end21
  %92 = ptrtoint ptr %ar_locktable.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ar_locktable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool4.not.i = icmp eq i8 %93, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end23.i_crit_edge

lor.lhs.false.i.if.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end21.if.then.i_crit_edge
  %94 = ptrtoint ptr %sd_fsb2bb_shift to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sd_fsb2bb_shift, align 4
  %shr.i = lshr i32 128, %95
  %96 = zext i32 %shr.i to i64
  %call.i = tail call fastcc i32 @gfs2_read_super(ptr noundef nonnull %call7.i.i.i, i64 noundef %96, i32 noundef %and) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end18.i, label %if.then.i.fail_free_crit_edge

if.then.i.fail_free_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_free

if.end18.i:                                       ; preds = %if.then.i
  %97 = ptrtoint ptr %sd_args to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sd_args, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool8.not.i = icmp eq i8 %98, 0
  %sb_lockproto.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 5, i32 8
  %spec.select.i = select i1 %tobool8.not.i, ptr %sb_lockproto.i, ptr %sd_args
  %99 = ptrtoint ptr %ar_locktable.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ar_locktable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool13.not.i = icmp eq i8 %100, 0
  %sb_locktable.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 5, i32 9
  %spec.select52.i = select i1 %tobool13.not.i, ptr %sb_locktable.i, ptr %ar_locktable.i
  %101 = ptrtoint ptr %spec.select52.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %.pr.i = load i8, ptr %spec.select52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool20.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end18.i.if.end23.i_crit_edge

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  %102 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i.i, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 39
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end23.i_crit_edge, %lor.lhs.false.i.if.end23.i_crit_edge
  %proto.156.i = phi ptr [ %spec.select.i, %if.end18.i.if.end23.i_crit_edge ], [ %spec.select.i, %if.then21.i ], [ %sd_args, %lor.lhs.false.i.if.end23.i_crit_edge ]
  %table.1.i = phi ptr [ %spec.select52.i, %if.end18.i.if.end23.i_crit_edge ], [ %s_id.i, %if.then21.i ], [ %ar_locktable.i, %lor.lhs.false.i.if.end23.i_crit_edge ]
  %sd_proto_name.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 112
  %call25.i = tail call i32 @strlcpy(ptr noundef %sd_proto_name.i, ptr noundef %proto.156.i, i32 noundef 256) #17
  %sd_table_name.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 111
  %call27.i = tail call i32 @strlcpy(ptr noundef %sd_table_name.i, ptr noundef %table.1.i, i32 noundef 256) #17
  %call3057.i = tail call ptr @strchr(ptr noundef %sd_table_name.i, i32 noundef 47) #17
  %tobool31.not58.i = icmp eq ptr %call3057.i, null
  br i1 %tobool31.not58.i, label %if.end23.i.if.end49_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  br label %while.body.i

if.end23.i.if.end49_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end23.i.while.body.i_crit_edge
  %call3059.i = phi ptr [ %call30.i, %while.body.i.while.body.i_crit_edge ], [ %call3057.i, %if.end23.i.while.body.i_crit_edge ]
  %104 = ptrtoint ptr %call3059.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 95, ptr %call3059.i, align 1
  %call30.i = tail call ptr @strchr(ptr noundef nonnull %call3059.i, i32 noundef 47) #17
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %while.body.i.if.end49_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.if.end49_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.end49:                                         ; preds = %while.body.i.if.end49_crit_edge, %if.end23.i.if.end49_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 110
  %call51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %sd_fsname, i32 noundef 270, ptr noundef nonnull @.str.13, ptr noundef %sd_table_name.i)
  %call52 = tail call i32 @gfs2_sys_fs_add(ptr noundef %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.fail_free_crit_edge

if.end49.fail_free_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_free

if.end55:                                         ; preds = %if.end49
  tail call void @gfs2_create_debugfs_file(ptr noundef %call7.i.i.i) #17
  %sd_lockstruct.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.i) #17
  %call.i307 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.78, ptr noundef %sd_proto_name.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %tobool.not.i308 = icmp eq i32 %call.i307, 0
  br i1 %tobool.not.i308, label %if.then.i309, label %if.else.i

if.then.i309:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  %105 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load.i = load i32, ptr %ar_spectator, align 4
  %bf.set.i = or i32 %bf.load.i, 1073741824
  store i32 %bf.set.i, ptr %ar_spectator, align 4
  br label %do.end11.i

if.else.i:                                        ; preds = %if.end55
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.79, ptr noundef %sd_proto_name.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i310 = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i310, label %if.else.i.do.end11.i_crit_edge, label %do.end.i

if.else.i.do.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %sd_proto_name.i) #23
  br label %gfs2_lm_mount.exit.thread

do.end11.i:                                       ; preds = %if.else.i.do.end11.i_crit_edge, %if.then.i309
  %lm.0.i = phi ptr [ @nolock_ops, %if.then.i309 ], [ @gfs2_dlm_ops, %if.else.i.do.end11.i_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %sd_fsname, ptr noundef %sd_proto_name.i, ptr noundef %sd_table_name.i) #23
  %ls_ops.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 23, i32 2
  %106 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %lm.0.i, ptr %ls_ops.i, align 4
  %ls_first.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 23, i32 1
  %107 = ptrtoint ptr %ls_first.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %ls_first.i, align 8
  %ar_hostdata.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 21, i32 2
  %108 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %ar_hostdata.i, ptr %options.i, align 4
  %call164.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.85) #17
  %tobool17.not5.i = icmp eq ptr %call164.i, null
  br i1 %tobool17.not5.i, label %do.end11.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end11.i.for.end.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end11.i
  %lm_tokens.i = getelementptr inbounds %struct.lm_lockops, ptr %lm.0.i, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call166.i = phi ptr [ %call164.i, %for.body.lr.ph.i ], [ %call16.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp18.i) #17
  %109 = call ptr @memset(ptr %tmp18.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #17
  %110 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %option.i, align 4, !annotation !474
  %111 = ptrtoint ptr %call166.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %call166.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool20.not.i312 = icmp eq i8 %112, 0
  br i1 %tobool20.not.i312, label %for.body.i.for.cond.backedge.i_crit_edge, label %if.end22.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

if.end22.i:                                       ; preds = %for.body.i
  %113 = ptrtoint ptr %lm_tokens.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %lm_tokens.i, align 4
  %call25.i313 = call i32 @match_token(ptr noundef nonnull %call166.i, ptr noundef %114, ptr noundef nonnull %tmp18.i) #17
  %115 = zext i32 %call25.i313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %call25.i313, label %if.end22.i.cleanup.thread.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end22.i.for.cond.backedge.i_crit_edge
    i32 3, label %if.end22.i.for.cond.backedge.i_crit_edge355
    i32 2, label %sw.bb36.i
  ]

if.end22.i.for.cond.backedge.i_crit_edge355:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

if.end22.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

if.end22.i.cleanup.thread.i_crit_edge:            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

sw.bb.i:                                          ; preds = %if.end22.i
  %call26.i = call i32 @match_int(ptr noundef nonnull %tmp18.i, ptr noundef nonnull %option.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %lor.lhs.false28.i, label %sw.bb.i.cleanup.thread.i_crit_edge

sw.bb.i.cleanup.thread.i_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

lor.lhs.false28.i:                                ; preds = %sw.bb.i
  %116 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %option.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i = icmp slt i32 %117, 0
  br i1 %cmp.i, label %lor.lhs.false28.i.cleanup.thread.i_crit_edge, label %if.end30.i

lor.lhs.false28.i.cleanup.thread.i_crit_edge:     ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

if.end30.i:                                       ; preds = %lor.lhs.false28.i
  %call31.i = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %sd_flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.for.cond.backedge.i_crit_edge, label %if.then33.i

if.end30.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %118 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %option.i, align 4
  %120 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %sd_lockstruct.i, align 4
  br label %for.cond.backedge.i

sw.bb36.i:                                        ; preds = %if.end22.i
  %call38.i = call i32 @match_int(ptr noundef nonnull %tmp18.i, ptr noundef nonnull %option.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %lor.lhs.false40.i, label %sw.bb36.i.cleanup.thread.i_crit_edge

sw.bb36.i.cleanup.thread.i_crit_edge:             ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

lor.lhs.false40.i:                                ; preds = %sw.bb36.i
  %121 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %option.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %switch.i = icmp ult i32 %122, 2
  br i1 %switch.i, label %if.end44.i, label %lor.lhs.false40.i.cleanup.thread.i_crit_edge

lor.lhs.false40.i.cleanup.thread.i_crit_edge:     ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

if.end44.i:                                       ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #19
  %123 = ptrtoint ptr %ls_first.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %ls_first.i, align 8
  br label %for.cond.backedge.i

cleanup.thread.i:                                 ; preds = %lor.lhs.false40.i.cleanup.thread.i_crit_edge, %sw.bb36.i.cleanup.thread.i_crit_edge, %lor.lhs.false28.i.cleanup.thread.i_crit_edge, %sw.bb.i.cleanup.thread.i_crit_edge, %if.end22.i.cleanup.thread.i_crit_edge
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %sd_fsname, ptr noundef nonnull %call166.i) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp18.i) #17
  br label %gfs2_lm_mount.exit.thread

for.cond.backedge.i:                              ; preds = %if.end44.i, %if.then33.i, %if.end30.i.for.cond.backedge.i_crit_edge, %if.end22.i.for.cond.backedge.i_crit_edge, %if.end22.i.for.cond.backedge.i_crit_edge355, %for.body.i.for.cond.backedge.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp18.i) #17
  %call16.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.85) #17
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %for.cond.backedge.i.for.end.i_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.backedge.i.for.end.i_crit_edge:          ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.backedge.i.for.end.i_crit_edge, %do.end11.i.for.end.i_crit_edge
  %lm_mount.i = getelementptr inbounds %struct.lm_lockops, ptr %lm.0.i, i32 0, i32 1
  %124 = ptrtoint ptr %lm_mount.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %lm_mount.i, align 4
  %cmp56.i = icmp eq ptr %125, null
  br i1 %cmp56.i, label %gfs2_lm_mount.exit.thread339, label %if.end65.i

gfs2_lm_mount.exit.thread339:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %sb_fs_format.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %126 = ptrtoint ptr %sb_fs_format.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sb_fs_format.i, align 8
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %sd_fsname, i32 noundef %127) #23
  call void @complete_all(ptr noundef %sd_locking_init.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #17
  br label %if.end59

if.end65.i:                                       ; preds = %for.end.i
  %call67.i = call i32 %125(ptr noundef %call7.i.i.i, ptr noundef %sd_table_name.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %cmp68.i = icmp eq i32 %call67.i, 0
  br i1 %cmp68.i, label %gfs2_lm_mount.exit.thread342, label %gfs2_lm_mount.exit

gfs2_lm_mount.exit.thread342:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #19
  %sb_fs_format77.i = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %128 = ptrtoint ptr %sb_fs_format77.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sb_fs_format77.i, align 8
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %sd_fsname, i32 noundef %129) #23
  call void @complete_all(ptr noundef %sd_locking_init.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #17
  br label %if.end59

gfs2_lm_mount.exit.thread:                        ; preds = %cleanup.thread.i, %do.end.i
  %retval.2.i.ph = phi i32 [ -22, %cleanup.thread.i ], [ -2, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #17
  br label %fail_debug

gfs2_lm_mount.exit:                               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @complete_all(ptr noundef %sd_locking_init.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #17
  br label %fail_debug

if.end59:                                         ; preds = %gfs2_lm_mount.exit.thread342, %gfs2_lm_mount.exit.thread339
  %call60 = call fastcc i32 @init_locking(ptr noundef %call7.i.i.i, ptr noundef nonnull %mount_gh, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.fail_lm_crit_edge

if.end59.fail_lm_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_lm

if.end63:                                         ; preds = %if.end59
  %call64 = call fastcc i32 @init_sb(ptr noundef %call7.i.i.i, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.fail_locking_crit_edge

if.end63.fail_locking_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_locking

if.end67:                                         ; preds = %if.end63
  %130 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load69 = load i32, ptr %ar_spectator, align 4
  %131 = and i32 %bf.load69, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool72.not = icmp eq i32 %131, 0
  br i1 %tobool72.not, label %land.lhs.true, label %if.end67.if.end79_crit_edge

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end67
  %sb_fs_format = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %132 = ptrtoint ptr %sb_fs_format to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sb_fs_format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1801, i32 %133)
  %cmp = icmp ugt i32 %133, 1801
  br i1 %cmp, label %if.then75, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %bf.set = or i32 %bf.load69, 131072
  %134 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %bf.set, ptr %ar_spectator, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %land.lhs.true.if.end79_crit_edge, %if.end67.if.end79_crit_edge
  %call80 = call fastcc i32 @wait_on_journal(ptr noundef %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.fail_sb_crit_edge

if.end79.fail_sb_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_sb

if.end83:                                         ; preds = %if.end79
  %135 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sd_lockstruct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp84 = icmp slt i32 %136, 0
  br i1 %cmp84, label %if.then86, label %if.end91

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  %137 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %sd_lockstruct.i, align 4
  br label %fail_sb

if.end91:                                         ; preds = %if.end83
  %138 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %138)
  %bf.load94 = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load94)
  %tobool96.not = icmp sgt i32 %bf.load94, -1
  br i1 %tobool96.not, label %if.else103, label %if.then97

if.then97:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  %call102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %sd_fsname, i32 noundef 270, ptr noundef nonnull @.str.14, ptr noundef %sd_table_name.i)
  br label %if.end111

if.else103:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  %call110 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %sd_fsname, i32 noundef 270, ptr noundef nonnull @.str.15, ptr noundef %sd_table_name.i, i32 noundef %136)
  br label %if.end111

if.end111:                                        ; preds = %if.else103, %if.then97
  %call112 = call fastcc i32 @init_inodes(ptr noundef %call7.i.i.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end111.fail_sb_crit_edge

if.end111.fail_sb_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_sb

if.end115:                                        ; preds = %if.end111
  %call116 = call fastcc i32 @init_per_node(ptr noundef %call7.i.i.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end115.fail_inodes_crit_edge

if.end115.fail_inodes_crit_edge:                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_inodes

if.end119:                                        ; preds = %if.end115
  %call120 = call i32 @gfs2_statfs_init(ptr noundef %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end130, label %do.end125

do.end125:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %sd_fsname, i32 noundef %call120) #23
  br label %fail_per_node

if.end130:                                        ; preds = %if.end119
  %139 = ptrtoint ptr %s_flags22 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %s_flags22, align 4
  %and.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then132, label %if.end130.if.end137_crit_edge

if.end130.if.end137_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end137

if.then132:                                       ; preds = %if.end130
  %call133 = call fastcc i32 @init_threads(ptr noundef %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then132.if.end137_crit_edge, label %if.then135

if.then132.if.end137_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end137

if.then135:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 11, ptr noundef %sd_flags.i) #17
  br label %fail_per_node

if.end137:                                        ; preds = %if.then132.if.end137_crit_edge, %if.end130.if.end137_crit_edge
  %call138 = call i32 @gfs2_freeze_lock(ptr noundef %call7.i.i.i, ptr noundef nonnull %freeze_gh, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end137.fail_per_node_crit_edge

if.end137.fail_per_node_crit_edge:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_per_node

if.end141:                                        ; preds = %if.end137
  %141 = ptrtoint ptr %s_flags22 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_flags22, align 4
  %and.i317 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317)
  %tobool.i318.not = icmp eq i32 %and.i317, 0
  br i1 %tobool.i318.not, label %if.end145, label %if.end145.thread

if.end145.thread:                                 ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #19
  call void @gfs2_freeze_unlock(ptr noundef nonnull %freeze_gh) #17
  br label %if.end167

if.end145:                                        ; preds = %if.end141
  %call144 = call i32 @gfs2_make_fs_rw(ptr noundef %call7.i.i.i) #17
  call void @gfs2_freeze_unlock(ptr noundef nonnull %freeze_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool146.not = icmp eq i32 %call144, 0
  br i1 %tobool146.not, label %if.end145.if.end167_crit_edge, label %if.then147

if.end145.if.end167_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end167

if.then147:                                       ; preds = %if.end145
  %sd_quotad_process = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 65
  %143 = ptrtoint ptr %sd_quotad_process to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sd_quotad_process, align 4
  %tobool148.not = icmp eq ptr %144, null
  br i1 %tobool148.not, label %if.then147.if.end152_crit_edge, label %if.then149

if.then147.if.end152_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152

if.then149:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #19
  %call151 = call i32 @kthread_stop(ptr noundef nonnull %144) #17
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.then147.if.end152_crit_edge
  %145 = ptrtoint ptr %sd_quotad_process to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %sd_quotad_process, align 4
  %sd_logd_process = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 64
  %146 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sd_logd_process, align 8
  %tobool154.not = icmp eq ptr %147, null
  br i1 %tobool154.not, label %if.end152.if.end158_crit_edge, label %if.then155

if.end152.if.end158_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end158

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #19
  %call157 = call i32 @kthread_stop(ptr noundef nonnull %147) #17
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end152.if.end158_crit_edge
  %148 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %sd_logd_process, align 8
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sd_fsname, i32 noundef %call144) #23
  br label %fail_per_node

if.end167:                                        ; preds = %if.end145.if.end167_crit_edge, %if.end145.thread
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %mount_gh) #17
  call void @gfs2_online_uevent(ptr noundef %call7.i.i.i)
  br label %cleanup

fail_per_node:                                    ; preds = %if.end158, %if.end137.fail_per_node_crit_edge, %if.then135, %do.end125
  %error.1 = phi i32 [ %call120, %do.end125 ], [ %call138, %if.end137.fail_per_node_crit_edge ], [ %call144, %if.end158 ], [ %call133, %if.then135 ]
  %call168 = call fastcc i32 @init_per_node(ptr noundef %call7.i.i.i, i32 noundef 1)
  br label %fail_inodes

fail_inodes:                                      ; preds = %fail_per_node, %if.end115.fail_inodes_crit_edge
  %error.2 = phi i32 [ %call116, %if.end115.fail_inodes_crit_edge ], [ %error.1, %fail_per_node ]
  %call169 = call fastcc i32 @init_inodes(ptr noundef %call7.i.i.i, i32 noundef 1)
  br label %fail_sb

fail_sb:                                          ; preds = %fail_inodes, %if.end111.fail_sb_crit_edge, %if.then86, %if.end79.fail_sb_crit_edge
  %error.3 = phi i32 [ %call80, %if.end79.fail_sb_crit_edge ], [ %136, %if.then86 ], [ %call112, %if.end111.fail_sb_crit_edge ], [ %error.2, %fail_inodes ]
  %sd_root_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 35
  %149 = ptrtoint ptr %sd_root_dir to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sd_root_dir, align 8
  %tobool170.not = icmp eq ptr %150, null
  br i1 %tobool170.not, label %fail_sb.if.end173_crit_edge, label %if.then171

fail_sb.if.end173_crit_edge:                      ; preds = %fail_sb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end173

if.then171:                                       ; preds = %fail_sb
  call void @__sanitizer_cov_trace_pc() #19
  call void @dput(ptr noundef nonnull %150) #17
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %fail_sb.if.end173_crit_edge
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %call7.i.i.i, i32 0, i32 34
  %151 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sd_master_dir, align 4
  %tobool174.not = icmp eq ptr %152, null
  br i1 %tobool174.not, label %if.end173.if.end177_crit_edge, label %if.then175

if.end173.if.end177_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end177

if.then175:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #19
  call void @dput(ptr noundef nonnull %152) #17
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end173.if.end177_crit_edge
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %153 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_root, align 64
  %tobool178.not = icmp eq ptr %154, null
  br i1 %tobool178.not, label %if.end177.if.end181_crit_edge, label %if.then179

if.end177.if.end181_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end181

if.then179:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #19
  call void @dput(ptr noundef nonnull %154) #17
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.end177.if.end181_crit_edge
  %155 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %s_root, align 64
  br label %fail_locking

fail_locking:                                     ; preds = %if.end181, %if.end63.fail_locking_crit_edge
  %error.4 = phi i32 [ %call64, %if.end63.fail_locking_crit_edge ], [ %error.3, %if.end181 ]
  %call183 = call fastcc i32 @init_locking(ptr noundef %call7.i.i.i, ptr noundef nonnull %mount_gh, i32 noundef 1)
  br label %fail_lm

fail_lm:                                          ; preds = %fail_locking, %if.end59.fail_lm_crit_edge
  %error.5 = phi i32 [ %call60, %if.end59.fail_lm_crit_edge ], [ %error.4, %fail_locking ]
  call void @complete_all(ptr noundef %sd_journal_ready.i) #17
  call void @gfs2_gl_hash_clear(ptr noundef %call7.i.i.i) #17
  %156 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ls_ops.i, align 4
  %158 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %sd_flags.i, align 8
  %160 = and i32 %159, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i.i = icmp eq i32 %160, 0
  br i1 %tobool.not.i.i, label %gfs2_withdrawn.exit.i, label %fail_lm.fail_debug_crit_edge, !prof !471

fail_lm.fail_debug_crit_edge:                     ; preds = %fail_lm
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_debug

gfs2_withdrawn.exit.i:                            ; preds = %fail_lm
  %161 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %sd_flags.i, align 8
  %163 = and i32 %162, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool3.i.not.i = icmp eq i32 %163, 0
  br i1 %tobool3.i.not.i, label %land.lhs.true.i, label %gfs2_withdrawn.exit.i.fail_debug_crit_edge, !prof !472

gfs2_withdrawn.exit.i.fail_debug_crit_edge:       ; preds = %gfs2_withdrawn.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_debug

land.lhs.true.i:                                  ; preds = %gfs2_withdrawn.exit.i
  %lm_unmount.i = getelementptr inbounds %struct.lm_lockops, ptr %157, i32 0, i32 4
  %164 = ptrtoint ptr %lm_unmount.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %lm_unmount.i, align 4
  %tobool3.not.i320 = icmp eq ptr %165, null
  br i1 %tobool3.not.i320, label %land.lhs.true.i.fail_debug_crit_edge, label %if.then.i321

land.lhs.true.i.fail_debug_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_debug

if.then.i321:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  call void %165(ptr noundef %call7.i.i.i) #17
  br label %fail_debug

fail_debug:                                       ; preds = %if.then.i321, %land.lhs.true.i.fail_debug_crit_edge, %gfs2_withdrawn.exit.i.fail_debug_crit_edge, %fail_lm.fail_debug_crit_edge, %gfs2_lm_mount.exit, %gfs2_lm_mount.exit.thread
  %error.6 = phi i32 [ %call67.i, %gfs2_lm_mount.exit ], [ %retval.2.i.ph, %gfs2_lm_mount.exit.thread ], [ %error.5, %fail_lm.fail_debug_crit_edge ], [ %error.5, %gfs2_withdrawn.exit.i.fail_debug_crit_edge ], [ %error.5, %land.lhs.true.i.fail_debug_crit_edge ], [ %error.5, %if.then.i321 ]
  call void @gfs2_delete_debugfs_file(ptr noundef %call7.i.i.i) #17
  call void @gfs2_sys_fs_del(ptr noundef %call7.i.i.i) #17
  br label %fail_free

fail_free:                                        ; preds = %fail_debug, %if.end49.fail_free_crit_edge, %if.then.i.fail_free_crit_edge
  %error.7 = phi i32 [ %call52, %if.end49.fail_free_crit_edge ], [ %error.6, %fail_debug ], [ %call.i, %if.then.i.fail_free_crit_edge ]
  %166 = ptrtoint ptr %sd_lkstats.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sd_lkstats.i, align 4
  %tobool.not.i324 = icmp eq ptr %167, null
  br i1 %tobool.not.i324, label %fail_free.free_sbd.exit_crit_edge, label %if.then.i325

fail_free.free_sbd.exit_crit_edge:                ; preds = %fail_free
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_sbd.exit

if.then.i325:                                     ; preds = %fail_free
  call void @__sanitizer_cov_trace_pc() #19
  call void @free_percpu(ptr noundef nonnull %167) #17
  br label %free_sbd.exit

free_sbd.exit:                                    ; preds = %if.then.i325, %fail_free.free_sbd.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i) #17
  %168 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %s_fs_info.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %free_sbd.exit, %if.end167, %do.end
  %retval.0 = phi i32 [ %error.7, %free_sbd.exit ], [ 0, %if.end167 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freeze_gh) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mount_gh) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_sys_fs_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_create_debugfs_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_locking(ptr noundef %sdp, ptr noundef %mount_gh, i32 noundef %undo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %undo)
  %tobool.not = icmp eq i32 %undo, 0
  br i1 %tobool.not, label %if.end, label %fail_trans

if.end:                                           ; preds = %entry
  %call = tail call i32 @gfs2_glock_nq_num(ptr noundef %sdp, i64 noundef 0, ptr noundef nonnull @gfs2_nondisk_glops, i32 noundef 1, i16 noundef zeroext 1028, ptr noundef %mount_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %sd_fsname, i32 noundef %call) #23
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sd_live_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 24
  %call5 = tail call i32 @gfs2_glock_nq_num(ptr noundef %sdp, i64 noundef 1, ptr noundef nonnull @gfs2_nondisk_glops, i32 noundef 3, i16 noundef zeroext 132, ptr noundef %sd_live_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end15, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname12 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %sd_fsname12, i32 noundef %call5) #23
  br label %fail_mount

if.end15:                                         ; preds = %if.end4
  %sd_rename_gl = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 25
  %call16 = tail call i32 @gfs2_glock_get(ptr noundef %sdp, i64 noundef 3, ptr noundef nonnull @gfs2_nondisk_glops, i32 noundef 1, ptr noundef %sd_rename_gl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end26, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname23 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %sd_fsname23, i32 noundef %call16) #23
  br label %fail_live

if.end26:                                         ; preds = %if.end15
  %sd_freeze_gl = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 26
  %call27 = tail call i32 @gfs2_glock_get(ptr noundef %sdp, i64 noundef 2, ptr noundef nonnull @gfs2_freeze_glops, i32 noundef 1, ptr noundef %sd_freeze_gl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %do.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname34 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %sd_fsname34, i32 noundef %call27) #23
  br label %fail_rename

fail_trans:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sd_freeze_gl38 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 26
  %0 = ptrtoint ptr %sd_freeze_gl38 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_freeze_gl38, align 4
  tail call void @gfs2_glock_put(ptr noundef %1) #17
  br label %fail_rename

fail_rename:                                      ; preds = %fail_trans, %do.end32
  %error.0 = phi i32 [ 0, %fail_trans ], [ %call27, %do.end32 ]
  %sd_rename_gl39 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 25
  %2 = ptrtoint ptr %sd_rename_gl39 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_rename_gl39, align 8
  tail call void @gfs2_glock_put(ptr noundef %3) #17
  br label %fail_live

fail_live:                                        ; preds = %fail_rename, %do.end21
  %error.1 = phi i32 [ %error.0, %fail_rename ], [ %call16, %do.end21 ]
  %sd_live_gh40 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 24
  tail call void @gfs2_glock_dq_uninit(ptr noundef %sd_live_gh40) #17
  br label %fail_mount

fail_mount:                                       ; preds = %fail_live, %do.end10
  %error.2 = phi i32 [ %error.1, %fail_live ], [ %call5, %do.end10 ]
  tail call void @gfs2_glock_dq_uninit(ptr noundef %mount_gh) #17
  br label %cleanup

cleanup:                                          ; preds = %fail_mount, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end26.cleanup_crit_edge ], [ %error.2, %fail_mount ], [ %call, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_sb(ptr noundef %sdp, i32 noundef %silent) unnamed_addr #0 align 64 {
entry:
  %sb_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sb_gh) #17
  %2 = call ptr @memset(ptr %sb_gh, i32 255, i32 32)
  %call = call i32 @gfs2_glock_nq_num(ptr noundef %sdp, i64 noundef 0, ptr noundef nonnull @gfs2_meta_glops, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %sb_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %sd_fsname, i32 noundef %call) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_fsb2bb_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 7
  %3 = ptrtoint ptr %sd_fsb2bb_shift.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sd_fsb2bb_shift.i, align 4
  %shr.i = lshr i32 128, %4
  %5 = zext i32 %shr.i to i64
  %call.i = call fastcc i32 @gfs2_read_super(ptr noundef %sdp, i64 noundef %5, i32 noundef %silent) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool1.not.i = icmp eq i32 %silent, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.do.end7_crit_edge

if.then.i.do.end7_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %sd_fsname.i) #23
  br label %do.end7

if.end4.i:                                        ; preds = %if.end
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_bsize_shift.i, align 4
  %sub.i = add i32 %7, -9
  %8 = ptrtoint ptr %sd_fsb2bb_shift.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %sd_fsb2bb_shift.i, align 4
  %shl.i = shl nuw i32 1, %sub.i
  %sd_fsb2bb.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 6
  %9 = ptrtoint ptr %sd_fsb2bb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl.i, ptr %sd_fsb2bb.i, align 8
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_bsize.i, align 8
  %sub8.i = add i32 %11, -232
  %div448.i = lshr i32 %sub8.i, 3
  %sd_diptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 8
  %12 = ptrtoint ptr %sd_diptrs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div448.i, ptr %sd_diptrs.i, align 8
  %sub11.i = add i32 %11, -24
  %div12449.i = lshr i32 %sub11.i, 3
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 9
  %13 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div12449.i, ptr %sd_inptrs.i, align 4
  %sub15.i = add i32 %11, -72
  %div16450.i = lshr i32 %sub15.i, 3
  %sd_ldptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 10
  %14 = ptrtoint ptr %sd_ldptrs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div16450.i, ptr %sd_ldptrs.i, align 8
  %sd_jbsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 11
  %15 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub11.i, ptr %sd_jbsize.i, align 4
  %div22451.i = lshr i32 %11, 1
  %sd_hash_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 12
  %16 = ptrtoint ptr %sd_hash_bsize.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div22451.i, ptr %sd_hash_bsize.i, align 8
  %sub25.i = add i32 %7, -1
  %sd_hash_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 13
  %17 = ptrtoint ptr %sd_hash_bsize_shift.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub25.i, ptr %sd_hash_bsize_shift.i, align 4
  %div27452.i = lshr i32 %11, 4
  %sd_hash_ptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 14
  %18 = ptrtoint ptr %sd_hash_ptrs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div27452.i, ptr %sd_hash_ptrs.i, align 8
  %div31453.i = lshr i32 %sub11.i, 4
  %sd_qc_per_block.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 15
  %19 = ptrtoint ptr %sd_qc_per_block.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div31453.i, ptr %sd_qc_per_block.i, align 4
  %sub34.i = shl i32 %11, 2
  %mul.i = add i32 %sub34.i, -96
  %sd_blocks_per_bitmap.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 16
  %20 = ptrtoint ptr %sd_blocks_per_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %sd_blocks_per_bitmap.i, align 8
  %sd_log_revokes_available.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 90
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_revokes_available.i, i32 noundef 4) #17
  %21 = ptrtoint ptr %sd_log_revokes_available.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %div16450.i, ptr %sd_log_revokes_available.i, align 4
  %22 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sd_jbsize.i, align 4
  %sub37.i = add i32 %23, 1048575
  %div39.i = udiv i32 %sub37.i, %23
  %24 = ptrtoint ptr %sd_diptrs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sd_diptrs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div39.i, i32 %25)
  %cmp482.i = icmp ugt i32 %div39.i, %25
  br i1 %cmp482.i, label %for.body.lr.ph.i, label %if.end4.i.for.end.i_crit_edge

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %26 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sd_inptrs.i, align 4
  %add43.i = add i32 %27, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ind_blocks.0484.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add47.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_blocks.0483.i = phi i32 [ %div39.i, %for.body.lr.ph.i ], [ %div46.i, %for.body.i.for.body.i_crit_edge ]
  %sub44.i = add i32 %add43.i, %tmp_blocks.0483.i
  %div46.i = udiv i32 %sub44.i, %27
  %add47.i = add i32 %div46.i, %ind_blocks.0484.i
  %cmp.i = icmp ugt i32 %div46.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  %ind_blocks.0.lcssa.i = phi i32 [ 0, %if.end4.i.for.end.i_crit_edge ], [ %add47.i, %for.body.i.for.end.i_crit_edge ]
  %add48.i = add i32 %div39.i, 19
  %add49.i = add i32 %add48.i, %ind_blocks.0.lcssa.i
  %sd_max_dirres.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 17
  %28 = ptrtoint ptr %sd_max_dirres.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add49.i, ptr %sd_max_dirres.i, align 4
  %29 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sb_bsize.i, align 8
  %sub52.i = add i32 %30, -232
  %conv53.i = zext i32 %sub52.i to i64
  %sd_heightsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 19
  %31 = ptrtoint ptr %sd_heightsize.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv53.i, ptr %sd_heightsize.i, align 8
  %mul57.i = mul i32 %30, %25
  %conv58.i = zext i32 %mul57.i to i64
  %arrayidx60.i = getelementptr %struct.gfs2_sbd, ptr %sdp, i32 0, i32 19, i32 1
  %32 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv58.i, ptr %arrayidx60.i, align 8
  br label %for.cond61.i

for.cond61.i:                                     ; preds = %for.inc.i, %for.end.i
  %x.0.i = phi i32 [ 2, %for.end.i ], [ %inc.i, %for.inc.i ]
  %sub63.i = add i32 %x.0.i, -1
  %arrayidx64.i = getelementptr %struct.gfs2_sbd, ptr %sdp, i32 0, i32 19, i32 %sub63.i
  %33 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx64.i, align 8
  %35 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sd_inptrs.i, align 4
  %conv66.i = zext i32 %36 to i64
  %mul67.i = mul i64 %34, %conv66.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul67.i)
  %cmp246.i = icmp ult i64 %mul67.i, 4294967296
  br i1 %cmp246.i, label %if.then250.i, label %if.else256.i, !prof !472

if.then250.i:                                     ; preds = %for.cond61.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv251.i = trunc i64 %mul67.i to i32
  %conv251.i.frozen = freeze i32 %conv251.i
  %.frozen = freeze i32 %36
  %div254.i = udiv i32 %conv251.i.frozen, %.frozen
  %37 = mul i32 %div254.i, %.frozen
  %rem252.i.decomposed = sub i32 %conv251.i.frozen, %37
  %conv255.i = zext i32 %div254.i to i64
  br label %if.end260.i

if.else256.i:                                     ; preds = %for.cond61.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %mul67.i) #25, !srcloc !475
  %asmresult.i456.i = extractvalue { i64, i64 } %38, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %38, 1
  %shr.i.i = lshr i64 %asmresult.i456.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end260.i

if.end260.i:                                      ; preds = %if.else256.i, %if.then250.i
  %d.0.i = phi i64 [ %conv255.i, %if.then250.i ], [ %asmresult1.i.i, %if.else256.i ]
  %__rem.0.i = phi i32 [ %rem252.i.decomposed, %if.then250.i ], [ %conv.i.i, %if.else256.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %d.0.i, i64 %34)
  %cmp265.not.i = icmp eq i64 %d.0.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool267.not.i = icmp eq i32 %__rem.0.i, 0
  %or.cond.i = select i1 %cmp265.not.i, i1 %tobool267.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i, label %for.end274.i

for.inc.i:                                        ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx271.i = getelementptr %struct.gfs2_sbd, ptr %sdp, i32 0, i32 19, i32 %x.0.i
  %39 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %mul67.i, ptr %arrayidx271.i, align 8
  %inc.i = add i32 %x.0.i, 1
  br label %for.cond61.i

for.end274.i:                                     ; preds = %if.end260.i
  %sd_max_height.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 18
  %40 = ptrtoint ptr %sd_max_height.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %x.0.i, ptr %sd_max_height.i, align 8
  %arrayidx276.i = getelementptr %struct.gfs2_sbd, ptr %sdp, i32 0, i32 19, i32 %x.0.i
  %41 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %arrayidx276.i, align 8
  %42 = load i32, ptr %sd_max_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %42)
  %cmp279.i = icmp ugt i32 %42, 10
  br i1 %cmp279.i, label %if.then289.i, label %if.end12, !prof !476

if.then289.i:                                     ; preds = %for.end274.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @gfs2_assert_i(ptr noundef %sdp) #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/ops_fstype.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 356, 0\0A.popsection", ""() #17, !srcloc !477
  unreachable

do.end7:                                          ; preds = %do.end.i, %if.then.i.do.end7_crit_edge
  %sd_fsname9 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %sd_fsname9, i32 noundef %call.i) #23
  br label %out

if.end12:                                         ; preds = %for.end274.i
  %43 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_bsize.i, align 8
  %sub301.i = add i32 %44, -104
  %div302.i = udiv i32 %sub301.i, 48
  %sd_max_dents_per_leaf.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 20
  %45 = ptrtoint ptr %sd_max_dents_per_leaf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div302.i, ptr %sd_max_dents_per_leaf.i, align 8
  %sb_fs_format = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %sb_fs_format to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sb_fs_format, align 8
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %47, label %do.body15 [
    i32 1802, label %if.end12.sw.epilog_crit_edge
    i32 1801, label %sw.bb13
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_xattr_handlers_min to i32))
  %49 = load ptr, ptr @gfs2_xattr_handlers_min, align 4
  br label %sw.epilog

do.body15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/ops_fstype.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #17, !srcloc !478
  unreachable

sw.epilog:                                        ; preds = %sw.bb13, %if.end12.sw.epilog_crit_edge
  %.sink = phi ptr [ %49, %sw.bb13 ], [ @gfs2_xattr_handlers_max, %if.end12.sw.epilog_crit_edge ]
  %s_xattr14 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 18
  %50 = ptrtoint ptr %s_xattr14 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %.sink, ptr %s_xattr14, align 16
  %51 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sb_bsize.i, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %53 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %bdev_logical_block_size.exit, label %bdev_logical_block_size.exit.thread

bdev_logical_block_size.exit:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %52)
  %cmp = icmp ult i32 %52, 512
  br i1 %cmp, label %bdev_logical_block_size.exit.bdev_logical_block_size.exit115_crit_edge, label %bdev_logical_block_size.exit.if.end35_crit_edge

bdev_logical_block_size.exit.if.end35_crit_edge:  ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

bdev_logical_block_size.exit.bdev_logical_block_size.exit115_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bdev_logical_block_size.exit115

bdev_logical_block_size.exit.thread:              ; preds = %sw.epilog
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %56, i32 0, i32 37, i32 9
  %57 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool2.not.i.i = icmp eq i32 %58, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %58
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %spec.select.i.i)
  %cmp144 = icmp ult i32 %52, %spec.select.i.i
  br i1 %cmp144, label %land.lhs.true.i.i113, label %bdev_logical_block_size.exit.thread.if.end35_crit_edge

bdev_logical_block_size.exit.thread.if.end35_crit_edge: ; preds = %bdev_logical_block_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

land.lhs.true.i.i113:                             ; preds = %bdev_logical_block_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool2.not.i.i111 = icmp eq i32 %60, 0
  %spec.select.i.i112 = select i1 %tobool2.not.i.i111, i32 512, i32 %60
  br label %bdev_logical_block_size.exit115

bdev_logical_block_size.exit115:                  ; preds = %land.lhs.true.i.i113, %bdev_logical_block_size.exit.bdev_logical_block_size.exit115_crit_edge
  %retval1.0.i.i114 = phi i32 [ %spec.select.i.i112, %land.lhs.true.i.i113 ], [ 512, %bdev_logical_block_size.exit.bdev_logical_block_size.exit115_crit_edge ]
  %sd_fsname28147 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %sd_fsname28147, i32 noundef %52, i32 noundef %retval1.0.i.i114) #23
  br label %out

if.end35:                                         ; preds = %bdev_logical_block_size.exit.thread.if.end35_crit_edge, %bdev_logical_block_size.exit.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %52)
  %cmp38 = icmp ugt i32 %52, 4096
  br i1 %cmp38, label %if.then39, label %if.end49

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname44 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %sd_fsname44, i32 noundef %52, i32 noundef 4096) #23
  br label %out

if.end49:                                         ; preds = %if.end35
  %call52 = call i32 @sb_set_blocksize(ptr noundef %1, i32 noundef %52) #17
  %no_addr54 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 7, i32 1
  %61 = ptrtoint ptr %no_addr54 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %no_addr54, align 8
  %sd_root_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 35
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i, align 16
  %call.i116 = call ptr @gfs2_inode_lookup(ptr noundef %1, i32 noundef 4, i64 noundef %62, i64 noundef 0, i32 noundef 0) #17
  %cmp.i.i = icmp ugt ptr %call.i116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %gfs2_lookup_root.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end49
  %call5.i = call ptr @d_make_root(ptr noundef %call.i116) #17
  %tobool.not.i120 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i120, label %gfs2_lookup_root.exit.thread150, label %gfs2_lookup_root.exit.thread

gfs2_lookup_root.exit.thread150:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname11.i = getelementptr inbounds %struct.gfs2_sbd, ptr %64, i32 0, i32 110
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %sd_fsname11.i, ptr noundef nonnull @.str.118) #23
  br label %out

gfs2_lookup_root.exit.thread:                     ; preds = %if.end.i
  %65 = ptrtoint ptr %sd_root_dir to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call5.i, ptr %sd_root_dir, align 4
  %no_addr60 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 6, i32 1
  %66 = ptrtoint ptr %no_addr60 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %no_addr60, align 8
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 34
  %68 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i, align 16
  %call.i123 = call ptr @gfs2_inode_lookup(ptr noundef %1, i32 noundef 4, i64 noundef %67, i64 noundef 0, i32 noundef 0) #17
  %cmp.i.i124 = icmp ugt ptr %call.i123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i124, label %gfs2_lookup_root.exit136, label %if.end.i130

gfs2_lookup_root.exit:                            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname.i117 = getelementptr inbounds %struct.gfs2_sbd, ptr %64, i32 0, i32 110
  %70 = ptrtoint ptr %call.i116 to i32
  %call3.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %sd_fsname.i117, ptr noundef nonnull @.str.118, i32 noundef %70) #23
  br label %out

if.end.i130:                                      ; preds = %gfs2_lookup_root.exit.thread
  %call5.i128 = call ptr @d_make_root(ptr noundef %call.i123) #17
  %tobool.not.i129 = icmp eq ptr %call5.i128, null
  br i1 %tobool.not.i129, label %gfs2_lookup_root.exit136.thread155, label %gfs2_lookup_root.exit136.thread

gfs2_lookup_root.exit136.thread155:               ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname11.i131 = getelementptr inbounds %struct.gfs2_sbd, ptr %69, i32 0, i32 110
  %call13.i132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %sd_fsname11.i131, ptr noundef nonnull @.str.119) #23
  br label %if.then63

gfs2_lookup_root.exit136.thread:                  ; preds = %if.end.i130
  %71 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call5.i128, ptr %sd_master_dir, align 4
  %ar_meta = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %72 = ptrtoint ptr %ar_meta to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load = load i32, ptr %ar_meta, align 4
  %73 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool66.not = icmp eq i32 %73, 0
  %sd_root_dir.sd_master_dir = select i1 %tobool66.not, ptr %sd_root_dir, ptr %sd_master_dir
  %74 = ptrtoint ptr %sd_root_dir.sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %74)
  %cond = load ptr, ptr %sd_root_dir.sd_master_dir, align 4
  %tobool.not.i137 = icmp eq ptr %cond, null
  br i1 %tobool.not.i137, label %gfs2_lookup_root.exit136.thread.dget.exit_crit_edge, label %if.then.i138

gfs2_lookup_root.exit136.thread.dget.exit_crit_edge: ; preds = %gfs2_lookup_root.exit136.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %dget.exit

gfs2_lookup_root.exit136:                         ; preds = %gfs2_lookup_root.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname.i125 = getelementptr inbounds %struct.gfs2_sbd, ptr %69, i32 0, i32 110
  %75 = ptrtoint ptr %call.i123 to i32
  %call3.i126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %sd_fsname.i125, ptr noundef nonnull @.str.119, i32 noundef %75) #23
  br label %if.then63

if.then63:                                        ; preds = %gfs2_lookup_root.exit136, %gfs2_lookup_root.exit136.thread155
  %retval.0.i135158 = phi i32 [ -12, %gfs2_lookup_root.exit136.thread155 ], [ %75, %gfs2_lookup_root.exit136 ]
  %76 = ptrtoint ptr %sd_root_dir to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sd_root_dir, align 8
  call void @dput(ptr noundef %77) #17
  br label %out

if.then.i138:                                     ; preds = %gfs2_lookup_root.exit136.thread
  call void @__sanitizer_cov_trace_pc() #19
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %cond, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #17
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i138, %gfs2_lookup_root.exit136.thread.dget.exit_crit_edge
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %78 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %cond, ptr %s_root, align 64
  br label %out

out:                                              ; preds = %dget.exit, %if.then63, %gfs2_lookup_root.exit, %gfs2_lookup_root.exit.thread150, %if.then39, %bdev_logical_block_size.exit115, %do.end7
  %ret.0 = phi i32 [ %call.i, %do.end7 ], [ -22, %bdev_logical_block_size.exit115 ], [ -22, %if.then39 ], [ %70, %gfs2_lookup_root.exit ], [ %retval.0.i135158, %if.then63 ], [ 0, %dget.exit ], [ -12, %gfs2_lookup_root.exit.thread150 ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %sb_gh) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sb_gh) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_on_journal(ptr noundef %sdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %0 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_ops, align 4
  %lm_mount = getelementptr inbounds %struct.lm_lockops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lm_mount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lm_mount, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.127, i32 noundef 73) #17
  %4 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sd_flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.wait_on_bit.exit.thread_crit_edge, label %wait_on_bit.exit

if.end.wait_on_bit.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %wait_on_bit.exit.thread

wait_on_bit.exit:                                 ; preds = %if.end
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %sd_flags, i32 noundef 6, ptr noundef nonnull @bit_wait, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %wait_on_bit.exit.wait_on_bit.exit.thread_crit_edge, label %wait_on_bit.exit.return_crit_edge

wait_on_bit.exit.return_crit_edge:                ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

wait_on_bit.exit.wait_on_bit.exit.thread_crit_edge: ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %wait_on_bit.exit.thread

wait_on_bit.exit.thread:                          ; preds = %wait_on_bit.exit.wait_on_bit.exit.thread_crit_edge, %if.end.wait_on_bit.exit.thread_crit_edge
  br label %return

return:                                           ; preds = %wait_on_bit.exit.thread, %wait_on_bit.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %wait_on_bit.exit.thread ], [ -4, %wait_on_bit.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_inodes(ptr noundef %sdp, i32 noundef %undo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 34
  %0 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_master_dir, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %undo)
  %tobool.not = icmp eq i32 %undo, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_qinode_crit_edge

entry.fail_qinode_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_qinode

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @init_journal(ptr noundef %sdp, i32 noundef 0)
  %sd_journal_ready = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 63
  tail call void @complete_all(ptr noundef %sd_journal_ready) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @gfs2_lookup_simple(ptr noundef %3, ptr noundef nonnull @.str.128) #17
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 41
  %4 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %sd_rindex, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %call5 to i32
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %sd_fsname, i32 noundef %5) #23
  br label %fail_journal

if.end12:                                         ; preds = %if.end4
  %sd_rindex_uptodate = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 47
  %6 = ptrtoint ptr %sd_rindex_uptodate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sd_rindex_uptodate, align 4
  %call13 = tail call ptr @gfs2_lookup_simple(ptr noundef %3, ptr noundef nonnull @.str.131) #17
  %sd_quota_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 42
  %7 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %sd_quota_inode, align 8
  %cmp.i67 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %call13 to i32
  %sd_fsname23 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %sd_fsname23, i32 noundef %8) #23
  br label %fail_rindex

if.end26:                                         ; preds = %if.end12
  %dep_map = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 25, i32 6
  %wait_type_inner = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 25, i32 6, i32 4
  %9 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.135, ptr noundef nonnull @gfs2_quota_imutex_key, i32 noundef 0, i8 noundef zeroext %10, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %call34 = tail call i32 @gfs2_rindex_update(ptr noundef %sdp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end26.cleanup_crit_edge, label %if.end26.fail_qinode_crit_edge

if.end26.fail_qinode_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_qinode

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

fail_qinode:                                      ; preds = %if.end26.fail_qinode_crit_edge, %entry.fail_qinode_crit_edge
  %error.0 = phi i32 [ 0, %entry.fail_qinode_crit_edge ], [ %call34, %if.end26.fail_qinode_crit_edge ]
  %sd_quota_inode38 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 42
  %11 = ptrtoint ptr %sd_quota_inode38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_quota_inode38, align 8
  tail call void @iput(ptr noundef %12) #17
  br label %fail_rindex

fail_rindex:                                      ; preds = %fail_qinode, %if.then16
  %error.1 = phi i32 [ %error.0, %fail_qinode ], [ %8, %if.then16 ]
  tail call void @gfs2_clear_rgrpd(ptr noundef %sdp) #17
  %sd_rindex39 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 41
  %13 = ptrtoint ptr %sd_rindex39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_rindex39, align 4
  tail call void @iput(ptr noundef %14) #17
  br label %fail_journal

fail_journal:                                     ; preds = %fail_rindex, %if.then8
  %error.2 = phi i32 [ %error.1, %fail_rindex ], [ %5, %if.then8 ]
  %call40 = tail call fastcc i32 @init_journal(ptr noundef %sdp, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %fail_journal, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26.cleanup_crit_edge ], [ %error.2, %fail_journal ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_per_node(ptr noundef %sdp, i32 noundef %undo) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %buf) #17
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 34
  %0 = call ptr @memset(ptr %buf, i32 255, i32 30)
  %1 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd_master_dir, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %5 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %undo)
  %tobool1.not = icmp eq i32 %undo, 0
  br i1 %tobool1.not, label %if.end3, label %fail_qc_gh

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @gfs2_lookup_simple(ptr noundef %4, ptr noundef nonnull @.str.175) #17
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %call4 to i32
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %sd_fsname, i32 noundef %6) #23
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %7 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_jdesc, align 4
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jd_jid, align 4
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.193, i32 noundef %10)
  %call13 = call ptr @gfs2_lookup_simple(ptr noundef %call4, ptr noundef nonnull %buf) #17
  %sd_qc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 40
  %11 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %sd_qc_inode, align 8
  %cmp.i67 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %call13 to i32
  %sd_fsname23 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %sd_fsname23, i32 noundef %12) #23
  br label %fail_ut_i

if.end26:                                         ; preds = %if.end9
  call void @iput(ptr noundef %call4) #17
  %13 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_qc_inode, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_gl, align 4
  %sd_qc_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 62
  %17 = call ptr @llvm.returnaddress(i32 0) #17
  %18 = ptrtoint ptr %17 to i32
  call void @__gfs2_holder_init(ptr noundef %16, i32 noundef 1, i16 noundef zeroext 0, ptr noundef %sd_qc_gh, i32 noundef %18) #17
  %call.i = call i32 @gfs2_glock_nq(ptr noundef %sd_qc_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end26.cleanup_crit_edge, label %do.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  call void @gfs2_holder_uninit(ptr noundef %sd_qc_gh) #17
  %sd_fsname36 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %sd_fsname36, i32 noundef %call.i) #23
  br label %fail_qc_i

fail_qc_gh:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sd_qc_gh40 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 62
  tail call void @gfs2_glock_dq_uninit(ptr noundef %sd_qc_gh40) #17
  br label %fail_qc_i

fail_qc_i:                                        ; preds = %fail_qc_gh, %do.end34
  %error.0 = phi i32 [ 0, %fail_qc_gh ], [ %call.i, %do.end34 ]
  %sd_qc_inode41 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 40
  %19 = ptrtoint ptr %sd_qc_inode41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_qc_inode41, align 8
  call void @iput(ptr noundef %20) #17
  br label %fail_ut_i

fail_ut_i:                                        ; preds = %fail_qc_i, %if.then16
  %error.1 = phi i32 [ %error.0, %fail_qc_i ], [ %12, %if.then16 ]
  %pn.1 = phi ptr [ null, %fail_qc_i ], [ %call4, %if.then16 ]
  call void @iput(ptr noundef %pn.1) #17
  br label %cleanup

cleanup:                                          ; preds = %fail_ut_i, %if.end26.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %fail_ut_i ], [ %6, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %buf) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_statfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_threads(ptr noundef %sdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @gfs2_logd, ptr noundef %sdp, i32 noundef -1, ptr noundef nonnull @.str.200) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %call to i32
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %sd_fsname, i32 noundef %0) #23
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #17
  %sd_logd_process = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 64
  %1 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %sd_logd_process, align 8
  %call10 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @gfs2_quotad, ptr noundef %sdp, i32 noundef -1, ptr noundef nonnull @.str.203) #17
  %cmp.i51 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %call10 to i32
  %sd_fsname23 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %sd_fsname23, i32 noundef %2) #23
  %3 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_logd_process, align 8
  %call28 = tail call i32 @kthread_stop(ptr noundef %4) #17
  %5 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sd_logd_process, align 8
  br label %cleanup

if.end26:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call i32 @wake_up_process(ptr noundef %call10) #17
  %sd_quotad_process = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 65
  %6 = ptrtoint ptr %sd_quotad_process to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %sd_quotad_process, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then17, %if.then4
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %2, %if.then17 ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_freeze_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_make_fs_rw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_freeze_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_gl_hash_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_delete_debugfs_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_sys_fs_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @address_space_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_read_super(ptr noundef %sdp, i64 noundef %sector, i32 noundef %silent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !476

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !472

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.62) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #17, !srcloc !479
  unreachable

do.body7.i:                                       ; preds = %if.end
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !472

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !476

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !472

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.63) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #17, !srcloc !480
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !472

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i41.i = add i32 %12, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %call38.i.i.i to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %16) #17
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %2, align 4
  %and.i.i36 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i40, label %if.then.i.i39, !prof !472

if.then.i.i39:                                    ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i38 = add i32 %18, -1
  br label %_compound_head.exit.i43

if.end.i.i40:                                     ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i43

_compound_head.exit.i43:                          ; preds = %if.end.i.i40, %if.then.i.i39
  %retval.0.i.i41 = phi i32 [ %sub.i.i38, %if.then.i.i39 ], [ %19, %if.end.i.i40 ]
  %20 = inttoptr i32 %retval.0.i.i41 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i42 = icmp eq i32 %22, -1
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %2, align 4
  %and.i12.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i42, label %if.then.i44, label %do.end8.i, !prof !476

if.then.i44:                                      ; preds = %_compound_head.exit.i43
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !472

if.then.i15.i:                                    ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i14.i = add i32 %24, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %25, %if.end.i16.i ]
  %26 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.63) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #17, !srcloc !481
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i43
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !472

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i21.i = add i32 %24, -1
  br label %ClearPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %call38.i.i.i to i32
  br label %ClearPageDirty.exit

ClearPageDirty.exit:                              ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %27, %if.end.i23.i ]
  %28 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %28) #17
  tail call void @__might_sleep(ptr noundef nonnull @.str.64, i32 noundef 788) #17
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %2, align 4
  %and.i.i45 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.end.i.i49, label %if.then.i.i48, !prof !472

if.then.i.i48:                                    ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i47 = add i32 %30, -1
  br label %_compound_head.exit.i51

if.end.i.i49:                                     ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i51

_compound_head.exit.i51:                          ; preds = %if.end.i.i49, %if.then.i.i48
  %retval.0.i.i50 = phi i32 [ %sub.i.i47, %if.then.i.i48 ], [ %31, %if.end.i.i49 ]
  %32 = inttoptr i32 %retval.0.i.i50 to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !472

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i51
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.65) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #17, !srcloc !482
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i51
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %32, i32 noundef 4) #17
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %32, align 4
  %and.i.i4.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i52_crit_edge

folio_flags.exit.i.i.if.then.i52_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i52

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %32, i32 1, i32 3, i32 1) #17
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #17, !srcloc !483
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !484
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i52_crit_edge

folio_trylock.exit.i.if.then.i52_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i52

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lock_page.exit

if.then.i52:                                      ; preds = %folio_trylock.exit.i.if.then.i52_crit_edge, %folio_flags.exit.i.i.if.then.i52_crit_edge
  tail call void @__folio_lock(ptr noundef %32) #17
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i52, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #17
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize, align 16
  %shr = lshr i32 %40, 9
  %conv = zext i32 %shr to i64
  %mul = mul i64 %conv, %sector
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %mul, ptr %bi_iter, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %42 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %45, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %47, %43
  br i1 %cmp.not.i, label %lock_page.exit.bio_set_dev.exit_crit_edge, label %if.then.i53

lock_page.exit.bio_set_dev.exit_crit_edge:        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_set_dev.exit

if.then.i53:                                      ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  %conv1.i8.i = and i16 %45, -2177
  %48 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i53, %lock_page.exit.bio_set_dev.exit_crit_edge
  %49 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %43, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #17
  %call5 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef nonnull %call38.i.i.i, i32 noundef 4096, i32 noundef 0) #17
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %50 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @end_bio_io_page, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %51 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call38.i.i.i, ptr %bi_private, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4096, ptr %bi_opf.i, align 8
  tail call void @submit_bio(ptr noundef %call.i) #17
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %2, align 4
  %and.i.i54 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.not.i.i55 = icmp eq i32 %and.i.i54, 0
  br i1 %tobool.not.i.i55, label %if.end.i.i58, label %if.then.i.i57, !prof !472

if.then.i.i57:                                    ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i56 = add i32 %54, -1
  br label %_compound_head.exit.i61

if.end.i.i58:                                     ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i61

_compound_head.exit.i61:                          ; preds = %if.end.i.i58, %if.then.i.i57
  %retval.0.i.i59 = phi i32 [ %sub.i.i56, %if.then.i.i57 ], [ %55, %if.end.i.i58 ]
  %56 = inttoptr i32 %retval.0.i.i59 to ptr
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i60 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i60, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !472

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i61
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.65) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #17, !srcloc !482
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %_compound_head.exit.i61
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %56, align 4
  %and1.i.i.i.i62 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i62)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i62, 0
  br i1 %tobool.i.not.i.i, label %folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge, label %if.then.i1.i

folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge: ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wait_on_page_locked.exit

if.then.i1.i:                                     ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @folio_wait_bit(ptr noundef %56, i32 noundef 0) #17
  br label %wait_on_page_locked.exit

wait_on_page_locked.exit:                         ; preds = %if.then.i1.i, %folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge
  tail call void @bio_put(ptr noundef %call.i) #17
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %2, align 4
  %and.i.i63 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i67, label %if.then.i.i66, !prof !472

if.then.i.i66:                                    ; preds = %wait_on_page_locked.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i65 = add i32 %63, -1
  br label %_compound_head.exit.i71

if.end.i.i67:                                     ; preds = %wait_on_page_locked.exit
  call void @__sanitizer_cov_trace_pc() #19
  %64 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i71

_compound_head.exit.i71:                          ; preds = %if.end.i.i67, %if.then.i.i66
  %retval.0.i.i68 = phi i32 [ %sub.i.i65, %if.then.i.i66 ], [ %64, %if.end.i.i67 ]
  %65 = inttoptr i32 %retval.0.i.i68 to ptr
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i.i.i69 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i69)
  %tobool.not.i.i.i70 = icmp eq i32 %and.i.i.i.i69, 0
  br i1 %tobool.not.i.i.i70, label %folio_flags.exit.i.i73, label %if.then.i.i.i72, !prof !472

if.then.i.i.i72:                                  ; preds = %_compound_head.exit.i71
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.65) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #17, !srcloc !482
  unreachable

folio_flags.exit.i.i73:                           ; preds = %_compound_head.exit.i71
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %65, align 4
  %71 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i.not.i = icmp eq i32 %71, 0
  br i1 %tobool.i.not.i, label %if.then8, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !485
  tail call void @__might_sleep(ptr noundef nonnull @.str.69, i32 noundef 44) #17
  %72 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i = lshr i32 %73, 30
  %74 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %shr.i.i, label %PageUptodate.exit.if.then.i74_crit_edge [
    i32 2, label %PageUptodate.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

PageUptodate.exit.if.else.i_crit_edge:            ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

PageUptodate.exit.if.then.i74_crit_edge:          ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i74

if.then8:                                         ; preds = %folio_flags.exit.i.i73
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #17
  br label %cleanup

is_highmem_idx.exit.i:                            ; preds = %PageUptodate.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %75 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp2.i.not.i = icmp eq i32 %75, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i74_crit_edge

is_highmem_idx.exit.i.if.then.i74_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i74

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then.i74:                                      ; preds = %is_highmem_idx.exit.i.if.then.i74_crit_edge, %PageUptodate.exit.if.then.i74_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #17
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %PageUptodate.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i) #17
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i74
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i74 ]
  %sd_sb.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5
  %76 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sdp, align 8
  %78 = ptrtoint ptr %addr.0.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.0.i, align 8
  %80 = ptrtoint ptr %sd_sb.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %sd_sb.i, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %addr.0.i, i32 0, i32 1
  %81 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mh_type.i, align 4
  %sb_type.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %sb_type.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %sb_type.i, align 4
  %sb_fs_format.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 1
  %84 = ptrtoint ptr %sb_fs_format.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sb_fs_format.i, align 8
  %sb_fs_format2.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 2
  %86 = ptrtoint ptr %sb_fs_format2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %sb_fs_format2.i, align 8
  %sb_multihost_format.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 2
  %87 = ptrtoint ptr %sb_multihost_format.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sb_multihost_format.i, align 4
  %sb_multihost_format3.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 3
  %89 = ptrtoint ptr %sb_multihost_format3.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %sb_multihost_format3.i, align 4
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 4
  %90 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sb_bsize.i, align 4
  %sb_bsize4.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 4
  %92 = ptrtoint ptr %sb_bsize4.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %sb_bsize4.i, align 8
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 5
  %93 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sb_bsize_shift.i, align 8
  %sb_bsize_shift5.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 5
  %95 = ptrtoint ptr %sb_bsize_shift5.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %sb_bsize_shift5.i, align 4
  %sb_master_dir.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 7
  %no_addr.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 7, i32 1
  %96 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %no_addr.i, align 8
  %sb_master_dir6.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 6
  %no_addr7.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 6, i32 1
  %98 = ptrtoint ptr %no_addr7.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %no_addr7.i, align 8
  %99 = ptrtoint ptr %sb_master_dir.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %sb_master_dir.i, align 8
  %101 = ptrtoint ptr %sb_master_dir6.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %sb_master_dir6.i, align 8
  %sb_root_dir.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 9
  %no_addr11.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 9, i32 1
  %102 = ptrtoint ptr %no_addr11.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %no_addr11.i, align 8
  %sb_root_dir12.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 7
  %no_addr13.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 7, i32 1
  %104 = ptrtoint ptr %no_addr13.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %no_addr13.i, align 8
  %105 = ptrtoint ptr %sb_root_dir.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %sb_root_dir.i, align 8
  %107 = ptrtoint ptr %sb_root_dir12.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %sb_root_dir12.i, align 8
  %sb_lockproto.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 8
  %sb_lockproto18.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 10
  %108 = call ptr @memcpy(ptr %sb_lockproto.i, ptr %sb_lockproto18.i, i32 64)
  %sb_locktable.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 9
  %sb_locktable21.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 11
  %109 = call ptr @memcpy(ptr %sb_locktable.i, ptr %sb_locktable21.i, i32 64)
  %s_uuid.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 40
  %sb_uuid.i = getelementptr inbounds %struct.gfs2_sb, ptr %addr.0.i, i32 0, i32 14
  %110 = call ptr @memcpy(ptr %s_uuid.i, ptr %sb_uuid.i, i32 16)
  tail call void @__might_sleep(ptr noundef nonnull @.str.69, i32 noundef 55) #17
  %111 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i75 = lshr i32 %112, 30
  %113 = zext i32 %shr.i.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %shr.i.i75, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i77
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %kunmap.exit

is_highmem_idx.exit.i77:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %114 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp2.i.not.i76 = icmp eq i32 %114, 2
  br i1 %cmp2.i.not.i76, label %is_highmem_idx.exit.i77.if.end.i_crit_edge, label %is_highmem_idx.exit.i77.kunmap.exit_crit_edge

is_highmem_idx.exit.i77.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %kunmap.exit

is_highmem_idx.exit.i77.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i77.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %call38.i.i.i) #17
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i77.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #17
  %115 = ptrtoint ptr %sd_sb.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sd_sb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %116)
  %cmp.not.i79 = icmp eq i32 %116, 18225520
  br i1 %cmp.not.i79, label %lor.lhs.false.i, label %kunmap.exit.if.then.i82_crit_edge

kunmap.exit.if.then.i82_crit_edge:                ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i82

lor.lhs.false.i:                                  ; preds = %kunmap.exit
  %117 = ptrtoint ptr %sb_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sb_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp1.not.i = icmp eq i32 %118, 1
  br i1 %cmp1.not.i, label %if.end3.i, label %lor.lhs.false.i.if.then.i82_crit_edge

lor.lhs.false.i.if.then.i82_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i82

if.then.i82:                                      ; preds = %lor.lhs.false.i.if.then.i82_crit_edge, %kunmap.exit.if.then.i82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool.not.i81 = icmp eq i32 %silent, 0
  br i1 %tobool.not.i81, label %do.end.i, label %if.then.i82.cleanup_crit_edge

if.then.i82.cleanup_crit_edge:                    ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #19
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #23
  br label %cleanup

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %119 = ptrtoint ptr %sb_fs_format2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sb_fs_format2.i, align 8
  %121 = add i32 %120, -1803
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %121)
  %122 = icmp ult i32 %121, -2
  br i1 %122, label %if.end3.i.do.end13.i_crit_edge, label %lor.lhs.false8.i

if.end3.i.do.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13.i

lor.lhs.false8.i:                                 ; preds = %if.end3.i
  %123 = ptrtoint ptr %sb_multihost_format3.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sb_multihost_format3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900, i32 %124)
  %cmp9.not.i = icmp eq i32 %124, 1900
  br i1 %cmp9.not.i, label %if.end16.i, label %lor.lhs.false8.i.do.end13.i_crit_edge

lor.lhs.false8.i.do.end13.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13.i

do.end13.i:                                       ; preds = %lor.lhs.false8.i.do.end13.i_crit_edge, %if.end3.i.do.end13.i_crit_edge
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %sd_fsname.i) #23
  br label %cleanup

if.end16.i:                                       ; preds = %lor.lhs.false8.i
  %125 = ptrtoint ptr %sb_bsize4.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sb_bsize4.i, align 8
  %127 = add i32 %126, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 3585, i32 %127)
  %128 = icmp ult i32 %127, 3585
  %129 = tail call i32 @llvm.ctpop.i32(i32 %126) #17, !range !486
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %tobool24.not.i = icmp ult i32 %129, 2
  %or.cond43.i = and i1 %128, %tobool24.not.i
  br i1 %or.cond43.i, label %if.end16.i.cleanup_crit_edge, label %do.end28.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end28.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end28.i, %if.end16.i.cleanup_crit_edge, %do.end13.i, %do.end.i, %if.then.i82.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %do.end13.i ], [ -22, %do.end28.i ], [ -22, %do.end.i ], [ -22, %if.then.i82.cleanup_crit_edge ], [ 0, %if.end16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @end_bio_io_page(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !487
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !472

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.65) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #17, !srcloc !482
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv) #23
  br label %if.end

if.end:                                           ; preds = %do.end, %SetPageUptodate.exit
  tail call void @unlock_page(ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq_num(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_i(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_inode_lookup(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_journal(ptr noundef %sdp, i32 noundef %undo) unnamed_addr #0 align 64 {
entry:
  %envp.i = alloca [2 x ptr], align 4
  %buf.i335 = alloca [30 x i8], align 1
  %name.i = alloca %struct.qstr, align 8
  %buf.i = alloca [20 x i8], align 1
  %ji_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 34
  %0 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_master_dir, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ji_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %undo)
  %tobool.not = icmp eq i32 %undo, 0
  %4 = call ptr @memset(ptr %ji_gh, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.fail_statfs_crit_edge

entry.fail_statfs_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_statfs

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @gfs2_lookup_simple(ptr noundef %3, ptr noundef nonnull @.str.136) #17
  %sd_jindex = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 36
  %5 = ptrtoint ptr %sd_jindex to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %sd_jindex, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %sd_fsname, i32 noundef 0) #23
  %6 = ptrtoint ptr %sd_jindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_jindex, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup215

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #17
  %9 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #17
  %name1.i = getelementptr inbounds %struct.qstr, ptr %name.i, i32 0, i32 1
  %10 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  %11 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %name1.i, align 8
  %sd_jindex_mutex.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 54
  call void @mutex_lock_nested(ptr noundef %sd_jindex_mutex.i, i32 noundef 0) #17
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %call1, i32 0, i32 6
  %12 = call ptr @llvm.returnaddress(i32 0) #17
  %13 = ptrtoint ptr %12 to i32
  %14 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_gl.i, align 4
  call void @__gfs2_holder_init(ptr noundef %15, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %ji_gh, i32 noundef %13) #17
  %call.i88.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %ji_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool.not.i89.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool.not.i89.i, label %if.end.lr.ph.i, label %if.end8.gfs2_glock_nq_init.exit.i_crit_edge

if.end8.gfs2_glock_nq_init.exit.i_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %gfs2_glock_nq_init.exit.i

if.end.lr.ph.i:                                   ; preds = %if.end8
  %sd_journals.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 55
  %hash.i = getelementptr inbounds %struct.anon.5, ptr %name.i, i32 0, i32 1
  %sd_jindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 53
  %sd_jindex_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52
  %prev.i81.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52, i32 1
  br label %if.end.i

gfs2_glock_nq_init.exit.i:                        ; preds = %cleanup.i.gfs2_glock_nq_init.exit.i_crit_edge, %if.end8.gfs2_glock_nq_init.exit.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i88.i, %if.end8.gfs2_glock_nq_init.exit.i_crit_edge ], [ %call.i.i325, %cleanup.i.gfs2_glock_nq_init.exit.i_crit_edge ]
  call void @gfs2_holder_uninit(ptr noundef nonnull %ji_gh) #17
  br label %gfs2_jindex_hold.exit.thread

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %16 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd_journals.i, align 8
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.167, i32 noundef %17) #17
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call4.i, ptr %name.i, align 8
  %19 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name1.i, align 8
  %call.i77.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %20, i32 noundef %call4.i) #26
  %xor.i.i = xor i32 %call.i77.i, -1
  %21 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor.i.i, ptr %hash.i, align 4
  %22 = ptrtoint ptr %sd_jindex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd_jindex, align 4
  %call9.i = call i32 @gfs2_dir_check(ptr noundef %23, ptr noundef nonnull %name.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9.i)
  %cmp.i324 = icmp eq i32 %call9.i, -2
  br i1 %cmp.i324, label %gfs2_jindex_hold.exit.thread370, label %if.end11.i

gfs2_jindex_hold.exit.thread370:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @mutex_unlock(ptr noundef %sd_jindex_mutex.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #17
  br label %if.end19

if.end11.i:                                       ; preds = %if.end.i
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ji_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool12.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end11.i.gfs2_jindex_hold.exit_crit_edge

if.end11.i.gfs2_jindex_hold.exit_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %gfs2_jindex_hold.exit

if.end14.i:                                       ; preds = %if.end11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 120) #20
  %tobool16.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not.i, label %if.end14.i.gfs2_jindex_hold.exit.thread_crit_edge, label %if.end18.i

if.end14.i.gfs2_jindex_hold.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %gfs2_jindex_hold.exit.thread

if.end18.i:                                       ; preds = %if.end14.i
  %extent_list.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %extent_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %extent_list.i, ptr %extent_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %extent_list.i, ptr %prev.i.i, align 4
  %jd_revoke_list.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 13
  %27 = ptrtoint ptr %jd_revoke_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %jd_revoke_list.i, ptr %jd_revoke_list.i, align 4
  %prev.i78.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %prev.i78.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %jd_revoke_list.i, ptr %prev.i78.i, align 8
  %jd_work.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 3
  call void @__init_work(ptr noundef %jd_work.i, i32 noundef 0) #17
  %29 = ptrtoint ptr %jd_work.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %jd_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.168, ptr noundef nonnull @gfs2_jindex_hold.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry22.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry22.i, ptr %entry22.i, align 8
  %prev.i79.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i79.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry22.i, ptr %prev.i79.i, align 4
  %func.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gfs2_recover_func, ptr %func.i, align 8
  %33 = ptrtoint ptr %sd_jindex to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_jindex, align 4
  %call25.i = call ptr @gfs2_lookupi(ptr noundef %34, ptr noundef nonnull %name.i, i32 noundef 1) #17
  %jd_inode.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %jd_inode.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call25.i, ptr %jd_inode.i, align 8
  %tobool.not.i80.i = icmp eq ptr %call25.i, null
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i80.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then28.i, label %if.end35.i

if.then28.i:                                      ; preds = %if.end18.i
  %36 = ptrtoint ptr %call25.i to i32
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  br i1 %tobool.not.i80.i, label %if.then28.i.gfs2_jindex_hold.exit.thread_crit_edge, label %if.then28.i.gfs2_jindex_hold.exit_crit_edge

if.then28.i.gfs2_jindex_hold.exit_crit_edge:      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %gfs2_jindex_hold.exit

if.then28.i.gfs2_jindex_hold.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %gfs2_jindex_hold.exit.thread

if.end35.i:                                       ; preds = %if.end18.i
  call void @d_mark_dontcache(ptr noundef nonnull %call25.i) #17
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin.i) #17
  %37 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sd_journals.i, align 8
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %sd_journals.i, align 8
  %jd_jid.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %jd_jid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %jd_jid.i, align 4
  %40 = ptrtoint ptr %jd_inode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %jd_inode.i, align 8
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_no_addr.i, align 8
  %jd_no_addr.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %call7.i.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %jd_no_addr.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %jd_no_addr.i, align 8
  %45 = ptrtoint ptr %prev.i81.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i81.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %46, ptr noundef %sd_jindex_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end35.i.cleanup.i_crit_edge

if.end35.i.cleanup.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %prev.i81.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i, ptr %prev.i81.i, align 4
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %sd_jindex_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i.i.i, ptr %46, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end35.i.cleanup.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i) #17
  %51 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_gl.i, align 4
  call void @__gfs2_holder_init(ptr noundef %52, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %ji_gh, i32 noundef %13) #17
  %call.i.i325 = call i32 @gfs2_glock_nq(ptr noundef nonnull %ji_gh) #17
  %tobool.not.i.i = icmp eq i32 %call.i.i325, 0
  br i1 %tobool.not.i.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.gfs2_glock_nq_init.exit.i_crit_edge

cleanup.i.gfs2_glock_nq_init.exit.i_crit_edge:    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %gfs2_glock_nq_init.exit.i

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

gfs2_jindex_hold.exit.thread:                     ; preds = %if.then28.i.gfs2_jindex_hold.exit.thread_crit_edge, %if.end14.i.gfs2_jindex_hold.exit.thread_crit_edge, %gfs2_glock_nq_init.exit.i
  %error.1.ph.i.ph = phi i32 [ %call.i.lcssa.i, %gfs2_glock_nq_init.exit.i ], [ -2, %if.then28.i.gfs2_jindex_hold.exit.thread_crit_edge ], [ -12, %if.end14.i.gfs2_jindex_hold.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %sd_jindex_mutex.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #17
  br label %do.end14

gfs2_jindex_hold.exit:                            ; preds = %if.then28.i.gfs2_jindex_hold.exit_crit_edge, %if.end11.i.gfs2_jindex_hold.exit_crit_edge
  %error.1.ph.i = phi i32 [ %36, %if.then28.i.gfs2_jindex_hold.exit_crit_edge ], [ %call9.i, %if.end11.i.gfs2_jindex_hold.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %sd_jindex_mutex.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.ph.i)
  %tobool10.not = icmp eq i32 %error.1.ph.i, 0
  br i1 %tobool10.not, label %gfs2_jindex_hold.exit.if.end19_crit_edge, label %gfs2_jindex_hold.exit.do.end14_crit_edge

gfs2_jindex_hold.exit.do.end14_crit_edge:         ; preds = %gfs2_jindex_hold.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end14

gfs2_jindex_hold.exit.if.end19_crit_edge:         ; preds = %gfs2_jindex_hold.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

do.end14:                                         ; preds = %gfs2_jindex_hold.exit.do.end14_crit_edge, %gfs2_jindex_hold.exit.thread
  %error.1.ph.i369 = phi i32 [ %error.1.ph.i.ph, %gfs2_jindex_hold.exit.thread ], [ %error.1.ph.i, %gfs2_jindex_hold.exit.do.end14_crit_edge ]
  %sd_fsname16 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %sd_fsname16, i32 noundef %error.1.ph.i369) #23
  br label %fail

if.end19:                                         ; preds = %gfs2_jindex_hold.exit.if.end19_crit_edge, %gfs2_jindex_hold.exit.thread370
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin.i) #17
  %53 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sd_journals.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool21.not = icmp eq i32 %54, 0
  br i1 %tobool21.not, label %do.end25, label %if.end30

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname27 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %sd_fsname27) #23
  br label %fail_jindex.thread

if.end30:                                         ; preds = %if.end19
  %sd_log_blks_needed = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 89
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_needed, i32 noundef 4) #17
  %55 = ptrtoint ptr %sd_log_blks_needed to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %sd_log_blks_needed, align 4
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %56 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool31.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  %call33 = call ptr @gfs2_jdesc_find(ptr noundef %sdp, i32 noundef 0) #17
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %57 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call33, ptr %sd_jdesc, align 4
  %sd_log_blks_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %jd_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %call33, i32 0, i32 8
  %58 = ptrtoint ptr %jd_blocks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %jd_blocks, align 8
  %call.i.i317 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_free, i32 noundef 4) #17
  %60 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %sd_log_blks_free, align 4
  %sd_log_thresh1 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 86
  %61 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks36 = getelementptr inbounds %struct.gfs2_jdesc, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %jd_blocks36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %jd_blocks36, align 8
  %mul = shl i32 %64, 1
  %div = udiv i32 %mul, 5
  %call.i.i318 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_thresh1, i32 noundef 4) #17
  %65 = ptrtoint ptr %sd_log_thresh1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %div, ptr %sd_log_thresh1, align 4
  %sd_log_thresh2 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 87
  %66 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks38 = getelementptr inbounds %struct.gfs2_jdesc, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %jd_blocks38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %jd_blocks38, align 8
  %mul39 = shl i32 %69, 2
  %div40 = udiv i32 %mul39, 5
  %call.i.i319 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_thresh2, i32 noundef 4) #17
  %70 = ptrtoint ptr %sd_log_thresh2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %div40, ptr %sd_log_thresh2, align 4
  br label %if.end121

if.else:                                          ; preds = %if.end30
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  %71 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sd_lockstruct, align 4
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin.i) #17
  %73 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sd_journals.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp.not = icmp ult i32 %72, %74
  br i1 %cmp.not, label %if.end61, label %do.end45

do.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname47 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %75 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sd_lockstruct, align 4
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %sd_fsname47, i32 noundef %76) #23
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin.i) #17
  %77 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sd_journals.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i) #17
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin.i) #17
  %79 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sd_journals.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i) #17
  %sub = add i32 %80, -1
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %sd_fsname47, i32 noundef %78, i32 noundef %sub) #23
  br label %fail_jindex.thread

if.end61:                                         ; preds = %if.else
  %81 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sd_lockstruct, align 4
  %call64 = call ptr @gfs2_jdesc_find(ptr noundef %sdp, i32 noundef %82) #17
  %sd_jdesc65 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %83 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call64, ptr %sd_jdesc65, align 4
  %84 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sd_lockstruct, align 4
  %conv = sext i32 %85 to i64
  %sd_journal_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 57
  %call68 = call i32 @gfs2_glock_nq_num(ptr noundef %sdp, i64 noundef %conv, ptr noundef nonnull @gfs2_journal_glops, i32 noundef 1, i16 noundef zeroext 1028, ptr noundef %sd_journal_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end78, label %do.end73

do.end73:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname75 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %sd_fsname75, i32 noundef %call68) #23
  br label %fail_jindex.thread

if.end78:                                         ; preds = %if.end61
  %86 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sd_jdesc65, align 4
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %jd_inode, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_gl, align 4
  %sd_jinode_gl = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 59
  %92 = ptrtoint ptr %sd_jinode_gl to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %sd_jinode_gl, align 8
  %93 = load ptr, ptr %i_gl, align 4
  %sd_jinode_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 58
  call void @__gfs2_holder_init(ptr noundef %93, i32 noundef 3, i16 noundef zeroext 1156, ptr noundef %sd_jinode_gh, i32 noundef %13) #17
  %call.i = call i32 @gfs2_glock_nq(ptr noundef %sd_jinode_gh) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end92, label %do.end87

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  call void @gfs2_holder_uninit(ptr noundef %sd_jinode_gh) #17
  %sd_fsname89 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %sd_fsname89, i32 noundef %call.i) #23
  br label %fail_journal_gh

if.end92:                                         ; preds = %if.end78
  %94 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sd_jdesc65, align 4
  %call94 = call i32 @gfs2_jdesc_check(ptr noundef %95) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end105, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname101 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %96 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sd_jdesc65, align 4
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %jd_jid, align 4
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %sd_fsname101, i32 noundef %99, i32 noundef %call94) #23
  br label %fail_jinode_gh

if.end105:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  %sd_log_blks_free106 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %100 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sd_jdesc65, align 4
  %jd_blocks108 = getelementptr inbounds %struct.gfs2_jdesc, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %jd_blocks108 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %jd_blocks108, align 8
  %call.i.i320 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_free106, i32 noundef 4) #17
  %104 = ptrtoint ptr %sd_log_blks_free106 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %103, ptr %sd_log_blks_free106, align 4
  %sd_log_thresh1109 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 86
  %105 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sd_jdesc65, align 4
  %jd_blocks111 = getelementptr inbounds %struct.gfs2_jdesc, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %jd_blocks111 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %jd_blocks111, align 8
  %mul112 = shl i32 %108, 1
  %div113 = udiv i32 %mul112, 5
  %call.i.i321 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_thresh1109, i32 noundef 4) #17
  %109 = ptrtoint ptr %sd_log_thresh1109 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 %div113, ptr %sd_log_thresh1109, align 4
  %sd_log_thresh2114 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 87
  %110 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sd_jdesc65, align 4
  %jd_blocks116 = getelementptr inbounds %struct.gfs2_jdesc, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %jd_blocks116 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %jd_blocks116, align 8
  %mul117 = shl i32 %113, 2
  %div118 = udiv i32 %mul117, 5
  %call.i.i322 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_thresh2114, i32 noundef 4) #17
  %114 = ptrtoint ptr %sd_log_thresh2114 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %div118, ptr %sd_log_thresh2114, align 4
  %115 = ptrtoint ptr %sd_jdesc65 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sd_jdesc65, align 4
  %call120 = call i32 @gfs2_map_journal_extents(ptr noundef %sdp, ptr noundef %116) #17
  br label %if.end121

if.end121:                                        ; preds = %if.end105, %if.then32
  %sd_log_blks_free122 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %call.i.i323 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free122, i32 noundef 4) #17
  %117 = ptrtoint ptr %sd_log_blks_free122 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %sd_log_blks_free122, align 4
  call fastcc void @trace_gfs2_log_blocks(ptr noundef %sdp, i32 noundef %118)
  %119 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sd_master_dir, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %d_inode.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %buf.i335) #17
  %123 = call ptr @memset(ptr %buf.i335, i32 255, i32 30)
  %call1.i = call ptr @gfs2_lookup_simple(ptr noundef %122, ptr noundef nonnull @.str.172) #17
  %sd_statfs_inode.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 37
  %124 = ptrtoint ptr %sd_statfs_inode.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call1.i, ptr %sd_statfs_inode.i, align 8
  %cmp.i.i336 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i336, label %if.then.i337, label %if.end.i339

if.then.i337:                                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  %125 = ptrtoint ptr %call1.i to i32
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %sd_fsname.i, i32 noundef %125) #23
  br label %init_statfs.exit

if.end.i339:                                      ; preds = %if.end121
  %126 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %126)
  %bf.load.i = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i338 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i338, label %if.end8.i, label %if.end.i339.init_statfs.exit.thread_crit_edge

if.end.i339.init_statfs.exit.thread_crit_edge:    ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_statfs.exit.thread

if.end8.i:                                        ; preds = %if.end.i339
  %call9.i340 = call ptr @gfs2_lookup_simple(ptr noundef %122, ptr noundef nonnull @.str.175) #17
  %cmp.i134.i = icmp ugt ptr %call9.i340, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134.i, label %if.then11.i, label %if.end20.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %127 = ptrtoint ptr %call9.i340 to i32
  %sd_fsname17.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %sd_fsname17.i, i32 noundef %127) #23
  br label %put_statfs.i

if.end20.i:                                       ; preds = %if.end8.i
  %128 = ptrtoint ptr %sd_jindex_list.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %jd.0140.i = load ptr, ptr %sd_jindex_list.i, align 8
  %cmp.not141.i = icmp eq ptr %jd.0140.i, %sd_jindex_list.i
  br i1 %cmp.not141.i, label %if.end20.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end20.i
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %sd_sc_inode.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 38
  %sd_sc_inodes_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 39
  %prev.i.i342 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 39, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i347.for.body.i_crit_edge, %for.body.lr.ph.i
  %jd.0142.i = phi ptr [ %jd.0140.i, %for.body.lr.ph.i ], [ %jd.0.i, %cleanup.i347.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %129 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3136, i32 noundef 16) #20
  %tobool24.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not.i, label %for.body.i.free_local.i_crit_edge, label %if.end26.i

for.body.i.free_local.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_local.i

if.end26.i:                                       ; preds = %for.body.i
  %jd_jid.i343 = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.0142.i, i32 0, i32 7
  %130 = ptrtoint ptr %jd_jid.i343 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %jd_jid.i343, align 4
  %call28.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i335, ptr noundef nonnull @.str.179, i32 noundef %131) #17
  %call30.i = call ptr @gfs2_lookup_simple(ptr noundef %call9.i340, ptr noundef nonnull %buf.i335) #17
  %si_sc_inode.i = getelementptr inbounds %struct.local_statfs_inode, ptr %call7.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %si_sc_inode.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call30.i, ptr %si_sc_inode.i, align 8
  %cmp.i135.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135.i, label %if.then33.i, label %if.end44.i

if.then33.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %133 = ptrtoint ptr %call30.i to i32
  %sd_fsname40.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %134 = ptrtoint ptr %jd_jid.i343 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %jd_jid.i343, align 4
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %sd_fsname40.i, i32 noundef %135, i32 noundef %133) #23
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %free_local.i

if.end44.i:                                       ; preds = %if.end26.i
  %136 = ptrtoint ptr %jd_jid.i343 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %jd_jid.i343, align 4
  %si_jid.i = getelementptr inbounds %struct.local_statfs_inode, ptr %call7.i.i, i32 0, i32 2
  %138 = ptrtoint ptr %si_jid.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %si_jid.i, align 4
  %139 = load i32, ptr %jd_jid.i343, align 4
  %140 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_jid47.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %141, i32 0, i32 7
  %142 = ptrtoint ptr %jd_jid47.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %jd_jid47.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %143)
  %cmp48.i = icmp eq i32 %139, %143
  br i1 %cmp48.i, label %if.then49.i, label %if.end44.i.if.end51.i_crit_edge

if.end44.i.if.end51.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  %144 = ptrtoint ptr %sd_sc_inode.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call30.i, ptr %sd_sc_inode.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end51.i_crit_edge
  %145 = ptrtoint ptr %prev.i.i342 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i342, align 4
  %call.i.i.i344 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %146, ptr noundef %sd_sc_inodes_list.i) #17
  br i1 %call.i.i.i344, label %if.end.i.i.i346, label %if.end51.i.cleanup.i347_crit_edge

if.end51.i.cleanup.i347_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i347

if.end.i.i.i346:                                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #19
  %147 = ptrtoint ptr %prev.i.i342 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call7.i.i, ptr %prev.i.i342, align 4
  %148 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %sd_sc_inodes_list.i, ptr %call7.i.i, align 8
  %prev3.i.i.i345 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %149 = ptrtoint ptr %prev3.i.i.i345 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev3.i.i.i345, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %call7.i.i, ptr %146, align 4
  br label %cleanup.i347

cleanup.i347:                                     ; preds = %if.end.i.i.i346, %if.end51.i.cleanup.i347_crit_edge
  %151 = ptrtoint ptr %jd.0142.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %jd.0.i = load ptr, ptr %jd.0142.i, align 8
  %cmp.not.i = icmp eq ptr %jd.0.i, %sd_jindex_list.i
  br i1 %cmp.not.i, label %cleanup.i347.for.end.i_crit_edge, label %cleanup.i347.for.body.i_crit_edge

cleanup.i347.for.body.i_crit_edge:                ; preds = %cleanup.i347
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

cleanup.i347.for.end.i_crit_edge:                 ; preds = %cleanup.i347
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i347.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  call void @iput(ptr noundef %call9.i340) #17
  %sd_sc_inode57.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 38
  %152 = ptrtoint ptr %sd_sc_inode57.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sd_sc_inode57.i, align 4
  %i_gl.i348 = getelementptr inbounds %struct.gfs2_inode, ptr %153, i32 0, i32 6
  %154 = ptrtoint ptr %i_gl.i348 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i_gl.i348, align 4
  %sd_sc_gh.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 60
  call void @__gfs2_holder_init(ptr noundef %155, i32 noundef 1, i16 noundef zeroext 0, ptr noundef %sd_sc_gh.i, i32 noundef %13) #17
  %call.i.i349 = call i32 @gfs2_glock_nq(ptr noundef %sd_sc_gh.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i349)
  %tobool.not.i.i350 = icmp eq i32 %call.i.i349, 0
  br i1 %tobool.not.i.i350, label %if.end69.i, label %do.end64.i

do.end64.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @gfs2_holder_uninit(ptr noundef %sd_sc_gh.i) #17
  %sd_fsname66.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %sd_fsname66.i, i32 noundef %call.i.i349) #23
  br label %free_local.i

if.end69.i:                                       ; preds = %for.end.i
  %sd_sc_bh.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 61
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %153, i32 0, i32 1
  %156 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i136.i = call i32 @gfs2_meta_buffer(ptr noundef %153, i32 noundef 4, i64 noundef %157, ptr noundef %sd_sc_bh.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %tobool71.not.i = icmp eq i32 %call.i136.i, 0
  br i1 %tobool71.not.i, label %if.end69.i.init_statfs.exit.thread_crit_edge, label %do.end75.i

if.end69.i.init_statfs.exit.thread_crit_edge:     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_statfs.exit.thread

do.end75.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname77.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %sd_fsname77.i, i32 noundef %call.i136.i) #23
  call void @gfs2_glock_dq_uninit(ptr noundef %sd_sc_gh.i) #17
  br label %free_local.i

free_local.i:                                     ; preds = %do.end75.i, %do.end64.i, %if.then33.i, %for.body.i.free_local.i_crit_edge
  %pn.0.i = phi ptr [ null, %do.end64.i ], [ null, %do.end75.i ], [ %call9.i340, %if.then33.i ], [ %call9.i340, %for.body.i.free_local.i_crit_edge ]
  %error.2.i = phi i32 [ %call.i.i349, %do.end64.i ], [ %call.i136.i, %do.end75.i ], [ %133, %if.then33.i ], [ -12, %for.body.i.free_local.i_crit_edge ]
  call void @free_local_statfs_inodes(ptr noundef %sdp) #17
  call void @iput(ptr noundef %pn.0.i) #17
  br label %put_statfs.i

put_statfs.i:                                     ; preds = %free_local.i, %if.then11.i
  %error.3.i = phi i32 [ %127, %if.then11.i ], [ %error.2.i, %free_local.i ]
  %158 = ptrtoint ptr %sd_statfs_inode.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sd_statfs_inode.i, align 8
  call void @iput(ptr noundef %159) #17
  br label %init_statfs.exit

init_statfs.exit.thread:                          ; preds = %if.end69.i.init_statfs.exit.thread_crit_edge, %if.end.i339.init_statfs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %buf.i335) #17
  %ls_first = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 1
  %160 = ptrtoint ptr %ls_first to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ls_first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool129.not = icmp eq i32 %161, 0
  br i1 %tobool129.not, label %if.else159, label %for.cond.preheader

for.cond.preheader:                               ; preds = %init_statfs.exit.thread
  %162 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %sd_journals.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp131398.not = icmp eq i32 %163, 0
  br i1 %cmp131398.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

init_statfs.exit:                                 ; preds = %put_statfs.i, %if.then.i337
  %retval.0.i = phi i32 [ %125, %if.then.i337 ], [ %error.3.i, %put_statfs.i ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %buf.i335) #17
  br label %fail_jinode_gh

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %x.0399 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call133 = call ptr @gfs2_jdesc_find(ptr noundef %sdp, i32 noundef %x.0399) #17
  %164 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %164)
  %bf.load136 = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load136)
  %tobool138.not = icmp sgt i32 %bf.load136, -1
  br i1 %tobool138.not, label %if.end144, label %if.then139

if.then139:                                       ; preds = %for.body
  %call140 = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %call133, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then139.for.inc_crit_edge, label %if.then139.fail_statfs_crit_edge

if.then139.fail_statfs_crit_edge:                 ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_statfs

if.then139.for.inc_crit_edge:                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end144:                                        ; preds = %for.body
  %call145 = call i32 @gfs2_recover_journal(ptr noundef %call133, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end144.for.inc_crit_edge, label %do.end150

if.end144.for.inc_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname152 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %sd_fsname152, i32 noundef %x.0399, i32 noundef %call145) #23
  br label %fail_statfs

for.inc:                                          ; preds = %if.end144.for.inc_crit_edge, %if.then139.for.inc_crit_edge
  %inc = add nuw i32 %x.0399, 1
  %165 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sd_journals.i, align 8
  %cmp131 = icmp ult i32 %inc, %166
  br i1 %cmp131, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp.i) #17
  %167 = getelementptr inbounds [2 x ptr], ptr %envp.i, i32 0, i32 1
  %168 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @.str.189, ptr %envp.i, align 4
  %169 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %167, align 4
  %sd_fsname.i351 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call.i352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %sd_fsname.i351) #23
  %ls_ops.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %170 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ls_ops.i, align 4
  %lm_first_done.i = getelementptr inbounds %struct.lm_lockops, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %lm_first_done.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %lm_first_done.i, align 4
  %tobool.not.i353 = icmp eq ptr %173, null
  br i1 %tobool.not.i353, label %for.end.cleanup156.thread_crit_edge, label %if.then.i354

for.end.cleanup156.thread_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup156.thread

if.then.i354:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call void %173(ptr noundef %sdp) #17
  br label %cleanup156.thread

cleanup156.thread:                                ; preds = %if.then.i354, %for.end.cleanup156.thread_crit_edge
  %sd_kobj.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 2
  %call5.i = call i32 @kobject_uevent_env(ptr noundef %sd_kobj.i, i32 noundef 2, ptr noundef nonnull %envp.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp.i) #17
  br label %if.end179

if.else159:                                       ; preds = %init_statfs.exit.thread
  %174 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %174)
  %bf.load162 = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load162)
  %tobool164.not = icmp sgt i32 %bf.load162, -1
  br i1 %tobool164.not, label %if.then165, label %if.else159.if.end179_crit_edge

if.else159.if.end179_crit_edge:                   ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end179

if.then165:                                       ; preds = %if.else159
  %sd_jdesc166 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %175 = ptrtoint ptr %sd_jdesc166 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sd_jdesc166, align 4
  %call167 = call i32 @gfs2_recover_journal(ptr noundef %176, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.then165.if.end179_crit_edge, label %do.end172

if.then165.if.end179_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end179

do.end172:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #19
  %sd_fsname174 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %sd_fsname174, i32 noundef %call167) #23
  br label %fail_statfs

if.end179:                                        ; preds = %if.then165.if.end179_crit_edge, %if.else159.if.end179_crit_edge, %cleanup156.thread
  %sd_log_idle = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 94
  %177 = ptrtoint ptr %sd_log_idle to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %sd_log_idle, align 8
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  call void @_set_bit(i32 noundef 0, ptr noundef %sd_flags) #17
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ji_gh) #17
  %sd_freeze_work = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 27
  call void @__init_work(ptr noundef %sd_freeze_work, i32 noundef 0) #17
  %178 = ptrtoint ptr %sd_freeze_work to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -64, ptr %sd_freeze_work, align 8
  %lockdep_map = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 27, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.166, ptr noundef nonnull @init_journal.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry184 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 27, i32 1
  %179 = ptrtoint ptr %entry184 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %entry184, ptr %entry184, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 27, i32 1, i32 1
  %180 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %entry184, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 27, i32 2
  %181 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @gfs2_freeze_func, ptr %func, align 4
  br label %cleanup215

fail_statfs:                                      ; preds = %do.end172, %do.end150, %if.then139.fail_statfs_crit_edge, %entry.fail_statfs_crit_edge
  %error.3 = phi i32 [ %call167, %do.end172 ], [ 0, %entry.fail_statfs_crit_edge ], [ %call145, %do.end150 ], [ %call140, %if.then139.fail_statfs_crit_edge ]
  %jindex.0 = phi i32 [ 1, %do.end172 ], [ 0, %entry.fail_statfs_crit_edge ], [ 1, %do.end150 ], [ 1, %if.then139.fail_statfs_crit_edge ]
  %ar_spectator.i356 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %182 = ptrtoint ptr %ar_spectator.i356 to i32
  call void @__asan_load4_noabort(i32 %182)
  %bf.load.i357 = load i32, ptr %ar_spectator.i356, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i357)
  %tobool.not.i358 = icmp sgt i32 %bf.load.i357, -1
  br i1 %tobool.not.i358, label %if.then.i361, label %fail_statfs.uninit_statfs.exit_crit_edge

fail_statfs.uninit_statfs.exit_crit_edge:         ; preds = %fail_statfs
  call void @__sanitizer_cov_trace_pc() #19
  br label %uninit_statfs.exit

if.then.i361:                                     ; preds = %fail_statfs
  %sd_sc_bh.i359 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 61
  %183 = ptrtoint ptr %sd_sc_bh.i359 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sd_sc_bh.i359, align 4
  %tobool.not.i.i360 = icmp eq ptr %184, null
  br i1 %tobool.not.i.i360, label %if.then.i361.brelse.exit.i_crit_edge, label %if.then.i.i

if.then.i361.brelse.exit.i_crit_edge:             ; preds = %if.then.i361
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then.i361
  call void @__sanitizer_cov_trace_pc() #19
  call void @__brelse(ptr noundef nonnull %184) #17
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then.i361.brelse.exit.i_crit_edge
  %sd_sc_gh.i362 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 60
  call void @gfs2_glock_dq_uninit(ptr noundef %sd_sc_gh.i362) #17
  call void @free_local_statfs_inodes(ptr noundef %sdp) #17
  br label %uninit_statfs.exit

uninit_statfs.exit:                               ; preds = %brelse.exit.i, %fail_statfs.uninit_statfs.exit_crit_edge
  %sd_statfs_inode.i363 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 37
  %185 = ptrtoint ptr %sd_statfs_inode.i363 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sd_statfs_inode.i363, align 8
  call void @iput(ptr noundef %186) #17
  br label %fail_jinode_gh

fail_jinode_gh:                                   ; preds = %uninit_statfs.exit, %init_statfs.exit, %do.end99
  %error.4 = phi i32 [ %error.3, %uninit_statfs.exit ], [ %retval.0.i, %init_statfs.exit ], [ %call94, %do.end99 ]
  %jindex.1 = phi i32 [ %jindex.0, %uninit_statfs.exit ], [ 1, %init_statfs.exit ], [ 1, %do.end99 ]
  %ar_spectator189 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %187 = ptrtoint ptr %ar_spectator189 to i32
  call void @__asan_load4_noabort(i32 %187)
  %bf.load190 = load i32, ptr %ar_spectator189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load190)
  %tobool192.not = icmp sgt i32 %bf.load190, -1
  br i1 %tobool192.not, label %land.lhs.true, label %fail_jinode_gh.fail_journal_gh_crit_edge

fail_jinode_gh.fail_journal_gh_crit_edge:         ; preds = %fail_jinode_gh
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_journal_gh

land.lhs.true:                                    ; preds = %fail_jinode_gh
  %gh_gl.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 58, i32 1
  %188 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %gh_gl.i, align 4
  %tobool.i.not = icmp eq ptr %189, null
  br i1 %tobool.i.not, label %land.lhs.true.fail_journal_gh_crit_edge, label %if.then196

land.lhs.true.fail_journal_gh_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_journal_gh

if.then196:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %sd_jinode_gh193 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 58
  call void @gfs2_glock_dq_uninit(ptr noundef %sd_jinode_gh193) #17
  br label %fail_journal_gh

fail_journal_gh:                                  ; preds = %if.then196, %land.lhs.true.fail_journal_gh_crit_edge, %fail_jinode_gh.fail_journal_gh_crit_edge, %do.end87
  %error.5 = phi i32 [ %error.4, %fail_jinode_gh.fail_journal_gh_crit_edge ], [ %error.4, %if.then196 ], [ %error.4, %land.lhs.true.fail_journal_gh_crit_edge ], [ %call.i, %do.end87 ]
  %jindex.2 = phi i32 [ %jindex.1, %fail_jinode_gh.fail_journal_gh_crit_edge ], [ %jindex.1, %if.then196 ], [ %jindex.1, %land.lhs.true.fail_journal_gh_crit_edge ], [ 1, %do.end87 ]
  %ar_spectator200 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %190 = ptrtoint ptr %ar_spectator200 to i32
  call void @__asan_load4_noabort(i32 %190)
  %bf.load201 = load i32, ptr %ar_spectator200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load201)
  %tobool203.not = icmp sgt i32 %bf.load201, -1
  br i1 %tobool203.not, label %land.lhs.true204, label %fail_journal_gh.fail_jindex_crit_edge

fail_journal_gh.fail_jindex_crit_edge:            ; preds = %fail_journal_gh
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_jindex

land.lhs.true204:                                 ; preds = %fail_journal_gh
  %gh_gl.i365 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 57, i32 1
  %191 = ptrtoint ptr %gh_gl.i365 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %gh_gl.i365, align 4
  %tobool.i366.not = icmp eq ptr %192, null
  br i1 %tobool.i366.not, label %land.lhs.true204.fail_jindex_crit_edge, label %if.then208

land.lhs.true204.fail_jindex_crit_edge:           ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_jindex

if.then208:                                       ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #19
  %sd_journal_gh205 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 57
  call void @gfs2_glock_dq_uninit(ptr noundef %sd_journal_gh205) #17
  br label %fail_jindex

fail_jindex.thread:                               ; preds = %do.end73, %do.end45, %do.end25
  %error.6.ph = phi i32 [ -87, %do.end25 ], [ %call68, %do.end73 ], [ -87, %do.end45 ]
  call void @gfs2_jindex_free(ptr noundef %sdp) #17
  br label %if.then212

fail_jindex:                                      ; preds = %if.then208, %land.lhs.true204.fail_jindex_crit_edge, %fail_journal_gh.fail_jindex_crit_edge
  call void @gfs2_jindex_free(ptr noundef %sdp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jindex.2)
  %tobool211.not = icmp eq i32 %jindex.2, 0
  br i1 %tobool211.not, label %fail_jindex.fail_crit_edge, label %fail_jindex.if.then212_crit_edge

fail_jindex.if.then212_crit_edge:                 ; preds = %fail_jindex
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then212

fail_jindex.fail_crit_edge:                       ; preds = %fail_jindex
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.then212:                                       ; preds = %fail_jindex.if.then212_crit_edge, %fail_jindex.thread
  %error.6383 = phi i32 [ %error.6.ph, %fail_jindex.thread ], [ %error.5, %fail_jindex.if.then212_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ji_gh) #17
  br label %fail

fail:                                             ; preds = %if.then212, %fail_jindex.fail_crit_edge, %do.end14
  %error.7 = phi i32 [ %error.6383, %if.then212 ], [ %error.5, %fail_jindex.fail_crit_edge ], [ %error.1.ph.i369, %do.end14 ]
  %sd_jindex214 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 36
  %193 = ptrtoint ptr %sd_jindex214 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sd_jindex214, align 4
  call void @iput(ptr noundef %194) #17
  br label %cleanup215

cleanup215:                                       ; preds = %fail, %if.end179, %do.end
  %retval.0 = phi i32 [ %error.7, %fail ], [ %8, %do.end ], [ 0, %if.end179 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ji_gh) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_lookup_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rindex_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_clear_rgrpd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_jdesc_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_jdesc_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_map_journal_extents(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_log_blocks(ptr noundef %sdp, i32 noundef %blocks) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_blocks, i32 0, i32 1), ptr blockaddress(@trace_gfs2_log_blocks, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !488

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !461) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !472

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.171, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !461) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !489
  %call42 = tail call i32 @__traceiter_gfs2_log_blocks(ptr noundef null, ptr noundef %sdp, i32 noundef %blocks) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !490
  %13 = tail call i32 @llvm.read_register.i32(metadata !461) #17
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !461) #17
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !472

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.171, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !461) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !491
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_blocks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_blocks, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_log_blocks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_gfs2_log_blocks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.169, i32 noundef 398, ptr noundef nonnull @.str.170) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !492
  %31 = tail call i32 @llvm.read_register.i32(metadata !461) #17
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_journal_clean(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_recover_journal(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_freeze_func(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_jindex_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_recover_func(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_lookupi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_mark_dontcache(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_log_blocks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_local_statfs_inodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_logd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quotad(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_make_fs_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_s32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_meta_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #17
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !474
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !474
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %3 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %source, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @kern_path(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %source, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %8, i32 noundef %call) #23
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %9 = ptrtoint ptr %fs_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gfs2_fs_type, ptr %fs_type, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev, align 4
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %16 = ptrtoint ptr %sget_key to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %sget_key, align 4
  %call9 = call ptr @sget_fc(ptr noundef %fc, ptr noundef nonnull @test_meta_super, ptr noundef nonnull @set_meta_super) #17
  call void @path_put(ptr noundef nonnull %path) #17
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247) #23
  %17 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %18 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_flags, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 10
  %20 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags, align 4
  %xor = xor i32 %21, %19
  %and = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  call void @deactivate_locked_super(ptr noundef %call9) #17
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info, align 16
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %23, i32 0, i32 34
  %24 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_master_dir, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end21.dget.exit_crit_edge, label %if.then.i

if.end21.dget.exit_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %dget.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #17
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end21.dget.exit_crit_edge
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %26 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %root, align 4
  br label %cleanup

cleanup:                                          ; preds = %dget.exit, %if.then20, %do.end14, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %17, %do.end14 ], [ -16, %if.then20 ], [ 0, %dget.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_meta_super(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %fc) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %0 = ptrtoint ptr %sget_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sget_key, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %cmp = icmp eq ptr %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_meta_super(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %fc) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 245)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 245)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin nounwind }
attributes #25 = { nounwind readnone }
attributes #26 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !117, !118, !120, !122, !124, !126, !127, !128, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !233, !235, !236, !237, !238, !240, !242, !243, !244, !246, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !294, !296, !297, !299, !300, !301, !302, !304, !305, !307, !309, !310, !311, !312, !314, !316, !317, !318, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !336, !337, !338, !339, !341, !343, !344, !345, !347, !349, !350, !351, !353, !354, !355, !357, !359, !360, !361, !362, !364, !366, !367, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !455, !456, !457, !459, !460}
!llvm.named.register.sp = !{!461}
!llvm.module.flags = !{!462, !463, !464, !465, !466, !467, !468, !469}
!llvm.ident = !{!470}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/ops_fstype.c", i32 1097, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/gfs2/ops_fstype.c", i32 1098, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/gfs2/ops_fstype.c", i32 1739, i32 10}
!6 = !{ptr @gfs2_fs_type, !7, !"gfs2_fs_type", i1 false, i1 false}
!7 = !{!"../fs/gfs2/ops_fstype.c", i32 1738, i32 25}
!8 = !{ptr @__UNIQUE_ID_alias373, !9, !"__UNIQUE_ID_alias373", i1 false, i1 false}
!9 = !{!"../fs/gfs2/ops_fstype.c", i32 1746, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/gfs2/ops_fstype.c", i32 1749, i32 10}
!12 = !{ptr @gfs2meta_fs_type, !13, !"gfs2meta_fs_type", i1 false, i1 false}
!13 = !{!"../fs/gfs2/ops_fstype.c", i32 1748, i32 25}
!14 = !{ptr @__UNIQUE_ID_alias374, !15, !"__UNIQUE_ID_alias374", i1 false, i1 false}
!15 = !{!"../fs/gfs2/ops_fstype.c", i32 1754, i32 1}
!16 = !{ptr @gfs2_context_ops, !17, !"gfs2_context_ops", i1 false, i1 false}
!17 = !{!"../fs/gfs2/ops_fstype.c", i32 1627, i32 43}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/gfs2/ops_fstype.c", i32 1468, i32 11}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/gfs2/ops_fstype.c", i32 1498, i32 11}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/gfs2/ops_fstype.c", i32 1503, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/gfs2/ops_fstype.c", i32 1508, i32 11}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/gfs2/ops_fstype.c", i32 1513, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/gfs2/ops_fstype.c", i32 1532, i32 10}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/gfs2/ops_fstype.c", i32 1148, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gfs2_fill_super._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @gfs2_fill_super._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/gfs2/ops_fstype.c", i32 1195, i32 51}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/gfs2/ops_fstype.c", i32 1238, i32 52}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/gfs2/ops_fstype.c", i32 1241, i32 52}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/gfs2/ops_fstype.c", i32 1254, i32 3}
!44 = !{ptr @gfs2_fill_super._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @gfs2_fill_super._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/gfs2/ops_fstype.c", i32 1281, i32 3}
!48 = !{ptr @gfs2_fill_super._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gfs2_fill_super._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_sbd.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../fs/gfs2/ops_fstype.c", i32 90, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @init_sbd.__key.23, !54, !"__key", i1 false, i1 false}
!54 = !{!"../fs/gfs2/ops_fstype.c", i32 91, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @init_sbd.__key.25, !57, !"__key", i1 false, i1 false}
!57 = !{!"../fs/gfs2/ops_fstype.c", i32 95, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @init_sbd.__key.27, !60, !"__key", i1 false, i1 false}
!60 = !{!"../fs/gfs2/ops_fstype.c", i32 97, i32 2}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @init_sbd.__key.29, !63, !"__key", i1 false, i1 false}
!63 = !{!"../fs/gfs2/ops_fstype.c", i32 101, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @init_sbd.__key.31, !66, !"__key", i1 false, i1 false}
!66 = !{!"../fs/gfs2/ops_fstype.c", i32 102, i32 2}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @init_sbd.__key.33, !69, !"__key", i1 false, i1 false}
!69 = !{!"../fs/gfs2/ops_fstype.c", i32 106, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @init_sbd.__key.35, !72, !"__key", i1 false, i1 false}
!72 = !{!"../fs/gfs2/ops_fstype.c", i32 107, i32 2}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @init_sbd.__key.37, !75, !"__key", i1 false, i1 false}
!75 = !{!"../fs/gfs2/ops_fstype.c", i32 108, i32 2}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_sbd.__key.39, !78, !"__key", i1 false, i1 false}
!78 = !{!"../fs/gfs2/ops_fstype.c", i32 110, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @init_sbd.__key.41, !81, !"__key", i1 false, i1 false}
!81 = !{!"../fs/gfs2/ops_fstype.c", i32 111, i32 2}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @init_sbd.__key.43, !84, !"__key", i1 false, i1 false}
!84 = !{!"../fs/gfs2/ops_fstype.c", i32 125, i32 2}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @init_sbd.__key.45, !87, !"__key", i1 false, i1 false}
!87 = !{!"../fs/gfs2/ops_fstype.c", i32 129, i32 2}
!88 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @init_sbd.__key.47, !90, !"__key", i1 false, i1 false}
!90 = !{!"../fs/gfs2/ops_fstype.c", i32 131, i32 2}
!91 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @init_sbd.__key.49, !93, !"__key", i1 false, i1 false}
!93 = !{!"../fs/gfs2/ops_fstype.c", i32 132, i32 2}
!94 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @init_sbd.__key.51, !96, !"__key", i1 false, i1 false}
!96 = !{!"../fs/gfs2/ops_fstype.c", i32 133, i32 2}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @init_sbd.__key.53, !99, !"__key", i1 false, i1 false}
!99 = !{!"../fs/gfs2/ops_fstype.c", i32 137, i32 2}
!100 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @init_sbd.__key.55, !102, !"__key", i1 false, i1 false}
!102 = !{!"../fs/gfs2/ops_fstype.c", i32 139, i32 2}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @init_sbd.__key.57, !105, !"__key", i1 false, i1 false}
!105 = !{!"../fs/gfs2/ops_fstype.c", i32 141, i32 2}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @gfs2_tune_init.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../fs/gfs2/ops_fstype.c", i32 55, i32 2}
!109 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @init_completion.__key, !111, !"__key", i1 false, i1 false}
!111 = !{!"../include/linux/completion.h", i32 87, i32 2}
!112 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/gfs2/ops_fstype.c", i32 194, i32 3}
!126 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @end_bio_io_page._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @end_bio_io_page._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/gfs2/ops_fstype.c", i32 167, i32 4}
!133 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @gfs2_check_sb._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @gfs2_check_sb._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/gfs2/ops_fstype.c", i32 174, i32 3}
!138 = !{ptr @gfs2_check_sb._entry.72, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @gfs2_check_sb._entry_ptr.74, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/gfs2/ops_fstype.c", i32 180, i32 3}
!142 = !{ptr @gfs2_check_sb._entry.75, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @gfs2_check_sb._entry_ptr.77, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/gfs2/ops_fstype.c", i32 1011, i32 14}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/gfs2/ops_fstype.c", i32 1015, i32 21}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/gfs2/ops_fstype.c", i32 1019, i32 3}
!150 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @gfs2_lm_mount._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @gfs2_lm_mount._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/gfs2/ops_fstype.c", i32 1023, i32 2}
!155 = !{ptr @gfs2_lm_mount._entry.82, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @gfs2_lm_mount._entry_ptr.84, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/gfs2/ops_fstype.c", i32 1028, i32 58}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/gfs2/ops_fstype.c", i32 1057, i32 4}
!161 = !{ptr @gfs2_lm_mount._entry.86, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @gfs2_lm_mount._entry_ptr.88, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/gfs2/ops_fstype.c", i32 1063, i32 3}
!165 = !{ptr @gfs2_lm_mount._entry.89, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @gfs2_lm_mount._entry_ptr.91, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/gfs2/ops_fstype.c", i32 1069, i32 3}
!169 = !{ptr @gfs2_lm_mount._entry.92, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @gfs2_lm_mount._entry_ptr.94, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @nolock_ops, !172, !"nolock_ops", i1 false, i1 false}
!172 = !{!"../fs/gfs2/ops_fstype.c", i32 987, i32 32}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/gfs2/ops_fstype.c", i32 983, i32 13}
!175 = !{ptr @nolock_tokens, !176, !"nolock_tokens", i1 false, i1 false}
!176 = !{!"../fs/gfs2/ops_fstype.c", i32 982, i32 28}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/gfs2/ops_fstype.c", i32 411, i32 3}
!179 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @init_locking._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @init_locking._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/gfs2/ops_fstype.c", i32 421, i32 3}
!184 = !{ptr @init_locking._entry.98, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @init_locking._entry_ptr.100, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/gfs2/ops_fstype.c", i32 428, i32 3}
!188 = !{ptr @init_locking._entry.101, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @init_locking._entry_ptr.103, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/gfs2/ops_fstype.c", i32 435, i32 3}
!192 = !{ptr @init_locking._entry.104, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @init_locking._entry_ptr.106, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.107, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/gfs2/ops_fstype.c", i32 485, i32 3}
!196 = !{ptr @.str.108, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @init_sb._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @init_sb._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.110, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/gfs2/ops_fstype.c", i32 491, i32 3}
!201 = !{ptr @init_sb._entry.109, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @init_sb._entry_ptr.111, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/gfs2/ops_fstype.c", i32 511, i32 3}
!205 = !{ptr @init_sb._entry.112, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @init_sb._entry_ptr.114, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.116, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/gfs2/ops_fstype.c", i32 518, i32 3}
!209 = !{ptr @init_sb._entry.115, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @init_sb._entry_ptr.117, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/gfs2/ops_fstype.c", i32 527, i32 57}
!213 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/gfs2/ops_fstype.c", i32 533, i32 59}
!215 = !{ptr @.str.120, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/gfs2/ops_fstype.c", i32 293, i32 4}
!217 = !{ptr @.str.121, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @gfs2_read_sb._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @gfs2_read_sb._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.122, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/gfs2/ops_fstype.c", i32 463, i32 3}
!222 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @gfs2_lookup_root._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @gfs2_lookup_root._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/gfs2/ops_fstype.c", i32 468, i32 3}
!227 = !{ptr @gfs2_lookup_root._entry.124, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @gfs2_lookup_root._entry_ptr.126, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!231 = !{ptr @.str.128, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/gfs2/ops_fstype.c", i32 892, i32 46}
!233 = !{ptr @.str.129, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/gfs2/ops_fstype.c", i32 895, i32 3}
!235 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @init_inodes._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @init_inodes._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.131, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/gfs2/ops_fstype.c", i32 901, i32 51}
!240 = !{ptr @.str.133, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/gfs2/ops_fstype.c", i32 904, i32 3}
!242 = !{ptr @init_inodes._entry.132, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @init_inodes._entry_ptr.134, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.135, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/gfs2/ops_fstype.c", i32 911, i32 2}
!246 = !{ptr @.str.136, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/gfs2/ops_fstype.c", i32 743, i32 46}
!248 = !{ptr @.str.137, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/gfs2/ops_fstype.c", i32 745, i32 3}
!250 = !{ptr @.str.138, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @init_journal._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @init_journal._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.140, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/gfs2/ops_fstype.c", i32 753, i32 3}
!255 = !{ptr @init_journal._entry.139, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @init_journal._entry_ptr.141, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/gfs2/ops_fstype.c", i32 759, i32 3}
!259 = !{ptr @init_journal._entry.142, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @init_journal._entry_ptr.144, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.146, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/gfs2/ops_fstype.c", i32 771, i32 4}
!263 = !{ptr @init_journal._entry.145, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @init_journal._entry_ptr.147, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.149, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/gfs2/ops_fstype.c", i32 773, i32 4}
!267 = !{ptr @init_journal._entry.148, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @init_journal._entry_ptr.150, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.152, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/gfs2/ops_fstype.c", i32 786, i32 4}
!271 = !{ptr @init_journal._entry.151, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @init_journal._entry_ptr.153, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.155, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/gfs2/ops_fstype.c", i32 796, i32 4}
!275 = !{ptr @init_journal._entry.154, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @init_journal._entry_ptr.156, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.158, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/gfs2/ops_fstype.c", i32 803, i32 4}
!279 = !{ptr @init_journal._entry.157, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @init_journal._entry_ptr.159, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.161, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/gfs2/ops_fstype.c", i32 834, i32 5}
!283 = !{ptr @init_journal._entry.160, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @init_journal._entry_ptr.162, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.164, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/gfs2/ops_fstype.c", i32 844, i32 4}
!287 = !{ptr @init_journal._entry.163, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @init_journal._entry_ptr.165, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @init_journal.__key, !290, !"__key", i1 false, i1 false}
!290 = !{!"../fs/gfs2/ops_fstype.c", i32 853, i32 2}
!291 = !{ptr @.str.166, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.167, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/gfs2/ops_fstype.c", i32 584, i32 27}
!294 = !{ptr @gfs2_jindex_hold.__key, !295, !"__key", i1 false, i1 false}
!295 = !{!"../fs/gfs2/ops_fstype.c", i32 606, i32 3}
!296 = !{ptr @.str.168, !295, !"<string literal>", i1 false, i1 false}
!297 = distinct !{null, !298, !"__already_done", i1 false, i1 false}
!298 = !{!"../fs/gfs2/trace_gfs2.h", i32 378, i32 1}
!299 = !{ptr @.str.169, !298, !"<string literal>", i1 false, i1 false}
!300 = distinct !{null, !298, !"__warned", i1 false, i1 false}
!301 = !{ptr @.str.170, !298, !"<string literal>", i1 false, i1 false}
!302 = distinct !{null, !303, !"__already_done", i1 false, i1 false}
!303 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!304 = !{ptr @.str.171, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.172, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/gfs2/ops_fstype.c", i32 650, i32 52}
!307 = !{ptr @.str.173, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/gfs2/ops_fstype.c", i32 653, i32 3}
!309 = !{ptr @.str.174, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @init_statfs._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @init_statfs._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.175, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/gfs2/ops_fstype.c", i32 659, i32 34}
!314 = !{ptr @.str.177, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/gfs2/ops_fstype.c", i32 662, i32 3}
!316 = !{ptr @init_statfs._entry.176, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @init_statfs._entry_ptr.178, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.179, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/gfs2/ops_fstype.c", i32 675, i32 16}
!320 = !{ptr @.str.181, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/gfs2/ops_fstype.c", i32 679, i32 4}
!322 = !{ptr @init_statfs._entry.180, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @init_statfs._entry_ptr.182, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.184, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/gfs2/ops_fstype.c", i32 697, i32 3}
!326 = !{ptr @init_statfs._entry.183, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @init_statfs._entry_ptr.185, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.187, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/gfs2/ops_fstype.c", i32 703, i32 3}
!330 = !{ptr @init_statfs._entry.186, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @init_statfs._entry_ptr.188, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.189, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/gfs2/ops_fstype.c", i32 546, i32 18}
!334 = !{ptr @.str.190, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/gfs2/ops_fstype.c", i32 549, i32 2}
!336 = !{ptr @.str.191, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @gfs2_others_may_mount._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @gfs2_others_may_mount._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @gfs2_quota_imutex_key, !340, !"gfs2_quota_imutex_key", i1 false, i1 false}
!340 = !{!"../fs/gfs2/ops_fstype.c", i32 876, i32 30}
!341 = !{ptr @.str.192, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/gfs2/ops_fstype.c", i32 948, i32 3}
!343 = !{ptr @init_per_node._entry, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @init_per_node._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.193, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/gfs2/ops_fstype.c", i32 952, i32 15}
!347 = !{ptr @.str.195, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/gfs2/ops_fstype.c", i32 956, i32 3}
!349 = !{ptr @init_per_node._entry.194, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @init_per_node._entry_ptr.196, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.198, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/gfs2/ops_fstype.c", i32 967, i32 3}
!353 = !{ptr @init_per_node._entry.197, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @init_per_node._entry_ptr.199, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.200, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/gfs2/ops_fstype.c", i32 1107, i32 6}
!357 = !{ptr @.str.201, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/gfs2/ops_fstype.c", i32 1110, i32 3}
!359 = !{ptr @.str.202, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @init_threads._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @init_threads._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.203, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/gfs2/ops_fstype.c", i32 1115, i32 6}
!364 = !{ptr @.str.205, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../fs/gfs2/ops_fstype.c", i32 1118, i32 3}
!366 = !{ptr @init_threads._entry.204, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @init_threads._entry_ptr.206, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.207, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/gfs2/ops_fstype.c", i32 1558, i32 3}
!370 = !{ptr @.str.208, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../fs/gfs2/ops_fstype.c", i32 1562, i32 3}
!372 = !{ptr @.str.209, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/gfs2/ops_fstype.c", i32 1566, i32 3}
!374 = !{ptr @.str.210, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../fs/gfs2/ops_fstype.c", i32 1570, i32 3}
!376 = !{ptr @.str.211, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../fs/gfs2/ops_fstype.c", i32 1574, i32 3}
!378 = !{ptr @.str.212, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../fs/gfs2/ops_fstype.c", i32 1578, i32 3}
!380 = !{ptr @.str.213, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../fs/gfs2/ops_fstype.c", i32 1596, i32 5}
!382 = !{ptr @.str.214, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/gfs2/ops_fstype.c", i32 1404, i32 2}
!384 = !{ptr @.str.215, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/gfs2/ops_fstype.c", i32 1405, i32 2}
!386 = !{ptr @.str.216, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../fs/gfs2/ops_fstype.c", i32 1406, i32 2}
!388 = !{ptr @.str.217, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../fs/gfs2/ops_fstype.c", i32 1407, i32 2}
!390 = !{ptr @.str.218, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../fs/gfs2/ops_fstype.c", i32 1408, i32 2}
!392 = !{ptr @.str.219, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../fs/gfs2/ops_fstype.c", i32 1409, i32 2}
!394 = !{ptr @.str.220, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/gfs2/ops_fstype.c", i32 1410, i32 2}
!396 = !{ptr @.str.221, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/gfs2/ops_fstype.c", i32 1411, i32 2}
!398 = !{ptr @.str.222, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/gfs2/ops_fstype.c", i32 1412, i32 2}
!400 = !{ptr @.str.223, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../fs/gfs2/ops_fstype.c", i32 1413, i32 2}
!402 = !{ptr @.str.224, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/gfs2/ops_fstype.c", i32 1414, i32 2}
!404 = !{ptr @.str.225, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../fs/gfs2/ops_fstype.c", i32 1415, i32 2}
!406 = !{ptr @.str.226, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/gfs2/ops_fstype.c", i32 1416, i32 2}
!408 = !{ptr @.str.227, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../fs/gfs2/ops_fstype.c", i32 1417, i32 2}
!410 = !{ptr @.str.228, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../fs/gfs2/ops_fstype.c", i32 1418, i32 2}
!412 = !{ptr @.str.229, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../fs/gfs2/ops_fstype.c", i32 1419, i32 2}
!414 = !{ptr @.str.230, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../fs/gfs2/ops_fstype.c", i32 1420, i32 2}
!416 = !{ptr @.str.231, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../fs/gfs2/ops_fstype.c", i32 1421, i32 2}
!418 = !{ptr @.str.232, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../fs/gfs2/ops_fstype.c", i32 1422, i32 2}
!420 = !{ptr @.str.233, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../fs/gfs2/ops_fstype.c", i32 1423, i32 2}
!422 = !{ptr @.str.234, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../fs/gfs2/ops_fstype.c", i32 1424, i32 2}
!424 = !{ptr @.str.235, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../fs/gfs2/ops_fstype.c", i32 1425, i32 2}
!426 = !{ptr @.str.236, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../fs/gfs2/ops_fstype.c", i32 1426, i32 2}
!428 = !{ptr @gfs2_fs_parameters, !429, !"gfs2_fs_parameters", i1 false, i1 false}
!429 = !{!"../fs/gfs2/ops_fstype.c", i32 1403, i32 39}
!430 = !{ptr @.str.237, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../fs/gfs2/ops_fstype.c", i32 1387, i32 3}
!432 = !{ptr @.str.238, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../fs/gfs2/ops_fstype.c", i32 1388, i32 3}
!434 = !{ptr @gfs2_param_data, !435, !"gfs2_param_data", i1 false, i1 false}
!435 = !{!"../fs/gfs2/ops_fstype.c", i32 1386, i32 36}
!436 = !{ptr @.str.239, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../fs/gfs2/ops_fstype.c", i32 1398, i32 3}
!438 = !{ptr @.str.240, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../fs/gfs2/ops_fstype.c", i32 1399, i32 3}
!440 = !{ptr @gfs2_param_errors, !441, !"gfs2_param_errors", i1 false, i1 false}
!441 = !{!"../fs/gfs2/ops_fstype.c", i32 1397, i32 36}
!442 = !{ptr @.str.241, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../fs/gfs2/ops_fstype.c", i32 1375, i32 3}
!444 = !{ptr @.str.242, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../fs/gfs2/ops_fstype.c", i32 1376, i32 3}
!446 = !{ptr @.str.243, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../fs/gfs2/ops_fstype.c", i32 1377, i32 3}
!448 = !{ptr @gfs2_param_quota, !449, !"gfs2_param_quota", i1 false, i1 false}
!449 = !{!"../fs/gfs2/ops_fstype.c", i32 1374, i32 36}
!450 = !{ptr @gfs2_meta_context_ops, !451, !"gfs2_meta_context_ops", i1 false, i1 false}
!451 = !{!"../fs/gfs2/ops_fstype.c", i32 1704, i32 43}
!452 = !{ptr @.str.244, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../fs/gfs2/ops_fstype.c", i32 1683, i32 3}
!454 = !{ptr @.str.245, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @gfs2_meta_get_tree._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @gfs2_meta_get_tree._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.247, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../fs/gfs2/ops_fstype.c", i32 1692, i32 3}
!459 = !{ptr @gfs2_meta_get_tree._entry.246, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @gfs2_meta_get_tree._entry_ptr.248, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{!"sp"}
!462 = !{i32 1, !"wchar_size", i32 2}
!463 = !{i32 1, !"min_enum_size", i32 4}
!464 = !{i32 8, !"branch-target-enforcement", i32 0}
!465 = !{i32 8, !"sign-return-address", i32 0}
!466 = !{i32 8, !"sign-return-address-all", i32 0}
!467 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!468 = !{i32 7, !"uwtable", i32 1}
!469 = !{i32 7, !"frame-pointer", i32 2}
!470 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!471 = !{!"branch_weights", i32 2146410443, i32 1073205}
!472 = !{!"branch_weights", i32 2000, i32 1}
!473 = !{i8 0, i8 2}
!474 = !{!"auto-init"}
!475 = !{i64 2148300942, i64 2148301222, i64 2148301556, i64 2148301890}
!476 = !{!"branch_weights", i32 1, i32 2000}
!477 = !{i64 2155672677, i64 2155673162, i64 2155672714, i64 2155672770, i64 2155672804, i64 2155672828, i64 2155672869, i64 2155672890, i64 2155672918, i64 2155672952}
!478 = !{i64 2155689795, i64 2155690280, i64 2155689832, i64 2155689888, i64 2155689922, i64 2155689946, i64 2155689987, i64 2155690008, i64 2155690036, i64 2155690070}
!479 = !{i64 2151474216, i64 2151474389, i64 2151474404, i64 2151474456, i64 2151474515, i64 2151474539, i64 2151474580, i64 2151474601, i64 2151474629, i64 2151474661}
!480 = !{i64 2151475091, i64 2151475264, i64 2151475279, i64 2151475331, i64 2151475390, i64 2151475414, i64 2151475455, i64 2151475476, i64 2151475504, i64 2151475536}
!481 = !{i64 2150836469, i64 2150836642, i64 2150836657, i64 2150836709, i64 2150836768, i64 2150836792, i64 2150836833, i64 2150836854, i64 2150836882, i64 2150836914}
!482 = !{i64 2150715340, i64 2150715831, i64 2150715377, i64 2150715433, i64 2150715467, i64 2150715491, i64 2150715532, i64 2150715553, i64 2150715581, i64 2150715615}
!483 = !{i64 2148471220, i64 2148471252, i64 2148471281, i64 2148471315, i64 2148471346, i64 2148471369}
!484 = !{i64 2148560301}
!485 = !{i64 2151465232}
!486 = !{i32 0, i32 33}
!487 = !{i64 2151466303}
!488 = !{i64 2148275755, i64 2148275760, i64 2148275773, i64 2148275817, i64 2148275851, i64 2148275872}
!489 = !{i64 2155525080}
!490 = !{i64 2155525295}
!491 = !{i64 2149298435}
!492 = !{i64 2149299471}
