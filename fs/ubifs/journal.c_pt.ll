; ModuleID = '/llk/IR_all_yes/fs/ubifs/journal.c_pt.bc'
source_filename = "../fs/ubifs/journal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%union.ubifs_key = type { [1 x i64] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mutex_is_locked(&host_ui->ui_mutex)\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ubifs/journal.c\00", [45 x i8] zeroinitializer }, align 32
@ubifs_jnl_write_data.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_jnl_write_data\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBIFS DBG jnl (pid %d): ino %lu, blk %u, len %d, key %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"len <= UBIFS_BLOCK_SIZE\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"compr_len <= UBIFS_BLOCK_SIZE\00", [34 x i8] zeroinitializer }, align 32
@ubifs_jnl_write_inode.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.1, ptr @.str.8, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_jnl_write_inode\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG jnl (pid %d): ino %lu, nlink %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot delete inode, it has too much xattrs!\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dead directory entry '%s', error %d\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ubifs_inode(xino)->xattr\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode->i_nlink == 0\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ubifs_inode(fst_dir)->data_len == 0\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ubifs_inode(snd_dir)->data_len == 0\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mutex_is_locked(&ubifs_inode(fst_dir)->ui_mutex)\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mutex_is_locked(&ubifs_inode(snd_dir)->ui_mutex)\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ubifs_inode(old_dir)->data_len == 0\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ubifs_inode(new_dir)->data_len == 0\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mutex_is_locked(&ubifs_inode(old_dir)->ui_mutex)\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mutex_is_locked(&ubifs_inode(new_dir)->ui_mutex)\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mutex_is_locked(&new_ui->ui_mutex)\00", [61 x i8] zeroinitializer }, align 32
@ubifs_jnl_truncate.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.1, ptr @.str.23, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_jnl_truncate\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBIFS DBG jnl (pid %d): ino %lu, size %lld -> %lld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"!ui->data_len\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"S_ISREG(inode->i_mode)\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mutex_is_locked(&ui->ui_mutex)\00", [33 x i8] zeroinitializer }, align 32
@ubifs_jnl_truncate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.1, ptr @.str.27, i8 1, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG jnl (pid %d): last block key %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad data node (block %u, inode %lu)\00", [60 x i8] zeroinitializer }, align 32
@ubifs_jnl_change_xattr.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.29, ptr @.str.1, ptr @.str.30, i8 1, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_jnl_change_xattr\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UBIFS DBG jnl (pid %d): ino %lu, ino %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inode->i_nlink > 0\00", [45 x i8] zeroinitializer }, align 32
@make_reservation.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str.1, ptr @.str.33, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"make_reservation\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG jnl (pid %d): no space, retry\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stuck in space allocation\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"too many space allocation re-tries (%d)\00", [56 x i8] zeroinitializer }, align 32
@make_reservation.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str.1, ptr @.str.36, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"UBIFS DBG jnl (pid %d): -EAGAIN, commit and retry (retried %d times)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot reserve %d bytes in jhead %d, error %d\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!c->ro_media && !c->ro_mount\00", [35 x i8] zeroinitializer }, align 32
@reserve_space.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.39, ptr @.str.1, ptr @.str.40, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reserve_space\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG jnl (pid %d): no free space in jhead %s, run GC\0A\00", [37 x i8] zeroinitializer }, align 32
@reserve_space.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.39, ptr @.str.1, ptr @.str.41, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBIFS DBG jnl (pid %d): GC couldn't make a free LEB for jhead %s\0A\00", [62 x i8] zeroinitializer }, align 32
@reserve_space.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.39, ptr @.str.1, ptr @.str.42, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG jnl (pid %d): retry (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@reserve_space.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.39, ptr @.str.1, ptr @.str.43, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UBIFS DBG jnl (pid %d): return -ENOSPC\0A\00", [56 x i8] zeroinitializer }, align 32
@reserve_space.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.39, ptr @.str.1, ptr @.str.44, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG jnl (pid %d): got LEB %d for jhead %s\0A\00", [47 x i8] zeroinitializer }, align 32
@reserve_space.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.39, ptr @.str.1, ptr @.str.45, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UBIFS DBG jnl (pid %d): return LEB %d back, already have LEB %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"err < 0\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!(hash & ~UBIFS_S_KEY_HASH_MASK)\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/key.h\00", [17 x i8] zeroinitializer }, align 32
@write_head.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.50, ptr @.str.1, ptr @.str.51, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_head\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBIFS DBG jnl (pid %d): jhead %s, LEB %d:%d, len %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"len >= auth_node_size\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"len > nodelen\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ch->magic == cpu_to_le32(UBIFS_NODE_MAGIC)\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max_xattrs < c->max_orphans\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out_len <= UBIFS_BLOCK_SIZE\00", [36 x i8] zeroinitializer }, align 32
@switch.table.ubifs_jnl_update = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\05\04\00\01\00\03\00\00\00\02\00\06", [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_jnl_xrename = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\05\04\00\01\00\03\00\00\00\02\00\06", [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_jnl_xrename.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\05\04\00\01\00\03\00\00\00\02\00\06", [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_jnl_rename = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\05\04\00\01\00\03\00\00\00\02\00\06", [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_jnl_rename.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\05\04\00\01\00\03\00\00\00\02\00\06", [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_jnl_delete_xattr = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\05\04\00\01\00\03\00\00\00\02\00\06", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967285]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 554, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 734, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 736, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 769, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 851, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 886, i32 17 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 908, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 915, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1010, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1069, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1070, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1071, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1072, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1236, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1237, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1238, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1239, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1245, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1523, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1525, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1526, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1527, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1551, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1561, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1804, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1805, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 331, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 355, i32 16 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 359, i32 17 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 362, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 372, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 108, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 139, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 154, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 157, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 161, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 166, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 175, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 212, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 169, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 278, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 235, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 240, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 241, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 283, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"../fs/ubifs/key.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 270, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [22 x i8] c"../fs/ubifs/journal.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1484, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [30 x i8] c"switch.table.ubifs_jnl_update\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [31 x i8] c"switch.table.ubifs_jnl_xrename\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [34 x i8] c"switch.table.ubifs_jnl_xrename.59\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [30 x i8] c"switch.table.ubifs_jnl_rename\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [33 x i8] c"switch.table.ubifs_jnl_rename.60\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [36 x i8] c"switch.table.ubifs_jnl_delete_xattr\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.ubifs_jnl_update, ptr @switch.table.ubifs_jnl_xrename, ptr @switch.table.ubifs_jnl_xrename.59, ptr @switch.table.ubifs_jnl_rename, ptr @switch.table.ubifs_jnl_rename.60, ptr @switch.table.ubifs_jnl_delete_xattr], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_jnl_update to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_jnl_xrename to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_jnl_xrename.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_jnl_rename to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_jnl_rename.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_jnl_delete_xattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_update(ptr noundef %c, ptr noundef %dir, ptr noundef %nm, ptr noundef %inode, i32 noundef %deletion, i32 noundef %xent) local_unnamed_addr #0 align 64 {
entry:
  %lnum = alloca i32, align 4
  %dent_offs = alloca i32, align 4
  %dent_key = alloca %union.ubifs_key, align 8
  %ino_key = alloca %union.ubifs_key, align 8
  %hash_dent = alloca [64 x i8], align 1
  %hash_ino = alloca [64 x i8], align 1
  %hash_ino_host = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dent_offs) #8
  %1 = ptrtoint ptr %dent_offs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dent_offs, align 4, !annotation !131
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and1 = and i32 %7, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deletion)
  %tobool3.not = icmp eq i32 %deletion, 0
  br i1 %tobool3.not, label %lor.end.land.end_crit_edge, label %land.rhs

lor.end.land.end_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end.land.end_crit_edge
  %12 = phi i1 [ false, %lor.end.land.end_crit_edge ], [ %cmp, %land.rhs ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dent_key) #8
  %13 = ptrtoint ptr %dent_key to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %dent_key, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino_key) #8
  %14 = ptrtoint ptr %ino_key to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %ino_key, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_dent) #8
  %15 = call ptr @memset(ptr %hash_dent, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_ino) #8
  %16 = call ptr @memset(ptr %hash_ino, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_ino_host) #8
  %17 = call ptr @memset(ptr %hash_ino_host, i32 255, i32 64)
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 7
  %call6 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #8
  br i1 %call6, label %land.end.do.end_crit_edge, label %if.then, !prof !132

land.end.do.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 554) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.end.do.end_crit_edge
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len14 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len14, align 4
  %add15 = add i32 %19, 57
  br i1 %12, label %do.end.if.end29_crit_edge, label %if.then17

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then17:                                        ; preds = %do.end
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %20 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len, align 4
  %add18 = add i32 %21, 160
  %i_sb19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb19, align 4
  %s_flags20 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_flags20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags20, align 4
  %and21 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.rhs23, label %if.then17.lor.end27_crit_edge

if.then17.lor.end27_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end27

lor.rhs23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags24 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %26 = ptrtoint ptr %i_flags24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags24, align 4
  %and25 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26 = icmp ne i32 %and25, 0
  br label %lor.end27

lor.end27:                                        ; preds = %lor.rhs23, %if.then17.lor.end27_crit_edge
  %28 = phi i1 [ true, %if.then17.lor.end27_crit_edge ], [ %tobool26, %lor.rhs23 ]
  %or327 = or i1 %8, %28
  br label %if.end29

if.end29:                                         ; preds = %lor.end27, %do.end.if.end29_crit_edge
  %ilen.0 = phi i32 [ 160, %do.end.if.end29_crit_edge ], [ %add18, %lor.end27 ]
  %sync.0.in = phi i1 [ %8, %do.end.if.end29_crit_edge ], [ %or327, %lor.end27 ]
  %sync.0 = zext i1 %sync.0.in to i32
  %add30 = add i32 %19, 64
  %and31 = and i32 %add30, -8
  %add32 = add i32 %ilen.0, 7
  %and33 = and i32 %add32, -8
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %29 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %30 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool37.not = icmp eq i16 %30, 0
  %data_len45 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 15
  %31 = ptrtoint ptr %data_len45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len45, align 4
  br i1 %tobool37.not, label %if.end29.if.end47_crit_edge, label %ubifs_auth_node_sz.exit

if.end29.if.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

ubifs_auth_node_sz.exit:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %add40 = add i32 %32, 7
  %and41 = and i32 %add40, -8
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %33 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %34, 24
  %add43 = add i32 %add.i, %and41
  br label %if.end47

if.end47:                                         ; preds = %ubifs_auth_node_sz.exit, %if.end29.if.end47_crit_edge
  %add43.pn = phi i32 [ %add43, %ubifs_auth_node_sz.exit ], [ %32, %if.end29.if.end47_crit_edge ]
  %add34 = add i32 %and31, 160
  %add35 = add i32 %add34, %and33
  %len.0 = add i32 %add35, %add43.pn
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0, i32 noundef 3392) #11
  %tobool49.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = tail call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 1, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.out_free_crit_edge

if.end51.out_free_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xent)
  %tobool56.not = icmp eq i32 %xent, 0
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i, i32 0, i32 4
  br i1 %tobool56.not, label %if.then57, label %if.else64

if.then57:                                        ; preds = %if.end55
  %35 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %node_type, align 4
  %36 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disk_name, align 4
  %cmp59 = icmp eq ptr %37, null
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then57
  %hash = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 2
  %40 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %41)
  %tobool.not.i328 = icmp ult i32 %41, 536870912
  br i1 %tobool.not.i328, label %if.then60.dent_key_init_hash.exit_crit_edge, label %if.then.i329, !prof !132

if.then60.dent_key_init_hash.exit_crit_edge:      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %dent_key_init_hash.exit

if.then.i329:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 169) #8
  br label %dent_key_init_hash.exit

dent_key_init_hash.exit:                          ; preds = %if.then.i329, %if.then60.dent_key_init_hash.exit_crit_edge
  %42 = ptrtoint ptr %dent_key to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %dent_key, align 8
  %or.i = or i32 %41, 1073741824
  br label %if.end68

if.else61:                                        ; preds = %if.then57
  %key_hash.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %43 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %key_hash.i, align 4
  %45 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len14, align 4
  %call.i = tail call i32 %44(ptr noundef nonnull %37, i32 noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i)
  %tobool.not.i330 = icmp ult i32 %call.i, 536870912
  br i1 %tobool.not.i330, label %if.else61.dent_key_init.exit_crit_edge, label %if.then.i331, !prof !132

if.else61.dent_key_init.exit_crit_edge:           ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #10
  br label %dent_key_init.exit

if.then.i331:                                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 152) #8
  br label %dent_key_init.exit

dent_key_init.exit:                               ; preds = %if.then.i331, %if.else61.dent_key_init.exit_crit_edge
  %47 = ptrtoint ptr %dent_key to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %39, ptr %dent_key, align 8
  %or.i332 = or i32 %call.i, 1073741824
  br label %if.end68

if.else64:                                        ; preds = %if.end55
  %48 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %node_type, align 4
  %i_ino67 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %49 = ptrtoint ptr %i_ino67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_ino67, align 8
  %key_hash.i333 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %51 = ptrtoint ptr %key_hash.i333 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %key_hash.i333, align 4
  %53 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %disk_name, align 4
  %55 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len14, align 4
  %call.i336 = tail call i32 %52(ptr noundef %54, i32 noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i336)
  %tobool.not.i337 = icmp ult i32 %call.i336, 536870912
  br i1 %tobool.not.i337, label %if.else64.xent_key_init.exit_crit_edge, label %if.then.i338, !prof !132

if.else64.xent_key_init.exit_crit_edge:           ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %xent_key_init.exit

if.then.i338:                                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 221) #8
  br label %xent_key_init.exit

xent_key_init.exit:                               ; preds = %if.then.i338, %if.else64.xent_key_init.exit_crit_edge
  %57 = ptrtoint ptr %dent_key to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %50, ptr %dent_key, align 8
  %or.i339 = or i32 %call.i336, 1610612736
  br label %if.end68

if.end68:                                         ; preds = %xent_key_init.exit, %dent_key_init.exit, %dent_key_init_hash.exit
  %or.i.sink = phi i32 [ %or.i, %dent_key_init_hash.exit ], [ %or.i332, %dent_key_init.exit ], [ %or.i339, %xent_key_init.exit ]
  %arrayidx5.i = getelementptr inbounds [2 x i32], ptr %dent_key, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i.sink, ptr %arrayidx5.i, align 4
  %key = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %dent_key to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dent_key, align 8
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  %62 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %key, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i.sink) #8
  %arrayidx3.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx3.i, align 4
  %add.ptr.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 8
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %add.ptr.i, align 32
  br i1 %tobool3.not, label %cond.false, label %if.end68.cond.end_crit_edge

if.end68.cond.end_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino70 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %66 = ptrtoint ptr %i_ino70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_ino70, align 8
  %conv = zext i32 %67 to i64
  %68 = tail call i64 @llvm.bswap.i64(i64 %conv)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end68.cond.end_crit_edge
  %cond = phi i64 [ %68, %cond.false ], [ 0, %if.end68.cond.end_crit_edge ]
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %inum to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %cond, ptr %inum, align 8
  %70 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %inode, align 8
  %72 = and i16 %71, -4096
  %and.i = zext i16 %72 to i32
  %73 = add nsw i32 %and.i, -4096
  %74 = lshr exact i32 %73, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %73)
  %75 = icmp ult i32 %73, 49152
  br i1 %75, label %switch.hole_check, label %cond.end.do.body.i_crit_edge

cond.end.do.body.i_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %switch.hole_check.do.body.i_crit_edge, %cond.end.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

switch.hole_check:                                ; preds = %cond.end
  %switch.maskindex = trunc i32 %74 to i16
  %switch.shifted = lshr i16 2731, %switch.maskindex
  %76 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %switch.lobit.not = icmp eq i16 %76, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body.i_crit_edge, label %switch.lookup

switch.hole_check.do.body.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_update, i32 0, i32 %74
  %77 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %77)
  %switch.load = load i8, ptr %switch.gep, align 1
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %switch.load, ptr %type, align 1
  %79 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len14, align 4
  %conv76 = trunc i32 %80 to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv76)
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %nlen to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %nlen, align 2
  %name77 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7
  %83 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %disk_name, align 4
  %85 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len14, align 4
  %87 = call ptr @memcpy(ptr %name77, ptr %84, i32 %86)
  %arrayidx = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7, i32 %86
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %arrayidx, align 1
  %89 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load.i342 = load i16, ptr %authenticated.i, align 8
  %90 = and i16 %bf.load.i342, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i343 = icmp eq i16 %90, 0
  br i1 %tobool.not.i343, label %switch.lookup.set_dent_cookie.exit_crit_edge, label %if.then.i345

switch.lookup.set_dent_cookie.exit_crit_edge:     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dent_cookie.exit

if.then.i345:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %call.i344 = tail call i32 @prandom_u32() #8
  br label %set_dent_cookie.exit

set_dent_cookie.exit:                             ; preds = %if.then.i345, %switch.lookup.set_dent_cookie.exit_crit_edge
  %call.sink.i = phi i32 [ %call.i344, %if.then.i345 ], [ 0, %switch.lookup.set_dent_cookie.exit_crit_edge ]
  %91 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 6
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call.sink.i, ptr %91, align 4
  %padding1.i = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 3
  %93 = ptrtoint ptr %padding1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %padding1.i, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef %add15, i32 noundef 0) #8
  %94 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i.i347 = load i16, ptr %authenticated.i, align 8
  %95 = and i16 %bf.load.i.i347, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i348 = icmp eq i16 %95, 0
  br i1 %tobool.not.i348, label %set_dent_cookie.exit.if.end90_crit_edge, label %ubifs_node_calc_hash.exit

set_dent_cookie.exit.if.end90_crit_edge:          ; preds = %set_dent_cookie.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

ubifs_node_calc_hash.exit:                        ; preds = %set_dent_cookie.exit
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %hash_dent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool88.not = icmp eq i32 %call1.i, 0
  br i1 %tobool88.not, label %ubifs_node_calc_hash.exit.if.end90_crit_edge, label %ubifs_node_calc_hash.exit.out_release_crit_edge

ubifs_node_calc_hash.exit.out_release_crit_edge:  ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit.if.end90_crit_edge:     ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.end90:                                         ; preds = %ubifs_node_calc_hash.exit.if.end90_crit_edge, %set_dent_cookie.exit.if.end90_crit_edge
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %and31
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr, ptr noundef %inode, i32 noundef 0)
  %96 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i.i352 = load i16, ptr %authenticated.i, align 8
  %97 = and i16 %bf.load.i.i352, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.not.i353 = icmp eq i16 %97, 0
  br i1 %tobool.not.i353, label %if.end90.if.end95_crit_edge, label %ubifs_node_calc_hash.exit357

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

ubifs_node_calc_hash.exit357:                     ; preds = %if.end90
  %call1.i354 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr, ptr noundef nonnull %hash_ino) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i354)
  %tobool93.not = icmp eq i32 %call1.i354, 0
  br i1 %tobool93.not, label %ubifs_node_calc_hash.exit357.if.end95_crit_edge, label %ubifs_node_calc_hash.exit357.out_release_crit_edge

ubifs_node_calc_hash.exit357.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit357
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit357.if.end95_crit_edge:  ; preds = %ubifs_node_calc_hash.exit357
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.end95:                                         ; preds = %ubifs_node_calc_hash.exit357.if.end95_crit_edge, %if.end90.if.end95_crit_edge
  %add.ptr96 = getelementptr i8, ptr %add.ptr, i32 %and33
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr96, ptr noundef %dir, i32 noundef 1)
  %98 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i.i359 = load i16, ptr %authenticated.i, align 8
  %99 = and i16 %bf.load.i.i359, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool.not.i360 = icmp eq i16 %99, 0
  br i1 %tobool.not.i360, label %if.end95.if.end101_crit_edge, label %ubifs_node_calc_hash.exit364

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

ubifs_node_calc_hash.exit364:                     ; preds = %if.end95
  %call1.i361 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr96, ptr noundef nonnull %hash_ino_host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i361)
  %tobool99.not = icmp eq i32 %call1.i361, 0
  br i1 %tobool99.not, label %ubifs_node_calc_hash.exit364.if.end101_crit_edge, label %ubifs_node_calc_hash.exit364.out_release_crit_edge

ubifs_node_calc_hash.exit364.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit364
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit364.if.end101_crit_edge: ; preds = %ubifs_node_calc_hash.exit364
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %ubifs_node_calc_hash.exit364.if.end101_crit_edge, %if.end95.if.end101_crit_edge
  br i1 %12, label %if.then103, label %if.end101.if.end109_crit_edge

if.end101.if.end109_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then103:                                       ; preds = %if.end101
  %i_ino104 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %100 = ptrtoint ptr %i_ino104 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %i_ino104, align 8
  %call105 = call i32 @ubifs_add_orphan(ptr noundef %c, i32 noundef %101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %102 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %jheads.i, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %103, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  br label %out_free

if.end108:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %cmt_no = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %104 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %cmt_no, align 8
  %del_cmtno = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 2
  %106 = ptrtoint ptr %del_cmtno to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %del_cmtno, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end101.if.end109_crit_edge
  %orphan_added.0 = phi i32 [ 1, %if.end108 ], [ 0, %if.end101.if.end109_crit_edge ]
  %call110 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %len.0, ptr noundef nonnull %lnum, ptr noundef nonnull %dent_offs, i32 noundef %sync.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.out_release_crit_edge

if.end109.out_release_crit_edge:                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.end113:                                        ; preds = %if.end109
  br i1 %sync.0.in, label %if.end113.if.end120_crit_edge, label %if.then115

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %107 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %jheads, align 8
  %arrayidx116 = getelementptr %struct.ubifs_jhead, ptr %108, i32 1
  %i_ino118 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %109 = ptrtoint ptr %i_ino118 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %i_ino118, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx116, i32 noundef %110) #8
  %i_ino119 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %111 = ptrtoint ptr %i_ino119 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i_ino119, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx116, i32 noundef %112) #8
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end113.if.end120_crit_edge
  %jheads.i365 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %113 = ptrtoint ptr %jheads.i365 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %jheads.i365, align 8
  %io_mutex.i366 = getelementptr %struct.ubifs_jhead, ptr %114, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i366) #8
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  %115 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %lnum, align 4
  call fastcc void @ubifs_add_auth_dirt(ptr noundef %c, i32 noundef %116)
  br i1 %tobool3.not, label %if.else136, label %if.then122

if.then122:                                       ; preds = %if.end120
  %117 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %disk_name, align 4
  %cmp125 = icmp eq ptr %118, null
  br i1 %cmp125, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  %minor_hash = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 3
  %119 = ptrtoint ptr %minor_hash to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %minor_hash, align 4
  %call128 = call i32 @ubifs_tnc_remove_dh(ptr noundef %c, ptr noundef nonnull %dent_key, i32 noundef %120) #8
  br label %if.end131

if.else129:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  %call130 = call i32 @ubifs_tnc_remove_nm(ptr noundef %c, ptr noundef nonnull %dent_key, ptr noundef %nm) #8
  br label %if.end131

if.end131:                                        ; preds = %if.else129, %if.then127
  %err.0 = phi i32 [ %call128, %if.then127 ], [ %call130, %if.else129 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool132.not = icmp eq i32 %err.0, 0
  br i1 %tobool132.not, label %if.end134, label %if.end131.out_ro_crit_edge

if.end131.out_ro_crit_edge:                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end134:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %call.i367 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %116, i32 noundef -2147483647, i32 noundef %add15, i32 noundef 0, i32 noundef 0) #8
  br label %if.end139

if.else136:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %dent_offs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dent_offs, align 4
  %call138 = call i32 @ubifs_tnc_add_nm(ptr noundef %c, ptr noundef nonnull %dent_key, i32 noundef %116, i32 noundef %122, i32 noundef %add15, ptr noundef nonnull %hash_dent, ptr noundef %nm) #8
  br label %if.end139

if.end139:                                        ; preds = %if.else136, %if.end134
  %err.1 = phi i32 [ %call.i367, %if.end134 ], [ %call138, %if.else136 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool140.not = icmp eq i32 %err.1, 0
  br i1 %tobool140.not, label %if.end142, label %if.end139.out_ro_crit_edge

if.end139.out_ro_crit_edge:                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end142:                                        ; preds = %if.end139
  %i_ino143 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %123 = ptrtoint ptr %i_ino143 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %i_ino143, align 8
  %125 = ptrtoint ptr %ino_key to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %ino_key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %ino_key, i32 0, i32 1
  %126 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %arrayidx1.i, align 4
  %127 = ptrtoint ptr %dent_offs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dent_offs, align 4
  %add144 = add i32 %128, %and31
  %call146 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %ino_key, i32 noundef %116, i32 noundef %add144, i32 noundef %ilen.0, ptr noundef nonnull %hash_ino) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end142.out_ro_crit_edge

if.end142.out_ro_crit_edge:                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end149:                                        ; preds = %if.end142
  %i_ino150 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %129 = ptrtoint ptr %i_ino150 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_ino150, align 8
  %131 = ptrtoint ptr %ino_key to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %ino_key, align 8
  %132 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %arrayidx1.i, align 4
  %add151 = add i32 %add144, %and33
  %data_len152 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 15
  %133 = ptrtoint ptr %data_len152 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %data_len152, align 4
  %add153 = add i32 %134, 160
  %call155 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %ino_key, i32 noundef %116, i32 noundef %add151, i32 noundef %add153, ptr noundef nonnull %hash_ino_host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end149.out_ro_crit_edge

if.end149.out_ro_crit_edge:                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end158:                                        ; preds = %if.end149
  %commit_sem.i369 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i369) #8
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ui_lock) #8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %135 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 10
  %137 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %synced_i_size, align 8
  call void @_raw_spin_unlock(ptr noundef %ui_lock) #8
  br i1 %tobool56.not, label %if.end158.if.end166_crit_edge, label %if.then161

if.end158.if.end166_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %ui_lock162 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ui_lock162) #8
  %ui_size163 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 11
  %138 = ptrtoint ptr %ui_size163 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %ui_size163, align 8
  %synced_i_size164 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 10
  %140 = ptrtoint ptr %synced_i_size164 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %synced_i_size164, align 8
  call void @_raw_spin_unlock(ptr noundef %ui_lock162) #8
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end158.if.end166_crit_edge
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %141 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load.i370 = load i8, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i370)
  %tobool.not.i371 = icmp sgt i8 %bf.load.i370, -1
  br i1 %tobool.not.i371, label %if.end166.mark_inode_clean.exit_crit_edge, label %if.then.i372

if.end166.mark_inode_clean.exit_crit_edge:        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit

if.then.i372:                                     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %inode) #8
  br label %mark_inode_clean.exit

mark_inode_clean.exit:                            ; preds = %if.then.i372, %if.end166.mark_inode_clean.exit_crit_edge
  %142 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load2.i = load i8, ptr %dirty.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %dirty.i, align 4
  %dirty.i373 = getelementptr inbounds %struct.ubifs_inode, ptr %dir, i32 0, i32 6
  %143 = ptrtoint ptr %dirty.i373 to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load.i374 = load i8, ptr %dirty.i373, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i374)
  %tobool.not.i375 = icmp sgt i8 %bf.load.i374, -1
  br i1 %tobool.not.i375, label %mark_inode_clean.exit.mark_inode_clean.exit379_crit_edge, label %if.then.i376

mark_inode_clean.exit.mark_inode_clean.exit379_crit_edge: ; preds = %mark_inode_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit379

if.then.i376:                                     ; preds = %mark_inode_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %dir) #8
  br label %mark_inode_clean.exit379

mark_inode_clean.exit379:                         ; preds = %if.then.i376, %mark_inode_clean.exit.mark_inode_clean.exit379_crit_edge
  %144 = ptrtoint ptr %dirty.i373 to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load2.i377 = load i8, ptr %dirty.i373, align 4
  %bf.clear.i378 = and i8 %bf.load2.i377, 127
  store i8 %bf.clear.i378, ptr %dirty.i373, align 4
  br label %cleanup

out_free:                                         ; preds = %if.then107, %if.end51.out_free_crit_edge
  %err.2 = phi i32 [ %call52, %if.end51.out_free_crit_edge ], [ %call105, %if.then107 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

out_release:                                      ; preds = %if.end109.out_release_crit_edge, %ubifs_node_calc_hash.exit364.out_release_crit_edge, %ubifs_node_calc_hash.exit357.out_release_crit_edge, %ubifs_node_calc_hash.exit.out_release_crit_edge
  %err.3 = phi i32 [ %call1.i, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ %call1.i354, %ubifs_node_calc_hash.exit357.out_release_crit_edge ], [ %call1.i361, %ubifs_node_calc_hash.exit364.out_release_crit_edge ], [ %call110, %if.end109.out_release_crit_edge ]
  %orphan_added.1 = phi i32 [ 0, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ 0, %ubifs_node_calc_hash.exit357.out_release_crit_edge ], [ 0, %ubifs_node_calc_hash.exit364.out_release_crit_edge ], [ %orphan_added.0, %if.end109.out_release_crit_edge ]
  %jheads.i380 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %145 = ptrtoint ptr %jheads.i380 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %jheads.i380, align 8
  %io_mutex.i381 = getelementptr %struct.ubifs_jhead, ptr %146, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i381) #8
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %if.end149.out_ro_crit_edge, %if.end142.out_ro_crit_edge, %if.end139.out_ro_crit_edge, %if.end131.out_ro_crit_edge
  %err.4 = phi i32 [ %err.3, %out_release ], [ %err.0, %if.end131.out_ro_crit_edge ], [ %err.1, %if.end139.out_ro_crit_edge ], [ %call146, %if.end142.out_ro_crit_edge ], [ %call155, %if.end149.out_ro_crit_edge ]
  %orphan_added.2 = phi i32 [ %orphan_added.1, %out_release ], [ %orphan_added.0, %if.end131.out_ro_crit_edge ], [ %orphan_added.0, %if.end139.out_ro_crit_edge ], [ %orphan_added.0, %if.end142.out_ro_crit_edge ], [ %orphan_added.0, %if.end149.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %orphan_added.2)
  %tobool167.not = icmp eq i32 %orphan_added.2, 0
  br i1 %tobool167.not, label %out_ro.if.end170_crit_edge, label %if.then168

out_ro.if.end170_crit_edge:                       ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then168:                                       ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino169 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %147 = ptrtoint ptr %i_ino169 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %i_ino169, align 8
  call void @ubifs_delete_orphan(ptr noundef %c, i32 noundef %148) #8
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %out_ro.if.end170_crit_edge
  %commit_sem.i382 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i382) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end170, %out_free, %mark_inode_clean.exit379, %if.end47.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_free ], [ %err.4, %if.end170 ], [ 0, %mark_inode_clean.exit379 ], [ -12, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_ino_host) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_ino) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_dent) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino_key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dent_key) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dent_offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @make_reservation(ptr noundef %c, i32 noundef %jhead, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %commit_sem = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  br label %again

again:                                            ; preds = %do.end41.again_crit_edge, %entry
  %nospc_retries.0 = phi i32 [ 0, %entry ], [ %nospc_retries.187, %do.end41.again_crit_edge ]
  %cmt_retries.0 = phi i32 [ 0, %entry ], [ %add, %do.end41.again_crit_edge ]
  tail call void @down_read(ptr noundef %commit_sem) #8
  %call = tail call fastcc i32 @reserve_space(ptr noundef %c, i32 noundef %jhead, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %again.cleanup_crit_edge, label %if.end

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %again
  tail call void @up_read(ptr noundef %commit_sem) #8
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %out [
    i32 -28, label %if.then2
    i32 -11, label %if.end.if.end16_crit_edge
  ]

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then2:                                         ; preds = %if.end
  %inc = add i32 %nospc_retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nospc_retries.0)
  %cmp3 = icmp slt i32 %nospc_retries.0, 2
  br i1 %cmp3, label %do.body, label %if.then2.out.thread_crit_edge

if.then2.out.thread_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @make_reservation.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@make_reservation, %if.end13.thread)) #8
          to label %if.end16 [label %if.end13.thread], !srcloc !134

if.end13.thread:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @make_reservation.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.33, i32 noundef %6) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end13.thread, %do.body, %if.end.if.end16_crit_edge
  %nospc_retries.187 = phi i32 [ %inc, %if.end13.thread ], [ %inc, %do.body ], [ %nospc_retries.0, %if.end.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %cmt_retries.0)
  %exitcond = icmp eq i32 %cmt_retries.0, 129
  br i1 %exitcond, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.34) #8
  br label %out.thread

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cmt_retries.0)
  %cmp19 = icmp ugt i32 %cmt_retries.0, 32
  br i1 %cmp19, label %if.then20, label %if.else.do.body23_crit_edge

if.else.do.body23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.35, i32 noundef %cmt_retries.0) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then20, %if.else.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @make_reservation.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@make_reservation, %if.then35)) #8
          to label %do.end41 [label %if.then35], !srcloc !134

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i82 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i82 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task37, align 8
  %pid38 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid38, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @make_reservation.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.36, i32 noundef %12, i32 noundef %cmt_retries.0) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body23
  %add = add nuw nsw i32 %cmt_retries.0, 1
  %call42 = tail call i32 @ubifs_run_commit(ptr noundef %c) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end41.again_crit_edge, label %do.end41.cleanup_crit_edge

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end41.again_crit_edge:                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

out.thread:                                       ; preds = %if.then18, %if.then2.out.thread_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.37, i32 noundef %len, i32 noundef %jhead, i32 noundef -28) #8
  tail call void @down_write(ptr noundef %commit_sem) #8
  tail call void @dump_stack() #12
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %bi) #8
  tail call void @ubifs_dump_lprops(ptr noundef %c) #8
  %call49 = tail call i32 @dbg_check_lprops(ptr noundef %c) #8
  tail call void @up_write(ptr noundef %commit_sem) #8
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.37, i32 noundef %len, i32 noundef %jhead, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %do.end41.cleanup_crit_edge, %again.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %out.thread ], [ %call, %out ], [ %call42, %do.end41.cleanup_crit_edge ], [ 0, %again.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dent_key_init(ptr noundef %c, ptr nocapture noundef writeonly %key, i32 noundef %inum, ptr nocapture noundef readonly %nm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %key_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %0 = ptrtoint ptr %key_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key_hash, align 4
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %2 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk_name, align 4
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call)
  %tobool.not = icmp ult i32 %call, 536870912
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !132

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 152) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inum, ptr %key, align 8
  %or = or i32 %call, 1073741824
  %arrayidx6 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prep_grp_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pack_inode(ptr noundef %c, ptr noundef %ino, ptr noundef readonly %inode, i32 noundef %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %ino, i32 0, i32 4
  %3 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %node_type, align 1
  %key = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %key, align 8
  %arrayidx1.i = getelementptr %struct.ubifs_ino_node, ptr %ino, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx1.i, align 4
  %add.ptr.i = getelementptr %struct.ubifs_ino_node, ptr %ino, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %add.ptr.i, align 1
  %creat_sqnum = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 1
  %10 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %creat_sqnum, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %creat_sqnum1 = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 2
  %13 = ptrtoint ptr %creat_sqnum1 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %creat_sqnum1, align 1
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %14 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_atime, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %atime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 4
  %17 = ptrtoint ptr %atime_sec to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %atime_sec, align 1
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tv_nsec, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %atime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 7
  %21 = ptrtoint ptr %atime_nsec to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %atime_nsec, align 1
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %22 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_ctime, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %ctime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 5
  %25 = ptrtoint ptr %ctime_sec to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %ctime_sec, align 1
  %tv_nsec5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %tv_nsec5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tv_nsec5, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %ctime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 8
  %29 = ptrtoint ptr %ctime_nsec to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %ctime_nsec, align 1
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %30 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_mtime, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %mtime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 6
  %33 = ptrtoint ptr %mtime_sec to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %mtime_sec, align 1
  %tv_nsec8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %tv_nsec8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tv_nsec8, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %mtime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 9
  %37 = ptrtoint ptr %mtime_nsec to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %mtime_nsec, align 1
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 53
  %40 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %42 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %43 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %41, [1 x i32] %43) #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  %uid = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 11
  %45 = ptrtoint ptr %uid to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %uid, align 1
  %46 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i69 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 53
  %48 = ptrtoint ptr %s_user_ns.i.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_user_ns.i.i69, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %50 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack.i70 = load i32, ptr %i_gid.i, align 8
  %51 = insertvalue [1 x i32] undef, i32 %.unpack.i70, 0
  %call1.i71 = tail call i32 @from_kgid(ptr noundef %49, [1 x i32] %51) #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %call1.i71)
  %gid = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 12
  %53 = ptrtoint ptr %gid to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %gid, align 1
  %54 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %inode, align 8
  %conv = zext i16 %55 to i32
  %56 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %mode = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 13
  %57 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %mode, align 1
  %flags = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 12
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %flags11 = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 14
  %61 = ptrtoint ptr %flags11 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %flags11, align 1
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %62 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ui_size, align 8
  %64 = tail call i64 @llvm.bswap.i64(i64 %63)
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 3
  %65 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %size, align 1
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %0, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 10
  %69 = ptrtoint ptr %nlink to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %nlink, align 1
  %compr_type = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %70 = ptrtoint ptr %compr_type to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %compr_type, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 3
  %conv12 = zext i8 %bf.clear to i16
  %71 = shl nuw nsw i16 %conv12, 8
  %compr_type13 = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 20
  %72 = ptrtoint ptr %compr_type13 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %compr_type13, align 1
  %data_len14 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %73 = ptrtoint ptr %data_len14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_len14, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %data_len15 = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 15
  %76 = ptrtoint ptr %data_len15 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %data_len15, align 1
  %xattr_cnt = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 4
  %77 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %xattr_cnt, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %xattr_cnt16 = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 16
  %80 = ptrtoint ptr %xattr_cnt16 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %xattr_cnt16, align 1
  %xattr_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 3
  %81 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %xattr_size, align 8
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %xattr_size17 = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 17
  %84 = ptrtoint ptr %xattr_size17 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %xattr_size17, align 1
  %xattr_names = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 5
  %85 = ptrtoint ptr %xattr_names to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %xattr_names, align 8
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %xattr_names18 = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 19
  %88 = ptrtoint ptr %xattr_names18 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %xattr_names18, align 1
  %padding1.i = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 18
  %89 = ptrtoint ptr %padding1.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 0, ptr %padding1.i, align 1
  %padding2.i = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 21
  %90 = call ptr @memset(ptr %padding2.i, i32 0, i32 26)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 22
  %data20 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 16
  %91 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data20, align 8
  %93 = ptrtoint ptr %data_len14 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len14, align 4
  %95 = call ptr @memcpy(ptr %data, ptr %92, i32 %94)
  %96 = load i32, ptr %data_len14, align 4
  %phi.bo = add i32 %96, 160
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data_len.0 = phi i32 [ 160, %entry.if.end_crit_edge ], [ %phi.bo, %if.then ]
  tail call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef %ino, i32 noundef %data_len.0, i32 noundef %last) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_orphan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_head(ptr noundef %c, i32 noundef %jhead, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef %lnum, ptr nocapture noundef %offs, i32 noundef %sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %0 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %1, i32 %jhead
  %lnum7 = getelementptr %struct.ubifs_jhead, ptr %1, i32 %jhead, i32 0, i32 2
  %2 = ptrtoint ptr %lnum7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lnum7, align 8
  %4 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %lnum, align 4
  %5 = load ptr, ptr %jheads, align 8
  %arrayidx9 = getelementptr %struct.ubifs_jhead, ptr %5, i32 %jhead
  %offs11 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx9, i32 0, i32 3
  %6 = ptrtoint ptr %offs11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs11, align 4
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx9, i32 0, i32 5
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  %add = add i32 %9, %7
  %10 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %offs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_head.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_head, %if.then23)) #8
          to label %do.end28 [label %if.then23], !srcloc !134

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %call25 = tail call ptr @dbg_jhead(i32 noundef %jhead) #8
  %17 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lnum, align 4
  %19 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_head.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.51, i32 noundef %16, ptr noundef %call25, i32 noundef %18, i32 noundef %20, i32 noundef %len) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %entry
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %21 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %22 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool30.not = icmp eq i16 %22, 0
  br i1 %tobool30.not, label %do.end28.if.end38_crit_edge, label %ubifs_auth_node_sz.exit.i

do.end28.if.end38_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

ubifs_auth_node_sz.exit.i:                        ; preds = %do.end28
  %23 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %jheads, align 8
  %log_hash = getelementptr %struct.ubifs_jhead, ptr %24, i32 %jhead, i32 3
  %25 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %log_hash, align 4
  %hmac_desc_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %27 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i.i = add i32 %28, 24
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %ubifs_auth_node_sz.exit.i
  %node.addr.0.i = phi ptr [ %buf, %ubifs_auth_node_sz.exit.i ], [ %add.ptr.i, %cleanup.i ]
  %len.addr.0.i = phi i32 [ %len, %ubifs_auth_node_sz.exit.i ], [ %sub.i, %cleanup.i ]
  %len1.i = getelementptr inbounds %struct.ubifs_ch, ptr %node.addr.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %len1.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %len1.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %add.i.i)
  %cmp.not.i = icmp slt i32 %len.addr.0.i, %add.i.i
  br i1 %cmp.not.i, label %if.then.i, label %while.cond.i.do.end.i_crit_edge, !prof !135

while.cond.i.do.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 235) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %while.cond.i.do.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %add.i.i)
  %cmp4.i = icmp eq i32 %len.addr.0.i, %add.i.i
  br i1 %cmp4.i, label %ubifs_hash_nodes.exit, label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %31)
  %cmp8.not.i = icmp sgt i32 %len.addr.0.i, %31
  br i1 %cmp8.not.i, label %do.body7.i.do.body21.i_crit_edge, label %if.then17.i, !prof !132

do.body7.i.do.body21.i_crit_edge:                 ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

if.then17.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 240) #8
  br label %do.body21.i

do.body21.i:                                      ; preds = %if.then17.i, %do.body7.i.do.body21.i_crit_edge
  %32 = ptrtoint ptr %node.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %node.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 823660550, i32 %33)
  %cmp22.not.i = icmp eq i32 %33, 823660550
  br i1 %cmp22.not.i, label %do.body21.i.do.end34.i_crit_edge, label %if.then31.i, !prof !132

do.body21.i.do.end34.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34.i

if.then31.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 241) #8
  br label %do.end34.i

do.end34.i:                                       ; preds = %if.then31.i, %do.body21.i.do.end34.i_crit_edge
  %34 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i.i64.i = load i16, ptr %authenticated.i, align 8
  %35 = and i16 %bf.load.i.i64.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i65.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i65.i, label %do.end34.i.cleanup.i_crit_edge, label %if.then.i66.i

do.end34.i.cleanup.i_crit_edge:                   ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then.i66.i:                                    ; preds = %do.end34.i
  %call1.i.i = tail call i32 @crypto_shash_update(ptr noundef %26, ptr noundef %node.addr.0.i, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then.i66.i.cleanup_crit_edge, label %if.then.i66.i.cleanup.i_crit_edge

if.then.i66.i.cleanup.i_crit_edge:                ; preds = %if.then.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then.i66.i.cleanup_crit_edge:                  ; preds = %if.then.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.i:                                        ; preds = %if.then.i66.i.cleanup.i_crit_edge, %do.end34.i.cleanup.i_crit_edge
  %add.i = add i32 %31, 7
  %and.i71 = and i32 %add.i, -8
  %add.ptr.i = getelementptr i8, ptr %node.addr.0.i, i32 %and.i71
  %sub.i = sub i32 %len.addr.0.i, %and.i71
  br label %while.cond.i

ubifs_hash_nodes.exit:                            ; preds = %do.end.i
  %call42.i = tail call i32 @ubifs_prepare_auth_node(ptr noundef %c, ptr noundef %node.addr.0.i, ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool35.not = icmp eq i32 %call42.i, 0
  br i1 %tobool35.not, label %ubifs_hash_nodes.exit.if.end38_crit_edge, label %ubifs_hash_nodes.exit.cleanup_crit_edge

ubifs_hash_nodes.exit.cleanup_crit_edge:          ; preds = %ubifs_hash_nodes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ubifs_hash_nodes.exit.if.end38_crit_edge:         ; preds = %ubifs_hash_nodes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %ubifs_hash_nodes.exit.if.end38_crit_edge, %do.end28.if.end38_crit_edge
  %call39 = tail call i32 @ubifs_wbuf_write_nolock(ptr noundef %arrayidx, ptr noundef %buf, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool43.not = icmp eq i32 %sync, 0
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %if.then44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %ubifs_hash_nodes.exit.cleanup_crit_edge, %if.then.i66.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42.i, %ubifs_hash_nodes.exit.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call45, %if.then44 ], [ 0, %if.end42.cleanup_crit_edge ], [ %call1.i.i, %if.then.i66.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_wbuf_add_ino_nolock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubifs_add_auth_dirt(ptr noundef %c, i32 noundef %lnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %1 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %ubifs_auth_node_sz.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ubifs_auth_node_sz.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %2 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %3, 24
  %call.i = tail call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %lnum, i32 noundef -2147483647, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %ubifs_auth_node_sz.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_dh(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_nm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add_nm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_delete_orphan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_write_data(ptr noundef %c, ptr noundef %inode, ptr noundef %key, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %lnum = alloca i32, align 4
  %offs = alloca i32, align 4
  %compr_type = alloca i32, align 4
  %out_len = alloca i32, align 4
  %compr_len = alloca i32, align 4
  %hash = alloca [64 x i8], align 1
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %1 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offs, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compr_type) #8
  %2 = ptrtoint ptr %compr_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %compr_type, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len) #8
  %3 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %out_len, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compr_len) #8
  %4 = ptrtoint ptr %compr_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %compr_len, align 4, !annotation !131
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags, align 4
  %and = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #8
  %7 = call ptr @memset(ptr %hash, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #8
  %8 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_jnl_write_data.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_jnl_write_data, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key, align 8
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and.i183 = and i32 %18, 536870911
  %call10 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_jnl_write_data.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef %16, i32 noundef %and.i183, i32 noundef %len, ptr noundef %call10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp sgt i32 %len, 4096
  br i1 %cmp, label %if.then22, label %do.end.do.end25_crit_edge, !prof !135

do.end.do.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 736) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.end.do.end25_crit_edge
  %spec.select = select i1 %tobool.not, i32 8240, i32 8256
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %19 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %20 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i, label %do.end25.if.end8.i_crit_edge, label %if.then.i184

do.end25.if.end8.i_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i184:                                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %21 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %22, 24
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i184, %do.end25.if.end8.i_crit_edge
  %retval.0.i185 = phi i32 [ %add.i, %if.then.i184 ], [ 0, %do.end25.if.end8.i_crit_edge ]
  %add30 = add i32 %retval.0.i185, %spec.select
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add30, i32 noundef 11328) #11
  %tobool32.not = icmp eq ptr %call9.i, null
  br i1 %tobool32.not, label %if.then33, label %if.end8.i.if.end34_crit_edge

if.end8.i.if.end34_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %write_reserve_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 51
  call void @mutex_lock_nested(ptr noundef %write_reserve_mutex, i32 noundef 0) #8
  %write_reserve_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 52
  %23 = ptrtoint ptr %write_reserve_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reserve_buf, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end8.i.if.end34_crit_edge
  %data.0 = phi ptr [ %call9.i, %if.end8.i.if.end34_crit_edge ], [ %24, %if.then33 ]
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %data.0, i32 0, i32 4
  %25 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %node_type, align 1
  %key35 = getelementptr inbounds %struct.ubifs_data_node, ptr %data.0, i32 0, i32 1
  %26 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key, align 8
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  %29 = ptrtoint ptr %key35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %key35, align 8
  %arrayidx2.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #8
  %arrayidx3.i = getelementptr %struct.ubifs_data_node, ptr %data.0, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx3.i, align 4
  %add.ptr.i = getelementptr %struct.ubifs_data_node, ptr %data.0, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %add.ptr.i, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %len)
  %size = getelementptr inbounds %struct.ubifs_data_node, ptr %data.0, i32 0, i32 2
  %36 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %size, align 1
  %flags = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 12
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 8
  %and36 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end40_crit_edge, label %if.else

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %compr_type39 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %39 = ptrtoint ptr %compr_type39 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %compr_type39, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end34.if.end40_crit_edge
  %storemerge = phi i32 [ %bf.cast, %if.else ], [ 0, %if.end34.if.end40_crit_edge ]
  %40 = ptrtoint ptr %compr_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge, ptr %compr_type, align 4
  %sub = add nsw i32 %spec.select, -48
  %41 = ptrtoint ptr %compr_len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %compr_len, align 4
  %42 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %out_len, align 4
  %data41 = getelementptr inbounds %struct.ubifs_data_node, ptr %data.0, i32 0, i32 5
  call void @ubifs_compress(ptr noundef %c, ptr noundef %buf, i32 noundef %len, ptr noundef %data41, ptr noundef nonnull %compr_len, ptr noundef nonnull %compr_type) #8
  %43 = ptrtoint ptr %compr_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %compr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %44)
  %cmp43 = icmp sgt i32 %44, 4096
  br i1 %cmp43, label %if.then52, label %if.end40.do.end55_crit_edge, !prof !135

if.end40.do.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

if.then52:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 769) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %if.end40.do.end55_crit_edge
  br i1 %tobool.not, label %if.else63, label %if.then57

if.then57:                                        ; preds = %do.end55
  %45 = ptrtoint ptr %compr_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %compr_len, align 4
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx2.i, align 4
  %and.i187 = and i32 %48, 536870911
  %call59 = call i32 @ubifs_encrypt(ptr noundef %inode, ptr noundef %data.0, i32 noundef %46, ptr noundef nonnull %out_len, i32 noundef %and.i187) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then57.if.end64_crit_edge, label %if.then57.out_free_crit_edge

if.then57.out_free_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.else63:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %compr_size = getelementptr inbounds %struct.ubifs_data_node, ptr %data.0, i32 0, i32 4
  %49 = ptrtoint ptr %compr_size to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 0, ptr %compr_size, align 1
  %50 = ptrtoint ptr %compr_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %compr_len, align 4
  %52 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %out_len, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then57.if.end64_crit_edge
  %53 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out_len, align 4
  %add65 = add i32 %54, 48
  %55 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i = load i16, ptr %authenticated.i.i, align 8
  %56 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool67.not = icmp eq i16 %56, 0
  %add69 = add i32 %54, 55
  %and70 = and i32 %add69, -8
  %add71 = add i32 %and70, %retval.0.i185
  %write_len.0 = select i1 %tobool67.not, i32 %add65, i32 %add71
  %57 = ptrtoint ptr %compr_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %compr_type, align 4
  %conv = trunc i32 %58 to i16
  %59 = call i16 @llvm.bswap.i16(i16 %conv)
  %compr_type74 = getelementptr inbounds %struct.ubifs_data_node, ptr %data.0, i32 0, i32 3
  %60 = ptrtoint ptr %compr_type74 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %compr_type74, align 1
  %call75 = call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 2, i32 noundef %write_len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end64.out_free_crit_edge

if.end64.out_free_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end78:                                         ; preds = %if.end64
  call void @ubifs_prepare_node(ptr noundef %c, ptr noundef %data.0, i32 noundef %add65, i32 noundef 0) #8
  %call79 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 2, ptr noundef %data.0, i32 noundef %write_len.0, ptr noundef nonnull %lnum, ptr noundef nonnull %offs, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.out_release_crit_edge

if.end78.out_release_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.end82:                                         ; preds = %if.end78
  %61 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i.i189 = load i16, ptr %authenticated.i.i, align 8
  %62 = and i16 %bf.load.i.i189, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i190 = icmp eq i16 %62, 0
  br i1 %tobool.not.i190, label %if.end82.if.end87_crit_edge, label %ubifs_node_calc_hash.exit

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

ubifs_node_calc_hash.exit:                        ; preds = %if.end82
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %data.0, ptr noundef nonnull %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool85.not = icmp eq i32 %call1.i, 0
  br i1 %tobool85.not, label %ubifs_node_calc_hash.exit.if.end87_crit_edge, label %ubifs_node_calc_hash.exit.out_release_crit_edge

ubifs_node_calc_hash.exit.out_release_crit_edge:  ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit.if.end87_crit_edge:     ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %ubifs_node_calc_hash.exit.if.end87_crit_edge, %if.end82.if.end87_crit_edge
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %63 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %64, i32 2
  %65 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %key, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx, i32 noundef %66) #8
  %67 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %jheads, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %68, i32 2, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  %69 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lnum, align 4
  %71 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i.i194 = load i16, ptr %authenticated.i.i, align 8
  %72 = and i16 %bf.load.i.i194, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.not.i195 = icmp eq i16 %72, 0
  br i1 %tobool.not.i195, label %if.end87.ubifs_add_auth_dirt.exit_crit_edge, label %ubifs_auth_node_sz.exit.i

if.end87.ubifs_add_auth_dirt.exit_crit_edge:      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_add_auth_dirt.exit

ubifs_auth_node_sz.exit.i:                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %73 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i.i = add i32 %74, 24
  %call.i.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %70, i32 noundef -2147483647, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 0) #8
  br label %ubifs_add_auth_dirt.exit

ubifs_add_auth_dirt.exit:                         ; preds = %ubifs_auth_node_sz.exit.i, %if.end87.ubifs_add_auth_dirt.exit_crit_edge
  %75 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offs, align 4
  %call90 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef %key, i32 noundef %70, i32 noundef %76, i32 noundef %add65, ptr noundef nonnull %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %ubifs_add_auth_dirt.exit.out_ro_crit_edge

ubifs_add_auth_dirt.exit.out_ro_crit_edge:        ; preds = %ubifs_add_auth_dirt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end93:                                         ; preds = %ubifs_add_auth_dirt.exit
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  br i1 %tobool32.not, label %if.then95, label %if.else97

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %write_reserve_mutex96 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 51
  call void @mutex_unlock(ptr noundef %write_reserve_mutex96) #8
  br label %cleanup

if.else97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %data.0) #8
  br label %cleanup

out_release:                                      ; preds = %ubifs_node_calc_hash.exit.out_release_crit_edge, %if.end78.out_release_crit_edge
  %err.0 = phi i32 [ %call79, %if.end78.out_release_crit_edge ], [ %call1.i, %ubifs_node_calc_hash.exit.out_release_crit_edge ]
  %jheads.i197 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %77 = ptrtoint ptr %jheads.i197 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %jheads.i197, align 8
  %io_mutex.i198 = getelementptr %struct.ubifs_jhead, ptr %78, i32 2, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i198) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %ubifs_add_auth_dirt.exit.out_ro_crit_edge
  %err.1 = phi i32 [ %err.0, %out_release ], [ %call90, %ubifs_add_auth_dirt.exit.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.1) #8
  %commit_sem.i199 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i199) #8
  br i1 %tobool32.not, label %out_ro.if.then100_crit_edge, label %out_ro.if.else102_crit_edge

out_ro.if.else102_crit_edge:                      ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else102

out_ro.if.then100_crit_edge:                      ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

out_free:                                         ; preds = %if.end64.out_free_crit_edge, %if.then57.out_free_crit_edge
  %err.2 = phi i32 [ %call59, %if.then57.out_free_crit_edge ], [ %call75, %if.end64.out_free_crit_edge ]
  br i1 %tobool32.not, label %out_free.if.then100_crit_edge, label %out_free.if.else102_crit_edge

out_free.if.else102_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else102

out_free.if.then100_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

if.then100:                                       ; preds = %out_free.if.then100_crit_edge, %out_ro.if.then100_crit_edge
  %err.2210 = phi i32 [ %err.1, %out_ro.if.then100_crit_edge ], [ %err.2, %out_free.if.then100_crit_edge ]
  %write_reserve_mutex101 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 51
  call void @mutex_unlock(ptr noundef %write_reserve_mutex101) #8
  br label %cleanup

if.else102:                                       ; preds = %out_free.if.else102_crit_edge, %out_ro.if.else102_crit_edge
  %err.2209 = phi i32 [ %err.1, %out_ro.if.else102_crit_edge ], [ %err.2, %out_free.if.else102_crit_edge ]
  call void @kfree(ptr noundef %data.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else102, %if.then100, %if.else97, %if.then95
  %retval.0 = phi i32 [ 0, %if.else97 ], [ 0, %if.then95 ], [ %err.2209, %if.else102 ], [ %err.2210, %if.then100 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compr_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compr_type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_snprintf_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_encrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_write_inode(ptr noundef %c, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %lnum = alloca i32, align 4
  %offs = alloca i32, align 4
  %hash = alloca [64 x i8], align 1
  %key = alloca %union.ubifs_key, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  %key110 = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %1 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offs, align 4, !annotation !131
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %xattr_cnt = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 4
  %5 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xattr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp ne i32 %6, 0
  %spec.select = select i1 %tobool1.not, i1 %tobool.not, i1 false
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #8
  %7 = call ptr @memset(ptr %hash, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_jnl_write_inode.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_jnl_write_inode, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_jnl_write_inode.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.8, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len, align 4
  %add = add i32 %19, 160
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags, align 4
  %and = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.rhs, label %if.then12.lor.end_crit_edge

if.then12.lor.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags, align 4
  %and14 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15 = icmp ne i32 %and14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then12.lor.end_crit_edge
  %26 = phi i1 [ true, %if.then12.lor.end_crit_edge ], [ %tobool15, %lor.rhs ]
  %lor.ext = zext i1 %26 to i32
  br label %if.end21

if.else:                                          ; preds = %do.end
  br i1 %spec.select, label %if.then17, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xattr_cnt, align 4
  %mul = mul i32 %28, 160
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else.if.end21_crit_edge, %lor.end
  %sync.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.else.if.end21_crit_edge ], [ %lor.ext, %lor.end ]
  %write_len.0 = phi i32 [ %mul, %if.then17 ], [ 0, %if.else.if.end21_crit_edge ], [ 0, %lor.end ]
  %ilen.0 = phi i32 [ 160, %if.then17 ], [ 160, %if.else.if.end21_crit_edge ], [ %add, %lor.end ]
  %authenticated.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %29 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %authenticated.i, align 8
  %30 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool23.not = icmp eq i16 %30, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %ubifs_auth_node_sz.exit

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

ubifs_auth_node_sz.exit:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %add25 = add i32 %ilen.0, 7
  %and26 = and i32 %add25, -8
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %31 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %32, 24
  %add28 = add i32 %add.i, %and26
  br label %if.end32

if.end32:                                         ; preds = %ubifs_auth_node_sz.exit, %if.end21.if.end32_crit_edge
  %add28.pn = phi i32 [ %add28, %ubifs_auth_node_sz.exit ], [ %ilen.0, %if.end21.if.end32_crit_edge ]
  %write_len.1 = add i32 %add28.pn, %write_len.0
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %write_len.1, i32 noundef 3136) #11
  %tobool34.not = icmp eq ptr %call9.i, null
  br i1 %tobool34.not, label %if.end32.cleanup119_crit_edge, label %if.end36

if.end32.cleanup119_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end36:                                         ; preds = %if.end32
  %call37 = tail call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 1, i32 noundef %write_len.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup119.sink.split_crit_edge

if.end36.cleanup119.sink.split_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119.sink.split

if.end40:                                         ; preds = %if.end36
  br i1 %spec.select, label %if.then42, label %if.end40.if.end86_crit_edge

if.end40.if.end86_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then42:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #8
  %33 = call ptr @memset(ptr %nm, i32 0, i32 32)
  %34 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xattr_cnt, align 4
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %36 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %leb_size.i, align 8
  %div.i = sdiv i32 %37, 2
  %div1.i = udiv i32 %div.i, 160
  %max_orphans.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 113
  %38 = ptrtoint ptr %max_orphans.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_orphans.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %39)
  %cmp.not.i = icmp slt i32 %div1.i, %39
  br i1 %cmp.not.i, label %if.then42.ubifs_xattr_max_cnt.exit_crit_edge, label %if.then.i222, !prof !132

if.then42.ubifs_xattr_max_cnt.exit_crit_edge:     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_xattr_max_cnt.exit

if.then.i222:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 283) #8
  br label %ubifs_xattr_max_cnt.exit

ubifs_xattr_max_cnt.exit:                         ; preds = %if.then.i222, %if.then42.ubifs_xattr_max_cnt.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %div1.i)
  %cmp = icmp ugt i32 %35, %div1.i
  br i1 %cmp, label %if.then45, label %if.end46

if.then45:                                        ; preds = %ubifs_xattr_max_cnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.9) #8
  br label %cleanup.thread

if.end46:                                         ; preds = %ubifs_xattr_max_cnt.exit
  %i_ino47 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %40 = ptrtoint ptr %i_ino47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_ino47, align 8
  %42 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1610612736, ptr %arrayidx1.i, align 4
  %call48246 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #8
  %cmp.i223247 = icmp ugt ptr %call48246, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223247, label %if.end46.if.then50_crit_edge, label %if.end55.lr.ph

if.end46.if.then50_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.end55.lr.ph:                                   ; preds = %if.end46
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  br label %if.end55

if.then50:                                        ; preds = %do.end80.if.then50_crit_edge, %if.end46.if.then50_crit_edge
  %ino.0.lcssa = phi ptr [ %call9.i, %if.end46.if.then50_crit_edge ], [ %add.ptr, %do.end80.if.then50_crit_edge ]
  %pxent.0.lcssa = phi ptr [ null, %if.end46.if.then50_crit_edge ], [ %call48250, %do.end80.if.then50_crit_edge ]
  %call48.lcssa = phi ptr [ %call48246, %if.end46.if.then50_crit_edge ], [ %call48, %do.end80.if.then50_crit_edge ]
  %cmp52 = icmp eq ptr %call48.lcssa, inttoptr (i32 -2 to ptr)
  br i1 %cmp52, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %call48.lcssa to i32
  call void @kfree(ptr noundef %pxent.0.lcssa) #8
  br label %cleanup.thread

if.end55:                                         ; preds = %do.end80.if.end55_crit_edge, %if.end55.lr.ph
  %call48250 = phi ptr [ %call48246, %if.end55.lr.ph ], [ %call48, %do.end80.if.end55_crit_edge ]
  %pxent.0249 = phi ptr [ null, %if.end55.lr.ph ], [ %call48250, %do.end80.if.end55_crit_edge ]
  %ino.0248 = phi ptr [ %call9.i, %if.end55.lr.ph ], [ %add.ptr, %do.end80.if.end55_crit_edge ]
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call48250, i32 0, i32 7
  %45 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %name, ptr %disk_name, align 4
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call48250, i32 0, i32 5
  %46 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %nlen, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %conv = zext i16 %48 to i32
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %len, align 4
  %50 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %c, align 8
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call48250, i32 0, i32 2
  %52 = ptrtoint ptr %inum to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %inum, align 1
  %54 = call i64 @llvm.bswap.i64(i64 %53)
  %conv58 = trunc i64 %54 to i32
  %call59 = call ptr @ubifs_iget(ptr noundef %51, i32 noundef %conv58) #8
  %cmp.i224 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then61, label %do.body66

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %call59 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %55) #8
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %55) #8
  call void @kfree(ptr noundef %pxent.0249) #8
  call void @kfree(ptr noundef %call48250) #8
  br label %cleanup.thread

do.body66:                                        ; preds = %if.end55
  %xattr = getelementptr inbounds %struct.ubifs_inode, ptr %call59, i32 0, i32 6
  %56 = ptrtoint ptr %xattr to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %xattr, align 4
  %57 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool68.not = icmp eq i8 %57, 0
  br i1 %tobool68.not, label %if.then77, label %do.body66.do.end80_crit_edge, !prof !135

do.body66.do.end80_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.then77:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 915) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body66.do.end80_crit_edge
  call void @clear_nlink(ptr noundef %call59) #8
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %ino.0248, ptr noundef %call59, i32 noundef 0)
  %add.ptr = getelementptr i8, ptr %ino.0248, i32 160
  call void @iput(ptr noundef %call59) #8
  call void @kfree(ptr noundef %pxent.0249) #8
  %key81 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call48250, i32 0, i32 1
  %58 = ptrtoint ptr %key81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %key81, align 8
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call48250, i32 0, i32 1, i32 4
  %62 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx2.i, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx1.i, align 4
  %call48 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #8
  %cmp.i223 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %do.end80.if.then50_crit_edge, label %do.end80.if.end55_crit_edge

do.end80.if.end55_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end80.if.then50_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

cleanup.thread:                                   ; preds = %if.then61, %if.end54, %if.then45
  %err.0.ph = phi i32 [ %55, %if.then61 ], [ %44, %if.end54 ], [ -1, %if.then45 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  br label %out_release

cleanup:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %pxent.0.lcssa) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  br label %if.end86

if.end86:                                         ; preds = %cleanup, %if.end40.if.end86_crit_edge
  %ino.2 = phi ptr [ %ino.0.lcssa, %cleanup ], [ %call9.i, %if.end40.if.end86_crit_edge ]
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %ino.2, ptr noundef %inode, i32 noundef 1)
  %66 = ptrtoint ptr %authenticated.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i.i226 = load i16, ptr %authenticated.i, align 8
  %67 = and i16 %bf.load.i.i226, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i227 = icmp eq i16 %67, 0
  br i1 %tobool.not.i227, label %if.end86.if.end91_crit_edge, label %ubifs_node_calc_hash.exit

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

ubifs_node_calc_hash.exit:                        ; preds = %if.end86
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %ino.2, ptr noundef nonnull %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool89.not = icmp eq i32 %call1.i, 0
  br i1 %tobool89.not, label %ubifs_node_calc_hash.exit.if.end91_crit_edge, label %ubifs_node_calc_hash.exit.out_release_crit_edge

ubifs_node_calc_hash.exit.out_release_crit_edge:  ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit.if.end91_crit_edge:     ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.end91:                                         ; preds = %ubifs_node_calc_hash.exit.if.end91_crit_edge, %if.end86.if.end91_crit_edge
  %call92 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %call9.i, i32 noundef %write_len.1, ptr noundef nonnull %lnum, ptr noundef nonnull %offs, i32 noundef %sync.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.out_release_crit_edge

if.end91.out_release_crit_edge:                   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.end95:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync.0)
  %tobool96.not = icmp eq i32 %sync.0, 0
  br i1 %tobool96.not, label %if.then97, label %if.end95.if.end99_crit_edge

if.end95.if.end99_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %68 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %69, i32 1
  %i_ino98 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %70 = ptrtoint ptr %i_ino98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_ino98, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx, i32 noundef %71) #8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end95.if.end99_crit_edge
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %72 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %jheads.i, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %73, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  br i1 %tobool.not, label %if.then101, label %if.else109

if.then101:                                       ; preds = %if.end99
  %i_ino102 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %74 = ptrtoint ptr %i_ino102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_ino102, align 8
  %call103 = call i32 @ubifs_tnc_remove_ino(ptr noundef %c, i32 noundef %75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.then101.out_ro_crit_edge

if.then101.out_ro_crit_edge:                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end106:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %i_ino102 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_ino102, align 8
  call void @ubifs_delete_orphan(ptr noundef %c, i32 noundef %77) #8
  %78 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lnum, align 4
  %call.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %79, i32 noundef -2147483647, i32 noundef %write_len.1, i32 noundef 0, i32 noundef 0) #8
  br label %if.end114

if.else109:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key110) #8
  %80 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lnum, align 4
  call fastcc void @ubifs_add_auth_dirt(ptr noundef %c, i32 noundef %81)
  %i_ino111 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %82 = ptrtoint ptr %i_ino111 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_ino111, align 8
  %84 = ptrtoint ptr %key110 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %key110, align 8
  %arrayidx1.i230 = getelementptr inbounds [2 x i32], ptr %key110, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx1.i230 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx1.i230, align 4
  %86 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offs, align 4
  %call113 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key110, i32 noundef %81, i32 noundef %87, i32 noundef %ilen.0, ptr noundef nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key110) #8
  br label %if.end114

if.end114:                                        ; preds = %if.else109, %if.end106
  %err.1 = phi i32 [ %call.i, %if.end106 ], [ %call113, %if.else109 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool115.not = icmp eq i32 %err.1, 0
  br i1 %tobool115.not, label %if.end117, label %if.end114.out_ro_crit_edge

if.end114.out_ro_crit_edge:                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end117:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ui_lock) #8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %88 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 10
  %90 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %synced_i_size, align 8
  call void @_raw_spin_unlock(ptr noundef %ui_lock) #8
  br label %cleanup119.sink.split

out_release:                                      ; preds = %if.end91.out_release_crit_edge, %ubifs_node_calc_hash.exit.out_release_crit_edge, %cleanup.thread
  %err.2 = phi i32 [ %call1.i, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ %call92, %if.end91.out_release_crit_edge ], [ %err.0.ph, %cleanup.thread ]
  %jheads.i231 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %91 = ptrtoint ptr %jheads.i231 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %jheads.i231, align 8
  %io_mutex.i232 = getelementptr %struct.ubifs_jhead, ptr %92, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i232) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %if.end114.out_ro_crit_edge, %if.then101.out_ro_crit_edge
  %err.3 = phi i32 [ %err.2, %out_release ], [ %call103, %if.then101.out_ro_crit_edge ], [ %err.1, %if.end114.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.3) #8
  %commit_sem.i233 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i233) #8
  br label %cleanup119.sink.split

cleanup119.sink.split:                            ; preds = %out_ro, %if.end117, %if.end36.cleanup119.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end117 ], [ %call37, %if.end36.cleanup119.sink.split_crit_edge ], [ %err.3, %out_ro ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup119

cleanup119:                                       ; preds = %cleanup119.sink.split, %if.end32.cleanup119_crit_edge
  %retval.0 = phi i32 [ -12, %if.end32.cleanup119_crit_edge ], [ %retval.0.ph, %cleanup119.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_ino(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_delete_inode(ptr noundef %c, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then, !prof !132

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1010) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %xattr_cnt = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 4
  %3 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xattr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.end.if.then5_crit_edge

do.end.if.then5_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.end
  %del_cmtno = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 2
  %5 = ptrtoint ptr %del_cmtno to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %del_cmtno, align 8
  %cmt_no = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %7 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cmt_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp4.not = icmp eq i64 %6, %8
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %do.end.if.then5_crit_edge
  %call6 = tail call i32 @ubifs_jnl_write_inode(ptr noundef %c, ptr noundef %inode)
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %commit_sem = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  tail call void @down_read(ptr noundef %commit_sem) #8
  %9 = ptrtoint ptr %del_cmtno to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %del_cmtno, align 8
  %11 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cmt_no, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp10.not = icmp eq i64 %10, %12
  br i1 %cmp10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %commit_sem) #8
  %call13 = tail call i32 @ubifs_jnl_write_inode(ptr noundef %c, ptr noundef %inode)
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %call15 = tail call i32 @ubifs_tnc_remove_ino(ptr noundef %c, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %call15) #8
  br label %if.end19

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino, align 8
  tail call void @ubifs_delete_orphan(ptr noundef %c, i32 noundef %16) #8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  tail call void @up_read(ptr noundef %commit_sem) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then11, %if.then5
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %call13, %if.then11 ], [ %call15, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_xrename(ptr noundef %c, ptr noundef %fst_dir, ptr nocapture noundef readonly %fst_inode, ptr noundef %fst_nm, ptr noundef %snd_dir, ptr nocapture noundef readonly %snd_inode, ptr noundef %snd_nm, i32 noundef %sync) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %lnum = alloca i32, align 4
  %offs = alloca i32, align 4
  %hash_dent1 = alloca [64 x i8], align 1
  %hash_dent2 = alloca [64 x i8], align 1
  %hash_p1 = alloca [64 x i8], align 1
  %hash_p2 = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %1 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %2 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offs, align 4, !annotation !131
  %cmp.not = icmp eq ptr %fst_dir, %snd_dir
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_dent1) #8
  %3 = call ptr @memset(ptr %hash_dent1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_dent2) #8
  %4 = call ptr @memset(ptr %hash_dent2, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_p1) #8
  %5 = call ptr @memset(ptr %hash_p1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_p2) #8
  %6 = call ptr @memset(ptr %hash_p2, i32 255, i32 64)
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %fst_dir, i32 0, i32 15
  %7 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not = icmp eq i32 %8, 0
  br i1 %cmp1.not, label %entry.do.body5_crit_edge, label %if.then, !prof !132

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1069) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry.do.body5_crit_edge
  %data_len7 = getelementptr inbounds %struct.ubifs_inode, ptr %snd_dir, i32 0, i32 15
  %9 = ptrtoint ptr %data_len7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.not = icmp eq i32 %10, 0
  br i1 %cmp8.not, label %do.body5.do.body22_crit_edge, label %if.then18, !prof !132

do.body5.do.body22_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then18:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1070) #8
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %do.body5.do.body22_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %fst_dir, i32 0, i32 7
  %call24 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #8
  br i1 %call24, label %do.body22.do.body37_crit_edge, label %if.then33, !prof !132

do.body22.do.body37_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37

if.then33:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1071) #8
  br label %do.body37

do.body37:                                        ; preds = %if.then33, %do.body22.do.body37_crit_edge
  %ui_mutex39 = getelementptr inbounds %struct.ubifs_inode, ptr %snd_dir, i32 0, i32 7
  %call40 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex39) #8
  br i1 %call40, label %do.body37.do.end52_crit_edge, label %if.then49, !prof !132

do.body37.do.end52_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1072) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %do.body37.do.end52_crit_edge
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %snd_nm, i32 0, i32 1
  %len53 = getelementptr inbounds %struct.fscrypt_name, ptr %snd_nm, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len53, align 4
  %add54 = add i32 %12, 57
  %disk_name55 = getelementptr inbounds %struct.fscrypt_name, ptr %fst_nm, i32 0, i32 1
  %len56 = getelementptr inbounds %struct.fscrypt_name, ptr %fst_nm, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len56, align 4
  %add58 = add i32 %14, 57
  %add59 = add i32 %12, 64
  %and = and i32 %add59, -8
  %add60 = add i32 %14, 64
  %and61 = and i32 %add60, -8
  %spec.select.v = select i1 %cmp.not, i32 160, i32 320
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %15 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %16 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %do.end52.ubifs_auth_node_sz.exit_crit_edge, label %if.then.i

do.end52.ubifs_auth_node_sz.exit_crit_edge:       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_auth_node_sz.exit

if.then.i:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %17 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %18, 24
  br label %ubifs_auth_node_sz.exit

ubifs_auth_node_sz.exit:                          ; preds = %if.then.i, %do.end52.ubifs_auth_node_sz.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %do.end52.ubifs_auth_node_sz.exit_crit_edge ]
  %add62 = add i32 %and, %spec.select.v
  %spec.select = add i32 %add62, %and61
  %add71 = add i32 %spec.select, %retval.0.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add71, i32 noundef 3392) #11
  %tobool73.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool73.not, label %ubifs_auth_node_sz.exit.cleanup_crit_edge, label %if.end75

ubifs_auth_node_sz.exit.cleanup_crit_edge:        ; preds = %ubifs_auth_node_sz.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %ubifs_auth_node_sz.exit
  %call76 = tail call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 1, i32 noundef %add71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.cleanup.sink.split_crit_edge

if.end75.cleanup.sink.split_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end79:                                         ; preds = %if.end75
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %node_type, align 4
  %key80 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %snd_dir, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %key_hash.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %22 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %key_hash.i, align 4
  %24 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disk_name, align 4
  %26 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len53, align 4
  %call.i = tail call i32 %23(ptr noundef %25, i32 noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i)
  %tobool.not.i356 = icmp ult i32 %call.i, 536870912
  br i1 %tobool.not.i356, label %if.end79.dent_key_init_flash.exit_crit_edge, label %if.then.i357, !prof !132

if.end79.dent_key_init_flash.exit_crit_edge:      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %dent_key_init_flash.exit

if.then.i357:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 188) #8
  br label %dent_key_init_flash.exit

dent_key_init_flash.exit:                         ; preds = %if.then.i357, %if.end79.dent_key_init_flash.exit_crit_edge
  %28 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %29 = ptrtoint ptr %key80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %key80, align 8
  %or.i = or i32 %call.i, 1073741824
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %arrayidx6.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx6.i, align 4
  %add.ptr.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 8
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %add.ptr.i, align 32
  %i_ino81 = getelementptr inbounds %struct.inode, ptr %fst_inode, i32 0, i32 11
  %33 = ptrtoint ptr %i_ino81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino81, align 8
  %conv82 = zext i32 %34 to i64
  %35 = tail call i64 @llvm.bswap.i64(i64 %conv82)
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %inum to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %inum, align 8
  %37 = ptrtoint ptr %fst_inode to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fst_inode, align 8
  %39 = and i16 %38, -4096
  %and.i = zext i16 %39 to i32
  %40 = add nsw i32 %and.i, -4096
  %41 = lshr exact i32 %40, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %40)
  %42 = icmp ult i32 %40, 49152
  br i1 %42, label %switch.hole_check, label %dent_key_init_flash.exit.do.body.i_crit_edge

dent_key_init_flash.exit.do.body.i_crit_edge:     ; preds = %dent_key_init_flash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %switch.hole_check.do.body.i_crit_edge, %dent_key_init_flash.exit.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

switch.hole_check:                                ; preds = %dent_key_init_flash.exit
  %switch.maskindex = trunc i32 %41 to i16
  %switch.shifted = lshr i16 2731, %switch.maskindex
  %43 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %switch.lobit.not = icmp eq i16 %43, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body.i_crit_edge, label %switch.lookup

switch.hole_check.do.body.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_xrename, i32 0, i32 %41
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %44)
  %switch.load = load i8, ptr %switch.gep, align 1
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %switch.load, ptr %type, align 1
  %46 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len53, align 4
  %conv88 = trunc i32 %47 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv88)
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %nlen to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %nlen, align 2
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disk_name, align 4
  %52 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len53, align 4
  %54 = call ptr @memcpy(ptr %name, ptr %51, i32 %53)
  %arrayidx = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7, i32 %53
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx, align 1
  %56 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i = load i16, ptr %authenticated.i.i, align 8
  %57 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i359 = icmp eq i16 %57, 0
  br i1 %tobool.not.i359, label %switch.lookup.set_dent_cookie.exit_crit_edge, label %if.then.i361

switch.lookup.set_dent_cookie.exit_crit_edge:     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dent_cookie.exit

if.then.i361:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %call.i360 = tail call i32 @prandom_u32() #8
  br label %set_dent_cookie.exit

set_dent_cookie.exit:                             ; preds = %if.then.i361, %switch.lookup.set_dent_cookie.exit_crit_edge
  %call.sink.i = phi i32 [ %call.i360, %if.then.i361 ], [ 0, %switch.lookup.set_dent_cookie.exit_crit_edge ]
  %58 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.sink.i, ptr %58, align 4
  %padding1.i = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %padding1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %padding1.i, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef %add54, i32 noundef 0) #8
  %61 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i.i363 = load i16, ptr %authenticated.i.i, align 8
  %62 = and i16 %bf.load.i.i363, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i364 = icmp eq i16 %62, 0
  br i1 %tobool.not.i364, label %set_dent_cookie.exit.if.end100_crit_edge, label %ubifs_node_calc_hash.exit

set_dent_cookie.exit.if.end100_crit_edge:         ; preds = %set_dent_cookie.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

ubifs_node_calc_hash.exit:                        ; preds = %set_dent_cookie.exit
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %hash_dent1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool98.not = icmp eq i32 %call1.i, 0
  br i1 %tobool98.not, label %ubifs_node_calc_hash.exit.if.end100_crit_edge, label %ubifs_node_calc_hash.exit.out_release_crit_edge

ubifs_node_calc_hash.exit.out_release_crit_edge:  ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit.if.end100_crit_edge:    ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end100:                                        ; preds = %ubifs_node_calc_hash.exit.if.end100_crit_edge, %set_dent_cookie.exit.if.end100_crit_edge
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %and
  %node_type102 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 4
  %63 = ptrtoint ptr %node_type102 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %node_type102, align 4
  %key103 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 1
  %i_ino104 = getelementptr inbounds %struct.inode, ptr %fst_dir, i32 0, i32 11
  %64 = ptrtoint ptr %i_ino104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_ino104, align 8
  %66 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %key_hash.i, align 4
  %68 = ptrtoint ptr %disk_name55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %disk_name55, align 4
  %70 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len56, align 4
  %call.i370 = call i32 %67(ptr noundef %69, i32 noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i370)
  %tobool.not.i371 = icmp ult i32 %call.i370, 536870912
  br i1 %tobool.not.i371, label %if.end100.dent_key_init_flash.exit376_crit_edge, label %if.then.i372, !prof !132

if.end100.dent_key_init_flash.exit376_crit_edge:  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %dent_key_init_flash.exit376

if.then.i372:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 188) #8
  br label %dent_key_init_flash.exit376

dent_key_init_flash.exit376:                      ; preds = %if.then.i372, %if.end100.dent_key_init_flash.exit376_crit_edge
  %72 = call i32 @llvm.bswap.i32(i32 %65) #8
  %73 = ptrtoint ptr %key103 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %key103, align 8
  %or.i373 = or i32 %call.i370, 1073741824
  %74 = call i32 @llvm.bswap.i32(i32 %or.i373) #8
  %arrayidx6.i374 = getelementptr [2 x i32], ptr %key103, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx6.i374 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx6.i374, align 4
  %add.ptr.i375 = getelementptr i8, ptr %key103, i32 8
  %76 = ptrtoint ptr %add.ptr.i375 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %add.ptr.i375, align 8
  %i_ino105 = getelementptr inbounds %struct.inode, ptr %snd_inode, i32 0, i32 11
  %77 = ptrtoint ptr %i_ino105 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_ino105, align 8
  %conv106 = zext i32 %78 to i64
  %79 = call i64 @llvm.bswap.i64(i64 %conv106)
  %inum107 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 2
  %80 = ptrtoint ptr %inum107 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %inum107, align 8
  %81 = ptrtoint ptr %snd_inode to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %snd_inode, align 8
  %83 = and i16 %82, -4096
  %and.i377 = zext i16 %83 to i32
  %84 = add nsw i32 %and.i377, -4096
  %85 = lshr exact i32 %84, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %84)
  %86 = icmp ult i32 %84, 49152
  br i1 %86, label %switch.hole_check463, label %dent_key_init_flash.exit376.do.body.i384_crit_edge

dent_key_init_flash.exit376.do.body.i384_crit_edge: ; preds = %dent_key_init_flash.exit376
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i384

do.body.i384:                                     ; preds = %switch.hole_check463.do.body.i384_crit_edge, %dent_key_init_flash.exit376.do.body.i384_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

switch.hole_check463:                             ; preds = %dent_key_init_flash.exit376
  %switch.maskindex465 = trunc i32 %85 to i16
  %switch.shifted466 = lshr i16 2731, %switch.maskindex465
  %87 = and i16 %switch.shifted466, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %switch.lobit467.not = icmp eq i16 %87, 0
  br i1 %switch.lobit467.not, label %switch.hole_check463.do.body.i384_crit_edge, label %switch.lookup464

switch.hole_check463.do.body.i384_crit_edge:      ; preds = %switch.hole_check463
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i384

switch.lookup464:                                 ; preds = %switch.hole_check463
  %switch.gep468 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_xrename.59, i32 0, i32 %85
  %88 = ptrtoint ptr %switch.gep468 to i32
  call void @__asan_load1_noabort(i32 %88)
  %switch.load469 = load i8, ptr %switch.gep468, align 1
  %type112 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 4
  %89 = ptrtoint ptr %type112 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %switch.load469, ptr %type112, align 1
  %90 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len56, align 4
  %conv115 = trunc i32 %91 to i16
  %92 = call i16 @llvm.bswap.i16(i16 %conv115)
  %nlen116 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 5
  %93 = ptrtoint ptr %nlen116 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %nlen116, align 2
  %name117 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 7
  %94 = ptrtoint ptr %disk_name55 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %disk_name55, align 4
  %96 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len56, align 4
  %98 = call ptr @memcpy(ptr %name117, ptr %95, i32 %97)
  %arrayidx126 = getelementptr [0 x i8], ptr %name117, i32 0, i32 %97
  %99 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx126, align 1
  %100 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i388 = load i16, ptr %authenticated.i.i, align 8
  %101 = and i16 %bf.load.i388, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool.not.i389 = icmp eq i16 %101, 0
  br i1 %tobool.not.i389, label %switch.lookup464.set_dent_cookie.exit393_crit_edge, label %if.then.i391

switch.lookup464.set_dent_cookie.exit393_crit_edge: ; preds = %switch.lookup464
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dent_cookie.exit393

if.then.i391:                                     ; preds = %switch.lookup464
  call void @__sanitizer_cov_trace_pc() #10
  %call.i390 = call i32 @prandom_u32() #8
  br label %set_dent_cookie.exit393

set_dent_cookie.exit393:                          ; preds = %if.then.i391, %switch.lookup464.set_dent_cookie.exit393_crit_edge
  %call.sink.i392 = phi i32 [ %call.i390, %if.then.i391 ], [ 0, %switch.lookup464.set_dent_cookie.exit393_crit_edge ]
  %102 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 6
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call.sink.i392, ptr %102, align 4
  %padding1.i394 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 3
  %104 = ptrtoint ptr %padding1.i394 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %padding1.i394, align 8
  call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef %add.ptr, i32 noundef %add58, i32 noundef 0) #8
  %105 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load.i.i396 = load i16, ptr %authenticated.i.i, align 8
  %106 = and i16 %bf.load.i.i396, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool.not.i397 = icmp eq i16 %106, 0
  br i1 %tobool.not.i397, label %set_dent_cookie.exit393.if.end131_crit_edge, label %ubifs_node_calc_hash.exit401

set_dent_cookie.exit393.if.end131_crit_edge:      ; preds = %set_dent_cookie.exit393
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

ubifs_node_calc_hash.exit401:                     ; preds = %set_dent_cookie.exit393
  %call1.i398 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr, ptr noundef nonnull %hash_dent2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i398)
  %tobool129.not = icmp eq i32 %call1.i398, 0
  br i1 %tobool129.not, label %ubifs_node_calc_hash.exit401.if.end131_crit_edge, label %ubifs_node_calc_hash.exit401.out_release_crit_edge

ubifs_node_calc_hash.exit401.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit401
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit401.if.end131_crit_edge: ; preds = %ubifs_node_calc_hash.exit401
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

if.end131:                                        ; preds = %ubifs_node_calc_hash.exit401.if.end131_crit_edge, %set_dent_cookie.exit393.if.end131_crit_edge
  %add.ptr132 = getelementptr i8, ptr %add.ptr, i32 %and61
  br i1 %cmp.not, label %if.then134, label %if.else

if.then134:                                       ; preds = %if.end131
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr132, ptr noundef %fst_dir, i32 noundef 1)
  %107 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load.i.i403 = load i16, ptr %authenticated.i.i, align 8
  %108 = and i16 %bf.load.i.i403, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool.not.i404 = icmp eq i16 %108, 0
  br i1 %tobool.not.i404, label %if.then134.if.end153_crit_edge, label %ubifs_node_calc_hash.exit408

if.then134.if.end153_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

ubifs_node_calc_hash.exit408:                     ; preds = %if.then134
  %call1.i405 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr132, ptr noundef nonnull %hash_p1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i405)
  %tobool137.not = icmp eq i32 %call1.i405, 0
  br i1 %tobool137.not, label %ubifs_node_calc_hash.exit408.if.end153_crit_edge, label %ubifs_node_calc_hash.exit408.out_release_crit_edge

ubifs_node_calc_hash.exit408.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit408
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit408.if.end153_crit_edge: ; preds = %ubifs_node_calc_hash.exit408
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.else:                                          ; preds = %if.end131
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr132, ptr noundef %fst_dir, i32 noundef 0)
  %109 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load.i.i410 = load i16, ptr %authenticated.i.i, align 8
  %110 = and i16 %bf.load.i.i410, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool.not.i411 = icmp eq i16 %110, 0
  br i1 %tobool.not.i411, label %if.else.if.end144_crit_edge, label %ubifs_node_calc_hash.exit415

if.else.if.end144_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

ubifs_node_calc_hash.exit415:                     ; preds = %if.else
  %call1.i412 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr132, ptr noundef nonnull %hash_p1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i412)
  %tobool142.not = icmp eq i32 %call1.i412, 0
  br i1 %tobool142.not, label %ubifs_node_calc_hash.exit415.if.end144_crit_edge, label %ubifs_node_calc_hash.exit415.out_release_crit_edge

ubifs_node_calc_hash.exit415.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit415
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit415.if.end144_crit_edge: ; preds = %ubifs_node_calc_hash.exit415
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.end144:                                        ; preds = %ubifs_node_calc_hash.exit415.if.end144_crit_edge, %if.else.if.end144_crit_edge
  %add.ptr147 = getelementptr i8, ptr %add.ptr132, i32 160
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr147, ptr noundef %snd_dir, i32 noundef 1)
  %111 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load.i.i417 = load i16, ptr %authenticated.i.i, align 8
  %112 = and i16 %bf.load.i.i417, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool.not.i418 = icmp eq i16 %112, 0
  br i1 %tobool.not.i418, label %if.end144.if.end153_crit_edge, label %ubifs_node_calc_hash.exit422

if.end144.if.end153_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

ubifs_node_calc_hash.exit422:                     ; preds = %if.end144
  %call1.i419 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr147, ptr noundef nonnull %hash_p2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i419)
  %tobool150.not = icmp eq i32 %call1.i419, 0
  br i1 %tobool150.not, label %ubifs_node_calc_hash.exit422.if.end153_crit_edge, label %ubifs_node_calc_hash.exit422.out_release_crit_edge

ubifs_node_calc_hash.exit422.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit422
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit422.if.end153_crit_edge: ; preds = %ubifs_node_calc_hash.exit422
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.end153:                                        ; preds = %ubifs_node_calc_hash.exit422.if.end153_crit_edge, %if.end144.if.end153_crit_edge, %ubifs_node_calc_hash.exit408.if.end153_crit_edge, %if.then134.if.end153_crit_edge
  %call154 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %add71, ptr noundef nonnull %lnum, ptr noundef nonnull %offs, i32 noundef %sync)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.end153.out_release_crit_edge

if.end153.out_release_crit_edge:                  ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.end157:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool158.not = icmp eq i32 %sync, 0
  br i1 %tobool158.not, label %if.then159, label %if.end157.if.end164_crit_edge

if.end157.if.end164_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %113 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %jheads, align 8
  %arrayidx160 = getelementptr %struct.ubifs_jhead, ptr %114, i32 1
  %115 = ptrtoint ptr %i_ino104 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_ino104, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx160, i32 noundef %116) #8
  %117 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %i_ino, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx160, i32 noundef %118) #8
  br label %if.end164

if.end164:                                        ; preds = %if.then159, %if.end157.if.end164_crit_edge
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %119 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %jheads.i, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %120, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  %121 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %lnum, align 4
  call fastcc void @ubifs_add_auth_dirt(ptr noundef %c, i32 noundef %122)
  %123 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %i_ino, align 8
  call fastcc void @dent_key_init(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %124, ptr noundef %snd_nm)
  %125 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %offs, align 4
  %call167 = call i32 @ubifs_tnc_add_nm(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %122, i32 noundef %126, i32 noundef %add54, ptr noundef nonnull %hash_dent1, ptr noundef %snd_nm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %if.end164.out_ro_crit_edge

if.end164.out_ro_crit_edge:                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end170:                                        ; preds = %if.end164
  %add171 = add i32 %126, %and
  %127 = ptrtoint ptr %i_ino104 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %i_ino104, align 8
  call fastcc void @dent_key_init(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %128, ptr noundef %fst_nm)
  %call174 = call i32 @ubifs_tnc_add_nm(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %122, i32 noundef %add171, i32 noundef %add58, ptr noundef nonnull %hash_dent2, ptr noundef %fst_nm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %if.end170.out_ro_crit_edge

if.end170.out_ro_crit_edge:                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end177:                                        ; preds = %if.end170
  %add178 = add i32 %add171, %and61
  %129 = ptrtoint ptr %i_ino104 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_ino104, align 8
  %131 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %arrayidx1.i, align 4
  %call181 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %122, i32 noundef %add178, i32 noundef 160, ptr noundef nonnull %hash_p1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %if.end177.out_ro_crit_edge

if.end177.out_ro_crit_edge:                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end184:                                        ; preds = %if.end177
  br i1 %cmp.not, label %if.end201.critedge, label %if.then186

if.then186:                                       ; preds = %if.end184
  %add189 = add i32 %add178, 160
  %133 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add189, ptr %offs, align 4
  %134 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %i_ino, align 8
  %136 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %key, align 8
  %137 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %arrayidx1.i, align 4
  %call192 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %122, i32 noundef %add189, i32 noundef 160, ptr noundef nonnull %hash_p2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then199.critedge, label %if.then186.out_ro_crit_edge

if.then186.out_ro_crit_edge:                      ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.then199.critedge:                              ; preds = %if.then186
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %fst_dir, i32 0, i32 6
  %138 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load.i424 = load i8, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i424)
  %tobool.not.i425 = icmp sgt i8 %bf.load.i424, -1
  br i1 %tobool.not.i425, label %if.then199.critedge.mark_inode_clean.exit_crit_edge, label %if.then.i426

if.then199.critedge.mark_inode_clean.exit_crit_edge: ; preds = %if.then199.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit

if.then.i426:                                     ; preds = %if.then199.critedge
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %fst_dir) #8
  br label %mark_inode_clean.exit

mark_inode_clean.exit:                            ; preds = %if.then.i426, %if.then199.critedge.mark_inode_clean.exit_crit_edge
  %139 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load2.i = load i8, ptr %dirty.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %dirty.i, align 4
  %dirty.i427 = getelementptr inbounds %struct.ubifs_inode, ptr %snd_dir, i32 0, i32 6
  %140 = ptrtoint ptr %dirty.i427 to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load.i428 = load i8, ptr %dirty.i427, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i428)
  %tobool.not.i429 = icmp sgt i8 %bf.load.i428, -1
  br i1 %tobool.not.i429, label %mark_inode_clean.exit.if.end201_crit_edge, label %mark_inode_clean.exit.if.end201.sink.split_crit_edge

mark_inode_clean.exit.if.end201.sink.split_crit_edge: ; preds = %mark_inode_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201.sink.split

mark_inode_clean.exit.if.end201_crit_edge:        ; preds = %mark_inode_clean.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.end201.critedge:                               ; preds = %if.end184
  %commit_sem.i434 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i434) #8
  %dirty.i435 = getelementptr inbounds %struct.ubifs_inode, ptr %fst_dir, i32 0, i32 6
  %141 = ptrtoint ptr %dirty.i435 to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load.i436 = load i8, ptr %dirty.i435, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i436)
  %tobool.not.i437 = icmp sgt i8 %bf.load.i436, -1
  br i1 %tobool.not.i437, label %if.end201.critedge.if.end201_crit_edge, label %if.end201.critedge.if.end201.sink.split_crit_edge

if.end201.critedge.if.end201.sink.split_crit_edge: ; preds = %if.end201.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201.sink.split

if.end201.critedge.if.end201_crit_edge:           ; preds = %if.end201.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.end201.sink.split:                             ; preds = %if.end201.critedge.if.end201.sink.split_crit_edge, %mark_inode_clean.exit.if.end201.sink.split_crit_edge
  %fst_dir.sink = phi ptr [ %snd_dir, %mark_inode_clean.exit.if.end201.sink.split_crit_edge ], [ %fst_dir, %if.end201.critedge.if.end201.sink.split_crit_edge ]
  %dirty.i435.sink461.ph = phi ptr [ %dirty.i427, %mark_inode_clean.exit.if.end201.sink.split_crit_edge ], [ %dirty.i435, %if.end201.critedge.if.end201.sink.split_crit_edge ]
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %fst_dir.sink) #8
  br label %if.end201

if.end201:                                        ; preds = %if.end201.sink.split, %if.end201.critedge.if.end201_crit_edge, %mark_inode_clean.exit.if.end201_crit_edge
  %dirty.i435.sink461 = phi ptr [ %dirty.i427, %mark_inode_clean.exit.if.end201_crit_edge ], [ %dirty.i435, %if.end201.critedge.if.end201_crit_edge ], [ %dirty.i435.sink461.ph, %if.end201.sink.split ]
  %142 = ptrtoint ptr %dirty.i435.sink461 to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load2.i439 = load i8, ptr %dirty.i435.sink461, align 4
  %bf.clear.i440 = and i8 %bf.load2.i439, 127
  store i8 %bf.clear.i440, ptr %dirty.i435.sink461, align 4
  br label %cleanup.sink.split

out_release:                                      ; preds = %if.end153.out_release_crit_edge, %ubifs_node_calc_hash.exit422.out_release_crit_edge, %ubifs_node_calc_hash.exit415.out_release_crit_edge, %ubifs_node_calc_hash.exit408.out_release_crit_edge, %ubifs_node_calc_hash.exit401.out_release_crit_edge, %ubifs_node_calc_hash.exit.out_release_crit_edge
  %err.0 = phi i32 [ %call1.i, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ %call1.i398, %ubifs_node_calc_hash.exit401.out_release_crit_edge ], [ %call1.i412, %ubifs_node_calc_hash.exit415.out_release_crit_edge ], [ %call1.i419, %ubifs_node_calc_hash.exit422.out_release_crit_edge ], [ %call154, %if.end153.out_release_crit_edge ], [ %call1.i405, %ubifs_node_calc_hash.exit408.out_release_crit_edge ]
  %jheads.i442 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %143 = ptrtoint ptr %jheads.i442 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %jheads.i442, align 8
  %io_mutex.i443 = getelementptr %struct.ubifs_jhead, ptr %144, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i443) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %if.then186.out_ro_crit_edge, %if.end177.out_ro_crit_edge, %if.end170.out_ro_crit_edge, %if.end164.out_ro_crit_edge
  %err.1 = phi i32 [ %err.0, %out_release ], [ %call167, %if.end164.out_ro_crit_edge ], [ %call174, %if.end170.out_ro_crit_edge ], [ %call181, %if.end177.out_ro_crit_edge ], [ %call192, %if.then186.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.1) #8
  %commit_sem.i444 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i444) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_ro, %if.end201, %if.end75.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end201 ], [ %call76, %if.end75.cleanup.sink.split_crit_edge ], [ %err.1, %out_ro ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ubifs_auth_node_sz.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %ubifs_auth_node_sz.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_p2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_p1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_dent2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_dent1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_rename(ptr noundef %c, ptr noundef %old_dir, ptr nocapture noundef readonly %old_inode, ptr noundef %old_nm, ptr noundef %new_dir, ptr noundef %new_inode, ptr noundef %new_nm, ptr noundef readonly %whiteout, i32 noundef %sync) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %lnum = alloca i32, align 4
  %offs = alloca i32, align 4
  %hash_old_dir = alloca [64 x i8], align 1
  %hash_new_dir = alloca [64 x i8], align 1
  %hash_new_inode = alloca [64 x i8], align 1
  %hash_dent1 = alloca [64 x i8], align 1
  %hash_dent2 = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %1 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %2 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offs, align 4, !annotation !131
  %tobool.not = icmp eq ptr %new_inode, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = getelementptr inbounds %struct.inode, ptr %new_inode, i32 0, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %cmp2.not = icmp eq ptr %old_dir, %new_dir
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_old_dir) #8
  %7 = call ptr @memset(ptr %hash_old_dir, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_new_dir) #8
  %8 = call ptr @memset(ptr %hash_new_dir, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_new_inode) #8
  %9 = call ptr @memset(ptr %hash_new_inode, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_dent1) #8
  %10 = call ptr @memset(ptr %hash_dent1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_dent2) #8
  %11 = call ptr @memset(ptr %hash_dent2, i32 255, i32 64)
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %old_dir, i32 0, i32 15
  %12 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.not = icmp eq i32 %13, 0
  br i1 %cmp3.not, label %land.end.do.body12_crit_edge, label %if.then, !prof !132

land.end.do.body12_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1236) #8
  br label %do.body12

do.body12:                                        ; preds = %if.then, %land.end.do.body12_crit_edge
  %data_len14 = getelementptr inbounds %struct.ubifs_inode, ptr %new_dir, i32 0, i32 15
  %14 = ptrtoint ptr %data_len14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.not = icmp eq i32 %15, 0
  br i1 %cmp15.not, label %do.body12.do.body29_crit_edge, label %if.then25, !prof !132

do.body12.do.body29_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

if.then25:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1237) #8
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %do.body12.do.body29_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %old_dir, i32 0, i32 7
  %call31 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #8
  br i1 %call31, label %do.body29.do.body44_crit_edge, label %if.then40, !prof !132

do.body29.do.body44_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then40:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1238) #8
  br label %do.body44

do.body44:                                        ; preds = %if.then40, %do.body29.do.body44_crit_edge
  %ui_mutex46 = getelementptr inbounds %struct.ubifs_inode, ptr %new_dir, i32 0, i32 7
  %call47 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex46) #8
  br i1 %call47, label %do.body44.do.end59_crit_edge, label %if.then56, !prof !132

do.body44.do.end59_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1239) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44.do.end59_crit_edge
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %new_nm, i32 0, i32 1
  %len60 = getelementptr inbounds %struct.fscrypt_name, ptr %new_nm, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len60, align 4
  %add61 = add i32 %17, 57
  %disk_name62 = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 1
  %len63 = getelementptr inbounds %struct.fscrypt_name, ptr %old_nm, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %len63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len63, align 4
  %add65 = add i32 %19, 57
  br i1 %tobool.not, label %do.end59.if.end89_crit_edge, label %if.then67

do.end59.if.end89_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then67:                                        ; preds = %do.end59
  %ui_mutex70 = getelementptr inbounds %struct.ubifs_inode, ptr %new_inode, i32 0, i32 7
  %call71 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex70) #8
  br i1 %call71, label %if.then67.do.end83_crit_edge, label %if.then80, !prof !132

if.then67.do.end83_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

if.then80:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1245) #8
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %if.then67.do.end83_crit_edge
  br i1 %6, label %do.end83.if.end89_crit_edge, label %if.then85

do.end83.if.end89_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then85:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  %data_len86 = getelementptr inbounds %struct.ubifs_inode, ptr %new_inode, i32 0, i32 15
  %20 = ptrtoint ptr %data_len86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len86, align 4
  %add87 = add i32 %21, 160
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %do.end83.if.end89_crit_edge, %do.end59.if.end89_crit_edge
  %ilen.0 = phi i32 [ 160, %do.end83.if.end89_crit_edge ], [ %add87, %if.then85 ], [ 0, %do.end59.if.end89_crit_edge ]
  %new_ui.0 = phi ptr [ %new_inode, %do.end83.if.end89_crit_edge ], [ %new_inode, %if.then85 ], [ inttoptr (i32 -1 to ptr), %do.end59.if.end89_crit_edge ]
  %add90 = add i32 %17, 64
  %and = and i32 %add90, -8
  %add91 = add i32 %19, 64
  %and92 = and i32 %add91, -8
  %add94 = add i32 %ilen.0, 7
  %and95 = and i32 %add94, -8
  %spec.select.v = select i1 %cmp2.not, i32 160, i32 320
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %22 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %23 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %if.end89.ubifs_auth_node_sz.exit_crit_edge, label %if.then.i

if.end89.ubifs_auth_node_sz.exit_crit_edge:       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_auth_node_sz.exit

if.then.i:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %24 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %25, 24
  br label %ubifs_auth_node_sz.exit

ubifs_auth_node_sz.exit:                          ; preds = %if.then.i, %if.end89.ubifs_auth_node_sz.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %if.end89.ubifs_auth_node_sz.exit_crit_edge ]
  %add93 = add i32 %and, %spec.select.v
  %add96 = add i32 %add93, %and92
  %spec.select = add i32 %add96, %and95
  %add105 = add i32 %spec.select, %retval.0.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add105, i32 noundef 3392) #11
  %tobool107.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool107.not, label %ubifs_auth_node_sz.exit.cleanup_crit_edge, label %if.end109

ubifs_auth_node_sz.exit.cleanup_crit_edge:        ; preds = %ubifs_auth_node_sz.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end109:                                        ; preds = %ubifs_auth_node_sz.exit
  %call110 = tail call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 1, i32 noundef %add105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup.sink.split_crit_edge

if.end109.cleanup.sink.split_crit_edge:           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end113:                                        ; preds = %if.end109
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %node_type, align 4
  %key114 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino, align 8
  %key_hash.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %29 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %key_hash.i, align 4
  %31 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disk_name, align 4
  %33 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len60, align 4
  %call.i = tail call i32 %30(ptr noundef %32, i32 noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i)
  %tobool.not.i517 = icmp ult i32 %call.i, 536870912
  br i1 %tobool.not.i517, label %if.end113.dent_key_init_flash.exit_crit_edge, label %if.then.i518, !prof !132

if.end113.dent_key_init_flash.exit_crit_edge:     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %dent_key_init_flash.exit

if.then.i518:                                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 188) #8
  br label %dent_key_init_flash.exit

dent_key_init_flash.exit:                         ; preds = %if.then.i518, %if.end113.dent_key_init_flash.exit_crit_edge
  %35 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  %36 = ptrtoint ptr %key114 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %key114, align 8
  %or.i = or i32 %call.i, 1073741824
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %arrayidx6.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx6.i, align 4
  %add.ptr.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 8
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %add.ptr.i, align 32
  %i_ino115 = getelementptr inbounds %struct.inode, ptr %old_inode, i32 0, i32 11
  %40 = ptrtoint ptr %i_ino115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_ino115, align 8
  %conv116 = zext i32 %41 to i64
  %42 = tail call i64 @llvm.bswap.i64(i64 %conv116)
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %inum to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %inum, align 8
  %44 = ptrtoint ptr %old_inode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %old_inode, align 8
  %46 = and i16 %45, -4096
  %and.i = zext i16 %46 to i32
  %47 = add nsw i32 %and.i, -4096
  %48 = lshr exact i32 %47, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %47)
  %49 = icmp ult i32 %47, 49152
  br i1 %49, label %switch.hole_check, label %dent_key_init_flash.exit.do.body.i_crit_edge

dent_key_init_flash.exit.do.body.i_crit_edge:     ; preds = %dent_key_init_flash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %switch.hole_check.do.body.i_crit_edge, %dent_key_init_flash.exit.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

switch.hole_check:                                ; preds = %dent_key_init_flash.exit
  %switch.maskindex = trunc i32 %48 to i16
  %switch.shifted = lshr i16 2731, %switch.maskindex
  %50 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %switch.lobit.not = icmp eq i16 %50, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body.i_crit_edge, label %switch.lookup

switch.hole_check.do.body.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_rename, i32 0, i32 %48
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %51)
  %switch.load = load i8, ptr %switch.gep, align 1
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %switch.load, ptr %type, align 1
  %53 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len60, align 4
  %conv122 = trunc i32 %54 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv122)
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %nlen to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %nlen, align 2
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7
  %57 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disk_name, align 4
  %59 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len60, align 4
  %61 = call ptr @memcpy(ptr %name, ptr %58, i32 %60)
  %arrayidx = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7, i32 %60
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx, align 1
  %63 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i = load i16, ptr %authenticated.i.i, align 8
  %64 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i520 = icmp eq i16 %64, 0
  br i1 %tobool.not.i520, label %switch.lookup.set_dent_cookie.exit_crit_edge, label %if.then.i522

switch.lookup.set_dent_cookie.exit_crit_edge:     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dent_cookie.exit

if.then.i522:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %call.i521 = tail call i32 @prandom_u32() #8
  br label %set_dent_cookie.exit

set_dent_cookie.exit:                             ; preds = %if.then.i522, %switch.lookup.set_dent_cookie.exit_crit_edge
  %call.sink.i = phi i32 [ %call.i521, %if.then.i522 ], [ 0, %switch.lookup.set_dent_cookie.exit_crit_edge ]
  %65 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 6
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.sink.i, ptr %65, align 4
  %padding1.i = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %padding1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %padding1.i, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef %add61, i32 noundef 0) #8
  %68 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i.i524 = load i16, ptr %authenticated.i.i, align 8
  %69 = and i16 %bf.load.i.i524, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i525 = icmp eq i16 %69, 0
  br i1 %tobool.not.i525, label %set_dent_cookie.exit.if.end134_crit_edge, label %ubifs_node_calc_hash.exit

set_dent_cookie.exit.if.end134_crit_edge:         ; preds = %set_dent_cookie.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

ubifs_node_calc_hash.exit:                        ; preds = %set_dent_cookie.exit
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %hash_dent1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool132.not = icmp eq i32 %call1.i, 0
  br i1 %tobool132.not, label %ubifs_node_calc_hash.exit.if.end134_crit_edge, label %ubifs_node_calc_hash.exit.out_release_crit_edge

ubifs_node_calc_hash.exit.out_release_crit_edge:  ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit.if.end134_crit_edge:    ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.end134:                                        ; preds = %ubifs_node_calc_hash.exit.if.end134_crit_edge, %set_dent_cookie.exit.if.end134_crit_edge
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %and
  %node_type136 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 4
  %70 = ptrtoint ptr %node_type136 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %node_type136, align 4
  %key137 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 1
  %i_ino138 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 11
  %71 = ptrtoint ptr %i_ino138 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_ino138, align 8
  %73 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %key_hash.i, align 4
  %75 = ptrtoint ptr %disk_name62 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disk_name62, align 4
  %77 = ptrtoint ptr %len63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len63, align 4
  %call.i531 = call i32 %74(ptr noundef %76, i32 noundef %78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i531)
  %tobool.not.i532 = icmp ult i32 %call.i531, 536870912
  br i1 %tobool.not.i532, label %if.end134.dent_key_init_flash.exit537_crit_edge, label %if.then.i533, !prof !132

if.end134.dent_key_init_flash.exit537_crit_edge:  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %dent_key_init_flash.exit537

if.then.i533:                                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 188) #8
  br label %dent_key_init_flash.exit537

dent_key_init_flash.exit537:                      ; preds = %if.then.i533, %if.end134.dent_key_init_flash.exit537_crit_edge
  %79 = call i32 @llvm.bswap.i32(i32 %72) #8
  %80 = ptrtoint ptr %key137 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %key137, align 8
  %or.i534 = or i32 %call.i531, 1073741824
  %81 = call i32 @llvm.bswap.i32(i32 %or.i534) #8
  %arrayidx6.i535 = getelementptr [2 x i32], ptr %key137, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx6.i535 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx6.i535, align 4
  %add.ptr.i536 = getelementptr i8, ptr %key137, i32 8
  %83 = ptrtoint ptr %add.ptr.i536 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %add.ptr.i536, align 8
  %tobool139.not = icmp eq ptr %whiteout, null
  br i1 %tobool139.not, label %if.else149, label %if.then140

if.then140:                                       ; preds = %dent_key_init_flash.exit537
  %i_ino141 = getelementptr inbounds %struct.inode, ptr %whiteout, i32 0, i32 11
  %84 = ptrtoint ptr %i_ino141 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_ino141, align 8
  %conv142 = zext i32 %85 to i64
  %86 = call i64 @llvm.bswap.i64(i64 %conv142)
  %inum143 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 2
  %87 = ptrtoint ptr %inum143 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %inum143, align 8
  %88 = ptrtoint ptr %whiteout to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %whiteout, align 8
  %90 = and i16 %89, -4096
  %and.i538 = zext i16 %90 to i32
  %91 = add nsw i32 %and.i538, -4096
  %92 = lshr exact i32 %91, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %91)
  %93 = icmp ult i32 %91, 49152
  br i1 %93, label %switch.hole_check636, label %if.then140.do.body.i545_crit_edge

if.then140.do.body.i545_crit_edge:                ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i545

do.body.i545:                                     ; preds = %switch.hole_check636.do.body.i545_crit_edge, %if.then140.do.body.i545_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

if.else149:                                       ; preds = %dent_key_init_flash.exit537
  call void @__sanitizer_cov_trace_pc() #10
  %inum150 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 2
  %94 = ptrtoint ptr %inum150 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %inum150, align 8
  br label %if.end152

switch.hole_check636:                             ; preds = %if.then140
  %switch.maskindex638 = trunc i32 %92 to i16
  %switch.shifted639 = lshr i16 2731, %switch.maskindex638
  %95 = and i16 %switch.shifted639, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %switch.lobit640.not = icmp eq i16 %95, 0
  br i1 %switch.lobit640.not, label %switch.hole_check636.do.body.i545_crit_edge, label %switch.lookup637

switch.hole_check636.do.body.i545_crit_edge:      ; preds = %switch.hole_check636
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i545

switch.lookup637:                                 ; preds = %switch.hole_check636
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep641 = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_rename.60, i32 0, i32 %92
  %96 = ptrtoint ptr %switch.gep641 to i32
  call void @__asan_load1_noabort(i32 %96)
  %switch.load642 = load i8, ptr %switch.gep641, align 1
  br label %if.end152

if.end152:                                        ; preds = %switch.lookup637, %if.else149
  %.sink = phi i8 [ 0, %if.else149 ], [ %switch.load642, %switch.lookup637 ]
  %type151 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 4
  %97 = ptrtoint ptr %type151 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %.sink, ptr %type151, align 1
  %98 = ptrtoint ptr %len63 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len63, align 4
  %conv155 = trunc i32 %99 to i16
  %100 = call i16 @llvm.bswap.i16(i16 %conv155)
  %nlen156 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 5
  %101 = ptrtoint ptr %nlen156 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %nlen156, align 2
  %name157 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 7
  %102 = ptrtoint ptr %disk_name62 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %disk_name62, align 4
  %104 = ptrtoint ptr %len63 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len63, align 4
  %106 = call ptr @memcpy(ptr %name157, ptr %103, i32 %105)
  %arrayidx166 = getelementptr [0 x i8], ptr %name157, i32 0, i32 %105
  %107 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx166, align 1
  %108 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i549 = load i16, ptr %authenticated.i.i, align 8
  %109 = and i16 %bf.load.i549, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool.not.i550 = icmp eq i16 %109, 0
  br i1 %tobool.not.i550, label %if.end152.set_dent_cookie.exit554_crit_edge, label %if.then.i552

if.end152.set_dent_cookie.exit554_crit_edge:      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dent_cookie.exit554

if.then.i552:                                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %call.i551 = call i32 @prandom_u32() #8
  br label %set_dent_cookie.exit554

set_dent_cookie.exit554:                          ; preds = %if.then.i552, %if.end152.set_dent_cookie.exit554_crit_edge
  %call.sink.i553 = phi i32 [ %call.i551, %if.then.i552 ], [ 0, %if.end152.set_dent_cookie.exit554_crit_edge ]
  %110 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 6
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call.sink.i553, ptr %110, align 4
  %padding1.i555 = getelementptr inbounds %struct.ubifs_dent_node, ptr %add.ptr, i32 0, i32 3
  %112 = ptrtoint ptr %padding1.i555 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %padding1.i555, align 8
  call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef %add.ptr, i32 noundef %add65, i32 noundef 0) #8
  %113 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load.i.i557 = load i16, ptr %authenticated.i.i, align 8
  %114 = and i16 %bf.load.i.i557, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool.not.i558 = icmp eq i16 %114, 0
  br i1 %tobool.not.i558, label %set_dent_cookie.exit554.if.end171_crit_edge, label %ubifs_node_calc_hash.exit562

set_dent_cookie.exit554.if.end171_crit_edge:      ; preds = %set_dent_cookie.exit554
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

ubifs_node_calc_hash.exit562:                     ; preds = %set_dent_cookie.exit554
  %call1.i559 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr, ptr noundef nonnull %hash_dent2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i559)
  %tobool169.not = icmp eq i32 %call1.i559, 0
  br i1 %tobool169.not, label %ubifs_node_calc_hash.exit562.if.end171_crit_edge, label %ubifs_node_calc_hash.exit562.out_release_crit_edge

ubifs_node_calc_hash.exit562.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit562
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit562.if.end171_crit_edge: ; preds = %ubifs_node_calc_hash.exit562
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.end171:                                        ; preds = %ubifs_node_calc_hash.exit562.if.end171_crit_edge, %set_dent_cookie.exit554.if.end171_crit_edge
  %add.ptr172 = getelementptr i8, ptr %add.ptr, i32 %and92
  br i1 %tobool.not, label %if.end171.if.end183_crit_edge, label %if.then174

if.end171.if.end183_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.then174:                                       ; preds = %if.end171
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr172, ptr noundef nonnull %new_inode, i32 noundef 0)
  %115 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load.i.i564 = load i16, ptr %authenticated.i.i, align 8
  %116 = and i16 %bf.load.i.i564, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool.not.i565 = icmp eq i16 %116, 0
  br i1 %tobool.not.i565, label %if.then174.if.end179_crit_edge, label %ubifs_node_calc_hash.exit569

if.then174.if.end179_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

ubifs_node_calc_hash.exit569:                     ; preds = %if.then174
  %call1.i566 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr172, ptr noundef nonnull %hash_new_inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i566)
  %tobool177.not = icmp eq i32 %call1.i566, 0
  br i1 %tobool177.not, label %ubifs_node_calc_hash.exit569.if.end179_crit_edge, label %ubifs_node_calc_hash.exit569.out_release_crit_edge

ubifs_node_calc_hash.exit569.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit569
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit569.if.end179_crit_edge: ; preds = %ubifs_node_calc_hash.exit569
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.end179:                                        ; preds = %ubifs_node_calc_hash.exit569.if.end179_crit_edge, %if.then174.if.end179_crit_edge
  %add.ptr182 = getelementptr i8, ptr %add.ptr172, i32 %and95
  br label %if.end183

if.end183:                                        ; preds = %if.end179, %if.end171.if.end183_crit_edge
  %p.0 = phi ptr [ %add.ptr182, %if.end179 ], [ %add.ptr172, %if.end171.if.end183_crit_edge ]
  br i1 %cmp2.not, label %if.then185, label %if.else191

if.then185:                                       ; preds = %if.end183
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %p.0, ptr noundef %old_dir, i32 noundef 1)
  %117 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load.i.i571 = load i16, ptr %authenticated.i.i, align 8
  %118 = and i16 %bf.load.i.i571, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool.not.i572 = icmp eq i16 %118, 0
  br i1 %tobool.not.i572, label %if.then185.if.end205_crit_edge, label %ubifs_node_calc_hash.exit576

if.then185.if.end205_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

ubifs_node_calc_hash.exit576:                     ; preds = %if.then185
  %call1.i573 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %p.0, ptr noundef nonnull %hash_old_dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i573)
  %tobool188.not = icmp eq i32 %call1.i573, 0
  br i1 %tobool188.not, label %ubifs_node_calc_hash.exit576.if.end205_crit_edge, label %ubifs_node_calc_hash.exit576.out_release_crit_edge

ubifs_node_calc_hash.exit576.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit576
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit576.if.end205_crit_edge: ; preds = %ubifs_node_calc_hash.exit576
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.else191:                                       ; preds = %if.end183
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %p.0, ptr noundef %old_dir, i32 noundef 0)
  %119 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i.i578 = load i16, ptr %authenticated.i.i, align 8
  %120 = and i16 %bf.load.i.i578, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool.not.i579 = icmp eq i16 %120, 0
  br i1 %tobool.not.i579, label %if.else191.if.end196_crit_edge, label %ubifs_node_calc_hash.exit583

if.else191.if.end196_crit_edge:                   ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

ubifs_node_calc_hash.exit583:                     ; preds = %if.else191
  %call1.i580 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %p.0, ptr noundef nonnull %hash_old_dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i580)
  %tobool194.not = icmp eq i32 %call1.i580, 0
  br i1 %tobool194.not, label %ubifs_node_calc_hash.exit583.if.end196_crit_edge, label %ubifs_node_calc_hash.exit583.out_release_crit_edge

ubifs_node_calc_hash.exit583.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit583
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit583.if.end196_crit_edge: ; preds = %ubifs_node_calc_hash.exit583
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

if.end196:                                        ; preds = %ubifs_node_calc_hash.exit583.if.end196_crit_edge, %if.else191.if.end196_crit_edge
  %add.ptr199 = getelementptr i8, ptr %p.0, i32 160
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr199, ptr noundef %new_dir, i32 noundef 1)
  %121 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %bf.load.i.i585 = load i16, ptr %authenticated.i.i, align 8
  %122 = and i16 %bf.load.i.i585, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool.not.i586 = icmp eq i16 %122, 0
  br i1 %tobool.not.i586, label %if.end196.if.end205_crit_edge, label %ubifs_node_calc_hash.exit590

if.end196.if.end205_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

ubifs_node_calc_hash.exit590:                     ; preds = %if.end196
  %call1.i587 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr199, ptr noundef nonnull %hash_new_dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i587)
  %tobool202.not = icmp eq i32 %call1.i587, 0
  br i1 %tobool202.not, label %ubifs_node_calc_hash.exit590.if.end205_crit_edge, label %ubifs_node_calc_hash.exit590.out_release_crit_edge

ubifs_node_calc_hash.exit590.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit590
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit590.if.end205_crit_edge: ; preds = %ubifs_node_calc_hash.exit590
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.end205:                                        ; preds = %ubifs_node_calc_hash.exit590.if.end205_crit_edge, %if.end196.if.end205_crit_edge, %ubifs_node_calc_hash.exit576.if.end205_crit_edge, %if.then185.if.end205_crit_edge
  br i1 %6, label %if.then207, label %if.end205.if.end213_crit_edge

if.end205.if.end213_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

if.then207:                                       ; preds = %if.end205
  %i_ino208 = getelementptr inbounds %struct.inode, ptr %new_inode, i32 0, i32 11
  %123 = ptrtoint ptr %i_ino208 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %i_ino208, align 8
  %call209 = call i32 @ubifs_add_orphan(ptr noundef %c, i32 noundef %124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end212, label %if.then211

if.then211:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %125 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %jheads.i, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %126, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  br label %out_finish

if.end212:                                        ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  %cmt_no = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %127 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %cmt_no, align 8
  %del_cmtno = getelementptr inbounds %struct.ubifs_inode, ptr %new_ui.0, i32 0, i32 2
  %129 = ptrtoint ptr %del_cmtno to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %del_cmtno, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.end205.if.end213_crit_edge
  %orphan_added.0 = phi i32 [ 1, %if.end212 ], [ 0, %if.end205.if.end213_crit_edge ]
  %call214 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %add105, ptr noundef nonnull %lnum, ptr noundef nonnull %offs, i32 noundef %sync)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.end213.out_release_crit_edge

if.end213.out_release_crit_edge:                  ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.end217:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool218.not = icmp eq i32 %sync, 0
  br i1 %tobool218.not, label %if.then219, label %if.end217.if.end231_crit_edge

if.end217.if.end231_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then219:                                       ; preds = %if.end217
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %130 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %jheads, align 8
  %arrayidx220 = getelementptr %struct.ubifs_jhead, ptr %131, i32 1
  %132 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %i_ino, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx220, i32 noundef %133) #8
  %134 = ptrtoint ptr %i_ino138 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %i_ino138, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx220, i32 noundef %135) #8
  br i1 %tobool.not, label %if.then219.if.end231_crit_edge, label %if.then225

if.then219.if.end231_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then225:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %jheads, align 8
  %arrayidx227 = getelementptr %struct.ubifs_jhead, ptr %137, i32 1
  %i_ino229 = getelementptr inbounds %struct.inode, ptr %new_inode, i32 0, i32 11
  %138 = ptrtoint ptr %i_ino229 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %i_ino229, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx227, i32 noundef %139) #8
  br label %if.end231

if.end231:                                        ; preds = %if.then225, %if.then219.if.end231_crit_edge, %if.end217.if.end231_crit_edge
  %jheads.i591 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %140 = ptrtoint ptr %jheads.i591 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %jheads.i591, align 8
  %io_mutex.i592 = getelementptr %struct.ubifs_jhead, ptr %141, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i592) #8
  %142 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %lnum, align 4
  call fastcc void @ubifs_add_auth_dirt(ptr noundef %c, i32 noundef %143)
  %144 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %i_ino, align 8
  call fastcc void @dent_key_init(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %145, ptr noundef %new_nm)
  %146 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %offs, align 4
  %call234 = call i32 @ubifs_tnc_add_nm(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %143, i32 noundef %147, i32 noundef %add61, ptr noundef nonnull %hash_dent1, ptr noundef %new_nm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end237, label %if.end231.out_ro_crit_edge

if.end231.out_ro_crit_edge:                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end237:                                        ; preds = %if.end231
  %add238 = add i32 %147, %and
  br i1 %tobool139.not, label %if.else248, label %if.then240

if.then240:                                       ; preds = %if.end237
  %148 = ptrtoint ptr %i_ino138 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %i_ino138, align 8
  call fastcc void @dent_key_init(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %149, ptr noundef %old_nm)
  %call243 = call i32 @ubifs_tnc_add_nm(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %143, i32 noundef %add238, i32 noundef %add65, ptr noundef nonnull %hash_dent2, ptr noundef %old_nm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.end246, label %if.then240.out_ro_crit_edge

if.then240.out_ro_crit_edge:                      ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end246:                                        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino247 = getelementptr inbounds %struct.inode, ptr %whiteout, i32 0, i32 11
  %150 = ptrtoint ptr %i_ino247 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %i_ino247, align 8
  call void @ubifs_delete_orphan(ptr noundef %c, i32 noundef %151) #8
  br label %if.end258

if.else248:                                       ; preds = %if.end237
  %call.i593 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %143, i32 noundef -2147483647, i32 noundef %add65, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i593)
  %tobool250.not = icmp eq i32 %call.i593, 0
  br i1 %tobool250.not, label %if.end252, label %if.else248.out_ro_crit_edge

if.else248.out_ro_crit_edge:                      ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end252:                                        ; preds = %if.else248
  %152 = ptrtoint ptr %i_ino138 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %i_ino138, align 8
  call fastcc void @dent_key_init(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %153, ptr noundef %old_nm)
  %call254 = call i32 @ubifs_tnc_remove_nm(ptr noundef %c, ptr noundef nonnull %key, ptr noundef %old_nm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.end252.if.end258_crit_edge, label %if.end252.out_ro_crit_edge

if.end252.out_ro_crit_edge:                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end252.if.end258_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258

if.end258:                                        ; preds = %if.end252.if.end258_crit_edge, %if.end246
  %add259 = add i32 %add238, %and92
  %154 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add259, ptr %offs, align 4
  br i1 %tobool.not, label %if.end258.if.end271_crit_edge, label %if.then261

if.end258.if.end271_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

if.then261:                                       ; preds = %if.end258
  %i_ino262 = getelementptr inbounds %struct.inode, ptr %new_inode, i32 0, i32 11
  %155 = ptrtoint ptr %i_ino262 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %i_ino262, align 8
  %157 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %158 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %arrayidx1.i, align 4
  %call264 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %143, i32 noundef %add259, i32 noundef %ilen.0, ptr noundef nonnull %hash_new_inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end267, label %if.then261.out_ro_crit_edge

if.then261.out_ro_crit_edge:                      ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end267:                                        ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #10
  %add270 = add i32 %add259, %and95
  %159 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add270, ptr %offs, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.end267, %if.end258.if.end271_crit_edge
  %160 = ptrtoint ptr %i_ino138 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %i_ino138, align 8
  %162 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %key, align 8
  %arrayidx1.i594 = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %163 = ptrtoint ptr %arrayidx1.i594 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %arrayidx1.i594, align 4
  %164 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %offs, align 4
  %call274 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %143, i32 noundef %165, i32 noundef 160, ptr noundef nonnull %hash_old_dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.end277, label %if.end271.out_ro_crit_edge

if.end271.out_ro_crit_edge:                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end277:                                        ; preds = %if.end271
  br i1 %cmp2.not, label %if.end277.if.end289_crit_edge, label %if.then279

if.end277.if.end289_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.then279:                                       ; preds = %if.end277
  %add282 = add i32 %165, 160
  %166 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %add282, ptr %offs, align 4
  %167 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %i_ino, align 8
  %169 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %key, align 8
  %170 = ptrtoint ptr %arrayidx1.i594 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %arrayidx1.i594, align 4
  %call285 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %143, i32 noundef %add282, i32 noundef 160, ptr noundef nonnull %hash_new_dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.then279.if.end289_crit_edge, label %if.then279.out_ro_crit_edge

if.then279.out_ro_crit_edge:                      ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.then279.if.end289_crit_edge:                   ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.end289:                                        ; preds = %if.then279.if.end289_crit_edge, %if.end277.if.end289_crit_edge
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  br i1 %tobool.not, label %if.end289.if.end293_crit_edge, label %if.then291

if.end289.if.end293_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293

if.then291:                                       ; preds = %if.end289
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %new_ui.0, i32 0, i32 6
  %171 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load.i596 = load i8, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i596)
  %tobool.not.i597 = icmp sgt i8 %bf.load.i596, -1
  br i1 %tobool.not.i597, label %if.then291.mark_inode_clean.exit_crit_edge, label %if.then.i598

if.then291.mark_inode_clean.exit_crit_edge:       ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit

if.then.i598:                                     ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef nonnull %new_ui.0) #8
  br label %mark_inode_clean.exit

mark_inode_clean.exit:                            ; preds = %if.then.i598, %if.then291.mark_inode_clean.exit_crit_edge
  %172 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %bf.load2.i = load i8, ptr %dirty.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %dirty.i, align 4
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %new_ui.0, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ui_lock) #8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %new_ui.0, i32 0, i32 11
  %173 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %new_ui.0, i32 0, i32 10
  %175 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %synced_i_size, align 8
  call void @_raw_spin_unlock(ptr noundef %ui_lock) #8
  br label %if.end293

if.end293:                                        ; preds = %mark_inode_clean.exit, %if.end289.if.end293_crit_edge
  %dirty.i599 = getelementptr inbounds %struct.ubifs_inode, ptr %old_dir, i32 0, i32 6
  %176 = ptrtoint ptr %dirty.i599 to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load.i600 = load i8, ptr %dirty.i599, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i600)
  %tobool.not.i601 = icmp sgt i8 %bf.load.i600, -1
  br i1 %tobool.not.i601, label %if.end293.mark_inode_clean.exit605_crit_edge, label %if.then.i602

if.end293.mark_inode_clean.exit605_crit_edge:     ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit605

if.then.i602:                                     ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %old_dir) #8
  br label %mark_inode_clean.exit605

mark_inode_clean.exit605:                         ; preds = %if.then.i602, %if.end293.mark_inode_clean.exit605_crit_edge
  %177 = ptrtoint ptr %dirty.i599 to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load2.i603 = load i8, ptr %dirty.i599, align 4
  %bf.clear.i604 = and i8 %bf.load2.i603, 127
  store i8 %bf.clear.i604, ptr %dirty.i599, align 4
  br i1 %cmp2.not, label %mark_inode_clean.exit605.cleanup.sink.split_crit_edge, label %if.then296

mark_inode_clean.exit605.cleanup.sink.split_crit_edge: ; preds = %mark_inode_clean.exit605
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then296:                                       ; preds = %mark_inode_clean.exit605
  %dirty.i606 = getelementptr inbounds %struct.ubifs_inode, ptr %new_dir, i32 0, i32 6
  %178 = ptrtoint ptr %dirty.i606 to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load.i607 = load i8, ptr %dirty.i606, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i607)
  %tobool.not.i608 = icmp sgt i8 %bf.load.i607, -1
  br i1 %tobool.not.i608, label %if.then296.mark_inode_clean.exit612_crit_edge, label %if.then.i609

if.then296.mark_inode_clean.exit612_crit_edge:    ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit612

if.then.i609:                                     ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %new_dir) #8
  br label %mark_inode_clean.exit612

mark_inode_clean.exit612:                         ; preds = %if.then.i609, %if.then296.mark_inode_clean.exit612_crit_edge
  %179 = ptrtoint ptr %dirty.i606 to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load2.i610 = load i8, ptr %dirty.i606, align 4
  %bf.clear.i611 = and i8 %bf.load2.i610, 127
  store i8 %bf.clear.i611, ptr %dirty.i606, align 4
  br label %cleanup.sink.split

out_release:                                      ; preds = %if.end213.out_release_crit_edge, %ubifs_node_calc_hash.exit590.out_release_crit_edge, %ubifs_node_calc_hash.exit583.out_release_crit_edge, %ubifs_node_calc_hash.exit576.out_release_crit_edge, %ubifs_node_calc_hash.exit569.out_release_crit_edge, %ubifs_node_calc_hash.exit562.out_release_crit_edge, %ubifs_node_calc_hash.exit.out_release_crit_edge
  %err.0 = phi i32 [ %call1.i, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ %call1.i559, %ubifs_node_calc_hash.exit562.out_release_crit_edge ], [ %call1.i566, %ubifs_node_calc_hash.exit569.out_release_crit_edge ], [ %call1.i580, %ubifs_node_calc_hash.exit583.out_release_crit_edge ], [ %call1.i587, %ubifs_node_calc_hash.exit590.out_release_crit_edge ], [ %call214, %if.end213.out_release_crit_edge ], [ %call1.i573, %ubifs_node_calc_hash.exit576.out_release_crit_edge ]
  %orphan_added.1 = phi i32 [ 0, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ 0, %ubifs_node_calc_hash.exit562.out_release_crit_edge ], [ 0, %ubifs_node_calc_hash.exit569.out_release_crit_edge ], [ 0, %ubifs_node_calc_hash.exit583.out_release_crit_edge ], [ 0, %ubifs_node_calc_hash.exit590.out_release_crit_edge ], [ %orphan_added.0, %if.end213.out_release_crit_edge ], [ 0, %ubifs_node_calc_hash.exit576.out_release_crit_edge ]
  %jheads.i613 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %180 = ptrtoint ptr %jheads.i613 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %jheads.i613, align 8
  %io_mutex.i614 = getelementptr %struct.ubifs_jhead, ptr %181, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i614) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %if.then279.out_ro_crit_edge, %if.end271.out_ro_crit_edge, %if.then261.out_ro_crit_edge, %if.end252.out_ro_crit_edge, %if.else248.out_ro_crit_edge, %if.then240.out_ro_crit_edge, %if.end231.out_ro_crit_edge
  %err.1 = phi i32 [ %err.0, %out_release ], [ %call234, %if.end231.out_ro_crit_edge ], [ %call243, %if.then240.out_ro_crit_edge ], [ %call264, %if.then261.out_ro_crit_edge ], [ %call274, %if.end271.out_ro_crit_edge ], [ %call285, %if.then279.out_ro_crit_edge ], [ %call.i593, %if.else248.out_ro_crit_edge ], [ %call254, %if.end252.out_ro_crit_edge ]
  %orphan_added.2 = phi i32 [ %orphan_added.1, %out_release ], [ %orphan_added.0, %if.end231.out_ro_crit_edge ], [ %orphan_added.0, %if.then240.out_ro_crit_edge ], [ %orphan_added.0, %if.then261.out_ro_crit_edge ], [ %orphan_added.0, %if.end271.out_ro_crit_edge ], [ %orphan_added.0, %if.then279.out_ro_crit_edge ], [ %orphan_added.0, %if.else248.out_ro_crit_edge ], [ %orphan_added.0, %if.end252.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %orphan_added.2)
  %tobool299.not = icmp eq i32 %orphan_added.2, 0
  br i1 %tobool299.not, label %out_ro.out_finish_crit_edge, label %if.then300

out_ro.out_finish_crit_edge:                      ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_finish

if.then300:                                       ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino301 = getelementptr inbounds %struct.inode, ptr %new_inode, i32 0, i32 11
  %182 = ptrtoint ptr %i_ino301 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %i_ino301, align 8
  call void @ubifs_delete_orphan(ptr noundef %c, i32 noundef %183) #8
  br label %out_finish

out_finish:                                       ; preds = %if.then300, %out_ro.out_finish_crit_edge, %if.then211
  %err.2 = phi i32 [ %err.1, %if.then300 ], [ %err.1, %out_ro.out_finish_crit_edge ], [ %call209, %if.then211 ]
  %commit_sem.i615 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i615) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_finish, %mark_inode_clean.exit612, %mark_inode_clean.exit605.cleanup.sink.split_crit_edge, %if.end109.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %mark_inode_clean.exit612 ], [ 0, %mark_inode_clean.exit605.cleanup.sink.split_crit_edge ], [ %call110, %if.end109.cleanup.sink.split_crit_edge ], [ %err.2, %out_finish ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ubifs_auth_node_sz.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %ubifs_auth_node_sz.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_dent2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_dent1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_new_inode) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_new_dir) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_old_dir) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_truncate(ptr noundef %c, ptr noundef %inode, i64 noundef %old_size, i64 noundef %new_size) local_unnamed_addr #0 align 64 {
entry:
  %dlen.i = alloca i32, align 4
  %compr_type.i = alloca i32, align 4
  %out_len.i = alloca i32, align 4
  %old_dlen.i = alloca i32, align 4
  %key = alloca %union.ubifs_key, align 8
  %to_key = alloca %union.ubifs_key, align 8
  %lnum = alloca i32, align 4
  %offs = alloca i32, align 4
  %hash_ino = alloca [64 x i8], align 1
  %hash_dn = alloca [64 x i8], align 1
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_key) #8
  %1 = ptrtoint ptr %to_key to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %to_key, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %2 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %3 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %offs, align 4, !annotation !131
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %and1 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_ino) #8
  %13 = call ptr @memset(ptr %hash_ino, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_dn) #8
  %14 = call ptr @memset(ptr %hash_dn, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_jnl_truncate.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_jnl_truncate, %if.then)) #8
          to label %do.body8 [label %if.then], !srcloc !134

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_jnl_truncate.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.23, i32 noundef %20, i32 noundef %12, i64 noundef %old_size, i64 noundef %new_size) #8
  br label %do.body8

do.body8:                                         ; preds = %if.then, %lor.end
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %21 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not = icmp eq i32 %22, 0
  br i1 %tobool9.not, label %do.body8.do.body24_crit_edge, label %if.then20, !prof !132

do.body8.do.body24_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1525) #8
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %do.body8.do.body24_crit_edge
  %23 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %inode, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp.not = icmp eq i16 %25, -32768
  br i1 %cmp.not, label %do.body24.do.body39_crit_edge, label %if.then35, !prof !132

do.body24.do.body39_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

if.then35:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1526) #8
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %do.body24.do.body39_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 7
  %call40 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #8
  br i1 %call40, label %do.body39.do.end52_crit_edge, label %if.then49, !prof !132

do.body39.do.end52_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

if.then49:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1527) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %do.body39.do.end52_crit_edge
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %26 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %27 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i, label %do.end52.if.end8.i_crit_edge, label %if.then.i320

do.end52.if.end8.i_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i320:                                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %28 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %29, 24
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i320, %do.end52.if.end8.i_crit_edge
  %retval.0.i321 = phi i32 [ %add.i, %if.then.i320 ], [ 0, %do.end52.if.end8.i_crit_edge ]
  %add = add i32 %retval.0.i321, 8504
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #11
  %tobool55.not = icmp eq ptr %call9.i, null
  br i1 %tobool55.not, label %if.end8.i.cleanup193_crit_edge, label %if.end57

if.end8.i.cleanup193_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

if.end57:                                         ; preds = %if.end8.i
  %add.ptr = getelementptr i8, ptr %call9.i, i32 160
  %node_type = getelementptr i8, ptr %call9.i, i32 180
  %30 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %node_type, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %12)
  %inum58 = getelementptr i8, ptr %call9.i, i32 184
  %32 = ptrtoint ptr %inum58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %inum58, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %old_size)
  %old_size59 = getelementptr i8, ptr %call9.i, i32 200
  %34 = ptrtoint ptr %old_size59 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %old_size59, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %new_size)
  %new_size60 = getelementptr i8, ptr %call9.i, i32 208
  %36 = ptrtoint ptr %new_size60 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %new_size60, align 16
  %padding.i = getelementptr i8, ptr %call9.i, i32 188
  %37 = call ptr @memset(ptr %padding.i, i32 0, i32 12)
  %38 = trunc i64 %new_size to i32
  %conv62 = and i32 %38, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv62)
  %tobool63.not = icmp eq i32 %conv62, 0
  br i1 %tobool63.not, label %if.end57.if.end116_crit_edge, label %if.then64

if.end57.if.end116_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then64:                                        ; preds = %if.end57
  %add.ptr65 = getelementptr i8, ptr %call9.i, i32 216
  %39 = lshr i64 %new_size, 12
  %conv66 = trunc i64 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %conv66)
  %tobool.not.i322 = icmp ult i32 %conv66, 536870912
  br i1 %tobool.not.i322, label %if.then64.data_key_init.exit_crit_edge, label %if.then.i323, !prof !132

if.then64.data_key_init.exit_crit_edge:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_key_init.exit

if.then.i323:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.48, i32 noundef 270) #8
  br label %data_key_init.exit

data_key_init.exit:                               ; preds = %if.then.i323, %if.then64.data_key_init.exit_crit_edge
  %40 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %12, ptr %key, align 8
  %or.i = or i32 %conv66, 536870912
  %arrayidx5.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i, ptr %arrayidx5.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #8
  %42 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_jnl_truncate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_jnl_truncate, %if.then80)) #8
          to label %do.end87 [label %if.then80], !srcloc !134

if.then80:                                        ; preds = %data_key_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %43 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i324 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i324 to ptr
  %task82 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task82, align 8
  %pid83 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid83, align 8
  %call84 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_jnl_truncate.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.27, i32 noundef %48, ptr noundef %call84) #8
  br label %do.end87

do.end87:                                         ; preds = %if.then80, %data_key_init.exit
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #8
  %call.i = call i32 @ubifs_tnc_locate(ptr noundef %c, ptr noundef nonnull %key, ptr noundef %add.ptr65, ptr noundef null, ptr noundef null) #8
  %49 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call.i, label %do.end87.cleanup193.sink.split_crit_edge [
    i32 -2, label %do.end87.if.end116_crit_edge
    i32 0, label %if.else96
  ]

do.end87.if.end116_crit_edge:                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

do.end87.cleanup193.sink.split_crit_edge:         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193.sink.split

if.else96:                                        ; preds = %do.end87
  %size = getelementptr i8, ptr %call9.i, i32 256
  %50 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size, align 128
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %53 = add i32 %52, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %53)
  %54 = icmp ult i32 %53, -4096
  br i1 %54, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.28, i32 noundef %conv66, i32 noundef %56) #8
  %sub103 = add i32 %retval.0.i321, 8288
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %add.ptr65, i32 noundef %sub103) #8
  br label %cleanup193.sink.split

if.end104:                                        ; preds = %if.else96
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv62)
  %cmp105.not = icmp ugt i32 %52, %conv62
  br i1 %cmp105.not, label %if.else108, label %if.end104.if.end116_crit_edge

if.end104.if.end116_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.else108:                                       ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compr_type.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_dlen.i) #8
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size, align 128
  %59 = call i32 @llvm.bswap.i32(i32 %58) #8
  %60 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %out_len.i, align 4
  %61 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 2) #8
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %if.else108.truncate_data_node.exit.thread_crit_edge, label %if.end7.i.i, !prof !135

if.else108.truncate_data_node.exit.thread_crit_edge: ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_data_node.exit.thread

if.end7.i.i:                                      ; preds = %if.else108
  %63 = extractvalue { i32, i1 } %61, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %63, i32 noundef 3136) #11
  %tobool.not.i326 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i326, label %if.end7.i.i.truncate_data_node.exit.thread_crit_edge, label %if.end.i328

if.end7.i.i.truncate_data_node.exit.thread_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_data_node.exit.thread

if.end.i328:                                      ; preds = %if.end7.i.i
  %len.i = getelementptr i8, ptr %call9.i, i32 232
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i, align 8
  %66 = call i32 @llvm.bswap.i32(i32 %65) #8
  %sub.i = add i32 %66, -48
  %67 = ptrtoint ptr %old_dlen.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub.i, ptr %old_dlen.i, align 4
  %68 = ptrtoint ptr %dlen.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub.i, ptr %dlen.i, align 4
  %compr_type1.i = getelementptr i8, ptr %call9.i, i32 260
  %69 = ptrtoint ptr %compr_type1.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %compr_type1.i, align 4
  %71 = call i16 @llvm.bswap.i16(i16 %70) #8
  %conv.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %compr_type.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i, ptr %compr_type.i, align 4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %73 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_flags.i, align 4
  %and.i327 = and i32 %74, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i327)
  %tobool2.not.i = icmp eq i32 %and.i327, 0
  br i1 %tobool2.not.i, label %if.end.i328.if.end8.i330_crit_edge, label %if.then3.i

if.end.i328.if.end8.i330_crit_edge:               ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i330

if.then3.i:                                       ; preds = %if.end.i328
  %call4.i = call i32 @ubifs_decrypt(ptr noundef %inode, ptr noundef %add.ptr65, ptr noundef nonnull %dlen.i, i32 noundef %conv66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end8thread-pre-split.i, label %if.then3.i.truncate_data_node.exit.thread394_crit_edge

if.then3.i.truncate_data_node.exit.thread394_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_data_node.exit.thread394

if.end8thread-pre-split.i:                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %compr_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr.i = load i32, ptr %compr_type.i, align 4
  br label %if.end8.i330

if.end8.i330:                                     ; preds = %if.end8thread-pre-split.i, %if.end.i328.if.end8.i330_crit_edge
  %76 = phi i32 [ %.pr.i, %if.end8thread-pre-split.i ], [ %conv.i, %if.end.i328.if.end8.i330_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i329 = icmp eq i32 %76, 0
  br i1 %cmp.i329, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end8.i330
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv62, ptr %out_len.i, align 4
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end8.i330
  %data.i = getelementptr i8, ptr %call9.i, i32 264
  %78 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dlen.i, align 4
  %call11.i = call i32 @ubifs_decompress(ptr noundef %c, ptr noundef %data.i, i32 noundef %79, ptr noundef nonnull %call8.i.i, ptr noundef nonnull %out_len.i, i32 noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.else.i.truncate_data_node.exit.thread394_crit_edge

if.else.i.truncate_data_node.exit.thread394_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_data_node.exit.thread394

if.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_compress(ptr noundef %c, ptr noundef nonnull %call8.i.i, i32 noundef %conv62, ptr noundef %data.i, ptr noundef nonnull %out_len.i, ptr noundef nonnull %compr_type.i) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end14.i, %if.then10.i
  %80 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_flags.i, align 4
  %and18.i = and i32 %81, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else25.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end16.i
  %82 = ptrtoint ptr %out_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %out_len.i, align 4
  %call21.i = call i32 @ubifs_encrypt(ptr noundef %inode, ptr noundef %add.ptr65, i32 noundef %83, ptr noundef nonnull %old_dlen.i, i32 noundef %conv66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.then20.i.truncate_data_node.exit.thread394_crit_edge

if.then20.i.truncate_data_node.exit.thread394_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_data_node.exit.thread394

if.end24.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %old_dlen.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %old_dlen.i, align 4
  %86 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %out_len.i, align 4
  br label %do.body.i

if.else25.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %compr_size.i = getelementptr i8, ptr %call9.i, i32 262
  %87 = ptrtoint ptr %compr_size.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %compr_size.i, align 2
  %88 = ptrtoint ptr %out_len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr74.i = load i32, ptr %out_len.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else25.i, %if.end24.i
  %89 = phi i32 [ %85, %if.end24.i ], [ %.pr74.i, %if.else25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %89)
  %cmp27.i = icmp sgt i32 %89, 4096
  br i1 %cmp27.i, label %if.then32.i, label %do.body.i.truncate_data_node.exit_crit_edge, !prof !135

do.body.i.truncate_data_node.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_data_node.exit

if.then32.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 1484) #8
  br label %truncate_data_node.exit

truncate_data_node.exit.thread:                   ; preds = %if.end7.i.i.truncate_data_node.exit.thread_crit_edge, %if.else108.truncate_data_node.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_dlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compr_type.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #8
  br label %cleanup193.sink.split

truncate_data_node.exit.thread394:                ; preds = %if.then20.i.truncate_data_node.exit.thread394_crit_edge, %if.else.i.truncate_data_node.exit.thread394_crit_edge, %if.then3.i.truncate_data_node.exit.thread394_crit_edge
  %err.0.i.ph = phi i32 [ %call11.i, %if.else.i.truncate_data_node.exit.thread394_crit_edge ], [ %call21.i, %if.then20.i.truncate_data_node.exit.thread394_crit_edge ], [ %call4.i, %if.then3.i.truncate_data_node.exit.thread394_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_dlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compr_type.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #8
  br label %cleanup193.sink.split

truncate_data_node.exit:                          ; preds = %if.then32.i, %do.body.i.truncate_data_node.exit_crit_edge
  %90 = ptrtoint ptr %compr_type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %compr_type.i, align 4
  %conv34.i = trunc i32 %91 to i16
  %92 = call i16 @llvm.bswap.i16(i16 %conv34.i) #8
  %93 = ptrtoint ptr %compr_type1.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %compr_type1.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %conv62) #8
  %95 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %size, align 128
  %96 = ptrtoint ptr %out_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %out_len.i, align 4
  %add.i331 = add i32 %97, 48
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_dlen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compr_type.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #8
  br label %if.end116

if.end116:                                        ; preds = %truncate_data_node.exit, %if.end104.if.end116_crit_edge, %do.end87.if.end116_crit_edge, %if.end57.if.end116_crit_edge
  %dlen.4 = phi i32 [ 0, %if.end57.if.end116_crit_edge ], [ 0, %do.end87.if.end116_crit_edge ], [ %add.i331, %truncate_data_node.exit ], [ 0, %if.end104.if.end116_crit_edge ]
  %dn.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end57.if.end116_crit_edge ], [ %add.ptr65, %do.end87.if.end116_crit_edge ], [ %add.ptr65, %truncate_data_node.exit ], [ %add.ptr65, %if.end104.if.end116_crit_edge ]
  %98 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i = load i16, ptr %authenticated.i.i, align 8
  %99 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool118.not = icmp eq i16 %99, 0
  br i1 %tobool118.not, label %if.end116.if.end127_crit_edge, label %ubifs_auth_node_sz.exit340

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

ubifs_auth_node_sz.exit340:                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %add120 = add i32 %dlen.4, 7
  %and121 = and i32 %add120, -8
  %hmac_desc_len.i336 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %100 = ptrtoint ptr %hmac_desc_len.i336 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %hmac_desc_len.i336, align 8
  %add.i337 = add i32 %101, 24
  %add123 = add i32 %add.i337, %and121
  br label %if.end127

if.end127:                                        ; preds = %ubifs_auth_node_sz.exit340, %if.end116.if.end127_crit_edge
  %len.0.in = phi i32 [ %add123, %ubifs_auth_node_sz.exit340 ], [ %dlen.4, %if.end116.if.end127_crit_edge ]
  %len.0 = add i32 %len.0.in, 216
  %call128 = call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 1, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.cleanup193.sink.split_crit_edge

if.end127.cleanup193.sink.split_crit_edge:        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193.sink.split

if.end131:                                        ; preds = %if.end127
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef %inode, i32 noundef 0)
  %102 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i.i342 = load i16, ptr %authenticated.i.i, align 8
  %103 = and i16 %bf.load.i.i342, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool.not.i343 = icmp eq i16 %103, 0
  br i1 %tobool.not.i343, label %if.end131.if.end136_crit_edge, label %ubifs_node_calc_hash.exit

if.end131.if.end136_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

ubifs_node_calc_hash.exit:                        ; preds = %if.end131
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef nonnull %call9.i, ptr noundef nonnull %hash_ino) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool134.not = icmp eq i32 %call1.i, 0
  br i1 %tobool134.not, label %ubifs_node_calc_hash.exit.if.end136_crit_edge, label %ubifs_node_calc_hash.exit.out_release_crit_edge

ubifs_node_calc_hash.exit.out_release_crit_edge:  ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit.if.end136_crit_edge:    ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end136:                                        ; preds = %ubifs_node_calc_hash.exit.if.end136_crit_edge, %if.end131.if.end136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen.4)
  %tobool137.not = icmp eq i32 %dlen.4, 0
  %cond = zext i1 %tobool137.not to i32
  call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef %add.ptr, i32 noundef 56, i32 noundef %cond) #8
  br i1 %tobool137.not, label %if.end136.if.end145_crit_edge, label %if.then139

if.end136.if.end145_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then139:                                       ; preds = %if.end136
  call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef %dn.0, i32 noundef %dlen.4, i32 noundef 1) #8
  %104 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i.i347 = load i16, ptr %authenticated.i.i, align 8
  %105 = and i16 %bf.load.i.i347, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.not.i348 = icmp eq i16 %105, 0
  br i1 %tobool.not.i348, label %if.then139.if.end145_crit_edge, label %ubifs_node_calc_hash.exit352

if.then139.if.end145_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

ubifs_node_calc_hash.exit352:                     ; preds = %if.then139
  %call1.i349 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %dn.0, ptr noundef nonnull %hash_dn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i349)
  %tobool142.not = icmp eq i32 %call1.i349, 0
  br i1 %tobool142.not, label %ubifs_node_calc_hash.exit352.if.end145_crit_edge, label %ubifs_node_calc_hash.exit352.out_release_crit_edge

ubifs_node_calc_hash.exit352.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit352
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit352.if.end145_crit_edge: ; preds = %ubifs_node_calc_hash.exit352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.end145:                                        ; preds = %ubifs_node_calc_hash.exit352.if.end145_crit_edge, %if.then139.if.end145_crit_edge, %if.end136.if.end145_crit_edge
  %call146 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %call9.i, i32 noundef %len.0, ptr noundef nonnull %lnum, ptr noundef nonnull %offs, i32 noundef %lor.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end145.out_release_crit_edge

if.end145.out_release_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.end149:                                        ; preds = %if.end145
  br i1 %10, label %if.end149.if.end152_crit_edge, label %if.then151

if.end149.if.end152_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then151:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %106 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %107, i32 1
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx, i32 noundef %12) #8
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end149.if.end152_crit_edge
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %108 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %jheads.i, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %109, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  %110 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lnum, align 4
  call fastcc void @ubifs_add_auth_dirt(ptr noundef %c, i32 noundef %111)
  br i1 %tobool137.not, label %if.end152.if.end162_crit_edge, label %if.then154

if.end152.if.end162_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then154:                                       ; preds = %if.end152
  %112 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offs, align 4
  %add156 = add i32 %113, 216
  %call158 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %111, i32 noundef %add156, i32 noundef %dlen.4, ptr noundef nonnull %hash_dn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then154.if.end162_crit_edge, label %if.then154.out_ro_crit_edge

if.then154.out_ro_crit_edge:                      ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.then154.if.end162_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.end162:                                        ; preds = %if.then154.if.end162_crit_edge, %if.end152.if.end162_crit_edge
  %114 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %12, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %115 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %arrayidx1.i, align 4
  %116 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offs, align 4
  %call164 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %111, i32 noundef %117, i32 noundef 160, ptr noundef nonnull %hash_ino) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end162.out_ro_crit_edge

if.end162.out_ro_crit_edge:                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end167:                                        ; preds = %if.end162
  %call.i353 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %111, i32 noundef -2147483647, i32 noundef 56, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %tobool169.not = icmp eq i32 %call.i353, 0
  br i1 %tobool169.not, label %if.end171, label %if.end167.out_ro_crit_edge

if.end167.out_ro_crit_edge:                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end171:                                        ; preds = %if.end167
  %118 = lshr i64 %new_size, 12
  %not.tobool63.not = xor i1 %tobool63.not, true
  %119 = zext i1 %not.tobool63.not to i64
  %add178 = add nuw nsw i64 %118, %119
  %conv179 = trunc i64 %add178 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %conv179)
  %tobool.not.i354 = icmp ult i32 %conv179, 536870912
  br i1 %tobool.not.i354, label %if.end171.data_key_init.exit359_crit_edge, label %if.then.i355, !prof !132

if.end171.data_key_init.exit359_crit_edge:        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_key_init.exit359

if.then.i355:                                     ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.48, i32 noundef 270) #8
  br label %data_key_init.exit359

data_key_init.exit359:                            ; preds = %if.then.i355, %if.end171.data_key_init.exit359_crit_edge
  %120 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %12, ptr %key, align 8
  %or.i356 = or i32 %conv179, 536870912
  %121 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or.i356, ptr %arrayidx1.i, align 4
  %122 = lshr i64 %old_size, 12
  %conv181316 = and i64 %old_size, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv181316)
  %tobool183.not = icmp eq i64 %conv181316, 0
  %.neg = sext i1 %tobool183.not to i64
  %sub186 = add nsw i64 %122, %.neg
  %conv187 = trunc i64 %sub186 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %conv187)
  %tobool.not.i360 = icmp ult i32 %conv187, 536870912
  br i1 %tobool.not.i360, label %data_key_init.exit359.data_key_init.exit365_crit_edge, label %if.then.i361, !prof !132

data_key_init.exit359.data_key_init.exit365_crit_edge: ; preds = %data_key_init.exit359
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_key_init.exit365

if.then.i361:                                     ; preds = %data_key_init.exit359
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.48, i32 noundef 270) #8
  br label %data_key_init.exit365

data_key_init.exit365:                            ; preds = %if.then.i361, %data_key_init.exit359.data_key_init.exit365_crit_edge
  %123 = ptrtoint ptr %to_key to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %12, ptr %to_key, align 8
  %or.i362 = or i32 %conv187, 536870912
  %arrayidx5.i363 = getelementptr inbounds [2 x i32], ptr %to_key, i32 0, i32 1
  %124 = ptrtoint ptr %arrayidx5.i363 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or.i362, ptr %arrayidx5.i363, align 4
  %call188 = call i32 @ubifs_tnc_remove_range(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %to_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %data_key_init.exit365.out_ro_crit_edge

data_key_init.exit365.out_ro_crit_edge:           ; preds = %data_key_init.exit365
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end191:                                        ; preds = %data_key_init.exit365
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ui_lock) #8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %125 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 10
  %127 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %synced_i_size, align 8
  call void @_raw_spin_unlock(ptr noundef %ui_lock) #8
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %128 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i366 = load i8, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i366)
  %tobool.not.i367 = icmp sgt i8 %bf.load.i366, -1
  br i1 %tobool.not.i367, label %if.end191.mark_inode_clean.exit_crit_edge, label %if.then.i368

if.end191.mark_inode_clean.exit_crit_edge:        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit

if.then.i368:                                     ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %inode) #8
  br label %mark_inode_clean.exit

mark_inode_clean.exit:                            ; preds = %if.then.i368, %if.end191.mark_inode_clean.exit_crit_edge
  %129 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load2.i = load i8, ptr %dirty.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %dirty.i, align 4
  br label %cleanup193.sink.split

out_release:                                      ; preds = %if.end145.out_release_crit_edge, %ubifs_node_calc_hash.exit352.out_release_crit_edge, %ubifs_node_calc_hash.exit.out_release_crit_edge
  %err.2 = phi i32 [ %call1.i, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ %call1.i349, %ubifs_node_calc_hash.exit352.out_release_crit_edge ], [ %call146, %if.end145.out_release_crit_edge ]
  %jheads.i370 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %130 = ptrtoint ptr %jheads.i370 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %jheads.i370, align 8
  %io_mutex.i371 = getelementptr %struct.ubifs_jhead, ptr %131, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i371) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %data_key_init.exit365.out_ro_crit_edge, %if.end167.out_ro_crit_edge, %if.end162.out_ro_crit_edge, %if.then154.out_ro_crit_edge
  %err.3 = phi i32 [ %err.2, %out_release ], [ %call158, %if.then154.out_ro_crit_edge ], [ %call164, %if.end162.out_ro_crit_edge ], [ %call.i353, %if.end167.out_ro_crit_edge ], [ %call188, %data_key_init.exit365.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.3) #8
  %commit_sem.i372 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i372) #8
  br label %cleanup193.sink.split

cleanup193.sink.split:                            ; preds = %out_ro, %mark_inode_clean.exit, %if.end127.cleanup193.sink.split_crit_edge, %truncate_data_node.exit.thread394, %truncate_data_node.exit.thread, %if.then101, %do.end87.cleanup193.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %mark_inode_clean.exit ], [ %call128, %if.end127.cleanup193.sink.split_crit_edge ], [ %err.3, %out_ro ], [ %call.i, %do.end87.cleanup193.sink.split_crit_edge ], [ 0, %if.then101 ], [ -12, %truncate_data_node.exit.thread ], [ %err.0.i.ph, %truncate_data_node.exit.thread394 ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup193

cleanup193:                                       ; preds = %cleanup193.sink.split, %if.end8.i.cleanup193_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.cleanup193_crit_edge ], [ %retval.0.ph, %cleanup193.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_dn) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_ino) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_delete_xattr(ptr noundef %c, ptr noundef %host, ptr noundef %inode, ptr noundef %nm) local_unnamed_addr #0 align 64 {
entry:
  %lnum = alloca i32, align 4
  %xent_offs = alloca i32, align 4
  %xent_key = alloca %union.ubifs_key, align 8
  %key1 = alloca %union.ubifs_key, align 8
  %key2 = alloca %union.ubifs_key, align 8
  %hash = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xent_offs) #8
  %1 = ptrtoint ptr %xent_offs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %xent_offs, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xent_key) #8
  %2 = ptrtoint ptr %xent_key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %xent_key, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key1) #8
  %3 = ptrtoint ptr %key1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %key1, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key2) #8
  %4 = ptrtoint ptr %key2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %key2, align 8, !annotation !131
  %i_sb = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_flags, align 4
  %and = and i32 %8, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags, align 4
  %and1 = and i32 %10, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %11 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #8
  %12 = call ptr @memset(ptr %hash, i32 255, i32 64)
  %13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %lor.end.do.body6_crit_edge, label %if.then, !prof !132

lor.end.do.body6_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1683) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %lor.end.do.body6_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 7
  %call7 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #8
  br i1 %call7, label %do.body6.do.end19_crit_edge, label %if.then16, !prof !132

do.body6.do.end19_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1684) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body6.do.end19_crit_edge
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len20 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len20, align 4
  %add21 = add i32 %17, 57
  %add22 = add i32 %17, 64
  %and23 = and i32 %add22, -8
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 15
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len, align 4
  %add24 = add i32 %19, 160
  %add25 = add i32 %and23, 160
  %add26 = add i32 %19, 167
  %and27 = and i32 %add26, -8
  %add28 = add i32 %add25, %and27
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %20 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %21 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %do.end19.ubifs_auth_node_sz.exit_crit_edge, label %if.then.i

do.end19.ubifs_auth_node_sz.exit_crit_edge:       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_auth_node_sz.exit

if.then.i:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %22 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %23, 24
  br label %ubifs_auth_node_sz.exit

ubifs_auth_node_sz.exit:                          ; preds = %if.then.i, %do.end19.ubifs_auth_node_sz.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %do.end19.ubifs_auth_node_sz.exit_crit_edge ]
  %add30 = add i32 %retval.0.i, %add28
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add30, i32 noundef 3392) #11
  %tobool32.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool32.not, label %ubifs_auth_node_sz.exit.cleanup_crit_edge, label %if.end34

ubifs_auth_node_sz.exit.cleanup_crit_edge:        ; preds = %ubifs_auth_node_sz.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %ubifs_auth_node_sz.exit
  %call35 = tail call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 1, i32 noundef %add30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %node_type, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  %key_hash.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 66
  %27 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %key_hash.i, align 4
  %29 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disk_name, align 4
  %31 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len20, align 4
  %call.i = tail call i32 %28(ptr noundef %30, i32 noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call.i)
  %tobool.not.i194 = icmp ult i32 %call.i, 536870912
  br i1 %tobool.not.i194, label %if.end38.xent_key_init.exit_crit_edge, label %if.then.i195, !prof !132

if.end38.xent_key_init.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %xent_key_init.exit

if.then.i195:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 221) #8
  br label %xent_key_init.exit

xent_key_init.exit:                               ; preds = %if.then.i195, %if.end38.xent_key_init.exit_crit_edge
  %33 = ptrtoint ptr %xent_key to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %xent_key, align 8
  %or.i = or i32 %call.i, 1610612736
  %arrayidx6.i = getelementptr inbounds [2 x i32], ptr %xent_key, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %arrayidx6.i, align 4
  %key = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %36 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %key, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %arrayidx3.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx3.i, align 4
  %add.ptr.i = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 1, i32 8
  %39 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 16)
  %40 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %inode, align 8
  %42 = and i16 %41, -4096
  %and.i = zext i16 %42 to i32
  %43 = add nsw i32 %and.i, -4096
  %44 = lshr exact i32 %43, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %43)
  %45 = icmp ult i32 %43, 49152
  br i1 %45, label %switch.hole_check, label %xent_key_init.exit.do.body.i_crit_edge

xent_key_init.exit.do.body.i_crit_edge:           ; preds = %xent_key_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %switch.hole_check.do.body.i_crit_edge, %xent_key_init.exit.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

switch.hole_check:                                ; preds = %xent_key_init.exit
  %switch.maskindex = trunc i32 %44 to i16
  %switch.shifted = lshr i16 2731, %switch.maskindex
  %46 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %switch.lobit.not = icmp eq i16 %46, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body.i_crit_edge, label %switch.lookup

switch.hole_check.do.body.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ubifs_jnl_delete_xattr, i32 0, i32 %44
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %47)
  %switch.load = load i8, ptr %switch.gep, align 1
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %switch.load, ptr %type, align 1
  %49 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len20, align 4
  %conv43 = trunc i32 %50 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv43)
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %nlen to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %nlen, align 2
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7
  %53 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %disk_name, align 4
  %55 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len20, align 4
  %57 = call ptr @memcpy(ptr %name, ptr %54, i32 %56)
  %arrayidx = getelementptr %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 7, i32 %56
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx, align 1
  %padding1.i = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %padding1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %padding1.i, align 16
  tail call void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef %add21, i32 noundef 0) #8
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %and23
  tail call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr, ptr noundef %inode, i32 noundef 0)
  %add.ptr52 = getelementptr i8, ptr %add.ptr, i32 160
  tail call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr52, ptr noundef %host, i32 noundef 1)
  %60 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load.i.i198 = load i16, ptr %authenticated.i.i, align 8
  %61 = and i16 %bf.load.i.i198, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i199 = icmp eq i16 %61, 0
  br i1 %tobool.not.i199, label %switch.lookup.if.end57_crit_edge, label %ubifs_node_calc_hash.exit

switch.lookup.if.end57_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

ubifs_node_calc_hash.exit:                        ; preds = %switch.lookup
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr52, ptr noundef nonnull %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool55.not = icmp eq i32 %call1.i, 0
  br i1 %tobool55.not, label %ubifs_node_calc_hash.exit.if.end57_crit_edge, label %out_release

ubifs_node_calc_hash.exit.if.end57_crit_edge:     ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end57:                                         ; preds = %ubifs_node_calc_hash.exit.if.end57_crit_edge, %switch.lookup.if.end57_crit_edge
  %call58 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %add30, ptr noundef nonnull %lnum, ptr noundef nonnull %xent_offs, i32 noundef %lor.ext)
  %.not = xor i1 %11, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool60.not = icmp eq i32 %call58, 0
  %or.cond = select i1 %.not, i1 %tobool60.not, i1 false
  br i1 %or.cond, label %if.then61, label %if.end57.if.end64_crit_edge

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %62 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %jheads, align 8
  %arrayidx62 = getelementptr %struct.ubifs_jhead, ptr %63, i32 1
  %64 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_ino, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx62, i32 noundef %65) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end57.if.end64_crit_edge
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %66 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %jheads.i, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %67, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  %68 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lnum, align 4
  %70 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i.i203 = load i16, ptr %authenticated.i.i, align 8
  %71 = and i16 %bf.load.i.i203, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.not.i204 = icmp eq i16 %71, 0
  br i1 %tobool.not.i204, label %if.end64.ubifs_add_auth_dirt.exit_crit_edge, label %ubifs_auth_node_sz.exit.i

if.end64.ubifs_add_auth_dirt.exit_crit_edge:      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_add_auth_dirt.exit

ubifs_auth_node_sz.exit.i:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %72 = ptrtoint ptr %hmac_desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hmac_desc_len.i.i, align 8
  %add.i.i = add i32 %73, 24
  %call.i.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %69, i32 noundef -2147483647, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 0) #8
  br label %ubifs_add_auth_dirt.exit

ubifs_add_auth_dirt.exit:                         ; preds = %ubifs_auth_node_sz.exit.i, %if.end64.ubifs_add_auth_dirt.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br i1 %tobool60.not, label %if.end67, label %ubifs_add_auth_dirt.exit.out_ro_crit_edge

ubifs_add_auth_dirt.exit.out_ro_crit_edge:        ; preds = %ubifs_add_auth_dirt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end67:                                         ; preds = %ubifs_add_auth_dirt.exit
  %call68 = call i32 @ubifs_tnc_remove_nm(ptr noundef %c, ptr noundef nonnull %xent_key, ptr noundef %nm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.out_ro_crit_edge

if.end67.out_ro_crit_edge:                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end71:                                         ; preds = %if.end67
  %call.i205 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %69, i32 noundef -2147483647, i32 noundef %add21, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool73.not = icmp eq i32 %call.i205, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.out_ro_crit_edge

if.end71.out_ro_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end75:                                         ; preds = %if.end71
  %i_ino76 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %74 = ptrtoint ptr %i_ino76 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_ino76, align 8
  %76 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %key1, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key1, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx1.i, align 4
  %78 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %key2, align 8
  %arrayidx1.i206 = getelementptr inbounds [2 x i32], ptr %key2, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx1.i206 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %arrayidx1.i206, align 4
  %call78 = call i32 @ubifs_tnc_remove_range(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %key2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.out_ro_crit_edge

if.end75.out_ro_crit_edge:                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end81:                                         ; preds = %if.end75
  %call.i207 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %69, i32 noundef -2147483647, i32 noundef 160, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool83.not = icmp eq i32 %call.i207, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.out_ro_crit_edge

if.end81.out_ro_crit_edge:                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end85:                                         ; preds = %if.end81
  %80 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_ino, align 8
  %82 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %key1, align 8
  %83 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx1.i, align 4
  %84 = ptrtoint ptr %xent_offs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xent_offs, align 4
  %add24.neg = sub i32 -160, %19
  %add87 = add i32 %add28, %add24.neg
  %sub = add i32 %add87, %85
  %call89 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key1, i32 noundef %69, i32 noundef %sub, i32 noundef %add24, ptr noundef nonnull %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end85.out_ro_crit_edge

if.end85.out_ro_crit_edge:                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end92:                                         ; preds = %if.end85
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ui_lock) #8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 11
  %86 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 10
  %88 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %synced_i_size, align 8
  call void @_raw_spin_unlock(ptr noundef %ui_lock) #8
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 6
  %89 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i = load i8, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i209 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i209, label %if.end92.mark_inode_clean.exit_crit_edge, label %if.then.i210

if.end92.mark_inode_clean.exit_crit_edge:         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit

if.then.i210:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %host) #8
  br label %mark_inode_clean.exit

mark_inode_clean.exit:                            ; preds = %if.then.i210, %if.end92.mark_inode_clean.exit_crit_edge
  %90 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load2.i = load i8, ptr %dirty.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %dirty.i, align 4
  br label %cleanup

out_release:                                      ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  %jheads.i211 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %91 = ptrtoint ptr %jheads.i211 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %jheads.i211, align 8
  %io_mutex.i212 = getelementptr %struct.ubifs_jhead, ptr %92, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i212) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %if.end85.out_ro_crit_edge, %if.end81.out_ro_crit_edge, %if.end75.out_ro_crit_edge, %if.end71.out_ro_crit_edge, %if.end67.out_ro_crit_edge, %ubifs_add_auth_dirt.exit.out_ro_crit_edge
  %err.0 = phi i32 [ %call1.i, %out_release ], [ %call58, %ubifs_add_auth_dirt.exit.out_ro_crit_edge ], [ %call68, %if.end67.out_ro_crit_edge ], [ %call.i205, %if.end71.out_ro_crit_edge ], [ %call78, %if.end75.out_ro_crit_edge ], [ %call.i207, %if.end81.out_ro_crit_edge ], [ %call89, %if.end85.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.0) #8
  %commit_sem.i213 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i213) #8
  br label %cleanup

cleanup:                                          ; preds = %out_ro, %mark_inode_clean.exit, %if.then37, %ubifs_auth_node_sz.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.then37 ], [ %err.0, %out_ro ], [ 0, %mark_inode_clean.exit ], [ -12, %ubifs_auth_node_sz.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xent_key) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xent_offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_jnl_change_xattr(ptr noundef %c, ptr noundef %inode, ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %lnum = alloca i32, align 4
  %offs = alloca i32, align 4
  %key = alloca %union.ubifs_key, align 8
  %hash_host = alloca [64 x i8], align 1
  %hash = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lnum, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %1 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offs, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %key, align 8, !annotation !131
  %i_sb = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  %and = and i32 %6, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags, align 4
  %and1 = and i32 %8, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp eq i32 %and1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %9 = phi i1 [ false, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_host) #8
  %10 = call ptr @memset(ptr %hash_host, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #8
  %11 = call ptr @memset(ptr %hash, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_jnl_change_xattr.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_jnl_change_xattr, %if.then)) #8
          to label %do.body9 [label %if.then], !srcloc !134

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %i_ino8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino8, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_jnl_change_xattr.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.30, i32 noundef %17, i32 noundef %19, i32 noundef %21) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then, %lor.end
  %22 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.then18, label %do.body9.do.body22_crit_edge, !prof !135

do.body9.do.body22_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1805) #8
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %do.body9.do.body22_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 7
  %call23 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #8
  br i1 %call23, label %do.body22.do.end35_crit_edge, label %if.then32, !prof !132

do.body22.do.end35_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.then32:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1806) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body22.do.end35_crit_edge
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 15
  %25 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len, align 4
  %add = add i32 %26, 160
  %data_len37 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %27 = ptrtoint ptr %data_len37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len37, align 4
  %add38 = add i32 %28, 160
  %add39 = add i32 %26, 167
  %and40 = and i32 %add39, -8
  %add41 = add i32 %28, 167
  %and42 = and i32 %add41, -8
  %add43 = add i32 %and42, %and40
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %29 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %30 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i, label %do.end35.ubifs_auth_node_sz.exit_crit_edge, label %if.then.i

do.end35.ubifs_auth_node_sz.exit_crit_edge:       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_auth_node_sz.exit

if.then.i:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  %hmac_desc_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 181
  %31 = ptrtoint ptr %hmac_desc_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hmac_desc_len.i, align 8
  %add.i = add i32 %32, 24
  br label %ubifs_auth_node_sz.exit

ubifs_auth_node_sz.exit:                          ; preds = %if.then.i, %do.end35.ubifs_auth_node_sz.exit_crit_edge
  %retval.0.i162 = phi i32 [ %add.i, %if.then.i ], [ 0, %do.end35.ubifs_auth_node_sz.exit_crit_edge ]
  %add45 = add i32 %add43, %retval.0.i162
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add45, i32 noundef 3392) #11
  %tobool47.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool47.not, label %ubifs_auth_node_sz.exit.cleanup_crit_edge, label %if.end49

ubifs_auth_node_sz.exit.cleanup_crit_edge:        ; preds = %ubifs_auth_node_sz.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %ubifs_auth_node_sz.exit
  %call50 = tail call fastcc i32 @make_reservation(ptr noundef %c, i32 noundef 1, i32 noundef %add45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup.sink.split_crit_edge

if.end49.cleanup.sink.split_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end53:                                         ; preds = %if.end49
  tail call fastcc void @pack_inode(ptr noundef %c, ptr noundef nonnull %call9.i.i, ptr noundef %host, i32 noundef 0)
  %33 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i164 = load i16, ptr %authenticated.i.i, align 8
  %34 = and i16 %bf.load.i.i164, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i165 = icmp eq i16 %34, 0
  br i1 %tobool.not.i165, label %if.end53.if.end57_crit_edge, label %ubifs_node_calc_hash.exit

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

ubifs_node_calc_hash.exit:                        ; preds = %if.end53
  %call1.i = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %hash_host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool55.not = icmp eq i32 %call1.i, 0
  br i1 %tobool55.not, label %ubifs_node_calc_hash.exit.if.end57_crit_edge, label %ubifs_node_calc_hash.exit.out_release_crit_edge

ubifs_node_calc_hash.exit.out_release_crit_edge:  ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit.if.end57_crit_edge:     ; preds = %ubifs_node_calc_hash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end57:                                         ; preds = %ubifs_node_calc_hash.exit.if.end57_crit_edge, %if.end53.if.end57_crit_edge
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %and40
  call fastcc void @pack_inode(ptr noundef %c, ptr noundef %add.ptr, ptr noundef %inode, i32 noundef 1)
  %35 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i.i169 = load i16, ptr %authenticated.i.i, align 8
  %36 = and i16 %bf.load.i.i169, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i170 = icmp eq i16 %36, 0
  br i1 %tobool.not.i170, label %if.end57.if.end63_crit_edge, label %ubifs_node_calc_hash.exit174

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

ubifs_node_calc_hash.exit174:                     ; preds = %if.end57
  %call1.i171 = call i32 @__ubifs_node_calc_hash(ptr noundef %c, ptr noundef %add.ptr, ptr noundef nonnull %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i171)
  %tobool61.not = icmp eq i32 %call1.i171, 0
  br i1 %tobool61.not, label %ubifs_node_calc_hash.exit174.if.end63_crit_edge, label %ubifs_node_calc_hash.exit174.out_release_crit_edge

ubifs_node_calc_hash.exit174.out_release_crit_edge: ; preds = %ubifs_node_calc_hash.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

ubifs_node_calc_hash.exit174.if.end63_crit_edge:  ; preds = %ubifs_node_calc_hash.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %ubifs_node_calc_hash.exit174.if.end63_crit_edge, %if.end57.if.end63_crit_edge
  %call64 = call fastcc i32 @write_head(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %add45, ptr noundef nonnull %lnum, ptr noundef nonnull %offs, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool66.not = icmp eq i32 %call64, 0
  %or.cond = select i1 %9, i1 %tobool66.not, i1 false
  br i1 %or.cond, label %if.then67, label %if.end63.if.end71_crit_edge

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %37 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %38, i32 1
  %i_ino69 = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino69, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx, i32 noundef %40) #8
  %i_ino70 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino70, align 8
  call void @ubifs_wbuf_add_ino_nolock(ptr noundef %arrayidx, i32 noundef %42) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63.if.end71_crit_edge
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %43 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %jheads.i, align 8
  %io_mutex.i = getelementptr %struct.ubifs_jhead, ptr %44, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i) #8
  br i1 %tobool66.not, label %if.end74, label %if.end71.out_ro_crit_edge

if.end71.out_ro_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end74:                                         ; preds = %if.end71
  %45 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lnum, align 4
  call fastcc void @ubifs_add_auth_dirt(ptr noundef %c, i32 noundef %46)
  %i_ino75 = getelementptr inbounds %struct.inode, ptr %host, i32 0, i32 11
  %47 = ptrtoint ptr %i_ino75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_ino75, align 8
  %49 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx1.i, align 4
  %51 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offs, align 4
  %call77 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %46, i32 noundef %52, i32 noundef %add, ptr noundef nonnull %hash_host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end74.out_ro_crit_edge

if.end74.out_ro_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end80:                                         ; preds = %if.end74
  %i_ino81 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %53 = ptrtoint ptr %i_ino81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino81, align 8
  %55 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %key, align 8
  %56 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx1.i, align 4
  %add82 = add i32 %52, %and40
  %call84 = call i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef nonnull %key, i32 noundef %46, i32 noundef %add82, i32 noundef %add38, ptr noundef nonnull %hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end80.out_ro_crit_edge

if.end80.out_ro_crit_edge:                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ro

if.end87:                                         ; preds = %if.end80
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i) #8
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ui_lock) #8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 11
  %57 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 10
  %59 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %synced_i_size, align 8
  call void @_raw_spin_unlock(ptr noundef %ui_lock) #8
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %host, i32 0, i32 6
  %60 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i = load i8, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i176 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i176, label %if.end87.mark_inode_clean.exit_crit_edge, label %if.then.i177

if.end87.mark_inode_clean.exit_crit_edge:         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_inode_clean.exit

if.then.i177:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %host) #8
  br label %mark_inode_clean.exit

mark_inode_clean.exit:                            ; preds = %if.then.i177, %if.end87.mark_inode_clean.exit_crit_edge
  %61 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load2.i = load i8, ptr %dirty.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %dirty.i, align 4
  br label %cleanup.sink.split

out_release:                                      ; preds = %ubifs_node_calc_hash.exit174.out_release_crit_edge, %ubifs_node_calc_hash.exit.out_release_crit_edge
  %err.0 = phi i32 [ %call1.i, %ubifs_node_calc_hash.exit.out_release_crit_edge ], [ %call1.i171, %ubifs_node_calc_hash.exit174.out_release_crit_edge ]
  %jheads.i178 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %62 = ptrtoint ptr %jheads.i178 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %jheads.i178, align 8
  %io_mutex.i179 = getelementptr %struct.ubifs_jhead, ptr %63, i32 1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %io_mutex.i179) #8
  br label %out_ro

out_ro:                                           ; preds = %out_release, %if.end80.out_ro_crit_edge, %if.end74.out_ro_crit_edge, %if.end71.out_ro_crit_edge
  %err.1 = phi i32 [ %err.0, %out_release ], [ %call64, %if.end71.out_ro_crit_edge ], [ %call77, %if.end74.out_ro_crit_edge ], [ %call84, %if.end80.out_ro_crit_edge ]
  call void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err.1) #8
  %commit_sem.i180 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 24
  call void @up_read(ptr noundef %commit_sem.i180) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_ro, %mark_inode_clean.exit, %if.end49.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %mark_inode_clean.exit ], [ %call50, %if.end49.cleanup.sink.split_crit_edge ], [ %err.1, %out_ro ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ubifs_auth_node_sz.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %ubifs_auth_node_sz.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_host) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reserve_space(ptr noundef %c, i32 noundef %jhead, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %offs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %0 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offs, align 4, !annotation !131
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %1 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %2, i32 %jhead
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %3 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %4 = icmp ult i8 %bf.load, 64
  br i1 %4, label %entry.do.end_crit_edge, label %if.then, !prof !132

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 108) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %jhead)
  %cmp = icmp eq i32 %jhead, 1
  %conv = zext i1 %cmp to i32
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 9
  %jhead10 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 7
  %5 = ptrtoint ptr %jhead10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jhead10, align 4
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %6) #8
  %7 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load11342 = load i8, ptr %ro_media, align 8
  %8 = and i8 %bf.load11342, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not343 = icmp eq i8 %8, 0
  br i1 %tobool15.not343, label %if.end17.lr.ph, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end17.lr.ph:                                   ; preds = %do.end
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %offs18 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 3
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 5
  %lnum20 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 2
  br label %if.end17

if.end17:                                         ; preds = %do.end100.if.end17_crit_edge, %if.end17.lr.ph
  %retries.0344 = phi i32 [ 0, %if.end17.lr.ph ], [ %inc, %do.end100.if.end17_crit_edge ]
  %9 = ptrtoint ptr %lnum20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lnum20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp21.not = icmp eq i32 %10, -1
  br i1 %cmp21.not, label %if.end17.if.end26_crit_edge, label %land.lhs.true

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end17
  %11 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %used, align 4
  %13 = ptrtoint ptr %offs18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offs18, align 4
  %15 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leb_size, align 8
  %17 = add i32 %14, %12
  %sub19 = sub i32 %16, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %len)
  %cmp23.not = icmp slt i32 %sub19, %len
  br i1 %cmp23.not, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %call = call i32 @ubifs_find_free_space(ptr noundef %c, i32 noundef %len, ptr noundef nonnull %offs, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp27 = icmp sgt i32 %call, -1
  br i1 %cmp27, label %if.end26.out_crit_edge, label %if.end30

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp31.not = icmp eq i32 %call, -28
  br i1 %cmp31.not, label %do.body35, label %if.end30.out_unlock_crit_edge

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.body35:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reserve_space.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reserve_space, %if.then44)) #8
          to label %do.end49 [label %if.then44], !srcloc !134

if.then44:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %18 = call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  %call46 = call ptr @dbg_jhead(i32 noundef %jhead) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reserve_space.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.40, i32 noundef %23, ptr noundef %call46) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body35
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  %call51 = call i32 @ubifs_garbage_collect(ptr noundef %c, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end121

if.then54:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call51)
  %cmp55.not = icmp eq i32 %call51, -28
  br i1 %cmp55.not, label %do.body59, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body59:                                        ; preds = %if.then54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reserve_space.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reserve_space, %if.then71)) #8
          to label %do.end78 [label %if.then71], !srcloc !134

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  %24 = call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i300 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i300 to ptr
  %task73 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task73, align 8
  %pid74 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid74, align 8
  %call75 = call ptr @dbg_jhead(i32 noundef %jhead) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reserve_space.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.41, i32 noundef %29, ptr noundef %call75) #8
  br label %do.end78

do.end78:                                         ; preds = %if.then71, %do.body59
  %inc = add nuw nsw i32 %retries.0344, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retries.0344)
  %exitcond.not = icmp eq i32 %retries.0344, 2
  br i1 %exitcond.not, label %do.body102, label %do.body82

do.body82:                                        ; preds = %do.end78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reserve_space.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reserve_space, %if.then94)) #8
          to label %do.end100 [label %if.then94], !srcloc !134

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %30 = call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i301 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i301 to ptr
  %task96 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task96 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task96, align 8
  %pid97 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid97 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid97, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reserve_space.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.42, i32 noundef %35, i32 noundef %inc) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then94, %do.body82
  %36 = ptrtoint ptr %jhead10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %jhead10, align 4
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %37) #8
  %38 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load11 = load i8, ptr %ro_media, align 8
  %39 = and i8 %bf.load11, 32
  %tobool15.not = icmp eq i8 %39, 0
  br i1 %tobool15.not, label %do.end100.if.end17_crit_edge, label %do.end100.out_unlock_crit_edge

do.end100.out_unlock_crit_edge:                   ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end100.if.end17_crit_edge:                     ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body102:                                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reserve_space.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reserve_space, %if.then114)) #8
          to label %cleanup [label %if.then114], !srcloc !134

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i302 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i302 to ptr
  %task116 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task116 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task116, align 8
  %pid117 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid117 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid117, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reserve_space.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.43, i32 noundef %45) #8
  br label %cleanup

if.end121:                                        ; preds = %do.end49
  %46 = ptrtoint ptr %jhead10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %jhead10, align 4
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %47) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reserve_space.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reserve_space, %if.then136)) #8
          to label %do.end143 [label %if.then136], !srcloc !134

if.then136:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %48 = call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i303 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i303 to ptr
  %task138 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task138, align 8
  %pid139 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid139 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid139, align 8
  %call140 = call ptr @dbg_jhead(i32 noundef %jhead) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reserve_space.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.44, i32 noundef %53, i32 noundef %call51, ptr noundef %call140) #8
  br label %do.end143

do.end143:                                        ; preds = %if.then136, %if.end121
  %54 = ptrtoint ptr %lnum20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lnum20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp150.not = icmp eq i32 %55, -1
  br i1 %cmp150.not, label %do.end143.if.end182_crit_edge, label %land.lhs.true152

do.end143.if.end182_crit_edge:                    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

land.lhs.true152:                                 ; preds = %do.end143
  %56 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %used, align 4
  %58 = ptrtoint ptr %offs18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offs18, align 4
  %60 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %leb_size, align 8
  %62 = add i32 %59, %57
  %sub148 = sub i32 %61, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %sub148, i32 %len)
  %cmp153.not = icmp slt i32 %sub148, %len
  br i1 %cmp153.not, label %land.lhs.true152.if.end182_crit_edge, label %do.body156

land.lhs.true152.if.end182_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

do.body156:                                       ; preds = %land.lhs.true152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reserve_space.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reserve_space, %if.then168)) #8
          to label %do.end177 [label %if.then168], !srcloc !134

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #10
  %63 = call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i304 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i304 to ptr
  %task170 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task170 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task170, align 8
  %pid171 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid171 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid171, align 8
  %69 = ptrtoint ptr %lnum20 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lnum20, align 8
  %71 = ptrtoint ptr %offs18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offs18, align 4
  %73 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %used, align 4
  %add = add i32 %74, %72
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reserve_space.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.45, i32 noundef %68, i32 noundef %call51, i32 noundef %70, i32 noundef %add) #8
  br label %do.end177

do.end177:                                        ; preds = %if.then168, %do.body156
  %call.i = call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %call51, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool179.not = icmp eq i32 %call.i, 0
  br i1 %tobool179.not, label %do.end177.cleanup_crit_edge, label %do.end177.out_unlock_crit_edge

do.end177.out_unlock_crit_edge:                   ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end177.cleanup_crit_edge:                      ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end182:                                        ; preds = %land.lhs.true152.if.end182_crit_edge, %do.end143.if.end182_crit_edge
  %75 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %offs, align 4
  br label %out

out:                                              ; preds = %if.end182, %if.end26.out_crit_edge
  %lnum.0 = phi i32 [ %call51, %if.end182 ], [ %call, %if.end26.out_crit_edge ]
  %call183 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %out.do.body196_crit_edge

out.do.body196_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body196

if.end186:                                        ; preds = %out
  %76 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offs, align 4
  %call187 = call i32 @ubifs_add_bud_to_log(ptr noundef %c, i32 noundef %jhead, i32 noundef %lnum.0, i32 noundef %77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end186.do.body196_crit_edge

if.end186.do.body196_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body196

if.end190:                                        ; preds = %if.end186
  %78 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offs, align 4
  %call191 = call i32 @ubifs_wbuf_seek_nolock(ptr noundef %arrayidx, i32 noundef %lnum.0, i32 noundef %79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end190.cleanup_crit_edge, label %if.end190.out_unlock_crit_edge

if.end190.out_unlock_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_unlock:                                       ; preds = %if.end190.out_unlock_crit_edge, %do.end177.out_unlock_crit_edge, %do.end100.out_unlock_crit_edge, %if.end30.out_unlock_crit_edge, %do.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call191, %if.end190.out_unlock_crit_edge ], [ %call.i, %do.end177.out_unlock_crit_edge ], [ -30, %do.end.out_unlock_crit_edge ], [ %call, %if.end30.out_unlock_crit_edge ], [ -30, %do.end100.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %cleanup

do.body196:                                       ; preds = %if.end186.do.body196_crit_edge, %out.do.body196_crit_edge
  %err.1 = phi i32 [ %call183, %out.do.body196_crit_edge ], [ %call187, %if.end186.do.body196_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.1)
  %cmp197 = icmp sgt i32 %err.1, -1
  br i1 %cmp197, label %if.then207, label %do.body196.do.end210_crit_edge, !prof !135

do.body196.do.end210_crit_edge:                   ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

if.then207:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 212) #8
  br label %do.end210

do.end210:                                        ; preds = %if.then207, %do.body196.do.end210_crit_edge
  %call.i305 = call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %lnum.0, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %tobool212.not = icmp ne i32 %call.i305, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1)
  %cmp214 = icmp eq i32 %err.1, -11
  %or.cond = select i1 %tobool212.not, i1 %cmp214, i1 false
  %err.2 = select i1 %or.cond, i32 %call.i305, i32 %err.1
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end210, %out_unlock, %if.end190.cleanup_crit_edge, %do.end177.cleanup_crit_edge, %if.then114, %do.body102, %if.then54.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ %err.2, %do.end210 ], [ -28, %if.then114 ], [ 0, %do.end177.cleanup_crit_edge ], [ 0, %if.end190.cleanup_crit_edge ], [ -28, %do.body102 ], [ %call51, %if.then54.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_free_space(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_jhead(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_garbage_collect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_bud_to_log(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_calc_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_write_nolock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_prepare_auth_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_dirty_inode_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !73, !74, !76, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !106, !107, !108, !110, !112, !114, !116, !117, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/journal.c", i32 554, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ubifs/journal.c", i32 734, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ubifs_jnl_write_data.__UNIQUE_ID_ddebug285, !4, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ubifs/journal.c", i32 736, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/journal.c", i32 769, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/journal.c", i32 851, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ubifs_jnl_write_inode.__UNIQUE_ID_ddebug286, !13, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/journal.c", i32 886, i32 17}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/journal.c", i32 908, i32 18}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/journal.c", i32 915, i32 4}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/journal.c", i32 1010, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ubifs/journal.c", i32 1069, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/journal.c", i32 1070, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/journal.c", i32 1071, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ubifs/journal.c", i32 1072, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/journal.c", i32 1236, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/journal.c", i32 1237, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/journal.c", i32 1238, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/journal.c", i32 1239, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/journal.c", i32 1245, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/journal.c", i32 1523, i32 2}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ubifs_jnl_truncate.__UNIQUE_ID_ddebug287, !43, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/journal.c", i32 1525, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ubifs/journal.c", i32 1526, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/journal.c", i32 1527, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/journal.c", i32 1551, i32 3}
!54 = !{ptr @ubifs_jnl_truncate.__UNIQUE_ID_ddebug288, !53, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/journal.c", i32 1561, i32 18}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ubifs/journal.c", i32 1804, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ubifs_jnl_change_xattr.__UNIQUE_ID_ddebug289, !58, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/journal.c", i32 1805, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/journal.c", i32 331, i32 4}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @make_reservation.__UNIQUE_ID_ddebug283, !64, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ubifs/journal.c", i32 355, i32 16}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/journal.c", i32 359, i32 17}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ubifs/journal.c", i32 362, i32 2}
!73 = !{ptr @make_reservation.__UNIQUE_ID_ddebug284, !72, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ubifs/journal.c", i32 372, i32 15}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/journal.c", i32 108, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ubifs/journal.c", i32 139, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @reserve_space.__UNIQUE_ID_ddebug276, !79, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/journal.c", i32 154, i32 3}
!84 = !{ptr @reserve_space.__UNIQUE_ID_ddebug277, !83, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ubifs/journal.c", i32 157, i32 4}
!87 = !{ptr @reserve_space.__UNIQUE_ID_ddebug278, !86, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ubifs/journal.c", i32 161, i32 3}
!90 = !{ptr @reserve_space.__UNIQUE_ID_ddebug279, !89, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ubifs/journal.c", i32 166, i32 2}
!93 = !{ptr @reserve_space.__UNIQUE_ID_ddebug280, !92, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ubifs/journal.c", i32 175, i32 3}
!96 = !{ptr @reserve_space.__UNIQUE_ID_ddebug281, !95, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ubifs/journal.c", i32 212, i32 2}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ubifs/key.h", i32 169, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ubifs/journal.c", i32 274, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ubifs/journal.c", i32 278, i32 2}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @write_head.__UNIQUE_ID_ddebug282, !105, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ubifs/journal.c", i32 235, i32 3}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ubifs/journal.c", i32 240, i32 3}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ubifs/journal.c", i32 241, i32 3}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ubifs/misc.h", i32 283, i32 2}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ubifs/key.h", i32 270, i32 2}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ubifs/journal.c", i32 1484, i32 2}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2155196924, i64 2155197407, i64 2155196961, i64 2155197017, i64 2155197051, i64 2155197075, i64 2155197116, i64 2155197137, i64 2155197165, i64 2155197199}
!134 = !{i64 2149111966, i64 2149111971, i64 2149111984, i64 2149112028, i64 2149112062, i64 2149112083}
!135 = !{!"branch_weights", i32 1, i32 2000}
