; ModuleID = '/llk/IR_all_yes/fs/f2fs/verity.c_pt.bc'
source_filename = "../fs/f2fs/verity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsverity_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kprojid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.fsverity_descriptor_location = type { i32, i32, i64 }
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
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.61, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@f2fs_verityops = dso_local constant { %struct.fsverity_operations, [44 x i8] } { %struct.fsverity_operations { ptr @f2fs_begin_enable_verity, ptr @f2fs_end_enable_verity, ptr @f2fs_get_verity_descriptor, ptr @f2fs_read_merkle_tree_page, ptr @f2fs_write_merkle_tree_block }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"v\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Truncating verity metadata failed (errno=%d)\00", [49 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014unknown verity xattr format\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014invalid verity xattr\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"f2fs_verityops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 288, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 188, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 215, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 238, i32 3 }
@___asan_gen_.20 = private constant [20 x i8] c"../fs/f2fs/verity.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 247, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 260, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @f2fs_verityops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_verityops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_begin_enable_verity(ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %4 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i, align 4
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i23.not = icmp eq i32 %7, 0
  br i1 %tobool.i23.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i25.not = icmp eq i32 %10, 0
  br i1 %tobool.i25.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call i32 @f2fs_dquot_initialize(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @f2fs_convert_inline_inode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 30, ptr noundef %flags.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -16, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_end_enable_verity(ptr nocapture noundef readonly %filp, ptr noundef readonly %desc, i32 noundef %desc_size, i64 noundef %merkle_tree_size) #0 align 64 {
entry:
  %dloc = alloca %struct.fsverity_descriptor_location, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %7, -1
  %or.i = or i64 %sub.i, 65535
  %add.i = add i64 %merkle_tree_size, 1
  %add = add i64 %add.i, %or.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dloc) #6
  %8 = getelementptr inbounds %struct.fsverity_descriptor_location, ptr %dloc, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fsverity_descriptor_location, ptr %dloc, i32 0, i32 2
  %10 = ptrtoint ptr %dloc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16777216, ptr %dloc, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %desc_size)
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %8, align 4
  %13 = tail call i64 @llvm.bswap.i64(i64 %add)
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %9, align 8
  %cmp = icmp eq ptr %desc, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @pagecache_write(ptr noundef %1, ptr noundef nonnull %desc, i32 noundef %desc_size, i64 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %16, i64 noundef 0, i64 noundef 9223372036854775807) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @f2fs_setxattr(ptr noundef %1, i32 noundef 11, ptr noundef nonnull @.str, ptr noundef nonnull %dloc, i32 noundef 16, ptr noundef null, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %i_advise.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i_advise.i.i, align 4
  %19 = and i8 %18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.set_file.exit_crit_edge

if.end13.set_file.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_file.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %20 = or i8 %18, 64
  %21 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %i_advise.i.i, align 4
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %1, i1 noundef zeroext true) #6
  br label %set_file.exit

set_file.exit:                                    ; preds = %if.end.i, %if.end13.set_file.exit_crit_edge
  call void @f2fs_set_inode_flags(ptr noundef %1) #6
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %1, i1 noundef zeroext true) #6
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  call void @_clear_bit(i32 noundef 30, ptr noundef %flags.i) #6
  br label %cleanup24

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %err.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  %arrayidx = getelementptr %struct.f2fs_inode_info, ptr %1, i32 0, i32 27, i32 1
  call void @down_write(ptr noundef %arrayidx) #6
  %i_mapping15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping15, align 8
  %24 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size.i, align 8
  call void @truncate_inode_pages(ptr noundef %23, i64 noundef %25) #6
  %call16 = call i32 @f2fs_truncate(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup.if.end19_crit_edge, label %if.then18

cleanup.if.end19_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %call16) #6
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %cleanup.if.end19_crit_edge
  call void @up_write(ptr noundef %arrayidx) #6
  %flags.i53 = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  call void @_clear_bit(i32 noundef 30, ptr noundef %flags.i53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool23.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool23.not, i32 %call16, i32 %err.0
  br label %cleanup24

cleanup24:                                        ; preds = %if.end19, %set_file.exit
  %retval.0 = phi i32 [ %spec.select, %if.end19 ], [ 0, %set_file.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dloc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_get_verity_descriptor(ptr noundef %inode, ptr nocapture noundef writeonly %buf, i32 noundef %buf_size) #0 align 64 {
entry:
  %dloc = alloca %struct.fsverity_descriptor_location, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dloc) #6
  %0 = getelementptr inbounds %struct.fsverity_descriptor_location, ptr %dloc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fsverity_descriptor_location, ptr %dloc, i32 0, i32 2
  %2 = call ptr @memset(ptr %dloc, i32 255, i32 16)
  %call = call i32 @f2fs_getxattr(ptr noundef %inode, i32 noundef 11, ptr noundef nonnull @.str, ptr noundef nonnull %dloc, i32 noundef 16, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call)
  %cmp1.not = icmp eq i32 %call, -34
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp2.not = icmp eq i32 %call, 16
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %dloc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %4)
  %cmp3.not = icmp eq i32 %4, 16777216
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %8, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %1, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  %conv = zext i32 %11 to i64
  %add = add i64 %14, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %14)
  %cmp9 = icmp ult i64 %add, %14
  br i1 %cmp9, label %if.end6.if.then23_crit_edge, label %lor.lhs.false11

if.end6.if.then23_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

lor.lhs.false11:                                  ; preds = %if.end6
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %18)
  %cmp14 = icmp ugt i64 %add, %18
  br i1 %cmp14, label %lor.lhs.false11.if.then23_crit_edge, label %lor.lhs.false16

lor.lhs.false11.if.then23_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %19 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %20, -1
  %or.i = or i64 %sub.i, 65535
  %add.i = add i64 %or.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add.i)
  %cmp18 = icmp ult i64 %14, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp slt i32 %11, 0
  %or.cond60 = select i1 %cmp18, i1 true, i1 %cmp21
  br i1 %or.cond60, label %lor.lhs.false16.if.then23_crit_edge, label %if.end25

lor.lhs.false16.if.then23_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false16.if.then23_crit_edge, %lor.lhs.false11.if.then23_crit_edge, %if.end6.if.then23_crit_edge
  %i_sb.i61 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i61, align 4
  %s_fs_info.i.i62 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i62, align 16
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %24, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size)
  %tobool.not = icmp eq i32 %buf_size, 0
  br i1 %tobool.not, label %if.end25.if.end35_crit_edge, label %if.then26

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then26:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %buf_size)
  %cmp27 = icmp ugt i32 %11, %buf_size
  br i1 %cmp27, label %if.then26.cleanup_crit_edge, label %if.end30

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  %call31 = call fastcc i32 @pagecache_read(ptr noundef %inode, ptr noundef %buf, i32 noundef %11, i64 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end35:                                         ; preds = %if.end30.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.then23, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -117, %if.then23 ], [ %11, %if.end35 ], [ %call, %entry.cleanup_crit_edge ], [ -34, %if.then26.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dloc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f2fs_read_merkle_tree_page(ptr nocapture noundef readonly %inode, i32 noundef %index, i32 noundef %num_ra_pages) #0 align 64 {
entry:
  %ractl = alloca %struct.readahead_control, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl) #6
  %0 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %1 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %2 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %3 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %4 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 5
  %5 = ptrtoint ptr %ractl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ractl, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %index, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %4, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %13 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %14, 17592186044415
  %or.i = or i64 %sub.i, 65535
  %add.i = add i64 %or.i, 1
  %15 = lshr exact i64 %add.i, 12
  %16 = trunc i64 %15 to i32
  %conv1 = add i32 %16, %index
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %7, i32 noundef %conv1, i32 noundef 1, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !26

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !26

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.5) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !27
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %21, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %if.then7.critedge, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  br label %if.end13

if.then7.critedge:                                ; preds = %folio_flags.exit.i.i
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %17, align 4
  %and.i.i25 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i29, label %if.then.i.i28, !prof !26

if.then.i.i28:                                    ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i27 = add i32 %29, -1
  br label %_compound_head.exit.i31

if.end.i.i29:                                     ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i31

_compound_head.exit.i31:                          ; preds = %if.end.i.i29, %if.then.i.i28
  %retval.0.i.i30 = phi i32 [ %sub.i.i27, %if.then.i.i28 ], [ %30, %if.end.i.i29 ]
  %31 = inttoptr i32 %retval.0.i.i30 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !29

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.4) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i31
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !32
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_read_merkle_tree_page, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !34

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end10_crit_edge

folio_put_testzero.exit.i.i.if.end10_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %31) #6
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_ra_pages)
  %cmp = icmp ugt i32 %num_ra_pages, 1
  br i1 %cmp, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @page_cache_ra_unbounded(ptr noundef nonnull %ractl, i32 noundef %num_ra_pages, i32 noundef 0) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else.if.end10_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end10_crit_edge
  %35 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping, align 8
  %call.i32 = call ptr @read_cache_page(ptr noundef %36, i32 noundef %conv1, ptr noundef null, ptr noundef null) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %PageUptodate.exit
  %page.0 = phi ptr [ %call.i, %PageUptodate.exit ], [ %call.i32, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl) #6
  ret ptr %page.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_write_merkle_tree_block(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %buf, i64 noundef %index, i32 noundef %log_blocksize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %1, -1
  %or.i = or i64 %sub.i, 65535
  %sh_prom = zext i32 %log_blocksize to i64
  %shl = shl i64 %index, %sh_prom
  %add.i = add i64 %shl, 1
  %add = add i64 %add.i, %or.i
  %shl1 = shl nuw i32 1, %log_blocksize
  %call2 = tail call fastcc i32 @pagecache_write(ptr noundef %inode, ptr noundef %buf, i32 noundef %shl1, i64 noundef %add)
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_convert_inline_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagecache_write(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %buf, i32 noundef %count, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %fsdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %count to i64
  %add = add i64 %conv, %pos
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp = icmp sgt i64 %add, %3
  br i1 %cmp, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not63 = icmp eq i32 %count, 0
  br i1 %tobool.not63, label %while.cond.preheader.return_crit_edge, label %while.body.lr.ph

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.addr.066 = phi i64 [ %pos, %while.body.lr.ph ], [ %add26, %cleanup.while.body_crit_edge ]
  %count.addr.065 = phi i32 [ %count, %while.body.lr.ph ], [ %sub27, %cleanup.while.body_crit_edge ]
  %buf.addr.064 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr24, %cleanup.while.body_crit_edge ]
  %conv2 = trunc i64 %pos.addr.066 to i32
  %and = and i32 %conv2, 4095
  %sub = sub nuw nsw i32 4096, %and
  %4 = call i32 @llvm.umin.i32(i32 %count.addr.065, i32 %sub)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #6
  %5 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata) #6
  %6 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdata, align 4, !annotation !35
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %call = call i32 @pagecache_write_begin(ptr noundef null, ptr noundef %8, i64 noundef %pos.addr.066, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull %fsdata) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end7:                                          ; preds = %while.body
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  %16 = call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #6
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and
  %22 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.064, i32 %4)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %23 = call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  %29 = call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %33 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping, align 8
  %35 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %page, align 4
  %37 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fsdata, align 4
  %call15 = call i32 @pagecache_write_end(ptr noundef null, ptr noundef %34, i64 noundef %pos.addr.066, i32 noundef %4, i32 noundef %4, ptr noundef %36, ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end7.cleanup.thread_crit_edge, label %if.end19

if.end7.cleanup.thread_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %4)
  %cmp20.not = icmp eq i32 %call15, %4
  br i1 %cmp20.not, label %cleanup, label %if.end19.cleanup.thread_crit_edge

if.end19.cleanup.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end19.cleanup.thread_crit_edge, %if.end7.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -5, %if.end19.cleanup.thread_crit_edge ], [ %call15, %if.end7.cleanup.thread_crit_edge ], [ %call, %while.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #6
  br label %return

cleanup:                                          ; preds = %if.end19
  %add.ptr24 = getelementptr i8, ptr %buf.addr.064, i32 %4
  %conv25 = zext i32 %4 to i64
  %add26 = add i64 %pos.addr.066, %conv25
  %sub27 = sub i32 %count.addr.065, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #6
  %tobool.not = icmp eq i32 %sub27, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %while.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ -27, %entry.return_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ 0, %while.cond.preheader.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_setxattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_getxattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagecache_read(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %buf, i32 noundef %count, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not38 = icmp eq i32 %count, 0
  br i1 %tobool.not38, label %entry.return_crit_edge, label %while.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.addr.041 = phi i64 [ %pos, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %count.addr.040 = phi i32 [ %count, %while.body.lr.ph ], [ %sub13, %cleanup.while.body_crit_edge ]
  %buf.addr.039 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr11, %cleanup.while.body_crit_edge ]
  %conv = trunc i64 %pos.addr.041 to i32
  %and = and i32 %conv, 4095
  %sub = sub nuw nsw i32 4096, %and
  %0 = tail call i32 @llvm.umin.i32(i32 %count.addr.040, i32 %sub)
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %3 = lshr i64 %pos.addr.041, 12
  %conv2 = trunc i64 %3 to i32
  %call.i = tail call ptr @read_cache_page(ptr noundef %2, i32 noundef %conv2, ptr noundef null, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call.i to i32
  br label %return

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %5 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %5, 512
  %6 = tail call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  %10 = tail call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i1.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 213
  %14 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i) #6
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and
  %16 = call ptr @memcpy(ptr %buf.addr.039, ptr %add.ptr, i32 %0)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %17 = tail call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i1.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %22, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  %23 = tail call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %27 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !26

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i31 = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i31, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !29

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.4) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !32
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@pagecache_read, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !34

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge
  %add.ptr11 = getelementptr i8, ptr %buf.addr.039, i32 %0
  %conv12 = zext i32 %0 to i64
  %add = add i64 %pos.addr.041, %conv12
  %sub13 = sub i32 %count.addr.040, %0
  %tobool.not = icmp eq i32 %sub13, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %entry.return_crit_edge
  %retval.2 = phi i32 [ %4, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_ra_unbounded(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @f2fs_verityops, !1, !"f2fs_verityops", i1 false, i1 false}
!1 = !{!"../fs/f2fs/verity.c", i32 288, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/verity.c", i32 188, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/f2fs/verity.c", i32 215, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/verity.c", i32 238, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/f2fs/verity.c", i32 247, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/mm.h", i32 717, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2150284804, i64 2150285295, i64 2150284841, i64 2150284897, i64 2150284931, i64 2150284955, i64 2150284996, i64 2150285017, i64 2150285045, i64 2150285079}
!28 = !{i64 2151034696}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2153175802, i64 2153176285, i64 2153175839, i64 2153175895, i64 2153175929, i64 2153175953, i64 2153175994, i64 2153176015, i64 2153176043, i64 2153176077}
!31 = !{i64 2148818282}
!32 = !{i64 2148732991, i64 2148733023, i64 2148733052, i64 2148733086, i64 2148733117, i64 2148733140}
!33 = !{i64 2148818511}
!34 = !{i64 2148330483, i64 2148330488, i64 2148330501, i64 2148330545, i64 2148330579, i64 2148330600}
!35 = !{!"auto-init"}
!36 = !{i64 2153699738}
!37 = !{i64 2152792853}
!38 = !{i64 2152793060}
!39 = !{i64 2153702509}
