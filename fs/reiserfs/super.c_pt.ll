; ModuleID = '/llk/IR_all_yes/fs/reiserfs/super.c_pt.bc'
source_filename = "../fs/reiserfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arg_desc_t = type { ptr, i32, i32 }
%struct.opt_desc_t = type { ptr, i32, ptr, i32, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dquot_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.86, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.86 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.cpu_key = type { %struct.in_core_key, i32, i32 }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.88, i16, i16, i16 }
%struct.reiserfs_key = type { i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%union.anon.88 = type { i16 }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.offset_v1 = type { i32, i32 }
%struct.reiserfs_iget_args = type { i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.reiserfs_super_block = type { %struct.reiserfs_super_block_v1, i32, i32, [16 x i8], [16 x i8], i16, i16, i32, i32, [76 x i8] }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_list_bitmap = type { ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.reiserfs_dir_entry = type { ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.cpu_key }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.reiserfs_de_head = type { i32, i32, i32, i16, i16 }
%struct.block_head = type { i16, i16, i16, i16, %struct.reiserfs_key }
%struct.reiserfs_inode_info = type { [4 x i32], i32, i32, i32, i32, i32, %struct.list_head, i8, i32, ptr, %struct.atomic_t, %struct.mutex, %struct.rw_semaphore, [3 x ptr], %struct.inode }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.path = type { ptr, ptr }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i32, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.82, i32 }
%union.anon.82 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@reiserfs_3_5_magic_string = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ReIsErFs\00", [23 x i8] zeroinitializer }, align 32
@reiserfs_3_6_magic_string = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ReIsEr2Fs\00", [22 x i8] zeroinitializer }, align 32
@reiserfs_jr_magic_string = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ReIsEr3Fs\00", [22 x i8] zeroinitializer }, align 32
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.add_save_link = private unnamed_addr constant [14 x i8] c"add_save_link\00", align 1
@.str.1 = internal constant { [156 x i8], [36 x i8] } { [156 x i8] c"(!(truncate && (REISERFS_I(inode)->i_flags & i_link_saved_truncate_mask))) at fs/reiserfs/super.c:%i:%s: saved link already exists for truncated inode %lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [154 x i8], [38 x i8] } { [154 x i8] c"(!(!truncate && (REISERFS_I(inode)->i_flags & i_link_saved_unlink_mask))) at fs/reiserfs/super.c:%i:%s: saved link already exists for unlinked inode %lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"green-2102\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Adding a truncate savelink for a directory %k! Please report\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-2100\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"search_by_key (%K) returned %d\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-2120\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"insert_item returned %d\00", [40 x i8] zeroinitializer }, align 32
@reiserfs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.9, i32 1, ptr null, ptr null, ptr @get_super_block, ptr @reiserfs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reiserfs\00", [23 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias308 = internal constant [27 x i8] c"reiserfs.alias=fs-reiserfs\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [51 x i8] c"reiserfs.description=ReiserFS journaled filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [49 x i8] c"reiserfs.author=Hans Reiser <reiser@namesys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [35 x i8] c"reiserfs.file=fs/reiserfs/reiserfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [21 x i8] c"reiserfs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_reiserfs__313_2649_init_reiserfs_fs6 = internal global ptr @init_reiserfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_reiserfs_fs = internal global ptr @exit_reiserfs_fs, section ".exitcall.exit", align 4
@reiserfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@reiserfs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sbi->old_work_lock\00", [44 x i8] zeroinitializer }, align 32
@reiserfs_fill_super.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&sbi->old_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@reiserfs_fill_super.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&sbi->old_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@reiserfs_fill_super.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sbi->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reiserfs/%s\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__func__.reiserfs_fill_super = private unnamed_addr constant [20 x i8] c"reiserfs_fill_super\00", align 1
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot allocate commit workqueue\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Cannot allocate memory for journal device name\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-7\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"resize option for remount only\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh-2021\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can not find reiserfs on %s\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Filesystem cannot be mounted because it is bigger than the device\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"You may need to run fsck or increase size of your LVM partition\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Or may be you forgot to reboot after fdisk when it told you to\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-8\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to read bitmap\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CONFIG_REISERFS_CHECK is set ON\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"- it is slow mode for debugging.\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using journaled data mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using ordered data mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using writeback data mode\0A\00", [37 x i8] zeroinitializer }, align 32
@reiserfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.reiserfs_fill_super, ptr @.str.36, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reiserfs: using flush barriers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/reiserfs/super.c\00", [44 x i8] zeroinitializer }, align 32
@reiserfs_fill_super._entry_ptr = internal global ptr @reiserfs_fill_super._entry, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh-2022\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to initialize journal space\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-9\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to reread meta blocks after journal init\00", [48 x i8] zeroinitializer }, align 32
@reiserfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-7000\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Detected readonly device, marking FS readonly\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jmacd-10\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get root inode failed\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"corrupt root inode, run fsck\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-2030\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"This file system claims to use %u bitmap blocks in its super block, but requires %u. Clearing to zero.\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"converting 3.5 filesystem to the 3.6 format\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using 3.5.x disk format\0A\00", [39 x i8] zeroinitializer }, align 32
@reiserfs_fill_super.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&(sbi->s_wait)\00", [17 x i8] zeroinitializer }, align 32
@reiserfs_fill_super.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->bitmap_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tails\00", [26 x i8] zeroinitializer }, align 32
@tails = internal constant { [4 x %struct.arg_desc_t], [48 x i8] } { [4 x %struct.arg_desc_t] [%struct.arg_desc_t { ptr @.str.107, i32 1, i32 2 }, %struct.arg_desc_t { ptr @.str.108, i32 0, i32 3 }, %struct.arg_desc_t { ptr @.str.109, i32 2, i32 1 }, %struct.arg_desc_t zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"notail\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"conv\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"attrs\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noattrs\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"expose_privroot\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user_xattr\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nouser_xattr\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"noacl\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nolog\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"replayonly\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block-allocator\00", [16 x i8] zeroinitializer }, align 32
@balloc = internal constant { [7 x %struct.arg_desc_t], [44 x i8] } { [7 x %struct.arg_desc_t] [%struct.arg_desc_t { ptr @.str.110, i32 2048, i32 0 }, %struct.arg_desc_t { ptr @.str.111, i32 0, i32 2048 }, %struct.arg_desc_t { ptr @.str.112, i32 4096, i32 0 }, %struct.arg_desc_t { ptr @.str.113, i32 8192, i32 0 }, %struct.arg_desc_t { ptr @.str.114, i32 268435456, i32 0 }, %struct.arg_desc_t { ptr @.str.115, i32 0, i32 268435456 }, %struct.arg_desc_t zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@logging_mode = internal constant { [4 x %struct.arg_desc_t], [48 x i8] } { [4 x %struct.arg_desc_t] [%struct.arg_desc_t { ptr @.str.116, i32 512, i32 1280 }, %struct.arg_desc_t { ptr @.str.117, i32 256, i32 1536 }, %struct.arg_desc_t { ptr @.str.118, i32 1024, i32 768 }, %struct.arg_desc_t zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"barrier\00", [24 x i8] zeroinitializer }, align 32
@barrier_mode = internal constant { [3 x %struct.arg_desc_t], [60 x i8] } { [3 x %struct.arg_desc_t] [%struct.arg_desc_t { ptr @.str.119, i32 262144, i32 524288 }, %struct.arg_desc_t { ptr @.str.120, i32 524288, i32 262144 }, %struct.arg_desc_t zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resize\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jdev\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nolargeio\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"commit\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usrquota\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"grpquota\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noquota\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errors\00", [25 x i8] zeroinitializer }, align 32
@error_actions = internal constant { [3 x %struct.arg_desc_t], [60 x i8] } { [3 x %struct.arg_desc_t] [%struct.arg_desc_t { ptr @.str.121, i32 1048576, i32 6291456 }, %struct.arg_desc_t { ptr @.str.122, i32 2097152, i32 5242880 }, %struct.arg_desc_t zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usrjquota\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grpjquota\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"jqfmt\00", [26 x i8] zeroinitializer }, align 32
@__const.reiserfs_parse_options.opts = private unnamed_addr constant [27 x %struct.opt_desc_t] [%struct.opt_desc_t { ptr @.str.54, i32 116, ptr @tails, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.55, i32 0, ptr null, i32 0, i32 3 }, %struct.opt_desc_t { ptr @.str.56, i32 0, ptr null, i32 8, i32 0 }, %struct.opt_desc_t { ptr @.str.57, i32 0, ptr null, i32 16384, i32 0 }, %struct.opt_desc_t { ptr @.str.58, i32 0, ptr null, i32 0, i32 16384 }, %struct.opt_desc_t { ptr @.str.59, i32 0, ptr null, i32 131072, i32 0 }, %struct.opt_desc_t { ptr @.str.60, i32 0, ptr null, i32 32768, i32 0 }, %struct.opt_desc_t { ptr @.str.61, i32 0, ptr null, i32 0, i32 32768 }, %struct.opt_desc_t { ptr @.str.62, i32 0, ptr null, i32 65536, i32 0 }, %struct.opt_desc_t { ptr @.str.63, i32 0, ptr null, i32 0, i32 65536 }, %struct.opt_desc_t { ptr @.str.64, i32 0, ptr null, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.65, i32 0, ptr null, i32 4, i32 0 }, %struct.opt_desc_t { ptr @.str.66, i32 97, ptr @balloc, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.67, i32 100, ptr @logging_mode, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.68, i32 98, ptr @barrier_mode, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.69, i32 114, ptr null, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.70, i32 106, ptr null, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.71, i32 119, ptr null, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.72, i32 99, ptr null, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.73, i32 0, ptr null, i32 8388608, i32 0 }, %struct.opt_desc_t { ptr @.str.74, i32 0, ptr null, i32 16777216, i32 0 }, %struct.opt_desc_t { ptr @.str.75, i32 0, ptr null, i32 0, i32 25165824 }, %struct.opt_desc_t { ptr @.str.76, i32 101, ptr @error_actions, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.77, i32 -2147483531, ptr null, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.78, i32 -2147483545, ptr null, i32 0, i32 0 }, %struct.opt_desc_t { ptr @.str.79, i32 102, ptr null, i32 0, i32 0 }, %struct.opt_desc_t zeroinitializer], align 4
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6507\00", [21 x i8] zeroinitializer }, align 32
@__func__.reiserfs_parse_options = private unnamed_addr constant [23 x i8] c"reiserfs_parse_options\00", align 1
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad value %s for -oresize\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6508\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad value %s for -ocommit\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6509\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nolargeio option is no longer supported\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6510\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"journal device was already specified to be %s\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6511\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"cannot change journaled quota options when quota turned on.\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6512\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s quota file already specified.\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6513\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"quotafile must be on filesystem root.\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2502\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"not enough memory for storing quotafile name.\00", [50 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vfsold\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vfsv0\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6514\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown quota format specified.\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6515\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"journaled quota format not specified.\00", [58 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6516\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"quota options must be present when quota is turned on.\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"small\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"noborder\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"border\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no_unhashed_relocation\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hashed_relocation\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test4\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"notest4\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ordered\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"journal\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ro-remount\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alloc=\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6500\00", [21 x i8] zeroinitializer }, align 32
@__func__.reiserfs_getopt = private unnamed_addr constant [16 x i8] c"reiserfs_getopt\00", align 1
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s not supported.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6501\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6502\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown mount option \22%s\22\00", [38 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6503\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"the option \22%s\22 does not require an argument\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6504\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"the option \22%s\22 requires an argument\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6505\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"head of option \22%s\22 is only correct\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6506\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"empty argument for \22%s\22\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad value \22%s\22 for option \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh-2006\00", [24 x i8] zeroinitializer }, align 32
@__func__.read_super_block = private unnamed_addr constant [17 x i8] c"read_super_block\00", align 1
@.str.139 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bread failed (dev %s, block %lu, size %lu)\00", [53 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh-2007\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh-2011\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"can't find a reiserfs filesystem on (dev %s, block %llu, size %lu)\00", [61 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6519\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [161 x i8], [63 x i8] } { [161 x i8] c"Unfinished reiserfsck --rebuild-tree run detected. Please run\0Areiserfsck --rebuild-tree and wait for a completion. If that fails\0Aget newer reiserfsprogs package\00", [63 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"found reiserfs format \223.6\22 with non-standard journal\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"found reiserfs format \223.5\22 with non-standard journal\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh-2012\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"found unknown format \22%u\22 of reiserfs with non-standard magic\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"found reiserfs format \22%s\22 with standard journal\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.5\00", [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.6\00", [28 x i8] zeroinitializer }, align 32
@reiserfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @reiserfs_alloc_inode, ptr null, ptr @reiserfs_free_inode, ptr @reiserfs_dirty_inode, ptr @reiserfs_write_inode, ptr null, ptr @reiserfs_evict_inode, ptr @reiserfs_put_super, ptr @reiserfs_sync_fs, ptr null, ptr @reiserfs_freeze, ptr null, ptr @reiserfs_unfreeze, ptr @reiserfs_statfs, ptr @reiserfs_remount, ptr null, ptr @reiserfs_show_options, ptr null, ptr null, ptr null, ptr @reiserfs_quota_read, ptr @reiserfs_quota_write, ptr @reiserfs_get_dquots, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@reiserfs_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @reiserfs_encode_fh, ptr @reiserfs_fh_to_dentry, ptr @reiserfs_fh_to_parent, ptr null, ptr @reiserfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@reiserfs_qctl_operations = internal constant { %struct.quotactl_ops, [52 x i8] } { %struct.quotactl_ops { ptr @reiserfs_quota_on, ptr @reiserfs_quota_off, ptr null, ptr null, ptr @dquot_quota_sync, ptr @dquot_set_dqinfo, ptr @dquot_get_dqblk, ptr null, ptr @dquot_set_dqblk, ptr @dquot_get_state, ptr null }, [52 x i8] zeroinitializer }, align 32
@reiserfs_quota_operations = internal constant { %struct.dquot_operations, [52 x i8] } { %struct.dquot_operations { ptr @reiserfs_write_dquot, ptr @dquot_alloc, ptr @dquot_destroy, ptr @reiserfs_acquire_dquot, ptr @reiserfs_release_dquot, ptr @reiserfs_mark_dquot_dirty, ptr @reiserfs_write_info, ptr null, ptr null, ptr null, ptr @dquot_get_next_id }, [52 x i8] zeroinitializer }, align 32
@reiserfs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ei->tailpack\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-6006\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_dirty_inode = private unnamed_addr constant [21 x i8] c"reiserfs_dirty_inode\00", align 1
@.str.154 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"writing inode %lu on readonly FS\00", [63 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"green-2005\00", [21 x i8] zeroinitializer }, align 32
@__func__.reiserfs_put_super = private unnamed_addr constant [19 x i8] c"reiserfs_put_super\00", align 1
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reserved blocks left %d\00", [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"switching to journaled data mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"switching to ordered data mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"switching to writeback data mode\0A\00", [62 x i8] zeroinitializer }, align 32
@handle_barrier_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.36, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"reiserfs: enabling write barrier flush mode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_barrier_mode\00", [44 x i8] zeroinitializer }, align 32
@handle_barrier_mode._entry_ptr = internal global ptr @handle_barrier_mode._entry, section ".printk_index", align 4
@handle_barrier_mode._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.36, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reiserfs: write barriers turned off\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_barrier_mode._entry_ptr.164 = internal global ptr @handle_barrier_mode._entry.162, section ".printk_index", align 4
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",tails=on\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",notail\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",barrier=none\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",data=journal\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",data=writeback\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",attrs\00", [25 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",user_xattr\00", [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",expose_privroot\00", [47 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",commit=%d\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",usrquota\00", [22 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",grpquota\00", [22 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",jqfmt=vfsold\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",jqfmt=vfsv0\00", [19 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c",block-allocator=noborder\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c",block-allocator=no_unhashed_relocation\00", [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c",block-allocator=hashed_relocation\00", [61 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",block-allocator=test4\00", [41 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@reiserfs_quota_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.36, i32 2551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014reiserfs: Quota write (off=%llu, len=%llu) cancelled because transaction is not started.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reiserfs_quota_write\00", [43 x i8] zeroinitializer }, align 32
@reiserfs_quota_write._entry_ptr = internal global ptr @reiserfs_quota_write._entry, section ".printk_index", align 4
@.str.189 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6520\00", [21 x i8] zeroinitializer }, align 32
@__func__.reiserfs_quota_on = private unnamed_addr constant [18 x i8] c"reiserfs_quota_on\00", align 1
@.str.192 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Unpacking tail of quota file failed (%d). Cannot turn on quotas.\00", [63 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6521\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Quota file not on filesystem root. Journalled quota will not work.\00", [61 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2504\00", [18 x i8] zeroinitializer }, align 32
@__func__.reread_meta_blocks = private unnamed_addr constant [19 x i8] c"reread_meta_blocks\00", align 1
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error reading the super\00", [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Using tea hash to sort names\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Using rupasov hash to sort names\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Using r5 hash to sort names\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2507\00", [18 x i8] zeroinitializer }, align 32
@__func__.what_hash = private unnamed_addr constant [10 x i8] c"what_hash\00", align 1
@.str.201 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Error, %s hash detected, unable to force rupasov hash\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2508\00", [18 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Error, %s hash detected, unable to force tea hash\00", [46 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2509\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error, %s hash detected, unable to force r5 hash\00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"FS seems to be empty, autodetect is using the default hash\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2506\00", [18 x i8] zeroinitializer }, align 32
@__func__.find_hash_out = private unnamed_addr constant [14 x i8] c"find_hash_out\00", align 1
@.str.208 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Unable to automatically detect hash function. Please mount with -o hash={tea,rupasov,r5}\00", [39 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unrecognised hash function\00", [37 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2500\00", [18 x i8] zeroinitializer }, align 32
@__func__.finish_unfinished = private unnamed_addr constant [18 x i8] c"finish_unfinished\00", align 1
@.str.211 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot turn on journaled quota: error %d\00", [55 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-2140\00", [24 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"search_by_key returned %d\00", [38 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-2060\00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wrong position found\00", [43 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-2180\00", [24 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iget failed for %K\00", [45 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-2185\00", [24 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"file %K is not unlinked\00", [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"green-2101\00", [21 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"impossible truncate on a directory %k. Please report\00", [43 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Truncating %k to %lld ..\00", [39 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Removing %k..\00", [18 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-2189\00", [21 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Dead loop in finish_unfinished detected, just remove save link\0A\00", [32 x i8] zeroinitializer }, align 32
@finish_unfinished._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @__func__.finish_unfinished, ptr @.str.36, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"done\0A\00", [26 x i8] zeroinitializer }, align 32
@finish_unfinished._entry_ptr = internal global ptr @finish_unfinished._entry, section ".printk_index", align 4
@.str.227 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"There were %d uncompleted unlinks/truncates. Completed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6517\00", [21 x i8] zeroinitializer }, align 32
@__func__.handle_attrs = private unnamed_addr constant [13 x i8] c"handle_attrs\00", align 1
@.str.229 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cannot support attributes on 3.5.x disk format\00", [49 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"super-6518\00", [21 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"cannot support attributes until flag is set in super-block\00", [37 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reiser_inode_cache\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 61]
@__sancov_gen_cov_switch_values.235 = internal global [7 x i64] [i64 5, i64 32, i64 99, i64 106, i64 114, i64 119, i64 4294967295]
@__sancov_gen_cov_switch_values.236 = internal global [5 x i64] [i64 3, i64 32, i64 102, i64 103, i64 117]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 512]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.239 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.242 = private unnamed_addr constant [26 x i8] c"reiserfs_3_5_magic_string\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 36, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"reiserfs_3_6_magic_string\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 37, i32 19 }
@___asan_gen_.248 = private unnamed_addr constant [25 x i8] c"reiserfs_jr_magic_string\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 38, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 441, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 445, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 466, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 483, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 498, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"reiserfs_fs_type\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2636, i32 25 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2638, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant [22 x i8] c"reiserfs_inode_cachep\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 637, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1919, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1920, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1921, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1924, i32 35 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1927, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1941, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1951, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1967, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1982, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1984, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1986, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1995, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2001, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2002, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2012, i32 20 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2014, i32 20 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2016, i32 20 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2019, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2023, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2035, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2046, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2056, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2077, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2123, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2141, i32 13 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2159, i32 22 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2209, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2210, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1138, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant [6 x i8] c"tails\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 951, i32 25 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1139, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1141, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1142, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1143, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1144, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1146, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1147, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1153, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1154, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1159, i32 19 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1160, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1161, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant [7 x i8] c"balloc\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 941, i32 25 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1162, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant [13 x i8] c"logging_mode\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 920, i32 25 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1163, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant [13 x i8] c"barrier_mode\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 931, i32 25 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1164, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1165, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1166, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1167, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1168, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1169, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1170, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1171, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant [14 x i8] c"error_actions\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 958, i32 25 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1172, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1174, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1176, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1200, i32 21 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1207, i32 6 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1220, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1229, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1238, i32 6 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1253, i32 5 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1267, i32 6 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1274, i32 6 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1281, i32 6 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1299, i32 21 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1301, i32 26 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1304, i32 5 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1311, i32 5 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1330, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1338, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 952, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 953, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 954, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 942, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 943, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 944, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 945, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 946, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 947, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 921, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 923, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 925, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 932, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 933, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 959, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 961, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1002, i32 18 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1022, i32 6 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1029, i32 6 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1039, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1048, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1058, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1065, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1081, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1104, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1606, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1627, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1636, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1647, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1664, i32 21 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1667, i32 21 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1670, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1681, i32 10 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1682, i32 32 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1682, i32 40 }
@___asan_gen_.734 = private unnamed_addr constant [14 x i8] c"reiserfs_sops\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 811, i32 38 }
@___asan_gen_.737 = private unnamed_addr constant [20 x i8] c"reiserfs_export_ops\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 863, i32 39 }
@___asan_gen_.740 = private unnamed_addr constant [25 x i8] c"reiserfs_qctl_operations\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 852, i32 34 }
@___asan_gen_.743 = private unnamed_addr constant [26 x i8] c"reiserfs_quota_operations\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 841, i32 38 }
@___asan_gen_.746 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 646, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 699, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 625, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1360, i32 21 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1365, i32 21 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1370, i32 21 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1385, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1388, i32 4 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 728, i32 17 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 730, i32 17 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 734, i32 17 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 738, i32 17 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 740, i32 17 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 744, i32 17 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 746, i32 17 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 750, i32 17 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 753, i32 17 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 756, i32 17 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 759, i32 17 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 765, i32 19 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 772, i32 17 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 777, i32 17 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 780, i32 18 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 782, i32 18 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 788, i32 17 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 790, i32 17 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 792, i32 17 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 794, i32 17 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.852, i32 242, i32 22 }
@___asan_gen_.852 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.852, i32 245, i32 24 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2550, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.864, i32 366, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 271, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2411, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 2423, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1706, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1857, i32 20 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1860, i32 20 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1863, i32 20 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1808, i32 4 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1814, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1820, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1751, i32 20 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1763, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1778, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 275, i32 5 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 288, i32 4 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 296, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 329, i32 4 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 337, i32 4 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 355, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 372, i32 21 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 382, i32 21 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 389, i32 5 }
@___asan_gen_.974 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 399, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 418, i32 20 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1399, i32 4 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 1405, i32 4 }
@___asan_gen_.995 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.996 = private constant [23 x i8] c"../fs/reiserfs/super.c\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.996, i32 669, i32 44 }
@llvm.compiler.used = appending global [265 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_exit_reiserfs_fs, ptr @__initcall__kmod_reiserfs__313_2649_init_reiserfs_fs6, ptr @exit_reiserfs_fs, ptr @finish_unfinished._entry, ptr @finish_unfinished._entry_ptr, ptr @handle_barrier_mode._entry, ptr @handle_barrier_mode._entry.162, ptr @handle_barrier_mode._entry_ptr, ptr @handle_barrier_mode._entry_ptr.164, ptr @reiserfs_fill_super._entry, ptr @reiserfs_fill_super._entry_ptr, ptr @reiserfs_quota_write._entry, ptr @reiserfs_quota_write._entry_ptr, ptr @reiserfs_3_5_magic_string, ptr @reiserfs_3_6_magic_string, ptr @reiserfs_jr_magic_string, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @reiserfs_fs_type, ptr @.str.9, ptr @reiserfs_inode_cachep, ptr @reiserfs_fill_super.__key, ptr @.str.10, ptr @reiserfs_fill_super.__key.11, ptr @.str.12, ptr @reiserfs_fill_super.__key.13, ptr @.str.14, ptr @reiserfs_fill_super.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @reiserfs_fill_super.__key.50, ptr @.str.51, ptr @reiserfs_fill_super.__key.52, ptr @.str.53, ptr @.str.54, ptr @tails, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @balloc, ptr @.str.67, ptr @logging_mode, ptr @.str.68, ptr @barrier_mode, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @error_actions, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @reiserfs_sops, ptr @reiserfs_export_ops, ptr @reiserfs_qctl_operations, ptr @reiserfs_quota_operations, ptr @reiserfs_alloc_inode.__key, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232], section "llvm.metadata"
@0 = internal global [252 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_3_5_magic_string to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_3_6_magic_string to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_jr_magic_string to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fill_super.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fill_super.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fill_super.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fill_super.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_fill_super.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tails to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @balloc to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logging_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_mode to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_actions to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_qctl_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_quota_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_barrier_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_barrier_mode._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_quota_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @finish_unfinished._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_reiserfs_3_5(ptr nocapture noundef readonly %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_magic = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %rs, i32 0, i32 8
  %call1 = tail call i32 @strncmp(ptr noundef %s_magic, ptr noundef nonnull dereferenceable(9) @reiserfs_3_5_magic_string, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_reiserfs_3_6(ptr nocapture noundef readonly %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_magic = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %rs, i32 0, i32 8
  %call1 = tail call i32 @strncmp(ptr noundef %s_magic, ptr noundef nonnull dereferenceable(10) @reiserfs_3_6_magic_string, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_reiserfs_jr(ptr nocapture noundef readonly %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_magic = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %rs, i32 0, i32 8
  %call1 = tail call i32 @strncmp(ptr noundef %s_magic, ptr noundef nonnull dereferenceable(10) @reiserfs_jr_magic_string, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_schedule_old_flush(ptr nocapture noundef readonly %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %4 = and i32 %3, 1073741825
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %4)
  %.not = icmp eq i32 %4, 1073741824
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %old_work_lock = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %old_work_lock) #17
  %work_queued = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %work_queued to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %work_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.else.i, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %7 = load i32, ptr @dirty_writeback_interval, align 4
  %mul = mul i32 %7, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %8 = load ptr, ptr @system_long_wq, align 4
  %old_work = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 35
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %old_work, i32 noundef %call2.i) #17
  %9 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %work_queued, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else.i, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %old_work_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_cancel_old_flush(ptr nocapture noundef readonly %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %old_work_lock = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %old_work_lock) #17
  %work_queued = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %work_queued, align 4
  tail call void @_raw_spin_unlock(ptr noundef %old_work_lock) #17
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %old_work = getelementptr inbounds %struct.reiserfs_sb_info, ptr %4, i32 0, i32 35
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %old_work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_save_link(ptr noundef %th, ptr noundef %inode, i32 noundef %truncate) local_unnamed_addr #2 align 64 {
entry:
  %path = alloca %struct.treepath, align 4
  %key = alloca %struct.cpu_key, align 8
  %ih = alloca %struct.item_head, align 4
  %link = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #17
  %0 = getelementptr inbounds i8, ptr %path, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #17
  %3 = call ptr @memset(ptr %key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ih) #17
  %4 = call ptr @memset(ptr %ih, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link) #17
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %5 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !477

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 438, 0\0A.popsection", ""() #17, !srcloc !478
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %truncate)
  %tobool11.not = icmp eq i32 %truncate, 0
  %i_flags21 = getelementptr i8, ptr %inode, i32 -248
  %7 = ptrtoint ptr %i_flags21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags21, align 8
  br i1 %tobool11.not, label %land.lhs.true19.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body10
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.add_save_link, ptr noundef nonnull @.str.1, i32 noundef 444, ptr noundef nonnull @__func__.add_save_link, i32 noundef %10) #20
  unreachable

land.lhs.true19.critedge:                         ; preds = %do.body10
  %and22 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then32, label %if.then24

if.then24:                                        ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #19
  %i_ino25 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino25, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.add_save_link, ptr noundef nonnull @.str.2, i32 noundef 448, ptr noundef nonnull @__func__.add_save_link, i32 noundef %12) #20
  unreachable

if.then32:                                        ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #19
  %version116 = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %13 = ptrtoint ptr %version116 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %version116, align 8
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %key, align 8
  %i_ino29117 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino29117 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino29117, align 8
  %k_objectid118 = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %17 = ptrtoint ptr %k_objectid118 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %k_objectid118, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  %add = add i32 %21, 1
  %conv = zext i32 %add to i64
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %22 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %k_offset.i, align 8
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %23 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %k_type.i, align 8
  %24 = load i32, ptr %s_blocksize, align 16
  %add36 = add i32 %24, 1
  %conv37 = zext i32 %add36 to i64
  call void @make_le_item_head(ptr noundef nonnull %ih, ptr noundef nonnull %key, i32 noundef 0, i64 noundef %conv37, i32 noundef 2, i32 noundef 4, i32 noundef 65535) #17
  br label %if.end46

if.else:                                          ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 1
  %25 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %version, align 8
  %26 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %key, align 8
  %i_ino29 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %27 = ptrtoint ptr %i_ino29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino29, align 8
  %k_objectid = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %29 = ptrtoint ptr %k_objectid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %k_objectid, align 4
  %30 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %inode, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %32)
  %cmp = icmp eq i16 %32, 16384
  br i1 %cmp, label %if.then41, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %i_sb42 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb42, align 4
  %add.ptr.i110 = getelementptr i8, ptr %inode, i32 -264
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.add_save_link, ptr noundef nonnull @.str.4, ptr noundef %add.ptr.i110) #17
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.else.if.end44_crit_edge
  %k_offset.i111 = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %35 = ptrtoint ptr %k_offset.i111 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1, ptr %k_offset.i111, align 8
  %k_type.i112 = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %36 = ptrtoint ptr %k_type.i112 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %k_type.i112, align 8
  %37 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %version, align 8
  call void @make_le_item_head(ptr noundef nonnull %ih, ptr noundef nonnull %key, i32 noundef %38, i64 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef 0) #17
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.then32
  %key_length = getelementptr inbounds %struct.cpu_key, ptr %key, i32 0, i32 2
  %39 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %key_length, align 4
  %i_sb47 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb47, align 4
  %call48 = call i32 @search_by_key(ptr noundef %41, ptr noundef nonnull %key, ptr noundef nonnull %path, i32 noundef 1) #17
  %42 = zext i32 %call48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call48, label %if.then54 [
    i32 0, label %if.end57
    i32 -28, label %if.end46.if.end56_crit_edge
  ]

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %i_sb47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb47, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %44, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.add_save_link, ptr noundef nonnull @.str.6, ptr noundef nonnull %key, i32 noundef %call48) #17
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end46.if.end56_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #17
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  %add.ptr.i113 = getelementptr i8, ptr %inode, i32 -264
  %45 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i113, align 8
  %47 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %link, align 4
  %call62 = call i32 @reiserfs_insert_item(ptr noundef %th, ptr noundef nonnull %path, ptr noundef nonnull %key, ptr noundef nonnull %ih, ptr noundef null, ptr noundef nonnull %link) #17
  %48 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %call62, label %if.then67 [
    i32 0, label %if.else70
    i32 -28, label %if.end57.cleanup_crit_edge
  ]

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then67:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %i_sb47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb47, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %50, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.add_save_link, ptr noundef nonnull @.str.8, i32 noundef %call62) #17
  br label %cleanup

if.else70:                                        ; preds = %if.end57
  %i_flags77 = getelementptr i8, ptr %inode, i32 -248
  %51 = ptrtoint ptr %i_flags77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_flags77, align 8
  br i1 %tobool11.not, label %if.else75, label %if.then72

if.then72:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %52, 32
  %53 = ptrtoint ptr %i_flags77 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or, ptr %i_flags77, align 8
  br label %cleanup

if.else75:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #19
  %or78 = or i32 %52, 16
  %54 = ptrtoint ptr %i_flags77 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or78, ptr %i_flags77, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else75, %if.then72, %if.then67, %if.end57.cleanup_crit_edge, %if.end56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ih) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #17
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_le_item_head(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_by_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pathrelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_insert_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_save_link(ptr nocapture noundef %inode, i32 noundef %truncate) local_unnamed_addr #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %key = alloca %struct.reiserfs_key, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #17
  %1 = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = getelementptr inbounds i8, ptr %key, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %5, i32 noundef 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %key, align 4
  %k_objectid = getelementptr i8, ptr %inode, i32 -260
  %8 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %k_objectid, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %truncate)
  %tobool3.not = icmp eq i32 %truncate, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize, align 16
  %add = add i32 %14, 1
  %15 = call i32 @llvm.bswap.i32(i32 %add) #17
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %1, align 4
  %k_uniqueness.i = getelementptr inbounds %struct.offset_v1, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %k_uniqueness.i, align 4
  %i_flags13 = getelementptr i8, ptr %inode, i32 -248
  %18 = ptrtoint ptr %i_flags13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags13, align 8
  %and14 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then4.if.then19_crit_edge, label %if.then19.critedge42

if.then4.if.then19_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

if.else:                                          ; preds = %if.end
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777216, ptr %1, align 4
  %k_uniqueness.i47 = getelementptr inbounds %struct.offset_v1, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %k_uniqueness.i47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -16777217, ptr %k_uniqueness.i47, align 4
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %22 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags, align 8
  %and = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else.if.end27_crit_edge, label %if.else23.critedge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then19.critedge42:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_delete_solid_item(ptr noundef nonnull %th, ptr noundef null, ptr noundef nonnull %key) #17
  br label %if.then19

if.then19:                                        ; preds = %if.then19.critedge42, %if.then4.if.then19_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  call void @reiserfs_release_objectid(ptr noundef nonnull %th, i32 noundef %25) #17
  br label %if.end27

if.else23.critedge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_delete_solid_item(ptr noundef nonnull %th, ptr noundef null, ptr noundef nonnull %key) #17
  br label %if.end27

if.end27:                                         ; preds = %if.else23.critedge, %if.then19, %if.else.if.end27_crit_edge
  %i_flags.sink52 = phi ptr [ %i_flags13, %if.then19 ], [ %i_flags, %if.else23.critedge ], [ %i_flags, %if.else.if.end27_crit_edge ]
  %.sink51 = phi i32 [ -17, %if.then19 ], [ -33, %if.else23.critedge ], [ -33, %if.else.if.end27_crit_edge ]
  %26 = ptrtoint ptr %i_flags.sink52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags.sink52, align 8
  %and26 = and i32 %27, %.sink51
  store i32 %and26, ptr %i_flags.sink52, align 8
  %call28 = call i32 @journal_end(ptr noundef nonnull %th) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_delete_solid_item(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_release_objectid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_reiserfs_fs() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @reiserfs_proc_info_global_done() #17
  %call1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @reiserfs_fs_type) #17
  tail call void @rcu_barrier() #17
  %0 = load ptr, ptr @reiserfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_proc_info_global_done() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_super_block(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @reiserfs_fill_super) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_kill_sb(ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 @reiserfs_proc_info_done(ptr noundef %s) #17
  tail call void @shrink_dcache_sb(ptr noundef %s) #17
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %xattr_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %xattr_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xattr_root, align 4
  tail call void @dput(ptr noundef %5) #17
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %xattr_root4 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %xattr_root4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xattr_root4, align 4
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %priv_root = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %priv_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv_root, align 4
  tail call void @dput(ptr noundef %11) #17
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %priv_root7 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %13, i32 0, i32 31
  %14 = ptrtoint ptr %priv_root7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %priv_root7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kill_block_super(ptr noundef %s) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_reiserfs_fs() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.232, i32 noundef 1048, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #17
  store ptr %call.i, ptr @reiserfs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @reiserfs_proc_info_global_init() #17
  %call2 = tail call i32 @register_filesystem(ptr noundef nonnull @reiserfs_fs_type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 @reiserfs_proc_info_global_done() #17
  tail call void @rcu_barrier() #17
  %0 = load ptr, ptr @reiserfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_fill_super(ptr noundef %s, ptr noundef %data, i32 noundef %silent) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %blocks = alloca i32, align 4
  %commit_max_age = alloca i32, align 4
  %args = alloca %struct.reiserfs_iget_args, align 4
  %jdev_name = alloca ptr, align 4
  %qf_names = alloca [2 x ptr], align 8
  %qfmt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks) #17
  %1 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blocks, align 4, !annotation !479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %commit_max_age) #17
  %2 = ptrtoint ptr %commit_max_age to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %commit_max_age, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #17
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %args, align 4, !annotation !479
  %4 = getelementptr inbounds %struct.reiserfs_iget_args, ptr %args, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jdev_name) #17
  %6 = ptrtoint ptr %jdev_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %jdev_name, align 4, !annotation !479
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qf_names) #17
  %7 = ptrtoint ptr %qf_names to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %qf_names, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qfmt) #17
  %8 = ptrtoint ptr %qfmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qfmt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 980) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt, align 4
  %or4 = or i32 %12, 2621442
  store i32 %or4, ptr %s_mount_opt, align 4
  %preallocmin = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 12, i32 3
  %13 = ptrtoint ptr %preallocmin to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %preallocmin, align 4
  %preallocsize = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 12, i32 4
  %14 = ptrtoint ptr %preallocsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17, ptr %preallocsize, align 8
  tail call void @reiserfs_init_alloc_options(ptr noundef %s) #17
  %old_work_lock = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %old_work_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @reiserfs_fill_super.__key, i16 noundef signext 3) #17
  %old_work = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 35
  tail call void @__init_work(ptr noundef %old_work, i32 noundef 0) #17
  %15 = ptrtoint ptr %old_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %old_work, align 8
  %lockdep_map = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @reiserfs_fill_super.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry16 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 1
  %16 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry16, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @flush_old_commits, ptr %func, align 4
  %timer = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @reiserfs_fill_super.__key.13) #17
  %lock = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @reiserfs_fill_super.__key.15) #17
  %lock_depth = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %lock_depth to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %lock_depth, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call30 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef 0, ptr noundef %s_id) #17
  %commit_wq = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %commit_wq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call30, ptr %commit_wq, align 8
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool34.not = icmp eq i32 %silent, 0
  br i1 %tobool34.not, label %if.then35, label %if.then33.if.end363_crit_edge

if.then33.if.end363_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end363

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.19) #17
  br label %if.end358

if.end37:                                         ; preds = %if.end
  %21 = ptrtoint ptr %jdev_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %jdev_name, align 4
  %call40 = call fastcc i32 @reiserfs_parse_options(ptr noundef %s, ptr noundef %data, ptr noundef %s_mount_opt, ptr noundef nonnull %blocks, ptr noundef nonnull %jdev_name, ptr noundef nonnull %commit_max_age, ptr noundef nonnull %qf_names, ptr noundef nonnull %qfmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp eq i32 %call40, 0
  br i1 %cmp, label %if.end37.if.end358_crit_edge, label %if.end42

if.end37.if.end358_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end358

if.end42:                                         ; preds = %if.end37
  %22 = ptrtoint ptr %jdev_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jdev_name, align 4
  %tobool43.not = icmp eq ptr %23, null
  br i1 %tobool43.not, label %if.end42.if.end54_crit_edge, label %land.lhs.true

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end42
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not = icmp eq i8 %25, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end54_crit_edge, label %if.then45

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then45:                                        ; preds = %land.lhs.true
  %call46 = call noalias ptr @kstrdup(ptr noundef nonnull %23, i32 noundef 3264) #17
  %s_jdev = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 39
  %26 = ptrtoint ptr %s_jdev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call46, ptr %s_jdev, align 4
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.then49, label %if.then45.if.end54_crit_edge

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool50.not = icmp eq i32 %silent, 0
  br i1 %tobool50.not, label %if.then51, label %if.then49.if.end358_crit_edge

if.then49.if.end358_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end358

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.20) #17
  br label %if.end358

if.end54:                                         ; preds = %if.then45.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %if.end42.if.end54_crit_edge
  %27 = ptrtoint ptr %qf_names to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qf_names, align 8
  %29 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info, align 16
  %arrayidx1.i = getelementptr %struct.reiserfs_sb_info, ptr %30, i32 0, i32 37, i32 0
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx1.i, align 4
  %cmp2.not.i = icmp eq ptr %28, %32
  br i1 %cmp2.not.i, label %if.end54.if.end.i_crit_edge, label %if.then.i

if.end54.if.end.i_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %32) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end54.if.end.i_crit_edge
  %33 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info, align 16
  %arrayidx9.i = getelementptr %struct.reiserfs_sb_info, ptr %34, i32 0, i32 37, i32 0
  %35 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %28, ptr %arrayidx9.i, align 4
  %arrayidx.1.i = getelementptr inbounds ptr, ptr %qf_names, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.1.i, align 4
  %38 = load ptr, ptr %s_fs_info, align 16
  %arrayidx1.1.i = getelementptr %struct.reiserfs_sb_info, ptr %38, i32 0, i32 37, i32 1
  %39 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx1.1.i, align 4
  %cmp2.not.1.i = icmp eq ptr %37, %40
  br i1 %cmp2.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %40) #17
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %41 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info, align 16
  %arrayidx9.1.i = getelementptr %struct.reiserfs_sb_info, ptr %42, i32 0, i32 37, i32 1
  %43 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %arrayidx9.1.i, align 4
  %44 = ptrtoint ptr %qfmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.end.1.i.handle_quota_files.exit_crit_edge, label %if.then10.i

if.end.1.i.handle_quota_files.exit_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_quota_files.exit

if.then10.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info, align 16
  %s_jquota_fmt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %47, i32 0, i32 38
  %48 = ptrtoint ptr %s_jquota_fmt.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %s_jquota_fmt.i, align 4
  br label %handle_quota_files.exit

handle_quota_files.exit:                          ; preds = %if.then10.i, %if.end.1.i.handle_quota_files.exit_crit_edge
  %49 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool56.not = icmp eq i32 %50, 0
  br i1 %tobool56.not, label %if.end61, label %if.then57

if.then57:                                        ; preds = %handle_quota_files.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool58.not = icmp eq i32 %silent, 0
  br i1 %tobool58.not, label %if.then59, label %if.then57.if.end358_crit_edge

if.then57.if.end358_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end358

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.22) #17
  br label %if.end358

if.end61:                                         ; preds = %handle_quota_files.exit
  %call62 = call fastcc i32 @read_super_block(ptr noundef %s, i32 noundef 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.if.end74_crit_edge, label %if.else

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.else:                                          ; preds = %if.end61
  %call65 = call fastcc i32 @read_super_block(ptr noundef %s, i32 noundef 65536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else.if.end74_crit_edge, label %if.then67

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool68.not = icmp eq i32 %silent, 0
  br i1 %tobool68.not, label %if.then69, label %if.then67.if.end358_crit_edge

if.then67.if.end358_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end358

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.24, ptr noundef %s_id) #17
  br label %if.end358

if.end74:                                         ; preds = %if.else.if.end74_crit_edge, %if.end61.if.end74_crit_edge
  %old_format.0 = phi i32 [ 0, %if.else.if.end74_crit_edge ], [ 1, %if.end61.if.end74_crit_edge ]
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %51 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %52 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 4294967295, ptr %s_time_max, align 64
  %53 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_rs, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %57 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_bdev, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %60, 9
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %56, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %s_blocksize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %56, i32 0, i32 4
  %64 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %s_blocksize, align 1
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  %conv78 = zext i16 %66 to i32
  %mul = mul i32 %63, %conv78
  %conv79 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %conv79)
  %cmp80 = icmp slt i64 %shl.i, %conv79
  br i1 %cmp80, label %if.then82, label %if.end92

if.then82:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool83.not = icmp eq i32 %silent, 0
  br i1 %tobool83.not, label %if.then84, label %if.then82.if.end358_crit_edge

if.then82.if.end358_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end358

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.25) #17
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.26) #17
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.27) #17
  br label %if.end358

if.end92:                                         ; preds = %if.end74
  %s_mount_state = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %s_mount_state, align 8
  %call97 = call i32 @reiserfs_init_bitmap_cache(ptr noundef %s) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool104.not = icmp eq i32 %silent, 0
  br i1 %tobool98.not, label %if.end103, label %if.then99

if.then99:                                        ; preds = %if.end92
  br i1 %tobool104.not, label %if.then101, label %if.then99.if.end358_crit_edge

if.then99.if.end358_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end358

if.then101:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.29) #17
  br label %if.end358

if.end103:                                        ; preds = %if.end92
  br i1 %tobool104.not, label %if.then105, label %if.end103.if.end109_crit_edge

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.30) #17
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.31) #17
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.end103.if.end109_crit_edge
  %68 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info, align 16
  %s_mount_opt111 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %s_mount_opt111 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_mount_opt111, align 4
  %72 = and i32 %71, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %if.then123, label %if.end109.if.end126_crit_edge

if.end109.if.end126_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end126

if.then123:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #19
  %74 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_mount_opt, align 4
  %or125 = or i32 %75, 512
  store i32 %or125, ptr %s_mount_opt, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end109.if.end126_crit_edge
  %76 = ptrtoint ptr %s_mount_opt111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_mount_opt111, align 4
  %and129 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  %and135 = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %.str.34..str.33 = select i1 %tobool136.not, ptr @.str.34, ptr @.str.33
  %.str.33.sink = select i1 %tobool130.not, ptr %.str.34..str.33, ptr @.str.32
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull %.str.33.sink) #17
  %78 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info, align 16
  %s_mount_opt142 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %s_mount_opt142 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_mount_opt142, align 4
  %and143 = and i32 %81, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end126.if.end150_crit_edge, label %do.end148

if.end126.if.end150_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150

do.end148:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #22
  br label %if.end150

if.end150:                                        ; preds = %do.end148, %if.end126.if.end150_crit_edge
  %82 = ptrtoint ptr %jdev_name to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %jdev_name, align 4
  %84 = ptrtoint ptr %commit_max_age to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %commit_max_age, align 4
  %call151 = call i32 @journal_init(ptr noundef %s, ptr noundef %83, i32 noundef %old_format.0, i32 noundef %85) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else157, label %if.then153

if.then153:                                       ; preds = %if.end150
  br i1 %tobool104.not, label %if.then155, label %if.then153.if.end358_crit_edge

if.then153.if.end358_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end358

if.then155:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.38) #17
  br label %if.end358

if.else157:                                       ; preds = %if.end150
  %call159 = call fastcc i32 @reread_meta_blocks(ptr noundef %s)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end165, label %if.then161

if.then161:                                       ; preds = %if.else157
  br i1 %tobool104.not, label %if.then163, label %if.then161.if.then356_crit_edge

if.then161.if.then356_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then356

if.then163:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.40) #17
  br label %if.then356

if.end165:                                        ; preds = %if.else157
  %86 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info, align 16
  %s_mount_opt167 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %87, i32 0, i32 11
  %88 = ptrtoint ptr %s_mount_opt167 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_mount_opt167, align 4
  %and168 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end165.if.then356_crit_edge

if.end165.if.then356_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then356

if.end171:                                        ; preds = %if.end165
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 18
  %90 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @reiserfs_xattr_handlers, ptr %s_xattr, align 16
  %91 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_bdev, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bd_read_only.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i576 = icmp eq i8 %94, 0
  br i1 %tobool.not.i576, label %lor.rhs.i, label %if.end171.land.lhs.true175_crit_edge

if.end171.land.lhs.true175_crit_edge:             ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true175

lor.rhs.i:                                        ; preds = %if.end171
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %92, i32 0, i32 17
  %95 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bd_read_only.i.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.land.lhs.true175_crit_edge

lor.rhs.i.land.lhs.true175_crit_edge:             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true175

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 12
  %101 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %state.i.i, align 4
  %103 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool174.not = icmp eq i32 %103, 0
  br i1 %tobool174.not, label %bdev_read_only.exit.if.end182_crit_edge, label %bdev_read_only.exit.land.lhs.true175_crit_edge

bdev_read_only.exit.land.lhs.true175_crit_edge:   ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true175

bdev_read_only.exit.if.end182_crit_edge:          ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end182

land.lhs.true175:                                 ; preds = %bdev_read_only.exit.land.lhs.true175_crit_edge, %lor.rhs.i.land.lhs.true175_crit_edge, %if.end171.land.lhs.true175_crit_edge
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %104 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then177, label %land.lhs.true175.if.end182_crit_edge

land.lhs.true175.if.end182_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end182

if.then177:                                       ; preds = %land.lhs.true175
  br i1 %tobool104.not, label %if.then179, label %if.then177.if.end180_crit_edge

if.then177.if.end180_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end180

if.then179:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.42) #17
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %if.then177.if.end180_crit_edge
  %106 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_flags.i, align 4
  %or181 = or i32 %107, 1
  store i32 %or181, ptr %s_flags.i, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.end180, %land.lhs.true175.if.end182_crit_edge, %bdev_read_only.exit.if.end182_crit_edge
  %108 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %args, align 4
  %109 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %4, align 4
  %call183 = call ptr @iget5_locked(ptr noundef %s, i32 noundef 2, ptr noundef nonnull @reiserfs_find_actor, ptr noundef nonnull @reiserfs_init_locked_inode, ptr noundef nonnull %args) #17
  %tobool184.not = icmp eq ptr %call183, null
  br i1 %tobool184.not, label %if.then185, label %if.end189

if.then185:                                       ; preds = %if.end182
  br i1 %tobool104.not, label %if.then187, label %if.then185.if.then356_crit_edge

if.then185.if.then356_crit_edge:                  ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then356

if.then187:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.44) #17
  br label %if.then356

if.end189:                                        ; preds = %if.end182
  call void @reiserfs_write_lock(ptr noundef %s) #17
  %i_state = getelementptr inbounds %struct.inode, ptr %call183, i32 0, i32 24
  %110 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %i_state, align 8
  %and190 = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end189.if.end193_crit_edge, label %if.then192

if.end189.if.end193_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end193

if.then192:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_read_locked_inode(ptr noundef nonnull %call183, ptr noundef nonnull %args) #17
  call void @unlock_new_inode(ptr noundef nonnull %call183) #17
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end189.if.end193_crit_edge
  %112 = ptrtoint ptr %call183 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %call183, align 8
  %114 = and i16 %113, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %114)
  %cmp196 = icmp eq i16 %114, 16384
  br i1 %cmp196, label %lor.lhs.false, label %if.end193.if.then202_crit_edge

if.end193.if.then202_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then202

lor.lhs.false:                                    ; preds = %if.end193
  %call198 = call i64 @inode_get_bytes(ptr noundef nonnull %call183) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call198)
  %tobool199.not = icmp eq i64 %call198, 0
  br i1 %tobool199.not, label %lor.lhs.false.if.then202_crit_edge, label %lor.lhs.false200

lor.lhs.false.if.then202_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then202

lor.lhs.false200:                                 ; preds = %lor.lhs.false
  %i_size = getelementptr inbounds %struct.inode, ptr %call183, i32 0, i32 14
  %115 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %116)
  %tobool201.not = icmp eq i64 %116, 0
  br i1 %tobool201.not, label %lor.lhs.false200.if.then202_crit_edge, label %if.end206

lor.lhs.false200.if.then202_crit_edge:            ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then202

if.then202:                                       ; preds = %lor.lhs.false200.if.then202_crit_edge, %lor.lhs.false.if.then202_crit_edge, %if.end193.if.then202_crit_edge
  br i1 %tobool104.not, label %if.then204, label %if.then202.if.end205_crit_edge

if.then202.if.end205_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end205

if.then204:                                       ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.45) #17
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.then202.if.end205_crit_edge
  call void @iput(ptr noundef nonnull %call183) #17
  br label %error

if.end206:                                        ; preds = %lor.lhs.false200
  %call207 = call ptr @d_make_root(ptr noundef nonnull %call183) #17
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %117 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call207, ptr %s_root, align 64
  %tobool209.not = icmp eq ptr %call207, null
  br i1 %tobool209.not, label %if.end206.error_crit_edge, label %if.end211

if.end206.error_crit_edge:                        ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #19
  br label %error

if.end211:                                        ; preds = %if.end206
  %call212 = call fastcc ptr @hash_function(ptr noundef %s)
  %s_hash_function = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 10
  %118 = ptrtoint ptr %s_hash_function to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call212, ptr %s_hash_function, align 8
  %cmp214 = icmp eq ptr %call212, null
  br i1 %cmp214, label %if.then216, label %if.end219

if.then216:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #19
  %119 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %120) #17
  %121 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %s_root, align 64
  br label %error

if.end219:                                        ; preds = %if.end211
  %s_magic.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %56, i32 0, i32 8
  %call1.i = call i32 @strncmp(ptr noundef %s_magic.i, ptr noundef nonnull dereferenceable(9) @reiserfs_3_5_magic_string, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i577.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i577.not, label %if.end219.if.then232_crit_edge, label %lor.lhs.false222

if.end219.if.then232_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then232

lor.lhs.false222:                                 ; preds = %if.end219
  %call1.i579 = call i32 @strncmp(ptr noundef %s_magic.i, ptr noundef nonnull dereferenceable(10) @reiserfs_jr_magic_string, i32 noundef 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i579)
  %tobool.not.i580.not = icmp eq i32 %call1.i579, 0
  br i1 %tobool.not.i580.not, label %land.lhs.true225, label %lor.lhs.false222.if.else233_crit_edge

lor.lhs.false222.if.else233_crit_edge:            ; preds = %lor.lhs.false222
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else233

land.lhs.true225:                                 ; preds = %lor.lhs.false222
  %122 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info, align 16
  %s_rs227 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %s_rs227 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_rs227, align 4
  %s_version = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %125, i32 0, i32 13
  %126 = ptrtoint ptr %s_version to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %s_version, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %cmp230 = icmp eq i16 %127, 0
  br i1 %cmp230, label %land.lhs.true225.if.then232_crit_edge, label %land.lhs.true225.if.else233_crit_edge

land.lhs.true225.if.else233_crit_edge:            ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else233

land.lhs.true225.if.then232_crit_edge:            ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then232

if.then232:                                       ; preds = %land.lhs.true225.if.then232_crit_edge, %if.end219.if.then232_crit_edge
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 15
  call void @_set_bit(i32 noundef 0, ptr noundef %s_properties) #17
  br label %if.end240

if.else233:                                       ; preds = %land.lhs.true225.if.else233_crit_edge, %lor.lhs.false222.if.else233_crit_edge
  %s_properties236 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 15
  br i1 %tobool63.not, label %if.then235, label %if.else237

if.then235:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 2, ptr noundef %s_properties236) #17
  br label %if.end240

if.else237:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 1, ptr noundef %s_properties236) #17
  br label %if.end240

if.end240:                                        ; preds = %if.else237, %if.then235, %if.then232
  %s_flags.i583 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %128 = ptrtoint ptr %s_flags.i583 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_flags.i583, align 4
  %and.i584 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i584)
  %tobool.i585.not = icmp eq i32 %and.i584, 0
  br i1 %tobool.i585.not, label %if.then242, label %if.else324

if.then242:                                       ; preds = %if.end240
  %call243 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.end248, label %if.then245

if.then245:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #19
  %130 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %131) #17
  %132 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %s_root, align 64
  br label %error

if.end248:                                        ; preds = %if.then242
  %133 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_fs_info, align 16
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %call250 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef %136, i32 noundef 1) #17
  %s_umount_state252 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %56, i32 0, i32 7
  %137 = ptrtoint ptr %s_umount_state252 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 2)
  store i16 512, ptr %s_umount_state252, align 1
  %s_fs_state = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %56, i32 0, i32 9
  %138 = ptrtoint ptr %s_fs_state to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 0, ptr %s_fs_state, align 1
  %139 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_fs_info, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_rs.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %142, align 1
  %145 = call i32 @llvm.bswap.i32(i32 %144) #17
  %sub.i = add i32 %145, -1
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %146 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %147, 3
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add i32 %div.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 65536
  br i1 %cmp.i, label %if.end248.if.end269_crit_edge, label %land.lhs.true257

if.end248.if.end269_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end269

land.lhs.true257:                                 ; preds = %if.end248
  %s_bmap_nr = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %56, i32 0, i32 12
  %148 = ptrtoint ptr %s_bmap_nr to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %s_bmap_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp260.not = icmp eq i16 %149, 0
  br i1 %cmp260.not, label %land.lhs.true257.if.end269_crit_edge, label %if.then262

land.lhs.true257.if.end269_crit_edge:             ; preds = %land.lhs.true257
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end269

if.then262:                                       ; preds = %land.lhs.true257
  call void @__sanitizer_cov_trace_pc() #19
  %150 = call i16 @llvm.bswap.i16(i16 %149)
  %conv259 = zext i16 %150 to i32
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.reiserfs_fill_super, ptr noundef nonnull @.str.47, i32 noundef %conv259, i32 noundef %add.i) #17
  %151 = ptrtoint ptr %s_bmap_nr to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 0, ptr %s_bmap_nr, align 1
  br label %if.end269

if.end269:                                        ; preds = %if.then262, %land.lhs.true257.if.end269_crit_edge, %if.end248.if.end269_crit_edge
  %152 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_fs_info, align 16
  %s_properties271 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %153, i32 0, i32 15
  %154 = ptrtoint ptr %s_properties271 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %s_properties271, align 4
  %and272 = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %if.else299, label %if.then274

if.then274:                                       ; preds = %if.end269
  %s_mount_opt276 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %153, i32 0, i32 11
  %156 = ptrtoint ptr %s_mount_opt276 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_mount_opt276, align 4
  %and277 = and i32 %157, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %if.else294, label %if.then279

if.then279:                                       ; preds = %if.then274
  br i1 %tobool104.not, label %if.then281, label %if.then279.if.end282_crit_edge

if.then279.if.end282_crit_edge:                   ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end282

if.then281:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.48) #17
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %if.then279.if.end282_crit_edge
  %call1.i598 = call i32 @strncmp(ptr noundef %s_magic.i, ptr noundef nonnull dereferenceable(9) @reiserfs_3_5_magic_string, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i598)
  %tobool.not.i599.not = icmp eq i32 %call1.i598, 0
  br i1 %tobool.not.i599.not, label %if.then285, label %if.end282.if.end288_crit_edge

if.end282.if.end288_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end288

if.then285:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #19
  %158 = call ptr @memcpy(ptr %s_magic.i, ptr @reiserfs_3_6_magic_string, i32 10)
  br label %if.end288

if.end288:                                        ; preds = %if.then285, %if.end282.if.end288_crit_edge
  %s_version290 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %56, i32 0, i32 13
  %159 = ptrtoint ptr %s_version290 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 512, ptr %s_version290, align 1
  %call291 = call i32 @reiserfs_convert_objectid_map_v1(ptr noundef %s) #17
  %s_properties292 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 15
  call void @_set_bit(i32 noundef 1, ptr noundef %s_properties292) #17
  call void @_clear_bit(i32 noundef 0, ptr noundef %s_properties292) #17
  br label %if.end303

if.else294:                                       ; preds = %if.then274
  br i1 %tobool104.not, label %if.then296, label %if.else294.if.end303_crit_edge

if.else294.if.end303_crit_edge:                   ; preds = %if.else294
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end303

if.then296:                                       ; preds = %if.else294
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.49) #17
  br label %if.end303

if.else299:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #19
  %s_mnt_count = getelementptr inbounds %struct.reiserfs_super_block, ptr %56, i32 0, i32 5
  %160 = ptrtoint ptr %s_mnt_count to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %s_mnt_count, align 1
  %162 = call i16 @llvm.bswap.i16(i16 %161)
  %add = add i16 %162, 1
  %163 = call i16 @llvm.bswap.i16(i16 %add)
  %164 = ptrtoint ptr %s_mnt_count to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 %163, ptr %s_mnt_count, align 1
  br label %if.end303

if.end303:                                        ; preds = %if.else299, %if.then296, %if.else294.if.end303_crit_edge, %if.end288
  %165 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %s_fs_info, align 16
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %call306 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %168) #17
  %call307 = call i32 @journal_end(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end312, label %if.then309

if.then309:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #19
  %169 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %170) #17
  %171 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %s_root, align 64
  br label %error

if.end312:                                        ; preds = %if.end303
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %call313 = call i32 @reiserfs_lookup_privroot(ptr noundef %s) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %lor.lhs.false315, label %if.end312.if.then319_crit_edge

if.end312.if.then319_crit_edge:                   ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then319

lor.lhs.false315:                                 ; preds = %if.end312
  %172 = ptrtoint ptr %s_flags.i583 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %s_flags.i583, align 4
  %call317 = call i32 @reiserfs_xattr_init(ptr noundef %s, i32 noundef %173) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end322, label %lor.lhs.false315.if.then319_crit_edge

lor.lhs.false315.if.then319_crit_edge:            ; preds = %lor.lhs.false315
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then319

if.then319:                                       ; preds = %lor.lhs.false315.if.then319_crit_edge, %if.end312.if.then319_crit_edge
  %errval.0 = phi i32 [ %call313, %if.end312.if.then319_crit_edge ], [ %call317, %lor.lhs.false315.if.then319_crit_edge ]
  %174 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %175) #17
  %176 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %s_root, align 64
  br label %if.then356

if.end322:                                        ; preds = %lor.lhs.false315
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_write_lock(ptr noundef %s) #17
  call fastcc void @finish_unfinished(ptr noundef %s)
  br label %if.end343

if.else324:                                       ; preds = %if.end240
  %177 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %s_fs_info, align 16
  %s_properties326 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %178, i32 0, i32 15
  %179 = ptrtoint ptr %s_properties326 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %s_properties326, align 4
  %and327 = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp ne i32 %and327, 0
  %181 = and i1 %tobool104.not, %tobool328.not
  br i1 %181, label %if.then331, label %if.else324.if.end332_crit_edge

if.else324.if.end332_crit_edge:                   ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end332

if.then331:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.49) #17
  br label %if.end332

if.end332:                                        ; preds = %if.then331, %if.else324.if.end332_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %call333 = call i32 @reiserfs_lookup_privroot(ptr noundef %s) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %lor.lhs.false335, label %if.end332.if.then339_crit_edge

if.end332.if.then339_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then339

lor.lhs.false335:                                 ; preds = %if.end332
  %182 = ptrtoint ptr %s_flags.i583 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %s_flags.i583, align 4
  %call337 = call i32 @reiserfs_xattr_init(ptr noundef %s, i32 noundef %183) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %if.end342, label %lor.lhs.false335.if.then339_crit_edge

lor.lhs.false335.if.then339_crit_edge:            ; preds = %lor.lhs.false335
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then339

if.then339:                                       ; preds = %lor.lhs.false335.if.then339_crit_edge, %if.end332.if.then339_crit_edge
  %errval.1 = phi i32 [ %call333, %if.end332.if.then339_crit_edge ], [ %call337, %lor.lhs.false335.if.then339_crit_edge ]
  %184 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %185) #17
  %186 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %s_root, align 64
  br label %if.then356

if.end342:                                        ; preds = %lor.lhs.false335
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_write_lock(ptr noundef %s) #17
  br label %if.end343

if.end343:                                        ; preds = %if.end342, %if.end322
  %187 = ptrtoint ptr %s_hash_function to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %s_hash_function, align 8
  %cmp.i603 = icmp eq ptr %188, @keyed_hash
  br i1 %cmp.i603, label %if.end343.function2code.exit_crit_edge, label %if.end.i604

if.end343.function2code.exit_crit_edge:           ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #19
  br label %function2code.exit

if.end.i604:                                      ; preds = %if.end343
  %cmp1.i = icmp eq ptr %188, @yura_hash
  br i1 %cmp1.i, label %if.end.i604.function2code.exit_crit_edge, label %if.end3.i

if.end.i604.function2code.exit_crit_edge:         ; preds = %if.end.i604
  call void @__sanitizer_cov_trace_pc() #19
  br label %function2code.exit

if.end3.i:                                        ; preds = %if.end.i604
  %cmp4.i = icmp eq ptr %188, @r5_hash
  br i1 %cmp4.i, label %if.end3.i.function2code.exit_crit_edge, label %do.body.i

if.end3.i.function2code.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %function2code.exit

do.body.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1879, 0\0A.popsection", ""() #17, !srcloc !481
  unreachable

function2code.exit:                               ; preds = %if.end3.i.function2code.exit_crit_edge, %if.end.i604.function2code.exit_crit_edge, %if.end343.function2code.exit_crit_edge
  %retval.0.i = phi i32 [ 16777216, %if.end343.function2code.exit_crit_edge ], [ 33554432, %if.end.i604.function2code.exit_crit_edge ], [ 50331648, %if.end3.i.function2code.exit_crit_edge ]
  %s_hash_function_code = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %56, i32 0, i32 10
  %189 = ptrtoint ptr %s_hash_function_code to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 %retval.0.i, ptr %s_hash_function_code, align 1
  call fastcc void @handle_attrs(ptr noundef %s)
  %call347 = call i32 @reiserfs_proc_info_init(ptr noundef %s) #17
  %s_wait = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 13
  call void @__init_waitqueue_head(ptr noundef %s_wait, ptr noundef nonnull @.str.51, ptr noundef nonnull @reiserfs_fill_super.__key.50) #17
  %bitmap_lock = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 30
  call void @__raw_spin_lock_init(ptr noundef %bitmap_lock, ptr noundef nonnull @.str.53, ptr noundef nonnull @reiserfs_fill_super.__key.52, i16 noundef signext 3) #17
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  br label %cleanup

error:                                            ; preds = %if.then309, %if.then245, %if.then216, %if.end206.error_crit_edge, %if.end205
  %errval.2 = phi i32 [ -22, %if.then216 ], [ %call243, %if.then245 ], [ %call307, %if.then309 ], [ -22, %if.end206.error_crit_edge ], [ -117, %if.end205 ]
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  br label %if.then356

if.then356:                                       ; preds = %error, %if.then339, %if.then319, %if.then187, %if.then185.if.then356_crit_edge, %if.end165.if.then356_crit_edge, %if.then163, %if.then161.if.then356_crit_edge
  %errval.3 = phi i32 [ -22, %if.then185.if.then356_crit_edge ], [ -22, %if.then187 ], [ -22, %if.end165.if.then356_crit_edge ], [ -22, %if.then161.if.then356_crit_edge ], [ -22, %if.then163 ], [ %errval.2, %error ], [ %errval.1, %if.then339 ], [ %errval.0, %if.then319 ]
  call void @reiserfs_write_lock(ptr noundef %s) #17
  %call357 = call i32 @journal_release_error(ptr noundef null, ptr noundef %s) #17
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %if.then155, %if.then153.if.end358_crit_edge, %if.then101, %if.then99.if.end358_crit_edge, %if.then84, %if.then82.if.end358_crit_edge, %if.then69, %if.then67.if.end358_crit_edge, %if.then59, %if.then57.if.end358_crit_edge, %if.then51, %if.then49.if.end358_crit_edge, %if.end37.if.end358_crit_edge, %if.then35
  %errval.3614.ph = phi i32 [ -22, %if.then153.if.end358_crit_edge ], [ -22, %if.then155 ], [ %call97, %if.then99.if.end358_crit_edge ], [ %call97, %if.then101 ], [ -22, %if.then84 ], [ -22, %if.then67.if.end358_crit_edge ], [ -22, %if.then69 ], [ -22, %if.then57.if.end358_crit_edge ], [ -22, %if.then59 ], [ -22, %if.then49.if.end358_crit_edge ], [ -22, %if.then51 ], [ -22, %if.end37.if.end358_crit_edge ], [ -12, %if.then35 ], [ -22, %if.then82.if.end358_crit_edge ], [ %errval.3, %if.then356 ]
  %190 = ptrtoint ptr %commit_wq to i32
  call void @__asan_load4_noabort(i32 %190)
  %.pr = load ptr, ptr %commit_wq, align 8
  %tobool360.not = icmp eq ptr %.pr, null
  br i1 %tobool360.not, label %if.end358.if.end363_crit_edge, label %if.then361

if.end358.if.end363_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end363

if.then361:                                       ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #19
  call void @destroy_workqueue(ptr noundef nonnull %.pr) #17
  br label %if.end363

if.end363:                                        ; preds = %if.then361, %if.end358.if.end363_crit_edge, %if.then33.if.end363_crit_edge
  %errval.3614617 = phi i32 [ %errval.3614.ph, %if.then361 ], [ %errval.3614.ph, %if.end358.if.end363_crit_edge ], [ -12, %if.then33.if.end363_crit_edge ]
  %191 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %s_fs_info, align 16
  %old_work_lock.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %192, i32 0, i32 36
  call void @_raw_spin_lock(ptr noundef %old_work_lock.i) #17
  %work_queued.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %192, i32 0, i32 34
  %193 = ptrtoint ptr %work_queued.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 2, ptr %work_queued.i, align 4
  call void @_raw_spin_unlock(ptr noundef %old_work_lock.i) #17
  %194 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %s_fs_info, align 16
  %old_work.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %195, i32 0, i32 35
  %call3.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %old_work.i) #17
  call void @reiserfs_free_bitmap_cache(ptr noundef %s) #17
  %196 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %s_fs_info, align 16
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %tobool366.not = icmp eq ptr %199, null
  br i1 %tobool366.not, label %if.end363.if.end370_crit_edge, label %brelse.exit

if.end363.if.end370_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end370

brelse.exit:                                      ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #19
  call void @__brelse(ptr noundef nonnull %199) #17
  br label %if.end370

if.end370:                                        ; preds = %brelse.exit, %if.end363.if.end370_crit_edge
  %200 = ptrtoint ptr %qf_names to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %qf_names, align 8
  call void @kfree(ptr noundef %201) #17
  %arrayidx373.1 = getelementptr inbounds [2 x ptr], ptr %qf_names, i32 0, i32 1
  %202 = ptrtoint ptr %arrayidx373.1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx373.1, align 4
  call void @kfree(ptr noundef %203) #17
  %s_jdev374 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %call7.i.i, i32 0, i32 39
  %204 = ptrtoint ptr %s_jdev374 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %s_jdev374, align 4
  call void @kfree(ptr noundef %205) #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  %206 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end370, %function2code.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %errval.3614617, %if.end370 ], [ 0, %function2code.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qfmt) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qf_names) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jdev_name) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %commit_max_age) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_init_alloc_options(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_old_commits(ptr noundef %work) #2 align 64 {
entry:
  %th.i = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_journal = getelementptr i8, ptr %work, i32 -804
  %0 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_journal, align 4
  %j_work_sb = getelementptr inbounds %struct.reiserfs_journal, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %j_work_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_work_sb, align 8
  %s_umount = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 14
  %call = tail call i32 @down_read_trylock(ptr noundef %s_umount) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %old_work_lock = getelementptr i8, ptr %work, i32 100
  tail call void @_raw_spin_lock(ptr noundef %old_work_lock) #17
  %work_queued = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %work_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %work_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %6 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 100) #17
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %old_work_lock) #17
  br label %cleanup

if.end4:                                          ; preds = %entry
  br i1 %cmp, label %if.then8, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %work_queued, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %old_work_lock) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i) #17
  %8 = call ptr @memset(ptr %th.i, i32 255, i32 36)
  %call.i25 = tail call i32 @dquot_writeback_dquots(ptr noundef %3, i32 noundef -1) #17
  tail call void @reiserfs_write_lock(ptr noundef %3) #17
  %call1.i = call i32 @journal_begin(ptr noundef nonnull %th.i, ptr noundef %3, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end10.reiserfs_sync_fs.exit_crit_edge

if.end10.reiserfs_sync_fs.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %reiserfs_sync_fs.exit

if.then.i:                                        ; preds = %if.end10
  %call2.i = call i32 @journal_end_sync(ptr noundef nonnull %th.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.reiserfs_sync_fs.exit_crit_edge

if.then.i.reiserfs_sync_fs.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %reiserfs_sync_fs.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_flush_old_commits(ptr noundef %3) #17
  br label %reiserfs_sync_fs.exit

reiserfs_sync_fs.exit:                            ; preds = %if.then4.i, %if.then.i.reiserfs_sync_fs.exit_crit_edge, %if.end10.reiserfs_sync_fs.exit_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i) #17
  call void @up_read(ptr noundef %s_umount) #17
  br label %cleanup

cleanup:                                          ; preds = %reiserfs_sync_fs.exit, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reiserfs_parse_options(ptr noundef %s, ptr noundef %options, ptr noundef %mount_options, ptr nocapture noundef writeonly %blocks, ptr noundef %jdev_name, ptr nocapture noundef writeonly %commit_max_age, ptr nocapture noundef %qf_names, ptr nocapture noundef %qfmt) unnamed_addr #2 align 64 {
entry:
  %opts = alloca [27 x %struct.opt_desc_t], align 4
  %p = alloca ptr, align 4
  %p22 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 540, ptr nonnull %opts) #17
  %0 = call ptr @memcpy(ptr %opts, ptr @__const.reiserfs_parse_options.opts, i32 540)
  %1 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %blocks, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup178_crit_edge, label %lor.lhs.false

entry.cleanup178_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup178

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup178_crit_edge, label %for.body.lr.ph

lor.lhs.false.cleanup178_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup178

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %tobool15.not.i = icmp eq ptr %mount_options, null
  %tobool48.not = icmp eq ptr %jdev_name, null
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  %s_dquot.i.i262 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 31
  %s_fs_info.i264 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %if.end151.for.body_crit_edge, %for.body.lr.ph
  %pos.0335 = phi ptr [ %options, %for.body.lr.ph ], [ %pos.1, %if.end151.for.body_crit_edge ]
  %arg.0334 = phi ptr [ null, %for.body.lr.ph ], [ %arg.1, %if.end151.for.body_crit_edge ]
  %call.i = call ptr @strchr(ptr noundef nonnull %pos.0335, i32 noundef 44) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %pos.1 = phi ptr [ null, %for.body.if.end.i_crit_edge ], [ %incdec.ptr.i, %if.then.i ]
  %call1.i = call i32 @strncmp(ptr noundef nonnull %pos.0335, ptr noundef nonnull dereferenceable(7) @.str.123, i32 noundef 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %5 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %opts, align 4
  %tobool8.not154.i = icmp eq ptr %6, null
  br i1 %tobool8.not154.i, label %for.cond.preheader.i.if.then31.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then31.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %pos.0335, i32 6
  %call4.i = call i32 @reiserfs_parse_alloc_options(ptr noundef %s, ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp ne i32 %call4.i, 0
  %..i = sext i1 %tobool5.not.i to i32
  br label %reiserfs_getopt.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %7 = phi ptr [ %17, %for.inc.i.for.body.i_crit_edge ], [ %6, %for.cond.preheader.i.for.body.i_crit_edge ]
  %opt.0155.i = phi ptr [ %incdec.ptr28.i, %for.inc.i.for.body.i_crit_edge ], [ %opts, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call11.i = call i32 @strlen(ptr noundef nonnull %7) #23
  %call12.i = call i32 @strncmp(ptr noundef nonnull %pos.0335, ptr noundef nonnull %7, i32 noundef %call11.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %for.inc.i

if.then14.i:                                      ; preds = %for.body.i
  br i1 %tobool15.not.i, label %if.then14.i.for.end.i_crit_edge, label %if.then16.i

if.then14.i.for.end.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

if.then16.i:                                      ; preds = %if.then14.i
  %clrmask.i = getelementptr inbounds %struct.opt_desc_t, ptr %opt.0155.i, i32 0, i32 4
  %8 = ptrtoint ptr %clrmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clrmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %9)
  %cmp.i = icmp eq i32 %9, 536870912
  br i1 %cmp.i, label %if.then17.i, label %if.else18.i

if.then17.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.125, ptr noundef nonnull %pos.0335) #17
  br label %if.end20.i

if.else18.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  %neg.i = xor i32 %9, -1
  %10 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mount_options, align 4
  %and.i = and i32 %11, %neg.i
  store i32 %and.i, ptr %mount_options, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else18.i, %if.then17.i
  %setmask.i = getelementptr inbounds %struct.opt_desc_t, ptr %opt.0155.i, i32 0, i32 3
  %12 = ptrtoint ptr %setmask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %setmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %13)
  %cmp21.i = icmp eq i32 %13, 536870912
  br i1 %cmp21.i, label %if.then22.i, label %if.else23.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.125, ptr noundef nonnull %pos.0335) #17
  br label %for.end.i

if.else23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mount_options, align 4
  %or.i = or i32 %15, %13
  store i32 %or.i, ptr %mount_options, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr28.i = getelementptr %struct.opt_desc_t, ptr %opt.0155.i, i32 1
  %16 = ptrtoint ptr %incdec.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %incdec.ptr28.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %for.inc.i.if.then31.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.if.then31.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31.i

for.end.i:                                        ; preds = %if.else23.i, %if.then22.i, %if.then14.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %opt.0155.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load ptr, ptr %opt.0155.i, align 4
  %tobool30.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool30.not.i, label %for.end.i.if.then31.i_crit_edge, label %if.end32.i

for.end.i.if.then31.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31.i

if.then31.i:                                      ; preds = %for.end.i.if.then31.i_crit_edge, %for.inc.i.if.then31.i_crit_edge, %for.cond.preheader.i.if.then31.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.128, ptr noundef nonnull %pos.0335) #17
  br label %cleanup178

if.end32.i:                                       ; preds = %for.end.i
  %call34.i = call i32 @strlen(ptr noundef nonnull %.pr.i) #23
  %add.ptr35.i = getelementptr i8, ptr %pos.0335, i32 %call34.i
  %19 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr35.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.234)
  switch i8 %20, label %sw.default.i [
    i8 61, label %sw.bb.i
    i8 0, label %sw.bb40.i
  ]

sw.bb.i:                                          ; preds = %if.end32.i
  %arg_required.i = getelementptr inbounds %struct.opt_desc_t, ptr %opt.0155.i, i32 0, i32 1
  %22 = ptrtoint ptr %arg_required.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arg_required.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool36.not.i = icmp eq i32 %23, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then37.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.130, ptr noundef nonnull %.pr.i) #17
  br label %cleanup178

sw.bb40.i:                                        ; preds = %if.end32.i
  %arg_required41.i = getelementptr inbounds %struct.opt_desc_t, ptr %opt.0155.i, i32 0, i32 1
  %24 = ptrtoint ptr %arg_required41.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arg_required41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool42.not.i = icmp eq i32 %25, 0
  br i1 %tobool42.not.i, label %sw.bb40.i.sw.epilog.i_crit_edge, label %if.then43.i

sw.bb40.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then43.i:                                      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.131, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.132, ptr noundef nonnull %.pr.i) #17
  br label %cleanup178

sw.default.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.134, ptr noundef nonnull %.pr.i) #17
  br label %cleanup178

sw.epilog.i:                                      ; preds = %sw.bb40.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %incdec.ptr47.i = getelementptr i8, ptr %add.ptr35.i, i32 1
  %arg_required48.i = getelementptr inbounds %struct.opt_desc_t, ptr %opt.0155.i, i32 0, i32 1
  %26 = ptrtoint ptr %arg_required48.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arg_required48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %land.lhs.true53.i, label %sw.epilog.i.if.end58.i_crit_edge

sw.epilog.i.if.end58.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58.i

land.lhs.true53.i:                                ; preds = %sw.epilog.i
  %29 = ptrtoint ptr %incdec.ptr47.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %char0.i = load i8, ptr %incdec.ptr47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool55.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %land.lhs.true53.i.if.end58.i_crit_edge

land.lhs.true53.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58.i

if.then56.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.136, ptr noundef nonnull %.pr.i) #17
  br label %cleanup178

if.end58.i:                                       ; preds = %land.lhs.true53.i.if.end58.i_crit_edge, %sw.epilog.i.if.end58.i_crit_edge
  %values.i = getelementptr inbounds %struct.opt_desc_t, ptr %opt.0155.i, i32 0, i32 2
  %30 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %values.i, align 4
  %tobool59.not.i = icmp eq ptr %31, null
  br i1 %tobool59.not.i, label %if.then60.i, label %for.cond65.preheader.i

for.cond65.preheader.i:                           ; preds = %if.end58.i
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool66.not156.i = icmp eq ptr %33, null
  br i1 %tobool66.not156.i, label %for.cond65.preheader.i.for.end84.i_crit_edge, label %for.cond65.preheader.i.for.body67.i_crit_edge

for.cond65.preheader.i.for.body67.i_crit_edge:    ; preds = %for.cond65.preheader.i
  br label %for.body67.i

for.cond65.preheader.i.for.end84.i_crit_edge:     ; preds = %for.cond65.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end84.i

if.then60.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #19
  %and62.i = and i32 %27, 2147483647
  br label %reiserfs_getopt.exit

for.body67.i:                                     ; preds = %for.inc82.i.for.body67.i_crit_edge, %for.cond65.preheader.i.for.body67.i_crit_edge
  %34 = phi ptr [ %44, %for.inc82.i.for.body67.i_crit_edge ], [ %33, %for.cond65.preheader.i.for.body67.i_crit_edge ]
  %arg.0157.i = phi ptr [ %incdec.ptr83.i, %for.inc82.i.for.body67.i_crit_edge ], [ %31, %for.cond65.preheader.i.for.body67.i_crit_edge ]
  %call69.i = call i32 @strcmp(ptr noundef %incdec.ptr47.i, ptr noundef nonnull %34) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %for.inc82.i

if.then71.i:                                      ; preds = %for.body67.i
  br i1 %tobool15.not.i, label %if.then71.i.if.end79.i_crit_edge, label %if.then73.i

if.then71.i.if.end79.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79.i

if.then73.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #19
  %clrmask74.i = getelementptr inbounds %struct.arg_desc_t, ptr %arg.0157.i, i32 0, i32 2
  %35 = ptrtoint ptr %clrmask74.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clrmask74.i, align 4
  %neg75.i = xor i32 %36, -1
  %37 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mount_options, align 4
  %and76.i = and i32 %38, %neg75.i
  store i32 %and76.i, ptr %mount_options, align 4
  %setmask77.i = getelementptr inbounds %struct.arg_desc_t, ptr %arg.0157.i, i32 0, i32 1
  %39 = ptrtoint ptr %setmask77.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %setmask77.i, align 4
  %or78.i = or i32 %40, %and76.i
  store i32 %or78.i, ptr %mount_options, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then73.i, %if.then71.i.if.end79.i_crit_edge
  %41 = ptrtoint ptr %arg_required48.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arg_required48.i, align 4
  br label %reiserfs_getopt.exit

for.inc82.i:                                      ; preds = %for.body67.i
  %incdec.ptr83.i = getelementptr %struct.arg_desc_t, ptr %arg.0157.i, i32 1
  %43 = ptrtoint ptr %incdec.ptr83.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %incdec.ptr83.i, align 4
  %tobool66.not.i = icmp eq ptr %44, null
  br i1 %tobool66.not.i, label %for.inc82.i.for.end84.i_crit_edge, label %for.inc82.i.for.body67.i_crit_edge

for.inc82.i.for.body67.i_crit_edge:               ; preds = %for.inc82.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body67.i

for.inc82.i.for.end84.i_crit_edge:                ; preds = %for.inc82.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end84.i

for.end84.i:                                      ; preds = %for.inc82.i.for.end84.i_crit_edge, %for.cond65.preheader.i.for.end84.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.reiserfs_getopt, ptr noundef nonnull @.str.137, ptr noundef %incdec.ptr47.i, ptr noundef nonnull %.pr.i) #17
  br label %cleanup178

reiserfs_getopt.exit:                             ; preds = %if.end79.i, %if.then60.i, %if.then3.i
  %arg.1 = phi ptr [ %arg.0334, %if.then3.i ], [ %incdec.ptr47.i, %if.then60.i ], [ %arg.0334, %if.end79.i ]
  %retval.0.i = phi i32 [ %..i, %if.then3.i ], [ %and62.i, %if.then60.i ], [ %42, %if.end79.i ]
  %45 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %retval.0.i, label %if.end54 [
    i32 -1, label %reiserfs_getopt.exit.cleanup178_crit_edge
    i32 114, label %if.then6
    i32 99, label %if.then21
    i32 119, label %if.then39
    i32 106, label %if.then43
  ]

reiserfs_getopt.exit.cleanup178_crit_edge:        ; preds = %reiserfs_getopt.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup178

if.then6:                                         ; preds = %reiserfs_getopt.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #17
  %46 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %p, align 4
  %call7 = call i32 @strcmp(ptr noundef %arg.1, ptr noundef nonnull dereferenceable(5) @.str.80) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %51 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %52 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %50, %sh_prom.i
  %conv = trunc i64 %shr.i to i32
  %53 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv, ptr %blocks, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then6
  %call11 = call i32 @simple_strtoul(ptr noundef %arg.1, ptr noundef nonnull %p, i32 noundef 0) #17
  %54 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call11, ptr %blocks, align 4
  %55 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp13.not = icmp eq i8 %58, 0
  br i1 %cmp13.not, label %if.else.cleanup_crit_edge, label %if.then15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.82, ptr noundef %arg.1) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #17
  br label %cleanup178

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #17
  br label %if.end151

if.then21:                                        ; preds = %reiserfs_getopt.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p22) #17
  %59 = ptrtoint ptr %p22 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %p22, align 4
  %call23 = call i32 @simple_strtoul(ptr noundef %arg.1, ptr noundef nonnull %p22, i32 noundef 0) #17
  %60 = ptrtoint ptr %p22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p22, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp25.not = icmp ne i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp28 = icmp eq i32 %call23, -1
  %or.cond = select i1 %cmp25.not, i1 true, i1 %cmp28
  br i1 %or.cond, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.84, ptr noundef %arg.1) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p22) #17
  br label %cleanup178

if.end31:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  %64 = ptrtoint ptr %commit_max_age to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call23, ptr %commit_max_age, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p22) #17
  br label %if.end151

if.then39:                                        ; preds = %reiserfs_getopt.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.86) #17
  br label %cleanup178

if.then43:                                        ; preds = %reiserfs_getopt.exit
  %tobool44.not = icmp eq ptr %arg.1, null
  br i1 %tobool44.not, label %if.then43.if.end151_crit_edge, label %land.lhs.true

if.then43.if.end151_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151

land.lhs.true:                                    ; preds = %if.then43
  %65 = ptrtoint ptr %arg.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arg.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool46.not = icmp eq i8 %66, 0
  %or.cond253 = or i1 %tobool48.not, %tobool46.not
  br i1 %or.cond253, label %land.lhs.true.if.end151_crit_edge, label %if.then49

land.lhs.true.if.end151_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151

if.then49:                                        ; preds = %land.lhs.true
  %67 = ptrtoint ptr %jdev_name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %jdev_name, align 4
  %tobool50.not = icmp eq ptr %68, null
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.88, ptr noundef nonnull %68) #17
  br label %cleanup178

if.end52:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %jdev_name to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arg.1, ptr %jdev_name, align 4
  br label %if.end151

if.end54:                                         ; preds = %reiserfs_getopt.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 117, i32 %retval.0.i)
  %cmp55 = icmp eq i32 %retval.0.i, 117
  %70 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %retval.0.i, label %if.end54.if.end151_crit_edge [
    i32 117, label %if.end54.if.then60_crit_edge
    i32 103, label %if.end54.if.then60_crit_edge580
    i32 102, label %if.then132
  ]

if.end54.if.then60_crit_edge580:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then60

if.end54.if.then60_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then60

if.end54.if.end151_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151

if.then60:                                        ; preds = %if.end54.if.then60_crit_edge, %if.end54.if.then60_crit_edge580
  %not.cmp55 = xor i1 %cmp55, true
  %cond = zext i1 %not.cmp55 to i32
  %71 = ptrtoint ptr %s_dquot.i.i262 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_dquot.i.i262, align 8
  %and2.i.i = and i32 %72, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool64.not = icmp eq i32 %and2.i.i, 0
  br i1 %tobool64.not, label %if.then60.if.end74_crit_edge, label %land.lhs.true65

if.then60.if.end74_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

land.lhs.true65:                                  ; preds = %if.then60
  %73 = ptrtoint ptr %arg.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arg.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool66.not = icmp ne i8 %74, 0
  %75 = ptrtoint ptr %s_fs_info.i264 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_fs_info.i264, align 16
  %arrayidx = getelementptr %struct.reiserfs_sb_info, ptr %76, i32 0, i32 37, i32 %cond
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %tobool68.not = icmp eq ptr %78, null
  %cmp71.not = xor i1 %tobool66.not, %tobool68.not
  br i1 %cmp71.not, label %land.lhs.true65.if.end74_crit_edge, label %if.then73

land.lhs.true65.if.end74_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then73:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.90) #17
  br label %cleanup178

if.end74:                                         ; preds = %land.lhs.true65.if.end74_crit_edge, %if.then60.if.end74_crit_edge
  %arrayidx75 = getelementptr ptr, ptr %qf_names, i32 %cond
  %79 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx75, align 4
  %81 = ptrtoint ptr %s_fs_info.i264 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i264, align 16
  %arrayidx78 = getelementptr %struct.reiserfs_sb_info, ptr %82, i32 0, i32 37, i32 %cond
  %83 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx78, align 4
  %cmp79.not = icmp eq ptr %80, %84
  br i1 %cmp79.not, label %if.end74.if.end83_crit_edge, label %if.then81

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %80) #17
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end74.if.end83_crit_edge
  %85 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx75, align 4
  %86 = ptrtoint ptr %arg.1 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arg.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool85.not = icmp eq i8 %87, 0
  br i1 %tobool85.not, label %if.else118, label %if.then86

if.then86:                                        ; preds = %if.end83
  %88 = ptrtoint ptr %s_fs_info.i264 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i264, align 16
  %arrayidx89 = getelementptr %struct.reiserfs_sb_info, ptr %89, i32 0, i32 37, i32 %cond
  %90 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx89, align 4
  %tobool90.not = icmp eq ptr %91, null
  br i1 %tobool90.not, label %if.then86.if.end101_crit_edge, label %land.lhs.true91

if.then86.if.end101_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

land.lhs.true91:                                  ; preds = %if.then86
  %call95 = call i32 @strcmp(ptr noundef nonnull %91, ptr noundef %arg.1) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true91.if.end101_crit_edge, label %if.then97

land.lhs.true91.if.end101_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then97:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #19
  %cond100 = select i1 %cmp55, ptr @.str.93, ptr @.str.94
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.92, ptr noundef nonnull %cond100) #17
  br label %cleanup178

if.end101:                                        ; preds = %land.lhs.true91.if.end101_crit_edge, %if.then86.if.end101_crit_edge
  %call102 = call ptr @strchr(ptr noundef %arg.1, i32 noundef 47)
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.96) #17
  br label %cleanup178

if.end105:                                        ; preds = %if.end101
  %call106 = call noalias ptr @kstrdup(ptr noundef %arg.1, i32 noundef 3264) #17
  %92 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call106, ptr %arrayidx75, align 4
  %tobool109.not = icmp eq ptr %call106, null
  br i1 %tobool109.not, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.98) #17
  br label %cleanup178

if.end111:                                        ; preds = %if.end105
  %93 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mount_options, align 4
  br i1 %cmp55, label %if.then114, label %if.else115

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %94, 8388608
  %95 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or, ptr %mount_options, align 4
  br label %if.end151

if.else115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  %or116 = or i32 %94, 16777216
  %96 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or116, ptr %mount_options, align 4
  br label %if.end151

if.else118:                                       ; preds = %if.end83
  %97 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mount_options, align 4
  br i1 %cmp55, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #19
  %and = and i32 %98, -8388609
  %99 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and, ptr %mount_options, align 4
  br label %if.end151

if.else122:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #19
  %and123 = and i32 %98, -16777217
  %100 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and123, ptr %mount_options, align 4
  br label %if.end151

if.then132:                                       ; preds = %if.end54
  %call133 = call i32 @strcmp(ptr noundef %arg.1, ptr noundef nonnull dereferenceable(7) @.str.99) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then132.if.end142_crit_edge, label %if.else136

if.then132.if.end142_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end142

if.else136:                                       ; preds = %if.then132
  %call137 = call i32 @strcmp(ptr noundef %arg.1, ptr noundef nonnull dereferenceable(6) @.str.100) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.else136.if.end142_crit_edge, label %if.else140

if.else136.if.end142_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end142

if.else140:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.102) #17
  br label %cleanup178

if.end142:                                        ; preds = %if.else136.if.end142_crit_edge, %if.then132.if.end142_crit_edge
  %storemerge = phi i32 [ 1, %if.then132.if.end142_crit_edge ], [ 2, %if.else136.if.end142_crit_edge ]
  %101 = ptrtoint ptr %qfmt to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %storemerge, ptr %qfmt, align 4
  %102 = ptrtoint ptr %s_dquot.i.i262 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_dquot.i.i262, align 8
  %and2.i.i263 = and i32 %103, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i263)
  %tobool144.not = icmp eq i32 %and2.i.i263, 0
  br i1 %tobool144.not, label %if.end142.if.end151_crit_edge, label %land.lhs.true145

if.end142.if.end151_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151

land.lhs.true145:                                 ; preds = %if.end142
  %104 = ptrtoint ptr %s_fs_info.i264 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i264, align 16
  %s_jquota_fmt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %105, i32 0, i32 38
  %106 = ptrtoint ptr %s_jquota_fmt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_jquota_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %107)
  %cmp147.not = icmp eq i32 %storemerge, %107
  br i1 %cmp147.not, label %land.lhs.true145.if.end151_crit_edge, label %if.then149

land.lhs.true145.if.end151_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151

if.then149:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.90) #17
  br label %cleanup178

if.end151:                                        ; preds = %land.lhs.true145.if.end151_crit_edge, %if.end142.if.end151_crit_edge, %if.else122, %if.then121, %if.else115, %if.then114, %if.end54.if.end151_crit_edge, %if.end52, %land.lhs.true.if.end151_crit_edge, %if.then43.if.end151_crit_edge, %if.end31, %cleanup
  %tobool2.not = icmp eq ptr %pos.1, null
  br i1 %tobool2.not, label %for.end, label %if.end151.for.body_crit_edge

if.end151.for.body_crit_edge:                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end151
  %s_fs_info.i265 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %108 = ptrtoint ptr %s_fs_info.i265 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i265, align 16
  %s_jquota_fmt153 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %109, i32 0, i32 38
  %110 = ptrtoint ptr %s_jquota_fmt153 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %s_jquota_fmt153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool154.not = icmp eq i32 %111, 0
  br i1 %tobool154.not, label %land.lhs.true155, label %for.end.if.end164_crit_edge

for.end.if.end164_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end164

land.lhs.true155:                                 ; preds = %for.end
  %112 = ptrtoint ptr %qfmt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %qfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool156.not = icmp eq i32 %113, 0
  br i1 %tobool156.not, label %land.lhs.true157, label %land.lhs.true155.if.end164_crit_edge

land.lhs.true155.if.end164_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end164

land.lhs.true157:                                 ; preds = %land.lhs.true155
  %114 = ptrtoint ptr %qf_names to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %qf_names, align 4
  %tobool159.not = icmp eq ptr %115, null
  br i1 %tobool159.not, label %lor.lhs.false160, label %land.lhs.true157.if.then163_crit_edge

land.lhs.true157.if.then163_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then163

lor.lhs.false160:                                 ; preds = %land.lhs.true157
  %arrayidx161 = getelementptr ptr, ptr %qf_names, i32 1
  %116 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx161, align 4
  %tobool162.not = icmp eq ptr %117, null
  br i1 %tobool162.not, label %lor.lhs.false160.if.end164_crit_edge, label %lor.lhs.false160.if.then163_crit_edge

lor.lhs.false160.if.then163_crit_edge:            ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then163

lor.lhs.false160.if.end164_crit_edge:             ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end164

if.then163:                                       ; preds = %lor.lhs.false160.if.then163_crit_edge, %land.lhs.true157.if.then163_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.104) #17
  br label %cleanup178

if.end164:                                        ; preds = %lor.lhs.false160.if.end164_crit_edge, %land.lhs.true155.if.end164_crit_edge, %for.end.if.end164_crit_edge
  %118 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mount_options, align 4
  %and165 = and i32 %119, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %land.lhs.true167, label %if.end164.lor.lhs.false170_crit_edge

if.end164.lor.lhs.false170_crit_edge:             ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false170

land.lhs.true167:                                 ; preds = %if.end164
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 31
  %120 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %s_dquot.i.i.i, align 8
  %and.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true167.lor.lhs.false170_crit_edge, label %land.lhs.true167.if.then176_crit_edge

land.lhs.true167.if.then176_crit_edge:            ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then176

land.lhs.true167.lor.lhs.false170_crit_edge:      ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %land.lhs.true167.lor.lhs.false170_crit_edge, %if.end164.lor.lhs.false170_crit_edge
  %and171 = and i32 %119, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %land.lhs.true173, label %lor.lhs.false170.cleanup178_crit_edge

lor.lhs.false170.cleanup178_crit_edge:            ; preds = %lor.lhs.false170
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup178

land.lhs.true173:                                 ; preds = %lor.lhs.false170
  %s_dquot.i.i.i266 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 31
  %122 = ptrtoint ptr %s_dquot.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_dquot.i.i.i266, align 8
  %and.i.i267 = and i32 %123, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i267)
  %tobool.i.i268.not = icmp eq i32 %and.i.i267, 0
  br i1 %tobool.i.i268.not, label %land.lhs.true173.cleanup178_crit_edge, label %land.lhs.true173.if.then176_crit_edge

land.lhs.true173.if.then176_crit_edge:            ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then176

land.lhs.true173.cleanup178_crit_edge:            ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup178

if.then176:                                       ; preds = %land.lhs.true173.if.then176_crit_edge, %land.lhs.true167.if.then176_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.reiserfs_parse_options, ptr noundef nonnull @.str.106) #17
  br label %cleanup178

cleanup178:                                       ; preds = %if.then176, %land.lhs.true173.cleanup178_crit_edge, %lor.lhs.false170.cleanup178_crit_edge, %if.then163, %if.then149, %if.else140, %if.then110, %if.then104, %if.then97, %if.then73, %if.then51, %if.then39, %if.then30, %if.then15, %reiserfs_getopt.exit.cleanup178_crit_edge, %for.end84.i, %if.then56.i, %sw.default.i, %if.then43.i, %if.then37.i, %if.then31.i, %lor.lhs.false.cleanup178_crit_edge, %entry.cleanup178_crit_edge
  %retval.7 = phi i32 [ 0, %if.then39 ], [ 0, %if.then51 ], [ 0, %if.else140 ], [ 0, %if.then149 ], [ 0, %if.then30 ], [ 0, %if.then176 ], [ 0, %if.then163 ], [ 1, %lor.lhs.false.cleanup178_crit_edge ], [ 1, %entry.cleanup178_crit_edge ], [ 0, %if.then15 ], [ 0, %if.then110 ], [ 0, %if.then104 ], [ 0, %if.then97 ], [ 0, %if.then73 ], [ 1, %land.lhs.true173.cleanup178_crit_edge ], [ 1, %lor.lhs.false170.cleanup178_crit_edge ], [ 0, %sw.default.i ], [ 0, %if.then43.i ], [ 0, %for.end84.i ], [ 0, %if.then56.i ], [ 0, %if.then37.i ], [ 0, %if.then31.i ], [ 0, %reiserfs_getopt.exit.cleanup178_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %opts) #17
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_super_block(ptr noundef %s, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %div = udiv i32 %offset, %1
  %conv = zext i32 %div to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %3, i64 noundef %conv, i32 noundef %1, i32 noundef 8) #17
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %s_id = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %div2 = udiv i32 %offset, %5
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.read_super_block, ptr noundef nonnull @.str.139, ptr noundef %s_id, i32 noundef %div2, i32 noundef %5) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %s_magic.i.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %7, i32 0, i32 8
  %call1.i.i = tail call i32 @strncmp(ptr noundef %s_magic.i.i, ptr noundef nonnull dereferenceable(9) @reiserfs_3_5_magic_string, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.brelse.exit122_crit_edge, label %lor.lhs.false.i

if.end.brelse.exit122_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit122

lor.lhs.false.i:                                  ; preds = %if.end
  %call1.i8.i = tail call i32 @strncmp(ptr noundef %s_magic.i.i, ptr noundef nonnull dereferenceable(10) @reiserfs_3_6_magic_string, i32 noundef 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool.not.i9.not.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool.not.i9.not.i, label %lor.lhs.false.i.brelse.exit122_crit_edge, label %is_any_reiserfs_magic_string.exit

lor.lhs.false.i.brelse.exit122_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit122

is_any_reiserfs_magic_string.exit:                ; preds = %lor.lhs.false.i
  %call1.i12.i = tail call i32 @strncmp(ptr noundef %s_magic.i.i, ptr noundef nonnull dereferenceable(10) @reiserfs_jr_magic_string, i32 noundef 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i.not = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i.not, label %is_any_reiserfs_magic_string.exit.brelse.exit122_crit_edge, label %brelse.exit

is_any_reiserfs_magic_string.exit.brelse.exit122_crit_edge: ; preds = %is_any_reiserfs_magic_string.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit122

brelse.exit:                                      ; preds = %is_any_reiserfs_magic_string.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__brelse(ptr noundef nonnull %call.i) #17
  br label %cleanup

brelse.exit122:                                   ; preds = %is_any_reiserfs_magic_string.exit.brelse.exit122_crit_edge, %lor.lhs.false.i.brelse.exit122_crit_edge, %if.end.brelse.exit122_crit_edge
  %s_blocksize8 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %s_blocksize8 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %s_blocksize8, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv9 = zext i16 %10 to i32
  tail call void @__brelse(ptr noundef nonnull %call.i) #17
  %call10 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef %conv9) #17
  %11 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize, align 16
  %div12 = udiv i32 %offset, %12
  %conv13 = zext i32 %div12 to i64
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %call.i125 = tail call ptr @__bread_gfp(ptr noundef %14, i64 noundef %conv13, i32 noundef %12, i32 noundef 8) #17
  %tobool15.not = icmp eq ptr %call.i125, null
  br i1 %tobool15.not, label %if.then16, label %if.end22

if.then16:                                        ; preds = %brelse.exit122
  call void @__sanitizer_cov_trace_pc() #19
  %s_id17 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %15 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize, align 16
  %div20 = udiv i32 %offset, %16
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.read_super_block, ptr noundef nonnull @.str.139, ptr noundef %s_id17, i32 noundef %div20, i32 noundef %16) #17
  br label %cleanup

if.end22:                                         ; preds = %brelse.exit122
  %b_data23 = getelementptr inbounds %struct.buffer_head, ptr %call.i125, i32 0, i32 5
  %17 = ptrtoint ptr %b_data23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data23, align 4
  %s_blocksize25 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %s_blocksize25 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %s_blocksize25, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv26 = zext i16 %21 to i32
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv26)
  %cmp.not = icmp eq i32 %23, %conv26
  br i1 %cmp.not, label %if.end33, label %brelse.exit128

brelse.exit128:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %s_id30 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call.i125, i32 0, i32 3
  %24 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @__func__.read_super_block, ptr noundef nonnull @.str.142, ptr noundef %s_id30, i64 noundef %25, i32 noundef %23) #17
  tail call void @__brelse(ptr noundef nonnull %call.i125) #17
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %s_root_block = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %18, i32 0, i32 2
  %26 = ptrtoint ptr %s_root_block to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %s_root_block, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp35 = icmp eq i32 %27, -1
  br i1 %cmp35, label %brelse.exit131, label %if.end38

brelse.exit131:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__brelse(ptr noundef nonnull %call.i125) #17
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.143, ptr noundef nonnull @__func__.read_super_block, ptr noundef nonnull @.str.144) #17
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i125, ptr %29, align 4
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %s_rs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %18, ptr %s_rs, align 4
  %s_magic.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %18, i32 0, i32 8
  %call1.i = tail call i32 @strncmp(ptr noundef %s_magic.i, ptr noundef nonnull dereferenceable(10) @reiserfs_jr_magic_string, i32 noundef 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i133.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i133.not, label %if.then43, label %if.else61

if.then43:                                        ; preds = %if.end38
  %s_version = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %18, i32 0, i32 13
  %33 = ptrtoint ptr %s_version to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %s_version, align 1
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.237)
  switch i16 %34, label %if.else55 [
    i16 512, label %if.then48
    i16 0, label %if.then54
  ]

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.145) #17
  br label %if.end64

if.then54:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.146) #17
  br label %if.end64

if.else55:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  %36 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv45 = zext i16 %36 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.147, ptr noundef nonnull @__func__.read_super_block, ptr noundef nonnull @.str.148, i32 noundef %conv45) #17
  br label %cleanup

if.else61:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i135 = tail call i32 @strncmp(ptr noundef %s_magic.i, ptr noundef nonnull dereferenceable(9) @reiserfs_3_5_magic_string, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136.not = icmp eq i32 %call1.i135, 0
  %cond = select i1 %tobool.not.i136.not, ptr @.str.150, ptr @.str.151
  tail call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.149, ptr noundef nonnull %cond) #17
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then54, %if.then48
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %37 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @reiserfs_sops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 9
  %38 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @reiserfs_export_ops, ptr %s_export_op, align 16
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 8
  %39 = ptrtoint ptr %s_qcop to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @reiserfs_qctl_operations, ptr %s_qcop, align 4
  %dq_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 7
  %40 = ptrtoint ptr %dq_op to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @reiserfs_quota_operations, ptr %dq_op, align 8
  %s_quota_types = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 30
  %41 = ptrtoint ptr %s_quota_types to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %s_quota_types, align 8
  %42 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize, align 16
  %conv66 = zext i32 %43 to i64
  %sub = sub nuw nsw i64 2199023255552, %conv66
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 4
  %44 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %sub, ptr %s_maxbytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.else55, %brelse.exit131, %brelse.exit128, %if.then16, %brelse.exit, %if.then
  %retval.0 = phi i32 [ 1, %brelse.exit128 ], [ 1, %brelse.exit131 ], [ 0, %if.end64 ], [ 1, %if.else55 ], [ 1, %if.then16 ], [ 1, %brelse.exit ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_init_bitmap_cache(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reread_meta_blocks(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %1) #17
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.189, i32 noundef 354) #17
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.wait_on_buffer.exit_crit_edge, label %if.then.i

entry.wait_on_buffer.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__wait_on_buffer(ptr noundef %5) #17
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %entry.wait_on_buffer.exit_crit_edge
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %wait_on_buffer.exit.return_crit_edge

wait_on_buffer.exit.return_crit_edge:             ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.195, ptr noundef nonnull @__func__.reread_meta_blocks, ptr noundef nonnull @.str.196) #17
  br label %return

return:                                           ; preds = %if.then, %wait_on_buffer.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %wait_on_buffer.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_find_actor(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_init_locked_inode(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_read_locked_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inode_get_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hash_function(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %key.i.i = alloca %struct.cpu_key, align 8
  %path.i.i = alloca %struct.treepath, align 4
  %de.i.i = alloca %struct.reiserfs_dir_entry, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_rs.i, align 4
  %s_hash_function_code.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_hash_function_code.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %s_hash_function_code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #17
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key.i.i) #17
  %9 = call ptr @memset(ptr %key.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path.i.i) #17
  %10 = getelementptr inbounds i8, ptr %path.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 64)
  %12 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %path.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de.i.i) #17
  %13 = call ptr @memset(ptr %de.i.i, i32 255, i32 80)
  %s_root.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %14 = ptrtoint ptr %s_root.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_root.i.i, align 64
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i.i, align 8
  call void @make_cpu_key(ptr noundef nonnull %key.i.i, ptr noundef %17, i64 noundef -1, i32 noundef 3, i32 noundef 3) #17
  %call2.i.i = call i32 @search_by_entry_key(ptr noundef %s, ptr noundef nonnull %key.i.i, ptr noundef nonnull %path.i.i, ptr noundef nonnull %de.i.i) #17
  %18 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %call2.i.i, label %if.then.i.if.end5.i.i_crit_edge [
    i32 -2, label %if.then.i.find_hash_out.exit.i_crit_edge
    i32 0, label %if.then4.i.i
  ]

if.then.i.find_hash_out.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %find_hash_out.exit.i

if.then.i.if.end5.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %de_entry_num.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %de_entry_num.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %de_entry_num.i.i, align 4
  %dec.i.i = add i32 %20, -1
  store i32 %dec.i.i, ptr %de_entry_num.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.if.end5.i.i_crit_edge
  call void @set_de_name_and_namelen(ptr noundef nonnull %de.i.i) #17
  %de_deh.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %de_deh.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %de_deh.i.i, align 8
  %de_entry_num6.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %de_entry_num6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %de_entry_num6.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.reiserfs_de_head, ptr %22, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %26)
  %cmp7.i.i = icmp eq i32 %26, 33554432
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 3, i32 2
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.206) #17
  br label %find_hash_out.exit.i

if.end12.i.i:                                     ; preds = %if.end5.i.i
  %31 = and i32 %26, -2130706561
  %32 = call i32 @llvm.bswap.i32(i32 %31) #17
  %de_name.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %de_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %de_name.i.i, align 4
  %de_namelen.i.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %de_namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %de_namelen.i.i, align 8
  %call16.i.i = call i32 @r5_hash(ptr noundef %34, i32 noundef %36) #17
  %37 = and i32 %call16.i.i, 2147483520
  %38 = ptrtoint ptr %de_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %de_name.i.i, align 4
  %40 = ptrtoint ptr %de_namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %de_namelen.i.i, align 8
  %call22.i.i = call i32 @keyed_hash(ptr noundef %39, i32 noundef %41) #17
  %42 = and i32 %call22.i.i, 2147483520
  %43 = ptrtoint ptr %de_name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %de_name.i.i, align 4
  %45 = ptrtoint ptr %de_namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %de_namelen.i.i, align 8
  %call28.i.i = call i32 @yura_hash(ptr noundef %44, i32 noundef %46) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %37)
  %cmp32.i.i = icmp eq i32 %42, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %37)
  %cmp34.i.i = icmp eq i32 %32, %37
  %or.cond.i.i = select i1 %cmp32.i.i, i1 %cmp34.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end12.i.i.if.then47.i.i_crit_edge, label %lor.lhs.false.i.i

if.end12.i.i.if.then47.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then47.i.i

lor.lhs.false.i.i:                                ; preds = %if.end12.i.i
  %47 = and i32 %call28.i.i, 2147483520
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %47)
  %cmp36.i.i = icmp eq i32 %42, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %47)
  %cmp39.i.i = icmp eq i32 %32, %47
  %or.cond94.i.i = select i1 %cmp36.i.i, i1 %cmp39.i.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %47)
  %cmp42.i.i = icmp eq i32 %37, %47
  %or.cond95.i.i = select i1 %cmp42.i.i, i1 %cmp39.i.i, i1 false
  %or.cond96.i.i = select i1 %or.cond94.i.i, i1 true, i1 %or.cond95.i.i
  br i1 %or.cond96.i.i, label %lor.lhs.false.i.i.if.then47.i.i_crit_edge, label %if.end48.i.i

lor.lhs.false.i.i.if.then47.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then47.i.i

if.then47.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then47.i.i_crit_edge, %if.end12.i.i.if.then47.i.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.find_hash_out, ptr noundef nonnull @.str.208) #17
  br label %find_hash_out.exit.i

if.end48.i.i:                                     ; preds = %lor.lhs.false.i.i
  br i1 %cmp39.i.i, label %if.end48.i.i.find_hash_out.exit.i_crit_edge, label %if.else.i.i

if.end48.i.i.find_hash_out.exit.i_crit_edge:      ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %find_hash_out.exit.i

if.else.i.i:                                      ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %42)
  %cmp52.i.i = icmp eq i32 %32, %42
  %brmerge.i.i = select i1 %cmp52.i.i, i1 true, i1 %cmp34.i.i
  %.mux.i.i = select i1 %cmp52.i.i, i32 1, i32 3
  br i1 %brmerge.i.i, label %if.else.i.i.find_hash_out.exit.i_crit_edge, label %if.else59.i.i

if.else.i.i.find_hash_out.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %find_hash_out.exit.i

if.else59.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.find_hash_out, ptr noundef nonnull @.str.209) #17
  br label %find_hash_out.exit.i

find_hash_out.exit.i:                             ; preds = %if.else59.i.i, %if.else.i.i.find_hash_out.exit.i_crit_edge, %if.end48.i.i.find_hash_out.exit.i_crit_edge, %if.then47.i.i, %if.then8.i.i, %if.then.i.find_hash_out.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.then.i.find_hash_out.exit.i_crit_edge ], [ %spec.select.i.i, %if.then8.i.i ], [ 0, %if.then47.i.i ], [ 0, %if.else59.i.i ], [ 2, %if.end48.i.i.find_hash_out.exit.i_crit_edge ], [ %.mux.i.i, %if.else.i.i.find_hash_out.exit.i_crit_edge ]
  call void @pathrelse(ptr noundef nonnull %path.i.i) #17
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de.i.i) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path.i.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %find_hash_out.exit.i, %lor.lhs.false.i.if.end.i_crit_edge
  %code.0.i = phi i32 [ %retval.0.i.i, %find_hash_out.exit.i ], [ %6, %lor.lhs.false.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %code.0.i)
  %cmp3.not.i = icmp eq i32 %code.0.i, 0
  br i1 %cmp3.not.i, label %if.end.i.if.else37.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else37.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else37.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %48 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt5.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %s_mount_opt5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_mount_opt5.i, align 4
  %and6.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.else37.i_crit_edge, label %if.then8.i

land.lhs.true.i.if.else37.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else37.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  %and11.i = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.0.i)
  %cmp14.not.i = icmp eq i32 %code.0.i, 2
  %or.cond.i = select i1 %tobool12.not.i, i1 true, i1 %cmp14.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  %call16.i = call ptr @reiserfs_hashname(i32 noundef %code.0.i) #17
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.200, ptr noundef nonnull @__func__.what_hash, ptr noundef nonnull @.str.201, ptr noundef %call16.i) #17
  br label %return

if.else.i:                                        ; preds = %if.then8.i
  %and19.i = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %code.0.i)
  %cmp22.not.i = icmp eq i32 %code.0.i, 1
  %or.cond100.i = select i1 %tobool20.not.i, i1 true, i1 %cmp22.not.i
  br i1 %or.cond100.i, label %if.else25.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call24.i = call ptr @reiserfs_hashname(i32 noundef %code.0.i) #17
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.202, ptr noundef nonnull @__func__.what_hash, ptr noundef nonnull @.str.203, ptr noundef %call24.i) #17
  br label %return

if.else25.i:                                      ; preds = %if.else.i
  %and28.i = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else25.i.land.lhs.true60.i_crit_edge, label %land.lhs.true30.i

if.else25.i.land.lhs.true60.i_crit_edge:          ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true60.i

land.lhs.true30.i:                                ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %code.0.i)
  %cmp31.not.i = icmp eq i32 %code.0.i, 3
  br i1 %cmp31.not.i, label %land.lhs.true30.i.land.lhs.true60.i_crit_edge, label %if.then32.i

land.lhs.true30.i.land.lhs.true60.i_crit_edge:    ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true60.i

if.then32.i:                                      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #19
  %call33.i = call ptr @reiserfs_hashname(i32 noundef %code.0.i) #17
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.204, ptr noundef nonnull @__func__.what_hash, ptr noundef nonnull @.str.205, ptr noundef %call33.i) #17
  br label %return

if.else37.i:                                      ; preds = %land.lhs.true.i.if.else37.i_crit_edge, %if.end.i.if.else37.i_crit_edge
  %52 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt39.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %s_mount_opt39.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_mount_opt39.i, align 4
  %and40.i = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.else43.i, label %if.else37.i.land.lhs.true60.i_crit_edge

if.else37.i.land.lhs.true60.i_crit_edge:          ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true60.i

if.else43.i:                                      ; preds = %if.else37.i
  %and46.i = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else49.i, label %if.else43.i.land.lhs.true60.i_crit_edge

if.else43.i.land.lhs.true60.i_crit_edge:          ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true60.i

if.else49.i:                                      ; preds = %if.else43.i
  %and52.i = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp ne i32 %and52.i, 0
  %cmp3.not.not.i = xor i1 %cmp3.not.i, true
  %brmerge.i = select i1 %tobool53.not.i, i1 true, i1 %cmp3.not.not.i
  %.mux.i = select i1 %tobool53.not.i, i32 3, i32 %code.0.i
  br i1 %brmerge.i, label %if.else49.i.land.lhs.true60.i_crit_edge, label %if.else49.i.return_crit_edge

if.else49.i.return_crit_edge:                     ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.else49.i.land.lhs.true60.i_crit_edge:          ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true60.i

land.lhs.true60.i:                                ; preds = %if.else49.i.land.lhs.true60.i_crit_edge, %if.else43.i.land.lhs.true60.i_crit_edge, %if.else37.i.land.lhs.true60.i_crit_edge, %land.lhs.true30.i.land.lhs.true60.i_crit_edge, %if.else25.i.land.lhs.true60.i_crit_edge
  %code.1114.i = phi i32 [ %.mux.i, %if.else49.i.land.lhs.true60.i_crit_edge ], [ 1, %if.else43.i.land.lhs.true60.i_crit_edge ], [ 2, %if.else37.i.land.lhs.true60.i_crit_edge ], [ %code.0.i, %if.else25.i.land.lhs.true60.i_crit_edge ], [ 3, %land.lhs.true30.i.land.lhs.true60.i_crit_edge ]
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %56 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_flags.i.i, align 4
  %and.i109.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109.i)
  %tobool.i.not.i = icmp eq i32 %and.i109.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true62.i, label %land.lhs.true60.i.what_hash.exit_crit_edge

land.lhs.true60.i.what_hash.exit_crit_edge:       ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %what_hash.exit

land.lhs.true62.i:                                ; preds = %land.lhs.true60.i
  %58 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs64.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %s_rs64.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_rs64.i, align 4
  %s_hash_function_code66.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %s_hash_function_code66.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %s_hash_function_code66.i, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %code.1114.i, i32 %64)
  %cmp67.not.i = icmp eq i32 %code.1114.i, %64
  br i1 %cmp67.not.i, label %land.lhs.true62.i.what_hash.exit_crit_edge, label %if.then68.i

land.lhs.true62.i.what_hash.exit_crit_edge:       ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %what_hash.exit

if.then68.i:                                      ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #19
  %65 = call i32 @llvm.bswap.i32(i32 %code.1114.i) #17
  %66 = ptrtoint ptr %s_hash_function_code66.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %s_hash_function_code66.i, align 1
  br label %what_hash.exit

what_hash.exit:                                   ; preds = %if.then68.i, %land.lhs.true62.i.what_hash.exit_crit_edge, %land.lhs.true60.i.what_hash.exit_crit_edge
  %67 = zext i32 %code.1114.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %code.1114.i, label %what_hash.exit.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

what_hash.exit.return_crit_edge:                  ; preds = %what_hash.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb:                                            ; preds = %what_hash.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.197) #17
  br label %return

sw.bb1:                                           ; preds = %what_hash.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.198) #17
  br label %return

sw.bb2:                                           ; preds = %what_hash.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.199) #17
  br label %return

return:                                           ; preds = %sw.bb2, %sw.bb1, %sw.bb, %what_hash.exit.return_crit_edge, %if.else49.i.return_crit_edge, %if.then32.i, %if.then23.i, %if.then15.i
  %retval.0 = phi ptr [ @r5_hash, %sw.bb2 ], [ @yura_hash, %sw.bb1 ], [ @keyed_hash, %sw.bb ], [ null, %what_hash.exit.return_crit_edge ], [ null, %if.then15.i ], [ null, %if.then23.i ], [ null, %if.then32.i ], [ null, %if.else49.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_convert_objectid_map_v1(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_lookup_privroot(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_xattr_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_unfinished(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %th.i27 = alloca %struct.reiserfs_transaction_handle, align 4
  %key.i = alloca %struct.reiserfs_key, align 4
  %th.i15 = alloca %struct.reiserfs_transaction_handle, align 4
  %th.i7 = alloca %struct.reiserfs_transaction_handle, align 4
  %th.i = alloca %struct.reiserfs_transaction_handle, align 4
  %path = alloca %struct.treepath, align 4
  %max_cpu_key = alloca %struct.cpu_key, align 8
  %obj_key = alloca %struct.cpu_key, align 8
  %save_link_key = alloca %struct.reiserfs_key, align 4
  %last_inode_key = alloca %struct.reiserfs_key, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #17
  %0 = getelementptr inbounds i8, ptr %path, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %max_cpu_key) #17
  %3 = getelementptr inbounds i8, ptr %max_cpu_key, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %obj_key) #17
  %5 = call ptr @memset(ptr %obj_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %save_link_key) #17
  %6 = getelementptr inbounds %struct.reiserfs_key, ptr %save_link_key, i32 0, i32 1
  %7 = call ptr @memset(ptr %save_link_key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %last_inode_key) #17
  %version = getelementptr inbounds %struct.cpu_key, ptr %max_cpu_key, i32 0, i32 1
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %version, align 8
  %9 = ptrtoint ptr %max_cpu_key to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %max_cpu_key, align 8
  %k_objectid = getelementptr inbounds %struct.in_core_key, ptr %max_cpu_key, i32 0, i32 1
  %10 = ptrtoint ptr %k_objectid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %k_objectid, align 4
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %max_cpu_key, i32 0, i32 2
  %11 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 4294967295, ptr %k_offset.i, align 8
  %key_length = getelementptr inbounds %struct.cpu_key, ptr %max_cpu_key, i32 0, i32 2
  %12 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %key_length, align 4
  %13 = call ptr @memset(ptr %last_inode_key, i32 0, i32 16)
  %s_flags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags, align 4
  %and = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %15, 1073741824
  %16 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %s_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %s_dquot.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 31
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx4 = getelementptr %struct.reiserfs_sb_info, ptr %18, i32 0, i32 37, i32 0
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.then6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then6:                                         ; preds = %if.end
  %21 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %23 = and i32 %22, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %if.then6.for.inc_crit_edge, label %if.end10

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end10:                                         ; preds = %if.then6
  tail call void @reiserfs_write_unlock(ptr noundef %s) #17
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx.i = getelementptr %struct.reiserfs_sb_info, ptr %26, i32 0, i32 37, i32 0
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %s_jquota_fmt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %26, i32 0, i32 38
  %29 = ptrtoint ptr %s_jquota_fmt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_jquota_fmt.i, align 4
  %call2.i = tail call i32 @dquot_quota_on_mount(ptr noundef %s, ptr noundef %28, i32 noundef %30, i32 noundef 0) #17
  tail call void @reiserfs_write_lock(ptr noundef %s) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp12 = icmp slt i32 %call2.i, 0
  br i1 %cmp12, label %if.then13, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.210, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.211, i32 noundef %call2.i) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end10.for.inc_crit_edge, %if.then6.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %tobool120.not = phi i1 [ false, %if.then13 ], [ false, %if.end10.for.inc_crit_edge ], [ false, %if.end.for.inc_crit_edge ], [ true, %if.then6.for.inc_crit_edge ]
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx4.1 = getelementptr %struct.reiserfs_sb_info, ptr %32, i32 0, i32 37, i32 1
  %33 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx4.1, align 4
  %tobool5.not.1 = icmp eq ptr %34, null
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then6.1:                                       ; preds = %for.inc
  %35 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %37 = and i32 %36, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %if.then6.1.for.inc.1_crit_edge, label %if.end10.1

if.then6.1.for.inc.1_crit_edge:                   ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.end10.1:                                       ; preds = %if.then6.1
  tail call void @reiserfs_write_unlock(ptr noundef %s) #17
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx.i.1 = getelementptr %struct.reiserfs_sb_info, ptr %40, i32 0, i32 37, i32 1
  %41 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.1, align 4
  %s_jquota_fmt.i.1 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %40, i32 0, i32 38
  %43 = ptrtoint ptr %s_jquota_fmt.i.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_jquota_fmt.i.1, align 4
  %call2.i.1 = tail call i32 @dquot_quota_on_mount(ptr noundef %s, ptr noundef %42, i32 noundef %44, i32 noundef 1) #17
  tail call void @reiserfs_write_lock(ptr noundef %s) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %cmp12.1 = icmp slt i32 %call2.i.1, 0
  br i1 %cmp12.1, label %if.then13.1, label %if.end10.1.for.inc.1_crit_edge

if.end10.1.for.inc.1_crit_edge:                   ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then13.1:                                      ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.210, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.211, i32 noundef %call2.i.1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %if.end10.1.for.inc.1_crit_edge, %if.then6.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %tobool120.not.1 = phi i1 [ false, %if.then13.1 ], [ false, %if.end10.1.for.inc.1_crit_edge ], [ false, %for.inc.for.inc.1_crit_edge ], [ true, %if.then6.1.for.inc.1_crit_edge ]
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_is_unlinked_ok = getelementptr inbounds %struct.reiserfs_sb_info, ptr %46, i32 0, i32 26
  %47 = ptrtoint ptr %s_is_unlinked_ok to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %s_is_unlinked_ok, align 4
  %path_elements = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %k_objectid48 = getelementptr inbounds %struct.in_core_key, ptr %obj_key, i32 0, i32 1
  %k_offset = getelementptr inbounds %struct.in_core_key, ptr %obj_key, i32 0, i32 2
  %k_type = getelementptr inbounds %struct.in_core_key, ptr %obj_key, i32 0, i32 3
  %48 = getelementptr inbounds i8, ptr %key.i, i32 8
  %49 = getelementptr inbounds %struct.reiserfs_key, ptr %key.i, i32 0, i32 1
  %k_uniqueness.i47.i = getelementptr inbounds i8, ptr %key.i, i32 12
  br label %while.body

while.body:                                       ; preds = %cleanup106.while.body_crit_edge, %for.inc.1
  %done.046 = phi i32 [ 0, %for.inc.1 ], [ %done.1, %cleanup106.while.body_crit_edge ]
  %call18 = call i32 @search_by_key(ptr noundef %s, ptr noundef nonnull %max_cpu_key, ptr noundef nonnull %path, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %s, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.213, i32 noundef %call18) #17
  br label %while.end

if.end21:                                         ; preds = %while.body
  %50 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %path, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %51
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %51, i32 1
  %54 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pe_position, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %blk_nr_item, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %conv = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv)
  %cmp26.not = icmp eq i32 %55, %conv
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.215) #17
  br label %while.end

if.end29:                                         ; preds = %if.end21
  %dec = add i32 %55, -1
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 24
  %arrayidx.i5 = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %dec
  %61 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx.i5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp32.not = icmp eq i32 %62, -1
  br i1 %cmp32.not, label %if.end35, label %if.end29.while.end_crit_edge

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end35:                                         ; preds = %if.end29
  %63 = call ptr @memcpy(ptr %save_link_key, ptr %arrayidx.i5, i32 16)
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i5, i32 0, i32 4
  %64 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp.i.i.i = icmp eq i16 %65, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i5, i32 0, i32 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %67)
  %cond.i.i = icmp eq i32 %67, -16777217
  br label %is_indirect_le_ih.exit

if.else.i.i.i:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %68 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %u.i.i.i, align 1
  %70 = and i64 %69, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %70)
  %phi.cmp1.i.i = icmp eq i64 %70, 16
  br label %is_indirect_le_ih.exit

is_indirect_le_ih.exit:                           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.in.i.in.i.i = phi i1 [ %phi.cmp1.i.i, %if.else.i.i.i ], [ %cond.i.i, %if.then.i.i.i ]
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i5, i32 0, i32 3
  %71 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %ih_item_location.i, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72) #17
  %conv.i = zext i16 %73 to i32
  %add.ptr.i = getelementptr i8, ptr %57, i32 %conv.i
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %obj_key to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %obj_key, align 8
  %k_objectid46 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i5, i32 0, i32 1
  %78 = ptrtoint ptr %k_objectid46 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %k_objectid46, align 1
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %k_objectid48 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %k_objectid48, align 4
  %82 = ptrtoint ptr %k_offset to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 0, ptr %k_offset, align 8
  %83 = ptrtoint ptr %k_type to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %k_type, align 8
  call void @pathrelse(ptr noundef nonnull %path) #17
  %call51 = call ptr @reiserfs_iget(ptr noundef %s, ptr noundef nonnull %obj_key) #17
  %tobool.not.i = icmp eq ptr %call51, null
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then53, label %if.end55

if.then53:                                        ; preds = %is_indirect_le_ih.exit
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.216, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.217, ptr noundef nonnull %obj_key) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i) #17
  %84 = call ptr @memset(ptr %th.i, i32 255, i32 36)
  %call.i = call i32 @journal_begin(ptr noundef nonnull %th.i, ptr noundef %s, i32 noundef 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i6 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i6, label %if.end.i, label %if.then53.remove_save_link_only.exit_crit_edge

if.then53.remove_save_link_only.exit_crit_edge:   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_save_link_only.exit

if.end.i:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_delete_solid_item(ptr noundef nonnull %th.i, ptr noundef null, ptr noundef nonnull %save_link_key) #17
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %6, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #17
  call void @reiserfs_release_objectid(ptr noundef nonnull %th.i, i32 noundef %87) #17
  %call4.i = call i32 @journal_end(ptr noundef nonnull %th.i) #17
  br label %remove_save_link_only.exit

remove_save_link_only.exit:                       ; preds = %if.end.i, %if.then53.remove_save_link_only.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %if.then53.remove_save_link_only.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i) #17
  br label %cleanup106

if.end55:                                         ; preds = %is_indirect_le_ih.exit
  br i1 %retval.0.in.i.in.i.i, label %land.lhs.true65.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end55
  %88 = getelementptr inbounds %struct.inode, ptr %call51, i32 0, i32 12
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool57.not = icmp eq i32 %90, 0
  br i1 %tobool57.not, label %if.end74.critedge, label %if.then58

if.then58:                                        ; preds = %land.lhs.true
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.218, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.219, ptr noundef nonnull %obj_key) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i7) #17
  %91 = call ptr @memset(ptr %th.i7, i32 255, i32 36)
  %call.i8 = call i32 @journal_begin(ptr noundef nonnull %th.i7, ptr noundef %s, i32 noundef 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i9, label %if.end.i10, label %if.then58.remove_save_link_only.exit13_crit_edge

if.then58.remove_save_link_only.exit13_crit_edge: ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_save_link_only.exit13

if.end.i10:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_delete_solid_item(ptr noundef nonnull %th.i7, ptr noundef null, ptr noundef nonnull %save_link_key) #17
  %call4.i11 = call i32 @journal_end(ptr noundef nonnull %th.i7) #17
  br label %remove_save_link_only.exit13

remove_save_link_only.exit13:                     ; preds = %if.end.i10, %if.then58.remove_save_link_only.exit13_crit_edge
  %retval.0.i12 = phi i32 [ %call4.i11, %if.end.i10 ], [ %call.i8, %if.then58.remove_save_link_only.exit13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i7) #17
  br label %cleanup106

land.lhs.true65.critedge:                         ; preds = %if.end55
  %i_sb.c1 = getelementptr inbounds %struct.inode, ptr %call51, i32 0, i32 8
  %92 = ptrtoint ptr %i_sb.c1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb.c1, align 4
  %call61.c2 = call i32 @reiserfs_write_unlock_nested(ptr noundef %93) #17
  %call62.c3 = call i32 @dquot_initialize(ptr noundef nonnull %call51) #17
  %94 = ptrtoint ptr %i_sb.c1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb.c1, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %95, i32 noundef %call61.c2) #17
  %96 = ptrtoint ptr %call51 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %call51, align 8
  %98 = and i16 %97, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %98)
  %cmp68 = icmp eq i16 %98, 16384
  %add.ptr.i14 = getelementptr i8, ptr %call51, i32 -264
  br i1 %cmp68, label %if.then70, label %if.then76.critedge

if.then70:                                        ; preds = %land.lhs.true65.critedge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.220, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.221, ptr noundef %add.ptr.i14) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i15) #17
  %99 = call ptr @memset(ptr %th.i15, i32 255, i32 36)
  %call.i16 = call i32 @journal_begin(ptr noundef nonnull %th.i15, ptr noundef %s, i32 noundef 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end.i18, label %if.then70.remove_save_link_only.exit21_crit_edge

if.then70.remove_save_link_only.exit21_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_save_link_only.exit21

if.end.i18:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_delete_solid_item(ptr noundef nonnull %th.i15, ptr noundef null, ptr noundef nonnull %save_link_key) #17
  %call4.i19 = call i32 @journal_end(ptr noundef nonnull %th.i15) #17
  br label %remove_save_link_only.exit21

remove_save_link_only.exit21:                     ; preds = %if.end.i18, %if.then70.remove_save_link_only.exit21_crit_edge
  %retval.0.i20 = phi i32 [ %call4.i19, %if.end.i18 ], [ %call.i16, %if.then70.remove_save_link_only.exit21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i15) #17
  call void @iput(ptr noundef nonnull %call51) #17
  br label %cleanup106

if.end74.critedge:                                ; preds = %land.lhs.true
  %i_sb.c = getelementptr inbounds %struct.inode, ptr %call51, i32 0, i32 8
  %100 = ptrtoint ptr %i_sb.c to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb.c, align 4
  %call61.c = call i32 @reiserfs_write_unlock_nested(ptr noundef %101) #17
  %call62.c = call i32 @dquot_initialize(ptr noundef nonnull %call51) #17
  %102 = ptrtoint ptr %i_sb.c to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb.c, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %103, i32 noundef %call61.c) #17
  %add.ptr.i22 = getelementptr i8, ptr %call51, i32 -264
  %i_flags86 = getelementptr i8, ptr %call51, i32 -248
  %104 = ptrtoint ptr %i_flags86 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_flags86, align 8
  %or87 = or i32 %105, 16
  store i32 %or87, ptr %i_flags86, align 8
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.223, ptr noundef %add.ptr.i22) #17
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %last_inode_key, ptr noundef dereferenceable(16) %add.ptr.i22, i32 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool95.not = icmp eq i32 %bcmp, 0
  br i1 %tobool95.not, label %if.else100, label %if.then96

if.then76.critedge:                               ; preds = %land.lhs.true65.critedge
  %i_flags = getelementptr i8, ptr %call51, i32 -248
  %106 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_flags, align 8
  %or78 = or i32 %107, 32
  store i32 %or78, ptr %i_flags, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call51, i32 0, i32 14
  %108 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %i_size, align 8
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.222, ptr noundef %add.ptr.i14, i64 noundef %109) #17
  %call82 = call i32 @reiserfs_truncate_file(ptr noundef nonnull %call51, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i27) #17
  %110 = call ptr @memset(ptr %th.i27, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i) #17
  %111 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 -1, ptr %48, align 4
  %112 = ptrtoint ptr %i_sb.c1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_sb.c1, align 4
  %call.i28 = call i32 @journal_begin(ptr noundef nonnull %th.i27, ptr noundef %113, i32 noundef 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i31, label %if.then76.critedge.remove_save_link.exit_crit_edge

if.then76.critedge.remove_save_link.exit_crit_edge: ; preds = %if.then76.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %remove_save_link.exit

if.end.i31:                                       ; preds = %if.then76.critedge
  %114 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %key.i, align 4
  %k_objectid.i30 = getelementptr i8, ptr %call51, i32 -260
  %115 = ptrtoint ptr %k_objectid.i30 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %k_objectid.i30, align 4
  %117 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %49, align 4
  %118 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 16777216, ptr %48, align 4
  %119 = ptrtoint ptr %k_uniqueness.i47.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -16777217, ptr %k_uniqueness.i47.i, align 4
  %120 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_flags, align 8
  %and.i = and i32 %121, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end.i31.if.end27.i_crit_edge, label %if.else23.critedge.i

if.end.i31.if.end27.i_crit_edge:                  ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.else23.critedge.i:                             ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_delete_solid_item(ptr noundef nonnull %th.i27, ptr noundef null, ptr noundef nonnull %key.i) #17
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else23.critedge.i, %if.end.i31.if.end27.i_crit_edge
  %122 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %i_flags, align 8
  %and26.i = and i32 %123, -33
  store i32 %and26.i, ptr %i_flags, align 8
  %call28.i = call i32 @journal_end(ptr noundef nonnull %th.i27) #17
  br label %remove_save_link.exit

remove_save_link.exit:                            ; preds = %if.end27.i, %if.then76.critedge.remove_save_link.exit_crit_edge
  %retval.0.i32 = phi i32 [ %call28.i, %if.end27.i ], [ %call.i28, %if.then76.critedge.remove_save_link.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i27) #17
  br label %if.end103

if.then96:                                        ; preds = %if.end74.critedge
  call void @__sanitizer_cov_trace_pc() #19
  %124 = call ptr @memcpy(ptr %last_inode_key, ptr %add.ptr.i22, i32 16)
  br label %if.end103

if.else100:                                       ; preds = %if.end74.critedge
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.finish_unfinished, ptr noundef nonnull @.str.225) #17
  %call101 = call fastcc i32 @remove_save_link_only(ptr noundef %s, ptr noundef nonnull %save_link_key, i32 noundef 0)
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then96, %remove_save_link.exit
  %retval1.1 = phi i32 [ %retval.0.i32, %remove_save_link.exit ], [ 0, %if.then96 ], [ %call101, %if.else100 ]
  call void @iput(ptr noundef nonnull %call51) #17
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226) #22
  %inc105 = add i32 %done.046, 1
  br label %cleanup106

cleanup106:                                       ; preds = %if.end103, %remove_save_link_only.exit21, %remove_save_link_only.exit13, %remove_save_link_only.exit
  %done.1 = phi i32 [ %done.046, %remove_save_link_only.exit ], [ %done.046, %remove_save_link_only.exit21 ], [ %inc105, %if.end103 ], [ %done.046, %remove_save_link_only.exit13 ]
  %retval1.2 = phi i32 [ %retval.0.i, %remove_save_link_only.exit ], [ %retval.0.i20, %remove_save_link_only.exit21 ], [ %retval1.1, %if.end103 ], [ %retval.0.i12, %remove_save_link_only.exit13 ]
  %tobool17.not = icmp eq i32 %retval1.2, 0
  br i1 %tobool17.not, label %cleanup106.while.body_crit_edge, label %cleanup106.while.end_crit_edge

cleanup106.while.end_crit_edge:                   ; preds = %cleanup106
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

cleanup106.while.body_crit_edge:                  ; preds = %cleanup106
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %cleanup106.while.end_crit_edge, %if.end29.while.end_crit_edge, %if.then28, %if.then20
  %done.043 = phi i32 [ %done.046, %if.then28 ], [ %done.046, %if.then20 ], [ %done.1, %cleanup106.while.end_crit_edge ], [ %done.046, %if.end29.while.end_crit_edge ]
  %125 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %s_fs_info.i, align 16
  %s_is_unlinked_ok110 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %126, i32 0, i32 26
  %127 = ptrtoint ptr %s_is_unlinked_ok110 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %s_is_unlinked_ok110, align 4
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %arrayidx116 = getelementptr %struct.super_block, ptr %s, i32 0, i32 31, i32 2, i32 0
  %128 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx116, align 4
  %tobool117.not = icmp eq ptr %129, null
  %brmerge = or i1 %tobool117.not, %tobool120.not
  br i1 %brmerge, label %while.end.for.inc124_crit_edge, label %if.then121

while.end.for.inc124_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc124

if.then121:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %call122 = call i32 @dquot_quota_off(ptr noundef %s, i32 noundef 0) #17
  br label %for.inc124

for.inc124:                                       ; preds = %if.then121, %while.end.for.inc124_crit_edge
  %arrayidx116.1 = getelementptr %struct.super_block, ptr %s, i32 0, i32 31, i32 2, i32 1
  %130 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx116.1, align 4
  %tobool117.not.1 = icmp eq ptr %131, null
  %brmerge58 = or i1 %tobool117.not.1, %tobool120.not.1
  br i1 %brmerge58, label %for.inc124.for.inc124.1_crit_edge, label %if.then121.1

for.inc124.for.inc124.1_crit_edge:                ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc124.1

if.then121.1:                                     ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #19
  %call122.1 = call i32 @dquot_quota_off(ptr noundef %s, i32 noundef 1) #17
  br label %for.inc124.1

for.inc124.1:                                     ; preds = %if.then121.1, %for.inc124.for.inc124.1_crit_edge
  call void @reiserfs_write_lock(ptr noundef %s) #17
  br i1 %tobool.not, label %if.then128, label %for.inc124.1.if.end131_crit_edge

for.inc124.1.if.end131_crit_edge:                 ; preds = %for.inc124.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end131

if.then128:                                       ; preds = %for.inc124.1
  call void @__sanitizer_cov_trace_pc() #19
  %132 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %s_flags, align 4
  %and130 = and i32 %133, -1073741825
  store i32 %and130, ptr %s_flags, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %for.inc124.1.if.end131_crit_edge
  call void @pathrelse(ptr noundef nonnull %path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.043)
  %tobool132.not = icmp eq i32 %done.043, 0
  br i1 %tobool132.not, label %if.end131.if.end134_crit_edge, label %if.then133

if.end131.if.end134_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

if.then133:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.227, i32 noundef %done.043) #17
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end131.if.end134_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %last_inode_key) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %save_link_key) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %obj_key) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %max_cpu_key) #17
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_attrs(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_rs, align 4
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_properties, align 4
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.handle_attrs, ptr noundef nonnull @.str.229) #17
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %s_flags = getelementptr inbounds %struct.reiserfs_super_block, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %s_flags, align 1
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.handle_attrs, ptr noundef nonnull @.str.231) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11, %if.then5
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt7 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %s_mount_opt7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_mount_opt7, align 4
  %and14 = and i32 %14, -16385
  store i32 %and14, ptr %s_mount_opt7, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_proc_info_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_release_error(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_free_bitmap_cache(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_sync_fs(ptr noundef %s, i32 noundef %wait) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %call = tail call i32 @dquot_writeback_dquots(ptr noundef %s, i32 noundef -1) #17
  tail call void @reiserfs_write_lock(ptr noundef %s) #17
  %call1 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = call i32 @journal_end_sync(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_flush_old_commits(ptr noundef %s) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_writeback_dquots(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_flush_old_commits(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_parse_alloc_options(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @reiserfs_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reiserfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %openers = getelementptr inbounds %struct.reiserfs_inode_info, ptr %call, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %openers, i32 noundef 4) #17
  %1 = ptrtoint ptr %openers to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %openers, align 8
  %tailpack = getelementptr inbounds %struct.reiserfs_inode_info, ptr %call, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %tailpack, ptr noundef nonnull @.str.152, ptr noundef nonnull @reiserfs_alloc_inode.__key) #17
  %i_dquot = getelementptr inbounds %struct.reiserfs_inode_info, ptr %call, i32 0, i32 13
  %2 = call ptr @memset(ptr %i_dquot, i32 0, i32 12)
  %vfs_inode = getelementptr inbounds %struct.reiserfs_inode_info, ptr %call, i32 0, i32 14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reiserfs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_dirty_inode(ptr noundef %inode, i32 noundef %flags) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %2, ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__.reiserfs_dirty_inode, ptr noundef nonnull @.str.154, i32 noundef %6) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @reiserfs_write_lock(ptr noundef %2) #17
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %call4 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %8, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %9 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size.i, align 8
  call void @reiserfs_update_sd_size(ptr noundef nonnull %th, ptr noundef %inode, i64 noundef %10) #17
  %call7 = call i32 @journal_end(ptr noundef nonnull %th) #17
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %12) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_inode(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_evict_inode(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_put_super(ptr noundef %s) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %1 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %t_trans_id, align 4
  %call.i = tail call i32 @reiserfs_quota_off(ptr noundef %s, i32 noundef 0) #17
  %call.1.i = tail call i32 @reiserfs_quota_off(ptr noundef %s, i32 noundef 1) #17
  tail call void @reiserfs_write_lock(ptr noundef %s) #17
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then:                                          ; preds = %entry
  %call1 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef %7, i32 noundef 1) #17
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_mount_state, align 4
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_rs, align 4
  %s_umount_state = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %s_umount_state to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %12, ptr %s_umount_state, align 1
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call9 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %19) #17
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %call11 = call i32 @journal_release(ptr noundef nonnull %th, ptr noundef %s) #17
  call void @reiserfs_free_bitmap_cache(ptr noundef %s) #17
  %s_fs_info.i47 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i47, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end10.brelse.exit_crit_edge, label %if.then.i

if.end10.brelse.exit_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  call void @__brelse(ptr noundef nonnull %23) #17
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end10.brelse.exit_crit_edge
  call void @print_statistics(ptr noundef %s) #17
  %24 = ptrtoint ptr %s_fs_info.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i47, align 16
  %reserved_blocks = getelementptr inbounds %struct.reiserfs_sb_info, ptr %25, i32 0, i32 29
  %26 = ptrtoint ptr %reserved_blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reserved_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %brelse.exit.if.end18_crit_edge, label %if.then15

brelse.exit.if.end18_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then15:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.155, ptr noundef nonnull @__func__.reiserfs_put_super, ptr noundef nonnull @.str.156, i32 noundef %27) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %brelse.exit.if.end18_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %28 = ptrtoint ptr %s_fs_info.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i47, align 16
  %lock = getelementptr inbounds %struct.reiserfs_sb_info, ptr %29, i32 0, i32 5
  call void @mutex_destroy(ptr noundef %lock) #17
  %30 = ptrtoint ptr %s_fs_info.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i47, align 16
  %commit_wq = getelementptr inbounds %struct.reiserfs_sb_info, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %commit_wq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %commit_wq, align 4
  call void @destroy_workqueue(ptr noundef %33) #17
  %34 = ptrtoint ptr %s_fs_info.i47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i47, align 16
  %s_jdev = getelementptr inbounds %struct.reiserfs_sb_info, ptr %35, i32 0, i32 39
  %36 = ptrtoint ptr %s_jdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_jdev, align 4
  call void @kfree(ptr noundef %37) #17
  %38 = ptrtoint ptr %s_fs_info.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i47, align 16
  call void @kfree(ptr noundef %39) #17
  %40 = ptrtoint ptr %s_fs_info.i47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %s_fs_info.i47, align 16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_freeze(ptr noundef %s) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i.i, align 16
  %old_work_lock.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %2, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %old_work_lock.i) #17
  %work_queued.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %work_queued.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %work_queued.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %old_work_lock.i) #17
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %old_work.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 35
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %old_work.i) #17
  tail call void @reiserfs_write_lock(ptr noundef %s) #17
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then:                                          ; preds = %entry
  %call1 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_block_writes(ptr noundef nonnull %th) #17
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call4 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef %11, i32 noundef 1) #17
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call7 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %15) #17
  call void @reiserfs_block_writes(ptr noundef nonnull %th) #17
  %call8 = call i32 @journal_end_sync(ptr noundef nonnull %th) #17
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2, %entry.if.end9_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_unfreeze(ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @reiserfs_allow_writes(ptr noundef %s) #17
  %old_work_lock = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %old_work_lock) #17
  %work_queued = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %work_queued, align 4
  tail call void @_raw_spin_unlock(ptr noundef %old_work_lock) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reiserfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #10 align 64 {
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
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rs, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %6 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %f_namelen, align 8
  %s_free_blocks = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %s_free_blocks, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %conv = zext i32 %9 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %11 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %f_bavail, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %5, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %s_bmap_nr = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %s_bmap_nr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %s_bmap_nr, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv4 = zext i16 %17 to i32
  %18 = xor i32 %conv4, -1
  %sub5 = add i32 %14, %18
  %conv6 = zext i32 %sub5 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %19 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv6, ptr %f_blocks, align 8
  %20 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %f_bsize, align 4
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1382369651, ptr %buf, align 8
  %s_uuid = getelementptr inbounds %struct.reiserfs_super_block, ptr %5, i32 0, i32 3
  %call8 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %s_uuid, i32 noundef 8) #25
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %26 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call8, ptr %f_fsid, align 8
  %add.ptr = getelementptr %struct.reiserfs_super_block, ptr %5, i32 0, i32 3, i32 8
  %call11 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr, i32 noundef 8) #25
  %arrayidx14 = getelementptr %struct.kstatfs, ptr %buf, i32 0, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call11, ptr %arrayidx14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_remount(ptr noundef %s, ptr nocapture noundef readonly %mount_flags, ptr noundef %arg) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %blocks = alloca i32, align 4
  %mount_options = alloca i32, align 4
  %commit_max_age = alloca i32, align 4
  %qf_names = alloca [2 x ptr], align 8
  %qfmt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks) #17
  %1 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blocks, align 4, !annotation !479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mount_options) #17
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %6 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mount_options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %commit_max_age) #17
  %7 = ptrtoint ptr %commit_max_age to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %commit_max_age, align 4
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_journal, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qf_names) #17
  %10 = getelementptr inbounds [2 x ptr], ptr %qf_names, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qfmt) #17
  %11 = ptrtoint ptr %qfmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qfmt, align 4
  %call2 = tail call i32 @sync_filesystem(ptr noundef %s) #17
  tail call void @reiserfs_write_lock(ptr noundef %s) #17
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_qf_names = getelementptr inbounds %struct.reiserfs_sb_info, ptr %13, i32 0, i32 37
  %14 = ptrtoint ptr %s_qf_names to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %s_qf_names, align 4
  %16 = ptrtoint ptr %qf_names to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %qf_names, align 8
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_rs, align 4
  %call7 = call fastcc i32 @reiserfs_parse_options(ptr noundef %s, ptr noundef %arg, ptr noundef nonnull %mount_options, ptr noundef nonnull %blocks, ptr noundef null, ptr noundef nonnull %commit_max_age, ptr noundef nonnull %qf_names, ptr noundef nonnull %qfmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %19 = ptrtoint ptr %qf_names to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qf_names, align 8
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx10 = getelementptr %struct.reiserfs_sb_info, ptr %22, i32 0, i32 37, i32 0
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx10, align 4
  %cmp11.not = icmp eq ptr %20, %24
  br i1 %tobool.not, label %for.body.preheader, label %if.end14

for.body.preheader:                               ; preds = %entry
  br i1 %cmp11.not, label %for.body.preheader.for.inc_crit_edge, label %if.then12

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then12:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %20) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.preheader.for.inc_crit_edge
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 4
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx10.1 = getelementptr %struct.reiserfs_sb_info, ptr %28, i32 0, i32 37, i32 1
  %29 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx10.1, align 4
  %cmp11.not.1 = icmp eq ptr %26, %30
  br i1 %cmp11.not.1, label %for.inc.out_err_unlock_crit_edge, label %if.then12.1

for.inc.out_err_unlock_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_unlock

if.then12.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %26) #17
  br label %out_err_unlock

if.end14:                                         ; preds = %entry
  br i1 %cmp11.not, label %if.end14.if.end.i_crit_edge, label %if.then.i

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %24) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end14.if.end.i_crit_edge
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx9.i = getelementptr %struct.reiserfs_sb_info, ptr %32, i32 0, i32 37, i32 0
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %20, ptr %arrayidx9.i, align 4
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %10, align 4
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx1.1.i = getelementptr %struct.reiserfs_sb_info, ptr %36, i32 0, i32 37, i32 1
  %37 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx1.1.i, align 4
  %cmp2.not.1.i = icmp eq ptr %35, %38
  br i1 %cmp2.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %38) #17
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx9.1.i = getelementptr %struct.reiserfs_sb_info, ptr %40, i32 0, i32 37, i32 1
  %41 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %35, ptr %arrayidx9.1.i, align 4
  %42 = ptrtoint ptr %qfmt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %if.end.1.i.handle_quota_files.exit_crit_edge, label %if.then10.i

if.end.1.i.handle_quota_files.exit_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_quota_files.exit

if.then10.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i, align 16
  %s_jquota_fmt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %45, i32 0, i32 38
  %46 = ptrtoint ptr %s_jquota_fmt.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %s_jquota_fmt.i, align 4
  br label %handle_quota_files.exit

handle_quota_files.exit:                          ; preds = %if.then10.i, %if.end.1.i.handle_quota_files.exit_crit_edge
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_rs.i, align 4
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %48, i32 0, i32 11
  %51 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %52, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i247 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i247, label %handle_quota_files.exit.handle_attrs.exit_crit_edge, label %if.then.i248

handle_quota_files.exit.handle_attrs.exit_crit_edge: ; preds = %handle_quota_files.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_attrs.exit

if.then.i248:                                     ; preds = %handle_quota_files.exit
  %s_properties.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %48, i32 0, i32 15
  %53 = ptrtoint ptr %s_properties.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_properties.i, align 4
  %and3.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i249, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.handle_attrs, ptr noundef nonnull @.str.229) #17
  br label %cleanup.sink.split.i

if.end.i249:                                      ; preds = %if.then.i248
  %s_flags.i = getelementptr inbounds %struct.reiserfs_super_block, ptr %50, i32 0, i32 2
  %55 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %s_flags.i, align 1
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool10.not.i = icmp eq i32 %57, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end.i249.handle_attrs.exit_crit_edge

if.end.i249.handle_attrs.exit_crit_edge:          ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_attrs.exit

if.then11.i:                                      ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.handle_attrs, ptr noundef nonnull @.str.231) #17
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then11.i, %if.then5.i
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt7.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %s_mount_opt7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_mount_opt7.i, align 4
  %and14.i = and i32 %61, -16385
  store i32 %and14.i, ptr %s_mount_opt7.i, align 4
  br label %handle_attrs.exit

handle_attrs.exit:                                ; preds = %cleanup.sink.split.i, %if.end.i249.handle_attrs.exit_crit_edge, %handle_quota_files.exit.handle_attrs.exit_crit_edge
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt32 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %s_mount_opt32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_mount_opt32, align 4
  %and = and i32 %65, -301856772
  %66 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mount_options, align 4
  %and33 = and i32 %67, 301856771
  %or34 = or i32 %and33, %and
  store i32 %or34, ptr %s_mount_opt32, align 4
  %68 = ptrtoint ptr %commit_max_age to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %commit_max_age, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %69, label %handle_attrs.exit.if.end45.sink.split_crit_edge [
    i32 0, label %if.then41
    i32 -1, label %handle_attrs.exit.if.end45_crit_edge
  ]

handle_attrs.exit.if.end45_crit_edge:             ; preds = %handle_attrs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

handle_attrs.exit.if.end45.sink.split_crit_edge:  ; preds = %handle_attrs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.sink.split

if.then41:                                        ; preds = %handle_attrs.exit
  call void @__sanitizer_cov_trace_pc() #19
  %j_default_max_commit_age = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 32
  %71 = ptrtoint ptr %j_default_max_commit_age to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %j_default_max_commit_age, align 8
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %if.then41, %handle_attrs.exit.if.end45.sink.split_crit_edge
  %.sink285 = phi i32 [ %72, %if.then41 ], [ %69, %handle_attrs.exit.if.end45.sink.split_crit_edge ]
  %.sink = phi i32 [ 30, %if.then41 ], [ %69, %handle_attrs.exit.if.end45.sink.split_crit_edge ]
  %j_max_commit_age42 = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 30
  %73 = ptrtoint ptr %j_max_commit_age42 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink285, ptr %j_max_commit_age42, align 8
  %j_max_trans_age43 = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 31
  %74 = ptrtoint ptr %j_max_trans_age43 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink, ptr %j_max_trans_age43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %handle_attrs.exit.if.end45_crit_edge
  %75 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool46.not = icmp eq i32 %76, 0
  br i1 %tobool46.not, label %if.end45.if.end52_crit_edge, label %if.then47

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then47:                                        ; preds = %if.end45
  %call48 = call i32 @reiserfs_resize(ptr noundef %s, i32 noundef %76) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.then47.if.end52_crit_edge, label %if.then47.out_err_unlock_crit_edge

if.then47.out_err_unlock_crit_edge:               ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_unlock

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %if.end45.if.end52_crit_edge
  %77 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mount_flags, align 4
  %and53 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else85, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %79 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mount_flags, align 4
  %call56 = call i32 @reiserfs_xattr_init(ptr noundef %s, i32 noundef %80) #17
  %s_flags.i252 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %81 = ptrtoint ptr %s_flags.i252 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_flags.i252, align 4
  %and.i253 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool.i.not = icmp eq i32 %and.i253, 0
  br i1 %tobool.i.not, label %if.end59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end59:                                         ; preds = %if.then55
  %call.i = call i32 @dquot_disable(ptr noundef %s, i32 noundef -1, i32 noundef 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp61 = icmp slt i32 %call.i, 0
  br i1 %cmp61, label %if.end59.cleanup_crit_edge, label %if.end63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  %s_umount_state = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %18, i32 0, i32 7
  %83 = ptrtoint ptr %s_umount_state to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %s_umount_state, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %84)
  %cmp64 = icmp eq i16 %84, 256
  br i1 %cmp64, label %if.end63.cleanup_crit_edge, label %lor.lhs.false

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end63
  %85 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state = getelementptr inbounds %struct.reiserfs_sb_info, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %s_mount_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %88)
  %cmp68.not = icmp eq i16 %88, 1
  br i1 %cmp68.not, label %if.end71, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false
  call void @reiserfs_write_lock(ptr noundef %s) #17
  %call72 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.out_err_unlock_crit_edge

if.end71.out_err_unlock_crit_edge:                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_unlock

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  %89 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_fs_info.i, align 16
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %call77 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef %92, i32 noundef 1) #17
  %93 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state79 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %s_mount_state79 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %s_mount_state79, align 4
  %97 = call i16 @llvm.bswap.i16(i16 %96)
  %98 = ptrtoint ptr %s_umount_state to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %97, ptr %s_umount_state, align 1
  %99 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i, align 16
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %call84 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %102) #17
  br label %if.end129

if.else85:                                        ; preds = %if.end52
  %s_flags.i258 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %103 = ptrtoint ptr %s_flags.i258 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_flags.i258, align 4
  %and.i259 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259)
  %tobool.i260.not = icmp eq i32 %and.i259, 0
  br i1 %tobool.i260.not, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #19
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %105 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mount_flags, align 4
  %call88 = call i32 @reiserfs_xattr_init(ptr noundef %s, i32 noundef %106) #17
  br label %cleanup

if.end89:                                         ; preds = %if.else85
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 6
  %107 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %j_state.i, align 4
  %109 = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool91.not = icmp eq i32 %109, 0
  br i1 %tobool91.not, label %if.end95, label %if.then94, !prof !482

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  %j_errno = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 54
  %110 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %j_errno, align 8
  br label %out_err_unlock

if.end95:                                         ; preds = %if.end89
  %112 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mount_options, align 4
  %and.i261 = and i32 %113, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i261)
  %tobool.not.i262 = icmp eq i32 %and.i261, 0
  br i1 %tobool.not.i262, label %if.else.i, label %if.then.i265

if.then.i265:                                     ; preds = %if.end95
  %114 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt.i264 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %115, i32 0, i32 11
  %116 = ptrtoint ptr %s_mount_opt.i264 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_mount_opt.i264, align 4
  %and1.i = and i32 %117, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i265.if.end25.sink.split.i_crit_edge, label %if.then.i265.handle_data_mode.exit_crit_edge

if.then.i265.handle_data_mode.exit_crit_edge:     ; preds = %if.then.i265
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_data_mode.exit

if.then.i265.if.end25.sink.split.i_crit_edge:     ; preds = %if.then.i265
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.sink.split.i

if.else.i:                                        ; preds = %if.end95
  %and4.i = and i32 %113, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else13.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %118 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt8.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %119, i32 0, i32 11
  %120 = ptrtoint ptr %s_mount_opt8.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %s_mount_opt8.i, align 4
  %and9.i = and i32 %121, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i266 = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i266, label %if.then6.i.if.end25.sink.split.i_crit_edge, label %if.then6.i.handle_data_mode.exit_crit_edge

if.then6.i.handle_data_mode.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_data_mode.exit

if.then6.i.if.end25.sink.split.i_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.sink.split.i

if.else13.i:                                      ; preds = %if.else.i
  %and14.i267 = and i32 %113, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i267)
  %tobool15.not.i = icmp eq i32 %and14.i267, 0
  br i1 %tobool15.not.i, label %if.else13.i.handle_data_mode.exit_crit_edge, label %if.then16.i

if.else13.i.handle_data_mode.exit_crit_edge:      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_data_mode.exit

if.then16.i:                                      ; preds = %if.else13.i
  %122 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt18.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %123, i32 0, i32 11
  %124 = ptrtoint ptr %s_mount_opt18.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %s_mount_opt18.i, align 4
  %and19.i = and i32 %125, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then16.i.if.end25.sink.split.i_crit_edge, label %if.then16.i.handle_data_mode.exit_crit_edge

if.then16.i.handle_data_mode.exit_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_data_mode.exit

if.then16.i.if.end25.sink.split.i_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.sink.split.i

if.end25.sink.split.i:                            ; preds = %if.then16.i.if.end25.sink.split.i_crit_edge, %if.then6.i.if.end25.sink.split.i_crit_edge, %if.then.i265.if.end25.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %117, %if.then.i265.if.end25.sink.split.i_crit_edge ], [ %121, %if.then6.i.if.end25.sink.split.i_crit_edge ], [ %125, %if.then16.i.if.end25.sink.split.i_crit_edge ]
  %s_mount_opt.sink.i = phi ptr [ %s_mount_opt.i264, %if.then.i265.if.end25.sink.split.i_crit_edge ], [ %s_mount_opt8.i, %if.then6.i.if.end25.sink.split.i_crit_edge ], [ %s_mount_opt18.i, %if.then16.i.if.end25.sink.split.i_crit_edge ]
  %.sink48.i = phi i32 [ 256, %if.then.i265.if.end25.sink.split.i_crit_edge ], [ 512, %if.then6.i.if.end25.sink.split.i_crit_edge ], [ 1024, %if.then16.i.if.end25.sink.split.i_crit_edge ]
  %.str.158.sink.i = phi ptr [ @.str.157, %if.then.i265.if.end25.sink.split.i_crit_edge ], [ @.str.158, %if.then6.i.if.end25.sink.split.i_crit_edge ], [ @.str.159, %if.then16.i.if.end25.sink.split.i_crit_edge ]
  %and.i.i = and i32 %.sink.i, -1793
  %126 = ptrtoint ptr %s_mount_opt.sink.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %and.i.i, ptr %s_mount_opt.sink.i, align 4
  %127 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt2.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %s_mount_opt2.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %s_mount_opt2.i.i, align 4
  %or.i41.i = or i32 %130, %.sink48.i
  store i32 %or.i41.i, ptr %s_mount_opt2.i.i, align 4
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull %.str.158.sink.i) #17
  br label %handle_data_mode.exit

handle_data_mode.exit:                            ; preds = %if.end25.sink.split.i, %if.then16.i.handle_data_mode.exit_crit_edge, %if.else13.i.handle_data_mode.exit_crit_edge, %if.then6.i.handle_data_mode.exit_crit_edge, %if.then.i265.handle_data_mode.exit_crit_edge
  %131 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mount_options, align 4
  %and.i268 = and i32 %132, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i269 = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i269, label %handle_data_mode.exit.handle_barrier_mode.exit_crit_edge, label %if.then.i273

handle_data_mode.exit.handle_barrier_mode.exit_crit_edge: ; preds = %handle_data_mode.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_barrier_mode.exit

if.then.i273:                                     ; preds = %handle_data_mode.exit
  %133 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt.i271 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %134, i32 0, i32 11
  %135 = ptrtoint ptr %s_mount_opt.i271 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_mount_opt.i271, align 4
  %and1.i272 = and i32 %136, -786433
  store i32 %and1.i272, ptr %s_mount_opt.i271, align 4
  %and2.i = and i32 %132, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i276, label %if.then.i273.if.end21.sink.split.i_crit_edge

if.then.i273.if.end21.sink.split.i_crit_edge:     ; preds = %if.then.i273
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.sink.split.i

if.else.i276:                                     ; preds = %if.then.i273
  %and9.i274 = and i32 %132, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i274)
  %tobool10.not.i275 = icmp eq i32 %and9.i274, 0
  br i1 %tobool10.not.i275, label %if.else.i276.handle_barrier_mode.exit_crit_edge, label %if.else.i276.if.end21.sink.split.i_crit_edge

if.else.i276.if.end21.sink.split.i_crit_edge:     ; preds = %if.else.i276
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.sink.split.i

if.else.i276.handle_barrier_mode.exit_crit_edge:  ; preds = %if.else.i276
  call void @__sanitizer_cov_trace_pc() #19
  br label %handle_barrier_mode.exit

if.end21.sink.split.i:                            ; preds = %if.else.i276.if.end21.sink.split.i_crit_edge, %if.then.i273.if.end21.sink.split.i_crit_edge
  %.sink33.i = phi i32 [ 524288, %if.then.i273.if.end21.sink.split.i_crit_edge ], [ 262144, %if.else.i276.if.end21.sink.split.i_crit_edge ]
  %.str.160.sink.i = phi ptr [ @.str.160, %if.then.i273.if.end21.sink.split.i_crit_edge ], [ @.str.163, %if.else.i276.if.end21.sink.split.i_crit_edge ]
  %137 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt13.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %138, i32 0, i32 11
  %139 = ptrtoint ptr %s_mount_opt13.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %s_mount_opt13.i, align 4
  %or7.i = or i32 %140, %.sink33.i
  store i32 %or7.i, ptr %s_mount_opt13.i, align 4
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.160.sink.i) #22
  br label %handle_barrier_mode.exit

handle_barrier_mode.exit:                         ; preds = %if.end21.sink.split.i, %if.else.i276.handle_barrier_mode.exit_crit_edge, %handle_data_mode.exit.handle_barrier_mode.exit_crit_edge
  %s_umount_state97 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %18, i32 0, i32 7
  %141 = ptrtoint ptr %s_umount_state97 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %s_umount_state97, align 1
  %143 = call i16 @llvm.bswap.i16(i16 %142)
  %144 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state99 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %s_mount_state99 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %143, ptr %s_mount_state99, align 4
  %147 = ptrtoint ptr %s_flags.i258 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_flags.i258, align 4
  %and100 = and i32 %148, -2
  store i32 %and100, ptr %s_flags.i258, align 4
  %call101 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %handle_barrier_mode.exit.out_err_unlock_crit_edge

handle_barrier_mode.exit.out_err_unlock_crit_edge: ; preds = %handle_barrier_mode.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_unlock

if.end104:                                        ; preds = %handle_barrier_mode.exit
  %149 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i, align 16
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %call107 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef %152, i32 noundef 1) #17
  %153 = ptrtoint ptr %s_umount_state97 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %s_umount_state97, align 1
  %155 = call i16 @llvm.bswap.i16(i16 %154)
  %156 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state111 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %s_mount_state111 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %155, ptr %s_mount_state111, align 4
  %159 = ptrtoint ptr %s_flags.i258 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %s_flags.i258, align 4
  %and113 = and i32 %160, -2
  store i32 %and113, ptr %s_flags.i258, align 4
  %161 = ptrtoint ptr %s_umount_state97 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 512, ptr %s_umount_state97, align 1
  %162 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %162, i32 0, i32 15
  %163 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %s_properties, align 4
  %and117 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.then119, label %if.end104.if.end123_crit_edge

if.end104.if.end123_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end123

if.then119:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  %s_mnt_count = getelementptr inbounds %struct.reiserfs_super_block, ptr %18, i32 0, i32 5
  %165 = ptrtoint ptr %s_mnt_count to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %s_mnt_count, align 1
  %167 = call i16 @llvm.bswap.i16(i16 %166)
  %add = add i16 %167, 1
  %168 = call i16 @llvm.bswap.i16(i16 %add)
  %169 = ptrtoint ptr %s_mnt_count to i32
  call void @__asan_storeN_noabort(i32 %169, i32 2)
  store i16 %168, ptr %s_mnt_count, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.end104.if.end123_crit_edge
  %170 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_fs_info.i, align 16
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %call126 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %173) #17
  %174 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_state128 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %s_mount_state128 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 1, ptr %s_mount_state128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.end123, %if.end75
  %177 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal131 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %s_journal131 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %s_journal131, align 4
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %180, i32 0, i32 23
  %181 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1, ptr %j_must_wait, align 4
  %call132 = call i32 @journal_end(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end129.out_err_unlock_crit_edge

if.end129.out_err_unlock_crit_edge:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err_unlock

if.end135:                                        ; preds = %if.end129
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %182 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mount_flags, align 4
  %and136 = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.then138, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  %call139 = call i32 @dquot_resume(ptr noundef %s, i32 noundef -1) #17
  call void @reiserfs_write_lock(ptr noundef %s) #17
  call fastcc void @finish_unfinished(ptr noundef %s)
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  %184 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %mount_flags, align 4
  %call141 = call i32 @reiserfs_xattr_init(ptr noundef %s, i32 noundef %185) #17
  br label %cleanup

out_err_unlock:                                   ; preds = %if.end129.out_err_unlock_crit_edge, %handle_barrier_mode.exit.out_err_unlock_crit_edge, %if.then94, %if.end71.out_err_unlock_crit_edge, %if.then47.out_err_unlock_crit_edge, %if.then12.1, %for.inc.out_err_unlock_crit_edge
  %err.0 = phi i32 [ %call48, %if.then47.out_err_unlock_crit_edge ], [ %call72, %if.end71.out_err_unlock_crit_edge ], [ %call132, %if.end129.out_err_unlock_crit_edge ], [ %111, %if.then94 ], [ %call101, %handle_barrier_mode.exit.out_err_unlock_crit_edge ], [ -22, %if.then12.1 ], [ -22, %for.inc.out_err_unlock_crit_edge ]
  call void @reiserfs_write_unlock(ptr noundef %s) #17
  br label %cleanup

cleanup:                                          ; preds = %out_err_unlock, %if.then138, %if.end135.cleanup_crit_edge, %if.then87, %lor.lhs.false.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then55.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end135.cleanup_crit_edge ], [ 0, %if.then138 ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then55.cleanup_crit_edge ], [ 0, %if.then87 ], [ %err.0, %out_err_unlock ], [ %call.i, %if.end59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qfmt) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qf_names) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %commit_max_age) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mount_options) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #2 align 64 {
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
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end5.sink.split_crit_edge

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.sink.split

if.else:                                          ; preds = %entry
  %and2 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.if.end5.sink.split_crit_edge, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.else.if.end5.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.else.if.end5.sink.split_crit_edge, %entry.if.end5.sink.split_crit_edge
  %.str.166.sink = phi ptr [ @.str.165, %entry.if.end5.sink.split_crit_edge ], [ @.str.166, %if.else.if.end5.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.166.sink) #17
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.else.if.end5_crit_edge
  %and6 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.167) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %and10 = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else13, label %if.end9.if.end18.sink.split_crit_edge

if.end9.if.end18.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18.sink.split

if.else13:                                        ; preds = %if.end9
  %and14 = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else13.if.end18_crit_edge, label %if.else13.if.end18.sink.split_crit_edge

if.else13.if.end18.sink.split_crit_edge:          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18.sink.split

if.else13.if.end18_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.end18.sink.split:                              ; preds = %if.else13.if.end18.sink.split_crit_edge, %if.end9.if.end18.sink.split_crit_edge
  %.str.169.sink = phi ptr [ @.str.168, %if.end9.if.end18.sink.split_crit_edge ], [ @.str.169, %if.else13.if.end18.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.169.sink) #17
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else13.if.end18_crit_edge
  %and19 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else22, label %if.end18.if.end27.sink.split_crit_edge

if.end18.if.end27.sink.split_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.sink.split

if.else22:                                        ; preds = %if.end18
  %and23 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else22.if.end27_crit_edge, label %if.else22.if.end27.sink.split_crit_edge

if.else22.if.end27.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.sink.split

if.else22.if.end27_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.end27.sink.split:                              ; preds = %if.else22.if.end27.sink.split_crit_edge, %if.end18.if.end27.sink.split_crit_edge
  %.str.171.sink = phi ptr [ @.str.170, %if.end18.if.end27.sink.split_crit_edge ], [ @.str.171, %if.else22.if.end27.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.171.sink) #17
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else22.if.end27_crit_edge
  %and28 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.172) #17
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %and32 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.173) #17
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge
  %and36 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.174) #17
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %and40 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.then42

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.175) #17
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_jdev = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 39
  %10 = ptrtoint ptr %s_jdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_jdev, align 4
  %tobool45.not = icmp eq ptr %11, null
  br i1 %tobool45.not, label %if.end43.if.end49_crit_edge, label %seq_show_option.exit

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

seq_show_option.exit:                             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #17
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.185) #17
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #17
  %call.i.i5.i = tail call i32 @strlen(ptr noundef nonnull %11) #23
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %11, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.186) #17
  br label %if.end49

if.end49:                                         ; preds = %seq_show_option.exit, %if.end43.if.end49_crit_edge
  %j_max_commit_age = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 30
  %12 = ptrtoint ptr %j_max_commit_age to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_max_commit_age, align 8
  %j_default_max_commit_age = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 32
  %14 = ptrtoint ptr %j_default_max_commit_age to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %j_default_max_commit_age, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %if.end49.if.end52_crit_edge, label %if.then50

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then50:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.176, i32 noundef %13) #17
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end49.if.end52_crit_edge
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_qf_names = getelementptr inbounds %struct.reiserfs_sb_info, ptr %17, i32 0, i32 37
  %18 = ptrtoint ptr %s_qf_names to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_qf_names, align 4
  %tobool54.not = icmp eq ptr %19, null
  br i1 %tobool54.not, label %if.else59, label %seq_show_option.exit171

seq_show_option.exit171:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #17
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.77, i32 noundef 9, i32 noundef 8, ptr noundef nonnull @.str.185) #17
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #17
  %call.i.i5.i169 = tail call i32 @strlen(ptr noundef nonnull %19) #23
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %19, i32 noundef %call.i.i5.i169, i32 noundef 8, ptr noundef nonnull @.str.186) #17
  br label %if.end64

if.else59:                                        ; preds = %if.end52
  %and60 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else59.if.end64_crit_edge, label %if.then62

if.else59.if.end64_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then62:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.177) #17
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.else59.if.end64_crit_edge, %seq_show_option.exit171
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx67 = getelementptr %struct.reiserfs_sb_info, ptr %21, i32 0, i32 37, i32 1
  %22 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %23, null
  br i1 %tobool68.not, label %if.else73, label %seq_show_option.exit178

seq_show_option.exit178:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #17
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.78, i32 noundef 9, i32 noundef 8, ptr noundef nonnull @.str.185) #17
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #17
  %call.i.i5.i176 = tail call i32 @strlen(ptr noundef nonnull %23) #23
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %23, i32 noundef %call.i.i5.i176, i32 noundef 8, ptr noundef nonnull @.str.186) #17
  br label %if.end78

if.else73:                                        ; preds = %if.end64
  %and74 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else73.if.end78_crit_edge, label %if.then76

if.else73.if.end78_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then76:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.178) #17
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.else73.if.end78_crit_edge, %seq_show_option.exit178
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %s_jquota_fmt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %25, i32 0, i32 38
  %26 = ptrtoint ptr %s_jquota_fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_jquota_fmt, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %27, label %if.end78.if.end93_crit_edge [
    i32 2, label %if.then90
    i32 1, label %if.end78.if.end93.sink.split_crit_edge
  ]

if.end78.if.end93.sink.split_crit_edge:           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93.sink.split

if.end78.if.end93_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

if.then90:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93.sink.split

if.end93.sink.split:                              ; preds = %if.then90, %if.end78.if.end93.sink.split_crit_edge
  %.str.179.sink = phi ptr [ @.str.180, %if.then90 ], [ @.str.179, %if.end78.if.end93.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.179.sink) #17
  br label %if.end93

if.end93:                                         ; preds = %if.end93.sink.split, %if.end78.if.end93_crit_edge
  %and94 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end97_crit_edge, label %if.then96

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.181) #17
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93.if.end97_crit_edge
  %and98 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end101_crit_edge, label %if.then100

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.182) #17
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end97.if.end101_crit_edge
  %and102 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end105_crit_edge, label %if.then104

if.end101.if.end105_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end105

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.183) #17
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end101.if.end105_crit_edge
  %and106 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end109_crit_edge, label %if.then108

if.end105.if.end109_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.184) #17
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end105.if.end109_crit_edge
  tail call void @show_alloc_options(ptr noundef %seq, ptr noundef %1) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_quota_read(ptr noundef %sb, i32 noundef %type, ptr nocapture noundef writeonly %data, i32 noundef %len, i64 noundef %off) #2 align 64 {
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
  %shr = ashr i64 %off, %sh_prom
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
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !483
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !484
  %and.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !477

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !485
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !486
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !487
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !488
  %18 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !489
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %21, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %conv1 = trunc i64 %shr to i32
  %sub = add i32 %5, -1
  %conv3 = and i32 %sub, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %off)
  %cmp = icmp slt i64 %19, %off
  br i1 %cmp, label %i_size_read.exit.cleanup_crit_edge, label %if.end

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %i_size_read.exit
  %conv6 = zext i32 %len to i64
  %add = add i64 %conv6, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp7 = icmp sgt i64 %add, %19
  %sub10 = sub i64 %19, %off
  %conv11 = trunc i64 %sub10 to i32
  %len.addr.0 = select i1 %cmp7, i32 %conv11, i32 %len
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp13.not75 = icmp eq i32 %len.addr.0, 0
  br i1 %cmp13.not75, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %toread.080 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %sub33, %if.end32.while.body_crit_edge ]
  %offset.079 = phi i32 [ %conv3, %while.body.lr.ph ], [ 0, %if.end32.while.body_crit_edge ]
  %blk.078 = phi i32 [ %conv1, %while.body.lr.ph ], [ %inc, %if.end32.while.body_crit_edge ]
  %data.addr.076 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr34, %if.end32.while.body_crit_edge ]
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %sub16 = sub i32 %23, %offset.079
  %24 = call i32 @llvm.umin.i32(i32 %sub16, i32 %toread.080)
  %25 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tmp_bh, align 8
  call void @reiserfs_write_lock(ptr noundef %sb) #17
  %conv21 = zext i32 %blk.078 to i64
  %call22 = call i32 @reiserfs_get_block(ptr noundef %1, i64 noundef %conv21, ptr noundef nonnull %tmp_bh, i32 noundef 0) #17
  call void @reiserfs_write_unlock(ptr noundef %sb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end24, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %while.body
  %26 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %tmp_bh, align 8
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool26.not = icmp eq i32 %28, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %29 = call ptr @memset(ptr %data.addr.076, i32 0, i32 %24)
  br label %if.end32

if.else:                                          ; preds = %if.end24
  %30 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b_blocknr, align 8
  %32 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_bdev.i, align 4
  %34 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %33, i64 noundef %31, i32 noundef %35, i32 noundef 8) #17
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.else.cleanup_crit_edge, label %brelse.exit

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

brelse.exit:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 %offset.079
  %38 = call ptr @memcpy(ptr %data.addr.076, ptr %add.ptr, i32 %24)
  call void @__brelse(ptr noundef nonnull %call.i) #17
  br label %if.end32

if.end32:                                         ; preds = %brelse.exit, %if.then27
  %sub33 = sub i32 %toread.080, %24
  %add.ptr34 = getelementptr i8, ptr %data.addr.076, i32 %24
  %inc = add i32 %blk.078, 1
  %cmp13.not = icmp eq i32 %sub33, 0
  br i1 %cmp13.not, label %if.end32.cleanup_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.else.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %i_size_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %i_size_read.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call22, %while.body.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %len.addr.0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_quota_write(ptr noundef %sb, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %len, i64 noundef %off) #2 align 64 {
entry:
  %tmp_bh = alloca %struct.buffer_head, align 8
  %tmp61 = alloca %struct.timespec64, align 8
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
  %shr = ashr i64 %off, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %5, -1
  %6 = trunc i64 %off to i32
  %conv3 = and i32 %sub, %6
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx5 = getelementptr %struct.reiserfs_sb_info, ptr %8, i32 0, i32 37, i32 %type
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5, align 4
  %cmp.not = icmp eq ptr %10, null
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh) #17
  %11 = call ptr @memset(ptr %tmp_bh, i32 255, i32 104)
  %12 = tail call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %journal_info, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp10.not133 = icmp eq i32 %len, 0
  br i1 %cmp10.not133, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 3
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv8 = zext i32 %len to i64
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i64 noundef %off, i64 noundef %conv8) #22
  br label %cleanup

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %towrite.0137 = phi i32 [ %len, %while.body.lr.ph ], [ %sub44, %brelse.exit.while.body_crit_edge ]
  %offset.0136 = phi i32 [ %conv3, %while.body.lr.ph ], [ 0, %brelse.exit.while.body_crit_edge ]
  %blk.0135 = phi i32 [ %conv1, %while.body.lr.ph ], [ %inc, %brelse.exit.while.body_crit_edge ]
  %data.addr.0134 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr45, %brelse.exit.while.body_crit_edge ]
  %18 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize, align 16
  %sub13 = sub i32 %19, %offset.0136
  %20 = call i32 @llvm.umin.i32(i32 %sub13, i32 %towrite.0137)
  %21 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tmp_bh, align 8
  call void @reiserfs_write_lock(ptr noundef %sb) #17
  %conv18 = zext i32 %blk.0135 to i64
  %call19 = call i32 @reiserfs_get_block(ptr noundef %1, i64 noundef %conv18, ptr noundef nonnull %tmp_bh, i32 noundef 1) #17
  call void @reiserfs_write_unlock(ptr noundef %sb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end22:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0136)
  %tobool23.not = icmp eq i32 %offset.0136, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %if.end22.if.then27_crit_edge

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end22
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %23)
  %cmp25.not = icmp eq i32 %20, %23
  br i1 %cmp25.not, label %if.else, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  %24 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %b_blocknr, align 8
  %26 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_bdev.i, align 4
  %28 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %27, i64 noundef %25, i32 noundef %29, i32 noundef 8) #17
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b_blocknr, align 8
  %32 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_bdev.i, align 4
  %call.i128 = call ptr @__getblk_gfp(ptr noundef %33, i64 noundef %31, i32 noundef %20, i32 noundef 8) #17
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %bh.0 = phi ptr [ %call.i, %if.then27 ], [ %call.i128, %if.else ]
  %tobool32.not = icmp eq ptr %bh.0, null
  br i1 %tobool32.not, label %if.end31.out_crit_edge, label %if.end34

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end34:                                         ; preds = %if.end31
  call void @__might_sleep(ptr noundef nonnull @.str.189, i32 noundef 366) #17
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bh.0, i32 noundef 4) #17
  %34 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end34.if.then.i129_crit_edge

if.end34.if.then.i129_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i129

trylock_buffer.exit.i:                            ; preds = %if.end34
  call void @llvm.prefetch.p0(ptr nonnull %bh.0, i32 1, i32 3, i32 1) #17
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bh.0, ptr nonnull %bh.0, i32 4, ptr nonnull elementtype(i32) %bh.0) #17, !srcloc !490
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !491
  %37 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i129_crit_edge

trylock_buffer.exit.i.if.then.i129_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i129

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lock_buffer.exit

if.then.i129:                                     ; preds = %trylock_buffer.exit.i.if.then.i129_crit_edge, %if.end34.if.then.i129_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %bh.0) #17
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i129, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %38 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %offset.0136
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %data.addr.0134, i32 %20)
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 2
  %41 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_page, align 8
  call void @flush_dcache_page(ptr noundef %42) #17
  %43 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %bh.0) #17
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %bh.0) #17
  call void @reiserfs_write_lock(ptr noundef %sb) #17
  %call35 = call i32 @reiserfs_prepare_for_journal(ptr noundef %sb, ptr noundef nonnull %bh.0, i32 noundef 1) #17
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %journal_info38 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 146
  %47 = ptrtoint ptr %journal_info38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %journal_info38, align 4
  %call39 = call i32 @journal_mark_dirty(ptr noundef %48, ptr noundef nonnull %bh.0) #17
  br i1 %cmp.not, label %if.then41, label %set_buffer_uptodate.exit.brelse.exit_crit_edge

set_buffer_uptodate.exit.brelse.exit_crit_edge:   ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit

if.then41:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call42 = call i32 @reiserfs_add_ordered_list(ptr noundef %1, ptr noundef nonnull %bh.0) #17
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then41, %set_buffer_uptodate.exit.brelse.exit_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %sb) #17
  call void @__brelse(ptr noundef nonnull %bh.0) #17
  %sub44 = sub i32 %towrite.0137, %20
  %add.ptr45 = getelementptr i8, ptr %data.addr.0134, i32 %20
  %inc = add i32 %blk.0135, 1
  %cmp10.not = icmp eq i32 %sub44, 0
  br i1 %cmp10.not, label %brelse.exit.out_crit_edge, label %brelse.exit.while.body_crit_edge

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out:                                              ; preds = %brelse.exit.out_crit_edge, %if.end31.out_crit_edge, %while.body.out_crit_edge, %while.cond.preheader.out_crit_edge
  %towrite.0.lcssa = phi i32 [ 0, %while.cond.preheader.out_crit_edge ], [ %towrite.0137, %if.end31.out_crit_edge ], [ 0, %brelse.exit.out_crit_edge ], [ %towrite.0137, %while.body.out_crit_edge ]
  %err.1 = phi i32 [ 0, %while.cond.preheader.out_crit_edge ], [ -5, %if.end31.out_crit_edge ], [ 0, %brelse.exit.out_crit_edge ], [ %call19, %while.body.out_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %towrite.0.lcssa, i32 %len)
  %cmp46 = icmp eq i32 %towrite.0.lcssa, %len
  br i1 %cmp46, label %out.cleanup_crit_edge, label %if.end49

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end49:                                         ; preds = %out
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_size, align 8
  %conv50 = zext i32 %len to i64
  %add = add i64 %conv50, %off
  %conv51 = zext i32 %towrite.0.lcssa to i64
  %sub52 = sub i64 %add, %conv51
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %sub52)
  %cmp53 = icmp slt i64 %50, %sub52
  br i1 %cmp53, label %if.then55, label %if.end49.if.end60_crit_edge

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.then55:                                        ; preds = %if.end49
  %51 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i.i132 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i132 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %54, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !492
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %55 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i, label %if.then55.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then55.i_size_write.exit_crit_edge:            ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then55
  %56 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %59, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !493
  %60 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %65, ptrtoint (ptr @lockdep_recursion to i32)
  %66 = inttoptr i32 %add.i28.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !494
  %69 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i7.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool20.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %73 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i29.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i = icmp eq i32 %76, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %77 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i9.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %80, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !495
  %81 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %84, ptrtoint (ptr @hardirqs_enabled to i32)
  %85 = inttoptr i32 %add47.i.i to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !496
  %88 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i12.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %91, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool54.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !482

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.190, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then55.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %92 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %93, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !497
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %94 = call ptr @llvm.returnaddress(i32 0) #17
  %95 = ptrtoint ptr %94 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %95) #17
  %96 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %sub52, ptr %i_size, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %95) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !498
  %97 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %98, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !499
  %99 = call i32 @llvm.read_register.i32(metadata !467) #17
  %and.i.i.i26.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %102, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %i_size_write.exit, %if.end49.if.end60_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp61) #17
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp61, ptr noundef %1) #17
  %103 = call ptr @memcpy(ptr %i_ctime, ptr %tmp61, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp61) #17
  %104 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #17
  %sub62 = sub i32 %len, %towrite.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %out.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %sub62, %if.end60 ], [ -5, %do.end ], [ %err.1, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @reiserfs_get_dquots(ptr noundef readnone %inode) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dquot = getelementptr i8, ptr %inode, i32 -16
  ret ptr %i_dquot
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_sd_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_release(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_statistics(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_quota_off(ptr noundef %sb, i32 noundef %type) #2 align 64 {
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
  %i_attrs = getelementptr i8, ptr %1, i32 -240
  %2 = ptrtoint ptr %i_attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_attrs, align 8
  %and = and i32 %3, -145
  store i32 %and, ptr %i_attrs, align 8
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
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_off(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_block_writes(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_allow_writes(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_resize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_alloc_options(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_add_ordered_list(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_encode_fh(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_get_parent(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_quota_on(ptr noundef %sb, i32 noundef %type, i32 noundef %format_id, ptr noundef %path) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  tail call void @reiserfs_write_lock(ptr noundef %sb) #17
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_mount_opt, align 4
  %shl = select i1 %cmp, i32 8388608, i32 16777216
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb, align 4
  %cmp1.not = icmp eq ptr %8, %sb
  br i1 %cmp1.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end3:                                          ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr i8, ptr %10, i32 -248
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 8
  %and7 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end3.if.end14_crit_edge

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then9:                                         ; preds = %if.end3
  %call10 = tail call i32 @reiserfs_unpack(ptr noundef %10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.191, ptr noundef nonnull @__func__.reiserfs_quota_on, ptr noundef nonnull @.str.192, i32 noundef %call10) #17
  br label %out

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__mark_inode_dirty(ptr noundef %10, i32 noundef 7) #17
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end3.if.end14_crit_edge
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx = getelementptr %struct.reiserfs_sb_info, ptr %14, i32 0, i32 37, i32 %type
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %if.then17

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then17:                                        ; preds = %if.end14
  %17 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_parent, align 8
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %21 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_root, align 64
  %cmp19.not = icmp eq ptr %20, %22
  br i1 %cmp19.not, label %if.then17.if.end22_crit_edge, label %if.then20

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.193, ptr noundef nonnull @__func__.reiserfs_quota_on, ptr noundef nonnull @.str.194) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then17.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %reiserfs_file_data_log.exit, label %if.end22.if.then25_crit_edge

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

reiserfs_file_data_log.exit:                      ; preds = %if.end22
  %29 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_flags, align 8
  %31 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool24.not = icmp eq i32 %31, 0
  br i1 %tobool24.not, label %reiserfs_file_data_log.exit.if.end34_crit_edge, label %reiserfs_file_data_log.exit.if.then25_crit_edge

reiserfs_file_data_log.exit.if.then25_crit_edge:  ; preds = %reiserfs_file_data_log.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

reiserfs_file_data_log.exit.if.end34_crit_edge:   ; preds = %reiserfs_file_data_log.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then25:                                        ; preds = %reiserfs_file_data_log.exit.if.then25_crit_edge, %if.end22.if.then25_crit_edge
  %call26 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %sb, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end29:                                         ; preds = %if.then25
  %call30 = call i32 @journal_end_sync(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.end34:                                         ; preds = %if.end29.if.end34_crit_edge, %reiserfs_file_data_log.exit.if.end34_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %sb) #17
  %call35 = call i32 @dquot_quota_on(ptr noundef %sb, i32 noundef %type, i32 noundef %format_id, ptr noundef %path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #17
  %i_attrs = getelementptr i8, ptr %10, i32 -240
  %32 = ptrtoint ptr %i_attrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_attrs, align 8
  %or = or i32 %33, 144
  store i32 %or, ptr %i_attrs, align 8
  call void @inode_set_flags(ptr noundef %10, i32 noundef 10, i32 noundef 10) #17
  call void @up_write(ptr noundef %i_rwsem.i) #17
  call void @__mark_inode_dirty(ptr noundef %10, i32 noundef 7) #17
  br label %cleanup

out:                                              ; preds = %if.end29.out_crit_edge, %if.then25.out_crit_edge, %if.then12, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call26, %if.then25.out_crit_edge ], [ %call30, %if.end29.out_crit_edge ], [ -22, %if.then12 ], [ -22, %entry.out_crit_edge ], [ -18, %if.end.out_crit_edge ]
  call void @reiserfs_write_unlock(ptr noundef %sb) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then37, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.then37 ], [ %call35, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_sync(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_set_dqinfo(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_dqblk(ptr noundef, [2 x i32], ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_set_dqblk(ptr noundef, [2 x i32], ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_state(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_unpack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_on(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_write_dquot(ptr noundef %dquot) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %1 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dq_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %2) #17
  %3 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dq_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %8, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %call3 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %4, i32 noundef %cond) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dq_sb, align 4
  %call6 = call i32 @reiserfs_write_unlock_nested(ptr noundef %10) #17
  %call7 = call i32 @dquot_commit(ptr noundef %dquot) #17
  %11 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dq_sb, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %12, i32 noundef %call6) #17
  %call9 = call i32 @journal_end(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool10.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool10.not, i32 %call9, i32 %call7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %spec.select, %if.end ]
  %13 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dq_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %14) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dquot_alloc(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_destroy(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_acquire_dquot(ptr noundef %dquot) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %1 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dq_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %2) #17
  %3 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dq_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %8, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 83
  %call3 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %4, i32 noundef %cond) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dq_sb, align 4
  %call6 = call i32 @reiserfs_write_unlock_nested(ptr noundef %10) #17
  %call7 = call i32 @dquot_acquire(ptr noundef %dquot) #17
  %11 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dq_sb, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %12, i32 noundef %call6) #17
  %call9 = call i32 @journal_end(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool10.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool10.not, i32 %call9, i32 %call7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %spec.select, %if.end ]
  %13 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dq_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %14) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_release_dquot(ptr noundef %dquot) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %1 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dq_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %2) #17
  %3 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dq_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %8, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 7
  %call3 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %4, i32 noundef %cond) #17
  %9 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dq_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  %call7 = call i32 @dquot_release(ptr noundef %dquot) #17
  br i1 %tobool5.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dq_sb, align 4
  call void @reiserfs_write_lock(ptr noundef %12) #17
  %call9 = call i32 @journal_end(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool10.not = icmp eq i32 %call7, 0
  %ret.0 = select i1 %tobool10.not, i32 %call9, i32 %call7
  %13 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dq_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %14) #17
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ %call3, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_mark_dquot_dirty(ptr noundef %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_qf_names = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %s_qf_names to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_qf_names, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr %struct.reiserfs_sb_info, ptr %3, i32 0, i32 37, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call6 = tail call i32 @dquot_mark_dquot_dirty(ptr noundef %dquot) #17
  %call7 = tail call i32 @reiserfs_write_dquot(ptr noundef %dquot)
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = tail call i32 @dquot_mark_dquot_dirty(ptr noundef %dquot) #17
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call7, %if.then ], [ %call8, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_write_info(ptr noundef %sb, i32 noundef %type) #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  tail call void @reiserfs_write_lock(ptr noundef %sb) #17
  %call = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %sb, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #17
  %call2 = call i32 @dquot_commit_info(ptr noundef %sb, i32 noundef %type) #17
  call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %call1) #17
  %call3 = call i32 @journal_end(ptr noundef nonnull %th) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 %call3, i32 %call2
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %spec.select, %if.end ]
  call void @reiserfs_write_unlock(ptr noundef %sb) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_next_id(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_acquire(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_mark_dquot_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_commit_info(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyed_hash(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @yura_hash(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r5_hash(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_hashname(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_cpu_key(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_by_entry_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_de_name_and_namelen(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_iget(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_save_link_only(ptr noundef %s, ptr noundef %key, i32 noundef %oid_free) unnamed_addr #2 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #17
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %call = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @reiserfs_delete_solid_item(ptr noundef nonnull %th, ptr noundef null, ptr noundef %key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oid_free)
  %tobool1.not = icmp eq i32 %oid_free, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %k_objectid = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %k_objectid to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %k_objectid, align 1
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  call void @reiserfs_release_objectid(ptr noundef nonnull %th, i32 noundef %3) #17
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = call i32 @journal_end(ptr noundef nonnull %th) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_truncate_file(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_on_mount(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_proc_info_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_proc_info_global_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %i_prealloc_list = getelementptr inbounds %struct.reiserfs_inode_info, ptr %foo, i32 0, i32 6
  %0 = ptrtoint ptr %i_prealloc_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %i_prealloc_list, ptr %i_prealloc_list, align 4
  %prev.i = getelementptr inbounds %struct.reiserfs_inode_info, ptr %foo, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i_prealloc_list, ptr %prev.i, align 4
  %vfs_inode = getelementptr inbounds %struct.reiserfs_inode_info, ptr %foo, i32 0, i32 14
  tail call void @inode_init_once(ptr noundef %vfs_inode) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !47, !48, !50, !51, !53, !55, !56, !57, !59, !61, !62, !64, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106, !108, !110, !112, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !191, !193, !194, !196, !197, !199, !201, !203, !204, !206, !208, !210, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !258, !259, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !280, !281, !282, !284, !286, !287, !289, !290, !292, !294, !296, !297, !299, !301, !303, !305, !307, !308, !310, !311, !312, !314, !315, !316, !318, !320, !322, !324, !325, !326, !327, !329, !330, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !378, !379, !380, !382, !384, !385, !387, !389, !391, !392, !393, !395, !396, !398, !400, !401, !402, !404, !406, !408, !410, !411, !412, !414, !415, !417, !418, !420, !422, !423, !424, !426, !428, !429, !430, !432, !433, !435, !436, !438, !439, !441, !442, !444, !445, !447, !449, !451, !452, !454, !455, !456, !458, !460, !461, !462, !464, !465}
!llvm.named.register.sp = !{!467}
!llvm.module.flags = !{!468, !469, !470, !471, !472, !473, !474, !475}
!llvm.ident = !{!476}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/super.c", i32 441, i32 2}
!2 = !{ptr @__func__.add_save_link, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/super.c", i32 445, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/reiserfs/super.c", i32 466, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/reiserfs/super.c", i32 483, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/super.c", i32 498, i32 4}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/reiserfs/super.c", i32 2638, i32 10}
!17 = !{ptr @reiserfs_fs_type, !18, !"reiserfs_fs_type", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/super.c", i32 2636, i32 25}
!19 = !{ptr @__UNIQUE_ID_alias308, !20, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!20 = !{!"../fs/reiserfs/super.c", i32 2643, i32 1}
!21 = !{ptr @__UNIQUE_ID_description309, !22, !"__UNIQUE_ID_description309", i1 false, i1 false}
!22 = !{!"../fs/reiserfs/super.c", i32 2645, i32 1}
!23 = !{ptr @__UNIQUE_ID_author310, !24, !"__UNIQUE_ID_author310", i1 false, i1 false}
!24 = !{!"../fs/reiserfs/super.c", i32 2646, i32 1}
!25 = !{ptr @__UNIQUE_ID_file311, !26, !"__UNIQUE_ID_file311", i1 false, i1 false}
!26 = !{!"../fs/reiserfs/super.c", i32 2647, i32 1}
!27 = !{ptr @__UNIQUE_ID_license312, !26, !"__UNIQUE_ID_license312", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_reiserfs__313_2649_init_reiserfs_fs6, !29, !"__initcall__kmod_reiserfs__313_2649_init_reiserfs_fs6", i1 false, i1 false}
!29 = !{!"../fs/reiserfs/super.c", i32 2649, i32 1}
!30 = !{ptr @__exitcall_exit_reiserfs_fs, !31, !"__exitcall_exit_reiserfs_fs", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/super.c", i32 2650, i32 1}
!32 = !{ptr @reiserfs_3_5_magic_string, !33, !"reiserfs_3_5_magic_string", i1 false, i1 false}
!33 = !{!"../fs/reiserfs/super.c", i32 36, i32 19}
!34 = !{ptr @reiserfs_3_6_magic_string, !35, !"reiserfs_3_6_magic_string", i1 false, i1 false}
!35 = !{!"../fs/reiserfs/super.c", i32 37, i32 19}
!36 = !{ptr @reiserfs_jr_magic_string, !37, !"reiserfs_jr_magic_string", i1 false, i1 false}
!37 = !{!"../fs/reiserfs/super.c", i32 38, i32 19}
!38 = !{ptr @reiserfs_inode_cachep, !39, !"reiserfs_inode_cachep", i1 false, i1 false}
!39 = !{!"../fs/reiserfs/super.c", i32 637, i32 27}
!40 = !{ptr @reiserfs_fill_super.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../fs/reiserfs/super.c", i32 1919, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @reiserfs_fill_super.__key.11, !44, !"__key", i1 false, i1 false}
!44 = !{!"../fs/reiserfs/super.c", i32 1920, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @reiserfs_fill_super.__key.13, !44, !"__key", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @reiserfs_fill_super.__key.15, !49, !"__key", i1 false, i1 false}
!49 = !{!"../fs/reiserfs/super.c", i32 1921, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/reiserfs/super.c", i32 1924, i32 35}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/reiserfs/super.c", i32 1927, i32 3}
!55 = !{ptr @__func__.reiserfs_fill_super, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/reiserfs/super.c", i32 1941, i32 4}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/super.c", i32 1951, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/reiserfs/super.c", i32 1967, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/reiserfs/super.c", i32 1982, i32 3}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/reiserfs/super.c", i32 1984, i32 3}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/reiserfs/super.c", i32 1986, i32 3}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/reiserfs/super.c", i32 1995, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/super.c", i32 2001, i32 2}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/reiserfs/super.c", i32 2002, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/reiserfs/super.c", i32 2012, i32 20}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/reiserfs/super.c", i32 2014, i32 20}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/reiserfs/super.c", i32 2016, i32 20}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/reiserfs/super.c", i32 2019, i32 3}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @reiserfs_fill_super._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @reiserfs_fill_super._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/reiserfs/super.c", i32 2023, i32 3}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/reiserfs/super.c", i32 2035, i32 3}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/reiserfs/super.c", i32 2046, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/reiserfs/super.c", i32 2056, i32 3}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/reiserfs/super.c", i32 2077, i32 3}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/reiserfs/super.c", i32 2123, i32 4}
!105 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/reiserfs/super.c", i32 2141, i32 13}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/reiserfs/super.c", i32 2159, i32 22}
!110 = !{ptr @reiserfs_fill_super.__key.50, !111, !"__key", i1 false, i1 false}
!111 = !{!"../fs/reiserfs/super.c", i32 2209, i32 2}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @reiserfs_fill_super.__key.52, !114, !"__key", i1 false, i1 false}
!114 = !{!"../fs/reiserfs/super.c", i32 2210, i32 2}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/reiserfs/super.c", i32 1138, i32 4}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/reiserfs/super.c", i32 1139, i32 4}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/reiserfs/super.c", i32 1141, i32 4}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/reiserfs/super.c", i32 1142, i32 4}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/reiserfs/super.c", i32 1143, i32 4}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/reiserfs/super.c", i32 1144, i32 4}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/reiserfs/super.c", i32 1146, i32 4}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/reiserfs/super.c", i32 1147, i32 4}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/reiserfs/super.c", i32 1153, i32 4}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/reiserfs/super.c", i32 1154, i32 4}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/reiserfs/super.c", i32 1159, i32 19}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/reiserfs/super.c", i32 1160, i32 4}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/reiserfs/super.c", i32 1161, i32 4}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/reiserfs/super.c", i32 1162, i32 4}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/reiserfs/super.c", i32 1163, i32 4}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/reiserfs/super.c", i32 1164, i32 4}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/reiserfs/super.c", i32 1165, i32 4}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/reiserfs/super.c", i32 1166, i32 4}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/reiserfs/super.c", i32 1167, i32 4}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/reiserfs/super.c", i32 1168, i32 4}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/reiserfs/super.c", i32 1169, i32 4}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/reiserfs/super.c", i32 1170, i32 4}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/reiserfs/super.c", i32 1171, i32 4}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/reiserfs/super.c", i32 1172, i32 4}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/reiserfs/super.c", i32 1174, i32 4}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/reiserfs/super.c", i32 1176, i32 4}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/reiserfs/super.c", i32 1200, i32 21}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/reiserfs/super.c", i32 1207, i32 6}
!172 = !{ptr @__func__.reiserfs_parse_options, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/reiserfs/super.c", i32 1220, i32 5}
!176 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/reiserfs/super.c", i32 1229, i32 4}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/reiserfs/super.c", i32 1238, i32 6}
!182 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/reiserfs/super.c", i32 1253, i32 5}
!185 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/reiserfs/super.c", i32 1267, i32 6}
!188 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/reiserfs/super.c", i32 1274, i32 6}
!193 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/reiserfs/super.c", i32 1281, i32 6}
!196 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/reiserfs/super.c", i32 1299, i32 21}
!199 = !{ptr @.str.100, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/reiserfs/super.c", i32 1301, i32 26}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/reiserfs/super.c", i32 1304, i32 5}
!203 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/reiserfs/super.c", i32 1311, i32 5}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/reiserfs/super.c", i32 1330, i32 3}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/reiserfs/super.c", i32 1338, i32 3}
!210 = !{ptr @.str.106, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.107, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/reiserfs/super.c", i32 952, i32 3}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/reiserfs/super.c", i32 953, i32 3}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/reiserfs/super.c", i32 954, i32 3}
!217 = !{ptr @tails, !218, !"tails", i1 false, i1 false}
!218 = !{!"../fs/reiserfs/super.c", i32 951, i32 25}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/reiserfs/super.c", i32 942, i32 3}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/reiserfs/super.c", i32 943, i32 3}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/reiserfs/super.c", i32 944, i32 3}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/reiserfs/super.c", i32 945, i32 3}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/reiserfs/super.c", i32 946, i32 3}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/reiserfs/super.c", i32 947, i32 3}
!231 = !{ptr @balloc, !232, !"balloc", i1 false, i1 false}
!232 = !{!"../fs/reiserfs/super.c", i32 941, i32 25}
!233 = !{ptr @.str.116, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/reiserfs/super.c", i32 921, i32 3}
!235 = !{ptr @.str.117, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/reiserfs/super.c", i32 923, i32 3}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/reiserfs/super.c", i32 925, i32 3}
!239 = !{ptr @logging_mode, !240, !"logging_mode", i1 false, i1 false}
!240 = !{!"../fs/reiserfs/super.c", i32 920, i32 25}
!241 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/reiserfs/super.c", i32 932, i32 3}
!243 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/reiserfs/super.c", i32 933, i32 3}
!245 = !{ptr @barrier_mode, !246, !"barrier_mode", i1 false, i1 false}
!246 = !{!"../fs/reiserfs/super.c", i32 931, i32 25}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/reiserfs/super.c", i32 959, i32 3}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/reiserfs/super.c", i32 961, i32 3}
!251 = !{ptr @error_actions, !252, !"error_actions", i1 false, i1 false}
!252 = !{!"../fs/reiserfs/super.c", i32 958, i32 25}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/reiserfs/super.c", i32 1002, i32 18}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/reiserfs/super.c", i32 1022, i32 6}
!257 = !{ptr @__func__.reiserfs_getopt, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/reiserfs/super.c", i32 1029, i32 6}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/reiserfs/super.c", i32 1039, i32 3}
!263 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.129, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/reiserfs/super.c", i32 1048, i32 4}
!266 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.131, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/reiserfs/super.c", i32 1058, i32 4}
!269 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/reiserfs/super.c", i32 1065, i32 3}
!272 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/reiserfs/super.c", i32 1081, i32 3}
!275 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/reiserfs/super.c", i32 1104, i32 2}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/reiserfs/super.c", i32 1606, i32 3}
!280 = !{ptr @__func__.read_super_block, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/reiserfs/super.c", i32 1627, i32 3}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/reiserfs/super.c", i32 1636, i32 3}
!286 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/reiserfs/super.c", i32 1647, i32 3}
!289 = !{ptr @.str.144, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.145, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/reiserfs/super.c", i32 1664, i32 21}
!292 = !{ptr @.str.146, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/reiserfs/super.c", i32 1667, i32 21}
!294 = !{ptr @.str.147, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/reiserfs/super.c", i32 1670, i32 4}
!296 = !{ptr @.str.148, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/reiserfs/super.c", i32 1681, i32 10}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/reiserfs/super.c", i32 1682, i32 32}
!301 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/reiserfs/super.c", i32 1682, i32 40}
!303 = !{ptr @reiserfs_sops, !304, !"reiserfs_sops", i1 false, i1 false}
!304 = !{!"../fs/reiserfs/super.c", i32 811, i32 38}
!305 = !{ptr @reiserfs_alloc_inode.__key, !306, !"__key", i1 false, i1 false}
!306 = !{!"../fs/reiserfs/super.c", i32 646, i32 2}
!307 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.153, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/reiserfs/super.c", i32 699, i32 3}
!310 = !{ptr @__func__.reiserfs_dirty_inode, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.155, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/reiserfs/super.c", i32 625, i32 3}
!314 = !{ptr @__func__.reiserfs_put_super, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.157, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/reiserfs/super.c", i32 1360, i32 21}
!318 = !{ptr @.str.158, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/reiserfs/super.c", i32 1365, i32 21}
!320 = !{ptr @.str.159, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/reiserfs/super.c", i32 1370, i32 21}
!322 = !{ptr @.str.160, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/reiserfs/super.c", i32 1385, i32 4}
!324 = !{ptr @.str.161, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @handle_barrier_mode._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @handle_barrier_mode._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/reiserfs/super.c", i32 1388, i32 4}
!329 = !{ptr @handle_barrier_mode._entry.162, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @handle_barrier_mode._entry_ptr.164, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.165, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/reiserfs/super.c", i32 728, i32 17}
!333 = !{ptr @.str.166, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/reiserfs/super.c", i32 730, i32 17}
!335 = !{ptr @.str.167, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/reiserfs/super.c", i32 734, i32 17}
!337 = !{ptr @.str.168, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/reiserfs/super.c", i32 738, i32 17}
!339 = !{ptr @.str.169, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/reiserfs/super.c", i32 740, i32 17}
!341 = !{ptr @.str.170, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/reiserfs/super.c", i32 744, i32 17}
!343 = !{ptr @.str.171, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/reiserfs/super.c", i32 746, i32 17}
!345 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/reiserfs/super.c", i32 750, i32 17}
!347 = !{ptr @.str.173, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/reiserfs/super.c", i32 753, i32 17}
!349 = !{ptr @.str.174, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/reiserfs/super.c", i32 756, i32 17}
!351 = !{ptr @.str.175, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/reiserfs/super.c", i32 759, i32 17}
!353 = !{ptr @.str.176, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/reiserfs/super.c", i32 765, i32 19}
!355 = !{ptr @.str.177, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/reiserfs/super.c", i32 772, i32 17}
!357 = !{ptr @.str.178, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/reiserfs/super.c", i32 777, i32 17}
!359 = !{ptr @.str.179, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../fs/reiserfs/super.c", i32 780, i32 18}
!361 = !{ptr @.str.180, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../fs/reiserfs/super.c", i32 782, i32 18}
!363 = !{ptr @.str.181, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/reiserfs/super.c", i32 788, i32 17}
!365 = !{ptr @.str.182, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../fs/reiserfs/super.c", i32 790, i32 17}
!367 = !{ptr @.str.183, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../fs/reiserfs/super.c", i32 792, i32 17}
!369 = !{ptr @.str.184, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/reiserfs/super.c", i32 794, i32 17}
!371 = !{ptr @.str.185, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!373 = !{ptr @.str.186, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!375 = !{ptr @.str.187, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/reiserfs/super.c", i32 2550, i32 3}
!377 = !{ptr @.str.188, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @reiserfs_quota_write._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @reiserfs_quota_write._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.189, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!382 = distinct !{null, !383, !"__already_done", i1 false, i1 false}
!383 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!384 = !{ptr @.str.190, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @reiserfs_export_ops, !386, !"reiserfs_export_ops", i1 false, i1 false}
!386 = !{!"../fs/reiserfs/super.c", i32 863, i32 39}
!387 = !{ptr @reiserfs_qctl_operations, !388, !"reiserfs_qctl_operations", i1 false, i1 false}
!388 = !{!"../fs/reiserfs/super.c", i32 852, i32 34}
!389 = !{ptr @.str.191, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/reiserfs/super.c", i32 2411, i32 4}
!391 = !{ptr @__func__.reiserfs_quota_on, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.192, !390, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.193, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../fs/reiserfs/super.c", i32 2423, i32 4}
!395 = !{ptr @.str.194, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @reiserfs_quota_operations, !397, !"reiserfs_quota_operations", i1 false, i1 false}
!397 = !{!"../fs/reiserfs/super.c", i32 841, i32 38}
!398 = !{ptr @.str.195, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/reiserfs/super.c", i32 1706, i32 3}
!400 = !{ptr @__func__.reread_meta_blocks, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.196, !399, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.197, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/reiserfs/super.c", i32 1857, i32 20}
!404 = !{ptr @.str.198, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../fs/reiserfs/super.c", i32 1860, i32 20}
!406 = !{ptr @.str.199, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/reiserfs/super.c", i32 1863, i32 20}
!408 = !{ptr @.str.200, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../fs/reiserfs/super.c", i32 1808, i32 4}
!410 = !{ptr @__func__.what_hash, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.201, !409, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.202, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../fs/reiserfs/super.c", i32 1814, i32 4}
!414 = !{ptr @.str.203, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.204, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../fs/reiserfs/super.c", i32 1820, i32 4}
!417 = !{ptr @.str.205, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @.str.206, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../fs/reiserfs/super.c", i32 1751, i32 20}
!420 = !{ptr @.str.207, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../fs/reiserfs/super.c", i32 1763, i32 3}
!422 = !{ptr @__func__.find_hash_out, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.208, !421, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.209, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../fs/reiserfs/super.c", i32 1778, i32 3}
!426 = !{ptr @.str.210, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../fs/reiserfs/super.c", i32 275, i32 5}
!428 = !{ptr @__func__.finish_unfinished, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.211, !427, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.212, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../fs/reiserfs/super.c", i32 288, i32 4}
!432 = !{ptr @.str.213, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.214, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../fs/reiserfs/super.c", i32 296, i32 4}
!435 = !{ptr @.str.215, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.216, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../fs/reiserfs/super.c", i32 329, i32 4}
!438 = !{ptr @.str.217, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.218, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../fs/reiserfs/super.c", i32 337, i32 4}
!441 = !{ptr @.str.219, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @.str.220, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../fs/reiserfs/super.c", i32 355, i32 4}
!444 = !{ptr @.str.221, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.222, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../fs/reiserfs/super.c", i32 372, i32 21}
!447 = !{ptr @.str.223, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../fs/reiserfs/super.c", i32 382, i32 21}
!449 = !{ptr @.str.224, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../fs/reiserfs/super.c", i32 389, i32 5}
!451 = !{ptr @.str.225, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.226, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../fs/reiserfs/super.c", i32 399, i32 3}
!454 = !{ptr @finish_unfinished._entry, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @finish_unfinished._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.227, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../fs/reiserfs/super.c", i32 418, i32 20}
!458 = !{ptr @.str.228, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../fs/reiserfs/super.c", i32 1399, i32 4}
!460 = !{ptr @__func__.handle_attrs, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.229, !459, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @.str.230, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../fs/reiserfs/super.c", i32 1405, i32 4}
!464 = !{ptr @.str.231, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.232, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../fs/reiserfs/super.c", i32 669, i32 44}
!467 = !{!"sp"}
!468 = !{i32 1, !"wchar_size", i32 2}
!469 = !{i32 1, !"min_enum_size", i32 4}
!470 = !{i32 8, !"branch-target-enforcement", i32 0}
!471 = !{i32 8, !"sign-return-address", i32 0}
!472 = !{i32 8, !"sign-return-address-all", i32 0}
!473 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!474 = !{i32 7, !"uwtable", i32 1}
!475 = !{i32 7, !"frame-pointer", i32 2}
!476 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!477 = !{!"branch_weights", i32 1, i32 2000}
!478 = !{i64 2155128001, i64 2155128485, i64 2155128038, i64 2155128094, i64 2155128128, i64 2155128152, i64 2155128193, i64 2155128214, i64 2155128242, i64 2155128276}
!479 = !{!"auto-init"}
!480 = !{i8 0, i8 2}
!481 = !{i64 2155147519, i64 2155148004, i64 2155147556, i64 2155147612, i64 2155147646, i64 2155147670, i64 2155147711, i64 2155147732, i64 2155147760, i64 2155147794}
!482 = !{!"branch_weights", i32 2000, i32 1}
!483 = !{i64 813417, i64 813478}
!484 = !{i64 816149}
!485 = !{i64 816434}
!486 = !{i64 2153625135}
!487 = !{i64 2153624977}
!488 = !{i64 2153625305}
!489 = !{i64 2150041543}
!490 = !{i64 2148418575, i64 2148418607, i64 2148418636, i64 2148418670, i64 2148418701, i64 2148418724}
!491 = !{i64 2148507680}
!492 = !{i64 2153627066}
!493 = !{i64 2149933875}
!494 = !{i64 2149938807}
!495 = !{i64 2149960519}
!496 = !{i64 2149965411}
!497 = !{i64 2150041868}
!498 = !{i64 2150042193}
!499 = !{i64 2153638928}
