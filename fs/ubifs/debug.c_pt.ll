; ModuleID = '/llk/IR_all_yes/fs/ubifs/debug.c_pt.bc'
source_filename = "../fs/ubifs/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_pad_node = type <{ %struct.ubifs_ch, i32 }>
%struct.ubifs_sb_node = type { %struct.ubifs_ch, [2 x i8], i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8], i32, i32, i64, i32, [16 x i8], i32, [64 x i8], [64 x i8], i16, [64 x i8], [3774 x i8] }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ref_node = type { %struct.ubifs_ch, i32, i32, i32, [28 x i8] }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }
%struct.ubifs_trun_node = type { %struct.ubifs_ch, i32, [12 x i8], i64, i64 }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_orph_node = type { %struct.ubifs_ch, i64, [0 x i64] }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
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
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_gced_idx_leb = type { %struct.list_head, i32, i32 }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.list_head }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsck_data = type { %struct.rb_root }
%struct.fsck_inode = type { %struct.rb_node, i32, i16, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i64 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(%lu, %s)\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(%lu, %s, %#08x)\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(%lu, %s, %u)\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(bad key type: %#08x, %#08x)\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad key format %d\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"len > 0\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ubifs/debug.c\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"padding node\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"superblock node\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"master node\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reference node\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inode node\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"direntry node\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xentry node\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data node\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"truncate node\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"indexing node\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"commit start node\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orphan node\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"auth node\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown node\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"commit resting\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"background commit requested\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"commit required\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BACKGROUND commit running\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"commit running and required\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"broken commit\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown commit state\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0 (GC)\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1 (base)\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2 (data)\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown journal head\00", [43 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Dump in-memory inode:\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_dump_inode\00", [47 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr = internal global ptr @ubifs_dump_inode._entry, section ".printk_index", align 4
@ubifs_dump_inode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09inode          %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.36 = internal global ptr @ubifs_dump_inode._entry.34, section ".printk_index", align 4
@ubifs_dump_inode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.6, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09size           %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.39 = internal global ptr @ubifs_dump_inode._entry.37, section ".printk_index", align 4
@ubifs_dump_inode._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.6, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09nlink          %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.42 = internal global ptr @ubifs_dump_inode._entry.40, section ".printk_index", align 4
@ubifs_dump_inode._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.6, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09uid            %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.45 = internal global ptr @ubifs_dump_inode._entry.43, section ".printk_index", align 4
@ubifs_dump_inode._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str.6, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09gid            %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.48 = internal global ptr @ubifs_dump_inode._entry.46, section ".printk_index", align 4
@ubifs_dump_inode._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.33, ptr @.str.6, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09atime          %u.%u\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.51 = internal global ptr @ubifs_dump_inode._entry.49, section ".printk_index", align 4
@ubifs_dump_inode._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.33, ptr @.str.6, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09mtime          %u.%u\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.54 = internal global ptr @ubifs_dump_inode._entry.52, section ".printk_index", align 4
@ubifs_dump_inode._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.33, ptr @.str.6, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09ctime          %u.%u\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.57 = internal global ptr @ubifs_dump_inode._entry.55, section ".printk_index", align 4
@ubifs_dump_inode._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.33, ptr @.str.6, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09creat_sqnum    %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.60 = internal global ptr @ubifs_dump_inode._entry.58, section ".printk_index", align 4
@ubifs_dump_inode._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.33, ptr @.str.6, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09xattr_size     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.63 = internal global ptr @ubifs_dump_inode._entry.61, section ".printk_index", align 4
@ubifs_dump_inode._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.33, ptr @.str.6, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09xattr_cnt      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.66 = internal global ptr @ubifs_dump_inode._entry.64, section ".printk_index", align 4
@ubifs_dump_inode._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.33, ptr @.str.6, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09xattr_names    %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.69 = internal global ptr @ubifs_dump_inode._entry.67, section ".printk_index", align 4
@ubifs_dump_inode._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.33, ptr @.str.6, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09dirty          %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.72 = internal global ptr @ubifs_dump_inode._entry.70, section ".printk_index", align 4
@ubifs_dump_inode._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.33, ptr @.str.6, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09xattr          %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.75 = internal global ptr @ubifs_dump_inode._entry.73, section ".printk_index", align 4
@ubifs_dump_inode._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.33, ptr @.str.6, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09bulk_read      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.78 = internal global ptr @ubifs_dump_inode._entry.76, section ".printk_index", align 4
@ubifs_dump_inode._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.33, ptr @.str.6, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09synced_i_size  %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.81 = internal global ptr @ubifs_dump_inode._entry.79, section ".printk_index", align 4
@ubifs_dump_inode._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.33, ptr @.str.6, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09ui_size        %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.84 = internal global ptr @ubifs_dump_inode._entry.82, section ".printk_index", align 4
@ubifs_dump_inode._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.33, ptr @.str.6, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09flags          %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.87 = internal global ptr @ubifs_dump_inode._entry.85, section ".printk_index", align 4
@ubifs_dump_inode._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.33, ptr @.str.6, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09compr_type     %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.90 = internal global ptr @ubifs_dump_inode._entry.88, section ".printk_index", align 4
@ubifs_dump_inode._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.33, ptr @.str.6, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09last_page_read %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.93 = internal global ptr @ubifs_dump_inode._entry.91, section ".printk_index", align 4
@ubifs_dump_inode._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.33, ptr @.str.6, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09read_in_a_row  %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.96 = internal global ptr @ubifs_dump_inode._entry.94, section ".printk_index", align 4
@ubifs_dump_inode._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.33, ptr @.str.6, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09data_len       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.99 = internal global ptr @ubifs_dump_inode._entry.97, section ".printk_index", align 4
@ubifs_dump_inode._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.33, ptr @.str.6, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013List of directory entries:\0A\00", [34 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.102 = internal global ptr @ubifs_dump_inode._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"!mutex_is_locked(&c->tnc_mutex)\00", [32 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.33, ptr @.str.6, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013error %ld\0A\00", [19 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.106 = internal global ptr @ubifs_dump_inode._entry.104, section ".printk_index", align 4
@ubifs_dump_inode._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.33, ptr @.str.6, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013\09%d: inode %llu, type %s, len %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dump_inode._entry_ptr.109 = internal global ptr @ubifs_dump_inode._entry.107, section ".printk_index", align 4
@ubifs_dump_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.6, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Not a node, first %zu bytes:\00", [33 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_dump_node\00", [16 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr = internal global ptr @ubifs_dump_node._entry, section ".printk_index", align 4
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ubifs_dump_node._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.111, ptr @.str.6, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013node type %d was not recognized\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.116 = internal global ptr @ubifs_dump_node._entry.114, section ".printk_index", align 4
@dbg_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.694, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.111, ptr @.str.6, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013node len(%d) is too short for %s, left %d bytes:\0A\00", [44 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.119 = internal global ptr @ubifs_dump_node._entry.117, section ".printk_index", align 4
@ubifs_dump_node._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.111, ptr @.str.6, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013\09truncated node length      %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.122 = internal global ptr @ubifs_dump_node._entry.120, section ".printk_index", align 4
@ubifs_dump_node._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.111, ptr @.str.6, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09pad_len        %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.125 = internal global ptr @ubifs_dump_node._entry.123, section ".printk_index", align 4
@ubifs_dump_node._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.111, ptr @.str.6, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013\09key_hash       %d (%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.128 = internal global ptr @ubifs_dump_node._entry.126, section ".printk_index", align 4
@ubifs_dump_node._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.111, ptr @.str.6, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013\09key_fmt        %d (%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.131 = internal global ptr @ubifs_dump_node._entry.129, section ".printk_index", align 4
@ubifs_dump_node._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.111, ptr @.str.6, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09flags          %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.134 = internal global ptr @ubifs_dump_node._entry.132, section ".printk_index", align 4
@ubifs_dump_node._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.111, ptr @.str.6, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09big_lpt        %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.137 = internal global ptr @ubifs_dump_node._entry.135, section ".printk_index", align 4
@ubifs_dump_node._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.111, ptr @.str.6, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09space_fixup    %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.140 = internal global ptr @ubifs_dump_node._entry.138, section ".printk_index", align 4
@ubifs_dump_node._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.111, ptr @.str.6, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09min_io_size    %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.143 = internal global ptr @ubifs_dump_node._entry.141, section ".printk_index", align 4
@ubifs_dump_node._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.111, ptr @.str.6, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09leb_size       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.146 = internal global ptr @ubifs_dump_node._entry.144, section ".printk_index", align 4
@ubifs_dump_node._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.111, ptr @.str.6, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09leb_cnt        %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.149 = internal global ptr @ubifs_dump_node._entry.147, section ".printk_index", align 4
@ubifs_dump_node._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.111, ptr @.str.6, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09max_leb_cnt    %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.152 = internal global ptr @ubifs_dump_node._entry.150, section ".printk_index", align 4
@ubifs_dump_node._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.111, ptr @.str.6, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09max_bud_bytes  %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.155 = internal global ptr @ubifs_dump_node._entry.153, section ".printk_index", align 4
@ubifs_dump_node._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.111, ptr @.str.6, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09log_lebs       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.158 = internal global ptr @ubifs_dump_node._entry.156, section ".printk_index", align 4
@ubifs_dump_node._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.111, ptr @.str.6, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lpt_lebs       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.161 = internal global ptr @ubifs_dump_node._entry.159, section ".printk_index", align 4
@ubifs_dump_node._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.111, ptr @.str.6, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09orph_lebs      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.164 = internal global ptr @ubifs_dump_node._entry.162, section ".printk_index", align 4
@ubifs_dump_node._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.111, ptr @.str.6, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09jhead_cnt      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.167 = internal global ptr @ubifs_dump_node._entry.165, section ".printk_index", align 4
@ubifs_dump_node._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.111, ptr @.str.6, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09fanout         %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.170 = internal global ptr @ubifs_dump_node._entry.168, section ".printk_index", align 4
@ubifs_dump_node._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.111, ptr @.str.6, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lsave_cnt      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.173 = internal global ptr @ubifs_dump_node._entry.171, section ".printk_index", align 4
@ubifs_dump_node._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.111, ptr @.str.6, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09default_compr  %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.176 = internal global ptr @ubifs_dump_node._entry.174, section ".printk_index", align 4
@ubifs_dump_node._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.111, ptr @.str.6, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09rp_size        %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.179 = internal global ptr @ubifs_dump_node._entry.177, section ".printk_index", align 4
@ubifs_dump_node._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.111, ptr @.str.6, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09rp_uid         %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.182 = internal global ptr @ubifs_dump_node._entry.180, section ".printk_index", align 4
@ubifs_dump_node._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.111, ptr @.str.6, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09rp_gid         %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.185 = internal global ptr @ubifs_dump_node._entry.183, section ".printk_index", align 4
@ubifs_dump_node._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.111, ptr @.str.6, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09fmt_version    %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.188 = internal global ptr @ubifs_dump_node._entry.186, section ".printk_index", align 4
@ubifs_dump_node._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.111, ptr @.str.6, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09time_gran      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.191 = internal global ptr @ubifs_dump_node._entry.189, section ".printk_index", align 4
@ubifs_dump_node._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.111, ptr @.str.6, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09UUID           %pUB\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.194 = internal global ptr @ubifs_dump_node._entry.192, section ".printk_index", align 4
@ubifs_dump_node._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.111, ptr @.str.6, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09highest_inum   %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.197 = internal global ptr @ubifs_dump_node._entry.195, section ".printk_index", align 4
@ubifs_dump_node._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.111, ptr @.str.6, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09commit number  %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.200 = internal global ptr @ubifs_dump_node._entry.198, section ".printk_index", align 4
@ubifs_dump_node._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.111, ptr @.str.6, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.202 = internal global ptr @ubifs_dump_node._entry.201, section ".printk_index", align 4
@ubifs_dump_node._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.111, ptr @.str.6, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09log_lnum       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.205 = internal global ptr @ubifs_dump_node._entry.203, section ".printk_index", align 4
@ubifs_dump_node._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.111, ptr @.str.6, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09root_lnum      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.208 = internal global ptr @ubifs_dump_node._entry.206, section ".printk_index", align 4
@ubifs_dump_node._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.111, ptr @.str.6, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09root_offs      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.211 = internal global ptr @ubifs_dump_node._entry.209, section ".printk_index", align 4
@ubifs_dump_node._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.111, ptr @.str.6, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09root_len       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.214 = internal global ptr @ubifs_dump_node._entry.212, section ".printk_index", align 4
@ubifs_dump_node._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.111, ptr @.str.6, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09gc_lnum        %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.217 = internal global ptr @ubifs_dump_node._entry.215, section ".printk_index", align 4
@ubifs_dump_node._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.111, ptr @.str.6, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09ihead_lnum     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.220 = internal global ptr @ubifs_dump_node._entry.218, section ".printk_index", align 4
@ubifs_dump_node._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.111, ptr @.str.6, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09ihead_offs     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.223 = internal global ptr @ubifs_dump_node._entry.221, section ".printk_index", align 4
@ubifs_dump_node._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.111, ptr @.str.6, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09index_size     %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.226 = internal global ptr @ubifs_dump_node._entry.224, section ".printk_index", align 4
@ubifs_dump_node._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.111, ptr @.str.6, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lpt_lnum       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.229 = internal global ptr @ubifs_dump_node._entry.227, section ".printk_index", align 4
@ubifs_dump_node._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.111, ptr @.str.6, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lpt_offs       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.232 = internal global ptr @ubifs_dump_node._entry.230, section ".printk_index", align 4
@ubifs_dump_node._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.111, ptr @.str.6, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09nhead_lnum     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.235 = internal global ptr @ubifs_dump_node._entry.233, section ".printk_index", align 4
@ubifs_dump_node._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.111, ptr @.str.6, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09nhead_offs     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.238 = internal global ptr @ubifs_dump_node._entry.236, section ".printk_index", align 4
@ubifs_dump_node._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.111, ptr @.str.6, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09ltab_lnum      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.241 = internal global ptr @ubifs_dump_node._entry.239, section ".printk_index", align 4
@ubifs_dump_node._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.111, ptr @.str.6, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09ltab_offs      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.244 = internal global ptr @ubifs_dump_node._entry.242, section ".printk_index", align 4
@ubifs_dump_node._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.111, ptr @.str.6, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lsave_lnum     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.247 = internal global ptr @ubifs_dump_node._entry.245, section ".printk_index", align 4
@ubifs_dump_node._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.111, ptr @.str.6, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lsave_offs     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.250 = internal global ptr @ubifs_dump_node._entry.248, section ".printk_index", align 4
@ubifs_dump_node._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.111, ptr @.str.6, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lscan_lnum     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.253 = internal global ptr @ubifs_dump_node._entry.251, section ".printk_index", align 4
@ubifs_dump_node._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.111, ptr @.str.6, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.255 = internal global ptr @ubifs_dump_node._entry.254, section ".printk_index", align 4
@ubifs_dump_node._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.111, ptr @.str.6, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09empty_lebs     %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.258 = internal global ptr @ubifs_dump_node._entry.256, section ".printk_index", align 4
@ubifs_dump_node._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.111, ptr @.str.6, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09idx_lebs       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.261 = internal global ptr @ubifs_dump_node._entry.259, section ".printk_index", align 4
@ubifs_dump_node._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.111, ptr @.str.6, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09total_free     %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.264 = internal global ptr @ubifs_dump_node._entry.262, section ".printk_index", align 4
@ubifs_dump_node._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.111, ptr @.str.6, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09total_dirty    %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.267 = internal global ptr @ubifs_dump_node._entry.265, section ".printk_index", align 4
@ubifs_dump_node._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.111, ptr @.str.6, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09total_used     %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.270 = internal global ptr @ubifs_dump_node._entry.268, section ".printk_index", align 4
@ubifs_dump_node._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.111, ptr @.str.6, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09total_dead     %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.273 = internal global ptr @ubifs_dump_node._entry.271, section ".printk_index", align 4
@ubifs_dump_node._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.111, ptr @.str.6, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09total_dark     %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.276 = internal global ptr @ubifs_dump_node._entry.274, section ".printk_index", align 4
@ubifs_dump_node._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.111, ptr @.str.6, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lnum           %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.279 = internal global ptr @ubifs_dump_node._entry.277, section ".printk_index", align 4
@ubifs_dump_node._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.111, ptr @.str.6, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09offs           %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.282 = internal global ptr @ubifs_dump_node._entry.280, section ".printk_index", align 4
@ubifs_dump_node._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.111, ptr @.str.6, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09jhead          %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.285 = internal global ptr @ubifs_dump_node._entry.283, section ".printk_index", align 4
@ubifs_dump_node._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.111, ptr @.str.6, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09key            %s\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.288 = internal global ptr @ubifs_dump_node._entry.286, section ".printk_index", align 4
@ubifs_dump_node._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.111, ptr @.str.6, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.290 = internal global ptr @ubifs_dump_node._entry.289, section ".printk_index", align 4
@ubifs_dump_node._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.111, ptr @.str.6, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.292 = internal global ptr @ubifs_dump_node._entry.291, section ".printk_index", align 4
@ubifs_dump_node._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.111, ptr @.str.6, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.294 = internal global ptr @ubifs_dump_node._entry.293, section ".printk_index", align 4
@ubifs_dump_node._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.111, ptr @.str.6, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013\09atime          %lld.%u\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.297 = internal global ptr @ubifs_dump_node._entry.295, section ".printk_index", align 4
@ubifs_dump_node._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.111, ptr @.str.6, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013\09mtime          %lld.%u\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.300 = internal global ptr @ubifs_dump_node._entry.298, section ".printk_index", align 4
@ubifs_dump_node._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.111, ptr @.str.6, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013\09ctime          %lld.%u\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.303 = internal global ptr @ubifs_dump_node._entry.301, section ".printk_index", align 4
@ubifs_dump_node._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.111, ptr @.str.6, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.305 = internal global ptr @ubifs_dump_node._entry.304, section ".printk_index", align 4
@ubifs_dump_node._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.111, ptr @.str.6, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.307 = internal global ptr @ubifs_dump_node._entry.306, section ".printk_index", align 4
@ubifs_dump_node._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.111, ptr @.str.6, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09mode           %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.310 = internal global ptr @ubifs_dump_node._entry.308, section ".printk_index", align 4
@ubifs_dump_node._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.111, ptr @.str.6, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.312 = internal global ptr @ubifs_dump_node._entry.311, section ".printk_index", align 4
@ubifs_dump_node._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.111, ptr @.str.6, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.314 = internal global ptr @ubifs_dump_node._entry.313, section ".printk_index", align 4
@ubifs_dump_node._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.111, ptr @.str.6, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.316 = internal global ptr @ubifs_dump_node._entry.315, section ".printk_index", align 4
@ubifs_dump_node._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.111, ptr @.str.6, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.318 = internal global ptr @ubifs_dump_node._entry.317, section ".printk_index", align 4
@ubifs_dump_node._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.111, ptr @.str.6, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09compr_type     %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.321 = internal global ptr @ubifs_dump_node._entry.319, section ".printk_index", align 4
@ubifs_dump_node._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.111, ptr @.str.6, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09data len       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.324 = internal global ptr @ubifs_dump_node._entry.322, section ".printk_index", align 4
@ubifs_dump_node._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.111, ptr @.str.6, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.326 = internal global ptr @ubifs_dump_node._entry.325, section ".printk_index", align 4
@ubifs_dump_node._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.111, ptr @.str.6, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09inum           %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.329 = internal global ptr @ubifs_dump_node._entry.327, section ".printk_index", align 4
@ubifs_dump_node._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.111, ptr @.str.6, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09type           %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.332 = internal global ptr @ubifs_dump_node._entry.330, section ".printk_index", align 4
@ubifs_dump_node._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.111, ptr @.str.6, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09nlen           %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.335 = internal global ptr @ubifs_dump_node._entry.333, section ".printk_index", align 4
@ubifs_dump_node._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.111, ptr @.str.6, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013\09name           \00", [45 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.338 = internal global ptr @ubifs_dump_node._entry.336, section ".printk_index", align 4
@ubifs_dump_node._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.111, ptr @.str.6, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013(bad name length, not printing, bad or corrupted node)\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.341 = internal global ptr @ubifs_dump_node._entry.339, section ".printk_index", align 4
@ubifs_dump_node._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.111, ptr @.str.6, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%c\00", [27 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.344 = internal global ptr @ubifs_dump_node._entry.342, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ubifs_dump_node._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.111, ptr @.str.6, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.347 = internal global ptr @ubifs_dump_node._entry.345, section ".printk_index", align 4
@ubifs_dump_node._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.111, ptr @.str.6, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.349 = internal global ptr @ubifs_dump_node._entry.348, section ".printk_index", align 4
@ubifs_dump_node._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.111, ptr @.str.6, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09size           %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.352 = internal global ptr @ubifs_dump_node._entry.350, section ".printk_index", align 4
@ubifs_dump_node._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.111, ptr @.str.6, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09compr_typ      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.355 = internal global ptr @ubifs_dump_node._entry.353, section ".printk_index", align 4
@ubifs_dump_node._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.111, ptr @.str.6, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09data size      %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.358 = internal global ptr @ubifs_dump_node._entry.356, section ".printk_index", align 4
@ubifs_dump_node._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.111, ptr @.str.6, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09data (length = %d):\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.361 = internal global ptr @ubifs_dump_node._entry.359, section ".printk_index", align 4
@.str.362 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry.363 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.364, ptr @.str.111, ptr @.str.6, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09inum           %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.365 = internal global ptr @ubifs_dump_node._entry.363, section ".printk_index", align 4
@ubifs_dump_node._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @.str.111, ptr @.str.6, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09old_size       %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.368 = internal global ptr @ubifs_dump_node._entry.366, section ".printk_index", align 4
@ubifs_dump_node._entry.369 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.111, ptr @.str.6, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09new_size       %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.371 = internal global ptr @ubifs_dump_node._entry.369, section ".printk_index", align 4
@ubifs_dump_node._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.373, ptr @.str.111, ptr @.str.6, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09child_cnt      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.374 = internal global ptr @ubifs_dump_node._entry.372, section ".printk_index", align 4
@ubifs_dump_node._entry.375 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.111, ptr @.str.6, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09level          %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.377 = internal global ptr @ubifs_dump_node._entry.375, section ".printk_index", align 4
@ubifs_dump_node._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @.str.111, ptr @.str.6, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013\09Branches:\0A\00", [18 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.380 = internal global ptr @ubifs_dump_node._entry.378, section ".printk_index", align 4
@ubifs_dump_node._entry.381 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.382, ptr @.str.111, ptr @.str.6, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013\09%d: LEB %d:%d len %d key %s\0A\00", [32 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.383 = internal global ptr @ubifs_dump_node._entry.381, section ".printk_index", align 4
@ubifs_dump_node._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.111, ptr @.str.6, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.385 = internal global ptr @ubifs_dump_node._entry.384, section ".printk_index", align 4
@ubifs_dump_node._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.111, ptr @.str.6, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09last node flag %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.388 = internal global ptr @ubifs_dump_node._entry.386, section ".printk_index", align 4
@ubifs_dump_node._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.111, ptr @.str.6, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013\09%d orphan inode numbers:\0A\00", [35 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.391 = internal global ptr @ubifs_dump_node._entry.389, section ".printk_index", align 4
@ubifs_dump_node._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.111, ptr @.str.6, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013\09  ino %llu\0A\00", [17 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.394 = internal global ptr @ubifs_dump_node._entry.392, section ".printk_index", align 4
@ubifs_dump_node._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.111, ptr @.str.6, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_node._entry_ptr.396 = internal global ptr @ubifs_dump_node._entry.395, section ".printk_index", align 4
@ubifs_dump_budget_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.398, ptr @.str.6, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Budgeting request: new_ino %d, dirtied_ino %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_dump_budget_req\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_budget_req._entry_ptr = internal global ptr @ubifs_dump_budget_req._entry, section ".printk_index", align 4
@ubifs_dump_budget_req._entry.399 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.400, ptr @.str.398, ptr @.str.6, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013\09new_ino_d   %d, dirtied_ino_d %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_dump_budget_req._entry_ptr.401 = internal global ptr @ubifs_dump_budget_req._entry.399, section ".printk_index", align 4
@ubifs_dump_budget_req._entry.402 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.403, ptr @.str.398, ptr @.str.6, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013\09new_page    %d, dirtied_page %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dump_budget_req._entry_ptr.404 = internal global ptr @ubifs_dump_budget_req._entry.402, section ".printk_index", align 4
@ubifs_dump_budget_req._entry.405 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.406, ptr @.str.398, ptr @.str.6, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013\09new_dent    %d, mod_dent     %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dump_budget_req._entry_ptr.407 = internal global ptr @ubifs_dump_budget_req._entry.405, section ".printk_index", align 4
@ubifs_dump_budget_req._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.398, ptr @.str.6, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013\09idx_growth  %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ubifs_dump_budget_req._entry_ptr.410 = internal global ptr @ubifs_dump_budget_req._entry.408, section ".printk_index", align 4
@ubifs_dump_budget_req._entry.411 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.412, ptr @.str.398, ptr @.str.6, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013\09data_growth %d dd_growth     %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dump_budget_req._entry_ptr.413 = internal global ptr @ubifs_dump_budget_req._entry.411, section ".printk_index", align 4
@ubifs_dump_lstats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.415, ptr @.str.6, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013(pid %d) Lprops statistics: empty_lebs %d, idx_lebs  %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_dump_lstats\00", [46 x i8] zeroinitializer }, align 32
@ubifs_dump_lstats._entry_ptr = internal global ptr @ubifs_dump_lstats._entry, section ".printk_index", align 4
@ubifs_dump_lstats._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.415, ptr @.str.6, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013\09taken_empty_lebs %d, total_free %lld, total_dirty %lld\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_dump_lstats._entry_ptr.418 = internal global ptr @ubifs_dump_lstats._entry.416, section ".printk_index", align 4
@ubifs_dump_lstats._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.415, ptr @.str.6, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013\09total_used %lld, total_dark %lld, total_dead %lld\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lstats._entry_ptr.421 = internal global ptr @ubifs_dump_lstats._entry.419, section ".printk_index", align 4
@ubifs_dump_budg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.422, ptr @.str.423, ptr @.str.6, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013(pid %d) Budgeting info: data budget sum %lld, total budget sum %lld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_dump_budg\00", [16 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr = internal global ptr @ubifs_dump_budg._entry, section ".printk_index", align 4
@ubifs_dump_budg._entry.424 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.423, ptr @.str.6, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013\09budg_data_growth %lld, budg_dd_growth %lld, budg_idx_growth %lld\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.426 = internal global ptr @ubifs_dump_budg._entry.424, section ".printk_index", align 4
@ubifs_dump_budg._entry.427 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.428, ptr @.str.423, ptr @.str.6, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013\09min_idx_lebs %d, old_idx_sz %llu, uncommitted_idx %lld\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.429 = internal global ptr @ubifs_dump_budg._entry.427, section ".printk_index", align 4
@ubifs_dump_budg._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.423, ptr @.str.6, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013\09page_budget %d, inode_budget %d, dent_budget %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.432 = internal global ptr @ubifs_dump_budg._entry.430, section ".printk_index", align 4
@ubifs_dump_budg._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.434, ptr @.str.423, ptr @.str.6, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013\09nospace %u, nospace_rp %u\0A\00", [34 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.435 = internal global ptr @ubifs_dump_budg._entry.433, section ".printk_index", align 4
@ubifs_dump_budg._entry.436 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.437, ptr @.str.423, ptr @.str.6, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013\09dark_wm %d, dead_wm %d, max_idx_node_sz %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.438 = internal global ptr @ubifs_dump_budg._entry.436, section ".printk_index", align 4
@ubifs_dump_budg._entry.439 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.440, ptr @.str.423, ptr @.str.6, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013\09freeable_cnt %d, calc_idx_sz %lld, idx_gc_cnt %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.441 = internal global ptr @ubifs_dump_budg._entry.439, section ".printk_index", align 4
@ubifs_dump_budg._entry.442 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.443, ptr @.str.423, ptr @.str.6, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013\09dirty_pg_cnt %ld, dirty_zn_cnt %ld, clean_zn_cnt %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.444 = internal global ptr @ubifs_dump_budg._entry.442, section ".printk_index", align 4
@ubifs_dump_budg._entry.445 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.446, ptr @.str.423, ptr @.str.6, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013\09gc_lnum %d, ihead_lnum %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.447 = internal global ptr @ubifs_dump_budg._entry.445, section ".printk_index", align 4
@ubifs_dump_budg._entry.448 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.449, ptr @.str.423, ptr @.str.6, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013\09jhead %s\09 LEB %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.450 = internal global ptr @ubifs_dump_budg._entry.448, section ".printk_index", align 4
@ubifs_dump_budg._entry.451 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.452, ptr @.str.423, ptr @.str.6, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013\09bud LEB %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.453 = internal global ptr @ubifs_dump_budg._entry.451, section ".printk_index", align 4
@ubifs_dump_budg._entry.454 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.455, ptr @.str.423, ptr @.str.6, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013\09old bud LEB %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.456 = internal global ptr @ubifs_dump_budg._entry.454, section ".printk_index", align 4
@ubifs_dump_budg._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.458, ptr @.str.423, ptr @.str.6, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013\09GC'ed idx LEB %d unmap %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.459 = internal global ptr @ubifs_dump_budg._entry.457, section ".printk_index", align 4
@ubifs_dump_budg._entry.460 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.461, ptr @.str.423, ptr @.str.6, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013\09commit state %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.462 = internal global ptr @ubifs_dump_budg._entry.460, section ".printk_index", align 4
@ubifs_dump_budg._entry.463 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.464, ptr @.str.423, ptr @.str.6, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Budgeting predictions:\0A\00", [38 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.465 = internal global ptr @ubifs_dump_budg._entry.463, section ".printk_index", align 4
@ubifs_dump_budg._entry.466 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.467, ptr @.str.423, ptr @.str.6, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013\09available: %lld, outstanding %lld, free %lld\0A\00", [47 x i8] zeroinitializer }, align 32
@ubifs_dump_budg._entry_ptr.468 = internal global ptr @ubifs_dump_budg._entry.466, section ".printk_index", align 4
@ubifs_dump_lprop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.469, ptr @.str.470, ptr @.str.6, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013LEB %-7d free %-8d dirty %-8d used %-8d free + dirty %-8d flags %#x (\00", [56 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_dump_lprop\00", [47 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr = internal global ptr @ubifs_dump_lprop._entry, section ".printk_index", align 4
@ubifs_dump_lprop._entry.471 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.472, ptr @.str.470, ptr @.str.6, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\013LEB %-7d free %-8d dirty %-8d used %-8d free + dirty %-8d dark %-4d dead %-4d nodes fit %-3d flags %#-4x (\00", [51 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.473 = internal global ptr @ubifs_dump_lprop._entry.471, section ".printk_index", align 4
@ubifs_dump_lprop._entry.474 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.475, ptr @.str.470, ptr @.str.6, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01cindex, taken\00", [17 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.476 = internal global ptr @ubifs_dump_lprop._entry.474, section ".printk_index", align 4
@ubifs_dump_lprop._entry.477 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.478, ptr @.str.470, ptr @.str.6, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01ctaken\00", [24 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.479 = internal global ptr @ubifs_dump_lprop._entry.477, section ".printk_index", align 4
@.str.480 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dirty index\00", [20 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"freeable index\00", [17 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"not categorized\00", [16 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirty\00", [26 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"freeable\00", [23 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry.488 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.489, ptr @.str.470, ptr @.str.6, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%s\00", [27 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.490 = internal global ptr @ubifs_dump_lprop._entry.488, section ".printk_index", align 4
@ubifs_dump_lprop._entry.491 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.492, ptr @.str.470, ptr @.str.6, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c, jhead %s\00", [19 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.493 = internal global ptr @ubifs_dump_lprop._entry.491, section ".printk_index", align 4
@ubifs_dump_lprop._entry.494 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.495, ptr @.str.470, ptr @.str.6, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c, bud of jhead %s\00", [44 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.496 = internal global ptr @ubifs_dump_lprop._entry.494, section ".printk_index", align 4
@ubifs_dump_lprop._entry.497 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.498, ptr @.str.470, ptr @.str.6, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c, GC LEB\00", [21 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.499 = internal global ptr @ubifs_dump_lprop._entry.497, section ".printk_index", align 4
@ubifs_dump_lprop._entry.500 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.501, ptr @.str.470, ptr @.str.6, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.501 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c)\0A\00", [27 x i8] zeroinitializer }, align 32
@ubifs_dump_lprop._entry_ptr.502 = internal global ptr @ubifs_dump_lprop._entry.500, section ".printk_index", align 4
@ubifs_dump_lprops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.503, ptr @.str.504, ptr @.str.6, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.503 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013(pid %d) start dumping LEB properties\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_dump_lprops\00", [46 x i8] zeroinitializer }, align 32
@ubifs_dump_lprops._entry_ptr = internal global ptr @ubifs_dump_lprops._entry, section ".printk_index", align 4
@.str.505 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot read lprops for LEB %d\00", [34 x i8] zeroinitializer }, align 32
@ubifs_dump_lprops._entry.506 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.507, ptr @.str.504, ptr @.str.6, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013(pid %d) finish dumping LEB properties\0A\00", [54 x i8] zeroinitializer }, align 32
@ubifs_dump_lprops._entry_ptr.508 = internal global ptr @ubifs_dump_lprops._entry.506, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.509, ptr @.str.510, ptr @.str.6, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.509 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013(pid %d) dumping LPT information\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_dump_lpt_info\00", [44 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr = internal global ptr @ubifs_dump_lpt_info._entry, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.511 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.512, ptr @.str.510, ptr @.str.6, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09lpt_sz:        %lld\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.513 = internal global ptr @ubifs_dump_lpt_info._entry.511, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.514 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.515, ptr @.str.510, ptr @.str.6, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09pnode_sz:      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.516 = internal global ptr @ubifs_dump_lpt_info._entry.514, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.517 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.518, ptr @.str.510, ptr @.str.6, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09nnode_sz:      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.519 = internal global ptr @ubifs_dump_lpt_info._entry.517, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.520 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.521, ptr @.str.510, ptr @.str.6, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09ltab_sz:       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.522 = internal global ptr @ubifs_dump_lpt_info._entry.520, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.523 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.524, ptr @.str.510, ptr @.str.6, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lsave_sz:      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.525 = internal global ptr @ubifs_dump_lpt_info._entry.523, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.526 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.527, ptr @.str.510, ptr @.str.6, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09big_lpt:       %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.528 = internal global ptr @ubifs_dump_lpt_info._entry.526, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.529 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.530, ptr @.str.510, ptr @.str.6, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lpt_hght:      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.531 = internal global ptr @ubifs_dump_lpt_info._entry.529, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.532 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.533, ptr @.str.510, ptr @.str.6, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09pnode_cnt:     %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.534 = internal global ptr @ubifs_dump_lpt_info._entry.532, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.535 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.536, ptr @.str.510, ptr @.str.6, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.536 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09nnode_cnt:     %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.537 = internal global ptr @ubifs_dump_lpt_info._entry.535, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.538 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.539, ptr @.str.510, ptr @.str.6, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.539 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09dirty_pn_cnt:  %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.540 = internal global ptr @ubifs_dump_lpt_info._entry.538, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.541 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.542, ptr @.str.510, ptr @.str.6, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.542 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09dirty_nn_cnt:  %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.543 = internal global ptr @ubifs_dump_lpt_info._entry.541, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.544 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.545, ptr @.str.510, ptr @.str.6, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.545 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lsave_cnt:     %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.546 = internal global ptr @ubifs_dump_lpt_info._entry.544, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.547 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.548, ptr @.str.510, ptr @.str.6, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.548 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09space_bits:    %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.549 = internal global ptr @ubifs_dump_lpt_info._entry.547, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.550 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.551, ptr @.str.510, ptr @.str.6, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.551 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lpt_lnum_bits: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.552 = internal global ptr @ubifs_dump_lpt_info._entry.550, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.553 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.554, ptr @.str.510, ptr @.str.6, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.554 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lpt_offs_bits: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.555 = internal global ptr @ubifs_dump_lpt_info._entry.553, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.556 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.557, ptr @.str.510, ptr @.str.6, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.557 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lpt_spc_bits:  %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.558 = internal global ptr @ubifs_dump_lpt_info._entry.556, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.559 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.560, ptr @.str.510, ptr @.str.6, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.560 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09pcnt_bits:     %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.561 = internal global ptr @ubifs_dump_lpt_info._entry.559, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.562 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.563, ptr @.str.510, ptr @.str.6, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09lnum_bits:     %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.564 = internal global ptr @ubifs_dump_lpt_info._entry.562, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.565 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.566, ptr @.str.510, ptr @.str.6, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.566 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09LPT root is at %d:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.567 = internal global ptr @ubifs_dump_lpt_info._entry.565, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.568 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.569, ptr @.str.510, ptr @.str.6, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.569 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09LPT head is at %d:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.570 = internal global ptr @ubifs_dump_lpt_info._entry.568, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.571 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.572, ptr @.str.510, ptr @.str.6, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.572 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013\09LPT ltab is at %d:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.573 = internal global ptr @ubifs_dump_lpt_info._entry.571, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.574 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.575, ptr @.str.510, ptr @.str.6, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.575 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013\09LPT lsave is at %d:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.576 = internal global ptr @ubifs_dump_lpt_info._entry.574, section ".printk_index", align 4
@ubifs_dump_lpt_info._entry.577 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.578, ptr @.str.510, ptr @.str.6, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.578 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013\09LPT LEB %d free %d dirty %d tgc %d cmt %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ubifs_dump_lpt_info._entry_ptr.579 = internal global ptr @ubifs_dump_lpt_info._entry.577, section ".printk_index", align 4
@ubifs_dump_leb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.580, ptr @.str.581, ptr @.str.6, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.580 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013(pid %d) start dumping LEB %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.581 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubifs_dump_leb\00", [17 x i8] zeroinitializer }, align 32
@ubifs_dump_leb._entry_ptr = internal global ptr @ubifs_dump_leb._entry, section ".printk_index", align 4
@.str.582 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot allocate memory for dumping LEB %d\00", [54 x i8] zeroinitializer }, align 32
@.str.583 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scan error %d\00", [18 x i8] zeroinitializer }, align 32
@ubifs_dump_leb._entry.584 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.585, ptr @.str.581, ptr @.str.6, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.585 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013LEB %d has %d nodes ending at %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dump_leb._entry_ptr.586 = internal global ptr @ubifs_dump_leb._entry.584, section ".printk_index", align 4
@ubifs_dump_leb._entry.587 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.588, ptr @.str.581, ptr @.str.6, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.588 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Dumping node at LEB %d:%d len %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dump_leb._entry_ptr.589 = internal global ptr @ubifs_dump_leb._entry.587, section ".printk_index", align 4
@ubifs_dump_leb._entry.590 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.591, ptr @.str.581, ptr @.str.6, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.591 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(pid %d) finish dumping LEB %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ubifs_dump_leb._entry_ptr.592 = internal global ptr @ubifs_dump_leb._entry.590, section ".printk_index", align 4
@ubifs_dump_znode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.593, ptr @.str.594, ptr @.str.6, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.593 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013znode %p, LEB %d:%d len %d parent %p iip %d level %d child_cnt %d flags %lx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.594 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_dump_znode\00", [47 x i8] zeroinitializer }, align 32
@ubifs_dump_znode._entry_ptr = internal global ptr @ubifs_dump_znode._entry, section ".printk_index", align 4
@ubifs_dump_znode._entry.595 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.596, ptr @.str.594, ptr @.str.6, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.596 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013zbranches:\0A\00", [18 x i8] zeroinitializer }, align 32
@ubifs_dump_znode._entry_ptr.597 = internal global ptr @ubifs_dump_znode._entry.595, section ".printk_index", align 4
@ubifs_dump_znode._entry.598 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.599, ptr @.str.594, ptr @.str.6, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.599 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013\09%d: znode %p LEB %d:%d len %d key %s\0A\00", [55 x i8] zeroinitializer }, align 32
@ubifs_dump_znode._entry_ptr.600 = internal global ptr @ubifs_dump_znode._entry.598, section ".printk_index", align 4
@ubifs_dump_znode._entry.601 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.602, ptr @.str.594, ptr @.str.6, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.602 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013\09%d: LNC %p LEB %d:%d len %d key %s\0A\00", [57 x i8] zeroinitializer }, align 32
@ubifs_dump_znode._entry_ptr.603 = internal global ptr @ubifs_dump_znode._entry.601, section ".printk_index", align 4
@ubifs_dump_heap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.604, ptr @.str.605, ptr @.str.6, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.604 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013(pid %d) start dumping heap cat %d (%d elements)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.605 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_dump_heap\00", [16 x i8] zeroinitializer }, align 32
@ubifs_dump_heap._entry_ptr = internal global ptr @ubifs_dump_heap._entry, section ".printk_index", align 4
@ubifs_dump_heap._entry.606 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.607, ptr @.str.605, ptr @.str.6, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.607 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013\09%d. LEB %d hpos %d free %d dirty %d flags %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubifs_dump_heap._entry_ptr.608 = internal global ptr @ubifs_dump_heap._entry.606, section ".printk_index", align 4
@ubifs_dump_heap._entry.609 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.610, ptr @.str.605, ptr @.str.6, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.610 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013(pid %d) finish dumping heap\0A\00", [32 x i8] zeroinitializer }, align 32
@ubifs_dump_heap._entry_ptr.611 = internal global ptr @ubifs_dump_heap._entry.609, section ".printk_index", align 4
@ubifs_dump_pnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.612, ptr @.str.613, ptr @.str.6, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.612 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013(pid %d) dumping pnode:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.613 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_dump_pnode\00", [47 x i8] zeroinitializer }, align 32
@ubifs_dump_pnode._entry_ptr = internal global ptr @ubifs_dump_pnode._entry, section ".printk_index", align 4
@ubifs_dump_pnode._entry.614 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.615, ptr @.str.613, ptr @.str.6, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.615 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013\09address %zx parent %zx cnext %zx\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_dump_pnode._entry_ptr.616 = internal global ptr @ubifs_dump_pnode._entry.614, section ".printk_index", align 4
@ubifs_dump_pnode._entry.617 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.618, ptr @.str.613, ptr @.str.6, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.618 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013\09flags %lu iip %d level %d num %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ubifs_dump_pnode._entry_ptr.619 = internal global ptr @ubifs_dump_pnode._entry.617, section ".printk_index", align 4
@ubifs_dump_pnode._entry.620 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.621, ptr @.str.613, ptr @.str.6, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.621 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013\09%d: free %d dirty %d flags %d lnum %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ubifs_dump_pnode._entry_ptr.622 = internal global ptr @ubifs_dump_pnode._entry.620, section ".printk_index", align 4
@ubifs_dump_tnc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.623, ptr @.str.624, ptr @.str.6, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.623 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.624 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubifs_dump_tnc\00", [17 x i8] zeroinitializer }, align 32
@ubifs_dump_tnc._entry_ptr = internal global ptr @ubifs_dump_tnc._entry, section ".printk_index", align 4
@ubifs_dump_tnc._entry.625 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.626, ptr @.str.624, ptr @.str.6, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.626 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013(pid %d) start dumping TNC tree\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_dump_tnc._entry_ptr.627 = internal global ptr @ubifs_dump_tnc._entry.625, section ".printk_index", align 4
@ubifs_dump_tnc._entry.628 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.629, ptr @.str.624, ptr @.str.6, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.629 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013== Level %d ==\0A\00", [46 x i8] zeroinitializer }, align 32
@ubifs_dump_tnc._entry_ptr.630 = internal global ptr @ubifs_dump_tnc._entry.628, section ".printk_index", align 4
@ubifs_dump_tnc._entry.631 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.629, ptr @.str.624, ptr @.str.6, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_dump_tnc._entry_ptr.632 = internal global ptr @ubifs_dump_tnc._entry.631, section ".printk_index", align 4
@ubifs_dump_tnc._entry.633 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.634, ptr @.str.624, ptr @.str.6, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.634 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013(pid %d) finish dumping TNC tree\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_dump_tnc._entry_ptr.635 = internal global ptr @ubifs_dump_tnc._entry.633, section ".printk_index", align 4
@.str.636 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"free space changed from %lld to %lld\00", [59 x i8] zeroinitializer }, align 32
@.str.637 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saved lprops statistics dump\00", [35 x i8] zeroinitializer }, align 32
@.str.638 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saved budgeting info dump\00", [38 x i8] zeroinitializer }, align 32
@.str.639 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saved idx_gc_cnt %d\00", [44 x i8] zeroinitializer }, align 32
@.str.640 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"current lprops statistics dump\00", [33 x i8] zeroinitializer }, align 32
@.str.641 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"current budgeting info dump\00", [36 x i8] zeroinitializer }, align 32
@.str.642 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ui_size is %lld, synced_i_size is %lld, but inode is clean\00", [37 x i8] zeroinitializer }, align 32
@.str.643 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"i_ino %lu, i_mode %#x, i_size %lld\00", [61 x i8] zeroinitializer }, align 32
@.str.644 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"directory inode %lu has size %llu, but calculated size is %llu\00", [33 x i8] zeroinitializer }, align 32
@.str.645 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"directory inode %lu has nlink %u, but calculated nlink is %u\00", [35 x i8] zeroinitializer }, align 32
@.str.646 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mutex_is_locked(&c->tnc_mutex)\00", [33 x i8] zeroinitializer }, align 32
@.str.647 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"first znode\00", [20 x i8] zeroinitializer }, align 32
@.str.648 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"second znode\00", [19 x i8] zeroinitializer }, align 32
@.str.649 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"incorrect clean_zn_cnt %ld, calculated %ld\00", [53 x i8] zeroinitializer }, align 32
@.str.650 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"incorrect dirty_zn_cnt %ld, calculated %ld\00", [53 x i8] zeroinitializer }, align 32
@.str.651 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"znode checking function returned error %d\00", [54 x i8] zeroinitializer }, align 32
@.str.652 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"leaf checking function returned error %d, for leaf at LEB %d:%d\00", [32 x i8] zeroinitializer }, align 32
@.str.653 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dump of znode at LEB %d:%d\00", [37 x i8] zeroinitializer }, align 32
@.str.654 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d while walking the index\00", [63 x i8] zeroinitializer }, align 32
@.str.655 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"index size check failed: calculated size is %lld, should be %lld\00", [63 x i8] zeroinitializer }, align 32
@.str.656 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"file-system check failed with error %d\00", [57 x i8] zeroinitializer }, align 32
@.str.657 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad node type %d\00", [47 x i8] zeroinitializer }, align 32
@.str.658 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"larger inum %lu goes before inum %lu\00", [59 x i8] zeroinitializer }, align 32
@.str.659 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"larger block %u goes before %u\00", [33 x i8] zeroinitializer }, align 32
@.str.660 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"two data nodes for the same block\00", [62 x i8] zeroinitializer }, align 32
@.str.661 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"non-inode node goes before inode node\00", [58 x i8] zeroinitializer }, align 32
@.str.662 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"smaller inode node goes first\00", [34 x i8] zeroinitializer }, align 32
@.str.663 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"larger hash %u goes before %u\00", [34 x i8] zeroinitializer }, align 32
@.str.664 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dumping first node\00", [45 x i8] zeroinitializer }, align 32
@.str.665 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dumping second node\00", [44 x i8] zeroinitializer }, align 32
@.str.666 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"actually write %d bytes to LEB %d:%d (the buffer was corrupted)\00", [32 x i8] zeroinitializer }, align 32
@.str.667 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ubi%d_%d\00", [23 x i8] zeroinitializer }, align 32
@dfs_rootdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.668 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dump_lprops\00", [20 x i8] zeroinitializer }, align 32
@dfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @dfs_file_read, ptr @dfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dfs_file_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.669 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_budg\00", [22 x i8] zeroinitializer }, align 32
@.str.670 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_tnc\00", [23 x i8] zeroinitializer }, align 32
@.str.671 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chk_general\00", [20 x i8] zeroinitializer }, align 32
@.str.672 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chk_index\00", [22 x i8] zeroinitializer }, align 32
@.str.673 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chk_orphans\00", [20 x i8] zeroinitializer }, align 32
@.str.674 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chk_lprops\00", [21 x i8] zeroinitializer }, align 32
@.str.675 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chk_fs\00", [25 x i8] zeroinitializer }, align 32
@.str.676 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tst_recovery\00", [19 x i8] zeroinitializer }, align 32
@.str.677 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ro_error\00", [23 x i8] zeroinitializer }, align 32
@.str.678 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@dfs_global_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @dfs_global_file_read, ptr @dfs_global_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dfs_chk_gen = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfs_chk_index = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfs_chk_orph = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfs_chk_lprops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfs_chk_fs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfs_tst_rcvry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.679 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UBIFS assert failed: %s, in %s:%u\00", [62 x i8] zeroinitializer }, align 32
@ubifs_dbg = dso_local global { %struct.ubifs_global_debug_info, [28 x i8] } zeroinitializer, align 32
@.str.680 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@.str.681 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"direntry\00", [23 x i8] zeroinitializer }, align 32
@.str.682 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xentry\00", [25 x i8] zeroinitializer }, align 32
@.str.683 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.684 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"truncate\00", [23 x i8] zeroinitializer }, align 32
@.str.685 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown/invalid key\00", [44 x i8] zeroinitializer }, align 32
@.str.686 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.687 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.688 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"symlink\00", [24 x i8] zeroinitializer }, align 32
@.str.689 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"blkdev\00", [25 x i8] zeroinitializer }, align 32
@.str.690 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char dev\00", [23 x i8] zeroinitializer }, align 32
@.str.691 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@.str.692 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"socket\00", [25 x i8] zeroinitializer }, align 32
@.str.693 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown/invalid type\00", [43 x i8] zeroinitializer }, align 32
@.str.694 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbg_lock\00", [23 x i8] zeroinitializer }, align 32
@dump_ch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.695, ptr @.str.696, ptr @.str.6, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.695 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09magic          %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.696 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dump_ch\00", [24 x i8] zeroinitializer }, align 32
@dump_ch._entry_ptr = internal global ptr @dump_ch._entry, section ".printk_index", align 4
@dump_ch._entry.697 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.698, ptr @.str.696, ptr @.str.6, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.698 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013\09crc            %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@dump_ch._entry_ptr.699 = internal global ptr @dump_ch._entry.697, section ".printk_index", align 4
@dump_ch._entry.700 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.701, ptr @.str.696, ptr @.str.6, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.701 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013\09node_type      %d (%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@dump_ch._entry_ptr.702 = internal global ptr @dump_ch._entry.700, section ".printk_index", align 4
@dump_ch._entry.703 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.704, ptr @.str.696, ptr @.str.6, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.704 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013\09group_type     %d (%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@dump_ch._entry_ptr.705 = internal global ptr @dump_ch._entry.703, section ".printk_index", align 4
@dump_ch._entry.706 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.707, ptr @.str.696, ptr @.str.6, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.707 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013\09sqnum          %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@dump_ch._entry_ptr.708 = internal global ptr @dump_ch._entry.706, section ".printk_index", align 4
@dump_ch._entry.709 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.710, ptr @.str.696, ptr @.str.6, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.710 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013\09len            %u\0A\00", [42 x i8] zeroinitializer }, align 32
@dump_ch._entry_ptr.711 = internal global ptr @dump_ch._entry.709, section ".printk_index", align 4
@.str.712 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no node group\00", [18 x i8] zeroinitializer }, align 32
@.str.713 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in node group\00", [18 x i8] zeroinitializer }, align 32
@.str.714 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last of node group\00", [45 x i8] zeroinitializer }, align 32
@.str.715 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.716 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R5\00", [29 x i8] zeroinitializer }, align 32
@.str.717 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@.str.718 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown/invalid name hash\00", [38 x i8] zeroinitializer }, align 32
@.str.719 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"simple\00", [25 x i8] zeroinitializer }, align 32
@.str.720 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown/invalid format\00", [41 x i8] zeroinitializer }, align 32
@.str.721 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed, error %d\00", [47 x i8] zeroinitializer }, align 32
@.str.722 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dump of the znode\00", [46 x i8] zeroinitializer }, align 32
@.str.723 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dump of the parent znode\00", [39 x i8] zeroinitializer }, align 32
@.str.724 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"!keys_cmp(c, &zbr1->key, &zbr2->key)\00", [59 x i8] zeroinitializer }, align 32
@.str.725 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"1st entry at %d:%d has key %s\00", [34 x i8] zeroinitializer }, align 32
@.str.726 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"but it should have key %s according to tnc\00", [53 x i8] zeroinitializer }, align 32
@.str.727 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"2nd entry at %d:%d has key %s\00", [34 x i8] zeroinitializer }, align 32
@.str.728 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"2 xent/dent nodes with the same name\00", [59 x i8] zeroinitializer }, align 32
@.str.729 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad order of colliding key %s\00", [34 x i8] zeroinitializer }, align 32
@.str.730 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"first node at %d:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.731 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"second node at %d:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.732 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad leaf length %d (LEB %d:%d)\00", [33 x i8] zeroinitializer }, align 32
@.str.733 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot read leaf node at LEB %d:%d, error %d\00", [51 x i8] zeroinitializer }, align 32
@.str.734 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d while adding inode node\00", [63 x i8] zeroinitializer }, align 32
@.str.735 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected node type %d at LEB %d:%d\00", [59 x i8] zeroinitializer }, align 32
@.str.736 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"too high sequence number, max. is %llu\00", [57 x i8] zeroinitializer }, align 32
@.str.737 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zbr->len >= UBIFS_DATA_NODE_SZ\00", [33 x i8] zeroinitializer }, align 32
@.str.738 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"error %d while processing data node and trying to find inode node %lu\00", [58 x i8] zeroinitializer }, align 32
@.str.739 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"data node at LEB %d:%d is not within inode size %lld\00", [43 x i8] zeroinitializer }, align 32
@.str.740 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zbr->len >= UBIFS_DENT_NODE_SZ\00", [33 x i8] zeroinitializer }, align 32
@.str.741 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"error %d while processing entry node and trying to find inode node %lu\00", [57 x i8] zeroinitializer }, align 32
@.str.742 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"error %d while processing entry node and trying to find parent inode node %lu\00", [50 x i8] zeroinitializer }, align 32
@.str.743 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dump of node at LEB %d:%d\00", [38 x i8] zeroinitializer }, align 32
@.str.744 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"too high inode number, max. is %lu\00", [61 x i8] zeroinitializer }, align 32
@.str.745 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"inode %lu not found in index\00", [35 x i8] zeroinitializer }, align 32
@.str.746 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error %d while looking up inode %lu\00", [60 x i8] zeroinitializer }, align 32
@.str.747 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad node %lu node length %d\00", [36 x i8] zeroinitializer }, align 32
@.str.748 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot read inode node at LEB %d:%d, error %d\00", [50 x i8] zeroinitializer }, align 32
@.str.749 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error %ld while adding inode %lu node\00", [58 x i8] zeroinitializer }, align 32
@.str.750 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"directory inode %lu has %d direntries which refer it, but should be 1\00", [58 x i8] zeroinitializer }, align 32
@.str.751 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"root inode %lu has non-zero (%d) direntries which refer it\00", [37 x i8] zeroinitializer }, align 32
@.str.752 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"directory inode %lu size is %lld, but calculated size is %lld\00", [34 x i8] zeroinitializer }, align 32
@.str.753 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"directory inode %lu nlink is %d, but calculated nlink is %d\00", [36 x i8] zeroinitializer }, align 32
@.str.754 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"inode %lu nlink is %d, but calculated nlink is %d\00", [46 x i8] zeroinitializer }, align 32
@.str.755 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"inode %lu has xattr size %u, but calculated size is %lld\00", [39 x i8] zeroinitializer }, align 32
@.str.756 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"inode %lu has %u xattrs, but calculated count is %lld\00", [42 x i8] zeroinitializer }, align 32
@.str.757 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"inode %lu has xattr names' size %u, but calculated names' size is %lld\00", [57 x i8] zeroinitializer }, align 32
@.str.758 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dump of the inode %lu sitting in LEB %d:%d\00", [53 x i8] zeroinitializer }, align 32
@.str.759 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dbg_is_tst_rcvry(c)\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.760 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failing after %lums\00", [44 x i8] zeroinitializer }, align 32
@.str.761 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failing after %lu calls\00", [40 x i8] zeroinitializer }, align 32
@.str.762 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failing in super block LEB %d\00", [34 x i8] zeroinitializer }, align 32
@.str.763 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failing in master LEB %d\00", [39 x i8] zeroinitializer }, align 32
@.str.764 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failing in log LEB %d\00", [42 x i8] zeroinitializer }, align 32
@.str.765 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failing in LPT LEB %d\00", [42 x i8] zeroinitializer }, align 32
@.str.766 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failing in orphan LEB %d\00", [39 x i8] zeroinitializer }, align 32
@.str.767 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failing in index head LEB %d\00", [35 x i8] zeroinitializer }, align 32
@.str.768 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failing in GC head LEB %d\00", [38 x i8] zeroinitializer }, align 32
@.str.769 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failing in non-bud LEB %d\00", [38 x i8] zeroinitializer }, align 32
@.str.770 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failing in bud LEB %d commit running\00", [59 x i8] zeroinitializer }, align 32
@.str.771 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failing in bud LEB %d commit not running\00", [55 x i8] zeroinitializer }, align 32
@.str.772 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"========== Power cut emulated ==========\00", [55 x i8] zeroinitializer }, align 32
@.str.773 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"filled bytes %u-%u with %s\00", [37 x i8] zeroinitializer }, align 32
@.str.774 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0xFFs\00", [26 x i8] zeroinitializer }, align 32
@.str.775 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"random data\00", [20 x i8] zeroinitializer }, align 32
@.str.778 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.dbg_ntype = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.11, ptr @.str.14, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [44 x i8] zeroinitializer }, align 32
@switch.table.dbg_cstate = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [40 x i8] zeroinitializer }, align 32
@switch.table.dbg_jhead = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_inode = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.686, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.690, ptr @.str.691, ptr @.str.692], [36 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_node = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.11, ptr @.str.14, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [44 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_node.779 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.712, ptr @.str.713, ptr @.str.714], [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_node.780 = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.11, ptr @.str.14, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [44 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_budg = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_lprop = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.483, ptr @.str.484, ptr null, ptr @.str.485, ptr @.str.486, ptr @.str.487], [40 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_lprop.781 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@switch.table.ubifs_dump_lprop.782 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.783 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.784 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.785 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.786 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.787 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.788 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.789 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 99, i32 28 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 105, i32 28 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 110, i32 28 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 120, i32 28 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 124, i32 27 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 125, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 133, i32 10 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 135, i32 10 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 137, i32 10 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 139, i32 10 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 141, i32 10 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 143, i32 10 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 145, i32 10 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 147, i32 10 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 149, i32 10 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 151, i32 10 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 153, i32 10 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 155, i32 10 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 157, i32 10 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 159, i32 10 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 181, i32 10 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 183, i32 10 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 185, i32 10 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 187, i32 10 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 189, i32 10 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 191, i32 10 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 193, i32 10 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 201, i32 10 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 203, i32 10 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 205, i32 10 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 207, i32 10 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 232, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 233, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 234, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 236, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 237, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 238, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 239, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 242, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 245, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 248, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 249, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 250, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 251, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 252, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 253, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 254, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 255, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 257, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 259, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 260, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 261, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 262, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 263, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 268, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 269, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 276, i32 5 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 280, i32 3 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 303, i32 3 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 304, i32 18 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 304, i32 28 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 312, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant [9 x i8] c"dbg_lock\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 329, i32 3 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 340, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 347, i32 3 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 355, i32 3 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 357, i32 3 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 359, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 360, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 362, i32 3 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 364, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 365, i32 3 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 366, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 367, i32 3 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 368, i32 3 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 370, i32 3 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 371, i32 3 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 372, i32 3 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 373, i32 3 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 374, i32 3 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 375, i32 3 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 376, i32 3 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 378, i32 3 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 380, i32 3 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 381, i32 3 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 382, i32 3 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 383, i32 3 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 384, i32 3 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 391, i32 3 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 393, i32 3 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 395, i32 3 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 396, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 397, i32 3 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 398, i32 3 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 399, i32 3 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 400, i32 3 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 401, i32 3 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 402, i32 3 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 403, i32 3 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 405, i32 3 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 406, i32 3 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 407, i32 3 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 408, i32 3 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 409, i32 3 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 410, i32 3 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 411, i32 3 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 412, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 413, i32 3 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 414, i32 3 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 415, i32 3 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 416, i32 3 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 417, i32 3 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 419, i32 3 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 421, i32 3 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 423, i32 3 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 425, i32 3 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 433, i32 3 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 434, i32 3 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 435, i32 3 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 443, i32 3 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 445, i32 3 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 447, i32 3 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 449, i32 3 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 450, i32 3 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 453, i32 3 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 456, i32 3 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 459, i32 3 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 460, i32 3 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 461, i32 3 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 462, i32 3 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 463, i32 3 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 464, i32 3 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 465, i32 3 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 466, i32 3 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 468, i32 3 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 478, i32 3 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 480, i32 3 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 482, i32 3 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 483, i32 3 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 484, i32 3 }
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 488, i32 4 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 491, i32 5 }
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 494, i32 3 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 503, i32 3 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 505, i32 3 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 506, i32 3 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 508, i32 3 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 510, i32 3 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 512, i32 28 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 521, i32 3 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 522, i32 3 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 524, i32 3 }
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 536, i32 3 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 537, i32 3 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 538, i32 3 }
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 545, i32 4 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 559, i32 3 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 562, i32 3 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 565, i32 3 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 567, i32 4 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 576, i32 3 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 586, i32 2 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 588, i32 2 }
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 590, i32 2 }
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 592, i32 2 }
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 594, i32 2 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 595, i32 2 }
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 603, i32 2 }
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 605, i32 2 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 607, i32 2 }
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 622, i32 2 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 625, i32 2 }
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 627, i32 2 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 629, i32 2 }
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 631, i32 2 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 632, i32 2 }
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 643, i32 2 }
@___asan_gen_.1728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 645, i32 2 }
@___asan_gen_.1734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 649, i32 2 }
@___asan_gen_.1740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 654, i32 4 }
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 659, i32 3 }
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 662, i32 3 }
@___asan_gen_.1758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 664, i32 3 }
@___asan_gen_.1764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 666, i32 2 }
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 672, i32 2 }
@___asan_gen_.1776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 673, i32 2 }
@___asan_gen_.1785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 693, i32 3 }
@___asan_gen_.1791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 697, i32 3 }
@___asan_gen_.1797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 703, i32 4 }
@___asan_gen_.1803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 705, i32 4 }
@___asan_gen_.1806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 712, i32 9 }
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 715, i32 9 }
@___asan_gen_.1812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 718, i32 9 }
@___asan_gen_.1815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 723, i32 9 }
@___asan_gen_.1818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 726, i32 9 }
@___asan_gen_.1821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 729, i32 9 }
@___asan_gen_.1824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 732, i32 9 }
@___asan_gen_.1827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 735, i32 9 }
@___asan_gen_.1833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 742, i32 3 }
@___asan_gen_.1839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 757, i32 6 }
@___asan_gen_.1845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 762, i32 5 }
@___asan_gen_.1851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 767, i32 3 }
@___asan_gen_.1857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 768, i32 2 }
@___asan_gen_.1866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 777, i32 2 }
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 784, i32 17 }
@___asan_gen_.1875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 790, i32 2 }
@___asan_gen_.1884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 798, i32 2 }
@___asan_gen_.1890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 799, i32 2 }
@___asan_gen_.1896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 800, i32 2 }
@___asan_gen_.1902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 801, i32 2 }
@___asan_gen_.1908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 802, i32 2 }
@___asan_gen_.1914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 803, i32 2 }
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 804, i32 2 }
@___asan_gen_.1926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 805, i32 2 }
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 806, i32 2 }
@___asan_gen_.1938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 807, i32 2 }
@___asan_gen_.1944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 808, i32 2 }
@___asan_gen_.1950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 809, i32 2 }
@___asan_gen_.1956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 810, i32 2 }
@___asan_gen_.1962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 811, i32 2 }
@___asan_gen_.1968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 812, i32 2 }
@___asan_gen_.1974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 813, i32 2 }
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 814, i32 2 }
@___asan_gen_.1986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 815, i32 2 }
@___asan_gen_.1992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 816, i32 2 }
@___asan_gen_.1998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 817, i32 2 }
@___asan_gen_.2004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 818, i32 2 }
@___asan_gen_.2010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 820, i32 2 }
@___asan_gen_.2016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 822, i32 3 }
@___asan_gen_.2022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 825, i32 3 }
@___asan_gen_.2031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 837, i32 2 }
@___asan_gen_.2034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 841, i32 16 }
@___asan_gen_.2037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 847, i32 16 }
@___asan_gen_.2043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 851, i32 2 }
@___asan_gen_.2049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 856, i32 3 }
@___asan_gen_.2055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 861, i32 2 }
@___asan_gen_.2064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 882, i32 2 }
@___asan_gen_.2070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 891, i32 2 }
@___asan_gen_.2076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 895, i32 4 }
@___asan_gen_.2082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 900, i32 4 }
@___asan_gen_.2091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 912, i32 2 }
@___asan_gen_.2097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 917, i32 3 }
@___asan_gen_.2103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 921, i32 2 }
@___asan_gen_.2112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 929, i32 2 }
@___asan_gen_.2118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 930, i32 2 }
@___asan_gen_.2124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 932, i32 2 }
@___asan_gen_.2130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 937, i32 3 }
@___asan_gen_.2139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 947, i32 2 }
@___asan_gen_.2145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 948, i32 2 }
@___asan_gen_.2151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 951, i32 2 }
@___asan_gen_.2154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 955, i32 4 }
@___asan_gen_.2160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 960, i32 2 }
@___asan_gen_.2163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1054, i32 16 }
@___asan_gen_.2166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1062, i32 15 }
@___asan_gen_.2169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1064, i32 15 }
@___asan_gen_.2172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1066, i32 15 }
@___asan_gen_.2175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1067, i32 15 }
@___asan_gen_.2178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1070, i32 15 }
@___asan_gen_.2181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1099, i32 16 }
@___asan_gen_.2184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1101, i32 16 }
@___asan_gen_.2187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1163, i32 16 }
@___asan_gen_.2190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1171, i32 16 }
@___asan_gen_.2193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1498, i32 2 }
@___asan_gen_.2196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1541, i32 18 }
@___asan_gen_.2199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1543, i32 18 }
@___asan_gen_.2202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1552, i32 17 }
@___asan_gen_.2205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1558, i32 17 }
@___asan_gen_.2208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1630, i32 18 }
@___asan_gen_.2211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1641, i32 19 }
@___asan_gen_.2214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1697, i32 15 }
@___asan_gen_.2217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1744, i32 16 }
@___asan_gen_.2220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1749, i32 16 }
@___asan_gen_.2223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2306, i32 15 }
@___asan_gen_.2226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2337, i32 17 }
@___asan_gen_.2229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2353, i32 17 }
@___asan_gen_.2232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2362, i32 17 }
@___asan_gen_.2235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2366, i32 17 }
@___asan_gen_.2238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2417, i32 17 }
@___asan_gen_.2241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2427, i32 18 }
@___asan_gen_.2244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2452, i32 17 }
@___asan_gen_.2247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2461, i32 15 }
@___asan_gen_.2250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2463, i32 15 }
@___asan_gen_.2253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2600, i32 17 }
@___asan_gen_.2256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2825, i32 55 }
@___asan_gen_.2257 = private unnamed_addr constant [12 x i8] c"dfs_rootdir\00", align 1
@___asan_gen_.2259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2664, i32 23 }
@___asan_gen_.2262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2835, i32 10 }
@___asan_gen_.2263 = private unnamed_addr constant [9 x i8] c"dfs_fops\00", align 1
@___asan_gen_.2265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2800, i32 37 }
@___asan_gen_.2268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2839, i32 10 }
@___asan_gen_.2271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2843, i32 10 }
@___asan_gen_.2274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2847, i32 10 }
@___asan_gen_.2277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2851, i32 10 }
@___asan_gen_.2280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2855, i32 10 }
@___asan_gen_.2283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2859, i32 10 }
@___asan_gen_.2286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2863, i32 10 }
@___asan_gen_.2289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2867, i32 10 }
@___asan_gen_.2292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2871, i32 10 }
@___asan_gen_.2295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2964, i32 10 }
@___asan_gen_.2296 = private unnamed_addr constant [16 x i8] c"dfs_global_fops\00", align 1
@___asan_gen_.2298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2946, i32 37 }
@___asan_gen_.2299 = private unnamed_addr constant [12 x i8] c"dfs_chk_gen\00", align 1
@___asan_gen_.2301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2887, i32 23 }
@___asan_gen_.2302 = private unnamed_addr constant [14 x i8] c"dfs_chk_index\00", align 1
@___asan_gen_.2304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2888, i32 23 }
@___asan_gen_.2305 = private unnamed_addr constant [13 x i8] c"dfs_chk_orph\00", align 1
@___asan_gen_.2307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2889, i32 23 }
@___asan_gen_.2308 = private unnamed_addr constant [15 x i8] c"dfs_chk_lprops\00", align 1
@___asan_gen_.2310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2890, i32 23 }
@___asan_gen_.2311 = private unnamed_addr constant [11 x i8] c"dfs_chk_fs\00", align 1
@___asan_gen_.2313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2891, i32 23 }
@___asan_gen_.2314 = private unnamed_addr constant [14 x i8] c"dfs_tst_rcvry\00", align 1
@___asan_gen_.2316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2892, i32 23 }
@___asan_gen_.2319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 3003, i32 15 }
@___asan_gen_.2320 = private unnamed_addr constant [10 x i8] c"ubifs_dbg\00", align 1
@___asan_gen_.2322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2885, i32 32 }
@___asan_gen_.2325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 54, i32 10 }
@___asan_gen_.2328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 56, i32 10 }
@___asan_gen_.2331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 58, i32 10 }
@___asan_gen_.2334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 60, i32 10 }
@___asan_gen_.2337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 62, i32 10 }
@___asan_gen_.2340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 64, i32 10 }
@___asan_gen_.2343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 72, i32 10 }
@___asan_gen_.2346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 74, i32 10 }
@___asan_gen_.2349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 76, i32 10 }
@___asan_gen_.2352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 78, i32 10 }
@___asan_gen_.2355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 80, i32 10 }
@___asan_gen_.2358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 82, i32 10 }
@___asan_gen_.2361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 84, i32 10 }
@___asan_gen_.2364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 86, i32 10 }
@___asan_gen_.2367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 26, i32 8 }
@___asan_gen_.2376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 213, i32 2 }
@___asan_gen_.2382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 214, i32 2 }
@___asan_gen_.2388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 215, i32 2 }
@___asan_gen_.2394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 217, i32 2 }
@___asan_gen_.2400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 219, i32 2 }
@___asan_gen_.2401 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 221, i32 2 }
@___asan_gen_.2409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 167, i32 10 }
@___asan_gen_.2412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 169, i32 10 }
@___asan_gen_.2415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 171, i32 10 }
@___asan_gen_.2418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 173, i32 10 }
@___asan_gen_.2421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 42, i32 10 }
@___asan_gen_.2424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 44, i32 10 }
@___asan_gen_.2427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 46, i32 10 }
@___asan_gen_.2430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 32, i32 10 }
@___asan_gen_.2433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 34, i32 10 }
@___asan_gen_.2436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1470, i32 15 }
@___asan_gen_.2439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1471, i32 15 }
@___asan_gen_.2442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1474, i32 16 }
@___asan_gen_.2445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1202, i32 2 }
@___asan_gen_.2448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1230, i32 16 }
@___asan_gen_.2451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1233, i32 16 }
@___asan_gen_.2454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1242, i32 16 }
@___asan_gen_.2457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1261, i32 16 }
@___asan_gen_.2460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1263, i32 16 }
@___asan_gen_.2463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1266, i32 15 }
@___asan_gen_.2466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1268, i32 15 }
@___asan_gen_.2469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2007, i32 16 }
@___asan_gen_.2472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2018, i32 16 }
@___asan_gen_.2475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2028, i32 17 }
@___asan_gen_.2478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2036, i32 16 }
@___asan_gen_.2481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2044, i32 16 }
@___asan_gen_.2484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2054, i32 3 }
@___asan_gen_.2487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2064, i32 17 }
@___asan_gen_.2490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2074, i32 17 }
@___asan_gen_.2493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2084, i32 3 }
@___asan_gen_.2496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2098, i32 17 }
@___asan_gen_.2499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2110, i32 17 }
@___asan_gen_.2502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2133, i32 15 }
@___asan_gen_.2505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1836, i32 16 }
@___asan_gen_.2508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1943, i32 16 }
@___asan_gen_.2511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1946, i32 16 }
@___asan_gen_.2514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1953, i32 16 }
@___asan_gen_.2517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1964, i32 16 }
@___asan_gen_.2520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 1973, i32 16 }
@___asan_gen_.2523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2184, i32 18 }
@___asan_gen_.2526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2191, i32 18 }
@___asan_gen_.2529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2197, i32 18 }
@___asan_gen_.2532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2203, i32 18 }
@___asan_gen_.2535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2210, i32 18 }
@___asan_gen_.2538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2217, i32 17 }
@___asan_gen_.2541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2223, i32 17 }
@___asan_gen_.2544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2229, i32 17 }
@___asan_gen_.2547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2265, i32 15 }
@___asan_gen_.2550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2478, i32 2 }
@___asan_gen_.2553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2491, i32 19 }
@___asan_gen_.2556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2497, i32 19 }
@___asan_gen_.2559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2515, i32 17 }
@___asan_gen_.2562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2519, i32 17 }
@___asan_gen_.2565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2525, i32 17 }
@___asan_gen_.2568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2531, i32 17 }
@___asan_gen_.2571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2537, i32 17 }
@___asan_gen_.2574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2541, i32 17 }
@___asan_gen_.2577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2545, i32 17 }
@___asan_gen_.2580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2550, i32 17 }
@___asan_gen_.2583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2555, i32 17 }
@___asan_gen_.2586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2559, i32 17 }
@___asan_gen_.2589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2563, i32 16 }
@___asan_gen_.2592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2578, i32 16 }
@___asan_gen_.2595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2579, i32 12 }
@___asan_gen_.2597 = private constant [20 x i8] c"../fs/ubifs/debug.c\00", align 1
@___asan_gen_.2598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2597, i32 2579, i32 22 }
@___asan_gen_.2599 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2600 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.2601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2600, i32 156, i32 2 }
@___asan_gen_.2602 = private unnamed_addr constant [23 x i8] c"switch.table.dbg_ntype\00", align 1
@___asan_gen_.2603 = private unnamed_addr constant [24 x i8] c"switch.table.dbg_cstate\00", align 1
@___asan_gen_.2604 = private unnamed_addr constant [23 x i8] c"switch.table.dbg_jhead\00", align 1
@___asan_gen_.2605 = private unnamed_addr constant [30 x i8] c"switch.table.ubifs_dump_inode\00", align 1
@___asan_gen_.2606 = private unnamed_addr constant [29 x i8] c"switch.table.ubifs_dump_node\00", align 1
@___asan_gen_.2607 = private unnamed_addr constant [33 x i8] c"switch.table.ubifs_dump_node.779\00", align 1
@___asan_gen_.2608 = private unnamed_addr constant [33 x i8] c"switch.table.ubifs_dump_node.780\00", align 1
@___asan_gen_.2609 = private unnamed_addr constant [29 x i8] c"switch.table.ubifs_dump_budg\00", align 1
@___asan_gen_.2610 = private unnamed_addr constant [30 x i8] c"switch.table.ubifs_dump_lprop\00", align 1
@___asan_gen_.2611 = private unnamed_addr constant [34 x i8] c"switch.table.ubifs_dump_lprop.781\00", align 1
@___asan_gen_.2612 = private unnamed_addr constant [34 x i8] c"switch.table.ubifs_dump_lprop.782\00", align 1
@llvm.compiler.used = appending global [827 x ptr] [ptr @dump_ch._entry, ptr @dump_ch._entry.697, ptr @dump_ch._entry.700, ptr @dump_ch._entry.703, ptr @dump_ch._entry.706, ptr @dump_ch._entry.709, ptr @dump_ch._entry_ptr, ptr @dump_ch._entry_ptr.699, ptr @dump_ch._entry_ptr.702, ptr @dump_ch._entry_ptr.705, ptr @dump_ch._entry_ptr.708, ptr @dump_ch._entry_ptr.711, ptr @ubifs_dump_budg._entry, ptr @ubifs_dump_budg._entry.424, ptr @ubifs_dump_budg._entry.427, ptr @ubifs_dump_budg._entry.430, ptr @ubifs_dump_budg._entry.433, ptr @ubifs_dump_budg._entry.436, ptr @ubifs_dump_budg._entry.439, ptr @ubifs_dump_budg._entry.442, ptr @ubifs_dump_budg._entry.445, ptr @ubifs_dump_budg._entry.448, ptr @ubifs_dump_budg._entry.451, ptr @ubifs_dump_budg._entry.454, ptr @ubifs_dump_budg._entry.457, ptr @ubifs_dump_budg._entry.460, ptr @ubifs_dump_budg._entry.463, ptr @ubifs_dump_budg._entry.466, ptr @ubifs_dump_budg._entry_ptr, ptr @ubifs_dump_budg._entry_ptr.426, ptr @ubifs_dump_budg._entry_ptr.429, ptr @ubifs_dump_budg._entry_ptr.432, ptr @ubifs_dump_budg._entry_ptr.435, ptr @ubifs_dump_budg._entry_ptr.438, ptr @ubifs_dump_budg._entry_ptr.441, ptr @ubifs_dump_budg._entry_ptr.444, ptr @ubifs_dump_budg._entry_ptr.447, ptr @ubifs_dump_budg._entry_ptr.450, ptr @ubifs_dump_budg._entry_ptr.453, ptr @ubifs_dump_budg._entry_ptr.456, ptr @ubifs_dump_budg._entry_ptr.459, ptr @ubifs_dump_budg._entry_ptr.462, ptr @ubifs_dump_budg._entry_ptr.465, ptr @ubifs_dump_budg._entry_ptr.468, ptr @ubifs_dump_budget_req._entry, ptr @ubifs_dump_budget_req._entry.399, ptr @ubifs_dump_budget_req._entry.402, ptr @ubifs_dump_budget_req._entry.405, ptr @ubifs_dump_budget_req._entry.408, ptr @ubifs_dump_budget_req._entry.411, ptr @ubifs_dump_budget_req._entry_ptr, ptr @ubifs_dump_budget_req._entry_ptr.401, ptr @ubifs_dump_budget_req._entry_ptr.404, ptr @ubifs_dump_budget_req._entry_ptr.407, ptr @ubifs_dump_budget_req._entry_ptr.410, ptr @ubifs_dump_budget_req._entry_ptr.413, ptr @ubifs_dump_heap._entry, ptr @ubifs_dump_heap._entry.606, ptr @ubifs_dump_heap._entry.609, ptr @ubifs_dump_heap._entry_ptr, ptr @ubifs_dump_heap._entry_ptr.608, ptr @ubifs_dump_heap._entry_ptr.611, ptr @ubifs_dump_inode._entry, ptr @ubifs_dump_inode._entry.100, ptr @ubifs_dump_inode._entry.104, ptr @ubifs_dump_inode._entry.107, ptr @ubifs_dump_inode._entry.34, ptr @ubifs_dump_inode._entry.37, ptr @ubifs_dump_inode._entry.40, ptr @ubifs_dump_inode._entry.43, ptr @ubifs_dump_inode._entry.46, ptr @ubifs_dump_inode._entry.49, ptr @ubifs_dump_inode._entry.52, ptr @ubifs_dump_inode._entry.55, ptr @ubifs_dump_inode._entry.58, ptr @ubifs_dump_inode._entry.61, ptr @ubifs_dump_inode._entry.64, ptr @ubifs_dump_inode._entry.67, ptr @ubifs_dump_inode._entry.70, ptr @ubifs_dump_inode._entry.73, ptr @ubifs_dump_inode._entry.76, ptr @ubifs_dump_inode._entry.79, ptr @ubifs_dump_inode._entry.82, ptr @ubifs_dump_inode._entry.85, ptr @ubifs_dump_inode._entry.88, ptr @ubifs_dump_inode._entry.91, ptr @ubifs_dump_inode._entry.94, ptr @ubifs_dump_inode._entry.97, ptr @ubifs_dump_inode._entry_ptr, ptr @ubifs_dump_inode._entry_ptr.102, ptr @ubifs_dump_inode._entry_ptr.106, ptr @ubifs_dump_inode._entry_ptr.109, ptr @ubifs_dump_inode._entry_ptr.36, ptr @ubifs_dump_inode._entry_ptr.39, ptr @ubifs_dump_inode._entry_ptr.42, ptr @ubifs_dump_inode._entry_ptr.45, ptr @ubifs_dump_inode._entry_ptr.48, ptr @ubifs_dump_inode._entry_ptr.51, ptr @ubifs_dump_inode._entry_ptr.54, ptr @ubifs_dump_inode._entry_ptr.57, ptr @ubifs_dump_inode._entry_ptr.60, ptr @ubifs_dump_inode._entry_ptr.63, ptr @ubifs_dump_inode._entry_ptr.66, ptr @ubifs_dump_inode._entry_ptr.69, ptr @ubifs_dump_inode._entry_ptr.72, ptr @ubifs_dump_inode._entry_ptr.75, ptr @ubifs_dump_inode._entry_ptr.78, ptr @ubifs_dump_inode._entry_ptr.81, ptr @ubifs_dump_inode._entry_ptr.84, ptr @ubifs_dump_inode._entry_ptr.87, ptr @ubifs_dump_inode._entry_ptr.90, ptr @ubifs_dump_inode._entry_ptr.93, ptr @ubifs_dump_inode._entry_ptr.96, ptr @ubifs_dump_inode._entry_ptr.99, ptr @ubifs_dump_leb._entry, ptr @ubifs_dump_leb._entry.584, ptr @ubifs_dump_leb._entry.587, ptr @ubifs_dump_leb._entry.590, ptr @ubifs_dump_leb._entry_ptr, ptr @ubifs_dump_leb._entry_ptr.586, ptr @ubifs_dump_leb._entry_ptr.589, ptr @ubifs_dump_leb._entry_ptr.592, ptr @ubifs_dump_lprop._entry, ptr @ubifs_dump_lprop._entry.471, ptr @ubifs_dump_lprop._entry.474, ptr @ubifs_dump_lprop._entry.477, ptr @ubifs_dump_lprop._entry.488, ptr @ubifs_dump_lprop._entry.491, ptr @ubifs_dump_lprop._entry.494, ptr @ubifs_dump_lprop._entry.497, ptr @ubifs_dump_lprop._entry.500, ptr @ubifs_dump_lprop._entry_ptr, ptr @ubifs_dump_lprop._entry_ptr.473, ptr @ubifs_dump_lprop._entry_ptr.476, ptr @ubifs_dump_lprop._entry_ptr.479, ptr @ubifs_dump_lprop._entry_ptr.490, ptr @ubifs_dump_lprop._entry_ptr.493, ptr @ubifs_dump_lprop._entry_ptr.496, ptr @ubifs_dump_lprop._entry_ptr.499, ptr @ubifs_dump_lprop._entry_ptr.502, ptr @ubifs_dump_lprops._entry, ptr @ubifs_dump_lprops._entry.506, ptr @ubifs_dump_lprops._entry_ptr, ptr @ubifs_dump_lprops._entry_ptr.508, ptr @ubifs_dump_lpt_info._entry, ptr @ubifs_dump_lpt_info._entry.511, ptr @ubifs_dump_lpt_info._entry.514, ptr @ubifs_dump_lpt_info._entry.517, ptr @ubifs_dump_lpt_info._entry.520, ptr @ubifs_dump_lpt_info._entry.523, ptr @ubifs_dump_lpt_info._entry.526, ptr @ubifs_dump_lpt_info._entry.529, ptr @ubifs_dump_lpt_info._entry.532, ptr @ubifs_dump_lpt_info._entry.535, ptr @ubifs_dump_lpt_info._entry.538, ptr @ubifs_dump_lpt_info._entry.541, ptr @ubifs_dump_lpt_info._entry.544, ptr @ubifs_dump_lpt_info._entry.547, ptr @ubifs_dump_lpt_info._entry.550, ptr @ubifs_dump_lpt_info._entry.553, ptr @ubifs_dump_lpt_info._entry.556, ptr @ubifs_dump_lpt_info._entry.559, ptr @ubifs_dump_lpt_info._entry.562, ptr @ubifs_dump_lpt_info._entry.565, ptr @ubifs_dump_lpt_info._entry.568, ptr @ubifs_dump_lpt_info._entry.571, ptr @ubifs_dump_lpt_info._entry.574, ptr @ubifs_dump_lpt_info._entry.577, ptr @ubifs_dump_lpt_info._entry_ptr, ptr @ubifs_dump_lpt_info._entry_ptr.513, ptr @ubifs_dump_lpt_info._entry_ptr.516, ptr @ubifs_dump_lpt_info._entry_ptr.519, ptr @ubifs_dump_lpt_info._entry_ptr.522, ptr @ubifs_dump_lpt_info._entry_ptr.525, ptr @ubifs_dump_lpt_info._entry_ptr.528, ptr @ubifs_dump_lpt_info._entry_ptr.531, ptr @ubifs_dump_lpt_info._entry_ptr.534, ptr @ubifs_dump_lpt_info._entry_ptr.537, ptr @ubifs_dump_lpt_info._entry_ptr.540, ptr @ubifs_dump_lpt_info._entry_ptr.543, ptr @ubifs_dump_lpt_info._entry_ptr.546, ptr @ubifs_dump_lpt_info._entry_ptr.549, ptr @ubifs_dump_lpt_info._entry_ptr.552, ptr @ubifs_dump_lpt_info._entry_ptr.555, ptr @ubifs_dump_lpt_info._entry_ptr.558, ptr @ubifs_dump_lpt_info._entry_ptr.561, ptr @ubifs_dump_lpt_info._entry_ptr.564, ptr @ubifs_dump_lpt_info._entry_ptr.567, ptr @ubifs_dump_lpt_info._entry_ptr.570, ptr @ubifs_dump_lpt_info._entry_ptr.573, ptr @ubifs_dump_lpt_info._entry_ptr.576, ptr @ubifs_dump_lpt_info._entry_ptr.579, ptr @ubifs_dump_lstats._entry, ptr @ubifs_dump_lstats._entry.416, ptr @ubifs_dump_lstats._entry.419, ptr @ubifs_dump_lstats._entry_ptr, ptr @ubifs_dump_lstats._entry_ptr.418, ptr @ubifs_dump_lstats._entry_ptr.421, ptr @ubifs_dump_node._entry, ptr @ubifs_dump_node._entry.114, ptr @ubifs_dump_node._entry.117, ptr @ubifs_dump_node._entry.120, ptr @ubifs_dump_node._entry.123, ptr @ubifs_dump_node._entry.126, ptr @ubifs_dump_node._entry.129, ptr @ubifs_dump_node._entry.132, ptr @ubifs_dump_node._entry.135, ptr @ubifs_dump_node._entry.138, ptr @ubifs_dump_node._entry.141, ptr @ubifs_dump_node._entry.144, ptr @ubifs_dump_node._entry.147, ptr @ubifs_dump_node._entry.150, ptr @ubifs_dump_node._entry.153, ptr @ubifs_dump_node._entry.156, ptr @ubifs_dump_node._entry.159, ptr @ubifs_dump_node._entry.162, ptr @ubifs_dump_node._entry.165, ptr @ubifs_dump_node._entry.168, ptr @ubifs_dump_node._entry.171, ptr @ubifs_dump_node._entry.174, ptr @ubifs_dump_node._entry.177, ptr @ubifs_dump_node._entry.180, ptr @ubifs_dump_node._entry.183, ptr @ubifs_dump_node._entry.186, ptr @ubifs_dump_node._entry.189, ptr @ubifs_dump_node._entry.192, ptr @ubifs_dump_node._entry.195, ptr @ubifs_dump_node._entry.198, ptr @ubifs_dump_node._entry.201, ptr @ubifs_dump_node._entry.203, ptr @ubifs_dump_node._entry.206, ptr @ubifs_dump_node._entry.209, ptr @ubifs_dump_node._entry.212, ptr @ubifs_dump_node._entry.215, ptr @ubifs_dump_node._entry.218, ptr @ubifs_dump_node._entry.221, ptr @ubifs_dump_node._entry.224, ptr @ubifs_dump_node._entry.227, ptr @ubifs_dump_node._entry.230, ptr @ubifs_dump_node._entry.233, ptr @ubifs_dump_node._entry.236, ptr @ubifs_dump_node._entry.239, ptr @ubifs_dump_node._entry.242, ptr @ubifs_dump_node._entry.245, ptr @ubifs_dump_node._entry.248, ptr @ubifs_dump_node._entry.251, ptr @ubifs_dump_node._entry.254, ptr @ubifs_dump_node._entry.256, ptr @ubifs_dump_node._entry.259, ptr @ubifs_dump_node._entry.262, ptr @ubifs_dump_node._entry.265, ptr @ubifs_dump_node._entry.268, ptr @ubifs_dump_node._entry.271, ptr @ubifs_dump_node._entry.274, ptr @ubifs_dump_node._entry.277, ptr @ubifs_dump_node._entry.280, ptr @ubifs_dump_node._entry.283, ptr @ubifs_dump_node._entry.286, ptr @ubifs_dump_node._entry.289, ptr @ubifs_dump_node._entry.291, ptr @ubifs_dump_node._entry.293, ptr @ubifs_dump_node._entry.295, ptr @ubifs_dump_node._entry.298, ptr @ubifs_dump_node._entry.301, ptr @ubifs_dump_node._entry.304, ptr @ubifs_dump_node._entry.306, ptr @ubifs_dump_node._entry.308, ptr @ubifs_dump_node._entry.311, ptr @ubifs_dump_node._entry.313, ptr @ubifs_dump_node._entry.315, ptr @ubifs_dump_node._entry.317, ptr @ubifs_dump_node._entry.319, ptr @ubifs_dump_node._entry.322, ptr @ubifs_dump_node._entry.325, ptr @ubifs_dump_node._entry.327, ptr @ubifs_dump_node._entry.330, ptr @ubifs_dump_node._entry.333, ptr @ubifs_dump_node._entry.336, ptr @ubifs_dump_node._entry.339, ptr @ubifs_dump_node._entry.342, ptr @ubifs_dump_node._entry.345, ptr @ubifs_dump_node._entry.348, ptr @ubifs_dump_node._entry.350, ptr @ubifs_dump_node._entry.353, ptr @ubifs_dump_node._entry.356, ptr @ubifs_dump_node._entry.359, ptr @ubifs_dump_node._entry.363, ptr @ubifs_dump_node._entry.366, ptr @ubifs_dump_node._entry.369, ptr @ubifs_dump_node._entry.372, ptr @ubifs_dump_node._entry.375, ptr @ubifs_dump_node._entry.378, ptr @ubifs_dump_node._entry.381, ptr @ubifs_dump_node._entry.384, ptr @ubifs_dump_node._entry.386, ptr @ubifs_dump_node._entry.389, ptr @ubifs_dump_node._entry.392, ptr @ubifs_dump_node._entry.395, ptr @ubifs_dump_node._entry_ptr, ptr @ubifs_dump_node._entry_ptr.116, ptr @ubifs_dump_node._entry_ptr.119, ptr @ubifs_dump_node._entry_ptr.122, ptr @ubifs_dump_node._entry_ptr.125, ptr @ubifs_dump_node._entry_ptr.128, ptr @ubifs_dump_node._entry_ptr.131, ptr @ubifs_dump_node._entry_ptr.134, ptr @ubifs_dump_node._entry_ptr.137, ptr @ubifs_dump_node._entry_ptr.140, ptr @ubifs_dump_node._entry_ptr.143, ptr @ubifs_dump_node._entry_ptr.146, ptr @ubifs_dump_node._entry_ptr.149, ptr @ubifs_dump_node._entry_ptr.152, ptr @ubifs_dump_node._entry_ptr.155, ptr @ubifs_dump_node._entry_ptr.158, ptr @ubifs_dump_node._entry_ptr.161, ptr @ubifs_dump_node._entry_ptr.164, ptr @ubifs_dump_node._entry_ptr.167, ptr @ubifs_dump_node._entry_ptr.170, ptr @ubifs_dump_node._entry_ptr.173, ptr @ubifs_dump_node._entry_ptr.176, ptr @ubifs_dump_node._entry_ptr.179, ptr @ubifs_dump_node._entry_ptr.182, ptr @ubifs_dump_node._entry_ptr.185, ptr @ubifs_dump_node._entry_ptr.188, ptr @ubifs_dump_node._entry_ptr.191, ptr @ubifs_dump_node._entry_ptr.194, ptr @ubifs_dump_node._entry_ptr.197, ptr @ubifs_dump_node._entry_ptr.200, ptr @ubifs_dump_node._entry_ptr.202, ptr @ubifs_dump_node._entry_ptr.205, ptr @ubifs_dump_node._entry_ptr.208, ptr @ubifs_dump_node._entry_ptr.211, ptr @ubifs_dump_node._entry_ptr.214, ptr @ubifs_dump_node._entry_ptr.217, ptr @ubifs_dump_node._entry_ptr.220, ptr @ubifs_dump_node._entry_ptr.223, ptr @ubifs_dump_node._entry_ptr.226, ptr @ubifs_dump_node._entry_ptr.229, ptr @ubifs_dump_node._entry_ptr.232, ptr @ubifs_dump_node._entry_ptr.235, ptr @ubifs_dump_node._entry_ptr.238, ptr @ubifs_dump_node._entry_ptr.241, ptr @ubifs_dump_node._entry_ptr.244, ptr @ubifs_dump_node._entry_ptr.247, ptr @ubifs_dump_node._entry_ptr.250, ptr @ubifs_dump_node._entry_ptr.253, ptr @ubifs_dump_node._entry_ptr.255, ptr @ubifs_dump_node._entry_ptr.258, ptr @ubifs_dump_node._entry_ptr.261, ptr @ubifs_dump_node._entry_ptr.264, ptr @ubifs_dump_node._entry_ptr.267, ptr @ubifs_dump_node._entry_ptr.270, ptr @ubifs_dump_node._entry_ptr.273, ptr @ubifs_dump_node._entry_ptr.276, ptr @ubifs_dump_node._entry_ptr.279, ptr @ubifs_dump_node._entry_ptr.282, ptr @ubifs_dump_node._entry_ptr.285, ptr @ubifs_dump_node._entry_ptr.288, ptr @ubifs_dump_node._entry_ptr.290, ptr @ubifs_dump_node._entry_ptr.292, ptr @ubifs_dump_node._entry_ptr.294, ptr @ubifs_dump_node._entry_ptr.297, ptr @ubifs_dump_node._entry_ptr.300, ptr @ubifs_dump_node._entry_ptr.303, ptr @ubifs_dump_node._entry_ptr.305, ptr @ubifs_dump_node._entry_ptr.307, ptr @ubifs_dump_node._entry_ptr.310, ptr @ubifs_dump_node._entry_ptr.312, ptr @ubifs_dump_node._entry_ptr.314, ptr @ubifs_dump_node._entry_ptr.316, ptr @ubifs_dump_node._entry_ptr.318, ptr @ubifs_dump_node._entry_ptr.321, ptr @ubifs_dump_node._entry_ptr.324, ptr @ubifs_dump_node._entry_ptr.326, ptr @ubifs_dump_node._entry_ptr.329, ptr @ubifs_dump_node._entry_ptr.332, ptr @ubifs_dump_node._entry_ptr.335, ptr @ubifs_dump_node._entry_ptr.338, ptr @ubifs_dump_node._entry_ptr.341, ptr @ubifs_dump_node._entry_ptr.344, ptr @ubifs_dump_node._entry_ptr.347, ptr @ubifs_dump_node._entry_ptr.349, ptr @ubifs_dump_node._entry_ptr.352, ptr @ubifs_dump_node._entry_ptr.355, ptr @ubifs_dump_node._entry_ptr.358, ptr @ubifs_dump_node._entry_ptr.361, ptr @ubifs_dump_node._entry_ptr.365, ptr @ubifs_dump_node._entry_ptr.368, ptr @ubifs_dump_node._entry_ptr.371, ptr @ubifs_dump_node._entry_ptr.374, ptr @ubifs_dump_node._entry_ptr.377, ptr @ubifs_dump_node._entry_ptr.380, ptr @ubifs_dump_node._entry_ptr.383, ptr @ubifs_dump_node._entry_ptr.385, ptr @ubifs_dump_node._entry_ptr.388, ptr @ubifs_dump_node._entry_ptr.391, ptr @ubifs_dump_node._entry_ptr.394, ptr @ubifs_dump_node._entry_ptr.396, ptr @ubifs_dump_pnode._entry, ptr @ubifs_dump_pnode._entry.614, ptr @ubifs_dump_pnode._entry.617, ptr @ubifs_dump_pnode._entry.620, ptr @ubifs_dump_pnode._entry_ptr, ptr @ubifs_dump_pnode._entry_ptr.616, ptr @ubifs_dump_pnode._entry_ptr.619, ptr @ubifs_dump_pnode._entry_ptr.622, ptr @ubifs_dump_tnc._entry, ptr @ubifs_dump_tnc._entry.625, ptr @ubifs_dump_tnc._entry.628, ptr @ubifs_dump_tnc._entry.631, ptr @ubifs_dump_tnc._entry.633, ptr @ubifs_dump_tnc._entry_ptr, ptr @ubifs_dump_tnc._entry_ptr.627, ptr @ubifs_dump_tnc._entry_ptr.630, ptr @ubifs_dump_tnc._entry_ptr.632, ptr @ubifs_dump_tnc._entry_ptr.635, ptr @ubifs_dump_znode._entry, ptr @ubifs_dump_znode._entry.595, ptr @ubifs_dump_znode._entry.598, ptr @ubifs_dump_znode._entry.601, ptr @ubifs_dump_znode._entry_ptr, ptr @ubifs_dump_znode._entry_ptr.597, ptr @ubifs_dump_znode._entry_ptr.600, ptr @ubifs_dump_znode._entry_ptr.603, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @dbg_lock, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.257, ptr @.str.260, ptr @.str.263, ptr @.str.266, ptr @.str.269, ptr @.str.272, ptr @.str.275, ptr @.str.278, ptr @.str.281, ptr @.str.284, ptr @.str.287, ptr @.str.296, ptr @.str.299, ptr @.str.302, ptr @.str.309, ptr @.str.320, ptr @.str.323, ptr @.str.328, ptr @.str.331, ptr @.str.334, ptr @.str.337, ptr @.str.340, ptr @.str.343, ptr @.str.346, ptr @.str.351, ptr @.str.354, ptr @.str.357, ptr @.str.360, ptr @.str.362, ptr @.str.364, ptr @.str.367, ptr @.str.370, ptr @.str.373, ptr @.str.376, ptr @.str.379, ptr @.str.382, ptr @.str.387, ptr @.str.390, ptr @.str.393, ptr @.str.397, ptr @.str.398, ptr @.str.400, ptr @.str.403, ptr @.str.406, ptr @.str.409, ptr @.str.412, ptr @.str.414, ptr @.str.415, ptr @.str.417, ptr @.str.420, ptr @.str.422, ptr @.str.423, ptr @.str.425, ptr @.str.428, ptr @.str.431, ptr @.str.434, ptr @.str.437, ptr @.str.440, ptr @.str.443, ptr @.str.446, ptr @.str.449, ptr @.str.452, ptr @.str.455, ptr @.str.458, ptr @.str.461, ptr @.str.464, ptr @.str.467, ptr @.str.469, ptr @.str.470, ptr @.str.472, ptr @.str.475, ptr @.str.478, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.489, ptr @.str.492, ptr @.str.495, ptr @.str.498, ptr @.str.501, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.507, ptr @.str.509, ptr @.str.510, ptr @.str.512, ptr @.str.515, ptr @.str.518, ptr @.str.521, ptr @.str.524, ptr @.str.527, ptr @.str.530, ptr @.str.533, ptr @.str.536, ptr @.str.539, ptr @.str.542, ptr @.str.545, ptr @.str.548, ptr @.str.551, ptr @.str.554, ptr @.str.557, ptr @.str.560, ptr @.str.563, ptr @.str.566, ptr @.str.569, ptr @.str.572, ptr @.str.575, ptr @.str.578, ptr @.str.580, ptr @.str.581, ptr @.str.582, ptr @.str.583, ptr @.str.585, ptr @.str.588, ptr @.str.591, ptr @.str.593, ptr @.str.594, ptr @.str.596, ptr @.str.599, ptr @.str.602, ptr @.str.604, ptr @.str.605, ptr @.str.607, ptr @.str.610, ptr @.str.612, ptr @.str.613, ptr @.str.615, ptr @.str.618, ptr @.str.621, ptr @.str.623, ptr @.str.624, ptr @.str.626, ptr @.str.629, ptr @.str.634, ptr @.str.636, ptr @.str.637, ptr @.str.638, ptr @.str.639, ptr @.str.640, ptr @.str.641, ptr @.str.642, ptr @.str.643, ptr @.str.644, ptr @.str.645, ptr @.str.646, ptr @.str.647, ptr @.str.648, ptr @.str.649, ptr @.str.650, ptr @.str.651, ptr @.str.652, ptr @.str.653, ptr @.str.654, ptr @.str.655, ptr @.str.656, ptr @.str.657, ptr @.str.658, ptr @.str.659, ptr @.str.660, ptr @.str.661, ptr @.str.662, ptr @.str.663, ptr @.str.664, ptr @.str.665, ptr @.str.666, ptr @.str.667, ptr @dfs_rootdir, ptr @.str.668, ptr @dfs_fops, ptr @.str.669, ptr @.str.670, ptr @.str.671, ptr @.str.672, ptr @.str.673, ptr @.str.674, ptr @.str.675, ptr @.str.676, ptr @.str.677, ptr @.str.678, ptr @dfs_global_fops, ptr @dfs_chk_gen, ptr @dfs_chk_index, ptr @dfs_chk_orph, ptr @dfs_chk_lprops, ptr @dfs_chk_fs, ptr @dfs_tst_rcvry, ptr @.str.679, ptr @ubifs_dbg, ptr @.str.680, ptr @.str.681, ptr @.str.682, ptr @.str.683, ptr @.str.684, ptr @.str.685, ptr @.str.686, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.690, ptr @.str.691, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.695, ptr @.str.696, ptr @.str.698, ptr @.str.701, ptr @.str.704, ptr @.str.707, ptr @.str.710, ptr @.str.712, ptr @.str.713, ptr @.str.714, ptr @.str.715, ptr @.str.716, ptr @.str.717, ptr @.str.718, ptr @.str.719, ptr @.str.720, ptr @.str.721, ptr @.str.722, ptr @.str.723, ptr @.str.724, ptr @.str.725, ptr @.str.726, ptr @.str.727, ptr @.str.728, ptr @.str.729, ptr @.str.730, ptr @.str.731, ptr @.str.732, ptr @.str.733, ptr @.str.734, ptr @.str.735, ptr @.str.736, ptr @.str.737, ptr @.str.738, ptr @.str.739, ptr @.str.740, ptr @.str.741, ptr @.str.742, ptr @.str.743, ptr @.str.744, ptr @.str.745, ptr @.str.746, ptr @.str.747, ptr @.str.748, ptr @.str.749, ptr @.str.750, ptr @.str.751, ptr @.str.752, ptr @.str.753, ptr @.str.754, ptr @.str.755, ptr @.str.756, ptr @.str.757, ptr @.str.758, ptr @.str.759, ptr @.str.760, ptr @.str.761, ptr @.str.762, ptr @.str.763, ptr @.str.764, ptr @.str.765, ptr @.str.766, ptr @.str.767, ptr @.str.768, ptr @.str.769, ptr @.str.770, ptr @.str.771, ptr @.str.772, ptr @.str.773, ptr @.str.774, ptr @.str.775, ptr @.str.778, ptr @switch.table.dbg_ntype, ptr @switch.table.dbg_cstate, ptr @switch.table.dbg_jhead, ptr @switch.table.ubifs_dump_inode, ptr @switch.table.ubifs_dump_node, ptr @switch.table.ubifs_dump_node.779, ptr @switch.table.ubifs_dump_node.780, ptr @switch.table.ubifs_dump_budg, ptr @switch.table.ubifs_dump_lprop, ptr @switch.table.ubifs_dump_lprop.781, ptr @switch.table.ubifs_dump_lprop.782], section "llvm.metadata"
@0 = internal global [615 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_inode._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.363 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.369 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.375 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.381 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_node._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budget_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budget_req._entry.399 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budget_req._entry.402 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budget_req._entry.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budget_req._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budget_req._entry.411 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lstats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lstats._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lstats._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.427 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.436 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.439 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.442 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.445 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.448 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.451 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.460 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.463 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_budg._entry.466 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.474 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.477 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.488 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.491 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.494 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.497 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprop._entry.500 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.501 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.503 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lprops._entry.506 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.511 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.514 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.517 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.520 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.523 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.526 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.529 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.532 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.535 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.538 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.539 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.541 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.542 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.544 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.545 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.547 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.548 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.550 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.551 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.553 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.554 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.556 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.557 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.559 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.560 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.562 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.565 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.566 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.568 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.569 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.571 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.572 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.574 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.575 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_lpt_info._entry.577 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.578 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_leb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.580 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.581 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.582 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.583 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_leb._entry.584 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.585 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_leb._entry.587 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.588 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_leb._entry.590 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.591 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_znode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.593 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.594 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_znode._entry.595 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.596 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_znode._entry.598 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.599 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_znode._entry.601 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.602 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_heap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.604 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.605 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_heap._entry.606 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.607 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_heap._entry.609 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.610 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_pnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.612 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.613 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_pnode._entry.614 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.615 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_pnode._entry.617 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.618 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_pnode._entry.620 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.621 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_tnc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.623 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.624 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_tnc._entry.625 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.626 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_tnc._entry.628 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.629 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_tnc._entry.631 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dump_tnc._entry.633 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.634 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.636 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.637 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.638 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.639 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.640 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.641 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.642 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.643 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.644 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.645 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.646 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.647 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.648 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.649 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.650 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.651 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.652 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.653 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.654 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.655 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.656 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.657 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.658 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.659 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.660 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.661 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.662 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.663 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.664 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.665 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.666 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.667 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_rootdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2257 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.668 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2263 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.669 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.670 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.671 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.672 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.673 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.674 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.675 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.676 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.677 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.678 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_global_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2296 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_chk_gen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2299 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_chk_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2302 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_chk_orph to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2305 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_chk_lprops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2308 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_chk_fs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2311 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_tst_rcvry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2314 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.679 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2320 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2322 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.680 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.681 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.682 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.683 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.684 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.685 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.686 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.687 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.688 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.689 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.690 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.691 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.692 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.693 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.694 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.695 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.696 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ch._entry.697 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.698 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ch._entry.700 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.701 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ch._entry.703 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.704 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ch._entry.706 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.707 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ch._entry.709 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.710 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.712 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.713 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.714 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.715 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.716 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.717 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.718 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.719 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.720 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.721 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.722 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.723 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.724 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.725 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.726 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.727 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.728 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.729 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.730 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.731 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.732 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.733 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.734 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.735 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.736 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.737 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.738 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.739 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.740 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.741 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.742 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.743 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.744 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.745 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.746 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.747 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.748 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.749 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.750 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.751 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.752 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.753 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.754 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.755 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.756 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.757 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.758 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.759 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.760 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.761 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.762 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.763 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.764 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.765 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.766 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.767 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.768 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.769 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.770 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.771 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.772 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.773 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.774 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.775 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.778 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2599 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dbg_ntype to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2602 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dbg_cstate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2603 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dbg_jhead to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2604 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_inode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2605 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_node to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2606 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_node.779 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2607 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_node.780 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2608 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_budg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2609 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_lprop to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2610 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_lprop.781 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2611 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_dump_lprop.782 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2612 to i32), i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dbg_snprintf_key(ptr noundef %c, ptr nocapture noundef readonly %key, ptr noundef returned writeonly %buffer, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %1, 29
  %key_fmt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 67
  %2 = ptrtoint ptr %key_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_fmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %if.then.sw.bb4_crit_edge
    i32 3, label %if.then.sw.bb4_crit_edge80
    i32 1, label %sw.bb10
    i32 4, label %sw.bb16
  ]

if.then.sw.bb4_crit_edge80:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

if.then.sw.bb4_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key, align 8
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull @.str, i32 noundef %6, ptr noundef nonnull @.str.680)
  br label %do.body

sw.bb4:                                           ; preds = %if.then.sw.bb4_crit_edge, %if.then.sw.bb4_crit_edge80
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %switch.selectcmp = icmp eq i32 %shr.i, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.681, ptr @.str.685
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %switch.selectcmp78 = icmp eq i32 %shr.i, 3
  %switch.select79 = select i1 %switch.selectcmp78, ptr @.str.682, ptr %switch.select
  %and.i = and i32 %1, 536870911
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull @.str.1, i32 noundef %8, ptr noundef nonnull %switch.select79, i32 noundef %and.i)
  br label %do.body

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 8
  %and.i75 = and i32 %1, 536870911
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull @.str.2, i32 noundef %10, ptr noundef nonnull @.str.683, i32 noundef %and.i75)
  br label %do.body

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key, align 8
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull @.str, i32 noundef %12, ptr noundef nonnull @.str.684)
  br label %do.body

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key, align 8
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %1)
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull @.str.4, i32 noundef %3)
  br label %do.body

do.body:                                          ; preds = %if.else, %sw.default, %sw.bb16, %sw.bb10, %sw.bb4, %sw.bb
  %call22.pn = phi i32 [ %call22, %sw.default ], [ %call19, %sw.bb16 ], [ %call14, %sw.bb10 ], [ %call8, %sw.bb4 ], [ %call3, %sw.bb ], [ %call25, %if.else ]
  %len.addr.0 = sub i32 %len, %call22.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0)
  %cmp27 = icmp slt i32 %len.addr.0, 1
  br i1 %cmp27, label %if.then30, label %do.body.do.end_crit_edge, !prof !1223

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 125)
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body.do.end_crit_edge
  ret ptr %buffer
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_assert_failed(ptr noundef %c, ptr noundef %expr, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.679, ptr noundef %expr, ptr noundef %file, i32 noundef %line) #14
  %assert_action = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %assert_action to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %assert_action, align 8
  %bf.lshr = lshr i16 %bf.load, 5
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %1 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.783)
  switch i32 %bf.cast, label %sw.default [
    i32 2, label %do.body
    i32 1, label %sw.bb3
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3007, 0\0A.popsection", ""() #14, !srcloc !1224
  unreachable

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_ro_mode(ptr noundef %c, i32 noundef -22) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_stack() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dbg_ntype(i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %0 = icmp ult i32 %type, 13
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.dbg_ntype, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dbg_cstate(i32 noundef %cmt_state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmt_state)
  %0 = icmp ult i32 %cmt_state, 6
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.dbg_cstate, i32 0, i32 %cmt_state
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.27, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dbg_jhead(i32 noundef %jhead) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %jhead)
  %0 = icmp ult i32 %jhead, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.dbg_jhead, i32 0, i32 %jhead
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.31, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_inode(ptr noundef %c, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %nm = alloca %struct.fscrypt_name, align 4
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #14
  %0 = call ptr @memset(ptr %nm, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  %1 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %key, align 8, !annotation !1225
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %3) #17
  %call11 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i64 noundef %call11) #17
  %4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %6) #17
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 53
  %9 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %11 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %10, [1 x i32] %12) #14
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call1.i) #17
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i226 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 53
  %15 = ptrtoint ptr %s_user_ns.i.i226 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_user_ns.i.i226, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %17 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i227 = load i32, ptr %i_gid.i, align 8
  %18 = insertvalue [1 x i32] undef, i32 %.unpack.i227, 0
  %call1.i228 = tail call i32 @from_kgid(ptr noundef %16, [1 x i32] %18) #14
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call1.i228) #17
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %19 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_atime, align 8
  %conv = trunc i64 %20 to i32
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %21 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_nsec, align 8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %22) #17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %23 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_mtime, align 8
  %conv41 = trunc i64 %24 to i32
  %tv_nsec43 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %25 = ptrtoint ptr %tv_nsec43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec43, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %conv41, i32 noundef %26) #17
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %27 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_ctime, align 8
  %conv50 = trunc i64 %28 to i32
  %tv_nsec52 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %tv_nsec52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tv_nsec52, align 8
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv50, i32 noundef %30) #17
  %creat_sqnum = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 1
  %31 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %creat_sqnum, align 8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i64 noundef %32) #17
  %xattr_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 3
  %33 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xattr_size, align 8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %34) #17
  %xattr_cnt = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 4
  %35 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xattr_cnt, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %36) #17
  %xattr_names = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 5
  %37 = ptrtoint ptr %xattr_names to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xattr_names, align 8
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %38) #17
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %39 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %dirty, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %bf.cast) #17
  %40 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load83 = load i8, ptr %dirty, align 4
  %bf.lshr84 = lshr i8 %bf.load83, 6
  %bf.clear = and i8 %bf.lshr84, 1
  %bf.cast85 = zext i8 %bf.clear to i32
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %bf.cast85) #17
  %41 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load91 = load i8, ptr %dirty, align 4
  %bf.lshr92 = lshr i8 %bf.load91, 5
  %bf.clear93 = and i8 %bf.lshr92, 1
  %bf.cast94 = zext i8 %bf.clear93 to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %bf.cast94) #17
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 10
  %42 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %synced_i_size, align 8
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i64 noundef %43) #17
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %44 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ui_size, align 8
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i64 noundef %45) #17
  %flags = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 12
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %47) #17
  %48 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load115 = load i8, ptr %dirty, align 4
  %bf.lshr116 = lshr i8 %bf.load115, 3
  %bf.clear117 = and i8 %bf.lshr116, 3
  %bf.cast118 = zext i8 %bf.clear117 to i32
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %bf.cast118) #17
  %last_page_read = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 13
  %49 = ptrtoint ptr %last_page_read to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_page_read, align 4
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %50) #17
  %read_in_a_row = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 14
  %51 = ptrtoint ptr %read_in_a_row to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %read_in_a_row, align 8
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %52) #17
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %53 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_len, align 4
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %54) #17
  %55 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %inode, align 8
  %57 = and i16 %56, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %57)
  %cmp = icmp eq i16 %57, 16384
  br i1 %cmp, label %do.end139, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end139:                                        ; preds = %entry
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #17
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  %call143 = tail call zeroext i1 @mutex_is_locked(ptr noundef %tnc_mutex) #14
  br i1 %call143, label %if.then147, label %do.end139.do.end150_crit_edge, !prof !1223

do.end139.do.end150_crit_edge:                    ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end150

if.then147:                                       ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.6, i32 noundef 269)
  br label %do.end150

do.end150:                                        ; preds = %if.then147, %do.end139.do.end150_crit_edge
  %58 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_ino, align 8
  %60 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1073741824, ptr %arrayidx1.i, align 4
  %call152229 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #14
  %cmp.i230 = icmp ugt ptr %call152229, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %do.end150.if.then154_crit_edge, label %do.end169.lr.ph

do.end150.if.then154_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

do.end169.lr.ph:                                  ; preds = %do.end150
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  br label %do.end169

if.then154:                                       ; preds = %get_dent_type.exit.if.then154_crit_edge, %do.end150.if.then154_crit_edge
  %pdent.0.lcssa = phi ptr [ null, %do.end150.if.then154_crit_edge ], [ %call152233, %get_dent_type.exit.if.then154_crit_edge ]
  %call152.lcssa = phi ptr [ %call152229, %do.end150.if.then154_crit_edge ], [ %call152, %get_dent_type.exit.if.then154_crit_edge ]
  %cmp156.not = icmp eq ptr %call152.lcssa, inttoptr (i32 -2 to ptr)
  br i1 %cmp156.not, label %if.then154.while.end_crit_edge, label %do.end161

if.then154.while.end_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end161:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %call152.lcssa to i32
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %62) #17
  br label %while.end

do.end169:                                        ; preds = %get_dent_type.exit.do.end169_crit_edge, %do.end169.lr.ph
  %call152233 = phi ptr [ %call152229, %do.end169.lr.ph ], [ %call152, %get_dent_type.exit.do.end169_crit_edge ]
  %pdent.0232 = phi ptr [ null, %do.end169.lr.ph ], [ %call152233, %get_dent_type.exit.do.end169_crit_edge ]
  %count.0231 = phi i32 [ 2, %do.end169.lr.ph ], [ %inc, %get_dent_type.exit.do.end169_crit_edge ]
  %inc = add i32 %count.0231, 1
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %call152233, i32 0, i32 2
  %63 = ptrtoint ptr %inum to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %inum, align 1
  %65 = call i64 @llvm.bswap.i64(i64 %64)
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %call152233, i32 0, i32 4
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %67)
  %68 = icmp ult i8 %67, 7
  br i1 %68, label %switch.lookup, label %do.end169.get_dent_type.exit_crit_edge

do.end169.get_dent_type.exit_crit_edge:           ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_dent_type.exit

switch.lookup:                                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #16
  %69 = sext i8 %67 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.ubifs_dump_inode, i32 0, i32 %69
  %70 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_dent_type.exit

get_dent_type.exit:                               ; preds = %switch.lookup, %do.end169.get_dent_type.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.693, %do.end169.get_dent_type.exit_crit_edge ]
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call152233, i32 0, i32 5
  %71 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %nlen, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %conv173 = zext i16 %73 to i32
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %count.0231, i64 noundef %65, ptr noundef nonnull %retval.0.i, i32 noundef %conv173) #17
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call152233, i32 0, i32 7
  %74 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %name, ptr %disk_name, align 4
  %75 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %nlen, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %conv177 = zext i16 %77 to i32
  %78 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv177, ptr %len, align 4
  call void @kfree(ptr noundef %pdent.0232) #14
  %key179 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call152233, i32 0, i32 1
  %79 = ptrtoint ptr %key179 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %key179, align 8
  %81 = call i32 @llvm.bswap.i32(i32 %80) #14
  %82 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call152233, i32 0, i32 1, i32 4
  %83 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx2.i, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #14
  %86 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx1.i, align 4
  %call152 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #14
  %cmp.i = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_dent_type.exit.if.then154_crit_edge, label %get_dent_type.exit.do.end169_crit_edge

get_dent_type.exit.do.end169_crit_edge:           ; preds = %get_dent_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end169

get_dent_type.exit.if.then154_crit_edge:          ; preds = %get_dent_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

while.end:                                        ; preds = %do.end161, %if.then154.while.end_crit_edge
  call void @kfree(ptr noundef %pdent.0.lcssa) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !1226
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #14
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !1227
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !1223

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !1228
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !1229
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !1230
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !1231
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !1232
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_node(ptr noundef %c, ptr noundef %node, i32 noundef %node_len) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !1225
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %key_buf) #14
  %1 = call ptr @memset(ptr %key_buf, i32 255, i32 48)
  %2 = ptrtoint ptr %node to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %node, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 823660550, i32 %3)
  %cmp.not = icmp eq i32 %3, 823660550
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef 24) #17
  tail call void @print_hex_dump(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %node, i32 noundef 24, i1 noundef zeroext true) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 4
  %4 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %node_type, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %5)
  %cmp3 = icmp ugt i8 %5, 13
  br i1 %cmp3, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv) #17
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %6 = ptrtoint ptr %node to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %node, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.695, i32 noundef %8) #17
  %crc.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 1
  %9 = ptrtoint ptr %crc.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %crc.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #14
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.698, i32 noundef %11) #17
  %12 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %node_type, align 1
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %13)
  %14 = icmp ult i8 %13, 13
  br i1 %14, label %switch.lookup, label %if.end11.dbg_ntype.exit.i_crit_edge

if.end11.dbg_ntype.exit.i_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %dbg_ntype.exit.i

switch.lookup:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %15 = sext i8 %13 to i32
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.ubifs_dump_node, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dbg_ntype.exit.i

dbg_ntype.exit.i:                                 ; preds = %switch.lookup, %if.end11.dbg_ntype.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %if.end11.dbg_ntype.exit.i_crit_edge ]
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.701, i32 noundef %conv.i, ptr noundef nonnull %retval.0.i.i) #17
  %group_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 5
  %17 = ptrtoint ptr %group_type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %group_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %19 = icmp ult i8 %18, 3
  br i1 %19, label %switch.lookup878, label %dbg_ntype.exit.i.dump_ch.exit_crit_edge

dbg_ntype.exit.i.dump_ch.exit_crit_edge:          ; preds = %dbg_ntype.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_ch.exit

switch.lookup878:                                 ; preds = %dbg_ntype.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = sext i8 %18 to i32
  %switch.gep879 = getelementptr inbounds [3 x ptr], ptr @switch.table.ubifs_dump_node.779, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep879 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load880 = load ptr, ptr %switch.gep879, align 4
  br label %dump_ch.exit

dump_ch.exit:                                     ; preds = %switch.lookup878, %dbg_ntype.exit.i.dump_ch.exit_crit_edge
  %retval.0.i38.i = phi ptr [ %switch.load880, %switch.lookup878 ], [ @.str.715, %dbg_ntype.exit.i.dump_ch.exit_crit_edge ]
  %conv15.i = zext i8 %18 to i32
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.704, i32 noundef %conv15.i, ptr noundef nonnull %retval.0.i38.i) #17
  %sqnum.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 2
  %22 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %sqnum.i, align 1
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #14
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.707, i64 noundef %24) #17
  %len.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 3
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %len.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.710, i32 noundef %27) #17
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 %conv
  %max_len = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 %conv, i32 1
  %28 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp12 = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %. = select i1 %cmp12, i32 %31, i32 %29
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %len.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 %.)
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %node_len)
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %31)
  %cmp39 = icmp slt i32 %37, %31
  br i1 %cmp39, label %do.end44, label %if.end59

do.end44:                                         ; preds = %dump_ch.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %5)
  %38 = icmp ult i8 %5, 13
  br i1 %38, label %switch.lookup881, label %do.end44.dbg_ntype.exit_crit_edge

do.end44.dbg_ntype.exit_crit_edge:                ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %dbg_ntype.exit

switch.lookup881:                                 ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #16
  %39 = sext i8 %5 to i32
  %switch.gep882 = getelementptr inbounds [13 x ptr], ptr @switch.table.ubifs_dump_node.780, i32 0, i32 %39
  %40 = ptrtoint ptr %switch.gep882 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load883 = load ptr, ptr %switch.gep882, align 4
  br label %dbg_ntype.exit

dbg_ntype.exit:                                   ; preds = %switch.lookup881, %do.end44.dbg_ntype.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load883, %switch.lookup881 ], [ @.str.20, %do.end44.dbg_ntype.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %37)
  %cmp47 = icmp ugt i32 %37, 24
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %37, i32 24)
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %37, ptr noundef nonnull %retval.0.i, i32 noundef %41) #17
  br i1 %cmp47, label %if.then56, label %dbg_ntype.exit.out_unlock_crit_edge

dbg_ntype.exit.out_unlock_crit_edge:              ; preds = %dbg_ntype.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then56:                                        ; preds = %dbg_ntype.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %37, -24
  %add.ptr = getelementptr i8, ptr %node, i32 24
  tail call void @print_hex_dump(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %sub, i1 noundef zeroext false) #14
  br label %out_unlock

if.end59:                                         ; preds = %dump_ch.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %34)
  %cmp61.not = icmp eq i32 %37, %34
  br i1 %cmp61.not, label %if.end59.if.end69_crit_edge, label %do.end66

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %37) #17
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %if.end59.if.end69_crit_edge
  %42 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.784)
  switch i8 %5, label %do.end673 [
    i8 5, label %sw.bb
    i8 6, label %sw.bb75
    i8 7, label %sw.bb207
    i8 8, label %sw.bb350
    i8 0, label %sw.bb366
    i8 2, label %if.end69.sw.bb452_crit_edge
    i8 3, label %if.end69.sw.bb452_crit_edge885
    i8 1, label %sw.bb529
    i8 4, label %sw.bb565
    i8 9, label %sw.bb582
    i8 10, label %if.end69.out_unlock_crit_edge
    i8 11, label %sw.bb636
    i8 12, label %if.end69.out_unlock_crit_edge886
  ]

if.end69.out_unlock_crit_edge886:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end69.out_unlock_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end69.sw.bb452_crit_edge885:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb452

if.end69.sw.bb452_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb452

sw.bb:                                            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %pad_len = getelementptr inbounds %struct.ubifs_pad_node, ptr %node, i32 0, i32 1
  %43 = ptrtoint ptr %pad_len to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %pad_len, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %45) #17
  br label %out_unlock

sw.bb75:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 4
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %flags, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %key_hash = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 2
  %49 = ptrtoint ptr %key_hash to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %key_hash, align 1
  %conv80 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %switch.selectcmp.i = icmp eq i8 %50, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.717, ptr @.str.718
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %switch.selectcmp2.i = icmp eq i8 %50, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.716, ptr %switch.select.i
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %conv80, ptr noundef nonnull %switch.select3.i) #17
  %key_fmt = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 3
  %51 = ptrtoint ptr %key_fmt to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %key_fmt, align 1
  %conv89 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cond.i = icmp eq i8 %52, 0
  %.str.719..str.720.i = select i1 %cond.i, ptr @.str.719, ptr @.str.720
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv89, ptr noundef nonnull %.str.719..str.720.i) #17
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %48) #17
  %and = lshr i32 %48, 1
  %and.lobit = and i32 %and, 1
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %and.lobit) #17
  %and109 = lshr i32 %48, 2
  %and109.lobit = and i32 %and109, 1
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %and109.lobit) #17
  %min_io_size = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 5
  %53 = ptrtoint ptr %min_io_size to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %min_io_size, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %55) #17
  %leb_size = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 6
  %56 = ptrtoint ptr %leb_size to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %leb_size, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %58) #17
  %leb_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 7
  %59 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %leb_cnt, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %61) #17
  %max_leb_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 8
  %62 = ptrtoint ptr %max_leb_cnt to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %max_leb_cnt, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %64) #17
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 9
  %65 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %max_bud_bytes, align 1
  %67 = tail call i64 @llvm.bswap.i64(i64 %66)
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i64 noundef %67) #17
  %log_lebs = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 10
  %68 = ptrtoint ptr %log_lebs to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %log_lebs, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, i32 noundef %70) #17
  %lpt_lebs = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 11
  %71 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %lpt_lebs, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %73) #17
  %orph_lebs = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 12
  %74 = ptrtoint ptr %orph_lebs to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %orph_lebs, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %76) #17
  %jhead_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 13
  %77 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %jhead_cnt, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %79) #17
  %fanout = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 14
  %80 = ptrtoint ptr %fanout to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %fanout, align 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %82) #17
  %lsave_cnt = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 15
  %83 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %lsave_cnt, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %85) #17
  %default_compr = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 17
  %86 = ptrtoint ptr %default_compr to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %default_compr, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %conv175 = zext i16 %88 to i32
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %conv175) #17
  %rp_size = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 21
  %89 = ptrtoint ptr %rp_size to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %90 = load i64, ptr %rp_size, align 1
  %91 = tail call i64 @llvm.bswap.i64(i64 %90)
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i64 noundef %91) #17
  %rp_uid = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 19
  %92 = ptrtoint ptr %rp_uid to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %rp_uid, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %94) #17
  %rp_gid = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 20
  %95 = ptrtoint ptr %rp_gid to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %rp_gid, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %97) #17
  %fmt_version = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 16
  %98 = ptrtoint ptr %fmt_version to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %fmt_version, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %100) #17
  %time_gran = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 22
  %101 = ptrtoint ptr %time_gran to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %time_gran, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %103) #17
  %uuid = getelementptr inbounds %struct.ubifs_sb_node, ptr %node, i32 0, i32 23
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef %uuid) #17
  br label %out_unlock

sw.bb207:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %highest_inum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 1
  %104 = ptrtoint ptr %highest_inum to i32
  call void @__asan_loadN_noabort(i32 %104, i32 8)
  %105 = load i64, ptr %highest_inum, align 1
  %106 = tail call i64 @llvm.bswap.i64(i64 %105)
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i64 noundef %106) #17
  %cmt_no = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 2
  %107 = ptrtoint ptr %cmt_no to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %108 = load i64, ptr %cmt_no, align 1
  %109 = tail call i64 @llvm.bswap.i64(i64 %108)
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i64 noundef %109) #17
  %flags222 = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 3
  %110 = ptrtoint ptr %flags222 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %flags222, align 1
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %call223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %112) #17
  %log_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 4
  %113 = ptrtoint ptr %log_lnum to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %log_lnum, align 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %115) #17
  %root_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 5
  %116 = ptrtoint ptr %root_lnum to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %root_lnum, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %118) #17
  %root_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 6
  %119 = ptrtoint ptr %root_offs to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %root_offs, align 1
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %121) #17
  %root_len = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 7
  %122 = ptrtoint ptr %root_len to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %root_len, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %124) #17
  %gc_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 8
  %125 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %gc_lnum, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %call248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %127) #17
  %ihead_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 9
  %128 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %ihead_lnum, align 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %130) #17
  %ihead_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 10
  %131 = ptrtoint ptr %ihead_offs to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %ihead_offs, align 1
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  %call258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i32 noundef %133) #17
  %index_size = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 11
  %134 = ptrtoint ptr %index_size to i32
  call void @__asan_loadN_noabort(i32 %134, i32 8)
  %135 = load i64, ptr %index_size, align 1
  %136 = tail call i64 @llvm.bswap.i64(i64 %135)
  %call263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i64 noundef %136) #17
  %lpt_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 17
  %137 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %lpt_lnum, align 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, i32 noundef %139) #17
  %lpt_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 18
  %140 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %lpt_offs, align 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i32 noundef %142) #17
  %nhead_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 19
  %143 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %nhead_lnum, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, i32 noundef %145) #17
  %nhead_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 20
  %146 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %nhead_offs, align 1
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %call283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, i32 noundef %148) #17
  %ltab_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 21
  %149 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %ltab_lnum, align 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef %151) #17
  %ltab_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 22
  %152 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %ltab_offs, align 1
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  %call293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, i32 noundef %154) #17
  %lsave_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 23
  %155 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %lsave_lnum, align 1
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %call298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, i32 noundef %157) #17
  %lsave_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 24
  %158 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %lsave_offs, align 1
  %160 = tail call i32 @llvm.bswap.i32(i32 %159)
  %call303 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, i32 noundef %160) #17
  %lscan_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 25
  %161 = ptrtoint ptr %lscan_lnum to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %lscan_lnum, align 1
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  %call308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, i32 noundef %163) #17
  %leb_cnt313 = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 28
  %164 = ptrtoint ptr %leb_cnt313 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %leb_cnt313, align 1
  %166 = tail call i32 @llvm.bswap.i32(i32 %165)
  %call314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %166) #17
  %empty_lebs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 26
  %167 = ptrtoint ptr %empty_lebs to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %empty_lebs, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  %call319 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %169) #17
  %idx_lebs = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 27
  %170 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %idx_lebs, align 1
  %172 = tail call i32 @llvm.bswap.i32(i32 %171)
  %call324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, i32 noundef %172) #17
  %total_free = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 12
  %173 = ptrtoint ptr %total_free to i32
  call void @__asan_loadN_noabort(i32 %173, i32 8)
  %174 = load i64, ptr %total_free, align 1
  %175 = tail call i64 @llvm.bswap.i64(i64 %174)
  %call329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, i64 noundef %175) #17
  %total_dirty = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 13
  %176 = ptrtoint ptr %total_dirty to i32
  call void @__asan_loadN_noabort(i32 %176, i32 8)
  %177 = load i64, ptr %total_dirty, align 1
  %178 = tail call i64 @llvm.bswap.i64(i64 %177)
  %call334 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, i64 noundef %178) #17
  %total_used = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 14
  %179 = ptrtoint ptr %total_used to i32
  call void @__asan_loadN_noabort(i32 %179, i32 8)
  %180 = load i64, ptr %total_used, align 1
  %181 = tail call i64 @llvm.bswap.i64(i64 %180)
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, i64 noundef %181) #17
  %total_dead = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 15
  %182 = ptrtoint ptr %total_dead to i32
  call void @__asan_loadN_noabort(i32 %182, i32 8)
  %183 = load i64, ptr %total_dead, align 1
  %184 = tail call i64 @llvm.bswap.i64(i64 %183)
  %call344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, i64 noundef %184) #17
  %total_dark = getelementptr inbounds %struct.ubifs_mst_node, ptr %node, i32 0, i32 16
  %185 = ptrtoint ptr %total_dark to i32
  call void @__asan_loadN_noabort(i32 %185, i32 8)
  %186 = load i64, ptr %total_dark, align 1
  %187 = tail call i64 @llvm.bswap.i64(i64 %186)
  %call349 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, i64 noundef %187) #17
  br label %out_unlock

sw.bb350:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %lnum = getelementptr inbounds %struct.ubifs_ref_node, ptr %node, i32 0, i32 1
  %188 = ptrtoint ptr %lnum to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %lnum, align 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189)
  %call355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %190) #17
  %offs = getelementptr inbounds %struct.ubifs_ref_node, ptr %node, i32 0, i32 2
  %191 = ptrtoint ptr %offs to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %offs, align 1
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  %call360 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, i32 noundef %193) #17
  %jhead = getelementptr inbounds %struct.ubifs_ref_node, ptr %node, i32 0, i32 3
  %194 = ptrtoint ptr %jhead to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %jhead, align 1
  %196 = tail call i32 @llvm.bswap.i32(i32 %195)
  %call365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, i32 noundef %196) #17
  br label %out_unlock

sw.bb366:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %key367 = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 1
  %197 = ptrtoint ptr %key367 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %key367, align 8
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #14
  %200 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_ino_node, ptr %node, i32 0, i32 1, i32 4
  %201 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx2.i, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #14
  %arrayidx3.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %204 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %arrayidx3.i, align 4
  %call373 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %key_buf, i32 noundef 48)
  %call374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull %key_buf) #17
  %creat_sqnum = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 2
  %205 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_loadN_noabort(i32 %205, i32 8)
  %206 = load i64, ptr %creat_sqnum, align 1
  %207 = call i64 @llvm.bswap.i64(i64 %206)
  %call379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i64 noundef %207) #17
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 3
  %208 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %208, i32 8)
  %209 = load i64, ptr %size, align 1
  %210 = call i64 @llvm.bswap.i64(i64 %209)
  %call384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i64 noundef %210) #17
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 10
  %211 = ptrtoint ptr %nlink to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %nlink, align 1
  %213 = call i32 @llvm.bswap.i32(i32 %212)
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %213) #17
  %atime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 4
  %214 = ptrtoint ptr %atime_sec to i32
  call void @__asan_loadN_noabort(i32 %214, i32 8)
  %215 = load i64, ptr %atime_sec, align 1
  %216 = call i64 @llvm.bswap.i64(i64 %215)
  %atime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 7
  %217 = ptrtoint ptr %atime_nsec to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %atime_nsec, align 1
  %219 = call i32 @llvm.bswap.i32(i32 %218)
  %call394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, i64 noundef %216, i32 noundef %219) #17
  %mtime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 6
  %220 = ptrtoint ptr %mtime_sec to i32
  call void @__asan_loadN_noabort(i32 %220, i32 8)
  %221 = load i64, ptr %mtime_sec, align 1
  %222 = call i64 @llvm.bswap.i64(i64 %221)
  %mtime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 9
  %223 = ptrtoint ptr %mtime_nsec to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %224 = load i32, ptr %mtime_nsec, align 1
  %225 = call i32 @llvm.bswap.i32(i32 %224)
  %call399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, i64 noundef %222, i32 noundef %225) #17
  %ctime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 5
  %226 = ptrtoint ptr %ctime_sec to i32
  call void @__asan_loadN_noabort(i32 %226, i32 8)
  %227 = load i64, ptr %ctime_sec, align 1
  %228 = call i64 @llvm.bswap.i64(i64 %227)
  %ctime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 8
  %229 = ptrtoint ptr %ctime_nsec to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %230 = load i32, ptr %ctime_nsec, align 1
  %231 = call i32 @llvm.bswap.i32(i32 %230)
  %call404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, i64 noundef %228, i32 noundef %231) #17
  %uid = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 11
  %232 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %232, i32 4)
  %233 = load i32, ptr %uid, align 1
  %234 = call i32 @llvm.bswap.i32(i32 %233)
  %call409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %234) #17
  %gid = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 12
  %235 = ptrtoint ptr %gid to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %gid, align 1
  %237 = call i32 @llvm.bswap.i32(i32 %236)
  %call414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %237) #17
  %mode = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 13
  %238 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %mode, align 1
  %240 = call i32 @llvm.bswap.i32(i32 %239)
  %call419 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, i32 noundef %240) #17
  %flags424 = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 14
  %241 = ptrtoint ptr %flags424 to i32
  call void @__asan_loadN_noabort(i32 %241, i32 4)
  %242 = load i32, ptr %flags424, align 1
  %243 = call i32 @llvm.bswap.i32(i32 %242)
  %call425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %243) #17
  %xattr_cnt = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 16
  %244 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %xattr_cnt, align 1
  %246 = call i32 @llvm.bswap.i32(i32 %245)
  %call430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %246) #17
  %xattr_size = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 17
  %247 = ptrtoint ptr %xattr_size to i32
  call void @__asan_loadN_noabort(i32 %247, i32 4)
  %248 = load i32, ptr %xattr_size, align 1
  %249 = call i32 @llvm.bswap.i32(i32 %248)
  %call435 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %249) #17
  %xattr_names = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 19
  %250 = ptrtoint ptr %xattr_names to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load i32, ptr %xattr_names, align 1
  %252 = call i32 @llvm.bswap.i32(i32 %251)
  %call440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %252) #17
  %compr_type = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 20
  %253 = ptrtoint ptr %compr_type to i32
  call void @__asan_loadN_noabort(i32 %253, i32 2)
  %254 = load i16, ptr %compr_type, align 1
  %255 = call i16 @llvm.bswap.i16(i16 %254)
  %conv445 = zext i16 %255 to i32
  %call446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.320, i32 noundef %conv445) #17
  %data_len = getelementptr inbounds %struct.ubifs_ino_node, ptr %node, i32 0, i32 15
  %256 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %data_len, align 1
  %258 = call i32 @llvm.bswap.i32(i32 %257)
  %call451 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.323, i32 noundef %258) #17
  br label %out_unlock

sw.bb452:                                         ; preds = %if.end69.sw.bb452_crit_edge, %if.end69.sw.bb452_crit_edge885
  %nlen453 = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 5
  %259 = ptrtoint ptr %nlen453 to i32
  call void @__asan_loadN_noabort(i32 %259, i32 2)
  %260 = load i16, ptr %nlen453, align 1
  %261 = tail call i16 @llvm.bswap.i16(i16 %260)
  %conv454 = zext i16 %261 to i32
  %key455 = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 1
  %262 = ptrtoint ptr %key455 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %key455, align 8
  %264 = tail call i32 @llvm.bswap.i32(i32 %263) #14
  %265 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %key, align 8
  %arrayidx2.i855 = getelementptr %struct.ubifs_dent_node, ptr %node, i32 0, i32 1, i32 4
  %266 = ptrtoint ptr %arrayidx2.i855 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx2.i855, align 4
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #14
  %arrayidx3.i856 = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %269 = ptrtoint ptr %arrayidx3.i856 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %arrayidx3.i856, align 4
  %call461 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %key_buf, i32 noundef 48)
  %call462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull %key_buf) #17
  %inum = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 2
  %270 = ptrtoint ptr %inum to i32
  call void @__asan_loadN_noabort(i32 %270, i32 8)
  %271 = load i64, ptr %inum, align 1
  %272 = call i64 @llvm.bswap.i64(i64 %271)
  %call467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, i64 noundef %272) #17
  %type472 = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 4
  %273 = ptrtoint ptr %type472 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %type472, align 1
  %conv473 = zext i8 %274 to i32
  %call474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, i32 noundef %conv473) #17
  %call479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, i32 noundef %conv454) #17
  %call484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.337) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %261)
  %cmp485 = icmp ugt i16 %261, 255
  %sub488 = add i32 %37, -56
  call void @__sanitizer_cov_trace_cmp4(i32 %sub488, i32 %conv454)
  %cmp489 = icmp ult i32 %sub488, %conv454
  %or.cond = select i1 %cmp485, i1 true, i1 %cmp489
  br i1 %or.cond, label %do.end494, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb452
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %260)
  %cmp498870.not = icmp eq i16 %260, 0
  br i1 %cmp498870.not, label %for.cond.preheader.do.end526_crit_edge, label %land.rhs.preheader

for.cond.preheader.do.end526_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end526

land.rhs.preheader:                               ; preds = %for.cond.preheader
  %umax874 = call i32 @llvm.umax.i32(i32 %conv454, i32 1)
  br label %land.rhs

do.end494:                                        ; preds = %sw.bb452
  call void @__sanitizer_cov_trace_pc() #16
  %call496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.340) #17
  br label %do.end526

land.rhs:                                         ; preds = %do.end505.land.rhs_crit_edge, %land.rhs.preheader
  %i.0871 = phi i32 [ %inc, %do.end505.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %arrayidx500 = getelementptr %struct.ubifs_dent_node, ptr %node, i32 0, i32 7, i32 %i.0871
  %275 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx500, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool502.not = icmp eq i8 %276, 0
  br i1 %tobool502.not, label %land.rhs.do.end526_crit_edge, label %do.end505

land.rhs.do.end526_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end526

do.end505:                                        ; preds = %land.rhs
  %conv501 = zext i8 %276 to i32
  %arrayidx510 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv501
  %277 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx510, align 1
  %279 = and i8 %278, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %cmp513.not = icmp eq i8 %279, 0
  %spec.select854 = select i1 %cmp513.not, i32 63, i32 %conv501
  %call522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.343, i32 noundef %spec.select854) #17
  %inc = add nuw nsw i32 %i.0871, 1
  %exitcond875.not = icmp eq i32 %inc, %umax874
  br i1 %exitcond875.not, label %do.end505.do.end526_crit_edge, label %do.end505.land.rhs_crit_edge

do.end505.land.rhs_crit_edge:                     ; preds = %do.end505
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

do.end505.do.end526_crit_edge:                    ; preds = %do.end505
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end526

do.end526:                                        ; preds = %do.end505.do.end526_crit_edge, %land.rhs.do.end526_crit_edge, %do.end494, %for.cond.preheader.do.end526_crit_edge
  %call528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.346) #17
  br label %out_unlock

sw.bb529:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %key530 = getelementptr inbounds %struct.ubifs_data_node, ptr %node, i32 0, i32 1
  %280 = ptrtoint ptr %key530 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %key530, align 8
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #14
  %283 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %key, align 8
  %arrayidx2.i857 = getelementptr %struct.ubifs_data_node, ptr %node, i32 0, i32 1, i32 4
  %284 = ptrtoint ptr %arrayidx2.i857 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx2.i857, align 4
  %286 = tail call i32 @llvm.bswap.i32(i32 %285) #14
  %arrayidx3.i858 = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %287 = ptrtoint ptr %arrayidx3.i858 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %arrayidx3.i858, align 4
  %call536 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %key_buf, i32 noundef 48)
  %call537 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull %key_buf) #17
  %size542 = getelementptr inbounds %struct.ubifs_data_node, ptr %node, i32 0, i32 2
  %288 = ptrtoint ptr %size542 to i32
  call void @__asan_loadN_noabort(i32 %288, i32 4)
  %289 = load i32, ptr %size542, align 1
  %290 = call i32 @llvm.bswap.i32(i32 %289)
  %call543 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.351, i32 noundef %290) #17
  %compr_type548 = getelementptr inbounds %struct.ubifs_data_node, ptr %node, i32 0, i32 3
  %291 = ptrtoint ptr %compr_type548 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 2)
  %292 = load i16, ptr %compr_type548, align 1
  %293 = call i16 @llvm.bswap.i16(i16 %292)
  %conv549 = zext i16 %293 to i32
  %call550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, i32 noundef %conv549) #17
  %294 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %294, i32 4)
  %295 = load i32, ptr %len.i, align 1
  %296 = call i32 @llvm.bswap.i32(i32 %295)
  %sub556 = add i32 %296, -48
  %call557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.357, i32 noundef %sub556) #17
  %sub562 = add i32 %37, -48
  %call563 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.360, i32 noundef %sub562) #17
  %data = getelementptr inbounds %struct.ubifs_data_node, ptr %node, i32 0, i32 5
  call void @print_hex_dump(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.362, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %data, i32 noundef %sub562, i1 noundef zeroext false) #14
  br label %out_unlock

sw.bb565:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %inum570 = getelementptr inbounds %struct.ubifs_trun_node, ptr %node, i32 0, i32 1
  %297 = ptrtoint ptr %inum570 to i32
  call void @__asan_loadN_noabort(i32 %297, i32 4)
  %298 = load i32, ptr %inum570, align 1
  %299 = tail call i32 @llvm.bswap.i32(i32 %298)
  %call571 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.364, i32 noundef %299) #17
  %old_size = getelementptr inbounds %struct.ubifs_trun_node, ptr %node, i32 0, i32 3
  %300 = ptrtoint ptr %old_size to i32
  call void @__asan_loadN_noabort(i32 %300, i32 8)
  %301 = load i64, ptr %old_size, align 1
  %302 = tail call i64 @llvm.bswap.i64(i64 %301)
  %call576 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.367, i64 noundef %302) #17
  %new_size = getelementptr inbounds %struct.ubifs_trun_node, ptr %node, i32 0, i32 4
  %303 = ptrtoint ptr %new_size to i32
  call void @__asan_loadN_noabort(i32 %303, i32 8)
  %304 = load i64, ptr %new_size, align 1
  %305 = tail call i64 @llvm.bswap.i64(i64 %304)
  %call581 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.370, i64 noundef %305) #17
  br label %out_unlock

sw.bb582:                                         ; preds = %if.end69
  %sub583 = add i32 %37, -28
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %306 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %307, 12
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %308 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i, %309
  %div = udiv i32 %sub583, %add1.i
  %child_cnt = getelementptr inbounds %struct.ubifs_idx_node, ptr %node, i32 0, i32 1
  %310 = ptrtoint ptr %child_cnt to i32
  call void @__asan_loadN_noabort(i32 %310, i32 2)
  %311 = load i16, ptr %child_cnt, align 1
  %312 = tail call i16 @llvm.bswap.i16(i16 %311)
  %conv586 = zext i16 %312 to i32
  %313 = tail call i32 @llvm.smin.i32(i32 %div, i32 %conv586)
  %call600 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef %conv586) #17
  %level = getelementptr inbounds %struct.ubifs_idx_node, ptr %node, i32 0, i32 2
  %314 = ptrtoint ptr %level to i32
  call void @__asan_loadN_noabort(i32 %314, i32 2)
  %315 = load i16, ptr %level, align 1
  %316 = tail call i16 @llvm.bswap.i16(i16 %315)
  %conv605 = zext i16 %316 to i32
  %call606 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.376, i32 noundef %conv605) #17
  %call611 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.379) #17
  %fanout616 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %cmp613868 = icmp sgt i32 %313, 0
  br i1 %cmp613868, label %land.rhs615.lr.ph, label %sw.bb582.out_unlock_crit_edge

sw.bb582.out_unlock_crit_edge:                    ; preds = %sw.bb582
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

land.rhs615.lr.ph:                                ; preds = %sw.bb582
  %branches.i = getelementptr inbounds %struct.ubifs_idx_node, ptr %node, i32 0, i32 3
  %arrayidx3.i864 = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  br label %land.rhs615

land.rhs615:                                      ; preds = %for.body620.land.rhs615_crit_edge, %land.rhs615.lr.ph
  %i.1869 = phi i32 [ 0, %land.rhs615.lr.ph ], [ %inc634, %for.body620.land.rhs615_crit_edge ]
  %317 = ptrtoint ptr %fanout616 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %fanout616, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1869, i32 %318)
  %cmp617 = icmp slt i32 %i.1869, %318
  br i1 %cmp617, label %for.body620, label %land.rhs615.out_unlock_crit_edge

land.rhs615.out_unlock_crit_edge:                 ; preds = %land.rhs615
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

for.body620:                                      ; preds = %land.rhs615
  %319 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %key_len.i, align 4
  %add.i860 = add i32 %320, 12
  %321 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %hash_len.i, align 8
  %add1.i862 = add i32 %add.i860, %322
  %mul.i = mul i32 %add1.i862, %i.1869
  %add.ptr.i = getelementptr i8, ptr %branches.i, i32 %mul.i
  %key622 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i, i32 0, i32 3
  %323 = ptrtoint ptr %key622 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %key622, align 8
  %325 = call i32 @llvm.bswap.i32(i32 %324) #14
  %326 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %key, align 8
  %arrayidx2.i863 = getelementptr [2 x i32], ptr %key622, i32 0, i32 1
  %327 = ptrtoint ptr %arrayidx2.i863 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx2.i863, align 4
  %329 = call i32 @llvm.bswap.i32(i32 %328) #14
  %330 = ptrtoint ptr %arrayidx3.i864 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %arrayidx3.i864, align 4
  %331 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %331, i32 4)
  %332 = load i32, ptr %add.ptr.i, align 1
  %333 = call i32 @llvm.bswap.i32(i32 %332)
  %offs628 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i, i32 0, i32 1
  %334 = ptrtoint ptr %offs628 to i32
  call void @__asan_loadN_noabort(i32 %334, i32 4)
  %335 = load i32, ptr %offs628, align 1
  %336 = call i32 @llvm.bswap.i32(i32 %335)
  %len629 = getelementptr inbounds %struct.ubifs_branch, ptr %add.ptr.i, i32 0, i32 2
  %337 = ptrtoint ptr %len629 to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %len629, align 1
  %339 = call i32 @llvm.bswap.i32(i32 %338)
  %call631 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %key_buf, i32 noundef 48)
  %call632 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.382, i32 noundef %i.1869, i32 noundef %333, i32 noundef %336, i32 noundef %339, ptr noundef nonnull %key_buf) #17
  %inc634 = add nuw nsw i32 %i.1869, 1
  %exitcond873.not = icmp eq i32 %inc634, %313
  br i1 %exitcond873.not, label %for.body620.out_unlock_crit_edge, label %for.body620.land.rhs615_crit_edge

for.body620.land.rhs615_crit_edge:                ; preds = %for.body620
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs615

for.body620.out_unlock_crit_edge:                 ; preds = %for.body620
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

sw.bb636:                                         ; preds = %if.end69
  %cmt_no641 = getelementptr inbounds %struct.ubifs_orph_node, ptr %node, i32 0, i32 1
  %340 = ptrtoint ptr %cmt_no641 to i32
  call void @__asan_loadN_noabort(i32 %340, i32 8)
  %341 = load i64, ptr %cmt_no641, align 1
  %342 = and i64 %341, -129
  %343 = tail call i64 @llvm.bswap.i64(i64 %342)
  %call643 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i64 noundef %343) #17
  %344 = ptrtoint ptr %cmt_no641 to i32
  call void @__asan_loadN_noabort(i32 %344, i32 8)
  %345 = load i64, ptr %cmt_no641, align 1
  %346 = lshr i64 %345, 7
  %shr = and i64 %346, 1
  %call649 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.387, i64 noundef %shr) #17
  %sub650 = add i32 %37, -32
  %shr651 = lshr i32 %sub650, 3
  %call656 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.390, i32 noundef %shr651) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub650)
  %cmp658866.not = icmp ult i32 %sub650, 8
  br i1 %cmp658866.not, label %sw.bb636.out_unlock_crit_edge, label %do.end663.preheader

sw.bb636.out_unlock_crit_edge:                    ; preds = %sw.bb636
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

do.end663.preheader:                              ; preds = %sw.bb636
  %umax = call i32 @llvm.umax.i32(i32 %shr651, i32 1)
  br label %do.end663

do.end663:                                        ; preds = %do.end663.do.end663_crit_edge, %do.end663.preheader
  %i.2867 = phi i32 [ %inc668, %do.end663.do.end663_crit_edge ], [ 0, %do.end663.preheader ]
  %arrayidx665 = getelementptr %struct.ubifs_orph_node, ptr %node, i32 0, i32 2, i32 %i.2867
  %347 = ptrtoint ptr %arrayidx665 to i32
  call void @__asan_loadN_noabort(i32 %347, i32 8)
  %348 = load i64, ptr %arrayidx665, align 1
  %349 = tail call i64 @llvm.bswap.i64(i64 %348)
  %call666 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.393, i64 noundef %349) #17
  %inc668 = add nuw nsw i32 %i.2867, 1
  %exitcond.not = icmp eq i32 %inc668, %umax
  br i1 %exitcond.not, label %do.end663.out_unlock_crit_edge, label %do.end663.do.end663_crit_edge

do.end663.do.end663_crit_edge:                    ; preds = %do.end663
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end663

do.end663.out_unlock_crit_edge:                   ; preds = %do.end663
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

do.end673:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %call675 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv) #17
  br label %out_unlock

out_unlock:                                       ; preds = %do.end673, %do.end663.out_unlock_crit_edge, %sw.bb636.out_unlock_crit_edge, %for.body620.out_unlock_crit_edge, %land.rhs615.out_unlock_crit_edge, %sw.bb582.out_unlock_crit_edge, %sw.bb565, %sw.bb529, %do.end526, %sw.bb366, %sw.bb350, %sw.bb207, %sw.bb75, %sw.bb, %if.end69.out_unlock_crit_edge, %if.end69.out_unlock_crit_edge886, %if.then56, %dbg_ntype.exit.out_unlock_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %key_buf) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_budget_req(ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %req, align 4
  %bf.lshr = lshr i32 %bf.load, 25
  %bf.clear = and i32 %bf.lshr, 1
  %bf.lshr2 = lshr i32 %bf.load, 8
  %bf.clear3 = and i32 %bf.lshr2, 15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, i32 noundef %bf.clear, i32 noundef %bf.clear3) #17
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load7 = load i32, ptr %req, align 4
  %bf.lshr8 = lshr i32 %bf.load7, 12
  %bf.clear9 = and i32 %bf.lshr8, 8191
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load10 = load i16, ptr %dirtied_ino_d, align 4
  %bf.lshr11 = lshr i16 %bf.load10, 1
  %bf.cast = zext i16 %bf.lshr11 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.400, i32 noundef %bf.clear9, i32 noundef %bf.cast) #17
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load16 = load i32, ptr %req, align 4
  %bf.lshr17 = lshr i32 %bf.load16, 29
  %bf.clear18 = and i32 %bf.lshr17, 1
  %bf.lshr20 = lshr i32 %bf.load16, 28
  %bf.clear21 = and i32 %bf.lshr20, 1
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.403, i32 noundef %bf.clear18, i32 noundef %bf.clear21) #17
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load26 = load i32, ptr %req, align 4
  %bf.lshr27 = lshr i32 %bf.load26, 27
  %bf.clear28 = and i32 %bf.lshr27, 1
  %bf.lshr30 = lshr i32 %bf.load26, 26
  %bf.clear31 = and i32 %bf.lshr30, 1
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.406, i32 noundef %bf.clear28, i32 noundef %bf.clear31) #17
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %idx_growth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx_growth, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, i32 noundef %6) #17
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %data_growth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %9 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dd_growth, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.412, i32 noundef %8, i32 noundef %10) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lstats(ptr nocapture noundef readonly %lst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
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
  %6 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lst, align 8
  %idx_lebs = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 2
  %8 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx_lebs, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414, i32 noundef %5, i32 noundef %7, i32 noundef %9) #17
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 1
  %10 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %taken_empty_lebs, align 4
  %total_free = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %12 = ptrtoint ptr %total_free to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %total_free, align 8
  %total_dirty = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %14 = ptrtoint ptr %total_dirty to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %total_dirty, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.417, i32 noundef %11, i64 noundef %13, i64 noundef %15) #17
  %total_used = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 5
  %16 = ptrtoint ptr %total_used to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %total_used, align 8
  %total_dark = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %18 = ptrtoint ptr %total_dark to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %total_dark, align 8
  %total_dead = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 6
  %20 = ptrtoint ptr %total_dead to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %total_dead, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, i64 noundef %17, i64 noundef %19, i64 noundef %21) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_budg(ptr noundef %c, ptr noundef readonly %bi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
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
  %data_growth = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 1
  %6 = ptrtoint ptr %data_growth to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data_growth, align 8
  %dd_growth = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 2
  %8 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dd_growth, align 8
  %add = add i64 %9, %7
  %10 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bi, align 8
  %add4 = add i64 %add, %11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, i32 noundef %5, i64 noundef %add, i64 noundef %add4) #17
  %12 = ptrtoint ptr %data_growth to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_growth, align 8
  %14 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dd_growth, align 8
  %16 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bi, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, i64 noundef %13, i64 noundef %15, i64 noundef %17) #17
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 5
  %18 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_idx_lebs, align 8
  %old_idx_sz = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 4
  %20 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %old_idx_sz, align 8
  %uncommitted_idx = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 3
  %22 = ptrtoint ptr %uncommitted_idx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %uncommitted_idx, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.428, i32 noundef %19, i64 noundef %21, i64 noundef %23) #17
  %page_budget = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 7
  %24 = ptrtoint ptr %page_budget to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %page_budget, align 8
  %inode_budget = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 8
  %26 = ptrtoint ptr %inode_budget to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inode_budget, align 4
  %dent_budget = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 9
  %28 = ptrtoint ptr %dent_budget to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dent_budget, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.431, i32 noundef %25, i32 noundef %27, i32 noundef %29) #17
  %nospace = getelementptr inbounds %struct.ubifs_budg_info, ptr %bi, i32 0, i32 6
  %30 = ptrtoint ptr %nospace to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %nospace, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr29 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr29, 1
  %bf.cast30 = zext i8 %bf.clear to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.434, i32 noundef %bf.cast, i32 noundef %bf.cast30) #17
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %31 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dark_wm, align 4
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %33 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dead_wm, align 8
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %35 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_idx_node_sz, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.437, i32 noundef %32, i32 noundef %34, i32 noundef %36) #17
  %bi37 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %cmp.not = icmp eq ptr %bi37, %bi
  br i1 %cmp.not, label %do.end40, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

do.end40:                                         ; preds = %entry
  %freeable_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %37 = ptrtoint ptr %freeable_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %freeable_cnt, align 8
  %calc_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 88
  %39 = ptrtoint ptr %calc_idx_sz to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %calc_idx_sz, align 8
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %41 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx_gc_cnt, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.440, i32 noundef %38, i64 noundef %40, i32 noundef %42) #17
  %dirty_pg_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 82
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_pg_cnt, i32 noundef 4) #14
  %43 = ptrtoint ptr %dirty_pg_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dirty_pg_cnt, align 4
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i207 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt, i32 noundef 4) #14
  %45 = ptrtoint ptr %dirty_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %dirty_zn_cnt, align 4
  %clean_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 84
  %call.i.i208 = tail call zeroext i1 @__kasan_check_read(ptr noundef %clean_zn_cnt, i32 noundef 4) #14
  %47 = ptrtoint ptr %clean_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %clean_zn_cnt, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.443, i32 noundef %44, i32 noundef %46, i32 noundef %48) #17
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %49 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gc_lnum, align 4
  %ihead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %51 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ihead_lnum, align 8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.446, i32 noundef %50, i32 noundef %52) #17
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %53 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %jheads, align 8
  %tobool.not = icmp eq ptr %54, null
  br i1 %tobool.not, label %do.end40.if.end68_crit_edge, label %for.cond.preheader

do.end40.if.end68_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

for.cond.preheader:                               ; preds = %do.end40
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %55 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp57209 = icmp sgt i32 %56, 0
  br i1 %cmp57209, label %for.cond.preheader.do.end60_crit_edge, label %for.cond.preheader.if.end68_crit_edge

for.cond.preheader.if.end68_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

for.cond.preheader.do.end60_crit_edge:            ; preds = %for.cond.preheader
  br label %do.end60

do.end60:                                         ; preds = %dbg_jhead.exit.do.end60_crit_edge, %for.cond.preheader.do.end60_crit_edge
  %i.0210 = phi i32 [ %inc, %dbg_jhead.exit.do.end60_crit_edge ], [ 0, %for.cond.preheader.do.end60_crit_edge ]
  %57 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %jheads, align 8
  %jhead = getelementptr %struct.ubifs_jhead, ptr %58, i32 %i.0210, i32 0, i32 7
  %59 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %jhead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %switch.lookup, label %do.end60.dbg_jhead.exit_crit_edge

do.end60.dbg_jhead.exit_crit_edge:                ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %dbg_jhead.exit

switch.lookup:                                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ubifs_dump_budg, i32 0, i32 %60
  %62 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dbg_jhead.exit

dbg_jhead.exit:                                   ; preds = %switch.lookup, %do.end60.dbg_jhead.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.31, %do.end60.dbg_jhead.exit_crit_edge ]
  %lnum = getelementptr %struct.ubifs_jhead, ptr %58, i32 %i.0210, i32 0, i32 2
  %63 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lnum, align 8
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.449, ptr noundef nonnull %retval.0.i, i32 noundef %64) #17
  %inc = add nuw nsw i32 %i.0210, 1
  %65 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %jhead_cnt, align 4
  %cmp57 = icmp slt i32 %inc, %66
  br i1 %cmp57, label %dbg_jhead.exit.do.end60_crit_edge, label %dbg_jhead.exit.if.end68_crit_edge

dbg_jhead.exit.if.end68_crit_edge:                ; preds = %dbg_jhead.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

dbg_jhead.exit.do.end60_crit_edge:                ; preds = %dbg_jhead.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

if.end68:                                         ; preds = %dbg_jhead.exit.if.end68_crit_edge, %for.cond.preheader.if.end68_crit_edge, %do.end40.if.end68_crit_edge
  %buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %call69 = tail call ptr @rb_first(ptr noundef %buds) #14
  %tobool71.not211 = icmp eq ptr %call69, null
  br i1 %tobool71.not211, label %if.end68.for.end82_crit_edge, label %if.end68.for.body72_crit_edge

if.end68.for.body72_crit_edge:                    ; preds = %if.end68
  br label %for.body72

if.end68.for.end82_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end82

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %if.end68.for.body72_crit_edge
  %rb.0212 = phi ptr [ %call81, %for.body72.for.body72_crit_edge ], [ %call69, %if.end68.for.body72_crit_edge ]
  %add.ptr = getelementptr i8, ptr %rb.0212, i32 -20
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.452, i32 noundef %68) #17
  %call81 = tail call ptr @rb_next(ptr noundef nonnull %rb.0212) #14
  %tobool71.not = icmp eq ptr %call81, null
  br i1 %tobool71.not, label %for.body72.for.end82_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body72

for.body72.for.end82_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end82

for.end82:                                        ; preds = %for.body72.for.end82_crit_edge, %if.end68.for.end82_crit_edge
  %old_buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 22
  %69 = ptrtoint ptr %old_buds to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn213 = load ptr, ptr %old_buds, align 4
  %cmp88.not214 = icmp eq ptr %.pn213, %old_buds
  br i1 %cmp88.not214, label %for.end82.for.end102_crit_edge, label %for.end82.do.end92_crit_edge

for.end82.do.end92_crit_edge:                     ; preds = %for.end82
  br label %do.end92

for.end82.for.end102_crit_edge:                   ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end102

do.end92:                                         ; preds = %do.end92.do.end92_crit_edge, %for.end82.do.end92_crit_edge
  %.pn215 = phi ptr [ %.pn, %do.end92.do.end92_crit_edge ], [ %.pn213, %for.end82.do.end92_crit_edge ]
  %bud.0 = getelementptr i8, ptr %.pn215, i32 -12
  %70 = ptrtoint ptr %bud.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bud.0, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.455, i32 noundef %71) #17
  %72 = ptrtoint ptr %.pn215 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn = load ptr, ptr %.pn215, align 4
  %cmp88.not = icmp eq ptr %.pn, %old_buds
  br i1 %cmp88.not, label %do.end92.for.end102_crit_edge, label %do.end92.do.end92_crit_edge

do.end92.do.end92_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end92

do.end92.for.end102_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end102

for.end102:                                       ; preds = %do.end92.for.end102_crit_edge, %for.end82.for.end102_crit_edge
  %idx_gc104 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 123
  %73 = ptrtoint ptr %idx_gc104 to i32
  call void @__asan_load4_noabort(i32 %73)
  %idx_gc.0216 = load ptr, ptr %idx_gc104, align 4
  %cmp111.not217 = icmp eq ptr %idx_gc.0216, %idx_gc104
  br i1 %cmp111.not217, label %for.end102.do.end129_crit_edge, label %for.end102.do.end116_crit_edge

for.end102.do.end116_crit_edge:                   ; preds = %for.end102
  br label %do.end116

for.end102.do.end129_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end129

do.end116:                                        ; preds = %do.end116.do.end116_crit_edge, %for.end102.do.end116_crit_edge
  %idx_gc.0218 = phi ptr [ %idx_gc.0, %do.end116.do.end116_crit_edge ], [ %idx_gc.0216, %for.end102.do.end116_crit_edge ]
  %lnum118 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %idx_gc.0218, i32 0, i32 1
  %74 = ptrtoint ptr %lnum118 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lnum118, align 4
  %unmap = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %idx_gc.0218, i32 0, i32 2
  %76 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %unmap, align 4
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.458, i32 noundef %75, i32 noundef %77) #17
  %78 = ptrtoint ptr %idx_gc.0218 to i32
  call void @__asan_load4_noabort(i32 %78)
  %idx_gc.0 = load ptr, ptr %idx_gc.0218, align 4
  %cmp111.not = icmp eq ptr %idx_gc.0, %idx_gc104
  br i1 %cmp111.not, label %do.end116.do.end129_crit_edge, label %do.end116.do.end116_crit_edge

do.end116.do.end116_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end116

do.end116.do.end129_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end129

do.end129:                                        ; preds = %do.end116.do.end129_crit_edge, %for.end102.do.end129_crit_edge
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %79 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cmt_state, align 4
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.461, i32 noundef %80) #17
  %min_idx_lebs133 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %81 = ptrtoint ptr %min_idx_lebs133 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %min_idx_lebs133, align 8
  %call134 = tail call i64 @ubifs_calc_available(ptr noundef %c, i32 noundef %82) #14
  %data_growth136 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 1
  %83 = ptrtoint ptr %data_growth136 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %data_growth136, align 8
  %dd_growth138 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 2
  %85 = ptrtoint ptr %dd_growth138 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %dd_growth138, align 8
  %add139 = add i64 %86, %84
  %call140 = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %c) #14
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.464) #17
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.467, i64 noundef %call134, i64 noundef %add139, i64 noundef %call140) #17
  br label %out_unlock

out_unlock:                                       ; preds = %do.end129, %entry.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_calc_available(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_get_free_space_nolock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lprop(ptr noundef %c, ptr nocapture noundef readonly %lp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lp, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 1
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty, align 4
  %add = add i32 %3, %1
  %dead_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %4 = ptrtoint ptr %dead_wm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dead_wm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp slt i32 %add, %5
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @ubifs_calc_dark(ptr noundef %c, i32 noundef %add) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %dead.0 = phi i32 [ 0, %if.else ], [ %add, %entry.if.end_crit_edge ]
  %dark.0 = phi i32 [ %call, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lnum11 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %8 = ptrtoint ptr %lnum11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lnum11, align 4
  %10 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lp, align 4
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty, align 4
  %leb_size14 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %14 = ptrtoint ptr %leb_size14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size14, align 8
  %sub15 = sub i32 %15, %add
  br i1 %tobool.not, label %do.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.469, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %sub15, i32 noundef %add, i32 noundef %7) #17
  br label %if.end18

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %div = udiv i32 %add, 4256
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.472, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %sub15, i32 noundef %add, i32 noundef %dark.0, i32 noundef %dead.0, i32 noundef %div, i32 noundef %7) #17
  br label %if.end18

if.end18:                                         ; preds = %do.end9, %do.end
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and20 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %and41 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool21.not, label %if.else39, label %if.then22

if.then22:                                        ; preds = %if.end18
  br i1 %tobool42.not, label %do.end35, label %do.end29

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.475) #17
  br label %if.end63

do.end35:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.478) #17
  br label %if.end63

if.else39:                                        ; preds = %if.end18
  %and49 = and i32 %17, 15
  br i1 %tobool42.not, label %if.else47, label %if.then43

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and49)
  %switch.selectcmp = icmp eq i32 %and49, 6
  %switch.select = select i1 %switch.selectcmp, ptr @.str.481, ptr @.str.482
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and49)
  %switch.selectcmp153 = icmp eq i32 %and49, 2
  %switch.select154 = select i1 %switch.selectcmp153, ptr @.str.480, ptr %switch.select
  br label %do.end60

if.else47:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and49)
  %18 = icmp ult i32 %and49, 6
  br i1 %18, label %switch.lookup, label %if.else47.do.end60_crit_edge

if.else47.do.end60_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

switch.lookup:                                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.ubifs_dump_lprop, i32 0, i32 %and49
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end60

do.end60:                                         ; preds = %switch.lookup, %if.else47.do.end60_crit_edge, %if.then43
  %s.0 = phi ptr [ %switch.select154, %if.then43 ], [ %switch.load, %switch.lookup ], [ null, %if.else47.do.end60_crit_edge ]
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.489, ptr noundef %s.0) #17
  br label %if.end63

if.end63:                                         ; preds = %do.end60, %do.end35, %do.end29
  %buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %call64 = tail call ptr @rb_first(ptr noundef %buds) #14
  %tobool65.not164 = icmp eq ptr %call64, null
  br i1 %tobool65.not164, label %if.end63.for.end99_crit_edge, label %for.body.lr.ph

if.end63.for.end99_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end99

for.body.lr.ph:                                   ; preds = %if.end63
  %lnum68 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc97.for.body_crit_edge, %for.body.lr.ph
  %rb.0165 = phi ptr [ %call64, %for.body.lr.ph ], [ %call98, %for.inc97.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %rb.0165, i32 -20
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %lnum68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lnum68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp69 = icmp eq i32 %21, %23
  br i1 %cmp69, label %for.cond71.preheader, label %for.body.for.inc97_crit_edge

for.body.for.inc97_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc97

for.cond71.preheader:                             ; preds = %for.body
  %24 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp72160 = icmp sgt i32 %25, 0
  br i1 %cmp72160, label %for.body73.peel, label %for.cond71.preheader.do.end91_crit_edge

for.cond71.preheader.do.end91_crit_edge:          ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end91

for.body73.peel:                                  ; preds = %for.cond71.preheader
  %26 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jheads, align 8
  %tobool74.not.peel = icmp eq ptr %27, null
  br i1 %tobool74.not.peel, label %for.body73.peel.for.inc.peel_crit_edge, label %land.lhs.true.peel

for.body73.peel.for.inc.peel_crit_edge:           ; preds = %for.body73.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.peel

land.lhs.true.peel:                               ; preds = %for.body73.peel
  %28 = ptrtoint ptr %lnum68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lnum68, align 4
  %lnum77.peel = getelementptr %struct.ubifs_jhead, ptr %27, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %lnum77.peel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lnum77.peel, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp78.peel = icmp eq i32 %29, %31
  br i1 %cmp78.peel, label %dbg_jhead.exit.peel, label %land.lhs.true.peel.for.inc.peel_crit_edge

land.lhs.true.peel.for.inc.peel_crit_edge:        ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.peel

dbg_jhead.exit.peel:                              ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #16
  %call85.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.28) #17
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %dbg_jhead.exit.peel, %land.lhs.true.peel.for.inc.peel_crit_edge, %for.body73.peel.for.inc.peel_crit_edge
  %head.1.peel = phi i32 [ 1, %dbg_jhead.exit.peel ], [ 0, %land.lhs.true.peel.for.inc.peel_crit_edge ], [ 0, %for.body73.peel.for.inc.peel_crit_edge ]
  %32 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp72.peel = icmp sgt i32 %33, 1
  br i1 %cmp72.peel, label %for.body73.peel176, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body73.peel176:                               ; preds = %for.inc.peel
  %34 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jheads, align 8
  %tobool74.not.peel177 = icmp eq ptr %35, null
  br i1 %tobool74.not.peel177, label %for.body73.peel176.for.inc.peel188_crit_edge, label %land.lhs.true.peel178

for.body73.peel176.for.inc.peel188_crit_edge:     ; preds = %for.body73.peel176
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.peel188

land.lhs.true.peel178:                            ; preds = %for.body73.peel176
  %36 = ptrtoint ptr %lnum68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lnum68, align 4
  %lnum77.peel179 = getelementptr %struct.ubifs_jhead, ptr %35, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %lnum77.peel179 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lnum77.peel179, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp78.peel180 = icmp eq i32 %37, %39
  br i1 %cmp78.peel180, label %dbg_jhead.exit.peel185, label %land.lhs.true.peel178.for.inc.peel188_crit_edge

land.lhs.true.peel178.for.inc.peel188_crit_edge:  ; preds = %land.lhs.true.peel178
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.peel188

dbg_jhead.exit.peel185:                           ; preds = %land.lhs.true.peel178
  call void @__sanitizer_cov_trace_pc() #16
  %call85.peel187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.29) #17
  br label %for.inc.peel188

for.inc.peel188:                                  ; preds = %dbg_jhead.exit.peel185, %land.lhs.true.peel178.for.inc.peel188_crit_edge, %for.body73.peel176.for.inc.peel188_crit_edge
  %head.1.peel189 = phi i32 [ 1, %dbg_jhead.exit.peel185 ], [ %head.1.peel, %land.lhs.true.peel178.for.inc.peel188_crit_edge ], [ %head.1.peel, %for.body73.peel176.for.inc.peel188_crit_edge ]
  %40 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp72.peel191 = icmp sgt i32 %41, 2
  br i1 %cmp72.peel191, label %for.body73.peel193, label %for.inc.peel188.for.end_crit_edge

for.inc.peel188.for.end_crit_edge:                ; preds = %for.inc.peel188
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body73.peel193:                               ; preds = %for.inc.peel188
  %42 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %jheads, align 8
  %tobool74.not.peel194 = icmp eq ptr %43, null
  br i1 %tobool74.not.peel194, label %for.body73.peel193.for.inc.peel205_crit_edge, label %land.lhs.true.peel195

for.body73.peel193.for.inc.peel205_crit_edge:     ; preds = %for.body73.peel193
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.peel205

land.lhs.true.peel195:                            ; preds = %for.body73.peel193
  %44 = ptrtoint ptr %lnum68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lnum68, align 4
  %lnum77.peel196 = getelementptr %struct.ubifs_jhead, ptr %43, i32 2, i32 0, i32 2
  %46 = ptrtoint ptr %lnum77.peel196 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lnum77.peel196, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp78.peel197 = icmp eq i32 %45, %47
  br i1 %cmp78.peel197, label %dbg_jhead.exit.peel202, label %land.lhs.true.peel195.for.inc.peel205_crit_edge

land.lhs.true.peel195.for.inc.peel205_crit_edge:  ; preds = %land.lhs.true.peel195
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.peel205

dbg_jhead.exit.peel202:                           ; preds = %land.lhs.true.peel195
  call void @__sanitizer_cov_trace_pc() #16
  %call85.peel204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.30) #17
  br label %for.inc.peel205

for.inc.peel205:                                  ; preds = %dbg_jhead.exit.peel202, %land.lhs.true.peel195.for.inc.peel205_crit_edge, %for.body73.peel193.for.inc.peel205_crit_edge
  %head.1.peel206 = phi i32 [ 1, %dbg_jhead.exit.peel202 ], [ %head.1.peel189, %land.lhs.true.peel195.for.inc.peel205_crit_edge ], [ %head.1.peel189, %for.body73.peel193.for.inc.peel205_crit_edge ]
  %48 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp72.peel208 = icmp sgt i32 %49, 3
  br i1 %cmp72.peel208, label %for.inc.peel205.for.body73_crit_edge, label %for.inc.peel205.for.end_crit_edge

for.inc.peel205.for.end_crit_edge:                ; preds = %for.inc.peel205
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.peel205.for.body73_crit_edge:             ; preds = %for.inc.peel205
  br label %for.body73

for.body73:                                       ; preds = %for.inc.for.body73_crit_edge, %for.inc.peel205.for.body73_crit_edge
  %i.0162 = phi i32 [ %inc, %for.inc.for.body73_crit_edge ], [ 3, %for.inc.peel205.for.body73_crit_edge ]
  %head.0161 = phi i32 [ %head.1, %for.inc.for.body73_crit_edge ], [ %head.1.peel206, %for.inc.peel205.for.body73_crit_edge ]
  %50 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %jheads, align 8
  %tobool74.not = icmp eq ptr %51, null
  br i1 %tobool74.not, label %for.body73.for.inc_crit_edge, label %land.lhs.true

for.body73.for.inc_crit_edge:                     ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body73
  %52 = ptrtoint ptr %lnum68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lnum68, align 4
  %lnum77 = getelementptr %struct.ubifs_jhead, ptr %51, i32 %i.0162, i32 0, i32 2
  %54 = ptrtoint ptr %lnum77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lnum77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp78 = icmp eq i32 %53, %55
  br i1 %cmp78, label %dbg_jhead.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

dbg_jhead.exit:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.31) #17
  br label %for.inc

for.inc:                                          ; preds = %dbg_jhead.exit, %land.lhs.true.for.inc_crit_edge, %for.body73.for.inc_crit_edge
  %head.1 = phi i32 [ 1, %dbg_jhead.exit ], [ %head.0161, %land.lhs.true.for.inc_crit_edge ], [ %head.0161, %for.body73.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0162, 1
  %56 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %jhead_cnt, align 4
  %cmp72 = icmp slt i32 %inc, %57
  br i1 %cmp72, label %for.inc.for.body73_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !1233

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body73_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body73

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel205.for.end_crit_edge, %for.inc.peel188.for.end_crit_edge, %for.inc.peel.for.end_crit_edge
  %head.1.lcssa = phi i32 [ %head.1.peel, %for.inc.peel.for.end_crit_edge ], [ %head.1.peel189, %for.inc.peel188.for.end_crit_edge ], [ %head.1.peel206, %for.inc.peel205.for.end_crit_edge ], [ %head.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head.1.lcssa)
  %tobool87.not = icmp eq i32 %head.1.lcssa, 0
  br i1 %tobool87.not, label %for.end.do.end91_crit_edge, label %for.end.for.inc97_crit_edge

for.end.for.inc97_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc97

for.end.do.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end91

do.end91:                                         ; preds = %for.end.do.end91_crit_edge, %for.cond71.preheader.do.end91_crit_edge
  %jhead = getelementptr i8, ptr %rb.0165, i32 -12
  %58 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %jhead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %switch.lookup172, label %do.end91.dbg_jhead.exit159_crit_edge

do.end91.dbg_jhead.exit159_crit_edge:             ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %dbg_jhead.exit159

switch.lookup172:                                 ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep173 = getelementptr inbounds [3 x ptr], ptr @switch.table.ubifs_dump_lprop.782, i32 0, i32 %59
  %61 = ptrtoint ptr %switch.gep173 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load174 = load ptr, ptr %switch.gep173, align 4
  br label %dbg_jhead.exit159

dbg_jhead.exit159:                                ; preds = %switch.lookup172, %do.end91.dbg_jhead.exit159_crit_edge
  %retval.0.i158 = phi ptr [ %switch.load174, %switch.lookup172 ], [ @.str.31, %do.end91.dbg_jhead.exit159_crit_edge ]
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.495, ptr noundef nonnull %retval.0.i158) #17
  br label %for.inc97

for.inc97:                                        ; preds = %dbg_jhead.exit159, %for.end.for.inc97_crit_edge, %for.body.for.inc97_crit_edge
  %call98 = tail call ptr @rb_next(ptr noundef nonnull %rb.0165) #14
  %tobool65.not = icmp eq ptr %call98, null
  br i1 %tobool65.not, label %for.inc97.for.end99_crit_edge, label %for.inc97.for.body_crit_edge

for.inc97.for.body_crit_edge:                     ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc97.for.end99_crit_edge:                    ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end99

for.end99:                                        ; preds = %for.inc97.for.end99_crit_edge, %if.end63.for.end99_crit_edge
  %lnum100 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %62 = ptrtoint ptr %lnum100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lnum100, align 4
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %64 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %gc_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp101 = icmp eq i32 %63, %65
  br i1 %cmp101, label %do.end105, label %for.end99.do.end111_crit_edge

for.end99.do.end111_crit_edge:                    ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end111

do.end105:                                        ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #16
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.498) #17
  br label %do.end111

do.end111:                                        ; preds = %do.end105, %for.end99.do.end111_crit_edge
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.501) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_dark(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lprops(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %lp = alloca %struct.ubifs_lprops, align 4
  %lst = alloca %struct.ubifs_lp_stats, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lp) #14
  %0 = call ptr @memset(ptr %lp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lst) #14
  %1 = call ptr @memset(ptr %lst, i32 255, i32 56)
  %2 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.503, i32 noundef %7) #17
  call void @ubifs_get_lp_stats(ptr noundef %c, ptr noundef nonnull %lst) #14
  call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %8 = call i32 @llvm.read_register.i32(metadata !1213) #14
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  %14 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lst, align 8
  %idx_lebs.i = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 2
  %16 = ptrtoint ptr %idx_lebs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx_lebs.i, align 8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414, i32 noundef %13, i32 noundef %15, i32 noundef %17) #17
  %taken_empty_lebs.i = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 1
  %18 = ptrtoint ptr %taken_empty_lebs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %taken_empty_lebs.i, align 4
  %total_free.i = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %20 = ptrtoint ptr %total_free.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %total_free.i, align 8
  %total_dirty.i = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %22 = ptrtoint ptr %total_dirty.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %total_dirty.i, align 8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.417, i32 noundef %19, i64 noundef %21, i64 noundef %23) #17
  %total_used.i = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 5
  %24 = ptrtoint ptr %total_used.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %total_used.i, align 8
  %total_dark.i = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %26 = ptrtoint ptr %total_dark.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %total_dark.i, align 8
  %total_dead.i = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 6
  %28 = ptrtoint ptr %total_dead.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %total_dead.i, align 8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, i64 noundef %25, i64 noundef %27, i64 noundef %29) #17
  call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %30 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %main_first, align 8
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %32 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp19 = icmp slt i32 %31, %33
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %lnum.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %31, %entry.for.body_crit_edge ]
  %call2 = call i32 @ubifs_read_one_lp(ptr noundef %c, i32 noundef %lnum.020, ptr noundef nonnull %lp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.505, i32 noundef %lnum.020) #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @ubifs_dump_lprop(ptr noundef %c, ptr noundef nonnull %lp)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %inc = add nsw i32 %lnum.020, 1
  %34 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leb_cnt, align 8
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end5_crit_edge

for.inc.do.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end5:                                          ; preds = %for.inc.do.end5_crit_edge, %entry.do.end5_crit_edge
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %pid9 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid9, align 8
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.507, i32 noundef %39) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lst) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_get_lp_stats(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_one_lp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lpt_info(ptr noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.509, i32 noundef %5) #17
  %lpt_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 153
  %6 = ptrtoint ptr %lpt_sz to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lpt_sz, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.512, i64 noundef %7) #17
  %pnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 137
  %8 = ptrtoint ptr %pnode_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pnode_sz, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.515, i32 noundef %9) #17
  %nnode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %10 = ptrtoint ptr %nnode_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nnode_sz, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.518, i32 noundef %11) #17
  %ltab_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %12 = ptrtoint ptr %ltab_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ltab_sz, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.521, i32 noundef %13) #17
  %lsave_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %14 = ptrtoint ptr %lsave_sz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lsave_sz, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.524, i32 noundef %15) #17
  %big_lpt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %16 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %big_lpt, align 8
  %bf.lshr = lshr i16 %bf.load, 15
  %bf.cast = zext i16 %bf.lshr to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.527, i32 noundef %bf.cast) #17
  %lpt_hght = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 142
  %17 = ptrtoint ptr %lpt_hght to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lpt_hght, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.530, i32 noundef %18) #17
  %pnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 140
  %19 = ptrtoint ptr %pnode_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pnode_cnt, align 8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.533, i32 noundef %20) #17
  %nnode_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 141
  %21 = ptrtoint ptr %nnode_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nnode_cnt, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.536, i32 noundef %22) #17
  %dirty_pn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 151
  %23 = ptrtoint ptr %dirty_pn_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty_pn_cnt, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.539, i32 noundef %24) #17
  %dirty_nn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 150
  %25 = ptrtoint ptr %dirty_nn_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dirty_nn_cnt, align 8
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.542, i32 noundef %26) #17
  %lsave_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 170
  %27 = ptrtoint ptr %lsave_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lsave_cnt, align 8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.545, i32 noundef %28) #17
  %space_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 130
  %29 = ptrtoint ptr %space_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %space_bits, align 8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.548, i32 noundef %30) #17
  %lpt_lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 131
  %31 = ptrtoint ptr %lpt_lnum_bits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lpt_lnum_bits, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.551, i32 noundef %32) #17
  %lpt_offs_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 132
  %33 = ptrtoint ptr %lpt_offs_bits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lpt_offs_bits, align 8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.554, i32 noundef %34) #17
  %lpt_spc_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 133
  %35 = ptrtoint ptr %lpt_spc_bits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lpt_spc_bits, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.557, i32 noundef %36) #17
  %pcnt_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 134
  %37 = ptrtoint ptr %pcnt_bits to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pcnt_bits, align 8
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.560, i32 noundef %38) #17
  %lnum_bits = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 135
  %39 = ptrtoint ptr %lnum_bits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lnum_bits, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.563, i32 noundef %40) #17
  %lpt_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %41 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lpt_lnum, align 4
  %lpt_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %43 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lpt_offs, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.566, i32 noundef %42, i32 noundef %44) #17
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %45 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nhead_lnum, align 4
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %47 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nhead_offs, align 8
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.569, i32 noundef %46, i32 noundef %48) #17
  %ltab_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %49 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ltab_lnum, align 8
  %ltab_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %51 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ltab_offs, align 4
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.572, i32 noundef %50, i32 noundef %52) #17
  %53 = ptrtoint ptr %big_lpt to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load108 = load i16, ptr %big_lpt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load108)
  %tobool.not = icmp sgt i16 %bf.load108, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end113

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end113:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lsave_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %54 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lsave_lnum, align 4
  %lsave_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %56 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lsave_offs, align 8
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.575, i32 noundef %55, i32 noundef %57) #17
  br label %if.end

if.end:                                           ; preds = %do.end113, %entry.if.end_crit_edge
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %58 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lpt_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp171 = icmp sgt i32 %59, 0
  br i1 %cmp171, label %do.end118.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end118.lr.ph:                                  ; preds = %if.end
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %ltab = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 168
  br label %do.end118

do.end118:                                        ; preds = %do.end118.do.end118_crit_edge, %do.end118.lr.ph
  %i.0172 = phi i32 [ 0, %do.end118.lr.ph ], [ %inc, %do.end118.do.end118_crit_edge ]
  %60 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lpt_first, align 8
  %add = add i32 %61, %i.0172
  %62 = ptrtoint ptr %ltab to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ltab, align 8
  %arrayidx = getelementptr %struct.ubifs_lpt_lprops, ptr %63, i32 %i.0172
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %dirty = getelementptr %struct.ubifs_lpt_lprops, ptr %63, i32 %i.0172, i32 1
  %66 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dirty, align 4
  %tgc = getelementptr %struct.ubifs_lpt_lprops, ptr %63, i32 %i.0172, i32 2
  %68 = ptrtoint ptr %tgc to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load124 = load i8, ptr %tgc, align 4
  %bf.lshr125 = lshr i8 %bf.load124, 7
  %bf.cast126 = zext i8 %bf.lshr125 to i32
  %bf.lshr130 = lshr i8 %bf.load124, 6
  %bf.clear = and i8 %bf.lshr130, 1
  %bf.cast131 = zext i8 %bf.clear to i32
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.578, i32 noundef %add, i32 noundef %65, i32 noundef %67, i32 noundef %bf.cast126, i32 noundef %bf.cast131) #17
  %inc = add nuw nsw i32 %i.0172, 1
  %69 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lpt_lebs, align 4
  %cmp = icmp slt i32 %inc, %70
  br i1 %cmp, label %do.end118.do.end118_crit_edge, label %do.end118.for.end_crit_edge

do.end118.for.end_crit_edge:                      ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end118.do.end118_crit_edge:                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end118

for.end:                                          ; preds = %do.end118.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_leb(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.580, i32 noundef %5, i32 noundef %lnum) #17
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %6 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_size, align 8
  %call2 = tail call noalias ptr @__vmalloc(i32 noundef %7, i32 noundef 3136) #18
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.582, i32 noundef %lnum) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef %lnum, i32 noundef 0, ptr noundef nonnull %call2, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.583, i32 noundef %8) #14
  br label %out

do.end10:                                         ; preds = %if.end
  %nodes_cnt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %nodes_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nodes_cnt, align 4
  %endpt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %endpt, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.585, i32 noundef %lnum, i32 noundef %10, i32 noundef %12) #17
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %13)
  %snod.062 = load ptr, ptr %nodes, align 4
  %cmp.not63 = icmp eq ptr %snod.062, %nodes
  br i1 %cmp.not63, label %do.end10.do.end31_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.do.end31_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end10.for.body_crit_edge
  %snod.064 = phi ptr [ %snod.0, %for.body.for.body_crit_edge ], [ %snod.062, %do.end10.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 855, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %offs = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.064, i32 0, i32 4
  %14 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offs, align 4
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.064, i32 0, i32 5
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.588, i32 noundef %lnum, i32 noundef %15, i32 noundef %17) #17
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.064, i32 0, i32 6
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %20 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_size, align 8
  %22 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offs, align 4
  %sub = sub i32 %21, %23
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %19, i32 noundef %sub)
  %24 = ptrtoint ptr %snod.064 to i32
  call void @__asan_load4_noabort(i32 %24)
  %snod.0 = load ptr, ptr %snod.064, align 4
  %cmp.not = icmp eq ptr %snod.0, %nodes
  br i1 %cmp.not, label %for.body.do.end31_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.do.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

do.end31:                                         ; preds = %for.body.do.end31_crit_edge, %do.end10.do.end31_crit_edge
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid35, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.591, i32 noundef %28, i32 noundef %lnum) #17
  tail call void @ubifs_scan_destroy(ptr noundef %call3) #14
  br label %out

out:                                              ; preds = %do.end31, %if.then5
  tail call void @vfree(ptr noundef nonnull %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_znode(ptr noundef %c, ptr noundef %znode) local_unnamed_addr #0 align 64 {
entry:
  %key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %key_buf) #14
  %0 = call ptr @memset(ptr %key_buf, i32 255, i32 48)
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %znode, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 8
  %3 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iip, align 8
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %2, i32 0, i32 13, i32 %4
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %zbr.0 = phi ptr [ %arrayidx, %if.then ], [ %zroot, %if.else ]
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr.0, i32 0, i32 2
  %5 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lnum, align 4
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr.0, i32 0, i32 3
  %7 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offs, align 8
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr.0, i32 0, i32 4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %iip3 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 8
  %11 = ptrtoint ptr %iip3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iip3, align 8
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 6
  %13 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level, align 8
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 7
  %15 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %child_cnt, align 4
  %flags = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.593, ptr noundef %znode, i32 noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef %2, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #17
  %19 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp slt i32 %20, 1
  br i1 %cmp, label %do.end.if.then7_crit_edge, label %lor.lhs.false

do.end.if.then7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.end
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %21 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fanout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp6 = icmp sgt i32 %20, %22
  br i1 %cmp6, label %lor.lhs.false.if.then7_crit_edge, label %do.end11

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %do.end.if.then7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  br label %cleanup

do.end11:                                         ; preds = %lor.lhs.false
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.596) #17
  %23 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1578 = icmp sgt i32 %24, 0
  br i1 %cmp1578, label %do.end11.for.body_crit_edge, label %do.end11.for.end_crit_edge

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end11.for.body_crit_edge
  %n.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end11.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n.079
  %25 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp19 = icmp sgt i32 %26, 0
  %27 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n.079, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %lnum25 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n.079, i32 2
  %30 = ptrtoint ptr %lnum25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lnum25, align 4
  %offs26 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n.079, i32 3
  %32 = ptrtoint ptr %offs26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offs26, align 8
  %len27 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n.079, i32 4
  %34 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len27, align 4
  %call28 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %arrayidx17, ptr noundef nonnull %key_buf, i32 noundef 48)
  %.str.599..str.602 = select i1 %cmp19, ptr @.str.599, ptr @.str.602
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.599..str.602, i32 noundef %n.079, ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, ptr noundef nonnull %key_buf) #17
  %inc = add nuw nsw i32 %n.079, 1
  %36 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %child_cnt, align 4
  %cmp15 = icmp slt i32 %inc, %37
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end11.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %key_buf) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_heap(ptr nocapture noundef readnone %c, ptr nocapture noundef readonly %heap, i32 noundef %cat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
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
  %cnt = getelementptr inbounds %struct.ubifs_lpt_heap, ptr %heap, i32 0, i32 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.604, i32 noundef %5, i32 noundef %cat, i32 noundef %7) #17
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp25 = icmp sgt i32 %9, 0
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %heap, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.026
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %lnum = getelementptr inbounds %struct.ubifs_lprops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum, align 4
  %16 = getelementptr inbounds %struct.ubifs_lprops, ptr %13, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %13, align 4
  %dirty = getelementptr inbounds %struct.ubifs_lprops, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dirty, align 4
  %flags = getelementptr inbounds %struct.ubifs_lprops, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.607, i32 noundef %i.026, i32 noundef %15, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #17
  %inc = add nuw nsw i32 %i.026, 1
  %25 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnt, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.end10_crit_edge

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end10:                                         ; preds = %for.body.do.end10_crit_edge, %entry.do.end10_crit_edge
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %pid14 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid14, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.610, i32 noundef %30) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_pnode(ptr nocapture noundef readnone %c, ptr noundef %pnode, ptr noundef %parent, i32 noundef %iip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.612, i32 noundef %5) #17
  %6 = ptrtoint ptr %pnode to i32
  %7 = ptrtoint ptr %parent to i32
  %cnext = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 1
  %8 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cnext, align 4
  %10 = ptrtoint ptr %9 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.615, i32 noundef %6, i32 noundef %7, i32 noundef %10) #17
  %flags = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %level = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 4
  %13 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level, align 4
  %num = getelementptr inbounds %struct.ubifs_pnode, ptr %pnode, i32 0, i32 5
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.618, i32 noundef %12, i32 noundef %iip, i32 noundef %14, i32 noundef %16) #17
  %arrayidx = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %dirty = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 1
  %19 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dirty, align 4
  %flags16 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags16, align 4
  %lnum = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 0, i32 3
  %23 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lnum, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.621, i32 noundef 0, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #17
  %arrayidx.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1, align 4
  %dirty.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 1
  %27 = ptrtoint ptr %dirty.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dirty.1, align 4
  %flags16.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 2
  %29 = ptrtoint ptr %flags16.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags16.1, align 4
  %lnum.1 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 1, i32 3
  %31 = ptrtoint ptr %lnum.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lnum.1, align 4
  %call17.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.621, i32 noundef 1, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #17
  %arrayidx.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.2, align 4
  %dirty.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 1
  %35 = ptrtoint ptr %dirty.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dirty.2, align 4
  %flags16.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 2
  %37 = ptrtoint ptr %flags16.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags16.2, align 4
  %lnum.2 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 2, i32 3
  %39 = ptrtoint ptr %lnum.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lnum.2, align 4
  %call17.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.621, i32 noundef 2, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #17
  %arrayidx.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3
  %41 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.3, align 4
  %dirty.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 1
  %43 = ptrtoint ptr %dirty.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dirty.3, align 4
  %flags16.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 2
  %45 = ptrtoint ptr %flags16.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags16.3, align 4
  %lnum.3 = getelementptr %struct.ubifs_pnode, ptr %pnode, i32 0, i32 6, i32 3, i32 3
  %47 = ptrtoint ptr %lnum.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lnum.3, align 4
  %call17.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.621, i32 noundef 3, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_tnc(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.623) #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.626, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call7 = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %c, ptr noundef %8, ptr noundef null) #14
  %level8 = getelementptr inbounds %struct.ubifs_znode, ptr %call7, i32 0, i32 6
  %9 = ptrtoint ptr %level8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level8, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.629, i32 noundef %10) #17
  %tobool.not42 = icmp eq ptr %call7, null
  br i1 %tobool.not42, label %entry.do.end25_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %znode.044 = phi ptr [ %call22, %if.end.while.body_crit_edge ], [ %call7, %entry.while.body_crit_edge ]
  %level.043 = phi i32 [ %level.1, %if.end.while.body_crit_edge ], [ %10, %entry.while.body_crit_edge ]
  %level14 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.044, i32 0, i32 6
  %11 = ptrtoint ptr %level14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %level.043, i32 %12)
  %cmp.not = icmp eq i32 %level.043, %12
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.629, i32 noundef %12) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %level.1 = phi i32 [ %12, %if.then ], [ %level.043, %while.body.if.end_crit_edge ]
  tail call void @ubifs_dump_znode(ptr noundef %c, ptr noundef nonnull %znode.044)
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 8
  %call22 = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %c, ptr noundef %14, ptr noundef nonnull %znode.044) #14
  %tobool.not = icmp eq ptr %call22, null
  br i1 %tobool.not, label %if.end.do.end25_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

do.end25:                                         ; preds = %if.end.do.end25_crit_edge, %entry.do.end25_crit_edge
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid29 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid29, align 8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.634, i32 noundef %18) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_levelorder_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_dump_index(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dbg_walk_index(ptr noundef %c, ptr noundef null, ptr noundef nonnull @dump_znode, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_walk_index(ptr noundef %c, ptr noundef readonly %leaf_cb, ptr noundef readonly %znode_cb, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #14
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %0 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zroot, ptr noundef null, i32 noundef 0) #14
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %0, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %call to i32
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 8
  br label %cleanup89

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 8
  %level203 = getelementptr inbounds %struct.ubifs_znode, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %level203 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level203, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp204 = icmp sgt i32 %9, 0
  br i1 %cmp204, label %if.end9.while.body_crit_edge, label %if.end9.while.cond19.preheader_crit_edge

if.end9.while.cond19.preheader_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond19.preheader

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

while.cond19.preheader:                           ; preds = %if.end18.while.cond19.preheader_crit_edge, %if.end9.while.cond19.preheader_crit_edge
  %znode.0.lcssa = phi ptr [ %7, %if.end9.while.cond19.preheader_crit_edge ], [ %child.0, %if.end18.while.cond19.preheader_crit_edge ]
  %tobool22.not = icmp eq ptr %znode_cb, null
  %tobool29.not = icmp eq ptr %leaf_cb, null
  br label %while.cond19

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %if.end9.while.body_crit_edge
  %znode.0205 = phi ptr [ %child.0, %if.end18.while.body_crit_edge ], [ %7, %if.end9.while.body_crit_edge ]
  %10 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0205, i32 1, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.then12, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then12:                                        ; preds = %while.body
  %zbranch = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0205, i32 0, i32 13
  %call13 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zbranch, ptr noundef %znode.0205, i32 noundef 0) #14
  %cmp.i175 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then15, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call13 to i32
  br label %cleanup89

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %while.body.if.end18_crit_edge
  %child.0 = phi ptr [ %12, %while.body.if.end18_crit_edge ], [ %call13, %if.then12.if.end18_crit_edge ]
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %child.0, i32 0, i32 6
  %14 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level, align 8
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.end18.while.body_crit_edge, label %if.end18.while.cond19.preheader_crit_edge

if.end18.while.cond19.preheader_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond19.preheader

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond19:                                     ; preds = %while.cond19.backedge, %while.cond19.preheader
  %znode.1 = phi ptr [ %znode.0.lcssa, %while.cond19.preheader ], [ %znode.1.be, %while.cond19.backedge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 1625, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  br i1 %tobool22.not, label %while.cond19.if.end28_crit_edge, label %if.then23

while.cond19.if.end28_crit_edge:                  ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then23:                                        ; preds = %while.cond19
  %call24 = tail call i32 %znode_cb(ptr noundef %c, ptr noundef %znode.1, ptr noundef %priv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then26

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.651, i32 noundef %call24) #14
  tail call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %znode.1)
  br label %out_dump

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %while.cond19.if.end28_crit_edge
  br i1 %tobool29.not, label %if.end28.if.end40_crit_edge, label %land.lhs.true

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end28
  %level30 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 6
  %16 = ptrtoint ptr %level30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp31 = icmp eq i32 %17, 0
  br i1 %cmp31, label %for.cond.preheader, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

for.cond.preheader:                               ; preds = %land.lhs.true
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 7
  %18 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33206 = icmp sgt i32 %19, 0
  br i1 %cmp33206, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end40_crit_edge

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %idx.0207 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx35 = getelementptr %struct.ubifs_znode, ptr %znode.1, i32 0, i32 13, i32 %idx.0207
  %call36 = tail call i32 %leaf_cb(ptr noundef %c, ptr noundef %arrayidx35, ptr noundef %priv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.inc, label %if.then38

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %lnum = getelementptr %struct.ubifs_znode, ptr %znode.1, i32 0, i32 13, i32 %idx.0207, i32 2
  %20 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lnum, align 4
  %offs = getelementptr %struct.ubifs_znode, ptr %znode.1, i32 0, i32 13, i32 %idx.0207, i32 3
  %22 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offs, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.652, i32 noundef %call36, i32 noundef %21, i32 noundef %23) #14
  br label %out_dump

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.0207, 1
  %24 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %child_cnt, align 4
  %cmp33 = icmp slt i32 %inc, %25
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %for.inc.if.end40_crit_edge

for.inc.if.end40_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end40:                                         ; preds = %for.inc.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  %26 = ptrtoint ptr %znode.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %znode.1, align 8
  %tobool41.not = icmp eq ptr %27, null
  br i1 %tobool41.not, label %if.end40.cleanup89_crit_edge, label %if.end43

if.end40.cleanup89_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup89

if.end43:                                         ; preds = %if.end40
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 8
  %28 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iip, align 8
  %add = add i32 %29, 1
  %child_cnt45 = getelementptr inbounds %struct.ubifs_znode, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %child_cnt45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %child_cnt45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp46 = icmp slt i32 %add, %31
  br i1 %cmp46, label %if.then47, label %if.end43.while.cond19.backedge_crit_edge

if.end43.while.cond19.backedge_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond19.backedge

if.then47:                                        ; preds = %if.end43
  %32 = getelementptr %struct.ubifs_znode, ptr %27, i32 0, i32 13, i32 %add, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %tobool50.not = icmp eq ptr %34, null
  br i1 %tobool50.not, label %if.then51, label %if.then47.if.end57_crit_edge

if.then47.if.end57_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then51:                                        ; preds = %if.then47
  %arrayidx49 = getelementptr %struct.ubifs_znode, ptr %27, i32 0, i32 13, i32 %add
  %call52 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx49, ptr noundef nonnull %27, i32 noundef %add) #14
  %cmp.i176 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %call52 to i32
  br label %cleanup89

if.end56:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call52, ptr %32, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then47.if.end57_crit_edge
  %child.1 = phi ptr [ %34, %if.then47.if.end57_crit_edge ], [ %call52, %if.end56 ]
  %level60209 = getelementptr inbounds %struct.ubifs_znode, ptr %child.1, i32 0, i32 6
  %37 = ptrtoint ptr %level60209 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %level60209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp61210 = icmp sgt i32 %38, 0
  br i1 %cmp61210, label %if.end57.while.body62_crit_edge, label %if.end57.while.cond19.backedge_crit_edge

if.end57.while.cond19.backedge_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond19.backedge

if.end57.while.body62_crit_edge:                  ; preds = %if.end57
  br label %while.body62

while.cond19.backedge:                            ; preds = %if.end72.while.cond19.backedge_crit_edge, %if.end57.while.cond19.backedge_crit_edge, %if.end43.while.cond19.backedge_crit_edge
  %znode.1.be = phi ptr [ %27, %if.end43.while.cond19.backedge_crit_edge ], [ %child.1, %if.end57.while.cond19.backedge_crit_edge ], [ %child.2, %if.end72.while.cond19.backedge_crit_edge ]
  br label %while.cond19

while.body62:                                     ; preds = %if.end72.while.body62_crit_edge, %if.end57.while.body62_crit_edge
  %znode.2211 = phi ptr [ %child.2, %if.end72.while.body62_crit_edge ], [ %child.1, %if.end57.while.body62_crit_edge ]
  %39 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.2211, i32 1, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %tobool65.not = icmp eq ptr %41, null
  br i1 %tobool65.not, label %if.then66, label %while.body62.if.end72_crit_edge

while.body62.if.end72_crit_edge:                  ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then66:                                        ; preds = %while.body62
  %zbranch63 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.2211, i32 0, i32 13
  %call67 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zbranch63, ptr noundef %znode.2211, i32 noundef 0) #14
  %cmp.i177 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %call67 to i32
  br label %cleanup89

if.end71:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call67, ptr %39, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %while.body62.if.end72_crit_edge
  %child.2 = phi ptr [ %41, %while.body62.if.end72_crit_edge ], [ %call67, %if.end71 ]
  %level60 = getelementptr inbounds %struct.ubifs_znode, ptr %child.2, i32 0, i32 6
  %44 = ptrtoint ptr %level60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %level60, align 8
  %cmp61 = icmp sgt i32 %45, 0
  br i1 %cmp61, label %if.end72.while.body62_crit_edge, label %if.end72.while.cond19.backedge_crit_edge

if.end72.while.cond19.backedge_crit_edge:         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond19.backedge

if.end72.while.body62_crit_edge:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body62

out_dump:                                         ; preds = %if.then38, %if.then26
  %err.4.ph = phi i32 [ %call36, %if.then38 ], [ %call24, %if.then26 ]
  %46 = ptrtoint ptr %znode.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %znode.1, align 8
  %tobool77.not = icmp eq ptr %47, null
  br i1 %tobool77.not, label %out_dump.if.end85_crit_edge, label %if.then78

out_dump.if.end85_crit_edge:                      ; preds = %out_dump
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then78:                                        ; preds = %out_dump
  call void @__sanitizer_cov_trace_pc() #16
  %iip81 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 8
  %48 = ptrtoint ptr %iip81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iip81, align 8
  %arrayidx82 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %49
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %out_dump.if.end85_crit_edge
  %zbr.0 = phi ptr [ %arrayidx82, %if.then78 ], [ %zroot, %out_dump.if.end85_crit_edge ]
  %lnum86 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr.0, i32 0, i32 2
  %50 = ptrtoint ptr %lnum86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lnum86, align 4
  %offs87 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr.0, i32 0, i32 3
  %52 = ptrtoint ptr %offs87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offs87, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.653, i32 noundef %51, i32 noundef %53) #14
  tail call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %znode.1)
  br label %cleanup89

cleanup89:                                        ; preds = %if.end85, %if.then69, %if.then54, %if.end40.cleanup89_crit_edge, %if.then15, %if.then5
  %retval.0 = phi i32 [ %13, %if.then15 ], [ %err.4.ph, %if.end85 ], [ %4, %if.then5 ], [ %35, %if.then54 ], [ %42, %if.then69 ], [ 0, %if.end40.cleanup89_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tnc_mutex) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_znode(ptr noundef %c, ptr noundef %znode, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %znode)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_save_space_info(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #14
  %saved_lst = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %2 = call ptr @memcpy(ptr %saved_lst, ptr %lst, i32 56)
  %saved_bi = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 16
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  %3 = call ptr @memcpy(ptr %saved_bi, ptr %bi, i32 64)
  %idx_gc_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 124
  %4 = ptrtoint ptr %idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx_gc_cnt, align 4
  %saved_idx_gc_cnt = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %saved_idx_gc_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved_idx_gc_cnt, align 8
  %freeable_cnt1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %7 = ptrtoint ptr %freeable_cnt1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freeable_cnt1, align 8
  store i32 0, ptr %freeable_cnt1, align 8
  %call = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %c) #14
  %saved_free = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %saved_free to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call, ptr %saved_free, align 8
  %10 = ptrtoint ptr %freeable_cnt1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %freeable_cnt1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_space_info(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %lst = alloca %struct.ubifs_lp_stats, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lst) #14
  %2 = call ptr @memset(ptr %lst, i32 255, i32 56)
  %space_lock = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %space_lock) #14
  %freeable_cnt1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 164
  %3 = ptrtoint ptr %freeable_cnt1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freeable_cnt1, align 8
  store i32 0, ptr %freeable_cnt1, align 8
  %call = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %c) #14
  %5 = ptrtoint ptr %freeable_cnt1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %freeable_cnt1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %space_lock) #14
  %saved_free = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %saved_free to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %saved_free, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %7)
  %cmp.not = icmp eq i64 %call, %7
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.636, i64 noundef %7, i64 noundef %call) #14
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.637) #14
  %saved_lst = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !1213) #14
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  %14 = ptrtoint ptr %saved_lst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saved_lst, align 8
  %idx_lebs.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15, i32 2
  %16 = ptrtoint ptr %idx_lebs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx_lebs.i, align 8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414, i32 noundef %13, i32 noundef %15, i32 noundef %17) #17
  %taken_empty_lebs.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %taken_empty_lebs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %taken_empty_lebs.i, align 4
  %total_free.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15, i32 3
  %20 = ptrtoint ptr %total_free.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %total_free.i, align 8
  %total_dirty.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15, i32 4
  %22 = ptrtoint ptr %total_dirty.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %total_dirty.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.417, i32 noundef %19, i64 noundef %21, i64 noundef %23) #17
  %total_used.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15, i32 5
  %24 = ptrtoint ptr %total_used.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %total_used.i, align 8
  %total_dark.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15, i32 7
  %26 = ptrtoint ptr %total_dark.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %total_dark.i, align 8
  %total_dead.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 15, i32 6
  %28 = ptrtoint ptr %total_dead.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %total_dead.i, align 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, i64 noundef %25, i64 noundef %27, i64 noundef %29) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.638) #14
  %saved_bi = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 16
  tail call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %saved_bi)
  %saved_idx_gc_cnt = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %saved_idx_gc_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saved_idx_gc_cnt, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.639, i32 noundef %31) #14
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.640) #14
  call void @ubifs_get_lp_stats(ptr noundef %c, ptr noundef nonnull %lst) #14
  call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #14
  %32 = call i32 @llvm.read_register.i32(metadata !1213) #14
  %and.i.i30 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i30 to ptr
  %task.i31 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i31, align 8
  %pid.i32 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid.i32, align 8
  %38 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lst, align 8
  %idx_lebs.i33 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 2
  %40 = ptrtoint ptr %idx_lebs.i33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idx_lebs.i33, align 8
  %call1.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414, i32 noundef %37, i32 noundef %39, i32 noundef %41) #17
  %taken_empty_lebs.i35 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 1
  %42 = ptrtoint ptr %taken_empty_lebs.i35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %taken_empty_lebs.i35, align 4
  %total_free.i36 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 3
  %44 = ptrtoint ptr %total_free.i36 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %total_free.i36, align 8
  %total_dirty.i37 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 4
  %46 = ptrtoint ptr %total_dirty.i37 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %total_dirty.i37, align 8
  %call5.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.417, i32 noundef %43, i64 noundef %45, i64 noundef %47) #17
  %total_used.i39 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 5
  %48 = ptrtoint ptr %total_used.i39 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %total_used.i39, align 8
  %total_dark.i40 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 7
  %50 = ptrtoint ptr %total_dark.i40 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %total_dark.i40, align 8
  %total_dead.i41 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %lst, i32 0, i32 6
  %52 = ptrtoint ptr %total_dead.i41 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %total_dead.i41, align 8
  %call9.i42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, i64 noundef %49, i64 noundef %51, i64 noundef %53) #17
  call void @_raw_spin_unlock(ptr noundef nonnull @dbg_lock) #14
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.641) #14
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %bi)
  call void @dump_stack() #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lst) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_synced_i_size(ptr noundef %c, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %dbg_is_chk_gen.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_gen.exit:                              ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %chk_gen.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %chk_gen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load1.i = load i8, ptr %chk_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool.not = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool.not, label %dbg_is_chk_gen.exit.cleanup_crit_edge, label %dbg_is_chk_gen.exit.if.end_crit_edge

dbg_is_chk_gen.exit.if.end_crit_edge:             ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_gen.exit.cleanup_crit_edge:            ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %dbg_is_chk_gen.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #14
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %ui_lock) #14
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 10
  %8 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %synced_i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp5.not = icmp eq i64 %7, %9
  br i1 %cmp5.not, label %if.end4.if.end14_crit_edge, label %land.lhs.true

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end4
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %10 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.642, i64 noundef %7, i64 noundef %9) #14
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %inode, align 8
  %conv12 = zext i16 %14 to i32
  %call13 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.643, i32 noundef %12, i32 noundef %conv12, i64 noundef %call13) #14
  tail call void @dump_stack() #17
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %land.lhs.true.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true.if.end14_crit_edge ], [ -22, %if.then8 ], [ 0, %if.end4.if.end14_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ui_lock) #14
  tail call void @mutex_unlock(ptr noundef %ui_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %dbg_is_chk_gen.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end14 ], [ 0, %dbg_is_chk_gen.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_dir(ptr noundef %c, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #14
  %0 = call ptr @memset(ptr %nm, i32 0, i32 32)
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %dbg_is_chk_gen.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_gen.exit:                              ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %1 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg.i, align 4
  %chk_gen.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %chk_gen.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %chk_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool.not = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool.not, label %dbg_is_chk_gen.exit.cleanup42_crit_edge, label %dbg_is_chk_gen.exit.if.end_crit_edge

dbg_is_chk_gen.exit.if.end_crit_edge:             ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_gen.exit.cleanup42_crit_edge:          ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.end:                                           ; preds = %dbg_is_chk_gen.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dir, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.end3, label %if.end.cleanup42_crit_edge

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.end3:                                          ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1073741824, ptr %arrayidx1.i, align 4
  %call492 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #14
  %cmp.i93 = icmp ugt ptr %call492, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.end3.if.then6_crit_edge, label %cleanup.lr.ph

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

cleanup.lr.ph:                                    ; preds = %if.end3
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  br label %cleanup

if.then6:                                         ; preds = %cleanup.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %nlink.0.lcssa = phi i32 [ 2, %if.end3.if.then6_crit_edge ], [ %spec.select, %cleanup.if.then6_crit_edge ]
  %pdent.0.lcssa = phi ptr [ null, %if.end3.if.then6_crit_edge ], [ %call497, %cleanup.if.then6_crit_edge ]
  %size.0.lcssa = phi i64 [ 160, %if.end3.if.then6_crit_edge ], [ %add22, %cleanup.if.then6_crit_edge ]
  %call4.lcssa = phi ptr [ %call492, %if.end3.if.then6_crit_edge ], [ %call4, %cleanup.if.then6_crit_edge ]
  %cmp8 = icmp eq ptr %call4.lcssa, inttoptr (i32 -2 to ptr)
  br i1 %cmp8, label %while.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call4.lcssa to i32
  call void @kfree(ptr noundef %pdent.0.lcssa) #14
  br label %cleanup42

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %cleanup.lr.ph
  %call497 = phi ptr [ %call492, %cleanup.lr.ph ], [ %call4, %cleanup.cleanup_crit_edge ]
  %size.096 = phi i64 [ 160, %cleanup.lr.ph ], [ %add22, %cleanup.cleanup_crit_edge ]
  %pdent.095 = phi ptr [ null, %cleanup.lr.ph ], [ %call497, %cleanup.cleanup_crit_edge ]
  %nlink.094 = phi i32 [ 2, %cleanup.lr.ph ], [ %spec.select, %cleanup.cleanup_crit_edge ]
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 7
  %12 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %disk_name, align 4
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 5
  %13 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %nlen, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv14 = zext i16 %15 to i32
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %len, align 4
  %add19 = add nuw nsw i32 %conv14, 64
  %and20 = and i32 %add19, 131064
  %conv21 = zext i32 %and20 to i64
  %add22 = add i64 %size.096, %conv21
  %type = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp24 = icmp eq i8 %18, 1
  %add27 = zext i1 %cmp24 to i32
  %spec.select = add i32 %nlink.094, %add27
  call void @kfree(ptr noundef %pdent.095) #14
  %key29 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call497, i32 0, i32 1
  %19 = ptrtoint ptr %key29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key29, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20) #14
  %22 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call497, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #14
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx1.i, align 4
  %call4 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %nm) #14
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.if.then6_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.if.then6_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

while.end:                                        ; preds = %if.then6
  call void @kfree(ptr noundef %pdent.0.lcssa) #14
  %call30 = call fastcc i64 @i_size_read(ptr noundef %dir)
  call void @__sanitizer_cov_trace_cmp8(i64 %call30, i64 %size.0.lcssa)
  %cmp31.not = icmp eq i64 %call30, %size.0.lcssa
  br i1 %cmp31.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino, align 8
  %call35 = call fastcc i64 @i_size_read(ptr noundef %dir)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.644, i32 noundef %28, i64 noundef %call35, i64 noundef %size.0.lcssa) #14
  call void @ubifs_dump_inode(ptr noundef %c, ptr noundef %dir)
  call void @dump_stack() #17
  br label %cleanup42

if.end36:                                         ; preds = %while.end
  %29 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %nlink.0.lcssa)
  %cmp37.not = icmp eq i32 %31, %nlink.0.lcssa
  br i1 %cmp37.not, label %if.end36.cleanup42_crit_edge, label %if.then39

if.end36.cleanup42_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.645, i32 noundef %33, i32 noundef %31, i32 noundef %nlink.0.lcssa) #14
  call void @ubifs_dump_inode(ptr noundef %c, ptr noundef %dir)
  call void @dump_stack() #17
  br label %cleanup42

cleanup42:                                        ; preds = %if.then39, %if.end36.cleanup42_crit_edge, %if.then33, %cleanup.thread, %if.end.cleanup42_crit_edge, %dbg_is_chk_gen.exit.cleanup42_crit_edge
  %retval.2 = phi i32 [ -22, %if.then33 ], [ -22, %if.then39 ], [ 0, %dbg_is_chk_gen.exit.cleanup42_crit_edge ], [ 0, %if.end.cleanup42_crit_edge ], [ 0, %if.end36.cleanup42_crit_edge ], [ %11, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_tnc(ptr noundef %c, i32 noundef %extra) local_unnamed_addr #0 align 64 {
entry:
  %n.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %0 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dbg_is_chk_index.exit, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

dbg_is_chk_index.exit:                            ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %1 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg.i, align 4
  %chk_index.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %chk_index.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %chk_index.i, align 4
  %4 = and i8 %bf.load1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %dbg_is_chk_index.exit.cleanup75_crit_edge, label %dbg_is_chk_index.exit.do.body_crit_edge

dbg_is_chk_index.exit.do.body_crit_edge:          ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

dbg_is_chk_index.exit.cleanup75_crit_edge:        ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup75

do.body:                                          ; preds = %dbg_is_chk_index.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %tnc_mutex) #14
  br i1 %call1, label %do.body.do.end_crit_edge, label %if.then5, !prof !1235

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.646, ptr noundef nonnull @.str.6, i32 noundef 1498)
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.end.cleanup75_crit_edge, label %if.end9

do.end.cleanup75_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup75

if.end9:                                          ; preds = %do.end
  %call11 = tail call ptr @ubifs_tnc_postorder_first(ptr noundef nonnull %7) #14
  %fanout.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %replaying.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra)
  %tobool21.not = icmp eq i32 %extra, 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end9
  %znode.0 = phi ptr [ %call11, %if.end9 ], [ %call30163, %while.cond.backedge ]
  %clean_cnt.0 = phi i32 [ 0, %if.end9 ], [ %clean_cnt.1157, %while.cond.backedge ]
  %dirty_cnt.0 = phi i32 [ 0, %if.end9 ], [ %dirty_cnt.1160, %while.cond.backedge ]
  %8 = ptrtoint ptr %znode.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %znode.0, align 8
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %while.cond.if.end16_crit_edge, label %if.else

while.cond.if.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 8
  %10 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iip, align 8
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %9, i32 0, i32 13, i32 %11
  br label %if.end16

if.end16:                                         ; preds = %if.else, %while.cond.if.end16_crit_edge
  %zbr.0 = phi ptr [ %arrayidx, %if.else ], [ %zroot, %while.cond.if.end16_crit_edge ]
  %12 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr.0, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #14
  %17 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %n.i, align 4, !annotation !1225
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 7
  %18 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp1.i = icmp slt i32 %19, 1
  br i1 %cmp1.i, label %if.end16.out.i_crit_edge, label %lor.lhs.false.i

if.end16.out.i_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

lor.lhs.false.i:                                  ; preds = %if.end16
  %20 = ptrtoint ptr %fanout.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fanout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp3.i = icmp sgt i32 %19, %21
  br i1 %cmp3.i, label %lor.lhs.false.i.out.i_crit_edge, label %if.end.i

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 6
  %22 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.i = icmp slt i32 %23, 0
  br i1 %cmp4.i, label %if.end.i.out.i_crit_edge, label %if.end6.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 8
  %24 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp7.i = icmp sgt i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %21)
  %cmp11.not.i = icmp slt i32 %25, %21
  %or.cond.i = select i1 %cmp7.i, i1 %cmp11.not.i, i1 false
  br i1 %or.cond.i, label %if.end13.i, label %if.end6.i.out.i_crit_edge

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end13.i:                                       ; preds = %if.end6.i
  %len.i = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr.0, i32 0, i32 4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp14.i = icmp eq i32 %27, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.if.end18.i_crit_edge

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end13.i
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 4
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i128 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i128, label %if.then15.i.out.i_crit_edge, label %if.then15.i.if.end18.i_crit_edge

if.then15.i.if.end18.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then15.i.out.i_crit_edge:                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end18.i:                                       ; preds = %if.then15.i.if.end18.i_crit_edge, %if.end13.i.if.end18.i_crit_edge
  %flags.i302.i = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 4
  %30 = ptrtoint ptr %flags.i302.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i302.i, align 4
  %and1.i.i303.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i303.i)
  %tobool20.not.i = icmp eq i32 %and1.i.i303.i, 0
  br i1 %tobool20.not.i, label %if.end40.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !1236
  %cond.i = icmp eq ptr %16, null
  br i1 %cond.i, label %do.end.i.if.else.i_crit_edge, label %land.lhs.true.i

do.end.i.if.else.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %flags.i304.i = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 4
  %32 = ptrtoint ptr %flags.i304.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i304.i, align 4
  %and1.i.i305.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i305.i)
  %tobool27.not.i = icmp eq i32 %and1.i.i305.i, 0
  br i1 %tobool27.not.i, label %do.end32.i, label %land.lhs.true.i.if.then42.i_crit_edge

land.lhs.true.i.if.then42.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42.i

do.end32.i:                                       ; preds = %land.lhs.true.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !1237
  %34 = ptrtoint ptr %flags.i302.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i302.i, align 4
  %and1.i.i307.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i307.i)
  %tobool36.not.i = icmp eq i32 %and1.i.i307.i, 0
  br i1 %tobool36.not.i, label %do.end32.i.if.then42.i_crit_edge, label %do.end32.i.out.i_crit_edge

do.end32.i.out.i_crit_edge:                       ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

do.end32.i.if.then42.i_crit_edge:                 ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42.i

if.end40.i:                                       ; preds = %if.end18.i
  %tobool41.not.i = icmp eq ptr %16, null
  br i1 %tobool41.not.i, label %if.end40.i.if.else.i_crit_edge, label %if.end40.i.if.then42.i_crit_edge

if.end40.i.if.then42.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42.i

if.end40.i.if.else.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then42.i:                                      ; preds = %if.end40.i.if.then42.i_crit_edge, %do.end32.i.if.then42.i_crit_edge, %land.lhs.true.i.if.then42.i_crit_edge
  %36 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %level.i, align 8
  %level44.i = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 6
  %38 = ptrtoint ptr %level44.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %level44.i, align 8
  %sub.i = add i32 %39, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %sub.i)
  %cmp45.not.i = icmp eq i32 %37, %sub.i
  br i1 %cmp45.not.i, label %if.end47.i, label %if.then42.i.out.i_crit_edge

if.then42.i.out.i_crit_edge:                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end47.i:                                       ; preds = %if.then42.i
  %call48.i = call i32 @ubifs_search_zbranch(ptr noundef %c, ptr noundef nonnull %16, ptr noundef %zbr.0, ptr noundef nonnull %n.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end47.i.out.i_crit_edge, label %if.end51.i

if.end47.i.out.i_crit_edge:                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end51.i:                                       ; preds = %if.end47.i
  %40 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iip.i, align 8
  %child_cnt53.i = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 7
  %42 = ptrtoint ptr %child_cnt53.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %child_cnt53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp54.not.i = icmp slt i32 %41, %43
  br i1 %cmp54.not.i, label %if.end56.i, label %if.end51.i.out.i_crit_edge

if.end51.i.out.i_crit_edge:                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end56.i:                                       ; preds = %if.end51.i
  %44 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp58.not.i = icmp eq i32 %41, %45
  br i1 %cmp58.not.i, label %if.end56.i.if.end70.i_crit_edge, label %if.then59.i

if.end56.i.if.end70.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70.i

if.then59.i:                                      ; preds = %if.end56.i
  %arrayidx.i = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %45
  %arrayidx63.i = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %41
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 8
  %48 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx63.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %.not.i = icmp eq i32 %47, %49
  br i1 %.not.i, label %if.end6.i.i, label %if.then59.i.out.i_crit_edge

if.then59.i.out.i_crit_edge:                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end6.i.i:                                      ; preds = %if.then59.i
  %arrayidx7.i.i = getelementptr [2 x i32], ptr %arrayidx.i, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx8.i.i = getelementptr [2 x i32], ptr %arrayidx63.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %.not377.i = icmp eq i32 %51, %53
  br i1 %.not377.i, label %if.end68.i, label %if.end6.i.i.out.i_crit_edge

if.end6.i.i.out.i_crit_edge:                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end68.i:                                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %41, ptr %n.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end68.i, %if.end56.i.if.end70.i_crit_edge
  %zbranch72.i = getelementptr inbounds %struct.ubifs_znode, ptr %14, i32 0, i32 13
  %55 = ptrtoint ptr %zbr.0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %zbr.0, align 8
  %57 = ptrtoint ptr %zbranch72.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %zbranch72.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.i308.i = icmp ult i32 %56, %58
  br i1 %cmp.i308.i, label %if.end70.i.if.end78.i_crit_edge, label %if.end.i310.i

if.end70.i.if.end78.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.i

if.end.i310.i:                                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i309.i = icmp ugt i32 %56, %58
  br i1 %cmp4.i309.i, label %if.end.i310.i.out.i_crit_edge, label %if.end6.i314.i

if.end.i310.i.out.i_crit_edge:                    ; preds = %if.end.i310.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end6.i314.i:                                   ; preds = %if.end.i310.i
  %arrayidx7.i311.i = getelementptr [2 x i32], ptr %zbr.0, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx7.i311.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx7.i311.i, align 4
  %arrayidx8.i312.i = getelementptr %struct.ubifs_znode, ptr %14, i32 1, i32 1
  %61 = ptrtoint ptr %arrayidx8.i312.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx8.i312.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp14.i315.i = icmp ugt i32 %60, %62
  br i1 %cmp14.i315.i, label %if.end6.i314.i.out.i_crit_edge, label %if.end6.i314.i.if.end78.i_crit_edge

if.end6.i314.i.if.end78.i_crit_edge:              ; preds = %if.end6.i314.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.i

if.end6.i314.i.out.i_crit_edge:                   ; preds = %if.end6.i314.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end78.i:                                       ; preds = %if.end6.i314.i.if.end78.i_crit_edge, %if.end70.i.if.end78.i_crit_edge
  %63 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n.i, align 4
  %add.i = add i32 %64, 1
  %65 = ptrtoint ptr %child_cnt53.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %child_cnt53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %66)
  %cmp80.i = icmp slt i32 %add.i, %66
  br i1 %cmp80.i, label %if.then81.i, label %if.end78.i.if.end100.i_crit_edge

if.end78.i.if.end100.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.then81.i:                                      ; preds = %if.end78.i
  %arrayidx84.i = getelementptr %struct.ubifs_znode, ptr %16, i32 0, i32 13, i32 %add.i
  %67 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %child_cnt.i, align 4
  %sub88.i = add i32 %68, -1
  %arrayidx89.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %sub88.i
  %69 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx84.i, align 8
  %71 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx89.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp.i320.i = icmp ult i32 %70, %72
  br i1 %cmp.i320.i, label %if.then81.i.out.i_crit_edge, label %if.end.i322.i

if.then81.i.out.i_crit_edge:                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end.i322.i:                                    ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp4.i321.i = icmp ugt i32 %70, %72
  br i1 %cmp4.i321.i, label %if.end.i322.i.if.end100.i_crit_edge, label %if.end6.i326.i

if.end.i322.i.if.end100.i_crit_edge:              ; preds = %if.end.i322.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.end6.i326.i:                                   ; preds = %if.end.i322.i
  %arrayidx7.i323.i = getelementptr [2 x i32], ptr %arrayidx84.i, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx7.i323.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx7.i323.i, align 4
  %arrayidx8.i324.i = getelementptr [2 x i32], ptr %arrayidx89.i, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx8.i324.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx8.i324.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp9.i325.i = icmp ult i32 %74, %76
  br i1 %cmp9.i325.i, label %if.end6.i326.i.out.i_crit_edge, label %if.end6.i326.i.if.end100.i_crit_edge

if.end6.i326.i.if.end100.i_crit_edge:             ; preds = %if.end6.i326.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.end6.i326.i.out.i_crit_edge:                   ; preds = %if.end6.i326.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.else.i:                                        ; preds = %if.end40.i.if.else.i_crit_edge, %do.end.i.if.else.i_crit_edge
  %cmp97.not.i = icmp eq ptr %zroot, %zbr.0
  br i1 %cmp97.not.i, label %if.else.i.if.end100.i_crit_edge, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.else.i.if.end100.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else.i.if.end100.i_crit_edge, %if.end6.i326.i.if.end100.i_crit_edge, %if.end.i322.i.if.end100.i_crit_edge, %if.end78.i.if.end100.i_crit_edge
  %77 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %n.i, align 4
  %78 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp102373.i = icmp sgt i32 %79, 1
  br i1 %cmp102373.i, label %if.end100.i.for.body.i_crit_edge, label %if.end100.i.for.cond142.preheader.i_crit_edge

if.end100.i.for.cond142.preheader.i_crit_edge:    ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond142.preheader.i

if.end100.i.for.body.i_crit_edge:                 ; preds = %if.end100.i
  br label %for.body.i

for.cond142.preheader.i:                          ; preds = %for.inc.i.for.cond142.preheader.i_crit_edge, %if.end100.i.for.cond142.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ %79, %if.end100.i.for.cond142.preheader.i_crit_edge ], [ %97, %for.inc.i.for.cond142.preheader.i_crit_edge ]
  %80 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i)
  %cmp144375.i = icmp sgt i32 %.lcssa.i, 0
  br i1 %cmp144375.i, label %for.cond142.preheader.i.for.body145.i_crit_edge, label %for.cond142.preheader.i.if.end20_crit_edge

for.cond142.preheader.i.if.end20_crit_edge:       ; preds = %for.cond142.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

for.cond142.preheader.i.for.body145.i_crit_edge:  ; preds = %for.cond142.preheader.i
  br label %for.body145.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end100.i.for.body.i_crit_edge
  %storemerge374.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end100.i.for.body.i_crit_edge ]
  %sub104.i = add i32 %storemerge374.i, -1
  %arrayidx105.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %sub104.i
  %arrayidx108.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %storemerge374.i
  %81 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx105.i, align 8
  %83 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx108.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.i332.i = icmp ult i32 %82, %84
  br i1 %cmp.i332.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i334.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i334.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp4.i333.i = icmp ugt i32 %82, %84
  br i1 %cmp4.i333.i, label %if.end.i334.i.out.i_crit_edge, label %if.end6.i338.i

if.end.i334.i.out.i_crit_edge:                    ; preds = %if.end.i334.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end6.i338.i:                                   ; preds = %if.end.i334.i
  %arrayidx7.i335.i = getelementptr [2 x i32], ptr %arrayidx105.i, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx7.i335.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx7.i335.i, align 4
  %arrayidx8.i336.i = getelementptr [2 x i32], ptr %arrayidx108.i, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx8.i336.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx8.i336.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp9.i337.i = icmp ult i32 %86, %88
  br i1 %cmp9.i337.i, label %if.end6.i338.i.for.inc.i_crit_edge, label %keys_cmp.exit343.i

if.end6.i338.i.for.inc.i_crit_edge:               ; preds = %if.end6.i338.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

keys_cmp.exit343.i:                               ; preds = %if.end6.i338.i
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp14.i339.i = icmp ugt i32 %86, %88
  br i1 %cmp14.i339.i, label %keys_cmp.exit343.i.out.i_crit_edge, label %if.then115.i

keys_cmp.exit343.i.out.i_crit_edge:               ; preds = %keys_cmp.exit343.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then115.i:                                     ; preds = %keys_cmp.exit343.i
  %89 = and i32 %88, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %89)
  %.not365.i = icmp eq i32 %89, 1073741824
  br i1 %.not365.i, label %if.end122.i, label %if.then115.i.out.i_crit_edge

if.then115.i.out.i_crit_edge:                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end122.i:                                      ; preds = %if.then115.i
  %90 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp124.not.i = icmp eq i32 %91, 0
  br i1 %cmp124.not.i, label %lor.lhs.false125.i, label %if.end122.i.for.inc.i_crit_edge

if.end122.i.for.inc.i_crit_edge:                  ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false125.i:                               ; preds = %if.end122.i
  %92 = ptrtoint ptr %replaying.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i129 = load i8, ptr %replaying.i, align 4
  %93 = and i8 %bf.load.i129, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool126.not.i = icmp eq i8 %93, 0
  br i1 %tobool126.not.i, label %if.end128.i, label %lor.lhs.false125.i.for.inc.i_crit_edge

lor.lhs.false125.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false125.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end128.i:                                      ; preds = %lor.lhs.false125.i
  %call134.i = call fastcc i32 @dbg_check_key_order(ptr noundef %c, ptr noundef %arrayidx105.i, ptr noundef %arrayidx108.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %cmp135.i = icmp slt i32 %call134.i, 0
  br i1 %cmp135.i, label %if.end128.i.dbg_check_znode.exit_crit_edge, label %if.end137.i

if.end128.i.dbg_check_znode.exit_crit_edge:       ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dbg_check_znode.exit

if.end137.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool138.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool138.not.i, label %if.end137.i.for.inc.i_crit_edge, label %if.end137.i.out.i_crit_edge

if.end137.i.out.i_crit_edge:                      ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end137.i.for.inc.i_crit_edge:                  ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end137.i.for.inc.i_crit_edge, %lor.lhs.false125.i.for.inc.i_crit_edge, %if.end122.i.for.inc.i_crit_edge, %if.end6.i338.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %94 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %n.i, align 4
  %inc.i = add i32 %95, 1
  store i32 %inc.i, ptr %n.i, align 4
  %96 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %child_cnt.i, align 4
  %cmp102.i = icmp slt i32 %inc.i, %97
  br i1 %cmp102.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond142.preheader.i_crit_edge

for.inc.i.for.cond142.preheader.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond142.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body145.i:                                    ; preds = %for.inc206.i.for.body145.i_crit_edge, %for.cond142.preheader.i.for.body145.i_crit_edge
  %storemerge300376.i = phi i32 [ %inc207.i, %for.inc206.i.for.body145.i_crit_edge ], [ 0, %for.cond142.preheader.i.for.body145.i_crit_edge ]
  %98 = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %storemerge300376.i, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %tobool148.not.i = icmp eq ptr %100, null
  br i1 %tobool148.not.i, label %land.lhs.true149.i, label %for.body145.i.if.end159.i_crit_edge

for.body145.i.if.end159.i_crit_edge:              ; preds = %for.body145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159.i

land.lhs.true149.i:                               ; preds = %for.body145.i
  %lnum.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %storemerge300376.i, i32 2
  %101 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp152.i = icmp eq i32 %102, 0
  br i1 %cmp152.i, label %land.lhs.true149.i.out.i_crit_edge, label %lor.lhs.false153.i

land.lhs.true149.i.out.i_crit_edge:               ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

lor.lhs.false153.i:                               ; preds = %land.lhs.true149.i
  %len156.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %storemerge300376.i, i32 4
  %103 = ptrtoint ptr %len156.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp157.i = icmp eq i32 %104, 0
  br i1 %cmp157.i, label %lor.lhs.false153.i.out.i_crit_edge, label %lor.lhs.false153.i.if.end159.i_crit_edge

lor.lhs.false153.i.if.end159.i_crit_edge:         ; preds = %lor.lhs.false153.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end159.i

lor.lhs.false153.i.out.i_crit_edge:               ; preds = %lor.lhs.false153.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end159.i:                                      ; preds = %lor.lhs.false153.i.if.end159.i_crit_edge, %for.body145.i.if.end159.i_crit_edge
  %lnum162.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %storemerge300376.i, i32 2
  %105 = ptrtoint ptr %lnum162.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %lnum162.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp163.not.i = icmp eq i32 %106, 0
  %len178.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %storemerge300376.i, i32 4
  %107 = ptrtoint ptr %len178.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp179.not.i = icmp eq i32 %108, 0
  br i1 %cmp163.not.i, label %land.lhs.true175.i, label %land.lhs.true164.i

land.lhs.true164.i:                               ; preds = %if.end159.i
  br i1 %cmp179.not.i, label %land.lhs.true164.i.out.i_crit_edge, label %land.lhs.true164.i.if.end191.i_crit_edge

land.lhs.true164.i.if.end191.i_crit_edge:         ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end191.i

land.lhs.true164.i.out.i_crit_edge:               ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

land.lhs.true175.i:                               ; preds = %if.end159.i
  br i1 %cmp179.not.i, label %land.lhs.true186.i, label %land.lhs.true175.i.out.i_crit_edge

land.lhs.true175.i.out.i_crit_edge:               ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

land.lhs.true186.i:                               ; preds = %land.lhs.true175.i
  %offs.i = getelementptr %struct.ubifs_znode, ptr %14, i32 0, i32 13, i32 %storemerge300376.i, i32 3
  %109 = ptrtoint ptr %offs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp189.not.i = icmp eq i32 %110, 0
  br i1 %cmp189.not.i, label %land.lhs.true186.i.if.end191.i_crit_edge, label %land.lhs.true186.i.out.i_crit_edge

land.lhs.true186.i.out.i_crit_edge:               ; preds = %land.lhs.true186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

land.lhs.true186.i.if.end191.i_crit_edge:         ; preds = %land.lhs.true186.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end191.i

if.end191.i:                                      ; preds = %land.lhs.true186.i.if.end191.i_crit_edge, %land.lhs.true164.i.if.end191.i_crit_edge
  %111 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp193.not.i = icmp eq i32 %112, 0
  %brmerge.i = select i1 %cmp193.not.i, i1 true, i1 %tobool148.not.i
  br i1 %brmerge.i, label %if.end191.i.for.inc206.i_crit_edge, label %if.then198.i

if.end191.i.for.inc206.i_crit_edge:               ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc206.i

if.then198.i:                                     ; preds = %if.end191.i
  %113 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %100, align 8
  %cmp202.not.i = icmp eq ptr %114, %14
  br i1 %cmp202.not.i, label %if.then198.i.for.inc206.i_crit_edge, label %if.then198.i.out.i_crit_edge

if.then198.i.out.i_crit_edge:                     ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then198.i.for.inc206.i_crit_edge:              ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc206.i

for.inc206.i:                                     ; preds = %if.then198.i.for.inc206.i_crit_edge, %if.end191.i.for.inc206.i_crit_edge
  %inc207.i = add nuw nsw i32 %storemerge300376.i, 1
  %115 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %inc207.i, ptr %n.i, align 4
  %exitcond.not.i = icmp eq i32 %inc207.i, %.lcssa.i
  br i1 %exitcond.not.i, label %for.inc206.i.if.end20_crit_edge, label %for.inc206.i.for.body145.i_crit_edge

for.inc206.i.for.body145.i_crit_edge:             ; preds = %for.inc206.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body145.i

for.inc206.i.if.end20_crit_edge:                  ; preds = %for.inc206.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

out.i:                                            ; preds = %if.then198.i.out.i_crit_edge, %land.lhs.true186.i.out.i_crit_edge, %land.lhs.true175.i.out.i_crit_edge, %land.lhs.true164.i.out.i_crit_edge, %lor.lhs.false153.i.out.i_crit_edge, %land.lhs.true149.i.out.i_crit_edge, %if.end137.i.out.i_crit_edge, %if.then115.i.out.i_crit_edge, %keys_cmp.exit343.i.out.i_crit_edge, %if.end.i334.i.out.i_crit_edge, %if.else.i.out.i_crit_edge, %if.end6.i326.i.out.i_crit_edge, %if.then81.i.out.i_crit_edge, %if.end6.i314.i.out.i_crit_edge, %if.end.i310.i.out.i_crit_edge, %if.end6.i.i.out.i_crit_edge, %if.then59.i.out.i_crit_edge, %if.end51.i.out.i_crit_edge, %if.end47.i.out.i_crit_edge, %if.then42.i.out.i_crit_edge, %do.end32.i.out.i_crit_edge, %if.then15.i.out.i_crit_edge, %if.end6.i.out.i_crit_edge, %if.end.i.out.i_crit_edge, %lor.lhs.false.i.out.i_crit_edge, %if.end16.out.i_crit_edge
  %err.1.i = phi i32 [ 16, %lor.lhs.false153.i.out.i_crit_edge ], [ 16, %land.lhs.true149.i.out.i_crit_edge ], [ 17, %land.lhs.true164.i.out.i_crit_edge ], [ 18, %land.lhs.true175.i.out.i_crit_edge ], [ 19, %land.lhs.true186.i.out.i_crit_edge ], [ 20, %if.then198.i.out.i_crit_edge ], [ 13, %keys_cmp.exit343.i.out.i_crit_edge ], [ 14, %if.then115.i.out.i_crit_edge ], [ 15, %if.end137.i.out.i_crit_edge ], [ 13, %if.end.i334.i.out.i_crit_edge ], [ 10, %if.end6.i314.i.out.i_crit_edge ], [ 11, %if.end6.i326.i.out.i_crit_edge ], [ 11, %if.then81.i.out.i_crit_edge ], [ 10, %if.end.i310.i.out.i_crit_edge ], [ 9, %if.end6.i.i.out.i_crit_edge ], [ 9, %if.then59.i.out.i_crit_edge ], [ 6, %if.then42.i.out.i_crit_edge ], [ 7, %if.end47.i.out.i_crit_edge ], [ 8, %if.end51.i.out.i_crit_edge ], [ 12, %if.else.i.out.i_crit_edge ], [ 5, %do.end32.i.out.i_crit_edge ], [ 4, %if.then15.i.out.i_crit_edge ], [ 3, %if.end6.i.out.i_crit_edge ], [ 2, %if.end.i.out.i_crit_edge ], [ 1, %if.end16.out.i_crit_edge ], [ 1, %lor.lhs.false.i.out.i_crit_edge ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.721, i32 noundef %err.1.i) #14
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.722) #14
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %14) #14
  %tobool209.not.i = icmp eq ptr %16, null
  br i1 %tobool209.not.i, label %out.i.if.end211.i_crit_edge, label %if.then210.i

out.i.if.end211.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end211.i

if.then210.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.723) #14
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef nonnull %16) #14
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then210.i, %out.i.if.end211.i_crit_edge
  call void @dump_stack() #17
  br label %dbg_check_znode.exit

dbg_check_znode.exit:                             ; preds = %if.end211.i, %if.end128.i.dbg_check_znode.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end211.i ], [ %call134.i, %if.end128.i.dbg_check_znode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #14
  br label %cleanup75

if.end20:                                         ; preds = %for.inc206.i.if.end20_crit_edge, %for.cond142.preheader.i.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #14
  br i1 %tobool21.not, label %if.end29.thread, label %if.then22

if.then22:                                        ; preds = %if.end20
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 4
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %117, 1
  %118 = xor i32 %and1.i.i, 1
  %clean_cnt.1 = add i32 %118, %clean_cnt.0
  %dirty_cnt.1 = add i32 %and1.i.i, %dirty_cnt.0
  %call30 = call ptr @ubifs_tnc_postorder_next(ptr noundef %c, ptr noundef %znode.0) #14
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then61, label %if.then22.if.end33_crit_edge

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end29.thread:                                  ; preds = %if.end20
  %call30155 = call ptr @ubifs_tnc_postorder_next(ptr noundef %c, ptr noundef %znode.0) #14
  %tobool31.not156 = icmp eq ptr %call30155, null
  br i1 %tobool31.not156, label %if.end29.thread.cleanup75_crit_edge, label %if.end29.thread.if.end33_crit_edge

if.end29.thread.if.end33_crit_edge:               ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end29.thread.cleanup75_crit_edge:              ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup75

if.end33:                                         ; preds = %if.end29.thread.if.end33_crit_edge, %if.then22.if.end33_crit_edge
  %call30163 = phi ptr [ %call30155, %if.end29.thread.if.end33_crit_edge ], [ %call30, %if.then22.if.end33_crit_edge ]
  %dirty_cnt.1160 = phi i32 [ %dirty_cnt.0, %if.end29.thread.if.end33_crit_edge ], [ %dirty_cnt.1, %if.then22.if.end33_crit_edge ]
  %clean_cnt.1157 = phi i32 [ %clean_cnt.0, %if.end29.thread.if.end33_crit_edge ], [ %clean_cnt.1, %if.then22.if.end33_crit_edge ]
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 7
  %119 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %child_cnt, align 4
  %sub = add i32 %120, -1
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 6
  %121 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp = icmp eq i32 %122, 0
  br i1 %cmp, label %land.lhs.true, label %if.end33.while.cond.backedge_crit_edge

if.end33.while.cond.backedge_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end33
  %level34 = getelementptr inbounds %struct.ubifs_znode, ptr %call30163, i32 0, i32 6
  %123 = ptrtoint ptr %level34 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %level34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp35 = icmp eq i32 %124, 0
  br i1 %cmp35, label %land.lhs.true36, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

land.lhs.true36:                                  ; preds = %land.lhs.true
  %125 = ptrtoint ptr %replaying.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load = load i8, ptr %replaying.i, align 4
  %126 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool37.not = icmp eq i8 %126, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %land.lhs.true36.while.cond.backedge_crit_edge

land.lhs.true36.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %arrayidx40 = getelementptr %struct.ubifs_znode, ptr %znode.0, i32 0, i32 13, i32 %sub
  %zbranch41 = getelementptr inbounds %struct.ubifs_znode, ptr %call30163, i32 0, i32 13
  %127 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx40, align 8
  %129 = ptrtoint ptr %zbranch41 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %zbranch41, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %.not = icmp eq i32 %128, %130
  br i1 %.not, label %if.end6.i132, label %land.lhs.true38.while.cond.backedge_crit_edge

land.lhs.true38.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end6.i132:                                     ; preds = %land.lhs.true38
  %arrayidx7.i = getelementptr [2 x i32], ptr %arrayidx40, i32 0, i32 1
  %131 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.ubifs_znode, ptr %call30163, i32 1, i32 1
  %133 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %.not192 = icmp eq i32 %132, %134
  br i1 %.not192, label %if.then46, label %if.end6.i132.while.cond.backedge_crit_edge

if.end6.i132.while.cond.backedge_crit_edge:       ; preds = %if.end6.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end54.while.cond.backedge_crit_edge, %if.end6.i132.while.cond.backedge_crit_edge, %land.lhs.true38.while.cond.backedge_crit_edge, %land.lhs.true36.while.cond.backedge_crit_edge, %land.lhs.true.while.cond.backedge_crit_edge, %if.end33.while.cond.backedge_crit_edge
  br label %while.cond

if.then46:                                        ; preds = %if.end6.i132
  %call51 = call fastcc i32 @dbg_check_key_order(ptr noundef %c, ptr noundef %arrayidx40, ptr noundef %zbranch41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then46.cleanup75_crit_edge, label %if.end54

if.then46.cleanup75_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup75

if.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool55.not = icmp eq i32 %call51, 0
  br i1 %tobool55.not, label %if.end54.while.cond.backedge_crit_edge, label %if.then56

if.end54.while.cond.backedge_crit_edge:           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.647) #14
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %znode.0)
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.648) #14
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef nonnull %call30163)
  br label %cleanup75

if.then61:                                        ; preds = %if.then22
  %clean_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 84
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %clean_zn_cnt, i32 noundef 4) #14
  %135 = ptrtoint ptr %clean_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %clean_zn_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %clean_cnt.1, i32 %136)
  %cmp63.not = icmp eq i32 %clean_cnt.1, %136
  br i1 %cmp63.not, label %if.end67, label %if.then64

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i125 = call zeroext i1 @__kasan_check_read(ptr noundef %clean_zn_cnt, i32 noundef 4) #14
  %137 = ptrtoint ptr %clean_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %clean_zn_cnt, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.649, i32 noundef %138, i32 noundef %clean_cnt.1) #14
  br label %cleanup75

if.end67:                                         ; preds = %if.then61
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i126 = call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt, i32 noundef 4) #14
  %139 = ptrtoint ptr %dirty_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %dirty_zn_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dirty_cnt.1, i32 %140)
  %cmp69.not = icmp eq i32 %dirty_cnt.1, %140
  br i1 %cmp69.not, label %if.end67.cleanup75_crit_edge, label %if.then70

if.end67.cleanup75_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup75

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i127 = call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt, i32 noundef 4) #14
  %141 = ptrtoint ptr %dirty_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %dirty_zn_cnt, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.650, i32 noundef %142, i32 noundef %dirty_cnt.1) #14
  br label %cleanup75

cleanup75:                                        ; preds = %if.then70, %if.end67.cleanup75_crit_edge, %if.then64, %if.then56, %if.then46.cleanup75_crit_edge, %if.end29.thread.cleanup75_crit_edge, %dbg_check_znode.exit, %do.end.cleanup75_crit_edge, %dbg_is_chk_index.exit.cleanup75_crit_edge
  %retval.2 = phi i32 [ -22, %if.then64 ], [ -22, %if.then70 ], [ 0, %dbg_is_chk_index.exit.cleanup75_crit_edge ], [ 0, %do.end.cleanup75_crit_edge ], [ 0, %if.end67.cleanup75_crit_edge ], [ %retval.0.i, %dbg_check_znode.exit ], [ -22, %if.then56 ], [ %call51, %if.then46.cleanup75_crit_edge ], [ 0, %if.end29.thread.cleanup75_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_postorder_first(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_postorder_next(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbg_check_key_order(ptr noundef %c, ptr noundef %zbr1, ptr noundef %zbr2) unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %key_buf) #14
  %0 = call ptr @memset(ptr %key_buf, i32 255, i32 48)
  %1 = ptrtoint ptr %zbr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %zbr1, align 8
  %3 = ptrtoint ptr %zbr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %zbr2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %.not = icmp eq i32 %2, %4
  br i1 %.not, label %if.end6.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end6.i:                                        ; preds = %entry
  %arrayidx7.i = getelementptr [2 x i32], ptr %zbr1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr [2 x i32], ptr %zbr2, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %.not201 = icmp eq i32 %6, %8
  br i1 %.not201, label %if.end6.i.do.end_crit_edge, label %if.end6.i.if.then_crit_edge, !prof !1238

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end6.i.do.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %if.end6.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.724, ptr noundef nonnull @.str.6, i32 noundef 1202)
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end6.i.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3136, i32 noundef 312) #19
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i158 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3136, i32 noundef 312) #19
  %tobool12.not = icmp eq ptr %call7.i158, null
  br i1 %tobool12.not, label %if.end10.out_free_crit_edge, label %if.end14

if.end10.out_free_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %zbr1, ptr noundef nonnull %call7.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_free_crit_edge

if.end14.out_free_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @ubifs_validate_entry(ptr noundef %c, ptr noundef nonnull %call7.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_free_crit_edge

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %zbr2, ptr noundef nonnull %call7.i158) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_free_crit_edge

if.end22.out_free_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @ubifs_validate_entry(ptr noundef %c, ptr noundef nonnull %call7.i158) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.out_free_crit_edge

if.end26.out_free_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end30:                                         ; preds = %if.end26
  %key31 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %key31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key31, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %key, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %arrayidx3.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx3.i, align 4
  %19 = ptrtoint ptr %zbr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %zbr1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %13)
  %.not194 = icmp eq i32 %20, %13
  br i1 %.not194, label %if.end6.i165, label %if.end30.if.then35_crit_edge

if.end30.if.then35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.end6.i165:                                     ; preds = %if.end30
  %arrayidx7.i162 = getelementptr [2 x i32], ptr %zbr1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx7.i162 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i162, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %17)
  %.not199 = icmp eq i32 %22, %17
  br i1 %.not199, label %if.end40, label %if.end6.i165.if.then35_crit_edge

if.end6.i165.if.then35_crit_edge:                 ; preds = %if.end6.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.then35:                                        ; preds = %if.end6.i165.if.then35_crit_edge, %if.end30.if.then35_crit_edge
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr1, i32 0, i32 2
  %23 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lnum, align 4
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr1, i32 0, i32 3
  %25 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offs, align 8
  %call36 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %key_buf, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.725, i32 noundef %24, i32 noundef %26, ptr noundef nonnull %key_buf) #14
  %call39 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr1, ptr noundef nonnull %key_buf, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.726, ptr noundef nonnull %key_buf) #14
  br label %out_free.sink.split

if.end40:                                         ; preds = %if.end6.i165
  %key41 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i158, i32 0, i32 1
  %27 = ptrtoint ptr %key41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key41, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  %30 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %key, align 8
  %arrayidx2.i171 = getelementptr %struct.ubifs_dent_node, ptr %call7.i158, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %arrayidx2.i171 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i171, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx3.i, align 4
  %35 = ptrtoint ptr %zbr2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %zbr2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %29)
  %.not195 = icmp eq i32 %36, %29
  br i1 %.not195, label %if.end6.i179, label %if.end40.if.then45_crit_edge

if.end40.if.then45_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

if.end6.i179:                                     ; preds = %if.end40
  %arrayidx7.i176 = getelementptr [2 x i32], ptr %zbr2, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx7.i176 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx7.i176, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %33)
  %.not200 = icmp eq i32 %38, %33
  br i1 %.not200, label %if.end53, label %if.end6.i179.if.then45_crit_edge

if.end6.i179.if.then45_crit_edge:                 ; preds = %if.end6.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

if.then45:                                        ; preds = %if.end6.i179.if.then45_crit_edge, %if.end40.if.then45_crit_edge
  %lnum46 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr1, i32 0, i32 2
  %39 = ptrtoint ptr %lnum46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lnum46, align 4
  %offs47 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr1, i32 0, i32 3
  %41 = ptrtoint ptr %offs47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offs47, align 8
  %call49 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %key_buf, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.727, i32 noundef %40, i32 noundef %42, ptr noundef nonnull %key_buf) #14
  %call52 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr2, ptr noundef nonnull %key_buf, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.726, ptr noundef nonnull %key_buf) #14
  br label %out_free.sink.split

if.end53:                                         ; preds = %if.end6.i179
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 5
  %43 = ptrtoint ptr %nlen to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nlen, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %nlen54 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i158, i32 0, i32 5
  %46 = ptrtoint ptr %nlen54 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nlen54, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 7
  %name57 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i158, i32 0, i32 7
  %49 = tail call i16 @llvm.umin.i16(i16 %45, i16 %48)
  %cond = zext i16 %49 to i32
  %call61 = tail call i32 @memcmp(ptr noundef %name, ptr noundef %name57, i32 noundef %cond) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end53.out_free_crit_edge, label %lor.lhs.false

if.end53.out_free_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

lor.lhs.false:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %48)
  %cmp59 = icmp uge i16 %45, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp64 = icmp eq i32 %call61, 0
  %cmp64.not = xor i1 %cmp64, true
  %brmerge = select i1 %cmp64.not, i1 true, i1 %cmp59
  br i1 %brmerge, label %if.end69, label %lor.lhs.false.out_free_crit_edge

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end69:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %47)
  %cmp73 = icmp eq i16 %44, %47
  %or.cond = select i1 %cmp64, i1 %cmp73, i1 false
  br i1 %or.cond, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.728) #14
  br label %if.end78

if.else:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %call77 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %key_buf, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.729, ptr noundef nonnull %key_buf) #14
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then75
  %lnum79 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr1, i32 0, i32 2
  %50 = ptrtoint ptr %lnum79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lnum79, align 4
  %offs80 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr1, i32 0, i32 3
  %52 = ptrtoint ptr %offs80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offs80, align 8
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.730, i32 noundef %51, i32 noundef %53) #14
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %call7.i, i32 noundef 312)
  %lnum81 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr2, i32 0, i32 2
  %54 = ptrtoint ptr %lnum81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lnum81, align 4
  %offs82 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr2, i32 0, i32 3
  %56 = ptrtoint ptr %offs82 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offs82, align 8
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.731, i32 noundef %55, i32 noundef %57) #14
  br label %out_free.sink.split

out_free.sink.split:                              ; preds = %if.end78, %if.then45, %if.then35
  %call7.i158.sink = phi ptr [ %call7.i158, %if.end78 ], [ %call7.i158, %if.then45 ], [ %call7.i, %if.then35 ]
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %call7.i158.sink, i32 noundef 312)
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %lor.lhs.false.out_free_crit_edge, %if.end53.out_free_crit_edge, %if.end26.out_free_crit_edge, %if.end22.out_free_crit_edge, %if.end18.out_free_crit_edge, %if.end14.out_free_crit_edge, %if.end10.out_free_crit_edge
  %err.0 = phi i32 [ %call15, %if.end14.out_free_crit_edge ], [ %call19, %if.end18.out_free_crit_edge ], [ %call23, %if.end22.out_free_crit_edge ], [ %call27, %if.end26.out_free_crit_edge ], [ -12, %if.end10.out_free_crit_edge ], [ 0, %lor.lhs.false.out_free_crit_edge ], [ 0, %if.end53.out_free_crit_edge ], [ 1, %out_free.sink.split ]
  call void @kfree(ptr noundef %call7.i158) #14
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %key_buf) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_load_znode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_idx_size(ptr noundef %c, i64 noundef %idx_size) local_unnamed_addr #0 align 64 {
entry:
  %calc = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %calc) #14
  %0 = ptrtoint ptr %calc to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %calc, align 8
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %dbg_is_chk_index.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_index.exit:                            ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %2 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg.i, align 4
  %chk_index.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %chk_index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load1.i = load i8, ptr %chk_index.i, align 4
  %5 = and i8 %bf.load1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %dbg_is_chk_index.exit.cleanup_crit_edge, label %dbg_is_chk_index.exit.if.end_crit_edge

dbg_is_chk_index.exit.if.end_crit_edge:           ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_index.exit.cleanup_crit_edge:          ; preds = %dbg_is_chk_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %dbg_is_chk_index.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = call i32 @dbg_walk_index(ptr noundef %c, ptr noundef null, ptr noundef nonnull @add_size, ptr noundef nonnull %calc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.654, i32 noundef %call1) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %calc to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %calc, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %idx_size)
  %cmp.not = icmp eq i64 %7, %idx_size
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %if.then5

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.655, i64 noundef %7, i64 noundef %idx_size) #14
  call void @dump_stack() #17
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end4.cleanup_crit_edge, %if.then3, %dbg_is_chk_index.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -22, %if.then5 ], [ 0, %dbg_is_chk_index.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %calc) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @add_size(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %znode, ptr nocapture noundef %priv) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 7
  %0 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %child_cnt, align 4
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %2 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %3, 12
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %4 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i, %5
  %mul.i = mul i32 %add1.i, %1
  %add1 = add i32 %mul.i, 35
  %and = and i32 %add1, -8
  %conv = sext i32 %and to i64
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv, align 8
  %add2 = add i64 %7, %conv
  store i64 %add2, ptr %priv, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_filesystem(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %n.i = alloca i32, align 4
  %key.i = alloca %union.ubifs_key, align 8
  %znode.i = alloca ptr, align 4
  %fsckd = alloca %struct.fsck_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsckd) #14
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %0 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %dbg_is_chk_fs.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_fs.exit:                               ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %1 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg.i, align 4
  %chk_fs.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %chk_fs.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %chk_fs.i, align 4
  %4 = and i8 %bf.load1.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %dbg_is_chk_fs.exit.cleanup_crit_edge, label %dbg_is_chk_fs.exit.if.end_crit_edge

dbg_is_chk_fs.exit.if.end_crit_edge:              ; preds = %dbg_is_chk_fs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

dbg_is_chk_fs.exit.cleanup_crit_edge:             ; preds = %dbg_is_chk_fs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %dbg_is_chk_fs.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %fsckd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fsckd, align 4
  %call1 = call i32 @dbg_walk_index(ptr noundef %c, ptr noundef nonnull @check_leaf, ptr noundef null, ptr noundef nonnull %fsckd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #14
  %6 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %n.i, align 4, !annotation !1225
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #14
  %7 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %key.i, align 8, !annotation !1225
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode.i) #14
  %8 = ptrtoint ptr %znode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode.i, align 4, !annotation !1225
  %call.i = call ptr @rb_first(ptr noundef nonnull %fsckd) #14
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end60.i.while.cond.i_crit_edge, %if.end4
  %this.0.i = phi ptr [ %call.i, %if.end4 ], [ %call1.i, %if.end60.i.while.cond.i_crit_edge ]
  %tobool.not.i16 = icmp eq ptr %this.0.i, null
  br i1 %tobool.not.i16, label %if.end8, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = call ptr @rb_next(ptr noundef nonnull %this.0.i) #14
  %mode.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mode.i, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp.i = icmp eq i16 %11, 16384
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %inum.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp3.not.i = icmp eq i32 %13, 1
  %references14.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 5
  %14 = ptrtoint ptr %references14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %references14.i, align 4
  br i1 %cmp3.not.i, label %land.lhs.true13.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp5.not.i = icmp eq i32 %15, 1
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.750, i32 noundef %13, i32 noundef %15) #14
  br label %out_dump.i

land.lhs.true13.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.not.i = icmp eq i32 %15, 0
  br i1 %cmp15.not.i, label %land.lhs.true13.i.if.end20.i_crit_edge, label %if.then17.i

land.lhs.true13.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then17.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.751, i32 noundef 1, i32 noundef %15) #14
  br label %out_dump.i

if.end20.i:                                       ; preds = %land.lhs.true13.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge
  %calc_sz.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 9
  %16 = ptrtoint ptr %calc_sz.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %calc_sz.i, align 8
  %size.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 7
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp21.not.i = icmp eq i64 %17, %19
  br i1 %cmp21.not.i, label %if.end27.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.752, i32 noundef %13, i64 noundef %19, i64 noundef %17) #14
  br label %out_dump.i

if.end27.i:                                       ; preds = %if.end20.i
  %calc_cnt.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 6
  %20 = ptrtoint ptr %calc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %calc_cnt.i, align 8
  %nlink.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %nlink.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp28.not.i = icmp eq i32 %21, %23
  br i1 %cmp28.not.i, label %if.end27.i.if.end44.i_crit_edge, label %if.then30.i

if.end27.i.if.end44.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.753, i32 noundef %13, i32 noundef %23, i32 noundef %21) #14
  br label %out_dump.i

if.else.i:                                        ; preds = %while.body.i
  %references35.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 5
  %24 = ptrtoint ptr %references35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %references35.i, align 4
  %nlink36.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 3
  %26 = ptrtoint ptr %nlink36.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlink36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp37.not.i = icmp eq i32 %25, %27
  br i1 %cmp37.not.i, label %if.else.i.if.end44.i_crit_edge, label %if.then39.i

if.else.i.if.end44.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %inum40.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %inum40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inum40.i, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.754, i32 noundef %29, i32 noundef %27, i32 noundef %25) #14
  br label %out_dump.i

if.end44.i:                                       ; preds = %if.else.i.if.end44.i_crit_edge, %if.end27.i.if.end44.i_crit_edge
  %xattr_sz.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 8
  %30 = ptrtoint ptr %xattr_sz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xattr_sz.i, align 8
  %conv45.i = zext i32 %31 to i64
  %calc_xsz.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 11
  %32 = ptrtoint ptr %calc_xsz.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %calc_xsz.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv45.i)
  %cmp46.not.i = icmp eq i64 %33, %conv45.i
  br i1 %cmp46.not.i, label %if.end52.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %inum49.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %inum49.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inum49.i, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.755, i32 noundef %35, i32 noundef %31, i64 noundef %33) #14
  br label %out_dump.i

if.end52.i:                                       ; preds = %if.end44.i
  %xattr_cnt.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 4
  %36 = ptrtoint ptr %xattr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xattr_cnt.i, align 8
  %conv53.i = zext i32 %37 to i64
  %calc_xcnt.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 10
  %38 = ptrtoint ptr %calc_xcnt.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %calc_xcnt.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %conv53.i)
  %cmp54.not.i = icmp eq i64 %39, %conv53.i
  br i1 %cmp54.not.i, label %if.end60.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  %inum57.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %inum57.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inum57.i, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.756, i32 noundef %41, i32 noundef %37, i64 noundef %39) #14
  br label %out_dump.i

if.end60.i:                                       ; preds = %if.end52.i
  %xattr_nms.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 12
  %42 = ptrtoint ptr %xattr_nms.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xattr_nms.i, align 8
  %conv61.i = zext i32 %43 to i64
  %calc_xnms.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 13
  %44 = ptrtoint ptr %calc_xnms.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %calc_xnms.i, align 8
  %cmp62.not.i = icmp eq i64 %45, %conv61.i
  br i1 %cmp62.not.i, label %if.end60.i.while.cond.i_crit_edge, label %if.then64.i

if.end60.i.while.cond.i_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  %inum65.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 1
  %46 = ptrtoint ptr %inum65.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inum65.i, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.757, i32 noundef %47, i32 noundef %43, i64 noundef %45) #14
  br label %out_dump.i

out_dump.i:                                       ; preds = %if.then64.i, %if.then56.i, %if.then48.i, %if.then39.i, %if.then30.i, %if.then23.i, %if.then17.i, %if.then7.i
  %inum69.i = getelementptr inbounds %struct.fsck_inode, ptr %this.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %inum69.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %inum69.i, align 4
  %50 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %key.i, align 8
  %arrayidx1.i.i = getelementptr inbounds [2 x i32], ptr %key.i, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx1.i.i, align 4
  %call70.i = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef nonnull %key.i, ptr noundef nonnull %znode.i, ptr noundef nonnull %n.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else74.i

if.then72.i:                                      ; preds = %out_dump.i
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %inum69.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inum69.i, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.745, i32 noundef %53) #14
  br label %check_inodes.exit.thread

if.else74.i:                                      ; preds = %out_dump.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %cmp75.i = icmp slt i32 %call70.i, 0
  br i1 %cmp75.i, label %if.then77.i, label %if.end80.i

if.then77.i:                                      ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %inum69.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %inum69.i, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.746, i32 noundef %call70.i, i32 noundef %55) #14
  br label %check_inodes.exit.thread

if.end80.i:                                       ; preds = %if.else74.i
  %56 = ptrtoint ptr %znode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %znode.i, align 4
  %58 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n.i, align 4
  %len.i = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %59, i32 4
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 3136) #18
  %tobool82.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool82.not.i, label %if.end80.i.check_inodes.exit.thread_crit_edge, label %if.end84.i

if.end80.i.check_inodes.exit.thread_crit_edge:    ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_inodes.exit.thread

if.end84.i:                                       ; preds = %if.end80.i
  %arrayidx.i = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %59
  %call85.i = call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %arrayidx.i, ptr noundef nonnull %call9.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end88.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #16
  %lnum.i = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %59, i32 2
  %62 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lnum.i, align 4
  %offs.i = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %59, i32 3
  %64 = ptrtoint ptr %offs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offs.i, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.748, i32 noundef %63, i32 noundef %65, i32 noundef %call85.i) #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %check_inodes.exit.thread

if.end88.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %inum69.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %inum69.i, align 4
  %lnum90.i = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %59, i32 2
  %68 = ptrtoint ptr %lnum90.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lnum90.i, align 4
  %offs91.i = getelementptr %struct.ubifs_znode, ptr %57, i32 0, i32 13, i32 %59, i32 3
  %70 = ptrtoint ptr %offs91.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offs91.i, align 8
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.758, i32 noundef %67, i32 noundef %69, i32 noundef %71) #14
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i, align 4
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %call9.i.i, i32 noundef %73) #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %check_inodes.exit.thread

check_inodes.exit.thread:                         ; preds = %if.end88.i, %if.then87.i, %if.end80.i.check_inodes.exit.thread_crit_edge, %if.then77.i, %if.then72.i
  %retval.0.i.ph = phi i32 [ -12, %if.end80.i.check_inodes.exit.thread_crit_edge ], [ -2, %if.then72.i ], [ -22, %if.end88.i ], [ %call85.i, %if.then87.i ], [ %call70.i, %if.then77.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #14
  br label %out_free

if.end8:                                          ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #14
  %call.i17 = call ptr @rb_first_postorder(ptr noundef nonnull %fsckd) #14
  %tobool2.not21.i = icmp eq ptr %call.i17, null
  br i1 %tobool2.not21.i, label %if.end8.cleanup_crit_edge, label %if.end8.land.rhs.i_crit_edge

if.end8.land.rhs.i_crit_edge:                     ; preds = %if.end8
  br label %land.rhs.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end8.land.rhs.i_crit_edge
  %fscki.022.i = phi ptr [ %call4.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i17, %if.end8.land.rhs.i_crit_edge ]
  %call4.i = call ptr @rb_next_postorder(ptr noundef nonnull %fscki.022.i) #14
  call void @kfree(ptr noundef nonnull %fscki.022.i) #14
  %tobool2.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool2.not.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_free:                                         ; preds = %check_inodes.exit.thread, %if.end.out_free_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_free_crit_edge ], [ %retval.0.i.ph, %check_inodes.exit.thread ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.656, i32 noundef %err.0) #14
  call void @dump_stack() #17
  %call.i18 = call ptr @rb_first_postorder(ptr noundef nonnull %fsckd) #14
  %tobool2.not21.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool2.not21.i19, label %out_free.cleanup_crit_edge, label %out_free.land.rhs.i23_crit_edge

out_free.land.rhs.i23_crit_edge:                  ; preds = %out_free
  br label %land.rhs.i23

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.i23:                                     ; preds = %land.rhs.i23.land.rhs.i23_crit_edge, %out_free.land.rhs.i23_crit_edge
  %fscki.022.i20 = phi ptr [ %call4.i21, %land.rhs.i23.land.rhs.i23_crit_edge ], [ %call.i18, %out_free.land.rhs.i23_crit_edge ]
  %call4.i21 = call ptr @rb_next_postorder(ptr noundef nonnull %fscki.022.i20) #14
  call void @kfree(ptr noundef nonnull %fscki.022.i20) #14
  %tobool2.not.i22 = icmp eq ptr %call4.i21, null
  br i1 %tobool2.not.i22, label %land.rhs.i23.cleanup_crit_edge, label %land.rhs.i23.land.rhs.i23_crit_edge

land.rhs.i23.land.rhs.i23_crit_edge:              ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i23

land.rhs.i23.cleanup_crit_edge:                   ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.i23.cleanup_crit_edge, %out_free.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %dbg_is_chk_fs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dbg_is_chk_fs.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %err.0, %out_free.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ %err.0, %land.rhs.i23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsckd) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_leaf(ptr noundef %c, ptr noundef %zbr, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [2 x i32], ptr %zbr, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %1, 29
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp = icmp ult i32 %3, 24
  br i1 %cmp, label %if.then, label %if.end8.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %4 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lnum, align 4
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %6 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.732, i32 noundef %3, i32 noundef %5, i32 noundef %7) #14
  br label %cleanup139

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3136) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup139_crit_edge, label %if.end5

if.end8.i.cleanup139_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup139

if.end5:                                          ; preds = %if.end8.i
  %call6 = tail call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %call9.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %lnum9 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %8 = ptrtoint ptr %lnum9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lnum9, align 4
  %offs10 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %10 = ptrtoint ptr %offs10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offs10, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.733, i32 noundef %9, i32 noundef %11, i32 noundef %call6) #14
  br label %out_free

if.end11:                                         ; preds = %if.end5
  %12 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.785)
  switch i32 %shr.i, label %if.then24 [
    i32 0, label %if.then13
    i32 2, label %if.end11.if.end27_crit_edge
    i32 3, label %if.end11.if.end27_crit_edge253
    i32 1, label %if.end11.if.end27_crit_edge254
  ]

if.end11.if.end27_crit_edge254:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end11.if.end27_crit_edge253:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then13:                                        ; preds = %if.end11
  %call14 = tail call fastcc ptr @add_inode(ptr noundef %c, ptr noundef %priv, ptr noundef nonnull %call9.i)
  %cmp.i244 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then16, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.734, i32 noundef %13) #14
  br label %out_dump

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %lnum25 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %14 = ptrtoint ptr %lnum25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum25, align 4
  %offs26 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %16 = ptrtoint ptr %offs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs26, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.735, i32 noundef %shr.i, i32 noundef %15, i32 noundef %17) #14
  br label %out_free

if.end27:                                         ; preds = %if.end11.if.end27_crit_edge, %if.end11.if.end27_crit_edge253, %if.end11.if.end27_crit_edge254
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %call9.i, i32 0, i32 2
  %18 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sqnum, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %21 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %max_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp28 = icmp ugt i64 %20, %22
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.736, i64 noundef %22) #14
  br label %out_dump

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp32 = icmp eq i32 %shr.i, 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %24)
  %cmp35 = icmp ult i32 %24, 48
  br i1 %cmp35, label %if.then39, label %if.then33.do.end_crit_edge, !prof !1223

if.then33.do.end_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.737, ptr noundef nonnull @.str.6, i32 noundef 2054)
  br label %do.end

do.end:                                           ; preds = %if.then39, %if.then33.do.end_crit_edge
  %key41 = getelementptr inbounds %struct.ubifs_data_node, ptr %call9.i, i32 0, i32 1
  %25 = ptrtoint ptr %key41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key41, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %call43 = tail call fastcc ptr @read_add_inode(ptr noundef %c, ptr noundef %priv, i32 noundef %27)
  %cmp.i245 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then45, label %if.end47

if.then45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %call43 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.738, i32 noundef %28, i32 noundef %27) #14
  br label %out_dump

if.end47:                                         ; preds = %do.end
  %arrayidx.i246 = getelementptr %struct.ubifs_data_node, ptr %call9.i, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i246, align 4
  %31 = and i32 %30, -225
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #14
  %conv = zext i32 %32 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %size = getelementptr inbounds %struct.ubifs_data_node, ptr %call9.i, i32 0, i32 2
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %conv50 = zext i32 %35 to i64
  %add = add nuw nsw i64 %shl, %conv50
  %size51 = getelementptr inbounds %struct.fsck_inode, ptr %call43, i32 0, i32 7
  %36 = ptrtoint ptr %size51 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size51, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %37)
  %cmp52 = icmp sgt i64 %add, %37
  br i1 %cmp52, label %if.then54, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %lnum55 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %38 = ptrtoint ptr %lnum55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lnum55, align 4
  %offs56 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %40 = ptrtoint ptr %offs56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offs56, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.739, i32 noundef %39, i32 noundef %41, i64 noundef %37) #14
  br label %out_dump

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %24)
  %cmp62 = icmp ult i32 %24, 56
  br i1 %cmp62, label %if.then72, label %if.else.do.end75_crit_edge, !prof !1223

if.else.do.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.740, ptr noundef nonnull @.str.6, i32 noundef 2084)
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %if.else.do.end75_crit_edge
  %call76 = tail call i32 @ubifs_validate_entry(ptr noundef %c, ptr noundef nonnull %call9.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %do.end75.out_dump_crit_edge

do.end75.out_dump_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dump

if.end79:                                         ; preds = %do.end75
  %inum80 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i, i32 0, i32 2
  %42 = ptrtoint ptr %inum80 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %inum80, align 8
  %44 = tail call i64 @llvm.bswap.i64(i64 %43)
  %conv81 = trunc i64 %44 to i32
  %call82 = tail call fastcc ptr @read_add_inode(ptr noundef %c, ptr noundef %priv, i32 noundef %conv81)
  %cmp.i247 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %call82 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.741, i32 noundef %45, i32 noundef %conv81) #14
  br label %out_dump

if.end86:                                         ; preds = %if.end79
  %references = getelementptr inbounds %struct.fsck_inode, ptr %call82, i32 0, i32 5
  %46 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %references, align 4
  %add87 = add i32 %47, 1
  store i32 %add87, ptr %references, align 4
  %key88 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i, i32 0, i32 1
  %48 = ptrtoint ptr %key88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %key88, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #14
  %call90 = tail call fastcc ptr @read_add_inode(ptr noundef %c, ptr noundef %priv, i32 noundef %50)
  %cmp.i248 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %call90 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.742, i32 noundef %51, i32 noundef %50) #14
  br label %out_dump

if.end94:                                         ; preds = %if.end86
  %nlen95 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i, i32 0, i32 5
  %52 = ptrtoint ptr %nlen95 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nlen95, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %conv96 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp97 = icmp eq i32 %shr.i, 3
  br i1 %cmp97, label %if.then99, label %if.else115

if.then99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  %calc_xcnt = getelementptr inbounds %struct.fsck_inode, ptr %call90, i32 0, i32 10
  %55 = ptrtoint ptr %calc_xcnt to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %calc_xcnt, align 8
  %add100 = add i64 %56, 1
  store i64 %add100, ptr %calc_xcnt, align 8
  %add103 = add nuw nsw i32 %conv96, 64
  %and = and i32 %add103, 131064
  %conv104 = zext i32 %and to i64
  %calc_xsz = getelementptr inbounds %struct.fsck_inode, ptr %call90, i32 0, i32 11
  %57 = ptrtoint ptr %calc_xsz to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %calc_xsz, align 8
  %add105 = add i64 %58, %conv104
  store i64 %add105, ptr %calc_xsz, align 8
  %size106 = getelementptr inbounds %struct.fsck_inode, ptr %call82, i32 0, i32 7
  %59 = ptrtoint ptr %size106 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size106, align 8
  %add109 = add i64 %60, 168
  %and110 = and i64 %add109, -8
  %add112 = add i64 %and110, %add105
  store i64 %add112, ptr %calc_xsz, align 8
  %61 = zext i16 %54 to i64
  %calc_xnms = getelementptr inbounds %struct.fsck_inode, ptr %call90, i32 0, i32 13
  %62 = ptrtoint ptr %calc_xnms to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %calc_xnms, align 8
  %add114 = add i64 %63, %61
  store i64 %add114, ptr %calc_xnms, align 8
  br label %out

if.else115:                                       ; preds = %if.end94
  %add118 = add nuw nsw i32 %conv96, 64
  %and119 = and i32 %add118, 131064
  %conv120 = zext i32 %and119 to i64
  %calc_sz = getelementptr inbounds %struct.fsck_inode, ptr %call90, i32 0, i32 9
  %64 = ptrtoint ptr %calc_sz to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %calc_sz, align 8
  %add121 = add i64 %65, %conv120
  store i64 %add121, ptr %calc_sz, align 8
  %type122 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call9.i, i32 0, i32 4
  %66 = ptrtoint ptr %type122 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp124 = icmp eq i8 %67, 1
  br i1 %cmp124, label %if.then126, label %if.else115.out_crit_edge

if.else115.out_crit_edge:                         ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then126:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #16
  %calc_cnt = getelementptr inbounds %struct.fsck_inode, ptr %call90, i32 0, i32 6
  %68 = ptrtoint ptr %calc_cnt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %calc_cnt, align 8
  %add127 = add i32 %69, 1
  store i32 %add127, ptr %calc_cnt, align 8
  br label %out

out:                                              ; preds = %if.then126, %if.else115.out_crit_edge, %if.then99, %if.end47.out_crit_edge, %if.then13.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup139

out_dump:                                         ; preds = %if.then92, %if.then84, %do.end75.out_dump_crit_edge, %if.then54, %if.then45, %if.then29, %if.then16
  %err.2 = phi i32 [ %13, %if.then16 ], [ -22, %if.then29 ], [ %45, %if.then84 ], [ %51, %if.then92 ], [ %call76, %do.end75.out_dump_crit_edge ], [ -22, %if.then54 ], [ %28, %if.then45 ]
  %lnum136 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %70 = ptrtoint ptr %lnum136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lnum136, align 4
  %offs137 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %72 = ptrtoint ptr %offs137 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offs137, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.743, i32 noundef %71, i32 noundef %73) #14
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %call9.i, i32 noundef %75)
  br label %out_free

out_free:                                         ; preds = %out_dump, %if.then24, %if.then8
  %err.3 = phi i32 [ %call6, %if.then8 ], [ %err.2, %out_dump ], [ -22, %if.then24 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup139

cleanup139:                                       ; preds = %out_free, %out, %if.end8.i.cleanup139_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %err.3, %out_free ], [ 0, %out ], [ -12, %if.end8.i.cleanup139_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_data_nodes_order(ptr noundef %c, ptr noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

lor.rhs.i:                                        ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %chk_gen.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %chk_gen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load1.i = load i8, ptr %chk_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %phi.cmp = icmp sgt i8 %bf.load1.i, -1
  br i1 %phi.cmp, label %lor.rhs.i.cleanup52_crit_edge, label %lor.rhs.i.for.cond.preheader_crit_edge

lor.rhs.i.for.cond.preheader_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

lor.rhs.i.cleanup52_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

for.cond.preheader:                               ; preds = %lor.rhs.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %cur.0132 = load ptr, ptr %head, align 4
  %4 = ptrtoint ptr %cur.0132 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.0132, align 4
  %cmp.not133 = icmp eq ptr %5, %head
  br i1 %cmp.not133, label %for.cond.preheader.cleanup52_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup52_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cur.0134 = phi ptr [ %cur.0, %for.inc.for.body_crit_edge ], [ %cur.0132, %for.cond.preheader.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 2332, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %6 = ptrtoint ptr %cur.0134 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur.0134, align 4
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0134, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8.not = icmp eq i32 %9, 1
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.657, i32 noundef %9) #14
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %cleanup52.sink.split

if.end11:                                         ; preds = %for.body
  %type12 = getelementptr inbounds %struct.ubifs_scan_node, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp13.not = icmp eq i32 %11, 1
  br i1 %cmp13.not, label %if.end20, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.657, i32 noundef %11) #14
  %leb_size17 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %cleanup52.sink.split

if.end20:                                         ; preds = %if.end11
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0134, i32 0, i32 1
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key, align 8
  %key22 = getelementptr inbounds %struct.ubifs_scan_node, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %key22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp24 = icmp ult i32 %13, %15
  br i1 %cmp24, label %if.end20.for.inc_crit_edge, label %if.end26

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp27 = icmp ugt i32 %13, %15
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.658, i32 noundef %13, i32 noundef %15) #14
  br label %error_dump

if.end29:                                         ; preds = %if.end26
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %17, 536870911
  %arrayidx.i99 = getelementptr [2 x i32], ptr %key22, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i99, align 4
  %and.i100 = and i32 %19, 536870911
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i100)
  %cmp34 = icmp ugt i32 %and.i, %and.i100
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.659, i32 noundef %and.i, i32 noundef %and.i100) #14
  br label %error_dump

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i100)
  %cmp37 = icmp eq i32 %and.i, %and.i100
  br i1 %cmp37, label %if.then38, label %if.end36.for.inc_crit_edge

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.660) #14
  br label %error_dump

for.inc:                                          ; preds = %if.end36.for.inc_crit_edge, %if.end20.for.inc_crit_edge
  %20 = ptrtoint ptr %cur.0134 to i32
  call void @__asan_load4_noabort(i32 %20)
  %cur.0 = load ptr, ptr %cur.0134, align 4
  %21 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur.0, align 4
  %cmp.not = icmp eq ptr %22, %head
  br i1 %cmp.not, label %for.inc.cleanup52_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup52_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

error_dump:                                       ; preds = %if.then38, %if.then35, %if.then28
  %node44 = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0134, i32 0, i32 6
  %23 = ptrtoint ptr %node44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node44, align 4
  %leb_size45 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %25 = ptrtoint ptr %leb_size45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %leb_size45, align 8
  %offs46 = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0134, i32 0, i32 4
  %27 = ptrtoint ptr %offs46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offs46, align 4
  %sub47 = sub i32 %26, %28
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %24, i32 noundef %sub47)
  br label %cleanup52.sink.split

cleanup52.sink.split:                             ; preds = %error_dump, %if.then14, %if.then9
  %leb_size17.sink = phi ptr [ %leb_size17, %if.then14 ], [ %leb_size, %if.then9 ], [ %leb_size45, %error_dump ]
  %.lcssa176.sink = phi ptr [ %7, %if.then14 ], [ %cur.0134, %if.then9 ], [ %7, %error_dump ]
  %.sink.in = getelementptr inbounds %struct.ubifs_scan_node, ptr %.lcssa176.sink, i32 0, i32 6
  %29 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %.sink = load ptr, ptr %.sink.in, align 4
  %30 = ptrtoint ptr %leb_size17.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %leb_size17.sink, align 8
  %offs18 = getelementptr inbounds %struct.ubifs_scan_node, ptr %.lcssa176.sink, i32 0, i32 4
  %32 = ptrtoint ptr %offs18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offs18, align 4
  %sub19 = sub i32 %31, %33
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %.sink, i32 noundef %sub19)
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup52.sink.split, %for.inc.cleanup52_crit_edge, %for.cond.preheader.cleanup52_crit_edge, %lor.rhs.i.cleanup52_crit_edge
  %retval.2 = phi i32 [ 0, %lor.rhs.i.cleanup52_crit_edge ], [ 0, %for.cond.preheader.cleanup52_crit_edge ], [ -22, %cleanup52.sink.split ], [ 0, %for.inc.cleanup52_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_nondata_nodes_order(ptr noundef %c, ptr noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

lor.rhs.i:                                        ; preds = %entry
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %chk_gen.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %chk_gen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load1.i = load i8, ptr %chk_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %phi.cmp = icmp sgt i8 %bf.load1.i, -1
  br i1 %phi.cmp, label %lor.rhs.i.cleanup85_crit_edge, label %lor.rhs.i.for.cond.preheader_crit_edge

lor.rhs.i.for.cond.preheader_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

lor.rhs.i.cleanup85_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup85

for.cond.preheader:                               ; preds = %lor.rhs.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %cur.0178 = load ptr, ptr %head, align 4
  %4 = ptrtoint ptr %cur.0178 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.0178, align 4
  %cmp.not179 = icmp eq ptr %5, %head
  br i1 %cmp.not179, label %for.cond.preheader.cleanup85_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup85_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup85

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cur.0180 = phi ptr [ %cur.0, %for.inc.for.body_crit_edge ], [ %cur.0178, %for.cond.preheader.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 2399, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %6 = ptrtoint ptr %cur.0180 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur.0180, align 4
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0180, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.786)
  switch i32 %9, label %if.then14 [
    i32 0, label %for.body.if.end16_crit_edge
    i32 2, label %for.body.if.end16_crit_edge334
    i32 3, label %for.body.if.end16_crit_edge335
  ]

for.body.if.end16_crit_edge335:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

for.body.if.end16_crit_edge334:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.657, i32 noundef %9) #14
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0180, i32 0, i32 6
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %cleanup85.sink.split

if.end16:                                         ; preds = %for.body.if.end16_crit_edge, %for.body.if.end16_crit_edge334, %for.body.if.end16_crit_edge335
  %type17 = getelementptr inbounds %struct.ubifs_scan_node, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %type17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type17, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.787)
  switch i32 %12, label %if.then25 [
    i32 0, label %if.end16.if.end31_crit_edge
    i32 2, label %if.end16.if.end31_crit_edge336
    i32 3, label %if.end16.if.end31_crit_edge337
  ]

if.end16.if.end31_crit_edge337:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end16.if.end31_crit_edge336:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.657, i32 noundef %12) #14
  %node27 = getelementptr inbounds %struct.ubifs_scan_node, ptr %7, i32 0, i32 6
  %leb_size28 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  br label %cleanup85.sink.split

if.end31:                                         ; preds = %if.end16.if.end31_crit_edge, %if.end16.if.end31_crit_edge336, %if.end16.if.end31_crit_edge337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp33.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp43.not = icmp eq i32 %12, 0
  br i1 %cmp33.not, label %land.lhs.true41, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end31
  br i1 %cmp43.not, label %if.then37, label %if.end56

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.661) #14
  br label %error_dump

land.lhs.true41:                                  ; preds = %if.end31
  br i1 %cmp43.not, label %if.then51, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then51:                                        ; preds = %land.lhs.true41
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0180, i32 0, i32 5
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 8
  %len52 = getelementptr inbounds %struct.ubifs_scan_node, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len52, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp53 = icmp slt i32 %15, %17
  br i1 %cmp53, label %if.then54, label %if.then51.for.inc_crit_edge

if.then51.for.inc_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.662) #14
  br label %error_dump

if.end56:                                         ; preds = %land.lhs.true34
  %key = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0180, i32 0, i32 1
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key, align 8
  %key58 = getelementptr inbounds %struct.ubifs_scan_node, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %key58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp60 = icmp ult i32 %19, %21
  br i1 %cmp60, label %if.end56.for.inc_crit_edge, label %if.end62

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp63 = icmp ugt i32 %19, %21
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.658, i32 noundef %19, i32 noundef %21) #14
  br label %error_dump

if.end65:                                         ; preds = %if.end62
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %23, 536870911
  %arrayidx.i145 = getelementptr [2 x i32], ptr %key58, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i145, align 4
  %and.i146 = and i32 %25, 536870911
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i146)
  %cmp70 = icmp ugt i32 %and.i, %and.i146
  br i1 %cmp70, label %if.then71, label %if.end65.for.inc_crit_edge

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.663, i32 noundef %and.i, i32 noundef %and.i146) #14
  br label %error_dump

for.inc:                                          ; preds = %if.end65.for.inc_crit_edge, %if.end56.for.inc_crit_edge, %if.then51.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge
  %26 = ptrtoint ptr %cur.0180 to i32
  call void @__asan_load4_noabort(i32 %26)
  %cur.0 = load ptr, ptr %cur.0180, align 4
  %27 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur.0, align 4
  %cmp.not = icmp eq ptr %28, %head
  br i1 %cmp.not, label %for.inc.cleanup85_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup85_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup85

error_dump:                                       ; preds = %if.then71, %if.then64, %if.then54, %if.then37
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.664) #14
  %node77 = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0180, i32 0, i32 6
  %29 = ptrtoint ptr %node77 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node77, align 4
  %leb_size78 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %31 = ptrtoint ptr %leb_size78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %leb_size78, align 8
  %offs79 = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0180, i32 0, i32 4
  %33 = ptrtoint ptr %offs79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offs79, align 4
  %sub80 = sub i32 %32, %34
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %30, i32 noundef %sub80)
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.665) #14
  %node81 = getelementptr inbounds %struct.ubifs_scan_node, ptr %7, i32 0, i32 6
  br label %cleanup85.sink.split

cleanup85.sink.split:                             ; preds = %error_dump, %if.then25, %if.then14
  %leb_size.sink = phi ptr [ %leb_size, %if.then14 ], [ %leb_size28, %if.then25 ], [ %leb_size78, %error_dump ]
  %cur.0180.lcssa.sink = phi ptr [ %cur.0180, %if.then14 ], [ %7, %if.then25 ], [ %7, %error_dump ]
  %.sink.in = phi ptr [ %node, %if.then14 ], [ %node27, %if.then25 ], [ %node81, %error_dump ]
  %35 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %.sink = load ptr, ptr %.sink.in, align 4
  %36 = ptrtoint ptr %leb_size.sink to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %leb_size.sink, align 8
  %offs = getelementptr inbounds %struct.ubifs_scan_node, ptr %cur.0180.lcssa.sink, i32 0, i32 4
  %38 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offs, align 4
  %sub = sub i32 %37, %39
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %.sink, i32 noundef %sub)
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup85.sink.split, %for.inc.cleanup85_crit_edge, %for.cond.preheader.cleanup85_crit_edge, %lor.rhs.i.cleanup85_crit_edge
  %retval.2 = phi i32 [ 0, %lor.rhs.i.cleanup85_crit_edge ], [ 0, %for.cond.preheader.cleanup85_crit_edge ], [ -22, %cleanup85.sink.split ], [ 0, %for.inc.cleanup85_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_write(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %pc_happened.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pc_happened.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pc_happened.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %call.i.i = tail call i32 @prandom_u32() #14
  %rem.i.i = and i32 %call.i.i, 1
  %call1.i = tail call i32 @prandom_u32() #14
  %rem.i = urem i32 %call1.i, %len
  %max_write_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 73
  %4 = ptrtoint ptr %max_write_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_write_size.i, align 8
  %add2.i = add i32 %5, %rem.i
  %neg.i = sub i32 0, %5
  %and.i = and i32 %add2.i, %neg.i
  %6 = tail call i32 @llvm.umin.i32(i32 %and.i, i32 %len) #14
  %sub5.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.not.i = icmp eq i32 %rem.i.i, 0
  %cond6.i = select i1 %tobool.not.not.i, ptr @.str.774, ptr @.str.775
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.773, i32 noundef %rem.i, i32 noundef %sub5.i, ptr noundef nonnull %cond6.i) #14
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %rem.i
  %sub8.i = sub i32 %6, %rem.i
  br i1 %tobool.not.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memset(ptr %add.ptr.i, i32 255, i32 %sub8.i)
  br label %corrupt_data.exit

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @prandom_bytes(ptr noundef %add.ptr.i, i32 noundef %sub8.i) #14
  br label %corrupt_data.exit

corrupt_data.exit:                                ; preds = %if.else.i, %if.then.i
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.666, i32 noundef %6, i32 noundef %lnum, i32 noundef %offs) #14
  br label %if.end5

if.end5:                                          ; preds = %corrupt_data.exit, %if.end.if.end5_crit_edge
  %. = phi i32 [ -30, %corrupt_data.exit ], [ 0, %if.end.if.end5_crit_edge ]
  %len.addr.0 = phi i32 [ %6, %corrupt_data.exit ], [ %len, %if.end.if.end5_crit_edge ]
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %8 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ubi, align 4
  %call6 = tail call i32 @ubi_leb_write(ptr noundef %9, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len.addr.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 %., i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %2 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %dbg_is_tst_rcvry.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

dbg_is_tst_rcvry.exit:                            ; preds = %entry
  %tst_rcvry.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %tst_rcvry.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %tst_rcvry.i, align 4
  %4 = and i8 %bf.load1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %dbg_is_tst_rcvry.exit.do.end_crit_edge, !prof !1223

dbg_is_tst_rcvry.exit.do.end_crit_edge:           ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.759, ptr noundef nonnull @.str.6, i32 noundef 2478)
  br label %do.end

do.end:                                           ; preds = %if.then, %dbg_is_tst_rcvry.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %pc_cnt = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pc_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then5:                                         ; preds = %do.end
  %call.i = tail call i32 @prandom_u32() #14
  %rem.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool7.not.not = icmp eq i32 %rem.i, 0
  br i1 %tobool7.not.not, label %if.then8, label %if.then5.if.end19_crit_edge

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then8:                                         ; preds = %if.then5
  %call.i226 = tail call i32 @prandom_u32() #14
  %rem.i227 = and i32 %call.i226, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i227)
  %tobool10.not.not = icmp eq i32 %rem.i227, 0
  %pc_delay = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 4
  br i1 %tobool10.not.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %pc_delay to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %pc_delay, align 4
  %call12 = tail call i32 @prandom_u32() #14
  %rem = urem i32 %call12, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %pc_timeout = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %pc_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pc_timeout, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %rem) #14
  %10 = ptrtoint ptr %pc_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pc_timeout, align 8
  %add = add i32 %11, %call2.i
  store i32 %add, ptr %pc_timeout, align 8
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.760, i32 noundef %rem) #14
  br label %if.end19

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %pc_delay to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %pc_delay, align 4
  %call16 = tail call i32 @prandom_u32() #14
  %rem17 = urem i32 %call16, 10000
  %pc_cnt_max = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %pc_cnt_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem17, ptr %pc_cnt_max, align 8
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.761, i32 noundef %rem17) #14
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11, %if.then5.if.end19_crit_edge
  %14 = ptrtoint ptr %pc_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pc_cnt, align 4
  %add21 = add i32 %15, 1
  store i32 %add21, ptr %pc_cnt, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %do.end.if.end22_crit_edge
  %pc_delay23 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %pc_delay23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pc_delay23, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.788)
  switch i32 %17, label %if.end22.if.end35_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true30
  ]

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %pc_timeout24 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %pc_timeout24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pc_timeout24, align 8
  %sub = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true30:                                  ; preds = %if.end22
  %22 = ptrtoint ptr %pc_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pc_cnt, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %pc_cnt, align 4
  %pc_cnt_max32 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %pc_cnt_max32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pc_cnt_max32, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp33 = icmp ult i32 %23, %25
  br i1 %cmp33, label %land.lhs.true30.cleanup_crit_edge, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true30.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end22.if.end35_crit_edge
  %26 = zext i32 %lnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.789)
  switch i32 %lnum, label %if.else56 [
    i32 0, label %if.then37
    i32 1, label %if.end35.if.then51_crit_edge
    i32 2, label %if.end35.if.then51_crit_edge289
  ]

if.end35.if.then51_crit_edge289:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

if.end35.if.then51_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool38.not = icmp eq i32 %write, 0
  br i1 %tobool38.not, label %if.then37.if.end43_crit_edge, label %land.lhs.true39

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

land.lhs.true39:                                  ; preds = %if.then37
  %call.i230 = tail call i32 @prandom_u32() #14
  %rem.i231 = and i32 %call.i230, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i231)
  %tobool41.not.not = icmp eq i32 %rem.i231, 0
  br i1 %tobool41.not.not, label %land.lhs.true39.cleanup_crit_edge, label %land.lhs.true39.if.end43_crit_edge

land.lhs.true39.if.end43_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true39.if.end43_crit_edge, %if.then37.if.end43_crit_edge
  %call.i234 = tail call i32 @prandom_u32() #14
  %rem.i235 = urem i32 %call.i234, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %rem.i235)
  %cmp.i236 = icmp ugt i32 %rem.i235, 18
  br i1 %cmp.i236, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.762, i32 noundef 0) #14
  br label %if.end157

if.then51:                                        ; preds = %if.end35.if.then51_crit_edge, %if.end35.if.then51_crit_edge289
  %call.i238 = tail call i32 @prandom_u32() #14
  %rem.i239 = urem i32 %call.i238, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %rem.i239)
  %cmp.i240 = icmp ugt i32 %rem.i239, 18
  br i1 %cmp.i240, label %if.end55, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.763, i32 noundef %lnum) #14
  br label %if.end157

if.else56:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lnum)
  %cmp57 = icmp sgt i32 %lnum, 2
  br i1 %cmp57, label %land.lhs.true58, label %if.else56.if.else71_crit_edge

if.else56.if.else71_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else71

land.lhs.true58:                                  ; preds = %if.else56
  %log_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  %27 = ptrtoint ptr %log_last to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %log_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %lnum)
  %cmp59.not = icmp slt i32 %28, %lnum
  br i1 %cmp59.not, label %land.lhs.true58.if.else71_crit_edge, label %if.then60

land.lhs.true58.if.else71_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else71

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool61.not = icmp eq i32 %write, 0
  br i1 %tobool61.not, label %if.then60.if.end66_crit_edge, label %land.lhs.true62

if.then60.if.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true62:                                  ; preds = %if.then60
  %call.i242 = tail call i32 @prandom_u32() #14
  %rem.i243 = urem i32 %call.i242, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %rem.i243)
  %cmp.i244 = icmp ugt i32 %rem.i243, 98
  br i1 %cmp.i244, label %land.lhs.true62.if.end66_crit_edge, label %land.lhs.true62.cleanup_crit_edge

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true62.if.end66_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true62.if.end66_crit_edge, %if.then60.if.end66_crit_edge
  %call.i246 = tail call i32 @prandom_u32() #14
  %rem.i247 = urem i32 %call.i246, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 398, i32 %rem.i247)
  %cmp.i248 = icmp ugt i32 %rem.i247, 398
  br i1 %cmp.i248, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.764, i32 noundef %lnum) #14
  br label %if.end157

if.else71:                                        ; preds = %land.lhs.true58.if.else71_crit_edge, %if.else56.if.else71_crit_edge
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %29 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lpt_first, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %lnum)
  %cmp72.not = icmp sgt i32 %30, %lnum
  br i1 %cmp72.not, label %if.else71.if.else86_crit_edge, label %land.lhs.true73

if.else71.if.else86_crit_edge:                    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else86

land.lhs.true73:                                  ; preds = %if.else71
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %31 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lpt_last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %lnum)
  %cmp74.not = icmp slt i32 %32, %lnum
  br i1 %cmp74.not, label %land.lhs.true73.if.else86_crit_edge, label %if.then75

land.lhs.true73.if.else86_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else86

if.then75:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool76.not = icmp eq i32 %write, 0
  br i1 %tobool76.not, label %if.then75.if.end81_crit_edge, label %land.lhs.true77

if.then75.if.end81_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

land.lhs.true77:                                  ; preds = %if.then75
  %call.i250 = tail call i32 @prandom_u32() #14
  %rem.i251 = and i32 %call.i250, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rem.i251)
  %cmp.i252.not = icmp eq i32 %rem.i251, 7
  br i1 %cmp.i252.not, label %land.lhs.true77.if.end81_crit_edge, label %land.lhs.true77.cleanup_crit_edge

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true77.if.end81_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true77.if.end81_crit_edge, %if.then75.if.end81_crit_edge
  %call.i254 = tail call i32 @prandom_u32() #14
  %rem.i255 = urem i32 %call.i254, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %rem.i255)
  %cmp.i256 = icmp ugt i32 %rem.i255, 18
  br i1 %cmp.i256, label %if.end85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.765, i32 noundef %lnum) #14
  br label %if.end157

if.else86:                                        ; preds = %land.lhs.true73.if.else86_crit_edge, %if.else71.if.else86_crit_edge
  %orph_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %33 = ptrtoint ptr %orph_first to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %orph_first, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %lnum)
  %cmp87.not = icmp sgt i32 %34, %lnum
  br i1 %cmp87.not, label %if.else86.if.else101_crit_edge, label %land.lhs.true88

if.else86.if.else101_crit_edge:                   ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else101

land.lhs.true88:                                  ; preds = %if.else86
  %orph_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %35 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %orph_last, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %lnum)
  %cmp89.not = icmp slt i32 %36, %lnum
  br i1 %cmp89.not, label %land.lhs.true88.if.else101_crit_edge, label %if.then90

land.lhs.true88.if.else101_crit_edge:             ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else101

if.then90:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool91.not = icmp eq i32 %write, 0
  br i1 %tobool91.not, label %if.then90.if.end96_crit_edge, label %land.lhs.true92

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

land.lhs.true92:                                  ; preds = %if.then90
  %call.i258 = tail call i32 @prandom_u32() #14
  %rem.i259 = and i32 %call.i258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i259)
  %tobool94.not.not = icmp eq i32 %rem.i259, 0
  br i1 %tobool94.not.not, label %land.lhs.true92.cleanup_crit_edge, label %land.lhs.true92.if.end96_crit_edge

land.lhs.true92.if.end96_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

land.lhs.true92.cleanup_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end96:                                         ; preds = %land.lhs.true92.if.end96_crit_edge, %if.then90.if.end96_crit_edge
  %call.i262 = tail call i32 @prandom_u32() #14
  %rem.i263 = urem i32 %call.i262, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rem.i263)
  %cmp.i264 = icmp ugt i32 %rem.i263, 8
  br i1 %cmp.i264, label %if.end100, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end100:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.766, i32 noundef %lnum) #14
  br label %if.end157

if.else101:                                       ; preds = %land.lhs.true88.if.else101_crit_edge, %if.else86.if.else101_crit_edge
  %ihead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %37 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ihead_lnum, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %lnum)
  %cmp102 = icmp eq i32 %38, %lnum
  br i1 %cmp102, label %if.then103, label %if.else108

if.then103:                                       ; preds = %if.else101
  %call.i266 = tail call i32 @prandom_u32() #14
  %rem.i267 = urem i32 %call.i266, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %rem.i267)
  %cmp.i268 = icmp ugt i32 %rem.i267, 98
  br i1 %cmp.i268, label %if.end107, label %if.then103.cleanup_crit_edge

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end107:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.767, i32 noundef %lnum) #14
  br label %if.end157

if.else108:                                       ; preds = %if.else101
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %39 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %jheads, align 8
  %tobool109.not = icmp eq ptr %40, null
  br i1 %tobool109.not, label %if.else108.if.else119_crit_edge, label %land.lhs.true110

if.else108.if.else119_crit_edge:                  ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else119

land.lhs.true110:                                 ; preds = %if.else108
  %lnum112 = getelementptr inbounds %struct.ubifs_wbuf, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %lnum112 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lnum112, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %lnum)
  %cmp113 = icmp eq i32 %42, %lnum
  br i1 %cmp113, label %if.then114, label %land.lhs.true110.if.else119_crit_edge

land.lhs.true110.if.else119_crit_edge:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else119

if.then114:                                       ; preds = %land.lhs.true110
  %call.i270 = tail call i32 @prandom_u32() #14
  %rem.i271 = urem i32 %call.i270, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rem.i271)
  %cmp.i272 = icmp ugt i32 %rem.i271, 8
  br i1 %cmp.i272, label %if.end118, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end118:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.768, i32 noundef %lnum) #14
  br label %if.end157

if.else119:                                       ; preds = %land.lhs.true110.if.else119_crit_edge, %if.else108.if.else119_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool120.not = icmp eq i32 %write, 0
  br i1 %tobool120.not, label %if.else119.if.else134_crit_edge, label %do.end124

if.else119.if.else134_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else134

do.end124:                                        ; preds = %if.else119
  %buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %43 = ptrtoint ptr %buds to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %buds, align 8
  %cmp125 = icmp eq ptr %44, null
  br i1 %cmp125, label %do.end124.if.else134_crit_edge, label %land.lhs.true126

do.end124.if.else134_crit_edge:                   ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else134

land.lhs.true126:                                 ; preds = %do.end124
  %call127 = tail call ptr @ubifs_search_bud(ptr noundef %c, i32 noundef %lnum) #14
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %if.then129, label %land.lhs.true126.if.else134_crit_edge

land.lhs.true126.if.else134_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else134

if.then129:                                       ; preds = %land.lhs.true126
  %call.i274 = tail call i32 @prandom_u32() #14
  %rem.i275 = urem i32 %call.i274, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %rem.i275)
  %cmp.i276 = icmp ugt i32 %rem.i275, 18
  br i1 %cmp.i276, label %if.end133, label %if.then129.cleanup_crit_edge

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end133:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.769, i32 noundef %lnum) #14
  br label %if.end157

if.else134:                                       ; preds = %land.lhs.true126.if.else134_crit_edge, %do.end124.if.else134_crit_edge, %if.else119.if.else134_crit_edge
  %cmt_state = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %45 = ptrtoint ptr %cmt_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmt_state, align 4
  %.off = add i32 %46, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %call.i278 = tail call i32 @prandom_u32() #14
  br i1 %switch, label %if.then139, label %if.else144

if.then139:                                       ; preds = %if.else134
  %rem.i279 = urem i32 %call.i278, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 998, i32 %rem.i279)
  %cmp.i280 = icmp ugt i32 %rem.i279, 998
  br i1 %cmp.i280, label %if.end143, label %if.then139.cleanup_crit_edge

if.then139.cleanup_crit_edge:                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end143:                                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.770, i32 noundef %lnum) #14
  br label %if.end157

if.else144:                                       ; preds = %if.else134
  %rem.i283 = urem i32 %call.i278, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9998, i32 %rem.i283)
  %cmp.i284 = icmp ugt i32 %rem.i283, 9998
  br i1 %cmp.i284, label %if.end148, label %if.else144.cleanup_crit_edge

if.else144.cleanup_crit_edge:                     ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end148:                                        ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.771, i32 noundef %lnum) #14
  br label %if.end157

if.end157:                                        ; preds = %if.end148, %if.end143, %if.end133, %if.end118, %if.end107, %if.end100, %if.end85, %if.end70, %if.end55, %if.end47
  %pc_happened = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %pc_happened to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %pc_happened, align 8
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.772) #14
  tail call void @dump_stack() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.else144.cleanup_crit_edge, %if.then139.cleanup_crit_edge, %if.then129.cleanup_crit_edge, %if.then114.cleanup_crit_edge, %if.then103.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %land.lhs.true92.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %land.lhs.true77.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %land.lhs.true62.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end157 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true30.cleanup_crit_edge ], [ 0, %land.lhs.true39.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.then51.cleanup_crit_edge ], [ 0, %land.lhs.true62.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ], [ 0, %land.lhs.true77.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ], [ 0, %land.lhs.true92.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ], [ 0, %if.then103.cleanup_crit_edge ], [ 0, %if.then114.cleanup_crit_edge ], [ 0, %if.then129.cleanup_crit_edge ], [ 0, %if.then139.cleanup_crit_edge ], [ 0, %if.else144.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_change(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %pc_happened.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pc_happened.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pc_happened.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %4 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi, align 4
  %call5 = tail call i32 @ubi_leb_change(ptr noundef %5, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 0, i32 -30
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_unmap(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %pc_happened.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pc_happened.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pc_happened.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %4 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi, align 4
  %call5 = tail call i32 @ubi_leb_unmap(ptr noundef %5, i32 noundef %lnum) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 0, i32 -30
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_map(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg.i, align 4
  %pc_happened.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pc_happened.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pc_happened.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %4 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubi, align 4
  %call5 = tail call i32 @ubi_leb_map(ptr noundef %5, i32 noundef %lnum) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call fastcc i32 @power_cut_emulated(ptr noundef %c, i32 noundef %lnum, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 0, i32 -30
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_init_fs(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  %dfs_dir_name = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 20
  %vi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102
  %2 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 1
  %4 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vol_id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dfs_dir_name, i32 noundef 10, ptr noundef nonnull @.str.667, i32 noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp sgt i32 %call, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = load ptr, ptr @dfs_rootdir, align 4
  %call4 = tail call ptr @debugfs_create_dir(ptr noundef %dfs_dir_name, ptr noundef %6) #14
  %dfs_dir = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %dfs_dir, align 8
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.668, i16 noundef zeroext 128, ptr noundef %call4, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_dump_lprops = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %dfs_dump_lprops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %dfs_dump_lprops, align 4
  %9 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfs_dir, align 8
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.669, i16 noundef zeroext 128, ptr noundef %10, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_dump_budg = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %dfs_dump_budg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %dfs_dump_budg, align 8
  %12 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dfs_dir, align 8
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.670, i16 noundef zeroext 128, ptr noundef %13, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_dump_tnc = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %dfs_dump_tnc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %dfs_dump_tnc, align 4
  %15 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dfs_dir, align 8
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.671, i16 noundef zeroext 384, ptr noundef %16, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_chk_gen = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 25
  %17 = ptrtoint ptr %dfs_chk_gen to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call12, ptr %dfs_chk_gen, align 8
  %18 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dfs_dir, align 8
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.672, i16 noundef zeroext 384, ptr noundef %19, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_chk_index = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %dfs_chk_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14, ptr %dfs_chk_index, align 4
  %21 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dfs_dir, align 8
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.673, i16 noundef zeroext 384, ptr noundef %22, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_chk_orph = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 27
  %23 = ptrtoint ptr %dfs_chk_orph to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call16, ptr %dfs_chk_orph, align 8
  %24 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfs_dir, align 8
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.674, i16 noundef zeroext 384, ptr noundef %25, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_chk_lprops = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 28
  %26 = ptrtoint ptr %dfs_chk_lprops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call18, ptr %dfs_chk_lprops, align 4
  %27 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dfs_dir, align 8
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.675, i16 noundef zeroext 384, ptr noundef %28, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_chk_fs = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 29
  %29 = ptrtoint ptr %dfs_chk_fs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call20, ptr %dfs_chk_fs, align 8
  %30 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dfs_dir, align 8
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.676, i16 noundef zeroext 384, ptr noundef %31, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_tst_rcvry = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 30
  %32 = ptrtoint ptr %dfs_tst_rcvry to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call22, ptr %dfs_tst_rcvry, align 4
  %33 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dfs_dir, align 8
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.677, i16 noundef zeroext 384, ptr noundef %34, ptr noundef %c, ptr noundef nonnull @dfs_fops) #14
  %dfs_ro_error = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 31
  %35 = ptrtoint ptr %dfs_ro_error to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call24, ptr %dfs_ro_error, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_exit_fs(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  %dfs_dir = getelementptr inbounds %struct.ubifs_debug_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.678, ptr noundef null) #14
  store ptr %call, ptr @dfs_rootdir, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.671, i16 noundef zeroext 384, ptr noundef %call, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #14
  store ptr %call1, ptr @dfs_chk_gen, align 4
  %0 = load ptr, ptr @dfs_rootdir, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.672, i16 noundef zeroext 384, ptr noundef %0, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #14
  store ptr %call2, ptr @dfs_chk_index, align 4
  %1 = load ptr, ptr @dfs_rootdir, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.673, i16 noundef zeroext 384, ptr noundef %1, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #14
  store ptr %call3, ptr @dfs_chk_orph, align 4
  %2 = load ptr, ptr @dfs_rootdir, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.674, i16 noundef zeroext 384, ptr noundef %2, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #14
  store ptr %call4, ptr @dfs_chk_lprops, align 4
  %3 = load ptr, ptr @dfs_rootdir, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.675, i16 noundef zeroext 384, ptr noundef %3, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #14
  store ptr %call5, ptr @dfs_chk_fs, align 4
  %4 = load ptr, ptr @dfs_rootdir, align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.676, i16 noundef zeroext 384, ptr noundef %4, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #14
  store ptr %call6, ptr @dfs_tst_rcvry, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dfs_rootdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_debugging_init(ptr nocapture noundef writeonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 360) #19
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %1 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %dbg, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_debugging_exit(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_search_zbranch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_read_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_validate_entry(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_inode(ptr noundef %c, ptr noundef %fsckd, ptr nocapture noundef readonly %ino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #14
  %3 = ptrtoint ptr %fsckd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fsckd, align 4
  %tobool.not104 = icmp eq ptr %4, null
  br i1 %tobool.not104, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry.while.body_crit_edge
  %5 = phi ptr [ %9, %if.end6.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %inum1 = getelementptr inbounds %struct.fsck_inode, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %inum1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inum1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %7)
  %cmp = icmp ult i32 %2, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %if.end6

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %7)
  %cmp3 = icmp ugt i32 %2, %7
  br i1 %cmp3, label %if.then4, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ]
  %8 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le = ptrtoint ptr %5 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %fsckd, %entry.while.end_crit_edge ]
  %highest_inum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 2
  %10 = ptrtoint ptr %highest_inum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %highest_inum, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %11)
  %cmp7 = icmp ugt i32 %2, %11
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.744, i32 noundef %11) #14
  br label %cleanup

if.end11:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3392, i32 noundef 96) #19
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %c, align 8
  %call17 = tail call ptr @ilookup(ptr noundef %14, i32 noundef %2) #14
  %inum18 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %inum18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %2, ptr %inum18, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.then20, label %if.else25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 10
  %16 = ptrtoint ptr %nlink to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %nlink, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %nlink21 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %nlink21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %nlink21, align 4
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %size, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %size22 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %size22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %size22, align 8
  %xattr_cnt = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 16
  %24 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %xattr_cnt, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %xattr_cnt23 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %xattr_cnt23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %xattr_cnt23, align 8
  %xattr_size = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 17
  %28 = ptrtoint ptr %xattr_size to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %xattr_size, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %xattr_sz = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %xattr_sz to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %xattr_sz, align 8
  %xattr_names = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 19
  %32 = ptrtoint ptr %xattr_names to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %xattr_names, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %xattr_nms = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 12
  %35 = ptrtoint ptr %xattr_nms to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %xattr_nms, align 8
  %mode = getelementptr inbounds %struct.ubifs_ino_node, ptr %ino, i32 0, i32 13
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %mode, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %conv = trunc i32 %38 to i16
  %mode24 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %mode24 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %mode24, align 8
  br label %if.end36

if.else25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %40 = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 12
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %nlink27 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %nlink27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %nlink27, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %call17, i32 0, i32 14
  %44 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_size, align 8
  %size28 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %size28 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %size28, align 8
  %xattr_cnt29 = getelementptr inbounds %struct.ubifs_inode, ptr %call17, i32 0, i32 4
  %47 = ptrtoint ptr %xattr_cnt29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %xattr_cnt29, align 4
  %xattr_cnt30 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %xattr_cnt30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %xattr_cnt30, align 8
  %xattr_size31 = getelementptr inbounds %struct.ubifs_inode, ptr %call17, i32 0, i32 3
  %50 = ptrtoint ptr %xattr_size31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xattr_size31, align 8
  %xattr_sz32 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %xattr_sz32 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %xattr_sz32, align 8
  %xattr_names33 = getelementptr inbounds %struct.ubifs_inode, ptr %call17, i32 0, i32 5
  %53 = ptrtoint ptr %xattr_names33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xattr_names33, align 8
  %xattr_nms34 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 12
  %55 = ptrtoint ptr %xattr_nms34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %xattr_nms34, align 8
  %56 = ptrtoint ptr %call17 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %call17, align 8
  %mode35 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %mode35 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %mode35, align 8
  tail call void @iput(ptr noundef nonnull %call17) #14
  br label %if.end36

if.end36:                                         ; preds = %if.else25, %if.then20
  %mode37 = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %mode37 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mode37, align 8
  %61 = and i16 %60, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %61)
  %cmp39 = icmp eq i16 %61, 16384
  br i1 %cmp39, label %if.then41, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %calc_sz = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 9
  %62 = ptrtoint ptr %calc_sz to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 160, ptr %calc_sz, align 8
  %calc_cnt = getelementptr inbounds %struct.fsck_inode, ptr %call7.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %calc_cnt to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %calc_cnt, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end36.if.end42_crit_edge
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %parent.0.lcssa, ptr %call7.i.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %rb_left.i, align 8
  %67 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %fsckd) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end11.cleanup_crit_edge, %if.then8, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then8 ], [ %call7.i.i, %if.end42 ], [ inttoptr (i32 -12 to ptr), %if.end11.cleanup_crit_edge ], [ %5, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @read_add_inode(ptr noundef %c, ptr noundef %fsckd, i32 noundef %inum) unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %key = alloca %union.ubifs_key, align 8
  %znode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #14
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !1225
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #14
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !1225
  %2 = ptrtoint ptr %fsckd to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.014.i = load ptr, ptr %fsckd, align 4
  %tobool.not15.i = icmp eq ptr %p.014.i, null
  br i1 %tobool.not15.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %p.016.i = phi ptr [ %p.0.i, %if.end6.i.while.body.i_crit_edge ], [ %p.014.i, %entry.while.body.i_crit_edge ]
  %inum1.i = getelementptr inbounds %struct.fsck_inode, ptr %p.016.i, i32 0, i32 1
  %3 = ptrtoint ptr %inum1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %inum)
  %cmp.i70 = icmp ugt i32 %4, %inum
  br i1 %cmp.i70, label %if.then.i71, label %if.else.i

if.then.i71:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %inum)
  %cmp3.i = icmp ult i32 %4, %inum
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i71
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then.i71 ], [ %rb_right.i, %if.then4.i ]
  %5 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.if.end_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %if.end6.i.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inum, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx1.i, align 4
  %call1 = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef nonnull %key, ptr noundef nonnull %znode, ptr noundef nonnull %n) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.745, i32 noundef %inum) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.746, i32 noundef %call1, i32 noundef %inum) #14
  %8 = inttoptr i32 %call1 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %9 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %znode, align 4
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %10, i32 0, i32 13, i32 %12
  %len = getelementptr %struct.ubifs_znode, ptr %10, i32 0, i32 13, i32 %12, i32 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %14)
  %cmp9 = icmp ult i32 %14, 160
  br i1 %cmp9, label %if.then10, label %if.end8.i

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.747, i32 noundef %inum, i32 noundef %14) #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.end8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3136) #18
  %tobool16.not = icmp eq ptr %call9.i, null
  br i1 %tobool16.not, label %if.end8.i.cleanup_crit_edge, label %if.end19

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end8.i
  %call20 = call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef nonnull %call9.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %lnum = getelementptr %struct.ubifs_znode, ptr %10, i32 0, i32 13, i32 %12, i32 2
  %15 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lnum, align 4
  %offs = getelementptr %struct.ubifs_znode, ptr %10, i32 0, i32 13, i32 %12, i32 3
  %17 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offs, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.748, i32 noundef %16, i32 noundef %18, i32 noundef %call20) #14
  call void @kfree(ptr noundef nonnull %call9.i) #14
  %19 = inttoptr i32 %call20 to ptr
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call25 = call fastcc ptr @add_inode(ptr noundef %c, ptr noundef %fsckd, ptr noundef nonnull %call9.i)
  call void @kfree(ptr noundef nonnull %call9.i) #14
  %cmp.i72 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %call25 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.749, i32 noundef %20, i32 noundef %inum) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %if.then22, %if.end8.i.cleanup_crit_edge, %if.then10, %if.then5, %if.then3, %if.else.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then5 ], [ inttoptr (i32 -22 to ptr), %if.then10 ], [ %19, %if.then22 ], [ %call25, %if.then27 ], [ inttoptr (i32 -2 to ptr), %if.then3 ], [ %call25, %if.end24.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ], [ %p.016.i, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lookup_level0(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_search_bud(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_file_read(ptr nocapture noundef readonly %file, ptr noundef %u, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 194
  %4 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg, align 4
  %dfs_chk_gen = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %dfs_chk_gen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dfs_chk_gen, align 8
  %cmp = icmp eq ptr %1, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %chk_gen = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %chk_gen to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %chk_gen, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  br label %if.end47

if.else:                                          ; preds = %entry
  %dfs_chk_index = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %dfs_chk_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfs_chk_index, align 4
  %cmp1 = icmp eq ptr %1, %10
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %chk_index = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %11 = ptrtoint ptr %chk_index to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load3 = load i8, ptr %chk_index, align 4
  %bf.lshr4 = lshr i8 %bf.load3, 6
  %bf.clear = and i8 %bf.lshr4, 1
  br label %if.end47

if.else6:                                         ; preds = %if.else
  %dfs_chk_orph = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 27
  %12 = ptrtoint ptr %dfs_chk_orph to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dfs_chk_orph, align 8
  %cmp7 = icmp eq ptr %1, %13
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #16
  %chk_orph = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %14 = ptrtoint ptr %chk_orph to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load9 = load i8, ptr %chk_orph, align 4
  %bf.lshr10 = lshr i8 %bf.load9, 5
  %bf.clear11 = and i8 %bf.lshr10, 1
  br label %if.end47

if.else13:                                        ; preds = %if.else6
  %dfs_chk_lprops = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 28
  %15 = ptrtoint ptr %dfs_chk_lprops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dfs_chk_lprops, align 4
  %cmp14 = icmp eq ptr %1, %16
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  %chk_lprops = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %17 = ptrtoint ptr %chk_lprops to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load16 = load i8, ptr %chk_lprops, align 4
  %bf.lshr17 = lshr i8 %bf.load16, 4
  %bf.clear18 = and i8 %bf.lshr17, 1
  br label %if.end47

if.else20:                                        ; preds = %if.else13
  %dfs_chk_fs = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 29
  %18 = ptrtoint ptr %dfs_chk_fs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dfs_chk_fs, align 8
  %cmp21 = icmp eq ptr %1, %19
  br i1 %cmp21, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #16
  %chk_fs = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %20 = ptrtoint ptr %chk_fs to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load23 = load i8, ptr %chk_fs, align 4
  %bf.lshr24 = lshr i8 %bf.load23, 3
  %bf.clear25 = and i8 %bf.lshr24, 1
  br label %if.end47

if.else27:                                        ; preds = %if.else20
  %dfs_tst_rcvry = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 30
  %21 = ptrtoint ptr %dfs_tst_rcvry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dfs_tst_rcvry, align 4
  %cmp28 = icmp eq ptr %1, %22
  br i1 %cmp28, label %if.then29, label %if.else34

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #16
  %tst_rcvry = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %23 = ptrtoint ptr %tst_rcvry to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load30 = load i8, ptr %tst_rcvry, align 4
  %bf.lshr31 = lshr i8 %bf.load30, 2
  %bf.clear32 = and i8 %bf.lshr31, 1
  br label %if.end47

if.else34:                                        ; preds = %if.else27
  %dfs_ro_error = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 31
  %24 = ptrtoint ptr %dfs_ro_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfs_ro_error, align 8
  %cmp35 = icmp eq ptr %1, %25
  br i1 %cmp35, label %if.then36, label %if.else34.cleanup_crit_edge

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  %ro_error = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 81
  %26 = ptrtoint ptr %ro_error to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load37 = load i8, ptr %ro_error, align 8
  %bf.lshr38 = lshr i8 %bf.load37, 5
  %bf.clear39 = and i8 %bf.lshr38, 1
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %if.then29, %if.then22, %if.then15, %if.then8, %if.then2, %if.then
  %val.0.in = phi i8 [ %bf.lshr, %if.then ], [ %bf.clear, %if.then2 ], [ %bf.clear11, %if.then8 ], [ %bf.clear18, %if.then15 ], [ %bf.clear25, %if.then22 ], [ %bf.clear32, %if.then29 ], [ %bf.clear39, %if.then36 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #14
  %27 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.in)
  %tobool.not.i = icmp eq i8 %val.0.in, 0
  %..i = select i1 %tobool.not.i, i8 48, i8 49
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %..i, ptr %buf.i, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %28, align 1
  %call.i = call i32 @simple_read_from_buffer(ptr noundef %u, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else34.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end47 ], [ -22, %if.else34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_file_write(ptr nocapture noundef readonly %file, ptr noundef %u, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dbg = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 194
  %2 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %dfs_dump_lprops = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %dfs_dump_lprops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dfs_dump_lprops, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ubifs_dump_lprops(ptr noundef %1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %dfs_dump_budg = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %dfs_dump_budg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dfs_dump_budg, align 8
  %cmp5 = icmp eq ptr %5, %9
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %1, ptr noundef %bi)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dfs_dump_tnc = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 24
  %10 = ptrtoint ptr %dfs_dump_tnc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dfs_dump_tnc, align 4
  %cmp10 = icmp eq ptr %5, %11
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #14
  tail call void @ubifs_dump_tnc(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %tnc_mutex) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call = tail call fastcc i32 @interpret_user_input(ptr noundef %u, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp slt i32 %call, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %dfs_chk_gen = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 25
  %12 = ptrtoint ptr %dfs_chk_gen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dfs_chk_gen, align 8
  %cmp17 = icmp eq ptr %5, %13
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %chk_gen = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 19
  %14 = trunc i32 %call to i8
  %15 = ptrtoint ptr %chk_gen to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %chk_gen, align 4
  %bf.shl = shl i8 %14, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %chk_gen, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %dfs_chk_index = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 26
  %16 = ptrtoint ptr %dfs_chk_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dfs_chk_index, align 4
  %cmp19 = icmp eq ptr %5, %17
  br i1 %cmp19, label %if.then20, label %if.else27

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %chk_index = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 19
  %18 = trunc i32 %call to i8
  %19 = ptrtoint ptr %chk_index to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load21 = load i8, ptr %chk_index, align 4
  %bf.value22 = shl i8 %18, 6
  %bf.shl23 = and i8 %bf.value22, 64
  %bf.clear24 = and i8 %bf.load21, -65
  %bf.set25 = or i8 %bf.clear24, %bf.shl23
  store i8 %bf.set25, ptr %chk_index, align 4
  br label %cleanup

if.else27:                                        ; preds = %if.else
  %dfs_chk_orph = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 27
  %20 = ptrtoint ptr %dfs_chk_orph to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dfs_chk_orph, align 8
  %cmp28 = icmp eq ptr %5, %21
  br i1 %cmp28, label %if.then29, label %if.else36

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #16
  %chk_orph = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 19
  %22 = trunc i32 %call to i8
  %23 = ptrtoint ptr %chk_orph to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load30 = load i8, ptr %chk_orph, align 4
  %bf.value31 = shl i8 %22, 5
  %bf.shl32 = and i8 %bf.value31, 32
  %bf.clear33 = and i8 %bf.load30, -33
  %bf.set34 = or i8 %bf.clear33, %bf.shl32
  store i8 %bf.set34, ptr %chk_orph, align 4
  br label %cleanup

if.else36:                                        ; preds = %if.else27
  %dfs_chk_lprops = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 28
  %24 = ptrtoint ptr %dfs_chk_lprops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfs_chk_lprops, align 4
  %cmp37 = icmp eq ptr %5, %25
  br i1 %cmp37, label %if.then38, label %if.else45

if.then38:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #16
  %chk_lprops = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 19
  %26 = trunc i32 %call to i8
  %27 = ptrtoint ptr %chk_lprops to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load39 = load i8, ptr %chk_lprops, align 4
  %bf.value40 = shl i8 %26, 4
  %bf.shl41 = and i8 %bf.value40, 16
  %bf.clear42 = and i8 %bf.load39, -17
  %bf.set43 = or i8 %bf.clear42, %bf.shl41
  store i8 %bf.set43, ptr %chk_lprops, align 4
  br label %cleanup

if.else45:                                        ; preds = %if.else36
  %dfs_chk_fs = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 29
  %28 = ptrtoint ptr %dfs_chk_fs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dfs_chk_fs, align 8
  %cmp46 = icmp eq ptr %5, %29
  br i1 %cmp46, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #16
  %chk_fs = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 19
  %30 = trunc i32 %call to i8
  %31 = ptrtoint ptr %chk_fs to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load48 = load i8, ptr %chk_fs, align 4
  %bf.value49 = shl i8 %30, 3
  %bf.shl50 = and i8 %bf.value49, 8
  %bf.clear51 = and i8 %bf.load48, -9
  %bf.set52 = or i8 %bf.clear51, %bf.shl50
  store i8 %bf.set52, ptr %chk_fs, align 4
  br label %cleanup

if.else54:                                        ; preds = %if.else45
  %dfs_tst_rcvry = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 30
  %32 = ptrtoint ptr %dfs_tst_rcvry to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dfs_tst_rcvry, align 4
  %cmp55 = icmp eq ptr %5, %33
  br i1 %cmp55, label %if.then56, label %if.else63

if.then56:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #16
  %tst_rcvry = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 19
  %34 = trunc i32 %call to i8
  %35 = ptrtoint ptr %tst_rcvry to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load57 = load i8, ptr %tst_rcvry, align 4
  %bf.value58 = shl i8 %34, 2
  %bf.shl59 = and i8 %bf.value58, 4
  %bf.clear60 = and i8 %bf.load57, -5
  %bf.set61 = or i8 %bf.clear60, %bf.shl59
  store i8 %bf.set61, ptr %tst_rcvry, align 4
  br label %cleanup

if.else63:                                        ; preds = %if.else54
  %dfs_ro_error = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 31
  %36 = ptrtoint ptr %dfs_ro_error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dfs_ro_error, align 8
  %cmp64 = icmp eq ptr %5, %37
  br i1 %cmp64, label %if.then65, label %if.else63.cleanup_crit_edge

if.else63.cleanup_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then65:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %ro_error = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 81
  %38 = ptrtoint ptr %ro_error to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load67 = load i8, ptr %ro_error, align 8
  %bf.shl69 = select i1 %tobool.not, i8 0, i8 32
  %bf.clear70 = and i8 %bf.load67, -33
  %bf.set71 = or i8 %bf.clear70, %bf.shl69
  store i8 %bf.set71, ptr %ro_error, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.else63.cleanup_crit_edge, %if.then56, %if.then47, %if.then38, %if.then29, %if.then20, %if.then18, %if.end13.cleanup_crit_edge, %if.then11, %if.then6, %if.then
  %retval.0 = phi i32 [ %count, %if.then ], [ %count, %if.then6 ], [ %count, %if.then11 ], [ %call, %if.end13.cleanup_crit_edge ], [ -22, %if.else63.cleanup_crit_edge ], [ %count, %if.then20 ], [ %count, %if.then38 ], [ %count, %if.then56 ], [ %count, %if.then65 ], [ %count, %if.then47 ], [ %count, %if.then29 ], [ %count, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_file_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data, align 4
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @interpret_user_input(ptr noundef %u, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #14
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %buf, align 8
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %0, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.778, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 %0, i32 -1226833920) #21, !srcloc !1239
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !1235

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %0) #14
  %3 = call i32 @llvm.read_register.i32(metadata !1213) #14
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !1240
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !1241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !1242
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %u, i32 noundef %0) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #14, !srcloc !1241
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !1242
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %0, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %0, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !1235

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %0, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %8)
  %switch.selectcmp = icmp eq i8 %8, 48
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %8)
  %switch.selectcmp14 = icmp eq i8 %8, 49
  %switch.select15 = select i1 %switch.selectcmp14, i32 1, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %switch.select15, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_global_file_read(ptr nocapture noundef readonly %file, ptr noundef %u, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %2 = load ptr, ptr @dfs_chk_gen, align 4
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bf.load = load i8, ptr @ubifs_dbg, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  br label %if.end39

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @dfs_chk_index, align 4
  %cmp1 = icmp eq ptr %1, %3
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %bf.load3 = load i8, ptr @ubifs_dbg, align 4
  %bf.lshr4 = lshr i8 %bf.load3, 6
  %bf.clear = and i8 %bf.lshr4, 1
  br label %if.end39

if.else6:                                         ; preds = %if.else
  %4 = load ptr, ptr @dfs_chk_orph, align 4
  %cmp7 = icmp eq ptr %1, %4
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #16
  %bf.load9 = load i8, ptr @ubifs_dbg, align 4
  %bf.lshr10 = lshr i8 %bf.load9, 5
  %bf.clear11 = and i8 %bf.lshr10, 1
  br label %if.end39

if.else13:                                        ; preds = %if.else6
  %5 = load ptr, ptr @dfs_chk_lprops, align 4
  %cmp14 = icmp eq ptr %1, %5
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  %bf.load16 = load i8, ptr @ubifs_dbg, align 4
  %bf.lshr17 = lshr i8 %bf.load16, 4
  %bf.clear18 = and i8 %bf.lshr17, 1
  br label %if.end39

if.else20:                                        ; preds = %if.else13
  %6 = load ptr, ptr @dfs_chk_fs, align 4
  %cmp21 = icmp eq ptr %1, %6
  br i1 %cmp21, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #16
  %bf.load23 = load i8, ptr @ubifs_dbg, align 4
  %bf.lshr24 = lshr i8 %bf.load23, 3
  %bf.clear25 = and i8 %bf.lshr24, 1
  br label %if.end39

if.else27:                                        ; preds = %if.else20
  %7 = load ptr, ptr @dfs_tst_rcvry, align 4
  %cmp28 = icmp eq ptr %1, %7
  br i1 %cmp28, label %if.then29, label %if.else27.cleanup_crit_edge

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #16
  %bf.load30 = load i8, ptr @ubifs_dbg, align 4
  %bf.lshr31 = lshr i8 %bf.load30, 2
  %bf.clear32 = and i8 %bf.lshr31, 1
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.then22, %if.then15, %if.then8, %if.then2, %if.then
  %val.0.in = phi i8 [ %bf.lshr, %if.then ], [ %bf.clear, %if.then2 ], [ %bf.clear11, %if.then8 ], [ %bf.clear18, %if.then15 ], [ %bf.clear25, %if.then22 ], [ %bf.clear32, %if.then29 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #14
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.in)
  %tobool.not.i = icmp eq i8 %val.0.in, 0
  %..i = select i1 %tobool.not.i, i8 48, i8 49
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %..i, ptr %buf.i, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %9, align 1
  %call.i = call i32 @simple_read_from_buffer(ptr noundef %u, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.else27.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end39 ], [ -22, %if.else27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfs_global_file_write(ptr nocapture noundef readonly %file, ptr noundef %u, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %call = tail call fastcc i32 @interpret_user_input(ptr noundef %u, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @dfs_chk_gen, align 4
  %cmp1 = icmp eq ptr %1, %2
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = trunc i32 %call to i8
  %bf.load = load i8, ptr @ubifs_dbg, align 4
  %bf.shl = shl i8 %3, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr @dfs_chk_index, align 4
  %cmp3 = icmp eq ptr %1, %4
  br i1 %cmp3, label %if.then4, label %if.else11

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %5 = trunc i32 %call to i8
  %bf.load5 = load i8, ptr @ubifs_dbg, align 4
  %bf.value6 = shl i8 %5, 6
  %bf.shl7 = and i8 %bf.value6, 64
  %bf.clear8 = and i8 %bf.load5, -65
  %bf.set9 = or i8 %bf.clear8, %bf.shl7
  br label %cleanup.sink.split

if.else11:                                        ; preds = %if.else
  %6 = load ptr, ptr @dfs_chk_orph, align 4
  %cmp12 = icmp eq ptr %1, %6
  br i1 %cmp12, label %if.then13, label %if.else20

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #16
  %7 = trunc i32 %call to i8
  %bf.load14 = load i8, ptr @ubifs_dbg, align 4
  %bf.value15 = shl i8 %7, 5
  %bf.shl16 = and i8 %bf.value15, 32
  %bf.clear17 = and i8 %bf.load14, -33
  %bf.set18 = or i8 %bf.clear17, %bf.shl16
  br label %cleanup.sink.split

if.else20:                                        ; preds = %if.else11
  %8 = load ptr, ptr @dfs_chk_lprops, align 4
  %cmp21 = icmp eq ptr %1, %8
  br i1 %cmp21, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #16
  %9 = trunc i32 %call to i8
  %bf.load23 = load i8, ptr @ubifs_dbg, align 4
  %bf.value24 = shl i8 %9, 4
  %bf.shl25 = and i8 %bf.value24, 16
  %bf.clear26 = and i8 %bf.load23, -17
  %bf.set27 = or i8 %bf.clear26, %bf.shl25
  br label %cleanup.sink.split

if.else29:                                        ; preds = %if.else20
  %10 = load ptr, ptr @dfs_chk_fs, align 4
  %cmp30 = icmp eq ptr %1, %10
  br i1 %cmp30, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  %11 = trunc i32 %call to i8
  %bf.load32 = load i8, ptr @ubifs_dbg, align 4
  %bf.value33 = shl i8 %11, 3
  %bf.shl34 = and i8 %bf.value33, 8
  %bf.clear35 = and i8 %bf.load32, -9
  %bf.set36 = or i8 %bf.clear35, %bf.shl34
  br label %cleanup.sink.split

if.else38:                                        ; preds = %if.else29
  %12 = load ptr, ptr @dfs_tst_rcvry, align 4
  %cmp39 = icmp eq ptr %1, %12
  br i1 %cmp39, label %if.then40, label %if.else38.cleanup_crit_edge

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then40:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #16
  %13 = trunc i32 %call to i8
  %bf.load41 = load i8, ptr @ubifs_dbg, align 4
  %bf.value42 = shl i8 %13, 2
  %bf.shl43 = and i8 %bf.value42, 4
  %bf.clear44 = and i8 %bf.load41, -5
  %bf.set45 = or i8 %bf.clear44, %bf.shl43
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then40, %if.then31, %if.then22, %if.then13, %if.then4, %if.then2
  %bf.set.sink = phi i8 [ %bf.set, %if.then2 ], [ %bf.set18, %if.then13 ], [ %bf.set36, %if.then31 ], [ %bf.set45, %if.then40 ], [ %bf.set27, %if.then22 ], [ %bf.set9, %if.then4 ]
  store i8 %bf.set.sink, ptr @ubifs_dbg, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.else38.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 615)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 615)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !418, !419, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !439, !440, !442, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !458, !459, !460, !462, !463, !464, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !483, !485, !486, !487, !489, !490, !491, !493, !494, !495, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !514, !516, !518, !519, !520, !522, !523, !524, !526, !527, !528, !530, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !549, !550, !551, !553, !554, !555, !557, !558, !559, !561, !562, !564, !565, !566, !567, !569, !570, !571, !573, !574, !575, !577, !578, !579, !581, !582, !583, !585, !586, !587, !589, !590, !591, !592, !594, !595, !596, !598, !599, !600, !602, !603, !604, !605, !607, !608, !609, !611, !612, !613, !615, !616, !617, !619, !620, !621, !623, !624, !625, !627, !628, !629, !631, !632, !633, !635, !636, !637, !639, !640, !641, !643, !644, !645, !647, !648, !649, !651, !652, !653, !655, !656, !657, !659, !660, !661, !663, !664, !665, !667, !668, !669, !670, !672, !673, !674, !676, !677, !678, !680, !681, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !701, !702, !704, !705, !706, !708, !709, !710, !712, !713, !714, !716, !717, !718, !720, !721, !722, !723, !725, !727, !728, !729, !731, !732, !733, !734, !736, !737, !738, !740, !741, !742, !744, !745, !746, !748, !749, !750, !752, !753, !754, !756, !757, !758, !760, !761, !762, !764, !765, !766, !768, !769, !770, !772, !773, !774, !776, !777, !778, !780, !781, !782, !784, !785, !786, !788, !789, !790, !792, !793, !794, !796, !797, !798, !800, !801, !802, !804, !805, !806, !808, !809, !810, !812, !813, !814, !816, !817, !818, !820, !821, !822, !824, !825, !826, !828, !829, !830, !831, !833, !835, !837, !838, !839, !841, !842, !843, !845, !846, !847, !849, !850, !851, !852, !854, !855, !856, !858, !859, !860, !862, !863, !864, !866, !867, !868, !869, !871, !872, !873, !875, !876, !877, !879, !880, !881, !882, !884, !885, !886, !888, !889, !890, !892, !893, !894, !896, !897, !898, !899, !901, !902, !903, !905, !906, !907, !909, !910, !912, !913, !914, !916, !918, !920, !922, !924, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !964, !966, !968, !970, !972, !974, !976, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1049, !1051, !1052, !1053, !1054, !1056, !1057, !1058, !1060, !1061, !1062, !1064, !1065, !1066, !1068, !1069, !1070, !1072, !1073, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !1132, !1134, !1136, !1138, !1140, !1142, !1144, !1146, !1148, !1150, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1200, !1202, !1204, !1206, !1207, !1209, !1211}
!llvm.named.register.sp = !{!1213}
!llvm.module.flags = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!llvm.ident = !{!1222}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/debug.c", i32 99, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/debug.c", i32 105, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/debug.c", i32 110, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/debug.c", i32 120, i32 28}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ubifs/debug.c", i32 124, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/debug.c", i32 125, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/debug.c", i32 133, i32 10}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ubifs/debug.c", i32 135, i32 10}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/debug.c", i32 137, i32 10}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/debug.c", i32 139, i32 10}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/debug.c", i32 141, i32 10}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/debug.c", i32 143, i32 10}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ubifs/debug.c", i32 145, i32 10}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/debug.c", i32 147, i32 10}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ubifs/debug.c", i32 149, i32 10}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/debug.c", i32 151, i32 10}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ubifs/debug.c", i32 153, i32 10}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/debug.c", i32 155, i32 10}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ubifs/debug.c", i32 157, i32 10}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ubifs/debug.c", i32 159, i32 10}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/debug.c", i32 181, i32 10}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/debug.c", i32 183, i32 10}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/debug.c", i32 185, i32 10}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/debug.c", i32 187, i32 10}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/debug.c", i32 189, i32 10}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ubifs/debug.c", i32 191, i32 10}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ubifs/debug.c", i32 193, i32 10}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/debug.c", i32 201, i32 10}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ubifs/debug.c", i32 203, i32 10}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/debug.c", i32 205, i32 10}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/debug.c", i32 207, i32 10}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/debug.c", i32 232, i32 2}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ubifs_dump_inode._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ubifs_dump_inode._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ubifs/debug.c", i32 233, i32 2}
!70 = !{ptr @ubifs_dump_inode._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ubifs_dump_inode._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ubifs/debug.c", i32 234, i32 2}
!74 = !{ptr @ubifs_dump_inode._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ubifs_dump_inode._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/debug.c", i32 236, i32 2}
!78 = !{ptr @ubifs_dump_inode._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ubifs_dump_inode._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ubifs/debug.c", i32 237, i32 2}
!82 = !{ptr @ubifs_dump_inode._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ubifs_dump_inode._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/debug.c", i32 238, i32 2}
!86 = !{ptr @ubifs_dump_inode._entry.46, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ubifs_dump_inode._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ubifs/debug.c", i32 239, i32 2}
!90 = !{ptr @ubifs_dump_inode._entry.49, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ubifs_dump_inode._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ubifs/debug.c", i32 242, i32 2}
!94 = !{ptr @ubifs_dump_inode._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ubifs_dump_inode._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ubifs/debug.c", i32 245, i32 2}
!98 = !{ptr @ubifs_dump_inode._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ubifs_dump_inode._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ubifs/debug.c", i32 248, i32 2}
!102 = !{ptr @ubifs_dump_inode._entry.58, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ubifs_dump_inode._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ubifs/debug.c", i32 249, i32 2}
!106 = !{ptr @ubifs_dump_inode._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ubifs_dump_inode._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ubifs/debug.c", i32 250, i32 2}
!110 = !{ptr @ubifs_dump_inode._entry.64, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ubifs_dump_inode._entry_ptr.66, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.68, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ubifs/debug.c", i32 251, i32 2}
!114 = !{ptr @ubifs_dump_inode._entry.67, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ubifs_dump_inode._entry_ptr.69, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.71, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ubifs/debug.c", i32 252, i32 2}
!118 = !{ptr @ubifs_dump_inode._entry.70, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ubifs_dump_inode._entry_ptr.72, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.74, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ubifs/debug.c", i32 253, i32 2}
!122 = !{ptr @ubifs_dump_inode._entry.73, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ubifs_dump_inode._entry_ptr.75, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ubifs/debug.c", i32 254, i32 2}
!126 = !{ptr @ubifs_dump_inode._entry.76, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ubifs_dump_inode._entry_ptr.78, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.80, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ubifs/debug.c", i32 255, i32 2}
!130 = !{ptr @ubifs_dump_inode._entry.79, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ubifs_dump_inode._entry_ptr.81, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.83, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ubifs/debug.c", i32 257, i32 2}
!134 = !{ptr @ubifs_dump_inode._entry.82, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ubifs_dump_inode._entry_ptr.84, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.86, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ubifs/debug.c", i32 259, i32 2}
!138 = !{ptr @ubifs_dump_inode._entry.85, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ubifs_dump_inode._entry_ptr.87, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.89, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ubifs/debug.c", i32 260, i32 2}
!142 = !{ptr @ubifs_dump_inode._entry.88, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ubifs_dump_inode._entry_ptr.90, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.92, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ubifs/debug.c", i32 261, i32 2}
!146 = !{ptr @ubifs_dump_inode._entry.91, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ubifs_dump_inode._entry_ptr.93, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.95, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ubifs/debug.c", i32 262, i32 2}
!150 = !{ptr @ubifs_dump_inode._entry.94, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ubifs_dump_inode._entry_ptr.96, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.98, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ubifs/debug.c", i32 263, i32 2}
!154 = !{ptr @ubifs_dump_inode._entry.97, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ubifs_dump_inode._entry_ptr.99, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.101, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ubifs/debug.c", i32 268, i32 2}
!158 = !{ptr @ubifs_dump_inode._entry.100, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ubifs_dump_inode._entry_ptr.102, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.103, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ubifs/debug.c", i32 269, i32 2}
!162 = !{ptr @.str.105, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ubifs/debug.c", i32 276, i32 5}
!164 = !{ptr @ubifs_dump_inode._entry.104, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ubifs_dump_inode._entry_ptr.106, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.108, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ubifs/debug.c", i32 280, i32 3}
!168 = !{ptr @ubifs_dump_inode._entry.107, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ubifs_dump_inode._entry_ptr.109, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.110, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ubifs/debug.c", i32 303, i32 3}
!172 = !{ptr @.str.111, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ubifs_dump_node._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ubifs_dump_node._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.112, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ubifs/debug.c", i32 304, i32 18}
!177 = !{ptr @.str.113, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ubifs/debug.c", i32 304, i32 28}
!179 = !{ptr @.str.115, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ubifs/debug.c", i32 312, i32 3}
!181 = !{ptr @ubifs_dump_node._entry.114, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ubifs_dump_node._entry_ptr.116, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.118, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/ubifs/debug.c", i32 329, i32 3}
!185 = !{ptr @ubifs_dump_node._entry.117, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ubifs_dump_node._entry_ptr.119, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.121, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/ubifs/debug.c", i32 340, i32 3}
!189 = !{ptr @ubifs_dump_node._entry.120, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ubifs_dump_node._entry_ptr.122, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.124, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ubifs/debug.c", i32 347, i32 3}
!193 = !{ptr @ubifs_dump_node._entry.123, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ubifs_dump_node._entry_ptr.125, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.127, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ubifs/debug.c", i32 355, i32 3}
!197 = !{ptr @ubifs_dump_node._entry.126, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @ubifs_dump_node._entry_ptr.128, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.130, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ubifs/debug.c", i32 357, i32 3}
!201 = !{ptr @ubifs_dump_node._entry.129, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @ubifs_dump_node._entry_ptr.131, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.133, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ubifs/debug.c", i32 359, i32 3}
!205 = !{ptr @ubifs_dump_node._entry.132, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @ubifs_dump_node._entry_ptr.134, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.136, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ubifs/debug.c", i32 360, i32 3}
!209 = !{ptr @ubifs_dump_node._entry.135, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @ubifs_dump_node._entry_ptr.137, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.139, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ubifs/debug.c", i32 362, i32 3}
!213 = !{ptr @ubifs_dump_node._entry.138, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @ubifs_dump_node._entry_ptr.140, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.142, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ubifs/debug.c", i32 364, i32 3}
!217 = !{ptr @ubifs_dump_node._entry.141, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @ubifs_dump_node._entry_ptr.143, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.145, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ubifs/debug.c", i32 365, i32 3}
!221 = !{ptr @ubifs_dump_node._entry.144, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @ubifs_dump_node._entry_ptr.146, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.148, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ubifs/debug.c", i32 366, i32 3}
!225 = !{ptr @ubifs_dump_node._entry.147, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ubifs_dump_node._entry_ptr.149, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.151, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ubifs/debug.c", i32 367, i32 3}
!229 = !{ptr @ubifs_dump_node._entry.150, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @ubifs_dump_node._entry_ptr.152, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.154, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ubifs/debug.c", i32 368, i32 3}
!233 = !{ptr @ubifs_dump_node._entry.153, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @ubifs_dump_node._entry_ptr.155, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.157, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ubifs/debug.c", i32 370, i32 3}
!237 = !{ptr @ubifs_dump_node._entry.156, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @ubifs_dump_node._entry_ptr.158, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.160, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ubifs/debug.c", i32 371, i32 3}
!241 = !{ptr @ubifs_dump_node._entry.159, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @ubifs_dump_node._entry_ptr.161, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.163, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ubifs/debug.c", i32 372, i32 3}
!245 = !{ptr @ubifs_dump_node._entry.162, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @ubifs_dump_node._entry_ptr.164, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.166, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ubifs/debug.c", i32 373, i32 3}
!249 = !{ptr @ubifs_dump_node._entry.165, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @ubifs_dump_node._entry_ptr.167, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.169, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ubifs/debug.c", i32 374, i32 3}
!253 = !{ptr @ubifs_dump_node._entry.168, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @ubifs_dump_node._entry_ptr.170, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.172, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ubifs/debug.c", i32 375, i32 3}
!257 = !{ptr @ubifs_dump_node._entry.171, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @ubifs_dump_node._entry_ptr.173, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.175, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ubifs/debug.c", i32 376, i32 3}
!261 = !{ptr @ubifs_dump_node._entry.174, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ubifs_dump_node._entry_ptr.176, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.178, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/ubifs/debug.c", i32 378, i32 3}
!265 = !{ptr @ubifs_dump_node._entry.177, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ubifs_dump_node._entry_ptr.179, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.181, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/ubifs/debug.c", i32 380, i32 3}
!269 = !{ptr @ubifs_dump_node._entry.180, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @ubifs_dump_node._entry_ptr.182, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.184, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/ubifs/debug.c", i32 381, i32 3}
!273 = !{ptr @ubifs_dump_node._entry.183, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @ubifs_dump_node._entry_ptr.185, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.187, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/ubifs/debug.c", i32 382, i32 3}
!277 = !{ptr @ubifs_dump_node._entry.186, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @ubifs_dump_node._entry_ptr.188, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.190, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/ubifs/debug.c", i32 383, i32 3}
!281 = !{ptr @ubifs_dump_node._entry.189, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @ubifs_dump_node._entry_ptr.191, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.193, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/ubifs/debug.c", i32 384, i32 3}
!285 = !{ptr @ubifs_dump_node._entry.192, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @ubifs_dump_node._entry_ptr.194, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.196, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/ubifs/debug.c", i32 391, i32 3}
!289 = !{ptr @ubifs_dump_node._entry.195, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @ubifs_dump_node._entry_ptr.197, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.199, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ubifs/debug.c", i32 393, i32 3}
!293 = !{ptr @ubifs_dump_node._entry.198, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @ubifs_dump_node._entry_ptr.200, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @ubifs_dump_node._entry.201, !296, !"_entry", i1 false, i1 false}
!296 = !{!"../fs/ubifs/debug.c", i32 395, i32 3}
!297 = !{ptr @ubifs_dump_node._entry_ptr.202, !296, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.204, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/ubifs/debug.c", i32 396, i32 3}
!300 = !{ptr @ubifs_dump_node._entry.203, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @ubifs_dump_node._entry_ptr.205, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.207, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/ubifs/debug.c", i32 397, i32 3}
!304 = !{ptr @ubifs_dump_node._entry.206, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @ubifs_dump_node._entry_ptr.208, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.210, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ubifs/debug.c", i32 398, i32 3}
!308 = !{ptr @ubifs_dump_node._entry.209, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @ubifs_dump_node._entry_ptr.211, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.213, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/ubifs/debug.c", i32 399, i32 3}
!312 = !{ptr @ubifs_dump_node._entry.212, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @ubifs_dump_node._entry_ptr.214, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.216, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/ubifs/debug.c", i32 400, i32 3}
!316 = !{ptr @ubifs_dump_node._entry.215, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @ubifs_dump_node._entry_ptr.217, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.219, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/ubifs/debug.c", i32 401, i32 3}
!320 = !{ptr @ubifs_dump_node._entry.218, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @ubifs_dump_node._entry_ptr.220, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.222, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/ubifs/debug.c", i32 402, i32 3}
!324 = !{ptr @ubifs_dump_node._entry.221, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @ubifs_dump_node._entry_ptr.223, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.225, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/ubifs/debug.c", i32 403, i32 3}
!328 = !{ptr @ubifs_dump_node._entry.224, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @ubifs_dump_node._entry_ptr.226, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.228, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/ubifs/debug.c", i32 405, i32 3}
!332 = !{ptr @ubifs_dump_node._entry.227, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @ubifs_dump_node._entry_ptr.229, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.231, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/ubifs/debug.c", i32 406, i32 3}
!336 = !{ptr @ubifs_dump_node._entry.230, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @ubifs_dump_node._entry_ptr.232, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.234, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/ubifs/debug.c", i32 407, i32 3}
!340 = !{ptr @ubifs_dump_node._entry.233, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @ubifs_dump_node._entry_ptr.235, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.237, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/ubifs/debug.c", i32 408, i32 3}
!344 = !{ptr @ubifs_dump_node._entry.236, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @ubifs_dump_node._entry_ptr.238, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.240, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/ubifs/debug.c", i32 409, i32 3}
!348 = !{ptr @ubifs_dump_node._entry.239, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @ubifs_dump_node._entry_ptr.241, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.243, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/ubifs/debug.c", i32 410, i32 3}
!352 = !{ptr @ubifs_dump_node._entry.242, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @ubifs_dump_node._entry_ptr.244, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.246, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ubifs/debug.c", i32 411, i32 3}
!356 = !{ptr @ubifs_dump_node._entry.245, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @ubifs_dump_node._entry_ptr.247, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.249, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/ubifs/debug.c", i32 412, i32 3}
!360 = !{ptr @ubifs_dump_node._entry.248, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @ubifs_dump_node._entry_ptr.250, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.252, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/ubifs/debug.c", i32 413, i32 3}
!364 = !{ptr @ubifs_dump_node._entry.251, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @ubifs_dump_node._entry_ptr.253, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @ubifs_dump_node._entry.254, !367, !"_entry", i1 false, i1 false}
!367 = !{!"../fs/ubifs/debug.c", i32 414, i32 3}
!368 = !{ptr @ubifs_dump_node._entry_ptr.255, !367, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.257, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/ubifs/debug.c", i32 415, i32 3}
!371 = !{ptr @ubifs_dump_node._entry.256, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @ubifs_dump_node._entry_ptr.258, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.260, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/ubifs/debug.c", i32 416, i32 3}
!375 = !{ptr @ubifs_dump_node._entry.259, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @ubifs_dump_node._entry_ptr.261, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.263, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../fs/ubifs/debug.c", i32 417, i32 3}
!379 = !{ptr @ubifs_dump_node._entry.262, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @ubifs_dump_node._entry_ptr.264, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.266, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/ubifs/debug.c", i32 419, i32 3}
!383 = !{ptr @ubifs_dump_node._entry.265, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @ubifs_dump_node._entry_ptr.267, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.269, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../fs/ubifs/debug.c", i32 421, i32 3}
!387 = !{ptr @ubifs_dump_node._entry.268, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @ubifs_dump_node._entry_ptr.270, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.272, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/ubifs/debug.c", i32 423, i32 3}
!391 = !{ptr @ubifs_dump_node._entry.271, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @ubifs_dump_node._entry_ptr.273, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.275, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../fs/ubifs/debug.c", i32 425, i32 3}
!395 = !{ptr @ubifs_dump_node._entry.274, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @ubifs_dump_node._entry_ptr.276, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.278, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../fs/ubifs/debug.c", i32 433, i32 3}
!399 = !{ptr @ubifs_dump_node._entry.277, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @ubifs_dump_node._entry_ptr.279, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.281, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../fs/ubifs/debug.c", i32 434, i32 3}
!403 = !{ptr @ubifs_dump_node._entry.280, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @ubifs_dump_node._entry_ptr.282, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.284, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/ubifs/debug.c", i32 435, i32 3}
!407 = !{ptr @ubifs_dump_node._entry.283, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @ubifs_dump_node._entry_ptr.285, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.287, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../fs/ubifs/debug.c", i32 443, i32 3}
!411 = !{ptr @ubifs_dump_node._entry.286, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @ubifs_dump_node._entry_ptr.288, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @ubifs_dump_node._entry.289, !414, !"_entry", i1 false, i1 false}
!414 = !{!"../fs/ubifs/debug.c", i32 445, i32 3}
!415 = !{ptr @ubifs_dump_node._entry_ptr.290, !414, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @ubifs_dump_node._entry.291, !417, !"_entry", i1 false, i1 false}
!417 = !{!"../fs/ubifs/debug.c", i32 447, i32 3}
!418 = !{ptr @ubifs_dump_node._entry_ptr.292, !417, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @ubifs_dump_node._entry.293, !420, !"_entry", i1 false, i1 false}
!420 = !{!"../fs/ubifs/debug.c", i32 449, i32 3}
!421 = !{ptr @ubifs_dump_node._entry_ptr.294, !420, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.296, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../fs/ubifs/debug.c", i32 450, i32 3}
!424 = !{ptr @ubifs_dump_node._entry.295, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @ubifs_dump_node._entry_ptr.297, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.299, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../fs/ubifs/debug.c", i32 453, i32 3}
!428 = !{ptr @ubifs_dump_node._entry.298, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @ubifs_dump_node._entry_ptr.300, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.302, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../fs/ubifs/debug.c", i32 456, i32 3}
!432 = !{ptr @ubifs_dump_node._entry.301, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @ubifs_dump_node._entry_ptr.303, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @ubifs_dump_node._entry.304, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../fs/ubifs/debug.c", i32 459, i32 3}
!436 = !{ptr @ubifs_dump_node._entry_ptr.305, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @ubifs_dump_node._entry.306, !438, !"_entry", i1 false, i1 false}
!438 = !{!"../fs/ubifs/debug.c", i32 460, i32 3}
!439 = !{ptr @ubifs_dump_node._entry_ptr.307, !438, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.309, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../fs/ubifs/debug.c", i32 461, i32 3}
!442 = !{ptr @ubifs_dump_node._entry.308, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @ubifs_dump_node._entry_ptr.310, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @ubifs_dump_node._entry.311, !445, !"_entry", i1 false, i1 false}
!445 = !{!"../fs/ubifs/debug.c", i32 462, i32 3}
!446 = !{ptr @ubifs_dump_node._entry_ptr.312, !445, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @ubifs_dump_node._entry.313, !448, !"_entry", i1 false, i1 false}
!448 = !{!"../fs/ubifs/debug.c", i32 463, i32 3}
!449 = !{ptr @ubifs_dump_node._entry_ptr.314, !448, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @ubifs_dump_node._entry.315, !451, !"_entry", i1 false, i1 false}
!451 = !{!"../fs/ubifs/debug.c", i32 464, i32 3}
!452 = !{ptr @ubifs_dump_node._entry_ptr.316, !451, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @ubifs_dump_node._entry.317, !454, !"_entry", i1 false, i1 false}
!454 = !{!"../fs/ubifs/debug.c", i32 465, i32 3}
!455 = !{ptr @ubifs_dump_node._entry_ptr.318, !454, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.320, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../fs/ubifs/debug.c", i32 466, i32 3}
!458 = !{ptr @ubifs_dump_node._entry.319, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @ubifs_dump_node._entry_ptr.321, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.323, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../fs/ubifs/debug.c", i32 468, i32 3}
!462 = !{ptr @ubifs_dump_node._entry.322, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @ubifs_dump_node._entry_ptr.324, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @ubifs_dump_node._entry.325, !465, !"_entry", i1 false, i1 false}
!465 = !{!"../fs/ubifs/debug.c", i32 478, i32 3}
!466 = !{ptr @ubifs_dump_node._entry_ptr.326, !465, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.328, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../fs/ubifs/debug.c", i32 480, i32 3}
!469 = !{ptr @ubifs_dump_node._entry.327, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @ubifs_dump_node._entry_ptr.329, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.331, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../fs/ubifs/debug.c", i32 482, i32 3}
!473 = !{ptr @ubifs_dump_node._entry.330, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @ubifs_dump_node._entry_ptr.332, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.334, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../fs/ubifs/debug.c", i32 483, i32 3}
!477 = !{ptr @ubifs_dump_node._entry.333, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @ubifs_dump_node._entry_ptr.335, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.337, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../fs/ubifs/debug.c", i32 484, i32 3}
!481 = !{ptr @ubifs_dump_node._entry.336, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @ubifs_dump_node._entry_ptr.338, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.340, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../fs/ubifs/debug.c", i32 488, i32 4}
!485 = !{ptr @ubifs_dump_node._entry.339, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @ubifs_dump_node._entry_ptr.341, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.343, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../fs/ubifs/debug.c", i32 491, i32 5}
!489 = !{ptr @ubifs_dump_node._entry.342, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @ubifs_dump_node._entry_ptr.344, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.346, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../fs/ubifs/debug.c", i32 494, i32 3}
!493 = !{ptr @ubifs_dump_node._entry.345, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @ubifs_dump_node._entry_ptr.347, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @ubifs_dump_node._entry.348, !496, !"_entry", i1 false, i1 false}
!496 = !{!"../fs/ubifs/debug.c", i32 503, i32 3}
!497 = !{ptr @ubifs_dump_node._entry_ptr.349, !496, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.351, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../fs/ubifs/debug.c", i32 505, i32 3}
!500 = !{ptr @ubifs_dump_node._entry.350, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @ubifs_dump_node._entry_ptr.352, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.354, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../fs/ubifs/debug.c", i32 506, i32 3}
!504 = !{ptr @ubifs_dump_node._entry.353, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @ubifs_dump_node._entry_ptr.355, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.357, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../fs/ubifs/debug.c", i32 508, i32 3}
!508 = !{ptr @ubifs_dump_node._entry.356, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @ubifs_dump_node._entry_ptr.358, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.360, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../fs/ubifs/debug.c", i32 510, i32 3}
!512 = !{ptr @ubifs_dump_node._entry.359, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @ubifs_dump_node._entry_ptr.361, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.362, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../fs/ubifs/debug.c", i32 512, i32 28}
!516 = !{ptr @.str.364, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../fs/ubifs/debug.c", i32 521, i32 3}
!518 = !{ptr @ubifs_dump_node._entry.363, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @ubifs_dump_node._entry_ptr.365, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.367, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../fs/ubifs/debug.c", i32 522, i32 3}
!522 = !{ptr @ubifs_dump_node._entry.366, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @ubifs_dump_node._entry_ptr.368, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.370, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../fs/ubifs/debug.c", i32 524, i32 3}
!526 = !{ptr @ubifs_dump_node._entry.369, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @ubifs_dump_node._entry_ptr.371, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.373, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../fs/ubifs/debug.c", i32 536, i32 3}
!530 = !{ptr @ubifs_dump_node._entry.372, !529, !"_entry", i1 false, i1 false}
!531 = !{ptr @ubifs_dump_node._entry_ptr.374, !529, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.376, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../fs/ubifs/debug.c", i32 537, i32 3}
!534 = !{ptr @ubifs_dump_node._entry.375, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @ubifs_dump_node._entry_ptr.377, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.379, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../fs/ubifs/debug.c", i32 538, i32 3}
!538 = !{ptr @ubifs_dump_node._entry.378, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @ubifs_dump_node._entry_ptr.380, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.382, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../fs/ubifs/debug.c", i32 545, i32 4}
!542 = !{ptr @ubifs_dump_node._entry.381, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @ubifs_dump_node._entry_ptr.383, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @ubifs_dump_node._entry.384, !545, !"_entry", i1 false, i1 false}
!545 = !{!"../fs/ubifs/debug.c", i32 559, i32 3}
!546 = !{ptr @ubifs_dump_node._entry_ptr.385, !545, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.387, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../fs/ubifs/debug.c", i32 562, i32 3}
!549 = !{ptr @ubifs_dump_node._entry.386, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @ubifs_dump_node._entry_ptr.388, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.390, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../fs/ubifs/debug.c", i32 565, i32 3}
!553 = !{ptr @ubifs_dump_node._entry.389, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @ubifs_dump_node._entry_ptr.391, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.393, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../fs/ubifs/debug.c", i32 567, i32 4}
!557 = !{ptr @ubifs_dump_node._entry.392, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @ubifs_dump_node._entry_ptr.394, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @ubifs_dump_node._entry.395, !560, !"_entry", i1 false, i1 false}
!560 = !{!"../fs/ubifs/debug.c", i32 576, i32 3}
!561 = !{ptr @ubifs_dump_node._entry_ptr.396, !560, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @.str.397, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../fs/ubifs/debug.c", i32 586, i32 2}
!564 = !{ptr @.str.398, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @ubifs_dump_budget_req._entry, !563, !"_entry", i1 false, i1 false}
!566 = !{ptr @ubifs_dump_budget_req._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.400, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../fs/ubifs/debug.c", i32 588, i32 2}
!569 = !{ptr @ubifs_dump_budget_req._entry.399, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @ubifs_dump_budget_req._entry_ptr.401, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.403, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../fs/ubifs/debug.c", i32 590, i32 2}
!573 = !{ptr @ubifs_dump_budget_req._entry.402, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @ubifs_dump_budget_req._entry_ptr.404, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.406, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../fs/ubifs/debug.c", i32 592, i32 2}
!577 = !{ptr @ubifs_dump_budget_req._entry.405, !576, !"_entry", i1 false, i1 false}
!578 = !{ptr @ubifs_dump_budget_req._entry_ptr.407, !576, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.409, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../fs/ubifs/debug.c", i32 594, i32 2}
!581 = !{ptr @ubifs_dump_budget_req._entry.408, !580, !"_entry", i1 false, i1 false}
!582 = !{ptr @ubifs_dump_budget_req._entry_ptr.410, !580, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.412, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../fs/ubifs/debug.c", i32 595, i32 2}
!585 = !{ptr @ubifs_dump_budget_req._entry.411, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @ubifs_dump_budget_req._entry_ptr.413, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.414, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../fs/ubifs/debug.c", i32 603, i32 2}
!589 = !{ptr @.str.415, !588, !"<string literal>", i1 false, i1 false}
!590 = !{ptr @ubifs_dump_lstats._entry, !588, !"_entry", i1 false, i1 false}
!591 = !{ptr @ubifs_dump_lstats._entry_ptr, !588, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.417, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../fs/ubifs/debug.c", i32 605, i32 2}
!594 = !{ptr @ubifs_dump_lstats._entry.416, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @ubifs_dump_lstats._entry_ptr.418, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.420, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../fs/ubifs/debug.c", i32 607, i32 2}
!598 = !{ptr @ubifs_dump_lstats._entry.419, !597, !"_entry", i1 false, i1 false}
!599 = !{ptr @ubifs_dump_lstats._entry_ptr.421, !597, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @.str.422, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../fs/ubifs/debug.c", i32 622, i32 2}
!602 = !{ptr @.str.423, !601, !"<string literal>", i1 false, i1 false}
!603 = !{ptr @ubifs_dump_budg._entry, !601, !"_entry", i1 false, i1 false}
!604 = !{ptr @ubifs_dump_budg._entry_ptr, !601, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @.str.425, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../fs/ubifs/debug.c", i32 625, i32 2}
!607 = !{ptr @ubifs_dump_budg._entry.424, !606, !"_entry", i1 false, i1 false}
!608 = !{ptr @ubifs_dump_budg._entry_ptr.426, !606, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @.str.428, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../fs/ubifs/debug.c", i32 627, i32 2}
!611 = !{ptr @ubifs_dump_budg._entry.427, !610, !"_entry", i1 false, i1 false}
!612 = !{ptr @ubifs_dump_budg._entry_ptr.429, !610, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @.str.431, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../fs/ubifs/debug.c", i32 629, i32 2}
!615 = !{ptr @ubifs_dump_budg._entry.430, !614, !"_entry", i1 false, i1 false}
!616 = !{ptr @ubifs_dump_budg._entry_ptr.432, !614, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @.str.434, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../fs/ubifs/debug.c", i32 631, i32 2}
!619 = !{ptr @ubifs_dump_budg._entry.433, !618, !"_entry", i1 false, i1 false}
!620 = !{ptr @ubifs_dump_budg._entry_ptr.435, !618, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.437, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../fs/ubifs/debug.c", i32 632, i32 2}
!623 = !{ptr @ubifs_dump_budg._entry.436, !622, !"_entry", i1 false, i1 false}
!624 = !{ptr @ubifs_dump_budg._entry_ptr.438, !622, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.440, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../fs/ubifs/debug.c", i32 643, i32 2}
!627 = !{ptr @ubifs_dump_budg._entry.439, !626, !"_entry", i1 false, i1 false}
!628 = !{ptr @ubifs_dump_budg._entry_ptr.441, !626, !"_entry_ptr", i1 false, i1 false}
!629 = !{ptr @.str.443, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../fs/ubifs/debug.c", i32 645, i32 2}
!631 = !{ptr @ubifs_dump_budg._entry.442, !630, !"_entry", i1 false, i1 false}
!632 = !{ptr @ubifs_dump_budg._entry_ptr.444, !630, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.446, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../fs/ubifs/debug.c", i32 649, i32 2}
!635 = !{ptr @ubifs_dump_budg._entry.445, !634, !"_entry", i1 false, i1 false}
!636 = !{ptr @ubifs_dump_budg._entry_ptr.447, !634, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @.str.449, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../fs/ubifs/debug.c", i32 654, i32 4}
!639 = !{ptr @ubifs_dump_budg._entry.448, !638, !"_entry", i1 false, i1 false}
!640 = !{ptr @ubifs_dump_budg._entry_ptr.450, !638, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.452, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../fs/ubifs/debug.c", i32 659, i32 3}
!643 = !{ptr @ubifs_dump_budg._entry.451, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @ubifs_dump_budg._entry_ptr.453, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.455, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../fs/ubifs/debug.c", i32 662, i32 3}
!647 = !{ptr @ubifs_dump_budg._entry.454, !646, !"_entry", i1 false, i1 false}
!648 = !{ptr @ubifs_dump_budg._entry_ptr.456, !646, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.458, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../fs/ubifs/debug.c", i32 664, i32 3}
!651 = !{ptr @ubifs_dump_budg._entry.457, !650, !"_entry", i1 false, i1 false}
!652 = !{ptr @ubifs_dump_budg._entry_ptr.459, !650, !"_entry_ptr", i1 false, i1 false}
!653 = !{ptr @.str.461, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../fs/ubifs/debug.c", i32 666, i32 2}
!655 = !{ptr @ubifs_dump_budg._entry.460, !654, !"_entry", i1 false, i1 false}
!656 = !{ptr @ubifs_dump_budg._entry_ptr.462, !654, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.464, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../fs/ubifs/debug.c", i32 672, i32 2}
!659 = !{ptr @ubifs_dump_budg._entry.463, !658, !"_entry", i1 false, i1 false}
!660 = !{ptr @ubifs_dump_budg._entry_ptr.465, !658, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @.str.467, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../fs/ubifs/debug.c", i32 673, i32 2}
!663 = !{ptr @ubifs_dump_budg._entry.466, !662, !"_entry", i1 false, i1 false}
!664 = !{ptr @ubifs_dump_budg._entry_ptr.468, !662, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @.str.469, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../fs/ubifs/debug.c", i32 693, i32 3}
!667 = !{ptr @.str.470, !666, !"<string literal>", i1 false, i1 false}
!668 = !{ptr @ubifs_dump_lprop._entry, !666, !"_entry", i1 false, i1 false}
!669 = !{ptr @ubifs_dump_lprop._entry_ptr, !666, !"_entry_ptr", i1 false, i1 false}
!670 = !{ptr @.str.472, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../fs/ubifs/debug.c", i32 697, i32 3}
!672 = !{ptr @ubifs_dump_lprop._entry.471, !671, !"_entry", i1 false, i1 false}
!673 = !{ptr @ubifs_dump_lprop._entry_ptr.473, !671, !"_entry_ptr", i1 false, i1 false}
!674 = !{ptr @.str.475, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../fs/ubifs/debug.c", i32 703, i32 4}
!676 = !{ptr @ubifs_dump_lprop._entry.474, !675, !"_entry", i1 false, i1 false}
!677 = !{ptr @ubifs_dump_lprop._entry_ptr.476, !675, !"_entry_ptr", i1 false, i1 false}
!678 = !{ptr @.str.478, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../fs/ubifs/debug.c", i32 705, i32 4}
!680 = !{ptr @ubifs_dump_lprop._entry.477, !679, !"_entry", i1 false, i1 false}
!681 = !{ptr @ubifs_dump_lprop._entry_ptr.479, !679, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @.str.480, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../fs/ubifs/debug.c", i32 712, i32 9}
!684 = !{ptr @.str.481, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../fs/ubifs/debug.c", i32 715, i32 9}
!686 = !{ptr @.str.482, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../fs/ubifs/debug.c", i32 718, i32 9}
!688 = !{ptr @.str.483, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../fs/ubifs/debug.c", i32 723, i32 9}
!690 = !{ptr @.str.484, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../fs/ubifs/debug.c", i32 726, i32 9}
!692 = !{ptr @.str.485, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../fs/ubifs/debug.c", i32 729, i32 9}
!694 = !{ptr @.str.486, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../fs/ubifs/debug.c", i32 732, i32 9}
!696 = !{ptr @.str.487, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../fs/ubifs/debug.c", i32 735, i32 9}
!698 = !{ptr @.str.489, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../fs/ubifs/debug.c", i32 742, i32 3}
!700 = !{ptr @ubifs_dump_lprop._entry.488, !699, !"_entry", i1 false, i1 false}
!701 = !{ptr @ubifs_dump_lprop._entry_ptr.490, !699, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @.str.492, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../fs/ubifs/debug.c", i32 757, i32 6}
!704 = !{ptr @ubifs_dump_lprop._entry.491, !703, !"_entry", i1 false, i1 false}
!705 = !{ptr @ubifs_dump_lprop._entry_ptr.493, !703, !"_entry_ptr", i1 false, i1 false}
!706 = !{ptr @.str.495, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../fs/ubifs/debug.c", i32 762, i32 5}
!708 = !{ptr @ubifs_dump_lprop._entry.494, !707, !"_entry", i1 false, i1 false}
!709 = !{ptr @ubifs_dump_lprop._entry_ptr.496, !707, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @.str.498, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../fs/ubifs/debug.c", i32 767, i32 3}
!712 = !{ptr @ubifs_dump_lprop._entry.497, !711, !"_entry", i1 false, i1 false}
!713 = !{ptr @ubifs_dump_lprop._entry_ptr.499, !711, !"_entry_ptr", i1 false, i1 false}
!714 = !{ptr @.str.501, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../fs/ubifs/debug.c", i32 768, i32 2}
!716 = !{ptr @ubifs_dump_lprop._entry.500, !715, !"_entry", i1 false, i1 false}
!717 = !{ptr @ubifs_dump_lprop._entry_ptr.502, !715, !"_entry_ptr", i1 false, i1 false}
!718 = !{ptr @.str.503, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../fs/ubifs/debug.c", i32 777, i32 2}
!720 = !{ptr @.str.504, !719, !"<string literal>", i1 false, i1 false}
!721 = !{ptr @ubifs_dump_lprops._entry, !719, !"_entry", i1 false, i1 false}
!722 = !{ptr @ubifs_dump_lprops._entry_ptr, !719, !"_entry_ptr", i1 false, i1 false}
!723 = !{ptr @.str.505, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../fs/ubifs/debug.c", i32 784, i32 17}
!725 = !{ptr @.str.507, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../fs/ubifs/debug.c", i32 790, i32 2}
!727 = !{ptr @ubifs_dump_lprops._entry.506, !726, !"_entry", i1 false, i1 false}
!728 = !{ptr @ubifs_dump_lprops._entry_ptr.508, !726, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @.str.509, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../fs/ubifs/debug.c", i32 798, i32 2}
!731 = !{ptr @.str.510, !730, !"<string literal>", i1 false, i1 false}
!732 = !{ptr @ubifs_dump_lpt_info._entry, !730, !"_entry", i1 false, i1 false}
!733 = !{ptr @ubifs_dump_lpt_info._entry_ptr, !730, !"_entry_ptr", i1 false, i1 false}
!734 = !{ptr @.str.512, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../fs/ubifs/debug.c", i32 799, i32 2}
!736 = !{ptr @ubifs_dump_lpt_info._entry.511, !735, !"_entry", i1 false, i1 false}
!737 = !{ptr @ubifs_dump_lpt_info._entry_ptr.513, !735, !"_entry_ptr", i1 false, i1 false}
!738 = !{ptr @.str.515, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../fs/ubifs/debug.c", i32 800, i32 2}
!740 = !{ptr @ubifs_dump_lpt_info._entry.514, !739, !"_entry", i1 false, i1 false}
!741 = !{ptr @ubifs_dump_lpt_info._entry_ptr.516, !739, !"_entry_ptr", i1 false, i1 false}
!742 = !{ptr @.str.518, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../fs/ubifs/debug.c", i32 801, i32 2}
!744 = !{ptr @ubifs_dump_lpt_info._entry.517, !743, !"_entry", i1 false, i1 false}
!745 = !{ptr @ubifs_dump_lpt_info._entry_ptr.519, !743, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @.str.521, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../fs/ubifs/debug.c", i32 802, i32 2}
!748 = !{ptr @ubifs_dump_lpt_info._entry.520, !747, !"_entry", i1 false, i1 false}
!749 = !{ptr @ubifs_dump_lpt_info._entry_ptr.522, !747, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @.str.524, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../fs/ubifs/debug.c", i32 803, i32 2}
!752 = !{ptr @ubifs_dump_lpt_info._entry.523, !751, !"_entry", i1 false, i1 false}
!753 = !{ptr @ubifs_dump_lpt_info._entry_ptr.525, !751, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @.str.527, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../fs/ubifs/debug.c", i32 804, i32 2}
!756 = !{ptr @ubifs_dump_lpt_info._entry.526, !755, !"_entry", i1 false, i1 false}
!757 = !{ptr @ubifs_dump_lpt_info._entry_ptr.528, !755, !"_entry_ptr", i1 false, i1 false}
!758 = !{ptr @.str.530, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../fs/ubifs/debug.c", i32 805, i32 2}
!760 = !{ptr @ubifs_dump_lpt_info._entry.529, !759, !"_entry", i1 false, i1 false}
!761 = !{ptr @ubifs_dump_lpt_info._entry_ptr.531, !759, !"_entry_ptr", i1 false, i1 false}
!762 = !{ptr @.str.533, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../fs/ubifs/debug.c", i32 806, i32 2}
!764 = !{ptr @ubifs_dump_lpt_info._entry.532, !763, !"_entry", i1 false, i1 false}
!765 = !{ptr @ubifs_dump_lpt_info._entry_ptr.534, !763, !"_entry_ptr", i1 false, i1 false}
!766 = !{ptr @.str.536, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../fs/ubifs/debug.c", i32 807, i32 2}
!768 = !{ptr @ubifs_dump_lpt_info._entry.535, !767, !"_entry", i1 false, i1 false}
!769 = !{ptr @ubifs_dump_lpt_info._entry_ptr.537, !767, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @.str.539, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../fs/ubifs/debug.c", i32 808, i32 2}
!772 = !{ptr @ubifs_dump_lpt_info._entry.538, !771, !"_entry", i1 false, i1 false}
!773 = !{ptr @ubifs_dump_lpt_info._entry_ptr.540, !771, !"_entry_ptr", i1 false, i1 false}
!774 = !{ptr @.str.542, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../fs/ubifs/debug.c", i32 809, i32 2}
!776 = !{ptr @ubifs_dump_lpt_info._entry.541, !775, !"_entry", i1 false, i1 false}
!777 = !{ptr @ubifs_dump_lpt_info._entry_ptr.543, !775, !"_entry_ptr", i1 false, i1 false}
!778 = !{ptr @.str.545, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../fs/ubifs/debug.c", i32 810, i32 2}
!780 = !{ptr @ubifs_dump_lpt_info._entry.544, !779, !"_entry", i1 false, i1 false}
!781 = !{ptr @ubifs_dump_lpt_info._entry_ptr.546, !779, !"_entry_ptr", i1 false, i1 false}
!782 = !{ptr @.str.548, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../fs/ubifs/debug.c", i32 811, i32 2}
!784 = !{ptr @ubifs_dump_lpt_info._entry.547, !783, !"_entry", i1 false, i1 false}
!785 = !{ptr @ubifs_dump_lpt_info._entry_ptr.549, !783, !"_entry_ptr", i1 false, i1 false}
!786 = !{ptr @.str.551, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../fs/ubifs/debug.c", i32 812, i32 2}
!788 = !{ptr @ubifs_dump_lpt_info._entry.550, !787, !"_entry", i1 false, i1 false}
!789 = !{ptr @ubifs_dump_lpt_info._entry_ptr.552, !787, !"_entry_ptr", i1 false, i1 false}
!790 = !{ptr @.str.554, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../fs/ubifs/debug.c", i32 813, i32 2}
!792 = !{ptr @ubifs_dump_lpt_info._entry.553, !791, !"_entry", i1 false, i1 false}
!793 = !{ptr @ubifs_dump_lpt_info._entry_ptr.555, !791, !"_entry_ptr", i1 false, i1 false}
!794 = !{ptr @.str.557, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../fs/ubifs/debug.c", i32 814, i32 2}
!796 = !{ptr @ubifs_dump_lpt_info._entry.556, !795, !"_entry", i1 false, i1 false}
!797 = !{ptr @ubifs_dump_lpt_info._entry_ptr.558, !795, !"_entry_ptr", i1 false, i1 false}
!798 = !{ptr @.str.560, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../fs/ubifs/debug.c", i32 815, i32 2}
!800 = !{ptr @ubifs_dump_lpt_info._entry.559, !799, !"_entry", i1 false, i1 false}
!801 = !{ptr @ubifs_dump_lpt_info._entry_ptr.561, !799, !"_entry_ptr", i1 false, i1 false}
!802 = !{ptr @.str.563, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../fs/ubifs/debug.c", i32 816, i32 2}
!804 = !{ptr @ubifs_dump_lpt_info._entry.562, !803, !"_entry", i1 false, i1 false}
!805 = !{ptr @ubifs_dump_lpt_info._entry_ptr.564, !803, !"_entry_ptr", i1 false, i1 false}
!806 = !{ptr @.str.566, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../fs/ubifs/debug.c", i32 817, i32 2}
!808 = !{ptr @ubifs_dump_lpt_info._entry.565, !807, !"_entry", i1 false, i1 false}
!809 = !{ptr @ubifs_dump_lpt_info._entry_ptr.567, !807, !"_entry_ptr", i1 false, i1 false}
!810 = !{ptr @.str.569, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../fs/ubifs/debug.c", i32 818, i32 2}
!812 = !{ptr @ubifs_dump_lpt_info._entry.568, !811, !"_entry", i1 false, i1 false}
!813 = !{ptr @ubifs_dump_lpt_info._entry_ptr.570, !811, !"_entry_ptr", i1 false, i1 false}
!814 = !{ptr @.str.572, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../fs/ubifs/debug.c", i32 820, i32 2}
!816 = !{ptr @ubifs_dump_lpt_info._entry.571, !815, !"_entry", i1 false, i1 false}
!817 = !{ptr @ubifs_dump_lpt_info._entry_ptr.573, !815, !"_entry_ptr", i1 false, i1 false}
!818 = !{ptr @.str.575, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../fs/ubifs/debug.c", i32 822, i32 3}
!820 = !{ptr @ubifs_dump_lpt_info._entry.574, !819, !"_entry", i1 false, i1 false}
!821 = !{ptr @ubifs_dump_lpt_info._entry_ptr.576, !819, !"_entry_ptr", i1 false, i1 false}
!822 = !{ptr @.str.578, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../fs/ubifs/debug.c", i32 825, i32 3}
!824 = !{ptr @ubifs_dump_lpt_info._entry.577, !823, !"_entry", i1 false, i1 false}
!825 = !{ptr @ubifs_dump_lpt_info._entry_ptr.579, !823, !"_entry_ptr", i1 false, i1 false}
!826 = !{ptr @.str.580, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../fs/ubifs/debug.c", i32 837, i32 2}
!828 = !{ptr @.str.581, !827, !"<string literal>", i1 false, i1 false}
!829 = !{ptr @ubifs_dump_leb._entry, !827, !"_entry", i1 false, i1 false}
!830 = !{ptr @ubifs_dump_leb._entry_ptr, !827, !"_entry_ptr", i1 false, i1 false}
!831 = !{ptr @.str.582, !832, !"<string literal>", i1 false, i1 false}
!832 = !{!"../fs/ubifs/debug.c", i32 841, i32 16}
!833 = !{ptr @.str.583, !834, !"<string literal>", i1 false, i1 false}
!834 = !{!"../fs/ubifs/debug.c", i32 847, i32 16}
!835 = !{ptr @.str.585, !836, !"<string literal>", i1 false, i1 false}
!836 = !{!"../fs/ubifs/debug.c", i32 851, i32 2}
!837 = !{ptr @ubifs_dump_leb._entry.584, !836, !"_entry", i1 false, i1 false}
!838 = !{ptr @ubifs_dump_leb._entry_ptr.586, !836, !"_entry_ptr", i1 false, i1 false}
!839 = !{ptr @.str.588, !840, !"<string literal>", i1 false, i1 false}
!840 = !{!"../fs/ubifs/debug.c", i32 856, i32 3}
!841 = !{ptr @ubifs_dump_leb._entry.587, !840, !"_entry", i1 false, i1 false}
!842 = !{ptr @ubifs_dump_leb._entry_ptr.589, !840, !"_entry_ptr", i1 false, i1 false}
!843 = !{ptr @.str.591, !844, !"<string literal>", i1 false, i1 false}
!844 = !{!"../fs/ubifs/debug.c", i32 861, i32 2}
!845 = !{ptr @ubifs_dump_leb._entry.590, !844, !"_entry", i1 false, i1 false}
!846 = !{ptr @ubifs_dump_leb._entry_ptr.592, !844, !"_entry_ptr", i1 false, i1 false}
!847 = !{ptr @.str.593, !848, !"<string literal>", i1 false, i1 false}
!848 = !{!"../fs/ubifs/debug.c", i32 882, i32 2}
!849 = !{ptr @.str.594, !848, !"<string literal>", i1 false, i1 false}
!850 = !{ptr @ubifs_dump_znode._entry, !848, !"_entry", i1 false, i1 false}
!851 = !{ptr @ubifs_dump_znode._entry_ptr, !848, !"_entry_ptr", i1 false, i1 false}
!852 = !{ptr @.str.596, !853, !"<string literal>", i1 false, i1 false}
!853 = !{!"../fs/ubifs/debug.c", i32 891, i32 2}
!854 = !{ptr @ubifs_dump_znode._entry.595, !853, !"_entry", i1 false, i1 false}
!855 = !{ptr @ubifs_dump_znode._entry_ptr.597, !853, !"_entry_ptr", i1 false, i1 false}
!856 = !{ptr @.str.599, !857, !"<string literal>", i1 false, i1 false}
!857 = !{!"../fs/ubifs/debug.c", i32 895, i32 4}
!858 = !{ptr @ubifs_dump_znode._entry.598, !857, !"_entry", i1 false, i1 false}
!859 = !{ptr @ubifs_dump_znode._entry_ptr.600, !857, !"_entry_ptr", i1 false, i1 false}
!860 = !{ptr @.str.602, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../fs/ubifs/debug.c", i32 900, i32 4}
!862 = !{ptr @ubifs_dump_znode._entry.601, !861, !"_entry", i1 false, i1 false}
!863 = !{ptr @ubifs_dump_znode._entry_ptr.603, !861, !"_entry_ptr", i1 false, i1 false}
!864 = !{ptr @.str.604, !865, !"<string literal>", i1 false, i1 false}
!865 = !{!"../fs/ubifs/debug.c", i32 912, i32 2}
!866 = !{ptr @.str.605, !865, !"<string literal>", i1 false, i1 false}
!867 = !{ptr @ubifs_dump_heap._entry, !865, !"_entry", i1 false, i1 false}
!868 = !{ptr @ubifs_dump_heap._entry_ptr, !865, !"_entry_ptr", i1 false, i1 false}
!869 = !{ptr @.str.607, !870, !"<string literal>", i1 false, i1 false}
!870 = !{!"../fs/ubifs/debug.c", i32 917, i32 3}
!871 = !{ptr @ubifs_dump_heap._entry.606, !870, !"_entry", i1 false, i1 false}
!872 = !{ptr @ubifs_dump_heap._entry_ptr.608, !870, !"_entry_ptr", i1 false, i1 false}
!873 = !{ptr @.str.610, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../fs/ubifs/debug.c", i32 921, i32 2}
!875 = !{ptr @ubifs_dump_heap._entry.609, !874, !"_entry", i1 false, i1 false}
!876 = !{ptr @ubifs_dump_heap._entry_ptr.611, !874, !"_entry_ptr", i1 false, i1 false}
!877 = !{ptr @.str.612, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../fs/ubifs/debug.c", i32 929, i32 2}
!879 = !{ptr @.str.613, !878, !"<string literal>", i1 false, i1 false}
!880 = !{ptr @ubifs_dump_pnode._entry, !878, !"_entry", i1 false, i1 false}
!881 = !{ptr @ubifs_dump_pnode._entry_ptr, !878, !"_entry_ptr", i1 false, i1 false}
!882 = !{ptr @.str.615, !883, !"<string literal>", i1 false, i1 false}
!883 = !{!"../fs/ubifs/debug.c", i32 930, i32 2}
!884 = !{ptr @ubifs_dump_pnode._entry.614, !883, !"_entry", i1 false, i1 false}
!885 = !{ptr @ubifs_dump_pnode._entry_ptr.616, !883, !"_entry_ptr", i1 false, i1 false}
!886 = !{ptr @.str.618, !887, !"<string literal>", i1 false, i1 false}
!887 = !{!"../fs/ubifs/debug.c", i32 932, i32 2}
!888 = !{ptr @ubifs_dump_pnode._entry.617, !887, !"_entry", i1 false, i1 false}
!889 = !{ptr @ubifs_dump_pnode._entry_ptr.619, !887, !"_entry_ptr", i1 false, i1 false}
!890 = !{ptr @.str.621, !891, !"<string literal>", i1 false, i1 false}
!891 = !{!"../fs/ubifs/debug.c", i32 937, i32 3}
!892 = !{ptr @ubifs_dump_pnode._entry.620, !891, !"_entry", i1 false, i1 false}
!893 = !{ptr @ubifs_dump_pnode._entry_ptr.622, !891, !"_entry_ptr", i1 false, i1 false}
!894 = !{ptr @.str.623, !895, !"<string literal>", i1 false, i1 false}
!895 = !{!"../fs/ubifs/debug.c", i32 947, i32 2}
!896 = !{ptr @.str.624, !895, !"<string literal>", i1 false, i1 false}
!897 = !{ptr @ubifs_dump_tnc._entry, !895, !"_entry", i1 false, i1 false}
!898 = !{ptr @ubifs_dump_tnc._entry_ptr, !895, !"_entry_ptr", i1 false, i1 false}
!899 = !{ptr @.str.626, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../fs/ubifs/debug.c", i32 948, i32 2}
!901 = !{ptr @ubifs_dump_tnc._entry.625, !900, !"_entry", i1 false, i1 false}
!902 = !{ptr @ubifs_dump_tnc._entry_ptr.627, !900, !"_entry_ptr", i1 false, i1 false}
!903 = !{ptr @.str.629, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../fs/ubifs/debug.c", i32 951, i32 2}
!905 = !{ptr @ubifs_dump_tnc._entry.628, !904, !"_entry", i1 false, i1 false}
!906 = !{ptr @ubifs_dump_tnc._entry_ptr.630, !904, !"_entry_ptr", i1 false, i1 false}
!907 = !{ptr @ubifs_dump_tnc._entry.631, !908, !"_entry", i1 false, i1 false}
!908 = !{!"../fs/ubifs/debug.c", i32 955, i32 4}
!909 = !{ptr @ubifs_dump_tnc._entry_ptr.632, !908, !"_entry_ptr", i1 false, i1 false}
!910 = !{ptr @.str.634, !911, !"<string literal>", i1 false, i1 false}
!911 = !{!"../fs/ubifs/debug.c", i32 960, i32 2}
!912 = !{ptr @ubifs_dump_tnc._entry.633, !911, !"_entry", i1 false, i1 false}
!913 = !{ptr @ubifs_dump_tnc._entry_ptr.635, !911, !"_entry_ptr", i1 false, i1 false}
!914 = !{ptr @.str.636, !915, !"<string literal>", i1 false, i1 false}
!915 = !{!"../fs/ubifs/debug.c", i32 1054, i32 16}
!916 = !{ptr @.str.637, !917, !"<string literal>", i1 false, i1 false}
!917 = !{!"../fs/ubifs/debug.c", i32 1062, i32 15}
!918 = !{ptr @.str.638, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../fs/ubifs/debug.c", i32 1064, i32 15}
!920 = !{ptr @.str.639, !921, !"<string literal>", i1 false, i1 false}
!921 = !{!"../fs/ubifs/debug.c", i32 1066, i32 15}
!922 = !{ptr @.str.640, !923, !"<string literal>", i1 false, i1 false}
!923 = !{!"../fs/ubifs/debug.c", i32 1067, i32 15}
!924 = !{ptr @.str.641, !925, !"<string literal>", i1 false, i1 false}
!925 = !{!"../fs/ubifs/debug.c", i32 1070, i32 15}
!926 = !{ptr @.str.642, !927, !"<string literal>", i1 false, i1 false}
!927 = !{!"../fs/ubifs/debug.c", i32 1099, i32 16}
!928 = !{ptr @.str.643, !929, !"<string literal>", i1 false, i1 false}
!929 = !{!"../fs/ubifs/debug.c", i32 1101, i32 16}
!930 = !{ptr @.str.644, !931, !"<string literal>", i1 false, i1 false}
!931 = !{!"../fs/ubifs/debug.c", i32 1163, i32 16}
!932 = !{ptr @.str.645, !933, !"<string literal>", i1 false, i1 false}
!933 = !{!"../fs/ubifs/debug.c", i32 1171, i32 16}
!934 = !{ptr @.str.646, !935, !"<string literal>", i1 false, i1 false}
!935 = !{!"../fs/ubifs/debug.c", i32 1498, i32 2}
!936 = !{ptr @.str.647, !937, !"<string literal>", i1 false, i1 false}
!937 = !{!"../fs/ubifs/debug.c", i32 1541, i32 18}
!938 = !{ptr @.str.648, !939, !"<string literal>", i1 false, i1 false}
!939 = !{!"../fs/ubifs/debug.c", i32 1543, i32 18}
!940 = !{ptr @.str.649, !941, !"<string literal>", i1 false, i1 false}
!941 = !{!"../fs/ubifs/debug.c", i32 1552, i32 17}
!942 = !{ptr @.str.650, !943, !"<string literal>", i1 false, i1 false}
!943 = !{!"../fs/ubifs/debug.c", i32 1558, i32 17}
!944 = !{ptr @.str.651, !945, !"<string literal>", i1 false, i1 false}
!945 = !{!"../fs/ubifs/debug.c", i32 1630, i32 18}
!946 = !{ptr @.str.652, !947, !"<string literal>", i1 false, i1 false}
!947 = !{!"../fs/ubifs/debug.c", i32 1641, i32 19}
!948 = !{ptr @.str.653, !949, !"<string literal>", i1 false, i1 false}
!949 = !{!"../fs/ubifs/debug.c", i32 1697, i32 15}
!950 = !{ptr @.str.654, !951, !"<string literal>", i1 false, i1 false}
!951 = !{!"../fs/ubifs/debug.c", i32 1744, i32 16}
!952 = !{ptr @.str.655, !953, !"<string literal>", i1 false, i1 false}
!953 = !{!"../fs/ubifs/debug.c", i32 1749, i32 16}
!954 = !{ptr @.str.656, !955, !"<string literal>", i1 false, i1 false}
!955 = !{!"../fs/ubifs/debug.c", i32 2306, i32 15}
!956 = !{ptr @.str.657, !957, !"<string literal>", i1 false, i1 false}
!957 = !{!"../fs/ubifs/debug.c", i32 2337, i32 17}
!958 = !{ptr @.str.658, !959, !"<string literal>", i1 false, i1 false}
!959 = !{!"../fs/ubifs/debug.c", i32 2353, i32 17}
!960 = !{ptr @.str.659, !961, !"<string literal>", i1 false, i1 false}
!961 = !{!"../fs/ubifs/debug.c", i32 2362, i32 17}
!962 = !{ptr @.str.660, !963, !"<string literal>", i1 false, i1 false}
!963 = !{!"../fs/ubifs/debug.c", i32 2366, i32 17}
!964 = !{ptr @.str.661, !965, !"<string literal>", i1 false, i1 false}
!965 = !{!"../fs/ubifs/debug.c", i32 2417, i32 17}
!966 = !{ptr @.str.662, !967, !"<string literal>", i1 false, i1 false}
!967 = !{!"../fs/ubifs/debug.c", i32 2427, i32 18}
!968 = !{ptr @.str.663, !969, !"<string literal>", i1 false, i1 false}
!969 = !{!"../fs/ubifs/debug.c", i32 2452, i32 17}
!970 = !{ptr @.str.664, !971, !"<string literal>", i1 false, i1 false}
!971 = !{!"../fs/ubifs/debug.c", i32 2461, i32 15}
!972 = !{ptr @.str.665, !973, !"<string literal>", i1 false, i1 false}
!973 = !{!"../fs/ubifs/debug.c", i32 2463, i32 15}
!974 = !{ptr @.str.666, !975, !"<string literal>", i1 false, i1 false}
!975 = !{!"../fs/ubifs/debug.c", i32 2600, i32 17}
!976 = !{ptr @.str.667, !977, !"<string literal>", i1 false, i1 false}
!977 = !{!"../fs/ubifs/debug.c", i32 2825, i32 55}
!978 = !{ptr @.str.668, !979, !"<string literal>", i1 false, i1 false}
!979 = !{!"../fs/ubifs/debug.c", i32 2835, i32 10}
!980 = !{ptr @.str.669, !981, !"<string literal>", i1 false, i1 false}
!981 = !{!"../fs/ubifs/debug.c", i32 2839, i32 10}
!982 = !{ptr @.str.670, !983, !"<string literal>", i1 false, i1 false}
!983 = !{!"../fs/ubifs/debug.c", i32 2843, i32 10}
!984 = !{ptr @.str.671, !985, !"<string literal>", i1 false, i1 false}
!985 = !{!"../fs/ubifs/debug.c", i32 2847, i32 10}
!986 = !{ptr @.str.672, !987, !"<string literal>", i1 false, i1 false}
!987 = !{!"../fs/ubifs/debug.c", i32 2851, i32 10}
!988 = !{ptr @.str.673, !989, !"<string literal>", i1 false, i1 false}
!989 = !{!"../fs/ubifs/debug.c", i32 2855, i32 10}
!990 = !{ptr @.str.674, !991, !"<string literal>", i1 false, i1 false}
!991 = !{!"../fs/ubifs/debug.c", i32 2859, i32 10}
!992 = !{ptr @.str.675, !993, !"<string literal>", i1 false, i1 false}
!993 = !{!"../fs/ubifs/debug.c", i32 2863, i32 10}
!994 = !{ptr @.str.676, !995, !"<string literal>", i1 false, i1 false}
!995 = !{!"../fs/ubifs/debug.c", i32 2867, i32 10}
!996 = !{ptr @.str.677, !997, !"<string literal>", i1 false, i1 false}
!997 = !{!"../fs/ubifs/debug.c", i32 2871, i32 10}
!998 = !{ptr @.str.678, !999, !"<string literal>", i1 false, i1 false}
!999 = !{!"../fs/ubifs/debug.c", i32 2964, i32 10}
!1000 = !{ptr @.str.679, !1001, !"<string literal>", i1 false, i1 false}
!1001 = !{!"../fs/ubifs/debug.c", i32 3003, i32 15}
!1002 = !{ptr @dfs_rootdir, !1003, !"dfs_rootdir", i1 false, i1 false}
!1003 = !{!"../fs/ubifs/debug.c", i32 2664, i32 23}
!1004 = !{ptr @ubifs_dbg, !1005, !"ubifs_dbg", i1 false, i1 false}
!1005 = !{!"../fs/ubifs/debug.c", i32 2885, i32 32}
!1006 = !{ptr @dfs_chk_gen, !1007, !"dfs_chk_gen", i1 false, i1 false}
!1007 = !{!"../fs/ubifs/debug.c", i32 2887, i32 23}
!1008 = !{ptr @dfs_chk_index, !1009, !"dfs_chk_index", i1 false, i1 false}
!1009 = !{!"../fs/ubifs/debug.c", i32 2888, i32 23}
!1010 = !{ptr @dfs_chk_orph, !1011, !"dfs_chk_orph", i1 false, i1 false}
!1011 = !{!"../fs/ubifs/debug.c", i32 2889, i32 23}
!1012 = !{ptr @dfs_chk_lprops, !1013, !"dfs_chk_lprops", i1 false, i1 false}
!1013 = !{!"../fs/ubifs/debug.c", i32 2890, i32 23}
!1014 = !{ptr @dfs_chk_fs, !1015, !"dfs_chk_fs", i1 false, i1 false}
!1015 = !{!"../fs/ubifs/debug.c", i32 2891, i32 23}
!1016 = !{ptr @dfs_tst_rcvry, !1017, !"dfs_tst_rcvry", i1 false, i1 false}
!1017 = !{!"../fs/ubifs/debug.c", i32 2892, i32 23}
!1018 = !{ptr @.str.680, !1019, !"<string literal>", i1 false, i1 false}
!1019 = !{!"../fs/ubifs/debug.c", i32 54, i32 10}
!1020 = !{ptr @.str.681, !1021, !"<string literal>", i1 false, i1 false}
!1021 = !{!"../fs/ubifs/debug.c", i32 56, i32 10}
!1022 = !{ptr @.str.682, !1023, !"<string literal>", i1 false, i1 false}
!1023 = !{!"../fs/ubifs/debug.c", i32 58, i32 10}
!1024 = !{ptr @.str.683, !1025, !"<string literal>", i1 false, i1 false}
!1025 = !{!"../fs/ubifs/debug.c", i32 60, i32 10}
!1026 = !{ptr @.str.684, !1027, !"<string literal>", i1 false, i1 false}
!1027 = !{!"../fs/ubifs/debug.c", i32 62, i32 10}
!1028 = !{ptr @.str.685, !1029, !"<string literal>", i1 false, i1 false}
!1029 = !{!"../fs/ubifs/debug.c", i32 64, i32 10}
!1030 = !{ptr @.str.686, !1031, !"<string literal>", i1 false, i1 false}
!1031 = !{!"../fs/ubifs/debug.c", i32 72, i32 10}
!1032 = !{ptr @.str.687, !1033, !"<string literal>", i1 false, i1 false}
!1033 = !{!"../fs/ubifs/debug.c", i32 74, i32 10}
!1034 = !{ptr @.str.688, !1035, !"<string literal>", i1 false, i1 false}
!1035 = !{!"../fs/ubifs/debug.c", i32 76, i32 10}
!1036 = !{ptr @.str.689, !1037, !"<string literal>", i1 false, i1 false}
!1037 = !{!"../fs/ubifs/debug.c", i32 78, i32 10}
!1038 = !{ptr @.str.690, !1039, !"<string literal>", i1 false, i1 false}
!1039 = !{!"../fs/ubifs/debug.c", i32 80, i32 10}
!1040 = !{ptr @.str.691, !1041, !"<string literal>", i1 false, i1 false}
!1041 = !{!"../fs/ubifs/debug.c", i32 82, i32 10}
!1042 = !{ptr @.str.692, !1043, !"<string literal>", i1 false, i1 false}
!1043 = !{!"../fs/ubifs/debug.c", i32 84, i32 10}
!1044 = !{ptr @.str.693, !1045, !"<string literal>", i1 false, i1 false}
!1045 = !{!"../fs/ubifs/debug.c", i32 86, i32 10}
!1046 = !{ptr @.str.694, !1047, !"<string literal>", i1 false, i1 false}
!1047 = !{!"../fs/ubifs/debug.c", i32 26, i32 8}
!1048 = !{ptr @dbg_lock, !1047, !"dbg_lock", i1 false, i1 false}
!1049 = !{ptr @.str.695, !1050, !"<string literal>", i1 false, i1 false}
!1050 = !{!"../fs/ubifs/debug.c", i32 213, i32 2}
!1051 = !{ptr @.str.696, !1050, !"<string literal>", i1 false, i1 false}
!1052 = !{ptr @dump_ch._entry, !1050, !"_entry", i1 false, i1 false}
!1053 = !{ptr @dump_ch._entry_ptr, !1050, !"_entry_ptr", i1 false, i1 false}
!1054 = !{ptr @.str.698, !1055, !"<string literal>", i1 false, i1 false}
!1055 = !{!"../fs/ubifs/debug.c", i32 214, i32 2}
!1056 = !{ptr @dump_ch._entry.697, !1055, !"_entry", i1 false, i1 false}
!1057 = !{ptr @dump_ch._entry_ptr.699, !1055, !"_entry_ptr", i1 false, i1 false}
!1058 = !{ptr @.str.701, !1059, !"<string literal>", i1 false, i1 false}
!1059 = !{!"../fs/ubifs/debug.c", i32 215, i32 2}
!1060 = !{ptr @dump_ch._entry.700, !1059, !"_entry", i1 false, i1 false}
!1061 = !{ptr @dump_ch._entry_ptr.702, !1059, !"_entry_ptr", i1 false, i1 false}
!1062 = !{ptr @.str.704, !1063, !"<string literal>", i1 false, i1 false}
!1063 = !{!"../fs/ubifs/debug.c", i32 217, i32 2}
!1064 = !{ptr @dump_ch._entry.703, !1063, !"_entry", i1 false, i1 false}
!1065 = !{ptr @dump_ch._entry_ptr.705, !1063, !"_entry_ptr", i1 false, i1 false}
!1066 = !{ptr @.str.707, !1067, !"<string literal>", i1 false, i1 false}
!1067 = !{!"../fs/ubifs/debug.c", i32 219, i32 2}
!1068 = !{ptr @dump_ch._entry.706, !1067, !"_entry", i1 false, i1 false}
!1069 = !{ptr @dump_ch._entry_ptr.708, !1067, !"_entry_ptr", i1 false, i1 false}
!1070 = !{ptr @.str.710, !1071, !"<string literal>", i1 false, i1 false}
!1071 = !{!"../fs/ubifs/debug.c", i32 221, i32 2}
!1072 = !{ptr @dump_ch._entry.709, !1071, !"_entry", i1 false, i1 false}
!1073 = !{ptr @dump_ch._entry_ptr.711, !1071, !"_entry_ptr", i1 false, i1 false}
!1074 = !{ptr @.str.712, !1075, !"<string literal>", i1 false, i1 false}
!1075 = !{!"../fs/ubifs/debug.c", i32 167, i32 10}
!1076 = !{ptr @.str.713, !1077, !"<string literal>", i1 false, i1 false}
!1077 = !{!"../fs/ubifs/debug.c", i32 169, i32 10}
!1078 = !{ptr @.str.714, !1079, !"<string literal>", i1 false, i1 false}
!1079 = !{!"../fs/ubifs/debug.c", i32 171, i32 10}
!1080 = !{ptr @.str.715, !1081, !"<string literal>", i1 false, i1 false}
!1081 = !{!"../fs/ubifs/debug.c", i32 173, i32 10}
!1082 = !{ptr @.str.716, !1083, !"<string literal>", i1 false, i1 false}
!1083 = !{!"../fs/ubifs/debug.c", i32 42, i32 10}
!1084 = !{ptr @.str.717, !1085, !"<string literal>", i1 false, i1 false}
!1085 = !{!"../fs/ubifs/debug.c", i32 44, i32 10}
!1086 = !{ptr @.str.718, !1087, !"<string literal>", i1 false, i1 false}
!1087 = !{!"../fs/ubifs/debug.c", i32 46, i32 10}
!1088 = !{ptr @.str.719, !1089, !"<string literal>", i1 false, i1 false}
!1089 = !{!"../fs/ubifs/debug.c", i32 32, i32 10}
!1090 = !{ptr @.str.720, !1091, !"<string literal>", i1 false, i1 false}
!1091 = !{!"../fs/ubifs/debug.c", i32 34, i32 10}
!1092 = !{ptr @.str.721, !1093, !"<string literal>", i1 false, i1 false}
!1093 = !{!"../fs/ubifs/debug.c", i32 1470, i32 15}
!1094 = !{ptr @.str.722, !1095, !"<string literal>", i1 false, i1 false}
!1095 = !{!"../fs/ubifs/debug.c", i32 1471, i32 15}
!1096 = !{ptr @.str.723, !1097, !"<string literal>", i1 false, i1 false}
!1097 = !{!"../fs/ubifs/debug.c", i32 1474, i32 16}
!1098 = !{ptr @.str.724, !1099, !"<string literal>", i1 false, i1 false}
!1099 = !{!"../fs/ubifs/debug.c", i32 1202, i32 2}
!1100 = !{ptr @.str.725, !1101, !"<string literal>", i1 false, i1 false}
!1101 = !{!"../fs/ubifs/debug.c", i32 1230, i32 16}
!1102 = !{ptr @.str.726, !1103, !"<string literal>", i1 false, i1 false}
!1103 = !{!"../fs/ubifs/debug.c", i32 1233, i32 16}
!1104 = !{ptr @.str.727, !1105, !"<string literal>", i1 false, i1 false}
!1105 = !{!"../fs/ubifs/debug.c", i32 1242, i32 16}
!1106 = !{ptr @.str.728, !1107, !"<string literal>", i1 false, i1 false}
!1107 = !{!"../fs/ubifs/debug.c", i32 1261, i32 16}
!1108 = !{ptr @.str.729, !1109, !"<string literal>", i1 false, i1 false}
!1109 = !{!"../fs/ubifs/debug.c", i32 1263, i32 16}
!1110 = !{ptr @.str.730, !1111, !"<string literal>", i1 false, i1 false}
!1111 = !{!"../fs/ubifs/debug.c", i32 1266, i32 15}
!1112 = !{ptr @.str.731, !1113, !"<string literal>", i1 false, i1 false}
!1113 = !{!"../fs/ubifs/debug.c", i32 1268, i32 15}
!1114 = !{ptr @.str.732, !1115, !"<string literal>", i1 false, i1 false}
!1115 = !{!"../fs/ubifs/debug.c", i32 2007, i32 16}
!1116 = !{ptr @.str.733, !1117, !"<string literal>", i1 false, i1 false}
!1117 = !{!"../fs/ubifs/debug.c", i32 2018, i32 16}
!1118 = !{ptr @.str.734, !1119, !"<string literal>", i1 false, i1 false}
!1119 = !{!"../fs/ubifs/debug.c", i32 2028, i32 17}
!1120 = !{ptr @.str.735, !1121, !"<string literal>", i1 false, i1 false}
!1121 = !{!"../fs/ubifs/debug.c", i32 2036, i32 16}
!1122 = !{ptr @.str.736, !1123, !"<string literal>", i1 false, i1 false}
!1123 = !{!"../fs/ubifs/debug.c", i32 2044, i32 16}
!1124 = !{ptr @.str.737, !1125, !"<string literal>", i1 false, i1 false}
!1125 = !{!"../fs/ubifs/debug.c", i32 2054, i32 3}
!1126 = !{ptr @.str.738, !1127, !"<string literal>", i1 false, i1 false}
!1127 = !{!"../fs/ubifs/debug.c", i32 2064, i32 17}
!1128 = !{ptr @.str.739, !1129, !"<string literal>", i1 false, i1 false}
!1129 = !{!"../fs/ubifs/debug.c", i32 2074, i32 17}
!1130 = !{ptr @.str.740, !1131, !"<string literal>", i1 false, i1 false}
!1131 = !{!"../fs/ubifs/debug.c", i32 2084, i32 3}
!1132 = !{ptr @.str.741, !1133, !"<string literal>", i1 false, i1 false}
!1133 = !{!"../fs/ubifs/debug.c", i32 2098, i32 17}
!1134 = !{ptr @.str.742, !1135, !"<string literal>", i1 false, i1 false}
!1135 = !{!"../fs/ubifs/debug.c", i32 2110, i32 17}
!1136 = !{ptr @.str.743, !1137, !"<string literal>", i1 false, i1 false}
!1137 = !{!"../fs/ubifs/debug.c", i32 2133, i32 15}
!1138 = !{ptr @.str.744, !1139, !"<string literal>", i1 false, i1 false}
!1139 = !{!"../fs/ubifs/debug.c", i32 1836, i32 16}
!1140 = !{ptr @.str.745, !1141, !"<string literal>", i1 false, i1 false}
!1141 = !{!"../fs/ubifs/debug.c", i32 1943, i32 16}
!1142 = !{ptr @.str.746, !1143, !"<string literal>", i1 false, i1 false}
!1143 = !{!"../fs/ubifs/debug.c", i32 1946, i32 16}
!1144 = !{ptr @.str.747, !1145, !"<string literal>", i1 false, i1 false}
!1145 = !{!"../fs/ubifs/debug.c", i32 1953, i32 16}
!1146 = !{ptr @.str.748, !1147, !"<string literal>", i1 false, i1 false}
!1147 = !{!"../fs/ubifs/debug.c", i32 1964, i32 16}
!1148 = !{ptr @.str.749, !1149, !"<string literal>", i1 false, i1 false}
!1149 = !{!"../fs/ubifs/debug.c", i32 1973, i32 16}
!1150 = !{ptr @.str.750, !1151, !"<string literal>", i1 false, i1 false}
!1151 = !{!"../fs/ubifs/debug.c", i32 2184, i32 18}
!1152 = !{ptr @.str.751, !1153, !"<string literal>", i1 false, i1 false}
!1153 = !{!"../fs/ubifs/debug.c", i32 2191, i32 18}
!1154 = !{ptr @.str.752, !1155, !"<string literal>", i1 false, i1 false}
!1155 = !{!"../fs/ubifs/debug.c", i32 2197, i32 18}
!1156 = !{ptr @.str.753, !1157, !"<string literal>", i1 false, i1 false}
!1157 = !{!"../fs/ubifs/debug.c", i32 2203, i32 18}
!1158 = !{ptr @.str.754, !1159, !"<string literal>", i1 false, i1 false}
!1159 = !{!"../fs/ubifs/debug.c", i32 2210, i32 18}
!1160 = !{ptr @.str.755, !1161, !"<string literal>", i1 false, i1 false}
!1161 = !{!"../fs/ubifs/debug.c", i32 2217, i32 17}
!1162 = !{ptr @.str.756, !1163, !"<string literal>", i1 false, i1 false}
!1163 = !{!"../fs/ubifs/debug.c", i32 2223, i32 17}
!1164 = !{ptr @.str.757, !1165, !"<string literal>", i1 false, i1 false}
!1165 = !{!"../fs/ubifs/debug.c", i32 2229, i32 17}
!1166 = !{ptr @.str.758, !1167, !"<string literal>", i1 false, i1 false}
!1167 = !{!"../fs/ubifs/debug.c", i32 2265, i32 15}
!1168 = !{ptr @.str.759, !1169, !"<string literal>", i1 false, i1 false}
!1169 = !{!"../fs/ubifs/debug.c", i32 2478, i32 2}
!1170 = !{ptr @.str.760, !1171, !"<string literal>", i1 false, i1 false}
!1171 = !{!"../fs/ubifs/debug.c", i32 2491, i32 19}
!1172 = !{ptr @.str.761, !1173, !"<string literal>", i1 false, i1 false}
!1173 = !{!"../fs/ubifs/debug.c", i32 2497, i32 19}
!1174 = !{ptr @.str.762, !1175, !"<string literal>", i1 false, i1 false}
!1175 = !{!"../fs/ubifs/debug.c", i32 2515, i32 17}
!1176 = !{ptr @.str.763, !1177, !"<string literal>", i1 false, i1 false}
!1177 = !{!"../fs/ubifs/debug.c", i32 2519, i32 17}
!1178 = !{ptr @.str.764, !1179, !"<string literal>", i1 false, i1 false}
!1179 = !{!"../fs/ubifs/debug.c", i32 2525, i32 17}
!1180 = !{ptr @.str.765, !1181, !"<string literal>", i1 false, i1 false}
!1181 = !{!"../fs/ubifs/debug.c", i32 2531, i32 17}
!1182 = !{ptr @.str.766, !1183, !"<string literal>", i1 false, i1 false}
!1183 = !{!"../fs/ubifs/debug.c", i32 2537, i32 17}
!1184 = !{ptr @.str.767, !1185, !"<string literal>", i1 false, i1 false}
!1185 = !{!"../fs/ubifs/debug.c", i32 2541, i32 17}
!1186 = !{ptr @.str.768, !1187, !"<string literal>", i1 false, i1 false}
!1187 = !{!"../fs/ubifs/debug.c", i32 2545, i32 17}
!1188 = !{ptr @.str.769, !1189, !"<string literal>", i1 false, i1 false}
!1189 = !{!"../fs/ubifs/debug.c", i32 2550, i32 17}
!1190 = !{ptr @.str.770, !1191, !"<string literal>", i1 false, i1 false}
!1191 = !{!"../fs/ubifs/debug.c", i32 2555, i32 17}
!1192 = !{ptr @.str.771, !1193, !"<string literal>", i1 false, i1 false}
!1193 = !{!"../fs/ubifs/debug.c", i32 2559, i32 17}
!1194 = !{ptr @.str.772, !1195, !"<string literal>", i1 false, i1 false}
!1195 = !{!"../fs/ubifs/debug.c", i32 2563, i32 16}
!1196 = !{ptr @.str.773, !1197, !"<string literal>", i1 false, i1 false}
!1197 = !{!"../fs/ubifs/debug.c", i32 2578, i32 16}
!1198 = !{ptr @.str.774, !1199, !"<string literal>", i1 false, i1 false}
!1199 = !{!"../fs/ubifs/debug.c", i32 2579, i32 12}
!1200 = !{ptr @.str.775, !1201, !"<string literal>", i1 false, i1 false}
!1201 = !{!"../fs/ubifs/debug.c", i32 2579, i32 22}
!1202 = !{ptr @dfs_fops, !1203, !"dfs_fops", i1 false, i1 false}
!1203 = !{!"../fs/ubifs/debug.c", i32 2800, i32 37}
!1204 = distinct !{null, !1205, !"__already_done", i1 false, i1 false}
!1205 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!1206 = distinct !{null, !1205, !"<string literal>", i1 false, i1 false}
!1207 = distinct !{null, !1208, !"<string literal>", i1 false, i1 false}
!1208 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!1209 = !{ptr @.str.778, !1210, !"<string literal>", i1 false, i1 false}
!1210 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!1211 = !{ptr @dfs_global_fops, !1212, !"dfs_global_fops", i1 false, i1 false}
!1212 = !{!"../fs/ubifs/debug.c", i32 2946, i32 37}
!1213 = !{!"sp"}
!1214 = !{i32 1, !"wchar_size", i32 2}
!1215 = !{i32 1, !"min_enum_size", i32 4}
!1216 = !{i32 8, !"branch-target-enforcement", i32 0}
!1217 = !{i32 8, !"sign-return-address", i32 0}
!1218 = !{i32 8, !"sign-return-address-all", i32 0}
!1219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1220 = !{i32 7, !"uwtable", i32 1}
!1221 = !{i32 7, !"frame-pointer", i32 2}
!1222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1223 = !{!"branch_weights", i32 1, i32 2000}
!1224 = !{i64 2155628551, i64 2155633094, i64 2155628588, i64 2155628644, i64 2155628678, i64 2155628702, i64 2155628743, i64 2155628764, i64 2155628792, i64 2155628826}
!1225 = !{!"auto-init"}
!1226 = !{i64 826058, i64 826119}
!1227 = !{i64 828790}
!1228 = !{i64 829075}
!1229 = !{i64 2152796968}
!1230 = !{i64 2152796810}
!1231 = !{i64 2152797138}
!1232 = !{i64 2150054184}
!1233 = distinct !{!1233, !1234}
!1234 = !{!"llvm.loop.peeled.count", i32 3}
!1235 = !{!"branch_weights", i32 2000, i32 1}
!1236 = !{i64 2155600538}
!1237 = !{i64 2155600690}
!1238 = !{!"branch_weights", i32 2000, i32 2002}
!1239 = !{i64 2152498461, i64 2152498486}
!1240 = !{i64 4994016}
!1241 = !{i64 4994213}
!1242 = !{i64 2152479446}
