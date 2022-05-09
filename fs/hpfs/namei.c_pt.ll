; ModuleID = '/llk/IR_all_yes/fs/hpfs/namei.c_pt.bc'
source_filename = "../fs/hpfs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
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
%struct.hpfs_dirent = type { i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.55, %struct.list_head, %struct.list_head, %union.anon.56 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.55 = type { %struct.list_head }
%union.anon.56 = type { %struct.hlist_node }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.82, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, [0 x %struct.bplus_internal_node] }
%struct.anon.79 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.82 = type { [8 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.43, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.43 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.25 = type { %struct.callback_head }
%struct.quad_buffer_head = type { [4 x ptr], ptr }
%struct.dnode = type { i32, i32, i8, [3 x i8], i32, i32, [2028 x i8] }

@hpfs_symlink_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @hpfs_symlink_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hpfs_dir_iops = dso_local constant %struct.inode_operations { ptr @hpfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @hpfs_create, ptr null, ptr @hpfs_unlink, ptr @hpfs_symlink, ptr @hpfs_mkdir, ptr @hpfs_rmdir, ptr @hpfs_mknod, ptr @hpfs_rename, ptr @hpfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYMLINK\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@hpfs_file_iops = external dso_local constant %struct.inode_operations, align 128
@hpfs_file_ops = external dso_local constant %struct.file_operations, align 4
@hpfs_aops = external dso_local constant %struct.address_space_operations, align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"there was error when removing dirent\00", [59 x i8] zeroinitializer }, align 32
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@hpfs_dir_ops = external dso_local constant %struct.file_operations, align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\01\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lookup succeeded but map dirent failed\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hpfs_rename: could not find dirent\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hpfs_rename: dirent already exists!\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"lookup succeeded but map dirent failed at #2\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hpfs_rename: could not remove dirent\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"hpfs_symlink_aops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 510, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 494, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 260, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 416, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 405, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 94, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 550, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 568, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 579, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 587, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [19 x i8] c"../fs/hpfs/namei.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 593, i32 23 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @hpfs_symlink_aops, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, ptr @.str.10, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_symlink_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_symlink_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_address(ptr noundef %page) #6
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !61
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %call2 = call ptr @hpfs_map_fnode(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %bh) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call4 = call i32 @hpfs_read_ea(ptr noundef %14, ptr noundef nonnull %call2, ptr noundef nonnull @.str, ptr noundef %call, i32 noundef 4096) #6
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bh, align 4
  %tobool.not.i25 = icmp eq ptr %16, null
  br i1 %tobool.not.i25, label %if.end.brelse.exit_crit_edge, label %if.then.i26

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i26:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %16) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i26, %if.end.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %brelse.exit.fail_crit_edge

brelse.exit.fail_crit_edge:                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end7:                                          ; preds = %brelse.exit
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i27 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i27, align 16
  call void @mutex_unlock(ptr noundef %20) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !62
  %21 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !64
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #6
  br label %cleanup

fail:                                             ; preds = %brelse.exit.fail_crit_edge, %entry.fail_crit_edge
  %err.0 = phi i32 [ %call4, %brelse.exit.fail_crit_edge ], [ -5, %entry.fail_crit_edge ]
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i28 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i28, align 16
  call void @mutex_unlock(ptr noundef %27) #6
  %28 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !63

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !65
  unreachable

do.body7.i:                                       ; preds = %fail
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %28, align 4
  %and.i31.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i = icmp eq i32 %36, -1
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %28, align 4
  %and.i32.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !66

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !63

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i = add i32 %38, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %39, %if.end.i36.i ]
  %40 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.4) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !67
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !63

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i = add i32 %38, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %41, %if.end.i43.i ]
  %42 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %42) #6
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageUptodate.exit
  %retval.0 = phi i32 [ %err.0, %SetPageError.exit ], [ 0, %SetPageUptodate.exit ]
  call void @unlock_page(ptr noundef %page) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  %len = alloca i32, align 4
  %bh = alloca ptr, align 4
  %fno = alloca i32, align 4
  %dee = alloca %struct.hpfs_dirent, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fno) #6
  %6 = ptrtoint ptr %fno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %fno, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dee) #6
  %7 = call ptr @memset(ptr %dee, i32 255, i32 32)
  %call = call i32 @hpfs_chk_name(ptr noundef %1, ptr noundef nonnull %len) #6
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %cond.false [
    i32 0, label %if.end
    i32 -2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #6
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %i_dno = getelementptr i8, ptr %dir, i32 -36
  %15 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_dno, align 4
  %call6 = call ptr @hpfs_alloc_fnode(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %fno, ptr noundef nonnull %bh) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.bail_crit_edge, label %if.end9

if.end.bail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.end9:                                          ; preds = %if.end
  %17 = call ptr @memset(ptr %dee, i32 0, i32 32)
  %conv = zext i16 %mode to i32
  %and = and i32 %conv, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %read_only = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 1
  %18 = ptrtoint ptr %read_only to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %read_only, align 2
  %bf.set = or i16 %bf.load, 1
  store i16 %bf.set, ptr %read_only, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %archive = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 1
  %19 = ptrtoint ptr %archive to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load13 = load i16, ptr %archive, align 2
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %21)
  %cmp17 = icmp eq i8 %21, 46
  %bf.shl = select i1 %cmp17, i16 2, i16 0
  %bf.set15 = and i16 %bf.load13, -35
  %bf.clear21 = or i16 %bf.set15, 32
  %bf.set22 = or i16 %bf.shl, %bf.clear21
  %22 = ptrtoint ptr %archive to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %bf.set22, ptr %archive, align 2
  %23 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fno, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %fnode23 = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 2
  %26 = ptrtoint ptr %fnode23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fnode23, align 4
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %call.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %29 = load i32, ptr @sys_tz, align 4
  %mul.i.i = mul i32 %29, 60
  %conv4.i.i = zext i32 %mul.i.i to i64
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_timeshift.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %sb_timeshift.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sb_timeshift.i.i, align 4
  %conv15.i.i = zext i32 %33 to i64
  %34 = add nuw nsw i64 %conv4.i.i, %conv15.i.i
  %sub2.i.i = sub i64 %call.i, %34
  %conv3.i.i = trunc i64 %sub2.i.i to i32
  %35 = call i32 @llvm.bswap.i32(i32 %conv3.i.i)
  %read_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 5
  %36 = ptrtoint ptr %read_date to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %read_date, align 4
  %write_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 3
  %37 = ptrtoint ptr %write_date to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %write_date, align 4
  %creation_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 6
  %38 = ptrtoint ptr %creation_date to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %creation_date, align 4
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %call27 = call ptr @new_inode(ptr noundef %40) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end12.bail1_crit_edge, label %if.end30

if.end12.bail1_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.end30:                                         ; preds = %if.end12
  call void @hpfs_init_inode(ptr noundef nonnull %call27) #6
  %41 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fno, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 11
  %43 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %i_ino, align 8
  %44 = ptrtoint ptr %call27 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %call27, align 8
  %46 = and i16 %45, 32694
  %47 = or i16 %46, -32768
  store i16 %47, ptr %call27, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 7
  %48 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @hpfs_file_iops, ptr %i_op, align 8
  %49 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 44
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @hpfs_file_ops, ptr %49, align 8
  call void @set_nlink(ptr noundef nonnull %call27, i32 noundef 1) #6
  %i_ino37 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %51 = ptrtoint ptr %i_ino37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_ino37, align 8
  %add.ptr.i195 = getelementptr i8, ptr %call27, i32 -48
  %i_parent_dir = getelementptr i8, ptr %call27, i32 -40
  %53 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %i_parent_dir, align 8
  %54 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb, align 4
  %56 = ptrtoint ptr %creation_date to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %creation_date, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %conv41 = zext i32 %58 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %59 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %59, 60
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, %conv41
  %s_fs_info.i.i196 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %60 = ptrtoint ptr %s_fs_info.i.i196 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i.i196, align 16
  %sb_timeshift.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %sb_timeshift.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sb_timeshift.i, align 4
  %conv1.i = sext i32 %63 to i64
  %add2.i = add nsw i64 %add.i, %conv1.i
  %i_atime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 15
  %64 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add2.i, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 16
  %65 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add2.i, ptr %i_mtime, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 17
  %66 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add2.i, ptr %i_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 17, i32 1
  %67 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec47 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 16, i32 1
  %68 = ptrtoint ptr %tv_nsec47 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tv_nsec47, align 8
  %tv_nsec49 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 15, i32 1
  %69 = ptrtoint ptr %tv_nsec49 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tv_nsec49, align 8
  %i_ea_size = getelementptr i8, ptr %call27, i32 -12
  %70 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %i_ea_size, align 4
  %71 = ptrtoint ptr %archive to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load52 = load i16, ptr %archive, align 2
  %bf.cast193 = and i16 %bf.load52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.cast193)
  %tobool54.not = icmp eq i16 %bf.cast193, 0
  br i1 %tobool54.not, label %if.end30.if.end60_crit_edge, label %if.then55

if.end30.if.end60_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then55:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %call27 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %call27, align 8
  %74 = and i16 %73, -147
  store i16 %74, ptr %call27, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end30.if.end60_crit_edge
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 22
  %75 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 1, ptr %i_blocks, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 14
  %76 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %i_size, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 46, i32 9
  %77 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @hpfs_aops, ptr %a_ops, align 8
  %78 = ptrtoint ptr %add.ptr.i195 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %add.ptr.i195, align 8
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %call62 = call i32 @hpfs_add_dirent(ptr noundef %dir, ptr noundef %1, i32 noundef %80, ptr noundef nonnull %dee) #6
  %81 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call62, label %if.end70 [
    i32 1, label %if.end60.bail2_crit_edge
    i32 -1, label %if.then69
  ]

if.end60.bail2_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.then69:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.end70:                                         ; preds = %if.end60
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %conv71 = trunc i32 %83 to i8
  %len72 = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 2
  %84 = ptrtoint ptr %len72 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv71, ptr %len72, align 4
  %name73 = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 3
  %85 = call i32 @llvm.umin.i32(i32 %83, i32 15)
  %86 = call ptr @memcpy(ptr %name73, ptr %1, i32 %85)
  %87 = ptrtoint ptr %i_ino37 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_ino37, align 8
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %up = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 4
  %90 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %up, align 4
  %91 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %92) #6
  %93 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %94, null
  br i1 %tobool.not.i, label %if.end70.brelse.exit_crit_edge, label %if.then.i

if.end70.brelse.exit_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %94) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end70.brelse.exit_crit_edge
  %95 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call27, i32 noundef %96) #6
  %i_uid = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 2
  %97 = call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 99
  %101 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 10
  %103 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %103)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %104 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %104)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %lor.lhs.false, label %brelse.exit.if.then102_crit_edge

brelse.exit.if.then102_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then102

lor.lhs.false:                                    ; preds = %brelse.exit
  %i_gid = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 3
  %fsgid = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 11
  %105 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %105)
  %agg.tmp84.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %106 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %106)
  %.unpack194 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack194, i32 %agg.tmp84.sroa.0.0.copyload)
  %cmp.i199 = icmp eq i32 %.unpack194, %agg.tmp84.sroa.0.0.copyload
  br i1 %cmp.i199, label %lor.lhs.false95, label %lor.lhs.false.if.then102_crit_edge

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then102

lor.lhs.false95:                                  ; preds = %lor.lhs.false
  %107 = ptrtoint ptr %call27 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %call27, align 8
  %conv97 = zext i16 %108 to i32
  %or99 = or i32 %conv, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %or99, i32 %conv97)
  %cmp100.not = icmp eq i32 %or99, %conv97
  br i1 %cmp100.not, label %lor.lhs.false95.if.end125_crit_edge, label %lor.lhs.false95.if.then102_crit_edge

lor.lhs.false95.if.then102_crit_edge:             ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then102

lor.lhs.false95.if.end125_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then102:                                       ; preds = %lor.lhs.false95.if.then102_crit_edge, %lor.lhs.false.if.then102_crit_edge, %brelse.exit.if.then102_crit_edge
  %109 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %agg.tmp.sroa.0.0.copyload, ptr %i_uid, align 4
  %i_gid112 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 3
  %110 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task, align 8
  %cred119 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 99
  %112 = ptrtoint ptr %cred119 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cred119, align 16
  %fsgid120 = getelementptr inbounds %struct.cred, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %fsgid120 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fsgid120, align 4
  %116 = ptrtoint ptr %i_gid112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %i_gid112, align 8
  %or122 = or i16 %mode, -32768
  %117 = ptrtoint ptr %call27 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %or122, ptr %call27, align 8
  call void @hpfs_write_inode_nolock(ptr noundef nonnull %call27) #6
  br label %if.end125

if.end125:                                        ; preds = %if.then102, %lor.lhs.false95.if.end125_crit_edge
  %118 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i_sb, align 4
  %call.i.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %120 = load i32, ptr @sys_tz, align 4
  %mul.i.i.i = mul i32 %120, 60
  %conv4.i.i.i = zext i32 %mul.i.i.i to i64
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %119, i32 0, i32 33
  %121 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %sb_timeshift.i.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %122, i32 0, i32 17
  %123 = ptrtoint ptr %sb_timeshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sb_timeshift.i.i.i, align 4
  %conv15.i.i.i = zext i32 %124 to i64
  %125 = add nuw nsw i64 %conv4.i.i.i, %conv15.i.i.i
  %sub2.i.i.i = sub i64 %call.i.i, %125
  %conv.i200 = and i64 %sub2.i.i.i, 4294967295
  %conv.i.i = sext i32 %mul.i.i.i to i64
  %conv1.i.i = sext i32 %124 to i64
  %add.i.i = add nsw i64 %conv1.i.i, %conv.i.i
  %add2.i.i = add nsw i64 %add.i.i, %conv.i200
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %126 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %i_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %127)
  %cmp.i201 = icmp eq i64 %add2.i.i, %127
  br i1 %cmp.i201, label %land.lhs.true.i, label %if.end125.if.end.i_crit_edge

if.end125.if.end.i_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end125
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %128 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %129)
  %cmp5.i = icmp eq i64 %add2.i.i, %129
  br i1 %cmp5.i, label %land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_update_directory_times.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end125.if.end.i_crit_edge
  %i_ctime7.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %130 = ptrtoint ptr %i_ctime7.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add2.i.i, ptr %i_ctime7.i, align 8
  %131 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %add2.i.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17, i32 1
  %132 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec13.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16, i32 1
  %133 = ptrtoint ptr %tv_nsec13.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %tv_nsec13.i, align 8
  call void @hpfs_write_inode_nolock(ptr noundef %dir) #6
  br label %hpfs_update_directory_times.exit

hpfs_update_directory_times.exit:                 ; preds = %if.end.i, %land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call27) #6
  %134 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i202 = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 33
  %136 = ptrtoint ptr %s_fs_info.i.i202 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i.i202, align 16
  call void @mutex_unlock(ptr noundef %137) #6
  br label %cleanup

bail2:                                            ; preds = %if.then69, %if.end60.bail2_crit_edge
  %err.0 = phi i32 [ -28, %if.end60.bail2_crit_edge ], [ -17, %if.then69 ]
  call void @iput(ptr noundef nonnull %call27) #6
  br label %bail1

bail1:                                            ; preds = %bail2, %if.end12.bail1_crit_edge
  %err.1 = phi i32 [ %err.0, %bail2 ], [ -28, %if.end12.bail1_crit_edge ]
  %138 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bh, align 4
  %tobool.not.i203 = icmp eq ptr %139, null
  br i1 %tobool.not.i203, label %bail1.brelse.exit206_crit_edge, label %if.then.i204

bail1.brelse.exit206_crit_edge:                   ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit206

if.then.i204:                                     ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %139) #6
  br label %brelse.exit206

brelse.exit206:                                   ; preds = %if.then.i204, %bail1.brelse.exit206_crit_edge
  %140 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i_sb, align 4
  %142 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %fno, align 4
  call void @hpfs_free_sectors(ptr noundef %141, i32 noundef %143, i32 noundef 1) #6
  br label %bail

bail:                                             ; preds = %brelse.exit206, %if.end.bail_crit_edge
  %err.2 = phi i32 [ %err.1, %brelse.exit206 ], [ -28, %if.end.bail_crit_edge ]
  %144 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i207 = getelementptr inbounds %struct.super_block, ptr %145, i32 0, i32 33
  %146 = ptrtoint ptr %s_fs_info.i.i207 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %s_fs_info.i.i207, align 16
  call void @mutex_unlock(ptr noundef %147) #6
  br label %cleanup

cleanup:                                          ; preds = %bail, %hpfs_update_directory_times.exit, %cond.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %bail ], [ 0, %hpfs_update_directory_times.exit ], [ %call, %cond.false ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dee) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fno) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_unlink(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  %len = alloca i32, align 4
  %qbh = alloca %struct.quad_buffer_head, align 4
  %dno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #6
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dno) #6
  %8 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dno, align 4, !annotation !61
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #6
  call void @hpfs_adjust_length(ptr noundef %1, ptr noundef nonnull %len) #6
  %i_dno = getelementptr i8, ptr %dir, i32 -36
  %13 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_dno, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %call5 = call ptr @map_dirent(ptr noundef %dir, i32 noundef %14, ptr noundef %1, i32 noundef %16, ptr noundef nonnull %dno, ptr noundef nonnull %qbh) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.end

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.hpfs_dirent, ptr %call5, i32 0, i32 1
  %17 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %first, align 2
  %18 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool6.not = icmp eq i16 %18, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out1_crit_edge

if.end.out1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end8:                                          ; preds = %if.end
  %19 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool13.not = icmp eq i16 %19, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.out1_crit_edge

if.end8.out1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end15:                                         ; preds = %if.end8
  %20 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dno, align 4
  %call16 = call i32 @hpfs_remove_dirent(ptr noundef %dir, i32 noundef %21, ptr noundef nonnull %call5, ptr noundef nonnull %qbh, i32 noundef 1) #6
  %22 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call16, label %if.then20 [
    i32 1, label %sw.bb
    i32 2, label %if.end15.if.end21_crit_edge
  ]

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %24, ptr noundef nonnull @.str.8) #6
  br label %if.end21

out1:                                             ; preds = %if.end8.out1_crit_edge, %if.end.out1_crit_edge
  %err.0 = phi i32 [ -1, %if.end.out1_crit_edge ], [ -21, %if.end8.out1_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #6
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @drop_nlink(ptr noundef %7) #6
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %call.i.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %27 = load i32, ptr @sys_tz, align 4
  %mul.i.i.i = mul i32 %27, 60
  %conv4.i.i.i = zext i32 %mul.i.i.i to i64
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %sb_timeshift.i.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %sb_timeshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sb_timeshift.i.i.i, align 4
  %conv15.i.i.i = zext i32 %31 to i64
  %32 = add nuw nsw i64 %conv4.i.i.i, %conv15.i.i.i
  %sub2.i.i.i = sub i64 %call.i.i, %32
  %conv.i = and i64 %sub2.i.i.i, 4294967295
  %conv.i.i = sext i32 %mul.i.i.i to i64
  %conv1.i.i = sext i32 %31 to i64
  %add.i.i = add nsw i64 %conv1.i.i, %conv.i.i
  %add2.i.i = add nsw i64 %add.i.i, %conv.i
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %33 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %34)
  %cmp.i = icmp eq i64 %add2.i.i, %34
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then20.if.end.i_crit_edge

if.then20.if.end.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then20
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %35 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %36)
  %cmp5.i = icmp eq i64 %add2.i.i, %36
  br i1 %cmp5.i, label %land.lhs.true.i.if.end21_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then20.if.end.i_crit_edge
  %i_ctime7.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %37 = ptrtoint ptr %i_ctime7.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add2.i.i, ptr %i_ctime7.i, align 8
  %38 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add2.i.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec13.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16, i32 1
  %40 = ptrtoint ptr %tv_nsec13.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tv_nsec13.i, align 8
  call void @hpfs_write_inode_nolock(ptr noundef %dir) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end.i, %land.lhs.true.i.if.end21_crit_edge, %out1, %sw.bb, %if.end15.if.end21_crit_edge, %entry.if.end21_crit_edge
  %err.140 = phi i32 [ 0, %land.lhs.true.i.if.end21_crit_edge ], [ 0, %if.end.i ], [ -28, %if.end15.if.end21_crit_edge ], [ -2, %entry.if.end21_crit_edge ], [ -117, %sw.bb ], [ %err.0, %out1 ]
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i37 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i37, align 16
  call void @mutex_unlock(ptr noundef %44) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dno) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %err.140
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symlink) #0 align 64 {
entry:
  %len = alloca i32, align 4
  %bh = alloca ptr, align 4
  %fno = alloca i32, align 4
  %dee = alloca %struct.hpfs_dirent, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fno) #6
  %6 = ptrtoint ptr %fno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %fno, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dee) #6
  %7 = call ptr @memset(ptr %dee, i32 255, i32 32)
  %call = call i32 @hpfs_chk_name(ptr noundef %1, ptr noundef nonnull %len) #6
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call, label %cond.false [
    i32 0, label %if.end
    i32 -2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #6
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %sb_eas = getelementptr inbounds %struct.hpfs_sb_info, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %sb_eas to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %sb_eas, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %cmp6 = icmp sgt i16 %bf.load, -1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %16) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %i_dno = getelementptr i8, ptr %dir, i32 -36
  %18 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_dno, align 4
  %call12 = call ptr @hpfs_alloc_fnode(ptr noundef %14, i32 noundef %19, ptr noundef nonnull %fno, ptr noundef nonnull %bh) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end9.bail_crit_edge, label %if.end15

if.end9.bail_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.end15:                                         ; preds = %if.end9
  %20 = call ptr @memset(ptr %dee, i32 0, i32 32)
  %archive = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %22)
  %cmp17 = icmp eq i8 %22, 46
  %bf.set22 = select i1 %cmp17, i16 34, i16 32
  %23 = ptrtoint ptr %archive to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %bf.set22, ptr %archive, align 2
  %24 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fno, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %fnode23 = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 2
  %27 = ptrtoint ptr %fnode23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fnode23, align 4
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %call.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %30 = load i32, ptr @sys_tz, align 4
  %mul.i.i = mul i32 %30, 60
  %conv4.i.i = zext i32 %mul.i.i to i64
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_timeshift.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %sb_timeshift.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_timeshift.i.i, align 4
  %conv15.i.i = zext i32 %34 to i64
  %35 = add nuw nsw i64 %conv4.i.i, %conv15.i.i
  %sub2.i.i = sub i64 %call.i, %35
  %conv3.i.i = trunc i64 %sub2.i.i to i32
  %36 = call i32 @llvm.bswap.i32(i32 %conv3.i.i)
  %read_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 5
  %37 = ptrtoint ptr %read_date to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %read_date, align 4
  %write_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 3
  %38 = ptrtoint ptr %write_date to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %write_date, align 4
  %creation_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 6
  %39 = ptrtoint ptr %creation_date to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %creation_date, align 4
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  %call27 = call ptr @new_inode(ptr noundef %41) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end15.bail1_crit_edge, label %if.end30

if.end15.bail1_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.end30:                                         ; preds = %if.end15
  %42 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fno, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %i_ino, align 8
  call void @hpfs_init_inode(ptr noundef nonnull %call27) #6
  %i_ino31 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %45 = ptrtoint ptr %i_ino31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_ino31, align 8
  %i_parent_dir = getelementptr i8, ptr %call27, i32 -40
  %47 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %i_parent_dir, align 8
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  %50 = ptrtoint ptr %creation_date to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %creation_date, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %conv35 = zext i32 %52 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %53 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %53, 60
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, %conv35
  %s_fs_info.i.i140 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i.i140 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i140, align 16
  %sb_timeshift.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %55, i32 0, i32 17
  %56 = ptrtoint ptr %sb_timeshift.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sb_timeshift.i, align 4
  %conv1.i = sext i32 %57 to i64
  %add2.i = add nsw i64 %add.i, %conv1.i
  %i_atime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 15
  %58 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add2.i, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 16
  %59 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add2.i, ptr %i_mtime, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 17
  %60 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add2.i, ptr %i_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 17, i32 1
  %61 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec41 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 16, i32 1
  %62 = ptrtoint ptr %tv_nsec41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tv_nsec41, align 8
  %tv_nsec43 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 15, i32 1
  %63 = ptrtoint ptr %tv_nsec43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tv_nsec43, align 8
  %i_ea_size = getelementptr i8, ptr %call27, i32 -12
  %64 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %i_ea_size, align 4
  %65 = ptrtoint ptr %call27 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -24065, ptr %call27, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 2
  %66 = call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 99
  %70 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fsuid, align 4
  %74 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 3
  %75 = load ptr, ptr %task, align 8
  %cred52 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 99
  %76 = ptrtoint ptr %cred52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cred52, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fsgid, align 4
  %80 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %i_gid, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 22
  %81 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 1, ptr %i_blocks, align 8
  call void @set_nlink(ptr noundef nonnull %call27, i32 noundef 1) #6
  %call53 = call i32 @strlen(ptr noundef %symlink) #9
  %conv54 = zext i32 %call53 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 14
  %82 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv54, ptr %i_size, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call27) #6
  %i_op = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 7
  %83 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @page_symlink_inode_operations, ptr %i_op, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 46, i32 9
  %84 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @hpfs_symlink_aops, ptr %a_ops, align 8
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  %call55 = call i32 @hpfs_add_dirent(ptr noundef %dir, ptr noundef %1, i32 noundef %86, ptr noundef nonnull %dee) #6
  %87 = zext i32 %call55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call55, label %if.end63 [
    i32 1, label %if.end30.bail2_crit_edge
    i32 -1, label %if.then62
  ]

if.end30.bail2_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.then62:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.end63:                                         ; preds = %if.end30
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %conv64 = trunc i32 %89 to i8
  %len65 = getelementptr inbounds %struct.fnode, ptr %call12, i32 0, i32 2
  %90 = ptrtoint ptr %len65 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv64, ptr %len65, align 4
  %name66 = getelementptr inbounds %struct.fnode, ptr %call12, i32 0, i32 3
  %91 = call i32 @llvm.umin.i32(i32 %89, i32 15)
  %92 = call ptr @memcpy(ptr %name66, ptr %1, i32 %91)
  %93 = ptrtoint ptr %i_ino31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %i_ino31, align 8
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %up = getelementptr inbounds %struct.fnode, ptr %call12, i32 0, i32 4
  %96 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %up, align 4
  %call74 = call i32 @strlen(ptr noundef %symlink) #9
  call void @hpfs_set_ea(ptr noundef nonnull %call27, ptr noundef nonnull %call12, ptr noundef nonnull @.str, ptr noundef %symlink, i32 noundef %call74) #6
  %97 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %98) #6
  %99 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %100, null
  br i1 %tobool.not.i, label %if.end63.brelse.exit_crit_edge, label %if.then.i

if.end63.brelse.exit_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %100) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end63.brelse.exit_crit_edge
  %101 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call27, i32 noundef %102) #6
  call void @hpfs_write_inode_nolock(ptr noundef nonnull %call27) #6
  call fastcc void @hpfs_update_directory_times(ptr noundef %dir)
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call27) #6
  %103 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i142 = getelementptr inbounds %struct.super_block, ptr %104, i32 0, i32 33
  %105 = ptrtoint ptr %s_fs_info.i.i142 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_fs_info.i.i142, align 16
  call void @mutex_unlock(ptr noundef %106) #6
  br label %cleanup

bail2:                                            ; preds = %if.then62, %if.end30.bail2_crit_edge
  %err.0 = phi i32 [ -28, %if.end30.bail2_crit_edge ], [ -17, %if.then62 ]
  call void @iput(ptr noundef nonnull %call27) #6
  br label %bail1

bail1:                                            ; preds = %bail2, %if.end15.bail1_crit_edge
  %err.1 = phi i32 [ %err.0, %bail2 ], [ -28, %if.end15.bail1_crit_edge ]
  %107 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bh, align 4
  %tobool.not.i143 = icmp eq ptr %108, null
  br i1 %tobool.not.i143, label %bail1.brelse.exit145_crit_edge, label %if.then.i144

bail1.brelse.exit145_crit_edge:                   ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit145

if.then.i144:                                     ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %108) #6
  br label %brelse.exit145

brelse.exit145:                                   ; preds = %if.then.i144, %bail1.brelse.exit145_crit_edge
  %109 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_sb, align 4
  %111 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fno, align 4
  call void @hpfs_free_sectors(ptr noundef %110, i32 noundef %112, i32 noundef 1) #6
  br label %bail

bail:                                             ; preds = %brelse.exit145, %if.end9.bail_crit_edge
  %err.2 = phi i32 [ %err.1, %brelse.exit145 ], [ -28, %if.end9.bail_crit_edge ]
  %113 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i146 = getelementptr inbounds %struct.super_block, ptr %114, i32 0, i32 33
  %115 = ptrtoint ptr %s_fs_info.i.i146 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i.i146, align 16
  call void @mutex_unlock(ptr noundef %116) #6
  br label %cleanup

cleanup:                                          ; preds = %bail, %brelse.exit, %if.then7, %cond.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then7 ], [ %err.2, %bail ], [ 0, %brelse.exit ], [ %call, %cond.false ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dee) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fno) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %len = alloca i32, align 4
  %qbh0 = alloca %struct.quad_buffer_head, align 4
  %bh = alloca ptr, align 4
  %fno = alloca i32, align 4
  %dno = alloca i32, align 4
  %dee = alloca %struct.hpfs_dirent, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh0) #6
  %5 = call ptr @memset(ptr %qbh0, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fno) #6
  %7 = ptrtoint ptr %fno to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %fno, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dno) #6
  %8 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dno, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dee) #6
  %9 = call ptr @memset(ptr %dee, i32 255, i32 32)
  %call = call i32 @hpfs_chk_name(ptr noundef %1, ptr noundef nonnull %len) #6
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call, label %cond.false [
    i32 0, label %if.end
    i32 -2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @mutex_lock_nested(ptr noundef %14, i32 noundef 0) #6
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %i_dno = getelementptr i8, ptr %dir, i32 -36
  %17 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_dno, align 4
  %call6 = call ptr @hpfs_alloc_fnode(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %fno, ptr noundef nonnull %bh) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.bail_crit_edge, label %if.end9

if.end.bail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.end9:                                          ; preds = %if.end
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %21 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fno, align 4
  %call11 = call ptr @hpfs_alloc_dnode(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %dno, ptr noundef nonnull %qbh0) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.bail1_crit_edge, label %if.end14

if.end9.bail1_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.end14:                                         ; preds = %if.end9
  %23 = call ptr @memset(ptr %dee, i32 0, i32 32)
  %directory = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 1
  %conv = zext i16 %mode to i32
  %and = and i32 %conv, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool15.not, i16 17, i16 16
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %25)
  %cmp22 = icmp eq i8 %25, 46
  %bf.shl = select i1 %cmp22, i16 2, i16 0
  %bf.set27 = or i16 %bf.shl, %spec.select.v
  %26 = ptrtoint ptr %directory to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set27, ptr %directory, align 2
  %27 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fno, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %fnode28 = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 2
  %30 = ptrtoint ptr %fnode28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fnode28, align 4
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %call.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %33 = load i32, ptr @sys_tz, align 4
  %mul.i.i = mul i32 %33, 60
  %conv4.i.i = zext i32 %mul.i.i to i64
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_timeshift.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %sb_timeshift.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_timeshift.i.i, align 4
  %conv15.i.i = zext i32 %37 to i64
  %38 = add nuw nsw i64 %conv4.i.i, %conv15.i.i
  %sub2.i.i = sub i64 %call.i, %38
  %conv3.i.i = trunc i64 %sub2.i.i to i32
  %39 = call i32 @llvm.bswap.i32(i32 %conv3.i.i)
  %read_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 5
  %40 = ptrtoint ptr %read_date to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %read_date, align 4
  %write_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 3
  %41 = ptrtoint ptr %write_date to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %write_date, align 4
  %creation_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 6
  %42 = ptrtoint ptr %creation_date to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %creation_date, align 4
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %call32 = call ptr @new_inode(ptr noundef %44) #6
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end14.bail2_crit_edge, label %if.end35

if.end14.bail2_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.end35:                                         ; preds = %if.end14
  call void @hpfs_init_inode(ptr noundef nonnull %call32) #6
  %45 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fno, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 11
  %47 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %i_ino, align 8
  %i_ino36 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %48 = ptrtoint ptr %i_ino36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ino36, align 8
  %i_parent_dir = getelementptr i8, ptr %call32, i32 -40
  %50 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %i_parent_dir, align 8
  %51 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dno, align 4
  %i_dno39 = getelementptr i8, ptr %call32, i32 -36
  %53 = ptrtoint ptr %i_dno39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %i_dno39, align 4
  %54 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb, align 4
  %56 = ptrtoint ptr %creation_date to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %creation_date, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %conv42 = zext i32 %58 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %59 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %59, 60
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, %conv42
  %s_fs_info.i.i260 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %60 = ptrtoint ptr %s_fs_info.i.i260 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i.i260, align 16
  %sb_timeshift.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %sb_timeshift.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sb_timeshift.i, align 4
  %conv1.i = sext i32 %63 to i64
  %add2.i = add nsw i64 %add.i, %conv1.i
  %i_atime = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 15
  %64 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add2.i, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 16
  %65 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add2.i, ptr %i_mtime, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 17
  %66 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add2.i, ptr %i_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 17, i32 1
  %67 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec48 = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 16, i32 1
  %68 = ptrtoint ptr %tv_nsec48 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tv_nsec48, align 8
  %tv_nsec50 = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 15, i32 1
  %69 = ptrtoint ptr %tv_nsec50 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tv_nsec50, align 8
  %i_ea_size = getelementptr i8, ptr %call32, i32 -12
  %70 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %i_ea_size, align 4
  %71 = ptrtoint ptr %call32 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %call32, align 8
  %73 = or i16 %72, 16384
  store i16 %73, ptr %call32, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 7
  %74 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @hpfs_dir_iops, ptr %i_op, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 44
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @hpfs_dir_ops, ptr %75, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 22
  %77 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 4, ptr %i_blocks, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 14
  %78 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 2048, ptr %i_size, align 8
  call void @set_nlink(ptr noundef nonnull %call32, i32 noundef 2) #6
  %79 = ptrtoint ptr %directory to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load55 = load i16, ptr %directory, align 2
  %bf.cast255 = and i16 %bf.load55, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.cast255)
  %tobool57.not = icmp eq i16 %bf.cast255, 0
  br i1 %tobool57.not, label %if.end35.if.end63_crit_edge, label %if.then58

if.end35.if.end63_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then58:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %call32 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %call32, align 8
  %82 = and i16 %81, -147
  store i16 %82, ptr %call32, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end35.if.end63_crit_edge
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len, align 4
  %call64 = call i32 @hpfs_add_dirent(ptr noundef %dir, ptr noundef %1, i32 noundef %84, ptr noundef nonnull %dee) #6
  %85 = zext i32 %call64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call64, label %if.end72 [
    i32 1, label %if.end63.bail3_crit_edge
    i32 -1, label %if.then71
  ]

if.end63.bail3_crit_edge:                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail3

if.then71:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail3

if.end72:                                         ; preds = %if.end63
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len, align 4
  %conv73 = trunc i32 %87 to i8
  %len74 = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 2
  %88 = ptrtoint ptr %len74 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv73, ptr %len74, align 4
  %name75 = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 3
  %89 = call i32 @llvm.umin.i32(i32 %87, i32 15)
  %90 = call ptr @memcpy(ptr %name75, ptr %1, i32 %89)
  %91 = ptrtoint ptr %i_ino36 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_ino36, align 8
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %up = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 4
  %94 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %up, align 4
  %flags = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 13
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %flags, align 2
  %97 = or i16 %96, 1
  store i16 %97, ptr %flags, align 2
  %n_free_nodes = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 14, i32 2
  %98 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 7, ptr %n_free_nodes, align 4
  %n_used_nodes = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 14, i32 3
  %99 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %n_used_nodes, align 1
  %first_free = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 14, i32 4
  %100 = ptrtoint ptr %first_free to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 5120, ptr %first_free, align 2
  %101 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dno, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %u = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 15
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call6, i32 0, i32 15, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %disk_secno to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %disk_secno, align 4
  %105 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %u, align 4
  %root_dnode = getelementptr inbounds %struct.dnode, ptr %call11, i32 0, i32 2
  %106 = ptrtoint ptr %root_dnode to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load91 = load i8, ptr %root_dnode, align 4
  %bf.set93 = or i8 %bf.load91, 1
  store i8 %bf.set93, ptr %root_dnode, align 4
  %107 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fno, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108)
  %up94 = getelementptr inbounds %struct.dnode, ptr %call11, i32 0, i32 4
  %110 = ptrtoint ptr %up94 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %up94, align 4
  %111 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb, align 4
  %call96 = call ptr @hpfs_add_de(ptr noundef %112, ptr noundef nonnull %call11, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 0) #6
  %113 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_sb, align 4
  %call.i262 = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %115 = load i32, ptr @sys_tz, align 4
  %mul.i.i263 = mul i32 %115, 60
  %conv4.i.i264 = zext i32 %mul.i.i263 to i64
  %s_fs_info.i.i.i265 = getelementptr inbounds %struct.super_block, ptr %114, i32 0, i32 33
  %116 = ptrtoint ptr %s_fs_info.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i.i.i265, align 16
  %sb_timeshift.i.i266 = getelementptr inbounds %struct.hpfs_sb_info, ptr %117, i32 0, i32 17
  %118 = ptrtoint ptr %sb_timeshift.i.i266 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sb_timeshift.i.i266, align 4
  %conv15.i.i267 = zext i32 %119 to i64
  %120 = add nuw nsw i64 %conv4.i.i264, %conv15.i.i267
  %sub2.i.i268 = sub i64 %call.i262, %120
  %conv3.i.i269 = trunc i64 %sub2.i.i268 to i32
  %121 = call i32 @llvm.bswap.i32(i32 %conv3.i.i269)
  %read_date99 = getelementptr inbounds %struct.hpfs_dirent, ptr %call96, i32 0, i32 5
  %122 = ptrtoint ptr %read_date99 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %read_date99, align 4
  %write_date100 = getelementptr inbounds %struct.hpfs_dirent, ptr %call96, i32 0, i32 3
  %123 = ptrtoint ptr %write_date100 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %121, ptr %write_date100, align 4
  %creation_date101 = getelementptr inbounds %struct.hpfs_dirent, ptr %call96, i32 0, i32 6
  %124 = ptrtoint ptr %creation_date101 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %121, ptr %creation_date101, align 4
  br i1 %tobool15.not, label %if.then105, label %if.end72.if.end110_crit_edge

if.end72.if.end110_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then105:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %read_only106 = getelementptr inbounds %struct.hpfs_dirent, ptr %call96, i32 0, i32 1
  %125 = ptrtoint ptr %read_only106 to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load107 = load i16, ptr %read_only106, align 2
  %bf.set109 = or i16 %bf.load107, 1
  store i16 %bf.set109, ptr %read_only106, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.end72.if.end110_crit_edge
  %directory111 = getelementptr inbounds %struct.hpfs_dirent, ptr %call96, i32 0, i32 1
  %126 = ptrtoint ptr %directory111 to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load112 = load i16, ptr %directory111, align 2
  %bf.set117 = or i16 %bf.load112, 272
  store i16 %bf.set117, ptr %directory111, align 2
  %127 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fno, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %128)
  %fnode118 = getelementptr inbounds %struct.hpfs_dirent, ptr %call96, i32 0, i32 2
  %130 = ptrtoint ptr %fnode118 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %fnode118, align 4
  %131 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %132) #6
  %133 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %134, null
  br i1 %tobool.not.i, label %if.end110.brelse.exit_crit_edge, label %if.then.i

if.end110.brelse.exit_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %134) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end110.brelse.exit_crit_edge
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh0) #6
  call void @hpfs_brelse4(ptr noundef nonnull %qbh0) #6
  call void @inc_nlink(ptr noundef %dir) #6
  %135 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call32, i32 noundef %136) #6
  %i_uid = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 2
  %137 = call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 99
  %141 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %142, i32 0, i32 10
  %143 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %143)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %144 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %144)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %lor.lhs.false, label %brelse.exit.if.then140_crit_edge

brelse.exit.if.then140_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false:                                    ; preds = %brelse.exit
  %i_gid = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 3
  %fsgid = getelementptr inbounds %struct.cred, ptr %142, i32 0, i32 11
  %145 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %145)
  %agg.tmp122.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %146 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %146)
  %.unpack256 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack256, i32 %agg.tmp122.sroa.0.0.copyload)
  %cmp.i270 = icmp eq i32 %.unpack256, %agg.tmp122.sroa.0.0.copyload
  br i1 %cmp.i270, label %lor.lhs.false133, label %lor.lhs.false.if.then140_crit_edge

lor.lhs.false.if.then140_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false133:                                 ; preds = %lor.lhs.false
  %147 = ptrtoint ptr %call32 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %call32, align 8
  %conv135 = zext i16 %148 to i32
  %or137 = or i32 %conv, 16384
  call void @__sanitizer_cov_trace_cmp4(i32 %or137, i32 %conv135)
  %cmp138.not = icmp eq i32 %or137, %conv135
  br i1 %cmp138.not, label %lor.lhs.false133.if.end163_crit_edge, label %lor.lhs.false133.if.then140_crit_edge

lor.lhs.false133.if.then140_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140

lor.lhs.false133.if.end163_crit_edge:             ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then140:                                       ; preds = %lor.lhs.false133.if.then140_crit_edge, %lor.lhs.false.if.then140_crit_edge, %brelse.exit.if.then140_crit_edge
  %149 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %agg.tmp.sroa.0.0.copyload, ptr %i_uid, align 4
  %i_gid150 = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 3
  %150 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %task, align 8
  %cred157 = getelementptr inbounds %struct.task_struct, ptr %151, i32 0, i32 99
  %152 = ptrtoint ptr %cred157 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cred157, align 16
  %fsgid158 = getelementptr inbounds %struct.cred, ptr %153, i32 0, i32 11
  %154 = ptrtoint ptr %fsgid158 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %fsgid158, align 4
  %156 = ptrtoint ptr %i_gid150 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %i_gid150, align 8
  %or160 = or i16 %mode, 16384
  %157 = ptrtoint ptr %call32 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %or160, ptr %call32, align 8
  call void @hpfs_write_inode_nolock(ptr noundef nonnull %call32) #6
  br label %if.end163

if.end163:                                        ; preds = %if.then140, %lor.lhs.false133.if.end163_crit_edge
  %158 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_sb, align 4
  %call.i.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %160 = load i32, ptr @sys_tz, align 4
  %mul.i.i.i = mul i32 %160, 60
  %conv4.i.i.i = zext i32 %mul.i.i.i to i64
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 33
  %161 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %sb_timeshift.i.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %162, i32 0, i32 17
  %163 = ptrtoint ptr %sb_timeshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sb_timeshift.i.i.i, align 4
  %conv15.i.i.i = zext i32 %164 to i64
  %165 = add nuw nsw i64 %conv4.i.i.i, %conv15.i.i.i
  %sub2.i.i.i = sub i64 %call.i.i, %165
  %conv.i271 = and i64 %sub2.i.i.i, 4294967295
  %conv.i.i = sext i32 %mul.i.i.i to i64
  %conv1.i.i = sext i32 %164 to i64
  %add.i.i = add nsw i64 %conv1.i.i, %conv.i.i
  %add2.i.i = add nsw i64 %add.i.i, %conv.i271
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %166 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %i_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %167)
  %cmp.i272 = icmp eq i64 %add2.i.i, %167
  br i1 %cmp.i272, label %land.lhs.true.i, label %if.end163.if.end.i_crit_edge

if.end163.if.end.i_crit_edge:                     ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end163
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %168 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %169)
  %cmp5.i = icmp eq i64 %add2.i.i, %169
  br i1 %cmp5.i, label %land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_update_directory_times.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end163.if.end.i_crit_edge
  %i_ctime7.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %170 = ptrtoint ptr %i_ctime7.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %add2.i.i, ptr %i_ctime7.i, align 8
  %171 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %add2.i.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17, i32 1
  %172 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec13.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16, i32 1
  %173 = ptrtoint ptr %tv_nsec13.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %tv_nsec13.i, align 8
  call void @hpfs_write_inode_nolock(ptr noundef %dir) #6
  br label %hpfs_update_directory_times.exit

hpfs_update_directory_times.exit:                 ; preds = %if.end.i, %land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call32) #6
  %174 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i273 = getelementptr inbounds %struct.super_block, ptr %175, i32 0, i32 33
  %176 = ptrtoint ptr %s_fs_info.i.i273 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %s_fs_info.i.i273, align 16
  call void @mutex_unlock(ptr noundef %177) #6
  br label %cleanup

bail3:                                            ; preds = %if.then71, %if.end63.bail3_crit_edge
  %err.0 = phi i32 [ -28, %if.end63.bail3_crit_edge ], [ -17, %if.then71 ]
  call void @iput(ptr noundef nonnull %call32) #6
  br label %bail2

bail2:                                            ; preds = %bail3, %if.end14.bail2_crit_edge
  %err.1 = phi i32 [ %err.0, %bail3 ], [ -28, %if.end14.bail2_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh0) #6
  %178 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %i_sb, align 4
  %180 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dno, align 4
  call void @hpfs_free_dnode(ptr noundef %179, i32 noundef %181) #6
  br label %bail1

bail1:                                            ; preds = %bail2, %if.end9.bail1_crit_edge
  %err.2 = phi i32 [ %err.1, %bail2 ], [ -28, %if.end9.bail1_crit_edge ]
  %182 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bh, align 4
  %tobool.not.i274 = icmp eq ptr %183, null
  br i1 %tobool.not.i274, label %bail1.brelse.exit277_crit_edge, label %if.then.i275

bail1.brelse.exit277_crit_edge:                   ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit277

if.then.i275:                                     ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %183) #6
  br label %brelse.exit277

brelse.exit277:                                   ; preds = %if.then.i275, %bail1.brelse.exit277_crit_edge
  %184 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %i_sb, align 4
  %186 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fno, align 4
  call void @hpfs_free_sectors(ptr noundef %185, i32 noundef %187, i32 noundef 1) #6
  br label %bail

bail:                                             ; preds = %brelse.exit277, %if.end.bail_crit_edge
  %err.3 = phi i32 [ %err.2, %brelse.exit277 ], [ -28, %if.end.bail_crit_edge ]
  %188 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i278 = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 33
  %190 = ptrtoint ptr %s_fs_info.i.i278 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %s_fs_info.i.i278, align 16
  call void @mutex_unlock(ptr noundef %191) #6
  br label %cleanup

cleanup:                                          ; preds = %bail, %hpfs_update_directory_times.exit, %cond.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %bail ], [ 0, %hpfs_update_directory_times.exit ], [ %call, %cond.false ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dee) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dno) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fno) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_rmdir(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  %len = alloca i32, align 4
  %qbh = alloca %struct.quad_buffer_head, align 4
  %dno = alloca i32, align 4
  %n_items = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #6
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dno) #6
  %8 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dno, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_items) #6
  %9 = ptrtoint ptr %n_items to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %n_items, align 4
  call void @hpfs_adjust_length(ptr noundef %1, ptr noundef nonnull %len) #6
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @mutex_lock_nested(ptr noundef %13, i32 noundef 0) #6
  %i_dno = getelementptr i8, ptr %dir, i32 -36
  %14 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_dno, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %call5 = call ptr @map_dirent(ptr noundef %dir, i32 noundef %15, ptr noundef %1, i32 noundef %17, ptr noundef nonnull %dno, ptr noundef nonnull %qbh) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %if.end

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.hpfs_dirent, ptr %call5, i32 0, i32 1
  %18 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %first, align 2
  %19 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool6.not = icmp eq i16 %19, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out1_crit_edge

if.end.out1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end8:                                          ; preds = %if.end
  %20 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool13.not = icmp eq i16 %20, 0
  br i1 %tobool13.not, label %if.end8.out1_crit_edge, label %if.end15

if.end8.out1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end15:                                         ; preds = %if.end8
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %i_dno18 = getelementptr i8, ptr %7, i32 -36
  %23 = ptrtoint ptr %i_dno18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_dno18, align 4
  call void @hpfs_count_dnodes(ptr noundef %22, i32 noundef %24, ptr noundef null, ptr noundef null, ptr noundef nonnull %n_items) #6
  %25 = ptrtoint ptr %n_items to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.out1_crit_edge

if.end15.out1_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end21:                                         ; preds = %if.end15
  %27 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dno, align 4
  %call22 = call i32 @hpfs_remove_dirent(ptr noundef %dir, i32 noundef %28, ptr noundef nonnull %call5, ptr noundef nonnull %qbh, i32 noundef 1) #6
  %29 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call22, label %if.then26 [
    i32 1, label %sw.bb
    i32 2, label %if.end21.if.end27_crit_edge
  ]

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %31, ptr noundef nonnull @.str.8) #6
  br label %if.end27

out1:                                             ; preds = %if.end15.out1_crit_edge, %if.end8.out1_crit_edge, %if.end.out1_crit_edge
  %err.0 = phi i32 [ -1, %if.end.out1_crit_edge ], [ -39, %if.end15.out1_crit_edge ], [ -20, %if.end8.out1_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #6
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @drop_nlink(ptr noundef %dir) #6
  call void @clear_nlink(ptr noundef %7) #6
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %call.i.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %34 = load i32, ptr @sys_tz, align 4
  %mul.i.i.i = mul i32 %34, 60
  %conv4.i.i.i = zext i32 %mul.i.i.i to i64
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %sb_timeshift.i.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %sb_timeshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_timeshift.i.i.i, align 4
  %conv15.i.i.i = zext i32 %38 to i64
  %39 = add nuw nsw i64 %conv4.i.i.i, %conv15.i.i.i
  %sub2.i.i.i = sub i64 %call.i.i, %39
  %conv.i = and i64 %sub2.i.i.i, 4294967295
  %conv.i.i = sext i32 %mul.i.i.i to i64
  %conv1.i.i = sext i32 %38 to i64
  %add.i.i = add nsw i64 %conv1.i.i, %conv.i.i
  %add2.i.i = add nsw i64 %add.i.i, %conv.i
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %40 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %41)
  %cmp.i = icmp eq i64 %add2.i.i, %41
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then26.if.end.i_crit_edge

if.then26.if.end.i_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then26
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %42 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %43)
  %cmp5.i = icmp eq i64 %add2.i.i, %43
  br i1 %cmp5.i, label %land.lhs.true.i.if.end27_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.if.end27_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then26.if.end.i_crit_edge
  %i_ctime7.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %44 = ptrtoint ptr %i_ctime7.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add2.i.i, ptr %i_ctime7.i, align 8
  %45 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add2.i.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec13.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16, i32 1
  %47 = ptrtoint ptr %tv_nsec13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tv_nsec13.i, align 8
  call void @hpfs_write_inode_nolock(ptr noundef %dir) #6
  br label %if.end27

if.end27:                                         ; preds = %if.end.i, %land.lhs.true.i.if.end27_crit_edge, %out1, %sw.bb, %if.end21.if.end27_crit_edge, %entry.if.end27_crit_edge
  %err.150 = phi i32 [ 0, %land.lhs.true.i.if.end27_crit_edge ], [ 0, %if.end.i ], [ -28, %if.end21.if.end27_crit_edge ], [ -2, %entry.if.end27_crit_edge ], [ -117, %sw.bb ], [ %err.0, %out1 ]
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i47 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i.i47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i.i47, align 16
  call void @mutex_unlock(ptr noundef %51) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_items) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dno) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %err.150
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  %len = alloca i32, align 4
  %bh = alloca ptr, align 4
  %fno = alloca i32, align 4
  %dee = alloca %struct.hpfs_dirent, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fno) #6
  %6 = ptrtoint ptr %fno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %fno, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dee) #6
  %7 = call ptr @memset(ptr %dee, i32 255, i32 32)
  %call = call i32 @hpfs_chk_name(ptr noundef %1, ptr noundef nonnull %len) #6
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call, label %cond.false [
    i32 0, label %if.end
    i32 -2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %sb_eas = getelementptr inbounds %struct.hpfs_sb_info, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %sb_eas to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %sb_eas, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %cmp5 = icmp sgt i16 %bf.load, -1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #6
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %i_dno = getelementptr i8, ptr %dir, i32 -36
  %16 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_dno, align 4
  %call11 = call ptr @hpfs_alloc_fnode(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %fno, ptr noundef nonnull %bh) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end7.bail_crit_edge, label %if.end14

if.end7.bail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

if.end14:                                         ; preds = %if.end7
  %18 = call ptr @memset(ptr %dee, i32 0, i32 32)
  %19 = and i16 %mode, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool15.not = icmp eq i16 %19, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %read_only = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 1
  %20 = ptrtoint ptr %read_only to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load17 = load i16, ptr %read_only, align 2
  %bf.set = or i16 %bf.load17, 1
  store i16 %bf.set, ptr %read_only, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %archive = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 1
  %21 = ptrtoint ptr %archive to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load19 = load i16, ptr %archive, align 2
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %23)
  %cmp23 = icmp eq i8 %23, 46
  %bf.shl = select i1 %cmp23, i16 2, i16 0
  %bf.set21 = and i16 %bf.load19, -35
  %bf.clear27 = or i16 %bf.set21, 32
  %bf.set28 = or i16 %bf.shl, %bf.clear27
  %24 = ptrtoint ptr %archive to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %bf.set28, ptr %archive, align 2
  %25 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fno, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %fnode29 = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 2
  %28 = ptrtoint ptr %fnode29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fnode29, align 4
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %call.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %31 = load i32, ptr @sys_tz, align 4
  %mul.i.i = mul i32 %31, 60
  %conv4.i.i = zext i32 %mul.i.i to i64
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_timeshift.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %sb_timeshift.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sb_timeshift.i.i, align 4
  %conv15.i.i = zext i32 %35 to i64
  %36 = add nuw nsw i64 %conv4.i.i, %conv15.i.i
  %sub2.i.i = sub i64 %call.i, %36
  %conv3.i.i = trunc i64 %sub2.i.i to i32
  %37 = call i32 @llvm.bswap.i32(i32 %conv3.i.i)
  %read_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 5
  %38 = ptrtoint ptr %read_date to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %read_date, align 4
  %write_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 3
  %39 = ptrtoint ptr %write_date to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %write_date, align 4
  %creation_date = getelementptr inbounds %struct.hpfs_dirent, ptr %dee, i32 0, i32 6
  %40 = ptrtoint ptr %creation_date to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %creation_date, align 4
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %call33 = call ptr @new_inode(ptr noundef %42) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end18.bail1_crit_edge, label %if.end36

if.end18.bail1_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.end36:                                         ; preds = %if.end18
  call void @hpfs_init_inode(ptr noundef nonnull %call33) #6
  %43 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fno, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 11
  %45 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %i_ino, align 8
  %i_ino37 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %46 = ptrtoint ptr %i_ino37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ino37, align 8
  %i_parent_dir = getelementptr i8, ptr %call33, i32 -40
  %48 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %i_parent_dir, align 8
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %51 = ptrtoint ptr %creation_date to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %creation_date, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %conv41 = zext i32 %53 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %54 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %54, 60
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, %conv41
  %s_fs_info.i.i135 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i135 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i135, align 16
  %sb_timeshift.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %sb_timeshift.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sb_timeshift.i, align 4
  %conv1.i = sext i32 %58 to i64
  %add2.i = add nsw i64 %add.i, %conv1.i
  %i_atime = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 15
  %59 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add2.i, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 16
  %60 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add2.i, ptr %i_mtime, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 17
  %61 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %add2.i, ptr %i_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 17, i32 1
  %62 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec47 = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 16, i32 1
  %63 = ptrtoint ptr %tv_nsec47 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tv_nsec47, align 8
  %tv_nsec49 = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 15, i32 1
  %64 = ptrtoint ptr %tv_nsec49 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %tv_nsec49, align 8
  %i_ea_size = getelementptr i8, ptr %call33, i32 -12
  %65 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %i_ea_size, align 4
  %i_uid = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 2
  %66 = call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 99
  %70 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fsuid, align 4
  %74 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 3
  %75 = load ptr, ptr %task, align 8
  %cred58 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 99
  %76 = ptrtoint ptr %cred58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cred58, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fsgid, align 4
  %80 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %i_gid, align 8
  call void @set_nlink(ptr noundef nonnull %call33, i32 noundef 1) #6
  %i_size = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 14
  %81 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %i_size, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call33, i32 0, i32 22
  %82 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 1, ptr %i_blocks, align 8
  call void @init_special_inode(ptr noundef nonnull %call33, i16 noundef zeroext %mode, i32 noundef %rdev) #6
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len, align 4
  %call59 = call i32 @hpfs_add_dirent(ptr noundef %dir, ptr noundef %1, i32 noundef %84, ptr noundef nonnull %dee) #6
  %85 = zext i32 %call59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call59, label %if.end67 [
    i32 1, label %if.end36.bail2_crit_edge
    i32 -1, label %if.then66
  ]

if.end36.bail2_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.then66:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.end67:                                         ; preds = %if.end36
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len, align 4
  %conv68 = trunc i32 %87 to i8
  %len69 = getelementptr inbounds %struct.fnode, ptr %call11, i32 0, i32 2
  %88 = ptrtoint ptr %len69 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv68, ptr %len69, align 4
  %name70 = getelementptr inbounds %struct.fnode, ptr %call11, i32 0, i32 3
  %89 = call i32 @llvm.umin.i32(i32 %87, i32 15)
  %90 = call ptr @memcpy(ptr %name70, ptr %1, i32 %89)
  %91 = ptrtoint ptr %i_ino37 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_ino37, align 8
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %up = getelementptr inbounds %struct.fnode, ptr %call11, i32 0, i32 4
  %94 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %up, align 4
  %95 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %96) #6
  %97 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call33, i32 noundef %98) #6
  call void @hpfs_write_inode_nolock(ptr noundef nonnull %call33) #6
  call fastcc void @hpfs_update_directory_times(ptr noundef %dir)
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call33) #6
  %99 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %100, null
  br i1 %tobool.not.i, label %if.end67.brelse.exit_crit_edge, label %if.then.i

if.end67.brelse.exit_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %100) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end67.brelse.exit_crit_edge
  %101 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i137 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 33
  %103 = ptrtoint ptr %s_fs_info.i.i137 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info.i.i137, align 16
  call void @mutex_unlock(ptr noundef %104) #6
  br label %cleanup

bail2:                                            ; preds = %if.then66, %if.end36.bail2_crit_edge
  %err.0 = phi i32 [ -28, %if.end36.bail2_crit_edge ], [ -17, %if.then66 ]
  call void @iput(ptr noundef nonnull %call33) #6
  br label %bail1

bail1:                                            ; preds = %bail2, %if.end18.bail1_crit_edge
  %err.1 = phi i32 [ %err.0, %bail2 ], [ -28, %if.end18.bail1_crit_edge ]
  %105 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bh, align 4
  %tobool.not.i138 = icmp eq ptr %106, null
  br i1 %tobool.not.i138, label %bail1.brelse.exit140_crit_edge, label %if.then.i139

bail1.brelse.exit140_crit_edge:                   ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit140

if.then.i139:                                     ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %106) #6
  br label %brelse.exit140

brelse.exit140:                                   ; preds = %if.then.i139, %bail1.brelse.exit140_crit_edge
  %107 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_sb, align 4
  %109 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fno, align 4
  call void @hpfs_free_sectors(ptr noundef %108, i32 noundef %110, i32 noundef 1) #6
  br label %bail

bail:                                             ; preds = %brelse.exit140, %if.end7.bail_crit_edge
  %err.2 = phi i32 [ %err.1, %brelse.exit140 ], [ -28, %if.end7.bail_crit_edge ]
  %111 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i141 = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 33
  %113 = ptrtoint ptr %s_fs_info.i.i141 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_fs_info.i.i141, align 16
  call void @mutex_unlock(ptr noundef %114) #6
  br label %cleanup

cleanup:                                          ; preds = %bail, %brelse.exit, %if.end.cleanup_crit_edge, %cond.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %bail ], [ 0, %brelse.exit ], [ %call, %cond.false ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dee) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fno) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %old_len = alloca i32, align 4
  %new_len = alloca i32, align 4
  %qbh = alloca %struct.quad_buffer_head, align 4
  %qbh1 = alloca %struct.quad_buffer_head, align 4
  %de = alloca %struct.hpfs_dirent, align 4
  %dno = alloca i32, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_len) #6
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %4 = ptrtoint ptr %old_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old_len, align 4
  %d_name2 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %name3 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_len) #6
  %7 = ptrtoint ptr %d_name2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name2, align 8
  %9 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %new_len, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i184 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i184 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i184, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #6
  %14 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh1) #6
  %15 = call ptr @memset(ptr %qbh1, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %de) #6
  %16 = call ptr @memset(ptr %de, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dno) #6
  %17 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %dno, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup113_crit_edge

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup113

if.end:                                           ; preds = %entry
  %call7 = call i32 @hpfs_chk_name(ptr noundef %6, ptr noundef nonnull %new_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup113_crit_edge

if.end.cleanup113_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup113

if.end10:                                         ; preds = %if.end
  call void @hpfs_adjust_length(ptr noundef %1, ptr noundef nonnull %old_len) #6
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @mutex_lock_nested(ptr noundef %22, i32 noundef 0) #6
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %land.lhs.true

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %13, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %25)
  %cmp = icmp eq i16 %25, 16384
  br i1 %cmp, label %land.lhs.true.if.end111_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %i_dno = getelementptr i8, ptr %old_dir, i32 -36
  %26 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_dno, align 4
  %28 = ptrtoint ptr %old_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %old_len, align 4
  %call17 = call ptr @map_dirent(ptr noundef %old_dir, i32 noundef %27, ptr noundef %1, i32 noundef %29, ptr noundef nonnull %dno, ptr noundef nonnull %qbh) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %copy_de.exit

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %31, ptr noundef nonnull @.str.15) #6
  br label %if.end111

copy_de.exit:                                     ; preds = %if.end15
  %down.i = getelementptr inbounds %struct.hpfs_dirent, ptr %de, i32 0, i32 1
  %32 = ptrtoint ptr %down.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %down.i, align 2
  %add.ptr7.i = getelementptr i8, ptr %call17, i32 2
  %33 = call ptr @memcpy(ptr %down.i, ptr %add.ptr7.i, i32 28)
  %bf.load10.i = load i16, ptr %down.i, align 2
  %bf.clear11.i = and i16 %bf.load10.i, -1091
  %bf.set.i = and i16 %bf.load.i, 1088
  %bf.set18.i = or i16 %bf.clear11.i, %bf.set.i
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %35)
  %cmp23 = icmp eq i8 %35, 46
  %bf.shl = select i1 %cmp23, i16 2, i16 0
  %bf.set = or i16 %bf.shl, %bf.set18.i
  %36 = ptrtoint ptr %down.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.set, ptr %down.i, align 2
  br i1 %tobool11.not, label %if.end42, label %if.then27

if.then27:                                        ; preds = %copy_de.exit
  %37 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dno, align 4
  %call29 = call i32 @hpfs_remove_dirent(ptr noundef %old_dir, i32 noundef %38, ptr noundef nonnull %call17, ptr noundef nonnull %qbh, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 2
  br i1 %cmp30.not, label %if.then27.if.end111_crit_edge, label %if.then32

if.then27.if.end111_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then32:                                        ; preds = %if.then27
  %i_dno34 = getelementptr i8, ptr %new_dir, i32 -36
  %39 = ptrtoint ptr %i_dno34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_dno34, align 4
  %41 = ptrtoint ptr %new_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %new_len, align 4
  %call35 = call ptr @map_dirent(ptr noundef %new_dir, i32 noundef %40, ptr noundef %6, i32 noundef %42, ptr noundef null, ptr noundef nonnull %qbh1) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end39, label %cleanup

if.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb40 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %43 = ptrtoint ptr %i_sb40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb40, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %44, ptr noundef nonnull @.str.16) #6
  br label %if.end111

cleanup:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  call void @clear_nlink(ptr noundef nonnull %13) #6
  %down.i186 = getelementptr %struct.hpfs_dirent, ptr %call35, i32 0, i32 1
  %45 = ptrtoint ptr %down.i186 to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i187 = load i16, ptr %down.i186, align 2
  %46 = call ptr @memcpy(ptr %down.i186, ptr %down.i, i32 28)
  %bf.load10.i189 = load i16, ptr %down.i186, align 2
  %bf.clear11.i190 = and i16 %bf.load10.i189, -1089
  %bf.set.i191 = and i16 %bf.load.i187, 1088
  %bf.set18.i192 = or i16 %bf.clear11.i190, %bf.set.i191
  store i16 %bf.set18.i192, ptr %down.i186, align 2
  %name38 = getelementptr inbounds %struct.hpfs_dirent, ptr %call35, i32 0, i32 11
  %47 = ptrtoint ptr %new_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %new_len, align 4
  %49 = call ptr @memcpy(ptr %name38, ptr %6, i32 %48)
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1) #6
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1) #6
  br label %end

if.end42:                                         ; preds = %copy_de.exit
  %cmp43 = icmp eq ptr %new_dir, %old_dir
  br i1 %cmp43, label %if.then45, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %50 = ptrtoint ptr %new_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %new_len, align 4
  %call47 = call i32 @hpfs_add_dirent(ptr noundef %new_dir, ptr noundef %6, i32 noundef %51, ptr noundef nonnull %de) #6
  %52 = zext i32 %call47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call47, label %if.end46.if.end54_crit_edge [
    i32 0, label %if.end61
    i32 -1, label %if.then52
  ]

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb53 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %53 = ptrtoint ptr %i_sb53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb53, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %54, ptr noundef nonnull @.str.17) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end46.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp55 = icmp eq i32 %call47, 1
  %cond = select i1 %cmp55, i32 -28, i32 -117
  br i1 %cmp43, label %if.end54.if.end111_crit_edge, label %if.then59

if.end54.if.end111_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #6
  br label %if.end111

if.end61:                                         ; preds = %if.end46
  br i1 %cmp43, label %if.then64, label %if.end61.if.end72_crit_edge

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then64:                                        ; preds = %if.end61
  %55 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_dno, align 4
  %57 = ptrtoint ptr %old_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %old_len, align 4
  %call67 = call ptr @map_dirent(ptr noundef %old_dir, i32 noundef %56, ptr noundef %1, i32 noundef %58, ptr noundef nonnull %dno, ptr noundef nonnull %qbh) #6
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.then69, label %if.then64.if.end72_crit_edge

if.then64.if.end72_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %60, ptr noundef nonnull @.str.18) #6
  br label %if.end111

if.end72:                                         ; preds = %if.then64.if.end72_crit_edge, %if.end61.if.end72_crit_edge
  %dep.0 = phi ptr [ %call67, %if.then64.if.end72_crit_edge ], [ %call17, %if.end61.if.end72_crit_edge ]
  %61 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dno, align 4
  %call73 = call i32 @hpfs_remove_dirent(ptr noundef %old_dir, i32 noundef %62, ptr noundef nonnull %dep.0, ptr noundef nonnull %qbh, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.end_crit_edge, label %if.then75

if.end72.end_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %64, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call73)
  %cmp77 = icmp eq i32 %call73, 2
  %cond79 = select i1 %cmp77, i32 -28, i32 -117
  br label %if.end111

end:                                              ; preds = %if.end72.end_crit_edge, %cleanup
  %i_ino = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 11
  %65 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_ino, align 8
  %i_parent_dir = getelementptr i8, ptr %11, i32 -40
  %67 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %i_parent_dir, align 8
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %11, align 8
  %70 = and i16 %69, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %70)
  %cmp85 = icmp eq i16 %70, 16384
  br i1 %cmp85, label %if.then87, label %end.if.end88_crit_edge

end.if.end88_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then87:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #8
  call void @inc_nlink(ptr noundef %new_dir) #6
  call void @drop_nlink(ptr noundef %old_dir) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %end.if.end88_crit_edge
  %71 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb, align 4
  %i_ino90 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %73 = ptrtoint ptr %i_ino90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_ino90, align 8
  %call91 = call ptr @hpfs_map_fnode(ptr noundef %72, i32 noundef %74, ptr noundef nonnull %bh) #6
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.end88.if.then110_crit_edge, label %if.then93

if.end88.if.then110_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

if.then93:                                        ; preds = %if.end88
  %75 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %i_ino, align 8
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %up = getelementptr inbounds %struct.fnode, ptr %call91, i32 0, i32 4
  %78 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %up, align 4
  %79 = ptrtoint ptr %new_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %new_len, align 4
  %conv95 = trunc i32 %80 to i8
  %len96 = getelementptr inbounds %struct.fnode, ptr %call91, i32 0, i32 2
  %81 = ptrtoint ptr %len96 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv95, ptr %len96, align 4
  %name97 = getelementptr inbounds %struct.fnode, ptr %call91, i32 0, i32 3
  %82 = call i32 @llvm.umin.i32(i32 %80, i32 15)
  %83 = call ptr @memcpy(ptr %name97, ptr %6, i32 %82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %80)
  %cmp102 = icmp ult i32 %80, 15
  br i1 %cmp102, label %if.then104, label %if.then93.if.end107_crit_edge

if.then93.if.end107_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then104:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx106 = getelementptr %struct.fnode, ptr %call91, i32 0, i32 3, i32 %80
  %sub = sub nuw nsw i32 15, %80
  %84 = call ptr @memset(ptr %arrayidx106, i32 0, i32 %sub)
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.then93.if.end107_crit_edge
  %85 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %86) #6
  %87 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bh, align 4
  %tobool.not.i197 = icmp eq ptr %88, null
  br i1 %tobool.not.i197, label %if.end107.if.then110_crit_edge, label %if.then.i

if.end107.if.then110_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

if.then.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %88) #6
  br label %if.then110

if.then110:                                       ; preds = %if.then.i, %if.end107.if.then110_crit_edge, %if.end88.if.then110_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %89 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb.i, align 4
  %call.i.i = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %91 = load i32, ptr @sys_tz, align 4
  %mul.i.i.i = mul i32 %91, 60
  %conv4.i.i.i = zext i32 %mul.i.i.i to i64
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 33
  %92 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %sb_timeshift.i.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %sb_timeshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sb_timeshift.i.i.i, align 4
  %conv15.i.i.i = zext i32 %95 to i64
  %96 = add nuw nsw i64 %conv4.i.i.i, %conv15.i.i.i
  %sub2.i.i.i = sub i64 %call.i.i, %96
  %conv.i = and i64 %sub2.i.i.i, 4294967295
  %conv.i.i = sext i32 %mul.i.i.i to i64
  %conv1.i.i = sext i32 %95 to i64
  %add.i.i = add nsw i64 %conv1.i.i, %conv.i.i
  %add2.i.i = add nsw i64 %add.i.i, %conv.i
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  %97 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %i_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %98)
  %cmp.i = icmp eq i64 %add2.i.i, %98
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then110.if.end.i199_crit_edge

if.then110.if.end.i199_crit_edge:                 ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i199

land.lhs.true.i:                                  ; preds = %if.then110
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %99 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %100)
  %cmp5.i = icmp eq i64 %add2.i.i, %100
  br i1 %cmp5.i, label %land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge, label %land.lhs.true.i.if.end.i199_crit_edge

land.lhs.true.i.if.end.i199_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i199

land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_update_directory_times.exit

if.end.i199:                                      ; preds = %land.lhs.true.i.if.end.i199_crit_edge, %if.then110.if.end.i199_crit_edge
  %i_ctime7.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %101 = ptrtoint ptr %i_ctime7.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %add2.i.i, ptr %i_ctime7.i, align 8
  %102 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add2.i.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17, i32 1
  %103 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec13.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16, i32 1
  %104 = ptrtoint ptr %tv_nsec13.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %tv_nsec13.i, align 8
  call void @hpfs_write_inode_nolock(ptr noundef %old_dir) #6
  br label %hpfs_update_directory_times.exit

hpfs_update_directory_times.exit:                 ; preds = %if.end.i199, %land.lhs.true.i.hpfs_update_directory_times.exit_crit_edge
  %i_sb.i200 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %105 = ptrtoint ptr %i_sb.i200 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_sb.i200, align 4
  %call.i.i201 = call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %107 = load i32, ptr @sys_tz, align 4
  %mul.i.i.i202 = mul i32 %107, 60
  %conv4.i.i.i203 = zext i32 %mul.i.i.i202 to i64
  %s_fs_info.i.i.i.i204 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 33
  %108 = ptrtoint ptr %s_fs_info.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i.i.i.i204, align 16
  %sb_timeshift.i.i.i205 = getelementptr inbounds %struct.hpfs_sb_info, ptr %109, i32 0, i32 17
  %110 = ptrtoint ptr %sb_timeshift.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sb_timeshift.i.i.i205, align 4
  %conv15.i.i.i206 = zext i32 %111 to i64
  %112 = add nuw nsw i64 %conv4.i.i.i203, %conv15.i.i.i206
  %sub2.i.i.i207 = sub i64 %call.i.i201, %112
  %conv.i208 = and i64 %sub2.i.i.i207, 4294967295
  %conv.i.i209 = sext i32 %mul.i.i.i202 to i64
  %conv1.i.i210 = sext i32 %111 to i64
  %add.i.i211 = add nsw i64 %conv1.i.i210, %conv.i.i209
  %add2.i.i212 = add nsw i64 %add.i.i211, %conv.i208
  %i_mtime.i213 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %113 = ptrtoint ptr %i_mtime.i213 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %i_mtime.i213, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i212, i64 %114)
  %cmp.i214 = icmp eq i64 %add2.i.i212, %114
  br i1 %cmp.i214, label %land.lhs.true.i217, label %hpfs_update_directory_times.exit.if.end.i221_crit_edge

hpfs_update_directory_times.exit.if.end.i221_crit_edge: ; preds = %hpfs_update_directory_times.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i221

land.lhs.true.i217:                               ; preds = %hpfs_update_directory_times.exit
  %i_ctime.i215 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %115 = ptrtoint ptr %i_ctime.i215 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %i_ctime.i215, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i212, i64 %116)
  %cmp5.i216 = icmp eq i64 %add2.i.i212, %116
  br i1 %cmp5.i216, label %land.lhs.true.i217.if.end111_crit_edge, label %land.lhs.true.i217.if.end.i221_crit_edge

land.lhs.true.i217.if.end.i221_crit_edge:         ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i221

land.lhs.true.i217.if.end111_crit_edge:           ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.end.i221:                                      ; preds = %land.lhs.true.i217.if.end.i221_crit_edge, %hpfs_update_directory_times.exit.if.end.i221_crit_edge
  %i_ctime7.i218 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %117 = ptrtoint ptr %i_ctime7.i218 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %add2.i.i212, ptr %i_ctime7.i218, align 8
  %118 = ptrtoint ptr %i_mtime.i213 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %add2.i.i212, ptr %i_mtime.i213, align 8
  %tv_nsec.i219 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17, i32 1
  %119 = ptrtoint ptr %tv_nsec.i219 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %tv_nsec.i219, align 8
  %tv_nsec13.i220 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16, i32 1
  %120 = ptrtoint ptr %tv_nsec13.i220 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %tv_nsec13.i220, align 8
  call void @hpfs_write_inode_nolock(ptr noundef %new_dir) #6
  br label %if.end111

if.end111:                                        ; preds = %if.end.i221, %land.lhs.true.i217.if.end111_crit_edge, %if.then75, %if.then69, %if.then59, %if.end54.if.end111_crit_edge, %if.end39, %if.then27.if.end111_crit_edge, %if.then19, %land.lhs.true.if.end111_crit_edge
  %err.2230 = phi i32 [ 0, %land.lhs.true.i217.if.end111_crit_edge ], [ 0, %if.end.i221 ], [ -22, %land.lhs.true.if.end111_crit_edge ], [ -2, %if.then19 ], [ -2, %if.then69 ], [ %cond79, %if.then75 ], [ %cond, %if.end54.if.end111_crit_edge ], [ %cond, %if.then59 ], [ -28, %if.then27.if.end111_crit_edge ], [ -117, %if.end39 ]
  %121 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i223 = getelementptr inbounds %struct.super_block, ptr %122, i32 0, i32 33
  %123 = ptrtoint ptr %s_fs_info.i.i223 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_fs_info.i.i223, align 16
  call void @mutex_unlock(ptr noundef %124) #6
  br label %cleanup113

cleanup113:                                       ; preds = %if.end111, %if.end.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  %retval.0 = phi i32 [ %err.2230, %if.end111 ], [ -22, %entry.cleanup113_crit_edge ], [ %call7, %if.end.cleanup113_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dno) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %de) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_len) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_len) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_fnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_read_ea(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_alloc_fnode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_init_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_add_dirent(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_write_inode_nolock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hpfs_update_directory_times(ptr noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call.i = tail call i64 @ktime_get_real_seconds() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %2 = load i32, ptr @sys_tz, align 4
  %mul.i.i = mul i32 %2, 60
  %conv4.i.i = zext i32 %mul.i.i to i64
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_timeshift.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %sb_timeshift.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_timeshift.i.i, align 4
  %conv15.i.i = zext i32 %6 to i64
  %7 = add nuw nsw i64 %conv4.i.i, %conv15.i.i
  %sub2.i.i = sub i64 %call.i, %7
  %conv = and i64 %sub2.i.i, 4294967295
  %conv.i = sext i32 %mul.i.i to i64
  %conv1.i = sext i32 %6 to i64
  %add.i = add nsw i64 %conv1.i, %conv.i
  %add2.i = add nsw i64 %add.i, %conv
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %8 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_mtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %9)
  %cmp = icmp eq i64 %add2.i, %9
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %10 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %11)
  %cmp5 = icmp eq i64 %add2.i, %11
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_ctime7 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %12 = ptrtoint ptr %i_ctime7 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add2.i, ptr %i_ctime7, align 8
  %13 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add2.i, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec13 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %tv_nsec13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tv_nsec13, align 8
  tail call void @hpfs_write_inode_nolock(ptr noundef %dir) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_free_sectors(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_adjust_length(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_dirent(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_remove_dirent(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_brelse4(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_set_ea(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_alloc_dnode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_add_de(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_mark_4buffers_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_free_dnode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_count_dnodes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @hpfs_symlink_aops, !1, !"hpfs_symlink_aops", i1 false, i1 false}
!1 = !{!"../fs/hpfs/namei.c", i32 510, i32 39}
!2 = !{ptr @hpfs_dir_iops, !3, !"hpfs_dir_iops", i1 false, i1 false}
!3 = !{!"../fs/hpfs/namei.c", i32 621, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hpfs/namei.c", i32 494, i32 37}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../fs/hpfs/namei.c", i32 197, i32 29}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../fs/hpfs/namei.c", i32 198, i32 29}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../fs/hpfs/namei.c", i32 200, i32 19}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../fs/hpfs/namei.c", i32 201, i32 19}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/hpfs/namei.c", i32 405, i32 25}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../fs/hpfs/namei.c", i32 335, i32 18}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../fs/hpfs/namei.c", i32 336, i32 18}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/hpfs/namei.c", i32 94, i32 37}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../fs/hpfs/namei.c", i32 107, i32 29}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../fs/hpfs/namei.c", i32 108, i32 29}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../fs/hpfs/namei.c", i32 110, i32 19}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../fs/hpfs/namei.c", i32 111, i32 19}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../fs/hpfs/namei.c", i32 258, i32 18}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../fs/hpfs/namei.c", i32 259, i32 18}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/hpfs/namei.c", i32 550, i32 23}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/hpfs/namei.c", i32 568, i32 30}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/hpfs/namei.c", i32 579, i32 42}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/hpfs/namei.c", i32 587, i32 24}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/hpfs/namei.c", i32 593, i32 23}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 2151572885}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2150821922, i64 2150822413, i64 2150821959, i64 2150822015, i64 2150822049, i64 2150822073, i64 2150822114, i64 2150822135, i64 2150822163, i64 2150822197}
!65 = !{i64 2150883512, i64 2150883685, i64 2150883700, i64 2150883752, i64 2150883811, i64 2150883835, i64 2150883876, i64 2150883897, i64 2150883925, i64 2150883957}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2150884387, i64 2150884560, i64 2150884575, i64 2150884627, i64 2150884686, i64 2150884710, i64 2150884751, i64 2150884772, i64 2150884800, i64 2150884832}
