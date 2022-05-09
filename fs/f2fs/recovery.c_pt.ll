; ModuleID = '/llk/IR_all_yes/fs/f2fs/recovery.c_pt.bc'
source_filename = "../fs/f2fs/recovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
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
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dnode_of_data = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i32 }
%struct.node_info = type { i32, i32, i32, i8, i8 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.cp_control = type { i32, i64, i64, i64 }
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
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.curseg_info = type { %struct.mutex, ptr, %struct.rw_semaphore, ptr, i8, i16, i32, i16, i32, i32, i32, i8 }
%struct.f2fs_node = type { %union.anon.88, %struct.node_footer }
%union.anon.88 = type { %struct.f2fs_inode }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.89, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.90, [5 x i32] }
%union.anon.89 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.90 = type { [923 x i32] }
%struct.node_footer = type <{ i32, i32, i32, i64, i32 }>
%struct.fsync_inode_entry = type { %struct.list_head, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.76 = type { ptr }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }
%struct.f2fs_summary = type <{ i32, %union.anon.82 }>
%union.anon.82 = type { [3 x i8] }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.anon.65 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.f2fs_filename = type { ptr, %struct.fscrypt_str, i32, %struct.fscrypt_str, %struct.fscrypt_str }
%struct.fscrypt_str = type { ptr, i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.f2fs_dir_entry = type <{ i32, i32, i16, i8 }>
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
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016recover fsync data on readonly fs\00", [60 x i8] zeroinitializer }, align 32
@__const.f2fs_recover_fsync_data.cpc = private unnamed_addr constant { i32, [4 x i8], i64, i64, i64 } { i32 8, [4 x i8] zeroinitializer, i64 0, i64 0, i64 0 }, align 8
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f2fs_fsync_inode_entry\00", [41 x i8] zeroinitializer }, align 32
@fsync_entry_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015%s: detect looped node chain, blkaddr:%u, next:%u\00", [44 x i8] zeroinitializer }, align 32
@__func__.find_fsync_dnodes = private unnamed_addr constant [18 x i8] c"find_fsync_dnodes\00", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.f2fs_kmem_cache_alloc = private unnamed_addr constant [22 x i8] c"f2fs_kmem_cache_alloc\00", align 1
@f2fs_kmem_cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.f2fs_kmem_cache_alloc, ptr @.str.9, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._entry_ptr = internal global ptr @f2fs_kmem_cache_alloc._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<encrypted>\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015recover_inode: ino = %x, name = %s, inline = %x\00", [46 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/f2fs/recovery.c\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015%s: ino = %x, name = %s, dir = %lx, err = %d\00", [49 x i8] zeroinitializer }, align 32
@__func__.recover_dentry = private unnamed_addr constant [15 x i8] c"recover_dentry\00", align 1
@f2fs_cf_name_slab = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Inconsistent ofs_of_node, ino:%lu, ofs:%u, %u\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015recover_data: ino = %lx (i_size: %s) recovered = %d, err = %d\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recover\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 785, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 876, i32 44 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"fsync_entry_slab\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 47, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 419, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 260, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 414, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 717, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 2650, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 337, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 341, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 271, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 200, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 238, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 606, i32 3 }
@___asan_gen_.81 = private constant [22 x i8] c"../fs/f2fs/recovery.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 694, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 788, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @f2fs_kmem_cache_alloc._entry, ptr @f2fs_kmem_cache_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @fsync_entry_slab, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsync_entry_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_space_for_roll_forward(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_valid_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 70
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %alloc_valid_block_count) #9
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i, i64 0) #9
  %last_valid_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 63
  %1 = ptrtoint ptr %last_valid_block_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_valid_block_count, align 4
  %conv = zext i32 %2 to i64
  %add = add nuw i64 %0, %conv
  %user_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 60
  %3 = ptrtoint ptr %user_block_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %user_block_count, align 8
  %conv1 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv1)
  %cmp = icmp sle i64 %add, %conv1
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_recover_fsync_data(ptr noundef %sbi, i1 noundef zeroext %check_only) local_unnamed_addr #0 align 64 {
entry:
  %tdn.i.i.i = alloca %struct.dnode_of_data, align 4
  %dn.i.i = alloca %struct.dnode_of_data, align 4
  %ni.i.i = alloca %struct.node_info, align 4
  %attr.i.i.i = alloca %struct.iattr, align 8
  %inode_list = alloca %struct.list_head, align 4
  %tmp_inode_list = alloca %struct.list_head, align 4
  %dir_list = alloca %struct.list_head, align 4
  %cpc = alloca %struct.cp_control, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inode_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %inode_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_inode_list) #9
  %1 = getelementptr inbounds %struct.list_head, ptr %tmp_inode_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dir_list) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %dir_list, i32 0, i32 1
  %3 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sbi, align 8
  %s_flags1 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags1, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str) #9
  %7 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sbi, align 8
  %s_flags3 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags3, align 4
  %and4 = and i32 %10, -2
  store i32 %and4, ptr %s_flags3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @f2fs_enable_quota_files(ptr noundef %sbi, i1 noundef zeroext %tobool) #9
  %11 = ptrtoint ptr %inode_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %inode_list, ptr %inode_list, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %inode_list, ptr %0, align 4
  %13 = ptrtoint ptr %tmp_inode_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tmp_inode_list, ptr %tmp_inode_list, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tmp_inode_list, ptr %1, align 4
  %15 = ptrtoint ptr %dir_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %dir_list, ptr %dir_list, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dir_list, ptr %2, align 4
  %cp_global_sem = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 19
  call void @down_write(ptr noundef %cp_global_sem) #9
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %17 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sm_info.i.i, align 8
  %main_segments.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %main_segments.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %main_segments.i, align 4
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %21 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i = mul i32 %22, %20
  %total_valid_block_count.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 61
  %23 = ptrtoint ptr %total_valid_block_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_valid_block_count.i.i, align 4
  %sub.i = sub i32 %mul.i, %24
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %18, i32 0, i32 3
  %25 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %curseg_array.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %seg0_blkaddr.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %18, i32 0, i32 5
  %27 = ptrtoint ptr %seg0_blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seg0_blkaddr.i, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %29 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %raw_super.i.i, align 8
  %segment0_blkaddr.i = getelementptr inbounds %struct.f2fs_super_block, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %segment0_blkaddr.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %segment0_blkaddr.i, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %28, %cond.true.i ], [ %33, %cond.false.i ]
  %segno.i = getelementptr %struct.curseg_info, ptr %26, i32 4, i32 6
  %34 = ptrtoint ptr %segno.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %segno.i, align 4
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %18, i32 0, i32 1
  %36 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_info.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add.i = add i32 %39, %35
  %log_blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %40 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %log_blocks_per_seg.i, align 8
  %shl.i = shl i32 %add.i, %41
  %add7.i = add i32 %shl.i, %cond.i
  %next_blkoff.i = getelementptr %struct.curseg_info, ptr %26, i32 4, i32 7
  %42 = ptrtoint ptr %next_blkoff.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_blkoff.i, align 4
  %conv.i = zext i16 %43 to i32
  %add8.i = add i32 %add7.i, %conv.i
  %call10177.i = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %add8.i, i32 noundef 5) #9
  br i1 %call10177.i, label %if.end.preheader.i, label %cond.end.i.lor.lhs.false_crit_edge

cond.end.i.lor.lhs.false_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end.preheader.i:                               ; preds = %cond.end.i
  %umax.i = call i32 @llvm.umax.i32(i32 %sub.i, i32 1) #9
  %44 = add i32 %umax.i, -1
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup67.i.if.end.i_crit_edge, %if.end.preheader.i
  %loop_cnt.0179.i = phi i32 [ %inc.i, %cleanup67.i.if.end.i_crit_edge ], [ 0, %if.end.preheader.i ]
  %blkaddr.0178.i = phi i32 [ %83, %cleanup67.i.if.end.i_crit_edge ], [ %add8.i, %if.end.preheader.i ]
  %call11.i = call ptr @f2fs_get_tmp_page(ptr noundef %sbi, i32 noundef %blkaddr.0178.i) #9
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.find_fsync_dnodes.exit_crit_edge, label %if.end15.i

if.end.i.find_fsync_dnodes.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_fsync_dnodes.exit

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = call fastcc zeroext i1 @is_recoverable_dnode(ptr noundef %call11.i) #9
  br i1 %call16.i, label %if.end18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @f2fs_put_page(ptr noundef %call11.i, i32 noundef 1) #9
  br label %lor.lhs.false

if.end18.i:                                       ; preds = %if.end15.i
  %call.i.i.i = call ptr @page_address(ptr noundef %call11.i) #9
  %flag.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %flag.i.i, align 1
  %47 = and i32 %46, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool20.not.i = icmp eq i32 %47, 0
  br i1 %tobool20.not.i, label %if.end18.i.next.i_crit_edge, label %if.end22.i

if.end18.i.next.i_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.i

if.end22.i:                                       ; preds = %if.end18.i
  %call.i.i126.i = call ptr @page_address(ptr noundef %call11.i) #9
  %ino.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i126.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %ino.i.i, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end22.i
  %entry1.0.in.i.i = phi ptr [ %inode_list, %if.end22.i ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %51 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %inode_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then26.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then26.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %inode.i.i = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %inode.i.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_ino.i.i, align 8
  %cmp2.i.i = icmp eq i32 %55, %50
  br i1 %cmp2.i.i, label %get_fsync_inode.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_fsync_inode.exit.i:                           ; preds = %for.body.i.i
  %tobool25.not.i = icmp eq ptr %entry1.0.i.i, null
  br i1 %tobool25.not.i, label %get_fsync_inode.exit.i.if.then26.i_crit_edge, label %get_fsync_inode.exit.i.if.end49.i_crit_edge

get_fsync_inode.exit.i.if.end49.i_crit_edge:      ; preds = %get_fsync_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

get_fsync_inode.exit.i.if.then26.i_crit_edge:     ; preds = %get_fsync_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

if.then26.i:                                      ; preds = %get_fsync_inode.exit.i.if.then26.i_crit_edge, %for.cond.i.i.if.then26.i_crit_edge
  br i1 %check_only, label %if.then26.i.if.end38.i_crit_edge, label %land.lhs.true.i

if.then26.i.if.end38.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.then26.i
  %call.i.i127.i = call ptr @page_address(ptr noundef %call11.i) #9
  %footer.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i127.i, i32 0, i32 1
  %56 = ptrtoint ptr %footer.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %footer.i.i, align 1
  %ino.i128.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i127.i, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %ino.i128.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %ino.i128.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i129.i = icmp eq i32 %57, %59
  br i1 %cmp.i129.i, label %land.lhs.true30.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true30.i:                                ; preds = %land.lhs.true.i
  %call.i.i130.i = call ptr @page_address(ptr noundef %call11.i) #9
  %flag.i131.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i130.i, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %flag.i131.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %flag.i131.i, align 1
  %62 = and i32 %61, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool32.not.i = icmp eq i32 %62, 0
  br i1 %tobool32.not.i, label %land.lhs.true30.i.if.end38.i_crit_edge, label %if.then33.i

land.lhs.true30.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then33.i:                                      ; preds = %land.lhs.true30.i
  %call34.i = call i32 @f2fs_recover_inode_page(ptr noundef %sbi, ptr noundef %call11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.if.end38.i_crit_edge, label %skip.thread

if.then33.i.if.end38.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

skip.thread:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @f2fs_put_page(ptr noundef %call11.i, i32 noundef 1) #9
  br label %lor.end

if.end38.i:                                       ; preds = %if.then33.i.if.end38.i_crit_edge, %land.lhs.true30.i.if.end38.i_crit_edge, %land.lhs.true.i.if.end38.i_crit_edge, %if.then26.i.if.end38.i_crit_edge
  %quota_inode.0.off0.i = phi i1 [ false, %if.then26.i.if.end38.i_crit_edge ], [ false, %land.lhs.true30.i.if.end38.i_crit_edge ], [ false, %land.lhs.true.i.if.end38.i_crit_edge ], [ true, %if.then33.i.if.end38.i_crit_edge ]
  %call.i.i133.i = call ptr @page_address(ptr noundef %call11.i) #9
  %ino.i134.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i133.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %ino.i134.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %ino.i134.i, align 1
  %65 = call i32 @llvm.bswap.i32(i32 %64) #9
  %call41.i = call fastcc ptr @add_fsync_inode(ptr noundef %sbi, ptr noundef nonnull %inode_list, i32 noundef %65, i1 noundef zeroext %quota_inode.0.off0.i) #9
  %cmp.i135.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135.i, label %if.then43.i, label %if.end38.i.if.end49.i_crit_edge

if.end38.i.if.end49.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then43.i:                                      ; preds = %if.end38.i
  %cmp.i = icmp eq ptr %call41.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i, label %if.then43.i.next.i_crit_edge, label %if.end47.i

if.then43.i.next.i_crit_edge:                     ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.i

if.end47.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @f2fs_put_page(ptr noundef %call11.i, i32 noundef 1) #9
  br label %find_fsync_dnodes.exit

if.end49.i:                                       ; preds = %if.end38.i.if.end49.i_crit_edge, %get_fsync_inode.exit.i.if.end49.i_crit_edge
  %entry9.1.i = phi ptr [ %entry1.0.i.i, %get_fsync_inode.exit.i.if.end49.i_crit_edge ], [ %call41.i, %if.end38.i.if.end49.i_crit_edge ]
  %blkaddr50.i = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry9.1.i, i32 0, i32 2
  %66 = ptrtoint ptr %blkaddr50.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %blkaddr.0178.i, ptr %blkaddr50.i, align 4
  %call.i.i136.i = call ptr @page_address(ptr noundef %call11.i) #9
  %footer.i137.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i136.i, i32 0, i32 1
  %67 = ptrtoint ptr %footer.i137.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %footer.i137.i, align 1
  %ino.i138.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i136.i, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %ino.i138.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %ino.i138.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.i139.i = icmp eq i32 %68, %70
  br i1 %cmp.i139.i, label %land.lhs.true53.i, label %if.end49.i.next.i_crit_edge

if.end49.i.next.i_crit_edge:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.i

land.lhs.true53.i:                                ; preds = %if.end49.i
  %call.i.i140.i = call ptr @page_address(ptr noundef %call11.i) #9
  %flag.i141.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i140.i, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %flag.i141.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %flag.i141.i, align 1
  %73 = and i32 %72, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool55.not.i = icmp eq i32 %73, 0
  br i1 %tobool55.not.i, label %land.lhs.true53.i.next.i_crit_edge, label %if.then56.i

land.lhs.true53.i.next.i_crit_edge:               ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.i

if.then56.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_dentry.i = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry9.1.i, i32 0, i32 3
  %74 = ptrtoint ptr %last_dentry.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %blkaddr.0178.i, ptr %last_dentry.i, align 4
  br label %next.i

next.i:                                           ; preds = %if.then56.i, %land.lhs.true53.i.next.i_crit_edge, %if.end49.i.next.i_crit_edge, %if.then43.i.next.i_crit_edge, %if.end18.i.next.i_crit_edge
  %inc.i = add nuw i32 %loop_cnt.0179.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %loop_cnt.0179.i, i32 %44)
  %exitcond.not.i = icmp eq i32 %loop_cnt.0179.i, %44
  br i1 %exitcond.not.i, label %next.i.if.then63.i_crit_edge, label %lor.lhs.false.i

next.i.if.then63.i_crit_edge:                     ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i

lor.lhs.false.i:                                  ; preds = %next.i
  %call.i.i143.i = call ptr @page_address(ptr noundef %call11.i) #9
  %next_blkaddr.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i143.i, i32 0, i32 1, i32 4
  %75 = ptrtoint ptr %next_blkaddr.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %next_blkaddr.i.i, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %blkaddr.0178.i, i32 %77)
  %cmp61.i = icmp eq i32 %blkaddr.0178.i, %77
  br i1 %cmp61.i, label %lor.lhs.false.i.if.then63.i_crit_edge, label %cleanup67.i

lor.lhs.false.i.if.then63.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i

if.then63.i:                                      ; preds = %lor.lhs.false.i.if.then63.i_crit_edge, %next.i.if.then63.i_crit_edge
  %call.i.i144.i = call ptr @page_address(ptr noundef %call11.i) #9
  %next_blkaddr.i145.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i144.i, i32 0, i32 1, i32 4
  %78 = ptrtoint ptr %next_blkaddr.i145.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %next_blkaddr.i145.i, align 1
  %80 = call i32 @llvm.bswap.i32(i32 %79) #9
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.find_fsync_dnodes, i32 noundef %blkaddr.0178.i, i32 noundef %80) #9
  call fastcc void @f2fs_put_page(ptr noundef %call11.i, i32 noundef 1) #9
  br label %skip

cleanup67.i:                                      ; preds = %lor.lhs.false.i
  %call.i.i146.i = call ptr @page_address(ptr noundef %call11.i) #9
  %next_blkaddr.i147.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i146.i, i32 0, i32 1, i32 4
  %81 = ptrtoint ptr %next_blkaddr.i147.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %next_blkaddr.i147.i, align 1
  %83 = call i32 @llvm.bswap.i32(i32 %82) #9
  call fastcc void @f2fs_put_page(ptr noundef %call11.i, i32 noundef 1) #9
  call void @f2fs_ra_meta_pages_cond(ptr noundef %sbi, i32 noundef %83) #9
  %call10.i = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %83, i32 noundef 5) #9
  br i1 %call10.i, label %cleanup67.i.if.end.i_crit_edge, label %cleanup67.i.lor.lhs.false_crit_edge

cleanup67.i.lor.lhs.false_crit_edge:              ; preds = %cleanup67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

cleanup67.i.if.end.i_crit_edge:                   ; preds = %cleanup67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

find_fsync_dnodes.exit:                           ; preds = %if.end47.i, %if.end.i.find_fsync_dnodes.exit_crit_edge
  %retval.2.i.in = phi ptr [ %call41.i, %if.end47.i ], [ %call11.i, %if.end.i.find_fsync_dnodes.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  br label %skip

lor.lhs.false:                                    ; preds = %cleanup67.i.lor.lhs.false_crit_edge, %if.then17.i, %cond.end.i.lor.lhs.false_crit_edge
  %84 = ptrtoint ptr %inode_list to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %inode_list, align 4
  %cmp.i143.not = icmp eq ptr %85, %inode_list
  %brmerge = or i1 %cmp.i143.not, %check_only
  %not.cmp.i143.not = xor i1 %cmp.i143.not, true
  %.mux = zext i1 %not.cmp.i143.not to i32
  br i1 %brmerge, label %lor.lhs.false.skip_crit_edge, label %if.end16

lor.lhs.false.skip_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

if.end16:                                         ; preds = %lor.lhs.false
  %86 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i145 = getelementptr inbounds %struct.f2fs_sm_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %curseg_array.i.i145 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %curseg_array.i.i145, align 4
  %tobool.not.i146 = icmp eq ptr %87, null
  br i1 %tobool.not.i146, label %cond.false.i151, label %cond.true.i148

cond.true.i148:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %seg0_blkaddr.i147 = getelementptr inbounds %struct.f2fs_sm_info, ptr %87, i32 0, i32 5
  %90 = ptrtoint ptr %seg0_blkaddr.i147 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %seg0_blkaddr.i147, align 4
  br label %cond.end.i160

cond.false.i151:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %raw_super.i.i149 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %92 = ptrtoint ptr %raw_super.i.i149 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %raw_super.i.i149, align 8
  %segment0_blkaddr.i150 = getelementptr inbounds %struct.f2fs_super_block, ptr %93, i32 0, i32 18
  %94 = ptrtoint ptr %segment0_blkaddr.i150 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %segment0_blkaddr.i150, align 1
  %96 = call i32 @llvm.bswap.i32(i32 %95) #9
  br label %cond.end.i160

cond.end.i160:                                    ; preds = %cond.false.i151, %cond.true.i148
  %cond.i152 = phi i32 [ %91, %cond.true.i148 ], [ %96, %cond.false.i151 ]
  %segno.i153 = getelementptr %struct.curseg_info, ptr %89, i32 4, i32 6
  %97 = ptrtoint ptr %segno.i153 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %segno.i153, align 4
  %free_info.i.i154 = getelementptr inbounds %struct.f2fs_sm_info, ptr %87, i32 0, i32 1
  %99 = ptrtoint ptr %free_info.i.i154 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %free_info.i.i154, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %add.i155 = add i32 %102, %98
  %103 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %log_blocks_per_seg.i, align 8
  %shl.i157 = shl i32 %add.i155, %104
  %add5.i = add i32 %shl.i157, %cond.i152
  %next_blkoff.i158 = getelementptr %struct.curseg_info, ptr %89, i32 4, i32 7
  %105 = ptrtoint ptr %next_blkoff.i158 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %next_blkoff.i158, align 4
  %conv.i159 = zext i16 %106 to i32
  %add6.i = add i32 %add5.i, %conv.i159
  %call8161.i = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %add6.i, i32 noundef 5) #9
  br i1 %call8161.i, label %if.end.lr.ph.i, label %cond.end.i160.recover_data.exit.thread241_crit_edge

cond.end.i160.recover_data.exit.thread241_crit_edge: ; preds = %cond.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %recover_data.exit.thread241

if.end.lr.ph.i:                                   ; preds = %cond.end.i160
  %ia_uid.i.i.i = getelementptr inbounds %struct.iattr, ptr %attr.i.i.i, i32 0, i32 2
  %ia_gid.i.i.i = getelementptr inbounds %struct.iattr, ptr %attr.i.i.i, i32 0, i32 3
  %107 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 1
  %108 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 2
  %109 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 3
  %110 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 4
  %111 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 5
  %ino.i110.i = getelementptr inbounds %struct.node_info, ptr %ni.i.i, i32 0, i32 1
  %raw_super.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %112 = getelementptr inbounds %struct.dnode_of_data, ptr %tdn.i.i.i, i32 0, i32 1
  %113 = getelementptr inbounds %struct.dnode_of_data, ptr %tdn.i.i.i, i32 0, i32 2
  %114 = getelementptr inbounds %struct.dnode_of_data, ptr %tdn.i.i.i, i32 0, i32 3
  %115 = getelementptr inbounds %struct.dnode_of_data, ptr %tdn.i.i.i, i32 0, i32 4
  %116 = getelementptr inbounds %struct.dnode_of_data, ptr %tdn.i.i.i, i32 0, i32 9
  %version.i.i = getelementptr inbounds %struct.node_info, ptr %ni.i.i, i32 0, i32 3
  br label %if.end.i162

if.end.i162:                                      ; preds = %cleanup.i.if.end.i162_crit_edge, %if.end.lr.ph.i
  %blkaddr.0162.i = phi i32 [ %add6.i, %if.end.lr.ph.i ], [ %599, %cleanup.i.if.end.i162_crit_edge ]
  call void @f2fs_ra_meta_pages_cond(ptr noundef %sbi, i32 noundef %blkaddr.0162.i) #9
  %call9.i = call ptr @f2fs_get_tmp_page(ptr noundef %sbi, i32 noundef %blkaddr.0162.i) #9
  %cmp.i.i161 = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i161, label %while.end.i, label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i162
  %call14.i = call fastcc zeroext i1 @is_recoverable_dnode(ptr noundef %call9.i) #9
  br i1 %call14.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @f2fs_put_page(ptr noundef %call9.i, i32 noundef 1) #9
  br label %recover_data.exit.thread241

if.end16.i:                                       ; preds = %if.end13.i
  %call.i.i.i163 = call ptr @page_address(ptr noundef %call9.i) #9
  %ino.i.i164 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i163, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %ino.i.i164 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %ino.i.i164, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #9
  br label %for.cond.i.i168

for.cond.i.i168:                                  ; preds = %for.body.i.i172.for.cond.i.i168_crit_edge, %if.end16.i
  %entry1.0.in.i.i165 = phi ptr [ %inode_list, %if.end16.i ], [ %entry1.0.i.i166, %for.body.i.i172.for.cond.i.i168_crit_edge ]
  %120 = ptrtoint ptr %entry1.0.in.i.i165 to i32
  call void @__asan_load4_noabort(i32 %120)
  %entry1.0.i.i166 = load ptr, ptr %entry1.0.in.i.i165, align 4
  %cmp.not.i.i167 = icmp eq ptr %entry1.0.i.i166, %inode_list
  br i1 %cmp.not.i.i167, label %for.cond.i.i168.cleanup.i_crit_edge, label %for.body.i.i172

for.cond.i.i168.cleanup.i_crit_edge:              ; preds = %for.cond.i.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.body.i.i172:                                  ; preds = %for.cond.i.i168
  %inode.i.i169 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0.i.i166, i32 0, i32 1
  %121 = ptrtoint ptr %inode.i.i169 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %inode.i.i169, align 4
  %i_ino.i.i170 = getelementptr inbounds %struct.inode, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %i_ino.i.i170 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %i_ino.i.i170, align 8
  %cmp2.i.i171 = icmp eq i32 %124, %119
  br i1 %cmp2.i.i171, label %get_fsync_inode.exit.i173, label %for.body.i.i172.for.cond.i.i168_crit_edge

for.body.i.i172.for.cond.i.i168_crit_edge:        ; preds = %for.body.i.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i168

get_fsync_inode.exit.i173:                        ; preds = %for.body.i.i172
  %inode.i.i169.le = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0.i.i166, i32 0, i32 1
  %tobool19.not.i = icmp eq ptr %entry1.0.i.i166, null
  br i1 %tobool19.not.i, label %get_fsync_inode.exit.i173.cleanup.i_crit_edge, label %if.end21.i

get_fsync_inode.exit.i173.cleanup.i_crit_edge:    ; preds = %get_fsync_inode.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end21.i:                                       ; preds = %get_fsync_inode.exit.i173
  %call.i.i95.i = call ptr @page_address(ptr noundef %call9.i) #9
  %footer.i.i174 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i95.i, i32 0, i32 1
  %125 = ptrtoint ptr %footer.i.i174 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %footer.i.i174, align 1
  %ino.i96.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i95.i, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %ino.i96.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %ino.i96.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp.i97.i = icmp eq i32 %126, %128
  br i1 %cmp.i97.i, label %if.then23.i, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end21.i
  %129 = ptrtoint ptr %inode.i.i169.le to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %inode.i.i169.le, align 4
  %call.i.i98.i = call ptr @page_address(ptr noundef %call9.i) #9
  %131 = ptrtoint ptr %call.i.i98.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %call.i.i98.i, align 1
  %133 = call i16 @llvm.bswap.i16(i16 %132) #9
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %130, align 8
  %call.i.i.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr.i.i.i) #9
  %i_uid1.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i, i32 0, i32 3
  %135 = ptrtoint ptr %i_uid1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %i_uid1.i.i.i, align 1
  %137 = call i32 @llvm.bswap.i32(i32 %136) #9
  %i_gid2.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i, i32 0, i32 4
  %138 = ptrtoint ptr %i_gid2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %i_gid2.i.i.i, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139) #9
  %141 = call ptr @memset(ptr %attr.i.i.i, i32 0, i32 80)
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 8
  %142 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %143, i32 0, i32 53
  %144 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call3.i.i.i = call i32 @make_kuid(ptr noundef %145, i32 noundef %137) #9
  %146 = ptrtoint ptr %ia_uid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call3.i.i.i, ptr %ia_uid.i.i.i, align 8
  %147 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns6.i.i.i = getelementptr inbounds %struct.super_block, ptr %148, i32 0, i32 53
  %149 = ptrtoint ptr %s_user_ns6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_user_ns6.i.i.i, align 8
  %call7.i.i.i = call i32 @make_kgid(ptr noundef %150, i32 noundef %140) #9
  %151 = ptrtoint ptr %ia_gid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call7.i.i.i, ptr %ia_gid.i.i.i, align 4
  %i_uid10.i.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 2
  %152 = ptrtoint ptr %i_uid10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %.unpack.i.i.i = load i32, ptr %i_uid10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %.unpack.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call3.i.i.i, %.unpack.i.i.i
  %153 = ptrtoint ptr %attr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr.i.pr.i.i = load i32, ptr %attr.i.i.i, align 8
  br i1 %cmp.i.i.i.i, label %if.then23.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then23.i.if.end.i.i.i_crit_edge:               ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %.pr.i.pr.i.i, 2
  %154 = ptrtoint ptr %attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or.i.i.i, ptr %attr.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then23.i.if.end.i.i.i_crit_edge
  %.pr.i.i.i = phi i32 [ %or.i.i.i, %if.then.i.i.i ], [ %.pr.i.pr.i.i, %if.then23.i.if.end.i.i.i_crit_edge ]
  %i_gid15.i.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 3
  %155 = ptrtoint ptr %i_gid15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %.unpack45.i.i.i = load i32, ptr %i_gid15.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i.i, i32 %.unpack45.i.i.i)
  %cmp.i46.i.i.i = icmp eq i32 %call7.i.i.i, %.unpack45.i.i.i
  br i1 %cmp.i46.i.i.i, label %if.end22.i.i.i, label %if.end22.thread.i.i.i

if.end22.thread.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or21.i.i.i = or i32 %.pr.i.i.i, 4
  %156 = ptrtoint ptr %attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or21.i.i.i, ptr %attr.i.i.i, align 8
  br label %if.end25.i.i.i

if.end22.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end22.i.i.i.if.end.i.i_crit_edge, label %if.end22.i.i.i.if.end25.i.i.i_crit_edge

if.end22.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i.i

if.end22.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end25.i.i.i:                                   ; preds = %if.end22.i.i.i.if.end25.i.i.i_crit_edge, %if.end22.thread.i.i.i
  %call26.i.i.i = call i32 @dquot_transfer(ptr noundef %130, ptr noundef nonnull %attr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %if.end25.i.i.i.if.end.i.i_crit_edge, label %recover_quota_data.exit.i.i

if.end25.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

recover_quota_data.exit.i.i:                      ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 33
  %159 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %s_flag.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %160, i32 0, i32 5
  call void @_set_bit(i32 noundef 12, ptr noundef %s_flag.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i.i.i) #9
  br label %do.body33.sink.split

if.end.i.i:                                       ; preds = %if.end25.i.i.i.if.end.i.i_crit_edge, %if.end22.i.i.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i.i.i) #9
  %i_uid.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 3
  %161 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %i_uid.i.i, align 1
  %163 = call i32 @llvm.bswap.i32(i32 %162) #9
  %164 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %165, i32 0, i32 53
  %166 = ptrtoint ptr %s_user_ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %s_user_ns.i.i.i.i, align 8
  %call1.i.i.i = call i32 @make_kuid(ptr noundef %167, i32 noundef %163) #9
  %168 = ptrtoint ptr %i_uid10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call1.i.i.i, ptr %i_uid10.i.i.i, align 4
  %i_gid.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 4
  %169 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %i_gid.i.i, align 1
  %171 = call i32 @llvm.bswap.i32(i32 %170) #9
  %172 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i108.i.i = getelementptr inbounds %struct.super_block, ptr %173, i32 0, i32 53
  %174 = ptrtoint ptr %s_user_ns.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %s_user_ns.i.i108.i.i, align 8
  %call1.i109.i.i = call i32 @make_kgid(ptr noundef %175, i32 noundef %171) #9
  %176 = ptrtoint ptr %i_gid15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %call1.i109.i.i, ptr %i_gid15.i.i.i, align 8
  %i_inline.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 2
  %177 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %i_inline.i.i, align 1
  %179 = and i8 %178, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool3.not.i.i = icmp eq i8 %179, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end29.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end29.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %180 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %181, i32 0, i32 33
  %182 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %raw_super.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %raw_super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %raw_super.i.i.i, align 8
  %feature.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %185, i32 0, i32 34
  %186 = ptrtoint ptr %feature.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %feature.i.i.i, align 1
  %188 = and i32 %187, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool7.not.i.i = icmp eq i32 %188, 0
  br i1 %tobool7.not.i.i, label %if.then4.i.i.if.end29.i.i_crit_edge, label %land.lhs.true.i.i

if.then4.i.i.if.end29.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

land.lhs.true.i.i:                                ; preds = %if.then4.i.i
  %189 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 23
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %191 = load i16, ptr %189, align 1
  %192 = call i16 @llvm.bswap.i16(i16 %191) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %192)
  %cmp.i99.i = icmp ugt i16 %192, 7
  br i1 %cmp.i99.i, label %if.then10.i.i, label %land.lhs.true.i.i.if.end29.i.i_crit_edge

land.lhs.true.i.i.if.end29.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  %i_projid11.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 23, i32 0, i32 1
  %193 = ptrtoint ptr %i_projid11.i.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %i_projid11.i.i, align 1
  %195 = call i32 @llvm.bswap.i32(i32 %194) #9
  %call12.i.i = call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %195) #9
  %i_projid14.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %130, i32 0, i32 30
  %196 = ptrtoint ptr %i_projid14.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %.unpack.i.i = load i32, ptr %i_projid14.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i.i, i32 %.unpack.i.i)
  %cmp.i.i.i = icmp eq i32 %call12.i.i, %.unpack.i.i
  br i1 %cmp.i.i.i, label %if.then10.i.i.if.end29.i.i_crit_edge, label %if.then18.i.i

if.then10.i.i.if.end29.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then18.i.i:                                    ; preds = %if.then10.i.i
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %call12.i.i, 0
  %call20.i.i = call i32 @f2fs_transfer_project_quota(ptr noundef %130, [1 x i32] %.fca.0.insert.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.then18.i.i.do.body33.sink.split_crit_edge

if.then18.i.i.do.body33.sink.split_crit_edge:     ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33.sink.split

if.end23.i.i:                                     ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %i_projid14.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call12.i.i, ptr %i_projid14.i.i, align 8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end23.i.i, %if.then10.i.i.if.end29.i.i_crit_edge, %land.lhs.true.i.i.if.end29.i.i_crit_edge, %if.then4.i.i.if.end29.i.i_crit_edge, %if.end.i.i.if.end29.i.i_crit_edge
  %i_size.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 6
  %198 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 8)
  %199 = load i64, ptr %i_size.i.i, align 1
  %200 = call i64 @llvm.bswap.i64(i64 %199) #9
  call fastcc void @f2fs_i_size_write(ptr noundef %130, i64 noundef %200) #9
  %i_atime.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 8
  %201 = ptrtoint ptr %i_atime.i.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 8)
  %202 = load i64, ptr %i_atime.i.i, align 1
  %203 = call i64 @llvm.bswap.i64(i64 %202) #9
  %i_atime30.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 15
  %204 = ptrtoint ptr %i_atime30.i.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %203, ptr %i_atime30.i.i, align 8
  %i_ctime.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 9
  %205 = ptrtoint ptr %i_ctime.i.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 8)
  %206 = load i64, ptr %i_ctime.i.i, align 1
  %207 = call i64 @llvm.bswap.i64(i64 %206) #9
  %i_ctime31.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 17
  %208 = ptrtoint ptr %i_ctime31.i.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %207, ptr %i_ctime31.i.i, align 8
  %i_mtime.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 10
  %209 = ptrtoint ptr %i_mtime.i.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 8)
  %210 = load i64, ptr %i_mtime.i.i, align 1
  %211 = call i64 @llvm.bswap.i64(i64 %210) #9
  %i_mtime33.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 16
  %212 = ptrtoint ptr %i_mtime33.i.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %211, ptr %i_mtime33.i.i, align 8
  %i_atime_nsec.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 11
  %213 = ptrtoint ptr %i_atime_nsec.i.i to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %i_atime_nsec.i.i, align 1
  %215 = call i32 @llvm.bswap.i32(i32 %214) #9
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 15, i32 1
  %216 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %tv_nsec.i.i, align 8
  %i_ctime_nsec.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 12
  %217 = ptrtoint ptr %i_ctime_nsec.i.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %i_ctime_nsec.i.i, align 1
  %219 = call i32 @llvm.bswap.i32(i32 %218) #9
  %tv_nsec37.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 17, i32 1
  %220 = ptrtoint ptr %tv_nsec37.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %tv_nsec37.i.i, align 8
  %i_mtime_nsec.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 13
  %221 = ptrtoint ptr %i_mtime_nsec.i.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %i_mtime_nsec.i.i, align 1
  %223 = call i32 @llvm.bswap.i32(i32 %222) #9
  %tv_nsec39.i.i = getelementptr inbounds %struct.inode, ptr %130, i32 0, i32 16, i32 1
  %224 = ptrtoint ptr %tv_nsec39.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %tv_nsec39.i.i, align 8
  %i_advise.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 1
  %225 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %i_advise.i.i, align 1
  %i_advise41.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %130, i32 0, i32 2
  %227 = ptrtoint ptr %i_advise41.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %i_advise41.i.i, align 4
  %i_flags.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 17
  %228 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %i_flags.i.i, align 1
  %230 = call i32 @llvm.bswap.i32(i32 %229) #9
  %i_flags43.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %130, i32 0, i32 1
  %231 = ptrtoint ptr %i_flags43.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %i_flags43.i.i, align 8
  call void @f2fs_set_inode_flags(ptr noundef %130) #9
  %232 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i98.i, i32 0, i32 15
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %232, align 1
  %235 = call i16 @llvm.bswap.i16(i16 %234) #9
  %conv44.i.i = zext i16 %235 to i32
  %i_gc_failures.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %130, i32 0, i32 5
  %236 = ptrtoint ptr %i_gc_failures.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %conv44.i.i, ptr %i_gc_failures.i.i, align 4
  %237 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %i_inline.i.i, align 1
  %239 = and i8 %238, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool.not.i111.i.i = icmp eq i8 %239, 0
  %flags.i12.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %130, i32 0, i32 8
  br i1 %tobool.not.i111.i.i, label %if.else.i.i.i, label %if.then.i112.i.i

if.then.i112.i.i:                                 ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 28, ptr noundef %flags.i12.i.i.i) #9
  br label %if.end.i113.i.i

if.else.i.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 28, ptr noundef %flags.i12.i.i.i) #9
  br label %if.end.i113.i.i

if.end.i113.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i112.i.i
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %130, i1 noundef zeroext true) #9
  %240 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %i_inline.i.i, align 1
  %242 = and i8 %241, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool4.not.i.i.i = icmp eq i8 %242, 0
  br i1 %tobool4.not.i.i.i, label %if.else6.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i113.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 20, ptr noundef %flags.i12.i.i.i) #9
  br label %recover_inline_flags.exit.i.i

if.else6.i.i.i:                                   ; preds = %if.end.i113.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 20, ptr noundef %flags.i12.i.i.i) #9
  br label %recover_inline_flags.exit.i.i

recover_inline_flags.exit.i.i:                    ; preds = %if.else6.i.i.i, %if.then5.i.i.i
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %130, i1 noundef zeroext true) #9
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %130, i1 noundef zeroext true) #9
  %243 = ptrtoint ptr %i_advise41.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %i_advise41.i.i, align 4
  %245 = and i8 %244, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool47.not.i.i = icmp eq i8 %245, 0
  br i1 %tobool47.not.i.i, label %if.else.i.i, label %recover_inline_flags.exit.i.i.recover_inode.exit.i_crit_edge

recover_inline_flags.exit.i.i.recover_inode.exit.i_crit_edge: ; preds = %recover_inline_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recover_inode.exit.i

if.else.i.i:                                      ; preds = %recover_inline_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i115.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %i_name.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i115.i.i, i32 0, i32 20
  br label %recover_inode.exit.i

recover_inode.exit.i:                             ; preds = %if.else.i.i, %recover_inline_flags.exit.i.i.recover_inode.exit.i_crit_edge
  %name.0.i.i = phi ptr [ %i_name.i.i, %if.else.i.i ], [ @.str.11, %recover_inline_flags.exit.i.i.recover_inode.exit.i_crit_edge ]
  %246 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i117.i.i = getelementptr inbounds %struct.super_block, ptr %247, i32 0, i32 33
  %248 = ptrtoint ptr %s_fs_info.i.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %s_fs_info.i.i117.i.i, align 16
  %call.i.i118.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %ino.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i118.i.i, i32 0, i32 1, i32 1
  %250 = ptrtoint ptr %ino.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load i32, ptr %ino.i.i.i, align 1
  %252 = call i32 @llvm.bswap.i32(i32 %251) #9
  %253 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %i_inline.i.i, align 1
  %conv54.i.i = zext i8 %254 to i32
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %249, ptr noundef nonnull @.str.12, i32 noundef %252, ptr noundef %name.0.i.i, i32 noundef %conv54.i.i) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %recover_inode.exit.i, %if.end21.i.if.end28.i_crit_edge
  %last_dentry.i176 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0.i.i166, i32 0, i32 3
  %255 = ptrtoint ptr %last_dentry.i176 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %last_dentry.i176, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %blkaddr.0162.i)
  %cmp.i177 = icmp eq i32 %256, %blkaddr.0162.i
  br i1 %cmp.i177, label %if.then30.i, label %if.end28.i.if.end36.i_crit_edge

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then30.i:                                      ; preds = %if.end28.i
  %257 = ptrtoint ptr %inode.i.i169.le to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %inode.i.i169.le, align 4
  %call32.i = call fastcc i32 @recover_dentry(ptr noundef %258, ptr noundef %call9.i, ptr noundef nonnull %dir_list) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.if.end36.i_crit_edge, label %if.then30.i.do.body33.sink.split_crit_edge

if.then30.i.do.body33.sink.split_crit_edge:       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33.sink.split

if.then30.i.if.end36.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then30.i.if.end36.i_crit_edge, %if.end28.i.if.end36.i_crit_edge
  %259 = ptrtoint ptr %inode.i.i169.le to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %inode.i.i169.le, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn.i.i) #9
  %261 = call ptr @memset(ptr %dn.i.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni.i.i) #9
  %262 = call ptr @memset(ptr %ni.i.i, i32 255, i32 16)
  %call.i.i.i100.i = call ptr @page_address(ptr noundef %call9.i) #9
  %footer.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i100.i, i32 0, i32 1
  %263 = ptrtoint ptr %footer.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %footer.i.i.i, align 1
  %ino.i.i101.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i100.i, i32 0, i32 1, i32 1
  %265 = ptrtoint ptr %ino.i.i101.i to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %ino.i.i101.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %266)
  %cmp.i.i102.i = icmp eq i32 %264, %266
  br i1 %cmp.i.i102.i, label %if.then.i.i, label %if.else.i103.i

if.then.i.i:                                      ; preds = %if.end36.i
  %call1.i.i = call i32 @f2fs_recover_inline_xattr(ptr noundef %260, ptr noundef %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end11.i.i_crit_edge, label %if.then.i.i.do_recover_data.exit.i_crit_edge

if.then.i.i.do_recover_data.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_recover_data.exit.i

if.then.i.i.if.end11.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.else.i103.i:                                   ; preds = %if.end36.i
  %call.i.i215.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %flag1.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i215.i.i, i32 0, i32 1, i32 2
  %267 = ptrtoint ptr %flag1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %flag1.i.i.i, align 1
  %269 = and i32 %268, -117440513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117440513, i32 %269)
  %cmp.i216.i.i = icmp eq i32 %269, -117440513
  br i1 %cmp.i216.i.i, label %if.then5.i.i, label %if.else.i103.i.if.end11.i.i_crit_edge

if.else.i103.i.if.end11.i.i_crit_edge:            ; preds = %if.else.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then5.i.i:                                     ; preds = %if.else.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = call i32 @f2fs_recover_xattr_data(ptr noundef %260, ptr noundef %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i104.i = icmp eq i32 %call6.i.i, 0
  %spec.select214.i.i = zext i1 %tobool7.not.i104.i to i32
  br label %do_recover_data.exit.i

if.end11.i.i:                                     ; preds = %if.else.i103.i.if.end11.i.i_crit_edge, %if.then.i.i.if.end11.i.i_crit_edge
  %call12.i105.i = call i32 @f2fs_recover_inline_data(ptr noundef %260, ptr noundef %call9.i) #9
  %270 = zext i32 %call12.i105.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i105.i, label %if.end11.i.i.do_recover_data.exit.i_crit_edge [
    i32 0, label %if.end17.i.i
    i32 1, label %if.then15.i.i
  ]

if.end11.i.i.do_recover_data.exit.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_recover_data.exit.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_recover_data.exit.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  %call.i.i217.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %flag1.i218.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i217.i.i, i32 0, i32 1, i32 2
  %271 = ptrtoint ptr %flag1.i218.i.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %272 = load i32, ptr %flag1.i218.i.i, align 1
  %273 = call i32 @llvm.bswap.i32(i32 %272) #9
  %shr.i219.i.i = lshr i32 %273, 3
  %call19.i.i = call i32 @f2fs_start_bidx_of_node(i32 noundef %shr.i219.i.i, ptr noundef %260) #9
  %call.i.i220.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %footer.i221.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i220.i.i, i32 0, i32 1
  %274 = ptrtoint ptr %footer.i221.i.i to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %footer.i221.i.i, align 1
  %ino.i222.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i220.i.i, i32 0, i32 1, i32 1
  %276 = ptrtoint ptr %ino.i222.i.i to i32
  call void @__asan_loadN_noabort(i32 %276, i32 4)
  %277 = load i32, ptr %ino.i222.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %277)
  %cmp.i223.i.i = icmp eq i32 %275, %277
  br i1 %cmp.i223.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end17.i.i
  %i_extra_isize.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 29
  %278 = ptrtoint ptr %i_extra_isize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %i_extra_isize.i.i.i.i, align 4
  %div1.i.i.i.i = lshr i32 %279, 2
  %i_inline_xattr_size.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 31
  %280 = ptrtoint ptr %i_inline_xattr_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %i_inline_xattr_size.i.i.i.i, align 4
  %282 = add i32 %div1.i.i.i.i, %281
  %sub2.i.i.i = sub i32 923, %282
  %283 = ptrtoint ptr %260 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %260, align 8
  %285 = and i16 %284, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %285)
  %cmp.i.i.i106.i = icmp eq i16 %285, -32768
  br i1 %cmp.i.i.i106.i, label %f2fs_compressed_file.exit.i.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

f2fs_compressed_file.exit.i.i.i:                  ; preds = %cond.true.i.i
  %flags.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 8
  %286 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %flags.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %287)
  %tobool.not.i.i107.i = icmp sgt i32 %287, -1
  br i1 %tobool.not.i.i107.i, label %f2fs_compressed_file.exit.i.i.i.cond.end.i.i_crit_edge, label %if.end.i.i108.i

f2fs_compressed_file.exit.i.i.i.cond.end.i.i_crit_edge: ; preds = %f2fs_compressed_file.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

if.end.i.i108.i:                                  ; preds = %f2fs_compressed_file.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_cluster_size.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 39
  %288 = ptrtoint ptr %i_cluster_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %i_cluster_size.i.i.i, align 4
  %neg.i.i.i = sub i32 0, %289
  br label %cond.end.sink.split.i.i

cond.false.i.i:                                   ; preds = %if.end17.i.i
  %290 = ptrtoint ptr %260 to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %260, align 8
  %292 = and i16 %291, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %292)
  %cmp.i.i224.i.i = icmp eq i16 %292, -32768
  br i1 %cmp.i.i224.i.i, label %f2fs_compressed_file.exit.i227.i.i, label %cond.false.i.i.cond.end.i.i_crit_edge

cond.false.i.i.cond.end.i.i_crit_edge:            ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

f2fs_compressed_file.exit.i227.i.i:               ; preds = %cond.false.i.i
  %flags.i.i.i225.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 8
  %293 = ptrtoint ptr %flags.i.i.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %flags.i.i.i225.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %294)
  %tobool.not.i226.i.i = icmp sgt i32 %294, -1
  br i1 %tobool.not.i226.i.i, label %f2fs_compressed_file.exit.i227.i.i.cond.end.i.i_crit_edge, label %if.end.i231.i.i

f2fs_compressed_file.exit.i227.i.i.cond.end.i.i_crit_edge: ; preds = %f2fs_compressed_file.exit.i227.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

if.end.i231.i.i:                                  ; preds = %f2fs_compressed_file.exit.i227.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_cluster_size.i228.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 39
  %295 = ptrtoint ptr %i_cluster_size.i228.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %i_cluster_size.i228.i.i, align 4
  %neg.i229.i.i = sub i32 0, %296
  br label %cond.end.sink.split.i.i

cond.end.sink.split.i.i:                          ; preds = %if.end.i231.i.i, %if.end.i.i108.i
  %.sink.i.i = phi i32 [ 1018, %if.end.i231.i.i ], [ %neg.i.i.i, %if.end.i.i108.i ]
  %neg.i229.sink.i.i = phi i32 [ %neg.i229.i.i, %if.end.i231.i.i ], [ %sub2.i.i.i, %if.end.i.i108.i ]
  %and.i230.i.i = and i32 %neg.i229.sink.i.i, %.sink.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.end.sink.split.i.i, %f2fs_compressed_file.exit.i227.i.i.cond.end.i.i_crit_edge, %cond.false.i.i.cond.end.i.i_crit_edge, %f2fs_compressed_file.exit.i.i.i.cond.end.i.i_crit_edge, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %sub2.i.i.i, %f2fs_compressed_file.exit.i.i.i.cond.end.i.i_crit_edge ], [ %sub2.i.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ], [ 1018, %f2fs_compressed_file.exit.i227.i.i.cond.end.i.i_crit_edge ], [ 1018, %cond.false.i.i.cond.end.i.i_crit_edge ], [ %and.i230.i.i, %cond.end.sink.split.i.i ]
  %add.i.i = add i32 %cond.i.i, %call19.i.i
  %297 = call ptr @memset(ptr %110, i32 0, i32 12)
  %298 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %260, ptr %dn.i.i, align 4
  %299 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr null, ptr %107, align 4
  %300 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr null, ptr %108, align 4
  %301 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 0, ptr %109, align 4
  br label %retry_dn.i.i

retry_dn.i.i:                                     ; preds = %if.then27.i.i, %cond.end.i.i
  %call23.i.i = call i32 @f2fs_get_dnode_of_data(ptr noundef nonnull %dn.i.i, i32 noundef %call19.i.i, i32 noundef 0) #9
  %302 = zext i32 %call23.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %302, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call23.i.i, label %retry_dn.i.i.do_recover_data.exit.i_crit_edge [
    i32 0, label %if.end29.i109.i
    i32 -12, label %if.then27.i.i
  ]

retry_dn.i.i.do_recover_data.exit.i_crit_edge:    ; preds = %retry_dn.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_recover_data.exit.i

if.then27.i.i:                                    ; preds = %retry_dn.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @memalloc_retry_wait(i32 noundef 3136) #9
  br label %retry_dn.i.i

if.end29.i109.i:                                  ; preds = %retry_dn.i.i
  %303 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %108, align 4
  call void @f2fs_wait_on_page_writeback(ptr noundef %304, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %305 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %109, align 4
  %call30.i.i = call i32 @f2fs_get_node_info(ptr noundef %sbi, i32 noundef %306, ptr noundef nonnull %ni.i.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %do.body.i.i, label %if.end29.i109.i.err141.i.i_crit_edge

if.end29.i109.i.err141.i.i_crit_edge:             ; preds = %if.end29.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err141.i.i

do.body.i.i:                                      ; preds = %if.end29.i109.i
  %307 = ptrtoint ptr %ino.i110.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ino.i110.i, align 4
  %call.i.i233.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %ino.i234.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i233.i.i, i32 0, i32 1, i32 1
  %309 = ptrtoint ptr %ino.i234.i.i to i32
  call void @__asan_loadN_noabort(i32 %309, i32 4)
  %310 = load i32, ptr %ino.i234.i.i, align 1
  %311 = call i32 @llvm.bswap.i32(i32 %310) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %308, i32 %311)
  %cmp35.not.i.i = icmp eq i32 %308, %311
  br i1 %cmp35.not.i.i, label %do.end45.i.i, label %do.body39.i.i, !prof !59

do.body39.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 603, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

do.end45.i.i:                                     ; preds = %do.body.i.i
  %312 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %108, align 4
  %call.i.i235.i.i = call ptr @page_address(ptr noundef %313) #9
  %flag1.i236.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i235.i.i, i32 0, i32 1, i32 2
  %314 = ptrtoint ptr %flag1.i236.i.i to i32
  call void @__asan_loadN_noabort(i32 %314, i32 4)
  %315 = load i32, ptr %flag1.i236.i.i, align 1
  %call.i.i238.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %flag1.i239.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i238.i.i, i32 0, i32 1, i32 2
  %316 = ptrtoint ptr %flag1.i239.i.i to i32
  call void @__asan_loadN_noabort(i32 %316, i32 4)
  %317 = load i32, ptr %flag1.i239.i.i, align 1
  %318 = xor i32 %317, %315
  %319 = call i32 @llvm.bswap.i32(i32 %318) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %319)
  %cmp49.not.i.i = icmp ult i32 %319, 8
  br i1 %cmp49.not.i.i, label %for.cond.preheader.i.i, label %if.then50.i.i

for.cond.preheader.i.i:                           ; preds = %do.end45.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i.i, i32 %add.i.i)
  %cmp55338.i.i = icmp ult i32 %call19.i.i, %add.i.i
  br i1 %cmp55338.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %i_advise.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 2
  br label %for.body.i112.i

if.then50.i.i:                                    ; preds = %do.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino.i111.i = getelementptr inbounds %struct.inode, ptr %260, i32 0, i32 11
  %320 = ptrtoint ptr %i_ino.i111.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %i_ino.i111.i, align 8
  %322 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %108, align 4
  %call.i.i241.i.i = call ptr @page_address(ptr noundef %323) #9
  %flag1.i242.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i241.i.i, i32 0, i32 1, i32 2
  %324 = ptrtoint ptr %flag1.i242.i.i to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %flag1.i242.i.i, align 1
  %326 = call i32 @llvm.bswap.i32(i32 %325) #9
  %shr.i243.i.i = lshr i32 %326, 3
  %call.i.i244.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %flag1.i245.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i244.i.i, i32 0, i32 1, i32 2
  %327 = ptrtoint ptr %flag1.i245.i.i to i32
  call void @__asan_loadN_noabort(i32 %327, i32 4)
  %328 = load i32, ptr %flag1.i245.i.i, align 1
  %329 = call i32 @llvm.bswap.i32(i32 %328) #9
  %shr.i246.i.i = lshr i32 %329, 3
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.16, i32 noundef %321, i32 noundef %shr.i243.i.i, i32 noundef %shr.i246.i.i) #9
  br label %err141.i.i

for.body.i112.i:                                  ; preds = %for.inc.i.i.for.body.i112.i_crit_edge, %for.body.lr.ph.i.i
  %recovered.0342.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %recovered.2.ph.i.i, %for.inc.i.i.for.body.i112.i_crit_edge ]
  %start.0339.i.i = phi i32 [ %call19.i.i, %for.body.lr.ph.i.i ], [ %inc131.i.i, %for.inc.i.i.for.body.i112.i_crit_edge ]
  %330 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dn.i.i, align 4
  %332 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %108, align 4
  %334 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %110, align 4
  %call.i.i.i.i.i.i = call ptr @page_address(ptr noundef %333) #9
  %footer.i.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i.i.i, i32 0, i32 1
  %336 = ptrtoint ptr %footer.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %336, i32 4)
  %337 = load i32, ptr %footer.i.i.i.i.i, align 1
  %ino.i.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %338 = ptrtoint ptr %ino.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %338, i32 4)
  %339 = load i32, ptr %ino.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %337, i32 %339)
  %cmp.i.i.i.i.i = icmp eq i32 %337, %339
  %call.i.i.i.i.i = call ptr @page_address(ptr noundef %333) #9
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i112.i.f2fs_data_blkaddr.exit.i.i_crit_edge

for.body.i112.i.f2fs_data_blkaddr.exit.i.i_crit_edge: ; preds = %for.body.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_data_blkaddr.exit.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i112.i
  %tobool2.not.i.i.i.i = icmp eq ptr %331, null
  br i1 %tobool2.not.i.i.i.i, label %if.then3.i.i.i.i, label %if.else.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %i_inline.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i.i, i32 0, i32 2
  %340 = ptrtoint ptr %i_inline.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %i_inline.i.i.i.i.i, align 1
  %342 = and i8 %341, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool.not.i.i.i.i.i = icmp eq i8 %342, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then3.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge, label %cond.true.i.i.i.i.i

if.then3.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge: ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_data_blkaddr.exit.i.i

cond.true.i.i.i.i.i:                              ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %343 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i.i, i32 0, i32 23
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_loadN_noabort(i32 %344, i32 2)
  %345 = load i16, ptr %343, align 1
  %346 = call i16 @llvm.bswap.i16(i16 %345) #9
  %347 = lshr i16 %346, 2
  %div.i.i.i.i.i = zext i16 %347 to i32
  br label %f2fs_data_blkaddr.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  %flags.i.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %331, i32 0, i32 8
  %348 = ptrtoint ptr %flags.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load volatile i32, ptr %flags.i.i.i.i.i.i, align 4
  %350 = and i32 %349, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool6.not.i.i.i.i = icmp eq i32 %350, 0
  br i1 %tobool6.not.i.i.i.i, label %if.else.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge, label %if.then7.i.i.i.i

if.else.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_data_blkaddr.exit.i.i

if.then7.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_extra_isize.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %331, i32 0, i32 29
  %351 = ptrtoint ptr %i_extra_isize.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %i_extra_isize.i.i.i.i.i, align 4
  %div1.i.i.i.i.i = lshr i32 %352, 2
  br label %f2fs_data_blkaddr.exit.i.i

f2fs_data_blkaddr.exit.i.i:                       ; preds = %if.then7.i.i.i.i, %if.else.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge, %cond.true.i.i.i.i.i, %if.then3.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge, %for.body.i112.i.f2fs_data_blkaddr.exit.i.i_crit_edge
  %base.0.i.i.i.i = phi i32 [ %div1.i.i.i.i.i, %if.then7.i.i.i.i ], [ 0, %if.else.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge ], [ 0, %for.body.i112.i.f2fs_data_blkaddr.exit.i.i_crit_edge ], [ %div.i.i.i.i.i, %cond.true.i.i.i.i.i ], [ 0, %if.then3.i.i.i.i.f2fs_data_blkaddr.exit.i.i_crit_edge ]
  %footer.i16.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i.i, i32 0, i32 1
  %353 = ptrtoint ptr %footer.i16.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %353, i32 4)
  %354 = load i32, ptr %footer.i16.i.i.i.i, align 1
  %ino.i17.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 1
  %355 = ptrtoint ptr %ino.i17.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %355, i32 4)
  %356 = load i32, ptr %ino.i17.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %354, i32 %356)
  %cmp.i18.i.i.i.i = icmp eq i32 %354, %356
  %357 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i.i, i32 0, i32 23
  %cond.i19.i.i.i.i = select i1 %cmp.i18.i.i.i.i, ptr %357, ptr %call.i.i.i.i.i
  %add.i.i.i.i = add i32 %base.0.i.i.i.i, %335
  %arrayidx.i.i.i.i = getelementptr i32, ptr %cond.i19.i.i.i.i, i32 %add.i.i.i.i
  %358 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %360 = call i32 @llvm.bswap.i32(i32 %359) #9
  %361 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %dn.i.i, align 4
  %363 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %110, align 4
  %call.i.i.i248.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %footer.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i248.i.i, i32 0, i32 1
  %365 = ptrtoint ptr %footer.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %365, i32 4)
  %366 = load i32, ptr %footer.i.i.i.i, align 1
  %ino.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i248.i.i, i32 0, i32 1, i32 1
  %367 = ptrtoint ptr %ino.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %367, i32 4)
  %368 = load i32, ptr %ino.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %366, i32 %368)
  %cmp.i.i249.i.i = icmp eq i32 %366, %368
  %call.i.i250.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  br i1 %cmp.i.i249.i.i, label %if.then.i.i113.i, label %f2fs_data_blkaddr.exit.i.i.data_blkaddr.exit.i.i_crit_edge

f2fs_data_blkaddr.exit.i.i.data_blkaddr.exit.i.i_crit_edge: ; preds = %f2fs_data_blkaddr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_blkaddr.exit.i.i

if.then.i.i113.i:                                 ; preds = %f2fs_data_blkaddr.exit.i.i
  %tobool2.not.i.i.i = icmp eq ptr %362, null
  br i1 %tobool2.not.i.i.i, label %if.then3.i.i.i, label %if.else.i.i114.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i113.i
  %i_inline.i.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i250.i.i, i32 0, i32 2
  %369 = ptrtoint ptr %i_inline.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %i_inline.i.i.i.i, align 1
  %371 = and i8 %370, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %tobool.not.i.i.i.i = icmp eq i8 %371, 0
  br i1 %tobool.not.i.i.i.i, label %if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge, label %cond.true.i.i.i.i

if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge:   ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_blkaddr.exit.i.i

cond.true.i.i.i.i:                                ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %372 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i250.i.i, i32 0, i32 23
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_loadN_noabort(i32 %373, i32 2)
  %374 = load i16, ptr %372, align 1
  %375 = call i16 @llvm.bswap.i16(i16 %374) #9
  %376 = lshr i16 %375, 2
  %div.i.i.i.i = zext i16 %376 to i32
  br label %data_blkaddr.exit.i.i

if.else.i.i114.i:                                 ; preds = %if.then.i.i113.i
  %flags.i.i.i251.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %362, i32 0, i32 8
  %377 = ptrtoint ptr %flags.i.i.i251.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load volatile i32, ptr %flags.i.i.i251.i.i, align 4
  %379 = and i32 %378, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %tobool6.not.i.i.i = icmp eq i32 %379, 0
  br i1 %tobool6.not.i.i.i, label %if.else.i.i114.i.data_blkaddr.exit.i.i_crit_edge, label %if.then7.i.i.i

if.else.i.i114.i.data_blkaddr.exit.i.i_crit_edge: ; preds = %if.else.i.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_blkaddr.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_extra_isize.i.i252.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %362, i32 0, i32 29
  %380 = ptrtoint ptr %i_extra_isize.i.i252.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %i_extra_isize.i.i252.i.i, align 4
  %div1.i.i253.i.i = lshr i32 %381, 2
  br label %data_blkaddr.exit.i.i

data_blkaddr.exit.i.i:                            ; preds = %if.then7.i.i.i, %if.else.i.i114.i.data_blkaddr.exit.i.i_crit_edge, %cond.true.i.i.i.i, %if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge, %f2fs_data_blkaddr.exit.i.i.data_blkaddr.exit.i.i_crit_edge
  %base.0.i.i.i = phi i32 [ %div1.i.i253.i.i, %if.then7.i.i.i ], [ 0, %if.else.i.i114.i.data_blkaddr.exit.i.i_crit_edge ], [ 0, %f2fs_data_blkaddr.exit.i.i.data_blkaddr.exit.i.i_crit_edge ], [ %div.i.i.i.i, %cond.true.i.i.i.i ], [ 0, %if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge ]
  %footer.i16.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i250.i.i, i32 0, i32 1
  %382 = ptrtoint ptr %footer.i16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %382, i32 4)
  %383 = load i32, ptr %footer.i16.i.i.i, align 1
  %ino.i17.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i250.i.i, i32 0, i32 1, i32 1
  %384 = ptrtoint ptr %ino.i17.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %384, i32 4)
  %385 = load i32, ptr %ino.i17.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %383, i32 %385)
  %cmp.i18.i.i.i = icmp eq i32 %383, %385
  %386 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i250.i.i, i32 0, i32 23
  %cond.i19.i.i.i = select i1 %cmp.i18.i.i.i, ptr %386, ptr %call.i.i250.i.i
  %add.i.i.i = add i32 %base.0.i.i.i, %364
  %arrayidx.i.i.i = getelementptr i32, ptr %cond.i19.i.i.i, i32 %add.i.i.i
  %387 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx.i.i.i, align 4
  %389 = call i32 @llvm.bswap.i32(i32 %388) #9
  %390 = zext i32 %360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %390, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %360, label %land.lhs.true.i115.i [
    i32 -1, label %data_blkaddr.exit.i.i.if.end62.i.i_crit_edge
    i32 0, label %data_blkaddr.exit.i.i.if.end62.i.i_crit_edge468
    i32 -2, label %data_blkaddr.exit.i.i.if.end62.i.i_crit_edge469
  ]

data_blkaddr.exit.i.i.if.end62.i.i_crit_edge469:  ; preds = %data_blkaddr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

data_blkaddr.exit.i.i.if.end62.i.i_crit_edge468:  ; preds = %data_blkaddr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

data_blkaddr.exit.i.i.if.end62.i.i_crit_edge:     ; preds = %data_blkaddr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

land.lhs.true.i115.i:                             ; preds = %data_blkaddr.exit.i.i
  %call60.i.i = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %360, i32 noundef 5) #9
  br i1 %call60.i.i, label %land.lhs.true.i115.i.if.end62.i.i_crit_edge, label %land.lhs.true.i115.i.err141.i.i_crit_edge

land.lhs.true.i115.i.err141.i.i_crit_edge:        ; preds = %land.lhs.true.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err141.i.i

land.lhs.true.i115.i.if.end62.i.i_crit_edge:      ; preds = %land.lhs.true.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %land.lhs.true.i115.i.if.end62.i.i_crit_edge, %data_blkaddr.exit.i.i.if.end62.i.i_crit_edge, %data_blkaddr.exit.i.i.if.end62.i.i_crit_edge468, %data_blkaddr.exit.i.i.if.end62.i.i_crit_edge469
  %391 = zext i32 %389 to i64
  call void @__sanitizer_cov_trace_switch(i64 %391, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %389, label %land.lhs.true64.i.i [
    i32 -1, label %if.end62.i.i.if.end67.i.i_crit_edge
    i32 0, label %if.end62.i.i.if.end67.i.i_crit_edge470
    i32 -2, label %if.end62.i.i.if.end67.i.i_crit_edge471
  ]

if.end62.i.i.if.end67.i.i_crit_edge471:           ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.end62.i.i.if.end67.i.i_crit_edge470:           ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.end62.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

land.lhs.true64.i.i:                              ; preds = %if.end62.i.i
  %call65.i.i = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %389, i32 noundef 5) #9
  br i1 %call65.i.i, label %land.lhs.true64.i.i.if.end67.i.i_crit_edge, label %land.lhs.true64.i.i.err141.i.i_crit_edge

land.lhs.true64.i.i.err141.i.i_crit_edge:         ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err141.i.i

land.lhs.true64.i.i.if.end67.i.i_crit_edge:       ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %land.lhs.true64.i.i.if.end67.i.i_crit_edge, %if.end62.i.i.if.end67.i.i_crit_edge, %if.end62.i.i.if.end67.i.i_crit_edge470, %if.end62.i.i.if.end67.i.i_crit_edge471
  call void @__sanitizer_cov_trace_cmp4(i32 %359, i32 %388)
  %cmp68.i.i = icmp eq i32 %359, %388
  br i1 %cmp68.i.i, label %if.end67.i.i.for.inc.i.i_crit_edge, label %if.end70.i.i

if.end67.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end70.i.i:                                     ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %cmp71.i.i = icmp eq i32 %388, 0
  br i1 %cmp71.i.i, label %if.then72.i.i, label %if.end73.i.i

if.then72.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @f2fs_truncate_data_blocks_range(ptr noundef nonnull %dn.i.i, i32 noundef 1) #9
  br label %for.inc.i.i

if.end73.i.i:                                     ; preds = %if.end70.i.i
  %392 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %i_advise.i.i.i, align 4
  %394 = and i8 %393, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %tobool75.not.i.i = icmp eq i8 %394, 0
  br i1 %tobool75.not.i.i, label %land.lhs.true76.i.i, label %if.end73.i.i.if.end84.i.i_crit_edge

if.end73.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i

land.lhs.true76.i.i:                              ; preds = %if.end73.i.i
  %call77.i.i = call fastcc i64 @i_size_read(ptr noundef %260) #9
  %conv.i.i = zext i32 %start.0339.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %call77.i.i, i64 %shl.i.i)
  %cmp78.not.i.i = icmp sgt i64 %call77.i.i, %shl.i.i
  br i1 %cmp78.not.i.i, label %land.lhs.true76.i.i.if.end84.i.i_crit_edge, label %if.then80.i.i

land.lhs.true76.i.i.if.end84.i.i_crit_edge:       ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i

if.then80.i.i:                                    ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add81.i.i = add nuw i32 %start.0339.i.i, 1
  %conv82.i.i = zext i32 %add81.i.i to i64
  %shl83.i.i = shl nuw nsw i64 %conv82.i.i, 12
  call fastcc void @f2fs_i_size_write(ptr noundef %260, i64 noundef %shl83.i.i) #9
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then80.i.i, %land.lhs.true76.i.i.if.end84.i.i_crit_edge, %if.end73.i.i.if.end84.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %388)
  %cmp85.i.i = icmp eq i32 %388, -1
  br i1 %cmp85.i.i, label %if.then87.i.i, label %if.end89.i.i

if.then87.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @f2fs_truncate_data_blocks_range(ptr noundef nonnull %dn.i.i, i32 noundef 1) #9
  %call88.i.i = call i32 @f2fs_reserve_new_block(ptr noundef nonnull %dn.i.i) #9
  br label %for.inc.i.i

if.end89.i.i:                                     ; preds = %if.end84.i.i
  %call90.i.i = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %389, i32 noundef 5) #9
  br i1 %call90.i.i, label %if.then91.i.i, label %if.end89.i.i.for.inc.i.i_crit_edge

if.end89.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then91.i.i:                                    ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %cmp92.i.i = icmp eq i32 %359, 0
  br i1 %cmp92.i.i, label %if.then94.i.i, label %if.then91.i.i.retry_prev.i.i.preheader_crit_edge

if.then91.i.i.retry_prev.i.i.preheader_crit_edge: ; preds = %if.then91.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry_prev.i.i.preheader

if.then94.i.i:                                    ; preds = %if.then91.i.i
  %call95.i.i = call i32 @f2fs_reserve_new_block(ptr noundef nonnull %dn.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i.i)
  %tobool96.not335.i.i = icmp eq i32 %call95.i.i, 0
  br i1 %tobool96.not335.i.i, label %if.then94.i.i.retry_prev.i.i.preheader_crit_edge, label %if.then94.i.i.while.body.i.i_crit_edge

if.then94.i.i.while.body.i.i_crit_edge:           ; preds = %if.then94.i.i
  br label %while.body.i.i

if.then94.i.i.retry_prev.i.i.preheader_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry_prev.i.i.preheader

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then94.i.i.while.body.i.i_crit_edge
  %call97.i.i = call i32 @f2fs_reserve_new_block(ptr noundef nonnull %dn.i.i) #9
  %tobool96.not.i.i = icmp eq i32 %call97.i.i, 0
  br i1 %tobool96.not.i.i, label %while.body.i.i.retry_prev.i.i.preheader_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.retry_prev.i.i.preheader_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry_prev.i.i.preheader

retry_prev.i.i.preheader:                         ; preds = %while.body.i.i.retry_prev.i.i.preheader_crit_edge, %if.then94.i.i.retry_prev.i.i.preheader_crit_edge, %if.then91.i.i.retry_prev.i.i.preheader_crit_edge
  %switch.tableidx = add i32 %389, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %395 = icmp ult i32 %switch.tableidx, 3
  br label %retry_prev.i.i

retry_prev.i.i:                                   ; preds = %if.then125.i.i, %retry_prev.i.i.preheader
  br i1 %395, label %retry_prev.i.i.cond.end8.i.i.i_crit_edge, label %cond.false.i.i.i

retry_prev.i.i.cond.end8.i.i.i_crit_edge:         ; preds = %retry_prev.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8.i.i.i

cond.false.i.i.i:                                 ; preds = %retry_prev.i.i
  %396 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %sm_info.i.i, align 8
  %tobool.not.i260.i.i = icmp eq ptr %397, null
  br i1 %tobool.not.i260.i.i, label %cond.false4.i.i.i, label %cond.true2.i.i.i

cond.true2.i.i.i:                                 ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %seg0_blkaddr.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %397, i32 0, i32 5
  %398 = ptrtoint ptr %seg0_blkaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %seg0_blkaddr.i.i.i, align 4
  br label %cond.end.i.i.i

cond.false4.i.i.i:                                ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %400 = ptrtoint ptr %raw_super.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %raw_super.i.i.i.i, align 8
  %segment0_blkaddr.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %401, i32 0, i32 18
  %402 = ptrtoint ptr %segment0_blkaddr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %402, i32 4)
  %403 = load i32, ptr %segment0_blkaddr.i.i.i, align 1
  %404 = call i32 @llvm.bswap.i32(i32 %403) #9
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false4.i.i.i, %cond.true2.i.i.i
  %cond.i.i.i = phi i32 [ %399, %cond.true2.i.i.i ], [ %404, %cond.false4.i.i.i ]
  %sub.i.i.i = sub i32 %389, %cond.i.i.i
  %405 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %log_blocks_per_seg.i, align 8
  %shr.i261.i.i = lshr i32 %sub.i.i.i, %406
  %free_info.i.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %397, i32 0, i32 1
  %407 = ptrtoint ptr %free_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %free_info.i.i.i.i, align 4
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %408, align 4
  %sub7.i.i.i = sub i32 %shr.i261.i.i, %410
  br label %cond.end8.i.i.i

cond.end8.i.i.i:                                  ; preds = %cond.end.i.i.i, %retry_prev.i.i.cond.end8.i.i.i_crit_edge
  %cond9.i.i.i = phi i32 [ %sub7.i.i.i, %cond.end.i.i.i ], [ -1, %retry_prev.i.i.cond.end8.i.i.i_crit_edge ]
  %411 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %sm_info.i.i, align 8
  %tobool11.not.i.i.i = icmp eq ptr %412, null
  br i1 %tobool11.not.i.i.i, label %cond.false15.i.i.i, label %cond.true12.i.i.i

cond.true12.i.i.i:                                ; preds = %cond.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %seg0_blkaddr14.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %412, i32 0, i32 5
  %413 = ptrtoint ptr %seg0_blkaddr14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %seg0_blkaddr14.i.i.i, align 4
  br label %cond.end18.i.i.i

cond.false15.i.i.i:                               ; preds = %cond.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %415 = ptrtoint ptr %raw_super.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %raw_super.i.i.i.i, align 8
  %segment0_blkaddr17.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %416, i32 0, i32 18
  %417 = ptrtoint ptr %segment0_blkaddr17.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %417, i32 4)
  %418 = load i32, ptr %segment0_blkaddr17.i.i.i, align 1
  %419 = call i32 @llvm.bswap.i32(i32 %418) #9
  br label %cond.end18.i.i.i

cond.end18.i.i.i:                                 ; preds = %cond.false15.i.i.i, %cond.true12.i.i.i
  %cond19.i.i.i = phi i32 [ %414, %cond.true12.i.i.i ], [ %419, %cond.false15.i.i.i ]
  %sub20.i.i.i = sub i32 %389, %cond19.i.i.i
  %420 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %blocks_per_seg.i, align 4
  %sub21.i.i.i = add i32 %421, 65535
  %and.i262.i.i = and i32 %sub21.i.i.i, %sub20.i.i.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tdn.i.i.i) #9
  %422 = call ptr @memcpy(ptr %tdn.i.i.i, ptr %dn.i.i, i32 28)
  %423 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %412, align 4
  %sentries.i.i.i.i = getelementptr inbounds %struct.sit_info, ptr %424, i32 0, i32 14
  %425 = ptrtoint ptr %sentries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %sentries.i.i.i.i, align 4
  %conv23.i.i.i = and i32 %and.i262.i.i, 65535
  %cur_valid_map.i.i.i = getelementptr %struct.seg_entry, ptr %426, i32 %cond9.i.i.i, i32 1
  %427 = ptrtoint ptr %cur_valid_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %cur_valid_map.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %conv23.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %428, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %and.i262.i.i, 7
  %sub.i.i.i.i = xor i32 %and.i.i.i.i, 7
  %shl.i.i.i.i = shl nuw i32 1, %sub.i.i.i.i
  %429 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %430 to i32
  %and1.i.i.i.i = and i32 %shl.i.i.i.i, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %cond.end18.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge, label %for.cond.preheader.i.i.i

cond.end18.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge: ; preds = %cond.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_index_in_prev_nodes.exit.thread.i.i

for.cond.preheader.i.i.i:                         ; preds = %cond.end18.i.i.i
  %curseg_array.i.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %412, i32 0, i32 3
  %431 = ptrtoint ptr %curseg_array.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %curseg_array.i.i.i.i, align 4
  %segno28.i.i.i = getelementptr %struct.curseg_info, ptr %432, i32 0, i32 6
  %433 = ptrtoint ptr %segno28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %segno28.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %434, i32 %cond9.i.i.i)
  %cmp29.i.i.i = icmp eq i32 %434, %cond9.i.i.i
  br i1 %cmp29.i.i.i, label %for.cond.preheader.i.i.i.cleanup.i.i.i_crit_edge, label %for.inc.i.i.i

for.cond.preheader.i.i.i.cleanup.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %for.inc.1.i.i.i.cleanup.i.i.i_crit_edge, %for.inc.i.i.i.cleanup.i.i.i_crit_edge, %for.cond.preheader.i.i.i.cleanup.i.i.i_crit_edge
  %i.0245.lcssa.i.i.i = phi i32 [ 0, %for.cond.preheader.i.i.i.cleanup.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.cleanup.i.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.cleanup.i.i.i_crit_edge ]
  %sum_blk.i.i.i = getelementptr %struct.curseg_info, ptr %432, i32 %i.0245.lcssa.i.i.i, i32 1
  %435 = ptrtoint ptr %sum_blk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %sum_blk.i.i.i, align 4
  %arrayidx.i263.i.i = getelementptr [512 x %struct.f2fs_summary], ptr %436, i32 0, i32 %conv23.i.i.i
  %437 = ptrtoint ptr %arrayidx.i263.i.i to i32
  call void @__asan_loadN_noabort(i32 %437, i32 4)
  %sum.sroa.0.0.copyload.i.i.i = load i32, ptr %arrayidx.i263.i.i, align 1
  %sum.sroa.7.0.arrayidx.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i263.i.i, i32 5
  %438 = ptrtoint ptr %sum.sroa.7.0.arrayidx.sroa_idx.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %438, i32 2)
  %sum.sroa.7.0.copyload.i.i.i = load i16, ptr %sum.sroa.7.0.arrayidx.sroa_idx.i.i.i, align 1
  br label %got_it.i.i.i

for.inc.i.i.i:                                    ; preds = %for.cond.preheader.i.i.i
  %segno28.1.i.i.i = getelementptr %struct.curseg_info, ptr %432, i32 1, i32 6
  %439 = ptrtoint ptr %segno28.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %segno28.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %440, i32 %cond9.i.i.i)
  %cmp29.1.i.i.i = icmp eq i32 %440, %cond9.i.i.i
  br i1 %cmp29.1.i.i.i, label %for.inc.i.i.i.cleanup.i.i.i_crit_edge, label %for.inc.1.i.i.i

for.inc.i.i.i.cleanup.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %segno28.2.i.i.i = getelementptr %struct.curseg_info, ptr %432, i32 2, i32 6
  %441 = ptrtoint ptr %segno28.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %segno28.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %442, i32 %cond9.i.i.i)
  %cmp29.2.i.i.i = icmp eq i32 %442, %cond9.i.i.i
  br i1 %cmp29.2.i.i.i, label %for.inc.1.i.i.i.cleanup.i.i.i_crit_edge, label %for.inc.2.i.i.i

for.inc.1.i.i.i.cleanup.i.i.i_crit_edge:          ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %call33.i.i.i = call ptr @f2fs_get_sum_page(ptr noundef %sbi, i32 noundef %cond9.i.i.i) #9
  %cmp.i.i264.i.i = icmp ugt ptr %call33.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i264.i.i, label %if.then35.i.i.i, label %if.end37.i.i.i

if.then35.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %443 = ptrtoint ptr %call33.i.i.i to i32
  br label %check_index_in_prev_nodes.exit.i.i

if.end37.i.i.i:                                   ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call38.i.i.i = call ptr @page_address(ptr noundef %call33.i.i.i) #9
  %arrayidx41.i.i.i = getelementptr [512 x %struct.f2fs_summary], ptr %call38.i.i.i, i32 0, i32 %conv23.i.i.i
  %444 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %444, i32 4)
  %sum.sroa.0.0.copyload179.i.i.i = load i32, ptr %arrayidx41.i.i.i, align 1
  %sum.sroa.7.0.arrayidx41.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %arrayidx41.i.i.i, i32 5
  %445 = ptrtoint ptr %sum.sroa.7.0.arrayidx41.sroa_idx.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %445, i32 2)
  %sum.sroa.7.0.copyload181.i.i.i = load i16, ptr %sum.sroa.7.0.arrayidx41.sroa_idx.i.i.i, align 1
  call fastcc void @f2fs_put_page(ptr noundef %call33.i.i.i, i32 noundef 1) #9
  br label %got_it.i.i.i

got_it.i.i.i:                                     ; preds = %if.end37.i.i.i, %cleanup.i.i.i
  %sum.sroa.7.2.i.i.i = phi i16 [ %sum.sroa.7.0.copyload.i.i.i, %cleanup.i.i.i ], [ %sum.sroa.7.0.copyload181.i.i.i, %if.end37.i.i.i ]
  %sum.sroa.0.2.i.i.i = phi i32 [ %sum.sroa.0.0.copyload.i.i.i, %cleanup.i.i.i ], [ %sum.sroa.0.0.copyload179.i.i.i, %if.end37.i.i.i ]
  %446 = call i32 @llvm.bswap.i32(i32 %sum.sroa.0.2.i.i.i) #9
  %447 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %dn.i.i, align 4
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %448, i32 0, i32 11
  %449 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %i_ino.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %450, i32 %446)
  %cmp44.i.i.i = icmp eq i32 %450, %446
  br i1 %cmp44.i.i.i, label %if.then46.i.i.i, label %if.else.i268.i.i

if.then46.i.i.i:                                  ; preds = %got_it.i.i.i
  %451 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %446, ptr %114, align 4
  %452 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %111, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool48.not.i.i.i = icmp eq i8 %453, 0
  br i1 %tobool48.not.i.i.i, label %if.then49.i.i.i, label %if.then46.i.i.i.if.end50.i.i.i_crit_edge

if.then46.i.i.i.if.end50.i.i.i_crit_edge:         ; preds = %if.then46.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i

if.then49.i.i.i:                                  ; preds = %if.then46.i.i.i
  %454 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %107, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 788) #9
  %456 = getelementptr inbounds %struct.page, ptr %455, i32 0, i32 1
  %457 = ptrtoint ptr %456 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load volatile i32, ptr %456, align 4
  %and.i.i.i.i.i = and i32 %458, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i266.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i266.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !59

if.then.i.i.i.i.i:                                ; preds = %if.then49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i.i = add i32 %458, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %459 = ptrtoint ptr %455 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %459, %if.end.i.i.i.i.i ]
  %460 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %461 = getelementptr inbounds %struct.page, ptr %460, i32 0, i32 1
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load volatile i32, ptr %461, align 4
  %and.i.i.i.i.i.i.i = and i32 %463, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_flags.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !59

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %464 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  call void @dump_page(ptr noundef %464, ptr noundef nonnull @.str.3) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !62
  unreachable

folio_flags.exit.i.i.i.i.i:                       ; preds = %_compound_head.exit.i.i.i.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %460, i32 noundef 4) #9
  %465 = ptrtoint ptr %460 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load volatile i32, ptr %460, align 4
  %and.i.i4.i.i.i.i.i = and i32 %466, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_trylock.exit.i.i.i.i, label %folio_flags.exit.i.i.i.i.i.if.then.i.i267.i.i_crit_edge

folio_flags.exit.i.i.i.i.i.if.then.i.i267.i.i_crit_edge: ; preds = %folio_flags.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i267.i.i

folio_trylock.exit.i.i.i.i:                       ; preds = %folio_flags.exit.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %460, i32 1, i32 3, i32 1) #9
  %467 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %460, ptr %460, i32 1, ptr elementtype(i32) %460) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %467, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %and1.i.i.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %phi.cmp.i.i.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i.i.i, label %folio_trylock.exit.i.i.i.i.if.end50.i.i.i_crit_edge, label %folio_trylock.exit.i.i.i.i.if.then.i.i267.i.i_crit_edge

folio_trylock.exit.i.i.i.i.if.then.i.i267.i.i_crit_edge: ; preds = %folio_trylock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i267.i.i

folio_trylock.exit.i.i.i.i.if.end50.i.i.i_crit_edge: ; preds = %folio_trylock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i

if.then.i.i267.i.i:                               ; preds = %folio_trylock.exit.i.i.i.i.if.then.i.i267.i.i_crit_edge, %folio_flags.exit.i.i.i.i.i.if.then.i.i267.i.i_crit_edge
  call void @__folio_lock(ptr noundef %460) #9
  br label %if.end50.i.i.i

if.end50.i.i.i:                                   ; preds = %if.then.i.i267.i.i, %folio_trylock.exit.i.i.i.i.if.end50.i.i.i_crit_edge, %if.then46.i.i.i.if.end50.i.i.i_crit_edge
  %468 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %107, align 4
  %470 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %469, ptr %113, align 4
  br label %truncate_out.i.i.i

if.else.i268.i.i:                                 ; preds = %got_it.i.i.i
  %471 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %472, i32 %446)
  %cmp56.i.i.i = icmp eq i32 %472, %446
  br i1 %cmp56.i.i.i, label %if.else.i268.i.i.truncate_out.i.i.i_crit_edge, label %if.end63.i.i.i

if.else.i268.i.i.truncate_out.i.i.i_crit_edge:    ; preds = %if.else.i268.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %truncate_out.i.i.i

if.end63.i.i.i:                                   ; preds = %if.else.i268.i.i
  %call64.i.i.i = call ptr @f2fs_get_node_page(ptr noundef %sbi, i32 noundef %446) #9
  %cmp.i228.i.i.i = icmp ugt ptr %call64.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228.i.i.i, label %if.then66.i.i.i, label %if.end68.i.i.i

if.then66.i.i.i:                                  ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %473 = ptrtoint ptr %call64.i.i.i to i32
  br label %check_index_in_prev_nodes.exit.i.i

if.end68.i.i.i:                                   ; preds = %if.end63.i.i.i
  %call.i.i.i269.i.i = call ptr @page_address(ptr noundef %call64.i.i.i) #9
  %flag1.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i269.i.i, i32 0, i32 1, i32 2
  %474 = ptrtoint ptr %flag1.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %474, i32 4)
  %475 = load i32, ptr %flag1.i.i.i.i, align 1
  %call.i.i230.i.i.i = call ptr @page_address(ptr noundef %call64.i.i.i) #9
  %ino.i.i270.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i230.i.i.i, i32 0, i32 1, i32 1
  %476 = ptrtoint ptr %ino.i.i270.i.i to i32
  call void @__asan_loadN_noabort(i32 %476, i32 4)
  %477 = load i32, ptr %ino.i.i270.i.i, align 1
  %478 = call i32 @llvm.bswap.i32(i32 %477) #9
  call fastcc void @f2fs_put_page(ptr noundef %call64.i.i.i, i32 noundef 1) #9
  %479 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %dn.i.i, align 4
  %i_ino72.i.i.i = getelementptr inbounds %struct.inode, ptr %480, i32 0, i32 11
  %481 = ptrtoint ptr %i_ino72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %i_ino72.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %478, i32 %482)
  %cmp73.not.i.i.i = icmp eq i32 %478, %482
  br i1 %cmp73.not.i.i.i, label %if.end68.i.i.i.if.end90.i.i.i_crit_edge, label %if.then75.i.i.i

if.end68.i.i.i.if.end90.i.i.i_crit_edge:          ; preds = %if.end68.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i.i.i

if.then75.i.i.i:                                  ; preds = %if.end68.i.i.i
  %483 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %sbi, align 8
  %call76.i.i.i = call ptr @f2fs_iget_retry(ptr noundef %484, i32 noundef %478) #9
  %cmp.i231.i.i.i = icmp ugt ptr %call76.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231.i.i.i, label %if.then78.i.i.i, label %if.end80.i.i.i

if.then78.i.i.i:                                  ; preds = %if.then75.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %485 = ptrtoint ptr %call76.i.i.i to i32
  br label %check_index_in_prev_nodes.exit.i.i

if.end80.i.i.i:                                   ; preds = %if.then75.i.i.i
  %call81.i.i.i = call i32 @f2fs_dquot_initialize(ptr noundef %call76.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i.i.i)
  %tobool82.not.i.i.i = icmp eq i32 %call81.i.i.i, 0
  br i1 %tobool82.not.i.i.i, label %if.end80.i.i.i.if.end90.i.i.i_crit_edge, label %if.then83.i.i.i

if.end80.i.i.i.if.end90.i.i.i_crit_edge:          ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i.i.i

if.then83.i.i.i:                                  ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef %call76.i.i.i) #9
  br label %check_index_in_prev_nodes.exit.i.i

if.end90.i.i.i:                                   ; preds = %if.end80.i.i.i.if.end90.i.i.i_crit_edge, %if.end68.i.i.i.if.end90.i.i.i_crit_edge
  %inode.0.i.i.i = phi ptr [ %480, %if.end68.i.i.i.if.end90.i.i.i_crit_edge ], [ %call76.i.i.i, %if.end80.i.i.i.if.end90.i.i.i_crit_edge ]
  %486 = call i32 @llvm.bswap.i32(i32 %475) #9
  %shr.i229.i.le.i.i = lshr i32 %486, 3
  %call91.i.i.i = call i32 @f2fs_start_bidx_of_node(i32 noundef %shr.i229.i.le.i.i, ptr noundef %inode.0.i.i.i) #9
  %487 = call i16 @llvm.bswap.i16(i16 %sum.sroa.7.2.i.i.i) #9
  %conv93.i.i.i = zext i16 %487 to i32
  %add.i271.i.i = add i32 %call91.i.i.i, %conv93.i.i.i
  %488 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %dn.i.i, align 4
  %i_ino95.i.i.i = getelementptr inbounds %struct.inode, ptr %489, i32 0, i32 11
  %490 = ptrtoint ptr %i_ino95.i.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %i_ino95.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %478, i32 %491)
  %cmp96.i.i.i = icmp eq i32 %478, %491
  br i1 %cmp96.i.i.i, label %land.lhs.true.i.i.i, label %if.end90.i.i.i.if.end103.i.i.i_crit_edge

if.end90.i.i.i.if.end103.i.i.i_crit_edge:         ; preds = %if.end90.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end90.i.i.i
  %492 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %111, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %493)
  %tobool99.not.i.i.i = icmp eq i8 %493, 0
  br i1 %tobool99.not.i.i.i, label %land.lhs.true.i.i.i.if.end103.i.i.i_crit_edge, label %if.then101.i.i.i

land.lhs.true.i.i.i.if.end103.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i.i.i

if.then101.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %494 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %107, align 4
  call void @unlock_page(ptr noundef %495) #9
  br label %if.end103.i.i.i

if.end103.i.i.i:                                  ; preds = %if.then101.i.i.i, %land.lhs.true.i.i.i.if.end103.i.i.i_crit_edge, %if.end90.i.i.i.if.end103.i.i.i_crit_edge
  %496 = call ptr @memset(ptr %115, i32 0, i32 12)
  %497 = ptrtoint ptr %tdn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %inode.0.i.i.i, ptr %tdn.i.i.i, align 4
  %498 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %498)
  store ptr null, ptr %112, align 4
  %499 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr null, ptr %113, align 4
  %500 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 0, ptr %114, align 4
  %call104.i.i.i = call i32 @f2fs_get_dnode_of_data(ptr noundef nonnull %tdn.i.i.i, i32 noundef %add.i271.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i.i.i)
  %tobool105.not.i.i.i = icmp eq i32 %call104.i.i.i, 0
  br i1 %tobool105.not.i.i.i, label %if.end107.i.i.i, label %if.end103.i.i.i.out.i.i.i_crit_edge

if.end103.i.i.i.out.i.i.i_crit_edge:              ; preds = %if.end103.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i.i

if.end107.i.i.i:                                  ; preds = %if.end103.i.i.i
  %501 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %502, i32 %389)
  %cmp108.i.i.i = icmp eq i32 %502, %389
  br i1 %cmp108.i.i.i, label %if.then110.i.i.i, label %if.end107.i.i.i.if.end111.i.i.i_crit_edge

if.end107.i.i.i.if.end111.i.i.i_crit_edge:        ; preds = %if.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i.i.i

if.then110.i.i.i:                                 ; preds = %if.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @f2fs_truncate_data_blocks_range(ptr noundef nonnull %tdn.i.i.i, i32 noundef 1) #9
  br label %if.end111.i.i.i

if.end111.i.i.i:                                  ; preds = %if.then110.i.i.i, %if.end107.i.i.i.if.end111.i.i.i_crit_edge
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %tdn.i.i.i) #9
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.end111.i.i.i, %if.end103.i.i.i.out.i.i.i_crit_edge
  %503 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %dn.i.i, align 4
  %i_ino113.i.i.i = getelementptr inbounds %struct.inode, ptr %504, i32 0, i32 11
  %505 = ptrtoint ptr %i_ino113.i.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %i_ino113.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %478, i32 %506)
  %cmp114.not.i.i.i = icmp eq i32 %478, %506
  br i1 %cmp114.not.i.i.i, label %if.else117.i.i.i, label %if.then116.i.i.i

if.then116.i.i.i:                                 ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef %inode.0.i.i.i) #9
  br label %check_index_in_prev_nodes.exit.thread.i.i

if.else117.i.i.i:                                 ; preds = %out.i.i.i
  %507 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %111, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %508)
  %tobool119.not.i.i.i = icmp eq i8 %508, 0
  br i1 %tobool119.not.i.i.i, label %if.else117.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge, label %if.then120.i.i.i

if.else117.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge: ; preds = %if.else117.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_index_in_prev_nodes.exit.thread.i.i

if.then120.i.i.i:                                 ; preds = %if.else117.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %509 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %107, align 4
  call fastcc void @lock_page(ptr noundef %510) #9
  br label %check_index_in_prev_nodes.exit.thread.i.i

truncate_out.i.i.i:                               ; preds = %if.else.i268.i.i.truncate_out.i.i.i_crit_edge, %if.end50.i.i.i
  %511 = call i16 @llvm.bswap.i16(i16 %sum.sroa.7.2.i.i.i) #9
  %storemerge.i.i.i = zext i16 %511 to i32
  %512 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %storemerge.i.i.i, ptr %115, align 4
  %513 = ptrtoint ptr %tdn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %tdn.i.i.i, align 4
  %515 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %113, align 4
  %call.i.i.i.i233.i.i.i = call ptr @page_address(ptr noundef %516) #9
  %footer.i.i.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i233.i.i.i, i32 0, i32 1
  %517 = ptrtoint ptr %footer.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %517, i32 4)
  %518 = load i32, ptr %footer.i.i.i.i.i.i, align 1
  %ino.i.i.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i233.i.i.i, i32 0, i32 1, i32 1
  %519 = ptrtoint ptr %ino.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %519, i32 4)
  %520 = load i32, ptr %ino.i.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %518, i32 %520)
  %cmp.i.i.i.i.i.i = icmp eq i32 %518, %520
  %call.i.i.i.i272.i.i = call ptr @page_address(ptr noundef %516) #9
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i234.i.i.i, label %truncate_out.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge

truncate_out.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge: ; preds = %truncate_out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_data_blkaddr.exit.i.i.i

if.then.i.i234.i.i.i:                             ; preds = %truncate_out.i.i.i
  %tobool2.not.i.i.i.i.i = icmp eq ptr %514, null
  br i1 %tobool2.not.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then3.i.i.i.i.i:                               ; preds = %if.then.i.i234.i.i.i
  %i_inline.i.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i272.i.i, i32 0, i32 2
  %521 = ptrtoint ptr %i_inline.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %i_inline.i.i.i.i.i.i, align 1
  %523 = and i8 %522, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %523)
  %tobool.not.i.i.i235.i.i.i = icmp eq i8 %523, 0
  br i1 %tobool.not.i.i.i235.i.i.i, label %if.then3.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i.i.i

if.then3.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge: ; preds = %if.then3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_data_blkaddr.exit.i.i.i

cond.true.i.i.i.i.i.i:                            ; preds = %if.then3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %524 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i272.i.i, i32 0, i32 23
  %525 = ptrtoint ptr %524 to i32
  call void @__asan_loadN_noabort(i32 %525, i32 2)
  %526 = load i16, ptr %524, align 1
  %527 = call i16 @llvm.bswap.i16(i16 %526) #9
  %528 = lshr i16 %527, 2
  %div.i.i.i.i.i.i = zext i16 %528 to i32
  br label %f2fs_data_blkaddr.exit.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i234.i.i.i
  %flags.i.i.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %514, i32 0, i32 8
  %529 = ptrtoint ptr %flags.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load volatile i32, ptr %flags.i.i.i.i.i.i.i, align 4
  %531 = and i32 %530, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %531)
  %tobool6.not.i.i.i.i.i = icmp eq i32 %531, 0
  br i1 %tobool6.not.i.i.i.i.i, label %if.else.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge, label %if.then7.i.i.i.i.i

if.else.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_data_blkaddr.exit.i.i.i

if.then7.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_extra_isize.i.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %514, i32 0, i32 29
  %532 = ptrtoint ptr %i_extra_isize.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %i_extra_isize.i.i.i.i.i.i, align 4
  %div1.i.i.i.i.i.i = lshr i32 %533, 2
  br label %f2fs_data_blkaddr.exit.i.i.i

f2fs_data_blkaddr.exit.i.i.i:                     ; preds = %if.then7.i.i.i.i.i, %if.else.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge, %cond.true.i.i.i.i.i.i, %if.then3.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge, %truncate_out.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge
  %base.0.i.i.i.i.i = phi i32 [ %div1.i.i.i.i.i.i, %if.then7.i.i.i.i.i ], [ 0, %if.else.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge ], [ 0, %truncate_out.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge ], [ %div.i.i.i.i.i.i, %cond.true.i.i.i.i.i.i ], [ 0, %if.then3.i.i.i.i.i.f2fs_data_blkaddr.exit.i.i.i_crit_edge ]
  %footer.i16.i.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i272.i.i, i32 0, i32 1
  %534 = ptrtoint ptr %footer.i16.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %534, i32 4)
  %535 = load i32, ptr %footer.i16.i.i.i.i.i, align 1
  %ino.i17.i.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i272.i.i, i32 0, i32 1, i32 1
  %536 = ptrtoint ptr %ino.i17.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %536, i32 4)
  %537 = load i32, ptr %ino.i17.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %535, i32 %537)
  %cmp.i18.i.i.i.i.i = icmp eq i32 %535, %537
  %538 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i.i272.i.i, i32 0, i32 23
  %cond.i19.i.i.i.i.i = select i1 %cmp.i18.i.i.i.i.i, ptr %538, ptr %call.i.i.i.i272.i.i
  %add.i.i.i.i.i = add nuw nsw i32 %base.0.i.i.i.i.i, %storemerge.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %cond.i19.i.i.i.i.i, i32 %add.i.i.i.i.i
  %539 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %540, i32 %388)
  %cmp125.i.i.i = icmp eq i32 %540, %388
  br i1 %cmp125.i.i.i, label %if.then127.i.i.i, label %f2fs_data_blkaddr.exit.i.i.i.if.end128.i.i.i_crit_edge

f2fs_data_blkaddr.exit.i.i.i.if.end128.i.i.i_crit_edge: ; preds = %f2fs_data_blkaddr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128.i.i.i

if.then127.i.i.i:                                 ; preds = %f2fs_data_blkaddr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @f2fs_truncate_data_blocks_range(ptr noundef nonnull %tdn.i.i.i, i32 noundef 1) #9
  br label %if.end128.i.i.i

if.end128.i.i.i:                                  ; preds = %if.then127.i.i.i, %f2fs_data_blkaddr.exit.i.i.i.if.end128.i.i.i_crit_edge
  %541 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %dn.i.i, align 4
  %i_ino130.i.i.i = getelementptr inbounds %struct.inode, ptr %542, i32 0, i32 11
  %543 = ptrtoint ptr %i_ino130.i.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %i_ino130.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %544, i32 %446)
  %cmp131.i.i.i = icmp eq i32 %544, %446
  br i1 %cmp131.i.i.i, label %land.lhs.true133.i.i.i, label %if.end128.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge

if.end128.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge: ; preds = %if.end128.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_index_in_prev_nodes.exit.thread.i.i

land.lhs.true133.i.i.i:                           ; preds = %if.end128.i.i.i
  %545 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %111, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %546)
  %tobool135.not.i.i.i = icmp eq i8 %546, 0
  br i1 %tobool135.not.i.i.i, label %if.then136.i.i.i, label %land.lhs.true133.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge

land.lhs.true133.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true133.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_index_in_prev_nodes.exit.thread.i.i

if.then136.i.i.i:                                 ; preds = %land.lhs.true133.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %547 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %107, align 4
  call void @unlock_page(ptr noundef %548) #9
  br label %check_index_in_prev_nodes.exit.thread.i.i

check_index_in_prev_nodes.exit.thread.i.i:        ; preds = %if.then136.i.i.i, %land.lhs.true133.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge, %if.end128.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge, %if.then120.i.i.i, %if.else117.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge, %if.then116.i.i.i, %cond.end18.i.i.i.check_index_in_prev_nodes.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tdn.i.i.i) #9
  br label %if.end127.i.i

check_index_in_prev_nodes.exit.i.i:               ; preds = %if.then83.i.i.i, %if.then78.i.i.i, %if.then66.i.i.i, %if.then35.i.i.i
  %retval.1.i.i.i = phi i32 [ %473, %if.then66.i.i.i ], [ %443, %if.then35.i.i.i ], [ %call81.i.i.i, %if.then83.i.i.i ], [ %485, %if.then78.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tdn.i.i.i) #9
  %549 = zext i32 %retval.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %549, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %retval.1.i.i.i, label %check_index_in_prev_nodes.exit.i.i.err141.i.i_crit_edge [
    i32 0, label %check_index_in_prev_nodes.exit.i.i.if.end127.i.i_crit_edge
    i32 -12, label %if.then125.i.i
  ]

check_index_in_prev_nodes.exit.i.i.if.end127.i.i_crit_edge: ; preds = %check_index_in_prev_nodes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127.i.i

check_index_in_prev_nodes.exit.i.i.err141.i.i_crit_edge: ; preds = %check_index_in_prev_nodes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err141.i.i

if.then125.i.i:                                   ; preds = %check_index_in_prev_nodes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @memalloc_retry_wait(i32 noundef 3136) #9
  br label %retry_prev.i.i

if.end127.i.i:                                    ; preds = %check_index_in_prev_nodes.exit.i.i.if.end127.i.i_crit_edge, %check_index_in_prev_nodes.exit.thread.i.i
  %550 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %version.i.i, align 4
  call void @f2fs_replace_block(ptr noundef %sbi, ptr noundef nonnull %dn.i.i, i32 noundef %360, i32 noundef %389, i8 noundef zeroext %551, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %inc128.i.i = add i32 %recovered.0342.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end127.i.i, %if.end89.i.i.for.inc.i.i_crit_edge, %if.then87.i.i, %if.then72.i.i, %if.end67.i.i.for.inc.i.i_crit_edge
  %recovered.2.ph.i.i = phi i32 [ %recovered.0342.i.i, %if.end89.i.i.for.inc.i.i_crit_edge ], [ %inc128.i.i, %if.end127.i.i ], [ %recovered.0342.i.i, %if.end67.i.i.for.inc.i.i_crit_edge ], [ %recovered.0342.i.i, %if.then87.i.i ], [ %recovered.0342.i.i, %if.then72.i.i ]
  %inc131.i.i = add nuw i32 %start.0339.i.i, 1
  %552 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %110, align 4
  %inc133.i.i = add i32 %553, 1
  store i32 %inc133.i.i, ptr %110, align 4
  %exitcond.not.i.i = icmp eq i32 %inc131.i.i, %add.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i112.i_crit_edge

for.inc.i.i.for.body.i112.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i112.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %recovered.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %recovered.2.ph.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %554 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %108, align 4
  %call.i.i273.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %call.i3.i.i.i = call ptr @page_address(ptr noundef %555) #9
  %footer.i274.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i3.i.i.i, i32 0, i32 1
  %footer2.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i273.i.i, i32 0, i32 1
  %556 = call ptr @memcpy(ptr %footer.i274.i.i, ptr %footer2.i.i.i, i32 24)
  %557 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %108, align 4
  %559 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %109, align 4
  %561 = ptrtoint ptr %ino.i110.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %ino.i110.i, align 4
  %call.i.i275.i.i = call ptr @page_address(ptr noundef %call9.i) #9
  %flag1.i276.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i275.i.i, i32 0, i32 1, i32 2
  %563 = ptrtoint ptr %flag1.i276.i.i to i32
  call void @__asan_loadN_noabort(i32 %563, i32 4)
  %564 = load i32, ptr %flag1.i276.i.i, align 1
  %565 = and i32 %564, -117440513
  %566 = call i32 @llvm.bswap.i32(i32 %565) #9
  %call.i.i278.i.i = call ptr @page_address(ptr noundef %558) #9
  %flag.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i278.i.i, i32 0, i32 1, i32 2
  %567 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %567, i32 4)
  %568 = load i32, ptr %flag.i.i.i, align 1
  %569 = lshr i32 %568, 24
  %570 = call i32 @llvm.bswap.i32(i32 %560) #9
  %footer1.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i278.i.i, i32 0, i32 1
  %571 = ptrtoint ptr %footer1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %571, i32 4)
  store i32 %570, ptr %footer1.i.i.i, align 1
  %572 = call i32 @llvm.bswap.i32(i32 %562) #9
  %ino4.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i278.i.i, i32 0, i32 1, i32 1
  %573 = ptrtoint ptr %ino4.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %573, i32 4)
  store i32 %572, ptr %ino4.i.i.i, align 1
  %and.i279.i.i = and i32 %569, 7
  %or.i.i116.i = or i32 %and.i279.i.i, %566
  %574 = call i32 @llvm.bswap.i32(i32 %or.i.i116.i) #9
  %575 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %575, i32 4)
  store i32 %574, ptr %flag.i.i.i, align 1
  %576 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %108, align 4
  %call140.i.i = call zeroext i1 @set_page_dirty(ptr noundef %577) #9
  br label %err141.i.i

err141.i.i:                                       ; preds = %for.end.i.i, %check_index_in_prev_nodes.exit.i.i.err141.i.i_crit_edge, %land.lhs.true64.i.i.err141.i.i_crit_edge, %land.lhs.true.i115.i.err141.i.i_crit_edge, %if.then50.i.i, %if.end29.i109.i.err141.i.i_crit_edge
  %err.4.i.i = phi i32 [ %call30.i.i, %if.end29.i109.i.err141.i.i_crit_edge ], [ -117, %if.then50.i.i ], [ 0, %for.end.i.i ], [ %retval.1.i.i.i, %check_index_in_prev_nodes.exit.i.i.err141.i.i_crit_edge ], [ -117, %land.lhs.true.i115.i.err141.i.i_crit_edge ], [ -117, %land.lhs.true64.i.i.err141.i.i_crit_edge ]
  %recovered.3.i.i = phi i32 [ 0, %if.end29.i109.i.err141.i.i_crit_edge ], [ 0, %if.then50.i.i ], [ %recovered.0.lcssa.i.i, %for.end.i.i ], [ %recovered.0342.i.i, %check_index_in_prev_nodes.exit.i.i.err141.i.i_crit_edge ], [ %recovered.0342.i.i, %land.lhs.true.i115.i.err141.i.i_crit_edge ], [ %recovered.0342.i.i, %land.lhs.true64.i.i.err141.i.i_crit_edge ]
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn.i.i) #9
  br label %do_recover_data.exit.i

do_recover_data.exit.i:                           ; preds = %err141.i.i, %retry_dn.i.i.do_recover_data.exit.i_crit_edge, %if.then15.i.i, %if.end11.i.i.do_recover_data.exit.i_crit_edge, %if.then5.i.i, %if.then.i.i.do_recover_data.exit.i_crit_edge
  %err.5.i.i = phi i32 [ %call1.i.i, %if.then.i.i.do_recover_data.exit.i_crit_edge ], [ 0, %if.then15.i.i ], [ %err.4.i.i, %err141.i.i ], [ %call6.i.i, %if.then5.i.i ], [ %call12.i105.i, %if.end11.i.i.do_recover_data.exit.i_crit_edge ], [ %call23.i.i, %retry_dn.i.i.do_recover_data.exit.i_crit_edge ]
  %recovered.4.i.i = phi i32 [ 0, %if.then.i.i.do_recover_data.exit.i_crit_edge ], [ 0, %if.then15.i.i ], [ %recovered.3.i.i, %err141.i.i ], [ %spec.select214.i.i, %if.then5.i.i ], [ 0, %if.end11.i.i.do_recover_data.exit.i_crit_edge ], [ 0, %retry_dn.i.i.do_recover_data.exit.i_crit_edge ]
  %i_ino142.i.i = getelementptr inbounds %struct.inode, ptr %260, i32 0, i32 11
  %578 = ptrtoint ptr %i_ino142.i.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %i_ino142.i.i, align 8
  %i_advise.i280.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %260, i32 0, i32 2
  %580 = ptrtoint ptr %i_advise.i280.i.i to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %i_advise.i280.i.i, align 4
  %582 = and i8 %581, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %582)
  %tobool144.not.i.i = icmp eq i8 %582, 0
  %cond145.i.i = select i1 %tobool144.not.i.i, ptr @.str.19, ptr @.str.18
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.17, i32 noundef %579, ptr noundef nonnull %cond145.i.i, i32 noundef %recovered.4.i.i, i32 noundef %err.5.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i.i)
  %tobool39.not.i = icmp eq i32 %err.5.i.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %do_recover_data.exit.i.do.body33.sink.split_crit_edge

do_recover_data.exit.i.do.body33.sink.split_crit_edge: ; preds = %do_recover_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33.sink.split

if.end41.i:                                       ; preds = %do_recover_data.exit.i
  %blkaddr42.i = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0.i.i166, i32 0, i32 2
  %583 = ptrtoint ptr %blkaddr42.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %blkaddr42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %584, i32 %blkaddr.0162.i)
  %cmp43.i = icmp eq i32 %584, %blkaddr.0162.i
  br i1 %cmp43.i, label %if.then45.i, label %if.end41.i.cleanup.i_crit_edge

if.end41.i.cleanup.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then45.i:                                      ; preds = %if.end41.i
  %call.i.i117.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.0.i.i166) #9
  br i1 %call.i.i117.i, label %if.end.i.i118.i, label %if.then45.i.__list_del_entry.exit.i.i_crit_edge

if.then45.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i118.i:                                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i166, i32 0, i32 1
  %585 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %prev.i.i.i, align 4
  %587 = ptrtoint ptr %entry1.0.i.i166 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %entry1.0.i.i166, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %588, i32 0, i32 1
  %589 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %589)
  store ptr %586, ptr %prev1.i.i.i.i, align 4
  %590 = ptrtoint ptr %586 to i32
  call void @__asan_store4_noabort(i32 %590)
  store volatile ptr %588, ptr %586, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i118.i, %if.then45.i.__list_del_entry.exit.i.i_crit_edge
  %591 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %1, align 4
  %call.i.i.i119.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entry1.0.i.i166, ptr noundef %592, ptr noundef nonnull %tmp_inode_list) #9
  br i1 %call.i.i.i119.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup.i_crit_edge

__list_del_entry.exit.i.i.cleanup.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %593 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %593)
  store ptr %entry1.0.i.i166, ptr %1, align 4
  %594 = ptrtoint ptr %entry1.0.i.i166 to i32
  call void @__asan_store4_noabort(i32 %594)
  store ptr %tmp_inode_list, ptr %entry1.0.i.i166, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i166, i32 0, i32 1
  %595 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr %592, ptr %prev3.i.i.i.i, align 4
  %596 = ptrtoint ptr %592 to i32
  call void @__asan_store4_noabort(i32 %596)
  store volatile ptr %entry1.0.i.i166, ptr %592, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.cleanup.i_crit_edge, %if.end41.i.cleanup.i_crit_edge, %get_fsync_inode.exit.i173.cleanup.i_crit_edge, %for.cond.i.i168.cleanup.i_crit_edge
  %call.i.i120.i = call ptr @page_address(ptr noundef %call9.i) #9
  %next_blkaddr.i.i178 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i120.i, i32 0, i32 1, i32 4
  %597 = ptrtoint ptr %next_blkaddr.i.i178 to i32
  call void @__asan_loadN_noabort(i32 %597, i32 4)
  %598 = load i32, ptr %next_blkaddr.i.i178, align 1
  %599 = call i32 @llvm.bswap.i32(i32 %598) #9
  call fastcc void @f2fs_put_page(ptr noundef %call9.i, i32 noundef 1) #9
  %call8.i = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %sbi, i32 noundef %599, i32 noundef 5) #9
  br i1 %call8.i, label %cleanup.i.if.end.i162_crit_edge, label %cleanup.i.recover_data.exit.thread241_crit_edge

cleanup.i.recover_data.exit.thread241_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recover_data.exit.thread241

cleanup.i.if.end.i162_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i162

while.end.i:                                      ; preds = %if.end.i162
  %600 = ptrtoint ptr %call9.i to i32
  %tobool48.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool48.not.i, label %while.end.i.recover_data.exit.thread241_crit_edge, label %while.end.i.do.body33_crit_edge

while.end.i.do.body33_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

while.end.i.recover_data.exit.thread241_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recover_data.exit.thread241

recover_data.exit.thread241:                      ; preds = %while.end.i.recover_data.exit.thread241_crit_edge, %cleanup.i.recover_data.exit.thread241_crit_edge, %if.then15.i, %cond.end.i160.recover_data.exit.thread241_crit_edge
  call void @f2fs_allocate_new_segments(ptr noundef %sbi) #9
  %601 = ptrtoint ptr %inode_list to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load volatile ptr, ptr %inode_list, align 4
  %cmp.i179.not = icmp eq ptr %602, %inode_list
  br i1 %cmp.i179.not, label %recover_data.exit.thread241.skip_crit_edge, label %do.body26, !prof !59

recover_data.exit.thread241.skip_crit_edge:       ; preds = %recover_data.exit.thread241
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

do.body26:                                        ; preds = %recover_data.exit.thread241
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 816, 0\0A.popsection", ""() #9, !srcloc !65
  unreachable

do.body33.sink.split:                             ; preds = %do_recover_data.exit.i.do.body33.sink.split_crit_edge, %if.then30.i.do.body33.sink.split_crit_edge, %if.then18.i.i.do.body33.sink.split_crit_edge, %recover_quota_data.exit.i.i
  %err.2.ph135.i240.ph = phi i32 [ %call26.i.i.i, %recover_quota_data.exit.i.i ], [ %call20.i.i, %if.then18.i.i.do.body33.sink.split_crit_edge ], [ %call32.i, %if.then30.i.do.body33.sink.split_crit_edge ], [ %err.5.i.i, %do_recover_data.exit.i.do.body33.sink.split_crit_edge ]
  call fastcc void @f2fs_put_page(ptr noundef %call9.i, i32 noundef 1) #9
  br label %do.body33

do.body33:                                        ; preds = %do.body33.sink.split, %while.end.i.do.body33_crit_edge
  %err.2.ph135.i240 = phi i32 [ %600, %while.end.i.do.body33_crit_edge ], [ %err.2.ph135.i240.ph, %do.body33.sink.split ]
  %603 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %sbi, align 8
  %s_flags35 = getelementptr inbounds %struct.super_block, ptr %604, i32 0, i32 10
  %605 = ptrtoint ptr %s_flags35 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %s_flags35, align 4
  %and36 = and i32 %606, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body33.skip_crit_edge, label %do.body45, !prof !59

do.body33.skip_crit_edge:                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

do.body45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #9, !srcloc !66
  unreachable

skip:                                             ; preds = %do.body33.skip_crit_edge, %recover_data.exit.thread241.skip_crit_edge, %lor.lhs.false.skip_crit_edge, %find_fsync_dnodes.exit, %if.then63.i
  %err.0 = phi i32 [ %retval.2.i, %find_fsync_dnodes.exit ], [ 0, %lor.lhs.false.skip_crit_edge ], [ %err.2.ph135.i240, %do.body33.skip_crit_edge ], [ 0, %recover_data.exit.thread241.skip_crit_edge ], [ -22, %if.then63.i ]
  %ret.0 = phi i32 [ 0, %find_fsync_dnodes.exit ], [ %.mux, %lor.lhs.false.skip_crit_edge ], [ 0, %do.body33.skip_crit_edge ], [ 0, %recover_data.exit.thread241.skip_crit_edge ], [ 0, %if.then63.i ]
  %need_writecp.0.off0 = phi i1 [ false, %find_fsync_dnodes.exit ], [ false, %lor.lhs.false.skip_crit_edge ], [ true, %do.body33.skip_crit_edge ], [ true, %recover_data.exit.thread241.skip_crit_edge ], [ false, %if.then63.i ]
  br i1 %check_only, label %lor.rhs, label %skip.lor.end_crit_edge

skip.lor.end_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #11
  %607 = ptrtoint ptr %inode_list to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load volatile ptr, ptr %inode_list, align 4
  %cmp.i181 = icmp eq ptr %608, %inode_list
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %skip.lor.end_crit_edge, %skip.thread
  %need_writecp.0.off0262 = phi i1 [ %need_writecp.0.off0, %skip.lor.end_crit_edge ], [ %need_writecp.0.off0, %lor.rhs ], [ false, %skip.thread ]
  %ret.0261 = phi i32 [ %ret.0, %skip.lor.end_crit_edge ], [ %ret.0, %lor.rhs ], [ 0, %skip.thread ]
  %err.0260 = phi i32 [ %err.0, %skip.lor.end_crit_edge ], [ %err.0, %lor.rhs ], [ %call34.i, %skip.thread ]
  %609 = phi i1 [ true, %skip.lor.end_crit_edge ], [ %cmp.i181, %lor.rhs ], [ true, %skip.thread ]
  %610 = ptrtoint ptr %inode_list to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %inode_list, align 4
  %cmp.not17.i = icmp eq ptr %611, %inode_list
  br i1 %cmp.not17.i, label %lor.end.destroy_fsync_dnodes.exit_crit_edge, label %for.body.lr.ph.i

lor.end.destroy_fsync_dnodes.exit_crit_edge:      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_fsync_dnodes.exit

for.body.lr.ph.i:                                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0260)
  %tobool.not.i.i183 = icmp eq i32 %err.0260, 0
  br label %for.body.i

for.body.i:                                       ; preds = %del_fsync_inode.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.018.i = phi ptr [ %611, %for.body.lr.ph.i ], [ %tmp.0.i, %del_fsync_inode.exit.i.for.body.i_crit_edge ]
  %612 = ptrtoint ptr %entry1.018.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %tmp.0.i = load ptr, ptr %entry1.018.i, align 4
  br i1 %tobool.not.i.i183, label %for.body.i.if.end.i.i187_crit_edge, label %if.then.i.i185

for.body.i.if.end.i.i187_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i187

if.then.i.i185:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i.i184 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.018.i, i32 0, i32 1
  %613 = ptrtoint ptr %inode.i.i184 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %inode.i.i184, align 4
  call void @f2fs_inode_synced(ptr noundef %614) #9
  br label %if.end.i.i187

if.end.i.i187:                                    ; preds = %if.then.i.i185, %for.body.i.if.end.i.i187_crit_edge
  %inode2.i.i = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.018.i, i32 0, i32 1
  %615 = ptrtoint ptr %inode2.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %inode2.i.i, align 4
  call void @iput(ptr noundef %616) #9
  %call.i.i.i.i186 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.018.i) #9
  br i1 %call.i.i.i.i186, label %if.end.i.i.i.i188, label %if.end.i.i187.del_fsync_inode.exit.i_crit_edge

if.end.i.i187.del_fsync_inode.exit.i_crit_edge:   ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %del_fsync_inode.exit.i

if.end.i.i.i.i188:                                ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.018.i, i32 0, i32 1
  %617 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %prev.i.i.i.i, align 4
  %619 = ptrtoint ptr %entry1.018.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %entry1.018.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %620, i32 0, i32 1
  %621 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store ptr %618, ptr %prev1.i.i.i.i.i, align 4
  %622 = ptrtoint ptr %618 to i32
  call void @__asan_store4_noabort(i32 %622)
  store volatile ptr %620, ptr %618, align 4
  br label %del_fsync_inode.exit.i

del_fsync_inode.exit.i:                           ; preds = %if.end.i.i.i.i188, %if.end.i.i187.del_fsync_inode.exit.i_crit_edge
  %623 = ptrtoint ptr %entry1.018.i to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.018.i, align 4
  %prev.i.i.i189 = getelementptr inbounds %struct.list_head, ptr %entry1.018.i, i32 0, i32 1
  %624 = ptrtoint ptr %prev.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %624)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i189, align 4
  %625 = load ptr, ptr @fsync_entry_slab, align 4
  call void @kmem_cache_free(ptr noundef %625, ptr noundef %entry1.018.i) #9
  %cmp.not.i = icmp eq ptr %tmp.0.i, %inode_list
  br i1 %cmp.not.i, label %del_fsync_inode.exit.i.destroy_fsync_dnodes.exit_crit_edge, label %del_fsync_inode.exit.i.for.body.i_crit_edge

del_fsync_inode.exit.i.for.body.i_crit_edge:      ; preds = %del_fsync_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

del_fsync_inode.exit.i.destroy_fsync_dnodes.exit_crit_edge: ; preds = %del_fsync_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_fsync_dnodes.exit

destroy_fsync_dnodes.exit:                        ; preds = %del_fsync_inode.exit.i.destroy_fsync_dnodes.exit_crit_edge, %lor.end.destroy_fsync_dnodes.exit_crit_edge
  %626 = ptrtoint ptr %tmp_inode_list to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %tmp_inode_list, align 4
  %cmp.not17.i190 = icmp eq ptr %627, %tmp_inode_list
  br i1 %cmp.not17.i190, label %destroy_fsync_dnodes.exit.destroy_fsync_dnodes.exit207_crit_edge, label %for.body.lr.ph.i192

destroy_fsync_dnodes.exit.destroy_fsync_dnodes.exit207_crit_edge: ; preds = %destroy_fsync_dnodes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_fsync_dnodes.exit207

for.body.lr.ph.i192:                              ; preds = %destroy_fsync_dnodes.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0260)
  %tobool.not.i.i191 = icmp eq i32 %err.0260, 0
  br label %for.body.i195

for.body.i195:                                    ; preds = %del_fsync_inode.exit.i206.for.body.i195_crit_edge, %for.body.lr.ph.i192
  %entry1.018.i193 = phi ptr [ %627, %for.body.lr.ph.i192 ], [ %tmp.0.i194, %del_fsync_inode.exit.i206.for.body.i195_crit_edge ]
  %628 = ptrtoint ptr %entry1.018.i193 to i32
  call void @__asan_load4_noabort(i32 %628)
  %tmp.0.i194 = load ptr, ptr %entry1.018.i193, align 4
  br i1 %tobool.not.i.i191, label %for.body.i195.if.end.i.i200_crit_edge, label %if.then.i.i197

for.body.i195.if.end.i.i200_crit_edge:            ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i200

if.then.i.i197:                                   ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i.i196 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.018.i193, i32 0, i32 1
  %629 = ptrtoint ptr %inode.i.i196 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %inode.i.i196, align 4
  call void @f2fs_inode_synced(ptr noundef %630) #9
  br label %if.end.i.i200

if.end.i.i200:                                    ; preds = %if.then.i.i197, %for.body.i195.if.end.i.i200_crit_edge
  %inode2.i.i198 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.018.i193, i32 0, i32 1
  %631 = ptrtoint ptr %inode2.i.i198 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %inode2.i.i198, align 4
  call void @iput(ptr noundef %632) #9
  %call.i.i.i.i199 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.018.i193) #9
  br i1 %call.i.i.i.i199, label %if.end.i.i.i.i203, label %if.end.i.i200.del_fsync_inode.exit.i206_crit_edge

if.end.i.i200.del_fsync_inode.exit.i206_crit_edge: ; preds = %if.end.i.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %del_fsync_inode.exit.i206

if.end.i.i.i.i203:                                ; preds = %if.end.i.i200
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i201 = getelementptr inbounds %struct.list_head, ptr %entry1.018.i193, i32 0, i32 1
  %633 = ptrtoint ptr %prev.i.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %prev.i.i.i.i201, align 4
  %635 = ptrtoint ptr %entry1.018.i193 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %entry1.018.i193, align 4
  %prev1.i.i.i.i.i202 = getelementptr inbounds %struct.list_head, ptr %636, i32 0, i32 1
  %637 = ptrtoint ptr %prev1.i.i.i.i.i202 to i32
  call void @__asan_store4_noabort(i32 %637)
  store ptr %634, ptr %prev1.i.i.i.i.i202, align 4
  %638 = ptrtoint ptr %634 to i32
  call void @__asan_store4_noabort(i32 %638)
  store volatile ptr %636, ptr %634, align 4
  br label %del_fsync_inode.exit.i206

del_fsync_inode.exit.i206:                        ; preds = %if.end.i.i.i.i203, %if.end.i.i200.del_fsync_inode.exit.i206_crit_edge
  %639 = ptrtoint ptr %entry1.018.i193 to i32
  call void @__asan_store4_noabort(i32 %639)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.018.i193, align 4
  %prev.i.i.i204 = getelementptr inbounds %struct.list_head, ptr %entry1.018.i193, i32 0, i32 1
  %640 = ptrtoint ptr %prev.i.i.i204 to i32
  call void @__asan_store4_noabort(i32 %640)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i204, align 4
  %641 = load ptr, ptr @fsync_entry_slab, align 4
  call void @kmem_cache_free(ptr noundef %641, ptr noundef %entry1.018.i193) #9
  %cmp.not.i205 = icmp eq ptr %tmp.0.i194, %tmp_inode_list
  br i1 %cmp.not.i205, label %del_fsync_inode.exit.i206.destroy_fsync_dnodes.exit207_crit_edge, label %del_fsync_inode.exit.i206.for.body.i195_crit_edge

del_fsync_inode.exit.i206.for.body.i195_crit_edge: ; preds = %del_fsync_inode.exit.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i195

del_fsync_inode.exit.i206.destroy_fsync_dnodes.exit207_crit_edge: ; preds = %del_fsync_inode.exit.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_fsync_dnodes.exit207

destroy_fsync_dnodes.exit207:                     ; preds = %del_fsync_inode.exit.i206.destroy_fsync_dnodes.exit207_crit_edge, %destroy_fsync_dnodes.exit.destroy_fsync_dnodes.exit207_crit_edge
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  %642 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %643, i32 0, i32 9
  %644 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %i_mapping.i, align 8
  %646 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %sm_info.i.i, align 8
  %tobool61.not = icmp eq ptr %647, null
  br i1 %tobool61.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %destroy_fsync_dnodes.exit207
  call void @__sanitizer_cov_trace_pc() #11
  %main_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %647, i32 0, i32 6
  %648 = ptrtoint ptr %main_blkaddr to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %main_blkaddr, align 4
  br label %cond.end

cond.false:                                       ; preds = %destroy_fsync_dnodes.exit207
  call void @__sanitizer_cov_trace_pc() #11
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %650 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %raw_super.i, align 8
  %main_blkaddr64 = getelementptr inbounds %struct.f2fs_super_block, ptr %651, i32 0, i32 23
  %652 = ptrtoint ptr %main_blkaddr64 to i32
  call void @__asan_loadN_noabort(i32 %652, i32 4)
  %653 = load i32, ptr %main_blkaddr64, align 1
  %654 = call i32 @llvm.bswap.i32(i32 %653)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %649, %cond.true ], [ %654, %cond.false ]
  %conv = zext i32 %cond to i64
  %shl = shl nuw nsw i64 %conv, 12
  call void @truncate_inode_pages_range(ptr noundef %645, i64 noundef %shl, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0260)
  %tobool65.not = icmp eq i32 %err.0260, 0
  br i1 %tobool65.not, label %land.lhs.true.critedge, label %if.end81.thread253

if.end81.thread253:                               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %node_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 10
  %655 = ptrtoint ptr %node_inode.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %node_inode.i, align 4
  %i_mapping.i209 = getelementptr inbounds %struct.inode, ptr %656, i32 0, i32 9
  %657 = ptrtoint ptr %i_mapping.i209 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %i_mapping.i209, align 8
  call void @truncate_inode_pages_final(ptr noundef %658) #9
  %659 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i211 = getelementptr inbounds %struct.inode, ptr %660, i32 0, i32 9
  %661 = ptrtoint ptr %i_mapping.i211 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %i_mapping.i211, align 8
  call void @truncate_inode_pages_final(ptr noundef %662) #9
  br label %if.end84

land.lhs.true.critedge:                           ; preds = %cond.end
  br i1 %609, label %land.lhs.true73, label %land.lhs.true.critedge.if.then83_crit_edge

land.lhs.true.critedge.if.then83_crit_edge:       ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

land.lhs.true73:                                  ; preds = %land.lhs.true.critedge
  %663 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %sbi, align 8
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %664, i32 0, i32 10
  %665 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %666, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true76, label %land.lhs.true73.if.then83_crit_edge

land.lhs.true73.if.then83_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %raw_super.i212 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %667 = ptrtoint ptr %raw_super.i212 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %raw_super.i212, align 8
  %feature.i = getelementptr inbounds %struct.f2fs_super_block, ptr %668, i32 0, i32 34
  %669 = ptrtoint ptr %feature.i to i32
  call void @__asan_loadN_noabort(i32 %669, i32 4)
  %670 = load i32, ptr %feature.i, align 1
  %671 = and i32 %670, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %671)
  %tobool78.not = icmp eq i32 %671, 0
  br i1 %tobool78.not, label %land.lhs.true76.if.then83_crit_edge, label %if.end81

land.lhs.true76.if.then83_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.end81:                                         ; preds = %land.lhs.true76
  %call80 = call i32 @f2fs_fix_curseg_write_pointer(ptr noundef %sbi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool82.not = icmp eq i32 %call80, 0
  br i1 %tobool82.not, label %if.end81.if.then83_crit_edge, label %if.end81.if.end84_crit_edge

if.end81.if.end84_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end81.if.then83_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.then83:                                        ; preds = %if.end81.if.then83_crit_edge, %land.lhs.true76.if.then83_crit_edge, %land.lhs.true73.if.then83_crit_edge, %land.lhs.true.critedge.if.then83_crit_edge
  %ret.1250 = phi i32 [ 0, %if.end81.if.then83_crit_edge ], [ %ret.0261, %land.lhs.true73.if.then83_crit_edge ], [ %ret.0261, %land.lhs.true76.if.then83_crit_edge ], [ %ret.0261, %land.lhs.true.critedge.if.then83_crit_edge ]
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  call void @_clear_bit(i32 noundef 3, ptr noundef %s_flag.i) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81.if.end84_crit_edge, %if.end81.thread253
  %tobool82.not251 = phi i1 [ true, %if.then83 ], [ false, %if.end81.if.end84_crit_edge ], [ false, %if.end81.thread253 ]
  %ret.1249 = phi i32 [ %ret.1250, %if.then83 ], [ %call80, %if.end81.if.end84_crit_edge ], [ %ret.0261, %if.end81.thread253 ]
  %err.1247 = phi i32 [ 0, %if.then83 ], [ %call80, %if.end81.if.end84_crit_edge ], [ %err.0260, %if.end81.thread253 ]
  call void @up_write(ptr noundef %cp_global_sem) #9
  %672 = ptrtoint ptr %dir_list to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %dir_list, align 4
  %cmp.not17.i213 = icmp eq ptr %673, %dir_list
  br i1 %cmp.not17.i213, label %if.end84.destroy_fsync_dnodes.exit230_crit_edge, label %if.end84.for.body.i218_crit_edge

if.end84.for.body.i218_crit_edge:                 ; preds = %if.end84
  br label %for.body.i218

if.end84.destroy_fsync_dnodes.exit230_crit_edge:  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_fsync_dnodes.exit230

for.body.i218:                                    ; preds = %del_fsync_inode.exit.i229.for.body.i218_crit_edge, %if.end84.for.body.i218_crit_edge
  %entry1.018.i216 = phi ptr [ %tmp.0.i217, %del_fsync_inode.exit.i229.for.body.i218_crit_edge ], [ %673, %if.end84.for.body.i218_crit_edge ]
  %674 = ptrtoint ptr %entry1.018.i216 to i32
  call void @__asan_load4_noabort(i32 %674)
  %tmp.0.i217 = load ptr, ptr %entry1.018.i216, align 4
  br i1 %tobool82.not251, label %for.body.i218.if.end.i.i223_crit_edge, label %if.then.i.i220

for.body.i218.if.end.i.i223_crit_edge:            ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i223

if.then.i.i220:                                   ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i.i219 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.018.i216, i32 0, i32 1
  %675 = ptrtoint ptr %inode.i.i219 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %inode.i.i219, align 4
  call void @f2fs_inode_synced(ptr noundef %676) #9
  br label %if.end.i.i223

if.end.i.i223:                                    ; preds = %if.then.i.i220, %for.body.i218.if.end.i.i223_crit_edge
  %inode2.i.i221 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.018.i216, i32 0, i32 1
  %677 = ptrtoint ptr %inode2.i.i221 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %inode2.i.i221, align 4
  call void @iput(ptr noundef %678) #9
  %call.i.i.i.i222 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.018.i216) #9
  br i1 %call.i.i.i.i222, label %if.end.i.i.i.i226, label %if.end.i.i223.del_fsync_inode.exit.i229_crit_edge

if.end.i.i223.del_fsync_inode.exit.i229_crit_edge: ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #11
  br label %del_fsync_inode.exit.i229

if.end.i.i.i.i226:                                ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i224 = getelementptr inbounds %struct.list_head, ptr %entry1.018.i216, i32 0, i32 1
  %679 = ptrtoint ptr %prev.i.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %prev.i.i.i.i224, align 4
  %681 = ptrtoint ptr %entry1.018.i216 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %entry1.018.i216, align 4
  %prev1.i.i.i.i.i225 = getelementptr inbounds %struct.list_head, ptr %682, i32 0, i32 1
  %683 = ptrtoint ptr %prev1.i.i.i.i.i225 to i32
  call void @__asan_store4_noabort(i32 %683)
  store ptr %680, ptr %prev1.i.i.i.i.i225, align 4
  %684 = ptrtoint ptr %680 to i32
  call void @__asan_store4_noabort(i32 %684)
  store volatile ptr %682, ptr %680, align 4
  br label %del_fsync_inode.exit.i229

del_fsync_inode.exit.i229:                        ; preds = %if.end.i.i.i.i226, %if.end.i.i223.del_fsync_inode.exit.i229_crit_edge
  %685 = ptrtoint ptr %entry1.018.i216 to i32
  call void @__asan_store4_noabort(i32 %685)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.018.i216, align 4
  %prev.i.i.i227 = getelementptr inbounds %struct.list_head, ptr %entry1.018.i216, i32 0, i32 1
  %686 = ptrtoint ptr %prev.i.i.i227 to i32
  call void @__asan_store4_noabort(i32 %686)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i227, align 4
  %687 = load ptr, ptr @fsync_entry_slab, align 4
  call void @kmem_cache_free(ptr noundef %687, ptr noundef %entry1.018.i216) #9
  %cmp.not.i228 = icmp eq ptr %tmp.0.i217, %dir_list
  br i1 %cmp.not.i228, label %del_fsync_inode.exit.i229.destroy_fsync_dnodes.exit230_crit_edge, label %del_fsync_inode.exit.i229.for.body.i218_crit_edge

del_fsync_inode.exit.i229.for.body.i218_crit_edge: ; preds = %del_fsync_inode.exit.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i218

del_fsync_inode.exit.i229.destroy_fsync_dnodes.exit230_crit_edge: ; preds = %del_fsync_inode.exit.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_fsync_dnodes.exit230

destroy_fsync_dnodes.exit230:                     ; preds = %del_fsync_inode.exit.i229.destroy_fsync_dnodes.exit230_crit_edge, %if.end84.destroy_fsync_dnodes.exit230_crit_edge
  br i1 %need_writecp.0.off0262, label %if.then87, label %destroy_fsync_dnodes.exit230.if.end92_crit_edge

destroy_fsync_dnodes.exit230.if.end92_crit_edge:  ; preds = %destroy_fsync_dnodes.exit230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then87:                                        ; preds = %destroy_fsync_dnodes.exit230
  %s_flag.i231 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  call void @_set_bit(i32 noundef 7, ptr noundef %s_flag.i231) #9
  br i1 %tobool82.not251, label %if.then89, label %if.then87.if.end92_crit_edge

if.then87.if.end92_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then89:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpc) #9
  %688 = call ptr @memcpy(ptr %cpc, ptr @__const.f2fs_recover_fsync_data.cpc, i32 32)
  %call90 = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpc) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then87.if.end92_crit_edge, %destroy_fsync_dnodes.exit230.if.end92_crit_edge
  %err.2 = phi i32 [ %err.1247, %if.then87.if.end92_crit_edge ], [ %call90, %if.then89 ], [ %err.1247, %destroy_fsync_dnodes.exit230.if.end92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool93.not = icmp eq i32 %call, 0
  br i1 %tobool93.not, label %if.end92.if.end96_crit_edge, label %if.then94

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %689 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %sbi, align 8
  call void @f2fs_quota_off_umount(ptr noundef %690) #9
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92.if.end96_crit_edge
  %691 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %sbi, align 8
  %s_flags98 = getelementptr inbounds %struct.super_block, ptr %692, i32 0, i32 10
  %693 = ptrtoint ptr %s_flags98 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %6, ptr %s_flags98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1249)
  %tobool99.not = icmp eq i32 %ret.1249, 0
  %err.2.ret.1 = select i1 %tobool99.not, i32 %err.2, i32 %ret.1249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dir_list) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_inode_list) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inode_list) #9
  ret i32 %err.2.ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_enable_quota_files(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_fix_curseg_write_pointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_write_checkpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_quota_off_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_create_recovery_cache() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 0, i32 noundef 131072, ptr noundef null) #9
  store ptr %call.i, ptr @fsync_entry_slab, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_recovery_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsync_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_tmp_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_recoverable_dnode(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %2, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %3, %if.end.i.i.i ]
  %4 = inttoptr i32 %retval.0.i.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !59

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !62
  unreachable

folio_test_swapbacked.exit.i.i.i.i:               ; preds = %_compound_head.exit.i.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge, label %land.rhs.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i3.i.i

land.rhs.i.i.i.i:                                 ; preds = %folio_test_swapbacked.exit.i.i.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapcache.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !59

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !62
  unreachable

folio_test_swapcache.exit.i.i.i:                  ; preds = %land.rhs.i.i.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, label %if.then.i2.i.i, !prof !59

folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i3.i.i

if.then.i2.i.i:                                   ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i.i = tail call ptr @swapcache_mapping(ptr noundef %4) #9
  br label %F2FS_P_SB.exit

if.end.i3.i.i:                                    ; preds = %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge
  %mapping.i.i.i = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping.i.i.i, align 4
  br label %F2FS_P_SB.exit

F2FS_P_SB.exit:                                   ; preds = %if.end.i3.i.i, %if.then.i2.i.i
  %retval.0.i4.i.i = phi ptr [ %call2.i.i.i, %if.then.i2.i.i ], [ %17, %if.end.i3.i.i ]
  %18 = ptrtoint ptr %retval.0.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i4.i.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %ckpt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ckpt.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %25, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #9
  %ckpt_flags1.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %25, i32 0, i32 10
  %29 = ptrtoint ptr %ckpt_flags1.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %ckpt_flags1.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %and.i = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %F2FS_P_SB.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @page_address(ptr noundef %page) #9
  %cp_ver.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %cp_ver.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %cp_ver.i, align 1
  %34 = xor i64 %33, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %34)
  %cmp = icmp ult i64 %34, 4294967296
  br label %cleanup

if.end:                                           ; preds = %F2FS_P_SB.exit
  %and.i22 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool.i23.not = icmp eq i32 %and.i22, 0
  br i1 %tobool.i23.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %checksum_offset.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %25, i32 0, i32 18
  %35 = ptrtoint ptr %checksum_offset.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %checksum_offset.i, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %add.ptr.i = getelementptr i8, ptr %25, i32 %37
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %conv.i = zext i32 %40 to i64
  %shl9 = shl nuw i64 %conv.i, 32
  %or = or i64 %shl9, %28
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %cp_ver.0 = phi i64 [ %or, %if.then7 ], [ %28, %if.end.if.end10_crit_edge ]
  %call.i.i24 = tail call ptr @page_address(ptr noundef %page) #9
  %cp_ver.i25 = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i24, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %cp_ver.i25 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %cp_ver.i25, align 1
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %cp_ver.0, i64 %43)
  %cmp12 = icmp eq i64 %cp_ver.0, %43
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %retval.0 = phi i1 [ %cmp, %if.then ], [ %cmp12, %if.end10 ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef %unlock) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unlock)
  %tobool1.not = icmp eq i32 %unlock, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.body:                                          ; preds = %if.end
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !67

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !59

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !68
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !59

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !67

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %page) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end.if.end13_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i17 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i18, label %if.end.i.i21, label %if.then.i.i20, !prof !59

if.then.i.i20:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i19 = add i32 %17, -1
  br label %_compound_head.exit.i23

if.end.i.i21:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %18, %if.end.i.i21 ]
  %19 = inttoptr i32 %retval.0.i.i22 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !67

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !74

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %19) #9
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_recover_inode_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_fsync_inode(ptr nocapture noundef readonly %sbi, ptr noundef %head, i32 noundef %ino, i1 noundef zeroext %quota_inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %call = tail call ptr @f2fs_iget_retry(ptr noundef %1, i32 noundef %ino) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @f2fs_dquot_initialize(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end6:                                          ; preds = %if.end
  br i1 %quota_inode, label %if.then8, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @dquot_alloc_inode(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.err_out_crit_edge

if.then8.err_out_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %2 = load ptr, ptr @fsync_entry_slab, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3392) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end13.f2fs_kmem_cache_alloc.exit_crit_edge

if.end13.f2fs_kmem_cache_alloc.exit_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_kmem_cache_alloc.exit

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36160) #9
  br label %f2fs_kmem_cache_alloc.exit

f2fs_kmem_cache_alloc.exit:                       ; preds = %if.then.i.i, %if.end13.f2fs_kmem_cache_alloc.exit_crit_edge
  %entry1.0.i.i = phi ptr [ %call.i.i, %if.end13.f2fs_kmem_cache_alloc.exit_crit_edge ], [ %call2.i.i, %if.then.i.i ]
  %inode15 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %inode15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %inode15, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1.0.i.i, ptr noundef %5, ptr noundef %head) #9
  br i1 %call.i.i28, label %if.end.i.i, label %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge

f2fs_kmem_cache_alloc.exit.cleanup_crit_edge:     ; preds = %f2fs_kmem_cache_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %f2fs_kmem_cache_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry1.0.i.i, ptr %prev.i, align 4
  %7 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %entry1.0.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry1.0.i.i, ptr %5, align 4
  br label %cleanup

err_out:                                          ; preds = %if.then8.err_out_crit_edge, %if.end.err_out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.err_out_crit_edge ], [ %call9, %if.then8.err_out_crit_edge ]
  tail call void @iput(ptr noundef %call) #9
  %10 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end.i.i, %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %err_out ], [ %call, %entry.cleanup_crit_edge ], [ %entry1.0.i.i, %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge ], [ %entry1.0.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_ra_meta_pages_cond(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_iget_retry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_alloc_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recover_dentry(ptr noundef %inode, ptr noundef %ipage, ptr noundef %dir_list) unnamed_addr #0 align 64 {
entry:
  %fname = alloca %struct.f2fs_filename, align 4
  %usr_fname = alloca %struct.qstr, align 8
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @page_address(ptr noundef %ipage) #9
  %i_pino = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 18
  %0 = ptrtoint ptr %i_pino to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %i_pino, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname) #9
  %3 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %4 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %6 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %7 = call ptr @memset(ptr %fname, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %usr_fname) #9
  %8 = call ptr @memset(ptr %usr_fname, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %9 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !75
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %dir_list, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %dir_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %inode.i = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i, align 8
  %cmp2.i = icmp eq i32 %14, %2
  br i1 %cmp2.i, label %get_fsync_inode.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_fsync_inode.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %get_fsync_inode.exit.if.then_crit_edge, label %get_fsync_inode.exit.if.end9_crit_edge

get_fsync_inode.exit.if.end9_crit_edge:           ; preds = %get_fsync_inode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

get_fsync_inode.exit.if.then_crit_edge:           ; preds = %get_fsync_inode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %get_fsync_inode.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i, align 16
  %call4 = tail call fastcc ptr @add_fsync_inode(ptr noundef %18, ptr noundef %dir_list, i32 noundef %2, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call4 to i32
  br label %out

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %get_fsync_inode.exit.if.end9_crit_edge
  %entry1.0 = phi ptr [ %entry1.0.i, %get_fsync_inode.exit.if.end9_crit_edge ], [ %call4, %if.then.if.end9_crit_edge ]
  %inode10 = getelementptr inbounds %struct.fsync_inode_entry, ptr %entry1.0, i32 0, i32 1
  %20 = ptrtoint ptr %inode10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode10, align 4
  %22 = call ptr @memset(ptr %fname, i32 0, i32 32)
  %i_namelen.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 19
  %23 = ptrtoint ptr %i_namelen.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %i_namelen.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %4, align 4
  %i_name.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 20
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %i_name.i, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %25)
  %cmp.i115 = icmp ugt i32 %25, 255
  br i1 %cmp.i115, label %do.end.i, label %if.end24.i, !prof !67

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 128, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end24.i:                                       ; preds = %if.end9
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %28 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end24.i.if.end34.i_crit_edge

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %name29.i = getelementptr inbounds %struct.qstr, ptr %usr_fname, i32 0, i32 1
  %30 = ptrtoint ptr %name29.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %i_name.i, ptr %name29.i, align 8
  %31 = ptrtoint ptr %usr_fname to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %usr_fname, align 8
  %32 = ptrtoint ptr %fname to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %usr_fname, ptr %fname, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end34.i_crit_edge
  %33 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_flags.i, align 4
  %35 = and i32 %34, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %35)
  %.not.i = icmp eq i32 %35, 49152
  br i1 %.not.i, label %if.then41.i, label %if.else.i

if.then41.i:                                      ; preds = %if.end34.i
  %36 = add nsw i32 %25, -252
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %36)
  %cmp44.i = icmp ult i32 %36, -256
  br i1 %cmp44.i, label %if.then41.i.out_crit_edge, label %if.end46.i

if.then41.i.out_crit_edge:                        ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end46.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.f2fs_inode, ptr %call.i, i32 0, i32 20, i32 %25
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx.i, align 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %5, align 4
  br label %init_recovered_filename.exit

if.else.i:                                        ; preds = %if.end34.i
  %and39.i = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else61.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.else.i
  %call.i116 = call i32 @f2fs_init_casefolded_name(ptr noundef %21, ptr noundef nonnull %fname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool55.not.i = icmp eq i32 %call.i116, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.then54.i.out_crit_edge

if.then54.i.out_crit_edge:                        ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end57.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @f2fs_hash_filename(ptr noundef %21, ptr noundef nonnull %fname) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %40 = load ptr, ptr @f2fs_cf_name_slab, align 4
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %6, align 4
  call void @kmem_cache_free(ptr noundef %40, ptr noundef %42) #9
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %6, align 4
  br label %init_recovered_filename.exit

if.else61.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @f2fs_hash_filename(ptr noundef %21, ptr noundef nonnull %fname) #9
  br label %init_recovered_filename.exit

init_recovered_filename.exit:                     ; preds = %if.else61.i, %if.end57.i, %if.end46.i
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %retry

retry:                                            ; preds = %retry.backedge, %init_recovered_filename.exit
  %err.0 = phi i32 [ 0, %init_recovered_filename.exit ], [ %err.0.be, %retry.backedge ]
  %call15 = call ptr @__f2fs_find_entry(ptr noundef %21, ptr noundef nonnull %fname, ptr noundef nonnull %page) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %retry
  %44 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.f2fs_dir_entry, ptr %call15, i32 0, i32 1
  %46 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %ino, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %48)
  %cmp = icmp eq i32 %45, %48
  br i1 %cmp, label %land.lhs.true.out_put_crit_edge, label %if.then20.critedge

land.lhs.true.out_put_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put

if.then20.critedge:                               ; preds = %land.lhs.true
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %call22 = call ptr @f2fs_iget_retry(ptr noundef %50, i32 noundef %48) #9
  %cmp.i118 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end, label %if.end46

do.end:                                           ; preds = %if.then20.critedge
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 200, i32 noundef 9, ptr noundef null) #9
  %51 = ptrtoint ptr %call22 to i32
  %cmp43 = icmp eq ptr %call22, inttoptr (i32 -2 to ptr)
  %spec.store.select = select i1 %cmp43, i32 -17, i32 %51
  br label %out_put

if.end46:                                         ; preds = %if.then20.critedge
  %call47 = call i32 @f2fs_dquot_initialize(ptr noundef %call22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef %call22) #9
  br label %out_put

if.end50:                                         ; preds = %if.end46
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i120 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i.i120 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i120, align 16
  %call52 = call i32 @f2fs_acquire_orphan_inode(ptr noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef %call22) #9
  br label %out_put

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page, align 4
  call void @f2fs_delete_entry(ptr noundef nonnull %call15, ptr noundef %57, ptr noundef %21, ptr noundef %call22) #9
  call void @iput(ptr noundef %call22) #9
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end63.retry.backedge_crit_edge, %if.end55
  %err.0.be = phi i32 [ 0, %if.end55 ], [ -12, %if.end63.retry.backedge_crit_edge ]
  br label %retry

if.else:                                          ; preds = %retry
  %58 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page, align 4
  %cmp.i121 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %59 to i32
  br label %if.end63

if.else59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_ino, align 8
  %63 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %inode, align 8
  %call61 = call i32 @f2fs_add_dentry(ptr noundef %21, ptr noundef nonnull %fname, ptr noundef %inode, i32 noundef %62, i16 noundef zeroext %64) #9
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.then57
  %err.1 = phi i32 [ %60, %if.then57 ], [ %call61, %if.else59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.1)
  %cmp64 = icmp eq i32 %err.1, -12
  br i1 %cmp64, label %if.end63.retry.backedge_crit_edge, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end63.retry.backedge_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

out_put:                                          ; preds = %if.then54, %if.then49, %do.end, %land.lhs.true.out_put_crit_edge
  %err.2 = phi i32 [ %spec.store.select, %do.end ], [ %call47, %if.then49 ], [ %call52, %if.then54 ], [ %err.0, %land.lhs.true.out_put_crit_edge ]
  %65 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %out_put.out_crit_edge, label %if.end.i

out_put.out_crit_edge:                            ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %out_put
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i17.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !59

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i19.i = add i32 %69, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %66 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %70, %if.end.i.i21.i ]
  %71 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %72 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !67

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %71, ptr noundef nonnull @.str.6) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %74, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@recover_dentry, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !74

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %71, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.out_crit_edge

folio_put_testzero.exit.i.i.i.out_crit_edge:      ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %71) #9
  br label %out

out:                                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.out_crit_edge, %out_put.out_crit_edge, %if.end63.out_crit_edge, %if.then54.i.out_crit_edge, %if.then41.i.out_crit_edge, %do.end.i, %if.then6
  %dir.0 = phi ptr [ %call4, %if.then6 ], [ %21, %out_put.out_crit_edge ], [ %21, %folio_put_testzero.exit.i.i.i.out_crit_edge ], [ %21, %if.then.i4.i.i ], [ %21, %do.end.i ], [ %21, %if.then41.i.out_crit_edge ], [ %21, %if.then54.i.out_crit_edge ], [ %21, %if.end63.out_crit_edge ]
  %err.3 = phi i32 [ %19, %if.then6 ], [ %err.2, %out_put.out_crit_edge ], [ %err.2, %folio_put_testzero.exit.i.i.i.out_crit_edge ], [ %err.2, %if.then.i4.i.i ], [ -36, %do.end.i ], [ -22, %if.then41.i.out_crit_edge ], [ %call.i116, %if.then54.i.out_crit_edge ], [ %err.1, %if.end63.out_crit_edge ]
  %i_advise.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %75 = ptrtoint ptr %i_advise.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %i_advise.i, align 4
  %i_sb.i123 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %77 = ptrtoint ptr %i_sb.i123 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_sb.i123, align 4
  %s_fs_info.i.i124 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 33
  %79 = ptrtoint ptr %s_fs_info.i.i124 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i.i124, align 16
  %call.i.i = call ptr @page_address(ptr noundef %ipage) #9
  %ino.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %ino.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %ino.i, align 1
  %cmp.i125 = icmp ugt ptr %dir.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %out.cond.end_crit_edge, label %cond.false

out.cond.end_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino75 = getelementptr inbounds %struct.inode, ptr %dir.0, i32 0, i32 11
  %83 = ptrtoint ptr %i_ino75 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_ino75, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %out.cond.end_crit_edge
  %cond = phi i32 [ %84, %cond.false ], [ 0, %out.cond.end_crit_edge ]
  %85 = call i32 @llvm.bswap.i32(i32 %82) #9
  %86 = and i8 %76, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool68.not = icmp eq i8 %86, 0
  %i_name = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 20
  %name.0 = select i1 %tobool68.not, ptr %i_name, ptr @.str.11
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %80, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.recover_dentry, i32 noundef %85, ptr noundef %name.0, i32 noundef %cond, i32 noundef %err.3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %usr_fname) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname) #9
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_allocate_new_segments(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_transfer_project_quota(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp ne i32 %3, 0
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %i_size)
  %cmp = icmp eq i64 %call4, %i_size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.end.i_size_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %14 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %19, ptrtoint (ptr @lockdep_recursion to i32)
  %20 = inttoptr i32 %add.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %23 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i7.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i29.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i9.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %34, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %35 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %38, ptrtoint (ptr @hardirqs_enabled to i32)
  %39 = inttoptr i32 %add47.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %42 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i12.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %45, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool54.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !59

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.end.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %46 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #9
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %49) #9
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %50 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %i_size, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  %51 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  %53 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i26.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #9
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %brmerge, label %if.then7, label %i_size_write.exit.cleanup_crit_edge

i_size_write.exit.cleanup_crit_edge:              ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %i_size_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !84
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !67

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !86
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !88
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__f2fs_find_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_acquire_orphan_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_delete_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_add_dentry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_init_casefolded_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_hash_filename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_recover_inline_xattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_recover_xattr_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_recover_inline_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_start_bidx_of_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_dnode_of_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memalloc_retry_wait(i32 noundef %gfp_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@memalloc_retry_wait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  %7 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags1.i, align 4
  %call55 = tail call i32 @io_schedule_timeout(i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_node_info(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_truncate_data_blocks_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_reserve_new_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_replace_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_dnode(ptr nocapture noundef %dn) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %node_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %0 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %1, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %2 = ptrtoint ptr %inode_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode_page, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node_page, align 4
  %cmp.not = icmp eq ptr %5, %3
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %if.end.i

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i:                                         ; preds = %land.lhs.true
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i17.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !59

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i19.i = add i32 %8, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %9, %if.end.i.i21.i ]
  %10 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !67

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_dnode, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !74

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end7_crit_edge

folio_put_testzero.exit.i.i.i.if.end7_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %10) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %node_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %node_page, align 4
  %15 = ptrtoint ptr %inode_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %inode_page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_sum_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 788) #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !59

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !62
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #9
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and.i.i4.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i.i, label %folio_trylock.exit, label %folio_flags.exit.i.if.then_crit_edge

folio_flags.exit.i.if.then_crit_edge:             ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

folio_trylock.exit:                               ; preds = %folio_flags.exit.i
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.i, label %folio_trylock.exit.if.end_crit_edge, label %folio_trylock.exit.if.then_crit_edge

folio_trylock.exit.if.then_crit_edge:             ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

folio_trylock.exit.if.end_crit_edge:              ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %folio_trylock.exit.if.then_crit_edge, %folio_flags.exit.i.if.then_crit_edge
  tail call void @__folio_lock(ptr noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %folio_trylock.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_node_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_inode_synced(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !44, !46, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/recovery.c", i32 785, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/recovery.c", i32 876, i32 44}
!4 = !{ptr @fsync_entry_slab, !5, !"fsync_entry_slab", i1 false, i1 false}
!5 = !{!"../fs/f2fs/recovery.c", i32 47, i32 27}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/recovery.c", i32 419, i32 4}
!8 = !{ptr @__func__.find_fsync_dnodes, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 717, i32 2}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/f2fs/f2fs.h", i32 2650, i32 3}
!19 = distinct !{null, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.f2fs_kmem_cache_alloc, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @f2fs_kmem_cache_alloc._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @f2fs_kmem_cache_alloc._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/f2fs/recovery.c", i32 337, i32 10}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/f2fs/recovery.c", i32 341, i32 2}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/f2fs/recovery.c", i32 200, i32 4}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/f2fs/recovery.c", i32 238, i32 2}
!37 = !{ptr @__func__.recover_dentry, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/f2fs/recovery.c", i32 606, i32 3}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/f2fs/recovery.c", i32 694, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/sched/mm.h", i32 230, i32 2}
!46 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2155499058, i64 2155499541, i64 2155499095, i64 2155499151, i64 2155499185, i64 2155499209, i64 2155499250, i64 2155499271, i64 2155499299, i64 2155499333}
!61 = !{i8 0, i8 2}
!62 = !{i64 2150592982, i64 2150593473, i64 2150593019, i64 2150593075, i64 2150593109, i64 2150593133, i64 2150593174, i64 2150593195, i64 2150593223, i64 2150593257}
!63 = !{i64 2148710139, i64 2148710171, i64 2148710200, i64 2148710234, i64 2148710265, i64 2148710288}
!64 = !{i64 2148799244}
!65 = !{i64 2155504244, i64 2155504727, i64 2155504281, i64 2155504337, i64 2155504371, i64 2155504395, i64 2155504436, i64 2155504457, i64 2155504485, i64 2155504519}
!66 = !{i64 2155505902, i64 2155506385, i64 2155505939, i64 2155505995, i64 2155506029, i64 2155506053, i64 2155506094, i64 2155506115, i64 2155506143, i64 2155506177}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2150600415, i64 2150600906, i64 2150600452, i64 2150600508, i64 2150600542, i64 2150600566, i64 2150600607, i64 2150600628, i64 2150600656, i64 2150600690}
!69 = !{i64 2154928900, i64 2154929380, i64 2154928937, i64 2154928993, i64 2154929027, i64 2154929051, i64 2154929092, i64 2154929113, i64 2154929141, i64 2154929175}
!70 = !{i64 2153189006, i64 2153189489, i64 2153189043, i64 2153189099, i64 2153189133, i64 2153189157, i64 2153189198, i64 2153189219, i64 2153189247, i64 2153189281}
!71 = !{i64 2148789757}
!72 = !{i64 2148704466, i64 2148704498, i64 2148704527, i64 2148704561, i64 2148704592, i64 2148704615}
!73 = !{i64 2148789986}
!74 = !{i64 2148525879, i64 2148525884, i64 2148525897, i64 2148525941, i64 2148525975, i64 2148525996}
!75 = !{!"auto-init"}
!76 = !{i64 2152516491}
!77 = !{i64 2150005304}
!78 = !{i64 2150010238}
!79 = !{i64 2150031956}
!80 = !{i64 2150036850}
!81 = !{i64 2150113377}
!82 = !{i64 2150113702}
!83 = !{i64 2152528353}
!84 = !{i64 1105961, i64 1106022}
!85 = !{i64 1108693}
!86 = !{i64 1108978}
!87 = !{i64 2152514560}
!88 = !{i64 2152514402}
!89 = !{i64 2152514730}
!90 = !{i64 2150113052}
