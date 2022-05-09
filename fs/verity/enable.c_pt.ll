; ModuleID = '/llk/IR_all_yes/fs/verity/enable.c_pt.bc'
source_filename = "../fs/verity/enable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsverity_ioctl_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_ioctl_enable\09\09\09\09"
module asm "\09.long\09__crc_fsverity_ioctl_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_ioctl_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_ioctl_enable\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_ioctl_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.fsverity_enable_arg = type { i32, i32, i32, i32, i64, i32, i32, i64, [11 x i64] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.merkle_tree_params = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, [8 x i64] }
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
%struct.fsverity_descriptor = type { i8, i8, i8, i8, i32, i64, [64 x i8], [32 x i8], [144 x i8], [0 x i8] }
%struct.fsverity_hash_alg = type { ptr, ptr, i32, i32, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.fsverity_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
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
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }

@__kstrtab_fsverity_ioctl_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_ioctl_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_ioctl_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_ioctl_enable to i32), ptr @__kstrtab_fsverity_ioctl_enable, ptr @__kstrtabns_fsverity_ioctl_enable }, section "___ksymtab_gpl+fsverity_ioctl_enable", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@enable_verity.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable_verity\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/verity/enable.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Building Merkle tree...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fs-verity: Building Merkle tree...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d building Merkle tree\00", [34 x i8] zeroinitializer }, align 32
@enable_verity.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.10, i8 0, i8 68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Done building Merkle tree.  Root hash is %s:%*phN\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"fs-verity: Done building Merkle tree.  Root hash is %s:%*phN\0A\00", [34 x i8] zeroinitializer }, align 32
@enable_verity.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.12, i8 0, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Storing a %u-byte PKCS#7 signature alongside the file\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"fs-verity: Storing a %u-byte PKCS#7 signature alongside the file\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%ps() failed with err %d\00", [39 x i8] zeroinitializer }, align 32
@build_merkle_tree_level.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"build_merkle_tree_level\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Hashing block %llu of %llu for level %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fs-verity: Hashing block %llu of %llu for level %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error %d reading data page %llu\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d reading Merkle tree page %llu\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error %d writing Merkle tree block %llu\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 230, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 214, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 156, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 267, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 271, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 274, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 291, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 302, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 75, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 84, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 100, i32 5 }
@___asan_gen_.86 = private constant [22 x i8] c"../fs/verity/enable.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 127, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 260, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 468, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 717, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_fsverity_ioctl_enable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_ioctl_enable(ptr noundef %filp, ptr noundef %uarg) #0 align 64 {
entry:
  %arg = alloca %struct.fsverity_enable_arg, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %arg) #9
  %2 = call ptr @memset(ptr %arg, i32 255, i32 128)
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uarg, i32 128, i32 -1226833920) #12, !srcloc !58
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !59

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg, i32 noundef 128) #9
  %4 = call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !60
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg, ptr noundef %uarg, i32 noundef 128) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !59

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i72 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 128, %entry.if.then11.i.i_crit_edge ], [ 128, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 128, %res.0.i.i72
  %add.ptr.i.i = getelementptr i8, ptr %arg, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i72)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %__reserved1 = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 6
  %10 = ptrtoint ptr %__reserved1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__reserved1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %__reserved2 = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 8
  %call5 = call ptr @memchr_inv(ptr noundef %__reserved2, i32 noundef 0, i32 noundef 88) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %block_size = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 2
  %12 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %13)
  %cmp9.not = icmp eq i32 %13, 4096
  br i1 %cmp9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %salt_size = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 3
  %14 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %salt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp12 = icmp ugt i32 %15, 32
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %sig_size = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 5
  %16 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sig_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16128, i32 %17)
  %cmp15 = icmp ugt i32 %17, 16128
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %18 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  %22 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_inode.i, align 8
  %call2.i = call i32 @inode_permission(ptr noundef %21, ptr noundef %23, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool19.not = icmp eq i32 %call2.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags, align 4
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 8
  %28 = and i16 %27, -4096
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i16 %28, label %if.then35 [
    i16 16384, label %if.end24.cleanup_crit_edge
    i16 -32768, label %if.end36
  ]

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %call37 = call i32 @mnt_want_write_file(ptr noundef %filp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = call fastcc i32 @deny_write_access(ptr noundef %filp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.out_drop_write_crit_edge

if.end40.out_drop_write_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

if.end44:                                         ; preds = %if.end40
  %call45 = call fastcc i32 @enable_verity(ptr noundef %filp, ptr noundef nonnull %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.out_allow_write_access_crit_edge

if.end44.out_allow_write_access_crit_edge:        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_allow_write_access

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping, align 8
  %call.i = call i32 @filemap_write_and_wait_range(ptr noundef %31, i64 noundef 0, i64 noundef 9223372036854775807) #9
  %32 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_mapping, align 8
  %call51 = call i32 @invalidate_inode_pages2(ptr noundef %33) #9
  br label %out_allow_write_access

out_allow_write_access:                           ; preds = %if.end48, %if.end44.out_allow_write_access_crit_edge
  call fastcc void @allow_write_access(ptr noundef %filp)
  br label %out_drop_write

out_drop_write:                                   ; preds = %out_allow_write_access, %if.end40.out_drop_write_crit_edge
  %err.0 = phi i32 [ %call41, %if.end40.out_drop_write_crit_edge ], [ %call45, %out_allow_write_access ]
  call void @mnt_drop_write_file(ptr noundef %filp) #9
  br label %cleanup

cleanup:                                          ; preds = %out_drop_write, %if.end36.cleanup_crit_edge, %if.then35, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %err.0, %out_drop_write ], [ -22, %if.then35 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -90, %if.end11.cleanup_crit_edge ], [ -90, %if.end14.cleanup_crit_edge ], [ %call2.i, %if.end17.cleanup_crit_edge ], [ -1, %if.end21.cleanup_crit_edge ], [ -21, %if.end24.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %arg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @deny_write_access(ptr nocapture noundef readonly %file) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_writecount = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount, i32 noundef 4) #9
  %2 = ptrtoint ptr %i_writecount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_writecount, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %entry
  %c.0.i.i = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i)
  %cmp.i.i = icmp sgt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.atomic_dec_unless_positive.exit_crit_edge, label %do.cond3.i.i, !prof !64

do.body1.i.i.atomic_dec_unless_positive.exit_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_dec_unless_positive.exit

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  %sub.i.i = add i32 %c.0.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %i_writecount, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount, ptr %i_writecount, i32 %c.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %i_writecount) #9, !srcloc !66
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !67
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.atomic_dec_unless_positive.exit_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !59

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

arch_atomic_cmpxchg.exit.i.i.i.atomic_dec_unless_positive.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_dec_unless_positive.exit

atomic_dec_unless_positive.exit:                  ; preds = %arch_atomic_cmpxchg.exit.i.i.i.atomic_dec_unless_positive.exit_crit_edge, %do.body1.i.i.atomic_dec_unless_positive.exit_crit_edge
  %cond = phi i32 [ -26, %do.body1.i.i.atomic_dec_unless_positive.exit_crit_edge ], [ 0, %arch_atomic_cmpxchg.exit.i.i.i.atomic_dec_unless_positive.exit_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_verity(ptr noundef %filp, ptr nocapture noundef readonly %arg) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.merkle_tree_params, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_vop = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %s_vop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_vop, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %params) #9
  %6 = call ptr @memset(ptr %params, i32 0, i32 112)
  %sig_size = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 5
  %7 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sig_size, align 8
  %add = add i32 %8, 256
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call9.i.i, align 128
  %hash_algorithm = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %hash_algorithm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_algorithm, align 4
  %conv = trunc i32 %11 to i8
  %hash_algorithm2 = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %hash_algorithm2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %hash_algorithm2, align 1
  %block_size = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #9, !range !68
  %16 = trunc i32 %15 to i8
  %17 = xor i8 %16, 31
  %conv13 = select i1 %tobool.not.i.i, i8 -1, i8 %17
  %log_blocksize = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %log_blocksize to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %log_blocksize, align 2
  %salt_size = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 3
  %19 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %salt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %if.end.if.end23_crit_edge, label %land.lhs.true

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %salt = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 7
  %salt_ptr = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 4
  %21 = ptrtoint ptr %salt_ptr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %salt_ptr, align 8
  %conv18 = trunc i64 %22 to i32
  %23 = inttoptr i32 %conv18 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.i.i = icmp slt i32 %20, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %land.lhs.true
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !59

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %out

if.then.i.i.i:                                    ; preds = %land.lhs.true
  tail call void @__check_object_size(ptr noundef %salt, i32 noundef %20, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %20, i32 -1226833920) #12, !srcloc !58
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !59

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %salt, i32 noundef %20) #9
  %25 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !60
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %salt, ptr noundef %23, i32 noundef %20) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #9, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end23_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !59

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i.if.end23_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i337 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %20, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %20, %res.0.i.i337
  %add.ptr.i.i = getelementptr i8, ptr %salt, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i337)
  br label %out

if.end23:                                         ; preds = %if.end.i.i.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %29 = ptrtoint ptr %salt_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %salt_size, align 4
  %conv25 = trunc i32 %30 to i8
  %salt_size26 = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %salt_size26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv25, ptr %salt_size26, align 1
  %32 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sig_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool28.not = icmp eq i32 %33, 0
  br i1 %tobool28.not, label %if.end23.if.end42_crit_edge, label %land.lhs.true29

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true29:                                  ; preds = %if.end23
  %signature = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 9
  %sig_ptr = getelementptr inbounds %struct.fsverity_enable_arg, ptr %arg, i32 0, i32 7
  %34 = ptrtoint ptr %sig_ptr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sig_ptr, align 8
  %conv37 = trunc i64 %35 to i32
  %36 = inttoptr i32 %conv37 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp9.i.i252 = icmp slt i32 %33, 0
  br i1 %cmp9.i.i252, label %land.rhs16.i.i255, label %if.then.i.i.i258

land.rhs16.i.i255:                                ; preds = %land.lhs.true29
  %.b1.i.i254 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i254, label %land.rhs16.i.i255.out_crit_edge, label %if.then27.i.i256, !prof !59

land.rhs16.i.i255.out_crit_edge:                  ; preds = %land.rhs16.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then27.i.i256:                                 ; preds = %land.rhs16.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %out

if.then.i.i.i258:                                 ; preds = %land.lhs.true29
  tail call void @__check_object_size(ptr noundef %signature, i32 noundef %33, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i259 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i259, label %if.then.i.i.i258.if.then11.i.i276_crit_edge, label %land.lhs.true.i.i263

if.then.i.i.i258.if.then11.i.i276_crit_edge:      ; preds = %if.then.i.i.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i276

land.lhs.true.i.i263:                             ; preds = %if.then.i.i.i258
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 %33, i32 -1226833920) #12, !srcloc !58
  %asmresult.i.i261 = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i261)
  %cmp.i6.i262 = icmp eq i32 %asmresult.i.i261, 0
  br i1 %cmp.i6.i262, label %if.end.i.i273, label %land.lhs.true.i.i263.if.then11.i.i276_crit_edge, !prof !59

land.lhs.true.i.i263.if.then11.i.i276_crit_edge:  ; preds = %land.lhs.true.i.i263
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i276

if.end.i.i273:                                    ; preds = %land.lhs.true.i.i263
  %call.i.i.i264 = tail call zeroext i1 @__kasan_check_write(ptr noundef %signature, i32 noundef %33) #9
  %38 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i265 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i265 to ptr
  %cpu_domain.i.i.i.i.i266 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i266) #4, !srcloc !60
  %and.i.i.i.i267 = and i32 %40, -13
  %or.i.i.i.i268 = or i32 %and.i.i.i.i267, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i268) #9, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %call1.i.i.i269 = tail call i32 @arm_copy_from_user(ptr noundef %signature, ptr noundef %36, i32 noundef %33) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #9, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i269)
  %tobool4.not.i.i272 = icmp eq i32 %call1.i.i.i269, 0
  br i1 %tobool4.not.i.i272, label %if.end.i.i273.if.end42_crit_edge, label %if.end.i.i273.if.then11.i.i276_crit_edge, !prof !59

if.end.i.i273.if.then11.i.i276_crit_edge:         ; preds = %if.end.i.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i276

if.end.i.i273.if.end42_crit_edge:                 ; preds = %if.end.i.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then11.i.i276:                                 ; preds = %if.end.i.i273.if.then11.i.i276_crit_edge, %land.lhs.true.i.i263.if.then11.i.i276_crit_edge, %if.then.i.i.i258.if.then11.i.i276_crit_edge
  %res.0.i.i271342 = phi i32 [ %call1.i.i.i269, %if.end.i.i273.if.then11.i.i276_crit_edge ], [ %33, %if.then.i.i.i258.if.then11.i.i276_crit_edge ], [ %33, %land.lhs.true.i.i263.if.then11.i.i276_crit_edge ]
  %sub.i.i274 = sub i32 %33, %res.0.i.i271342
  %add.ptr.i.i275 = getelementptr i8, ptr %signature, i32 %sub.i.i274
  %41 = call ptr @memset(ptr %add.ptr.i.i275, i32 0, i32 %res.0.i.i271342)
  br label %out

if.end42:                                         ; preds = %if.end.i.i273.if.end42_crit_edge, %if.end23.if.end42_crit_edge
  %42 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sig_size, align 8
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %sig_size44 = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %sig_size44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %sig_size44, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_size, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %47)
  %data_size = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %data_size, align 8
  %50 = ptrtoint ptr %hash_algorithm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hash_algorithm, align 4
  %52 = ptrtoint ptr %log_blocksize to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %log_blocksize, align 2
  %conv47 = zext i8 %53 to i32
  %salt48 = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %salt_size26 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %salt_size26, align 1
  %conv51 = zext i8 %55 to i32
  %call52 = call i32 @fsverity_init_merkle_tree_params(ptr noundef nonnull %params, ptr noundef %1, i32 noundef %51, i32 noundef %conv47, ptr noundef %salt48, i32 noundef %conv51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end55:                                         ; preds = %if.end42
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #9
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_flags, align 4
  %and = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.end59, label %if.end59.thread

if.end59.thread:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %out

if.end59:                                         ; preds = %if.end55
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %call58 = call i32 %59(ptr noundef %filp) #9
  call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool60.not = icmp eq i32 %call58, 0
  br i1 %tobool60.not, label %do.body, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_verity.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_verity, %do.end73)) #9
          to label %if.then69 [label %do.end73], !srcloc !69

if.then69:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @enable_verity.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.7) #9
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body
  %root_hash = getelementptr inbounds %struct.fsverity_descriptor, ptr %call9.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_inode.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %cmp.i = icmp eq i64 %63, 0
  br i1 %cmp.i, label %build_merkle_tree.exit.thread, label %if.end.i

build_merkle_tree.exit.thread:                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  %digest_size.i = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 2
  %64 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %digest_size.i, align 8
  %66 = call ptr @memset(ptr %root_hash, i32 0, i32 %65)
  br label %do.body79

if.end.i:                                         ; preds = %do.end73
  %67 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %params, align 8
  %call1.i = call ptr @fsverity_alloc_hash_request(ptr noundef %68, i32 noundef 3264) #9
  %block_size.i = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 3
  %69 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %block_size.i, align 4
  %call9.i.i320 = call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i320, null
  br i1 %tobool.not.i, label %if.end.i.build_merkle_tree.exit_crit_edge, label %if.end4.i

if.end.i.build_merkle_tree.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_merkle_tree.exit

if.end4.i:                                        ; preds = %if.end.i
  %71 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %i_size.i, align 8
  %73 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %block_size.i, align 4
  %conv.i = zext i32 %74 to i64
  %add.i = add i64 %72, -1
  %sub.i323 = add i64 %add.i, %conv.i
  %log_blocksize.i = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 5
  %75 = ptrtoint ptr %log_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %log_blocksize.i, align 4
  %sh_prom.i = zext i32 %76 to i64
  %shr.i = lshr i64 %sub.i323, %sh_prom.i
  %num_levels.i = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 7
  %hashes_per_block.i = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 4
  %log_arity.i = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %if.end4.i
  %level.051.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %if.end12.i.for.body.i_crit_edge ]
  %blocks.050.i = phi i64 [ %shr.i, %if.end4.i ], [ %shr17.i, %if.end12.i.for.body.i_crit_edge ]
  %call9.i = call fastcc i32 @build_merkle_tree_level(ptr noundef %filp, i32 noundef %level.051.i, i64 noundef %blocks.050.i, ptr noundef nonnull %params, ptr noundef nonnull %call9.i.i320, ptr noundef %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body.i.build_merkle_tree.exit_crit_edge

for.body.i.build_merkle_tree.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_merkle_tree.exit

if.end12.i:                                       ; preds = %for.body.i
  %77 = ptrtoint ptr %hashes_per_block.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hashes_per_block.i, align 8
  %conv13.i = zext i32 %78 to i64
  %add14.i = add i64 %blocks.050.i, -1
  %sub15.i = add i64 %add14.i, %conv13.i
  %79 = ptrtoint ptr %log_arity.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %log_arity.i, align 8
  %sh_prom16.i = zext i32 %80 to i64
  %shr17.i = lshr i64 %sub15.i, %sh_prom16.i
  %inc.i = add i32 %level.051.i, 1
  %81 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_levels.i, align 4
  %cmp7.not.i = icmp ugt i32 %inc.i, %82
  br i1 %cmp7.not.i, label %for.end.i, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %digest_size18.i = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 2
  %83 = ptrtoint ptr %digest_size18.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %digest_size18.i, align 8
  %85 = call ptr @memcpy(ptr %root_hash, ptr %call9.i.i320, i32 %84)
  br label %build_merkle_tree.exit

build_merkle_tree.exit:                           ; preds = %for.end.i, %for.body.i.build_merkle_tree.exit_crit_edge, %if.end.i.build_merkle_tree.exit_crit_edge
  %retval.1.i49.i = phi ptr [ %call9.i.i320, %for.end.i ], [ null, %if.end.i.build_merkle_tree.exit_crit_edge ], [ %call9.i.i320, %for.body.i.build_merkle_tree.exit_crit_edge ]
  %err.0.i = phi i32 [ 0, %for.end.i ], [ -12, %if.end.i.build_merkle_tree.exit_crit_edge ], [ %call9.i, %for.body.i.build_merkle_tree.exit_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i49.i) #9
  %86 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %params, align 8
  call void @fsverity_free_hash_request(ptr noundef %87, ptr noundef %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool76.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool76.not, label %build_merkle_tree.exit.do.body79_crit_edge, label %if.then77

build_merkle_tree.exit.do.body79_crit_edge:       ; preds = %build_merkle_tree.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body79

if.then77:                                        ; preds = %build_merkle_tree.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %err.0.i) #14
  br label %rollback

do.body79:                                        ; preds = %build_merkle_tree.exit.do.body79_crit_edge, %build_merkle_tree.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_verity.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_verity, %do.end98)) #9
          to label %if.then93 [label %do.end98], !srcloc !69

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %params, align 8
  %name = getelementptr inbounds %struct.fsverity_hash_alg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name, align 4
  %digest_size = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 2
  %92 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %digest_size, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @enable_verity.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.11, ptr noundef %91, i32 noundef %93, ptr noundef %root_hash) #9
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.body79
  %call99 = call ptr @fsverity_create_info(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef %add) #9
  %cmp.i325 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i325, label %if.then101, label %if.end103

if.then101:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %call99 to i32
  br label %rollback

if.end103:                                        ; preds = %do.end98
  %95 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sig_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool105.not = icmp eq i32 %96, 0
  br i1 %tobool105.not, label %if.end103.if.end126_crit_edge, label %do.body107

if.end103.if.end126_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

do.body107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_verity.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_verity, %if.end126)) #9
          to label %if.then121 [label %if.end126], !srcloc !69

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sig_size, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @enable_verity.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.13, i32 noundef %98) #9
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %do.body107, %if.end103.if.end126_crit_edge
  call void @down_write(ptr noundef %i_rwsem.i) #9
  %end_enable_verity = getelementptr inbounds %struct.fsverity_operations, ptr %5, i32 0, i32 1
  %99 = ptrtoint ptr %end_enable_verity to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end_enable_verity, align 4
  %tree_size = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 8
  %101 = ptrtoint ptr %tree_size to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %tree_size, align 8
  %call127 = call i32 %100(ptr noundef %filp, ptr noundef nonnull %call9.i.i, i32 noundef %add, i64 noundef %102) #9
  call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.else131, label %if.then129

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %end_enable_verity to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end_enable_verity, align 4
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14, ptr noundef %104, i32 noundef %call127) #14
  call void @fsverity_free_info(ptr noundef %call99) #9
  br label %out

if.else131:                                       ; preds = %if.end126
  %105 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i_flags, align 4
  %and133 = and i32 %106, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.end152, label %if.else168, !prof !64

do.end152:                                        ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 305, i32 noundef 9, ptr noundef null) #9
  call void @fsverity_free_info(ptr noundef %call99) #9
  br label %out

if.else168:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #11
  call void @fsverity_set_info(ptr noundef %1, ptr noundef %call99) #9
  br label %out

out:                                              ; preds = %rollback, %if.else168, %do.end152, %if.then129, %if.end59.out_crit_edge, %if.end59.thread, %if.end42.out_crit_edge, %if.then11.i.i276, %if.then27.i.i256, %land.rhs16.i.i255.out_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %err.1 = phi i32 [ %call52, %if.end42.out_crit_edge ], [ %call58, %if.end59.out_crit_edge ], [ %err.2, %rollback ], [ %call127, %if.then129 ], [ -22, %do.end152 ], [ 0, %if.else168 ], [ -17, %if.end59.thread ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ -14, %if.then11.i.i276 ], [ -14, %if.then27.i.i256 ], [ -14, %land.rhs16.i.i255.out_crit_edge ]
  %hashstate = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 1
  %107 = ptrtoint ptr %hashstate to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hashstate, align 4
  call void @kfree(ptr noundef %108) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

rollback:                                         ; preds = %if.then101, %if.then77
  %err.2 = phi i32 [ %err.0.i, %if.then77 ], [ %94, %if.then101 ]
  call void @down_write(ptr noundef %i_rwsem.i) #9
  %end_enable_verity171 = getelementptr inbounds %struct.fsverity_operations, ptr %5, i32 0, i32 1
  %109 = ptrtoint ptr %end_enable_verity171 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %end_enable_verity171, align 4
  %tree_size172 = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 8
  %111 = ptrtoint ptr %tree_size172 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %tree_size172, align 8
  %call173 = call i32 %110(ptr noundef %filp, ptr noundef null, i32 noundef 0, i64 noundef %112) #9
  call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %out

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %params) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allow_write_access(ptr noundef readonly %file) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_writecount = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_writecount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount, ptr %i_writecount, i32 1, ptr elementtype(i32) %i_writecount) #9, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_init_merkle_tree_params(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fsverity_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsverity_create_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_free_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_set_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsverity_alloc_hash_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_merkle_tree_level(ptr noundef %filp, i32 noundef %level, i64 noundef %num_blocks_to_hash, ptr noundef %params, ptr noundef %pending_hashes, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %ra = alloca %struct.file_ra_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_vop = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %s_vop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_vop, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ra) #9
  %6 = call ptr @memset(ptr %ra, i32 0, i32 32)
  %block_size = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %8)
  %cmp.not = icmp eq i32 %8, 4096
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !59

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 58, i32 noundef 9, ptr noundef null) #9
  br label %cleanup155

if.end21:                                         ; preds = %entry
  %num_levels = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 7
  %9 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %level)
  %cmp22 = icmp ugt i32 %10, %level
  br i1 %cmp22, label %if.end58, label %if.else

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %num_blocks_to_hash)
  %cmp25.not = icmp eq i64 %num_blocks_to_hash, 1
  br i1 %cmp25.not, label %if.end58.thread, label %do.end41, !prof !59

if.end58.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %f_mapping270 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping270 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping270, align 4
  call void @file_ra_state_init(ptr noundef nonnull %ra, ptr noundef %12) #9
  br label %for.body.lr.ph

do.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 64, i32 noundef 9, ptr noundef null) #9
  br label %cleanup155

if.end58:                                         ; preds = %if.end21
  %arrayidx = getelementptr %struct.merkle_tree_params, ptr %params, i32 0, i32 10, i32 %level
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %15 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_mapping, align 4
  call void @file_ra_state_init(ptr noundef nonnull %ra, ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %num_blocks_to_hash)
  %cmp59252.not = icmp eq i64 %num_blocks_to_hash, 0
  br i1 %cmp59252.not, label %if.end58.cleanup155_crit_edge, label %if.end58.for.body.lr.ph_crit_edge

if.end58.for.body.lr.ph_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end58.cleanup155_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

for.body.lr.ph:                                   ; preds = %if.end58.for.body.lr.ph_crit_edge, %if.end58.thread
  %dst_block_num.0272 = phi i64 [ 0, %if.end58.thread ], [ %14, %if.end58.for.body.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp83 = icmp eq i32 %level, 0
  %read_merkle_tree_page = getelementptr inbounds %struct.fsverity_operations, ptr %5, i32 0, i32 3
  %sub101 = add i32 %level, -1
  %arrayidx102 = getelementptr %struct.merkle_tree_params, ptr %params, i32 0, i32 10, i32 %sub101
  %digest_size = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 2
  %write_merkle_tree_block = getelementptr inbounds %struct.fsverity_operations, ptr %5, i32 0, i32 4
  %log_blocksize = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pending_size.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %pending_size.1, %for.inc.for.body_crit_edge ]
  %dst_block_num.1254 = phi i64 [ %dst_block_num.0272, %for.body.lr.ph ], [ %dst_block_num.2, %for.inc.for.body_crit_edge ]
  %i.0253 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %conv = trunc i64 %i.0253 to i32
  %rem = urem i32 %conv, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp60 = icmp eq i32 %rem, 0
  %add = add nuw i64 %i.0253, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %num_blocks_to_hash)
  %cmp62 = icmp eq i64 %add, %num_blocks_to_hash
  %or.cond = select i1 %cmp60, i1 true, i1 %cmp62
  br i1 %or.cond, label %do.body65, label %for.body.if.end82_crit_edge

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.body65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_merkle_tree_level.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@build_merkle_tree_level, %if.end82)) #9
          to label %if.then77 [label %if.end82], !srcloc !69

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_merkle_tree_level.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.17, i64 noundef %add, i64 noundef %num_blocks_to_hash, i32 noundef %level) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %do.body65, %for.body.if.end82_crit_edge
  %sub = sub i64 %num_blocks_to_hash, %i.0253
  %conv87 = trunc i64 %sub to i32
  br i1 %cmp83, label %if.then85, label %if.else93

if.then85:                                        ; preds = %if.end82
  %call88 = call fastcc ptr @read_file_data_page(ptr noundef %filp, i32 noundef %conv, ptr noundef nonnull %ra, i32 noundef %conv87)
  %cmp.i = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then90, label %if.then85.if.end114_crit_edge

if.then85.if.end114_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call88 to i32
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18, i32 noundef %17, i64 noundef %i.0253) #14
  br label %cleanup155

if.else93:                                        ; preds = %if.end82
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_bdi, align 8
  %io_pages = getelementptr inbounds %struct.backing_dev_info, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %io_pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_pages, align 8
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %conv87)
  %25 = ptrtoint ptr %read_merkle_tree_page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_merkle_tree_page, align 4
  %27 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx102, align 8
  %add103 = add i64 %28, %i.0253
  %conv104 = trunc i64 %add103 to i32
  %call105 = call ptr %26(ptr noundef %1, i32 noundef %conv104, i32 noundef %24) #9
  %cmp.i235 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %cleanup.thread, label %if.else93.if.end114_crit_edge

if.else93.if.end114_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

cleanup.thread:                                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call105 to i32
  %30 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx102, align 8
  %add112 = add i64 %31, %i.0253
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19, i32 noundef %29, i64 noundef %add112) #14
  br label %cleanup155

if.end114:                                        ; preds = %if.else93.if.end114_crit_edge, %if.then85.if.end114_crit_edge
  %src_page.0 = phi ptr [ %call88, %if.then85.if.end114_crit_edge ], [ %call105, %if.else93.if.end114_crit_edge ]
  %arrayidx115 = getelementptr i8, ptr %pending_hashes, i32 %pending_size.0255
  %call116 = call i32 @fsverity_hash_page(ptr noundef %params, ptr noundef %1, ptr noundef %req, ptr noundef %src_page.0, ptr noundef %arrayidx115) #9
  %32 = getelementptr inbounds %struct.page, ptr %src_page.0, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %src_page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.24) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@build_merkle_tree_level, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !69

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %36) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %put_page.exit.cleanup155_crit_edge

put_page.exit.cleanup155_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

if.end119:                                        ; preds = %put_page.exit
  %41 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %digest_size, align 8
  %add120 = add i32 %42, %pending_size.0255
  %43 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %level)
  %cmp122 = icmp eq i32 %44, %level
  br i1 %cmp122, label %if.end119.cleanup155_crit_edge, label %if.end125

if.end119.cleanup155_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

if.end125:                                        ; preds = %if.end119
  %add127 = add i32 %add120, %42
  %45 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add127, i32 %46)
  %cmp129 = icmp ugt i32 %add127, %46
  %or.cond234 = select i1 %cmp129, i1 true, i1 %cmp62
  br i1 %or.cond234, label %if.then135, label %if.end125.if.end143_crit_edge

if.end125.if.end143_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then135:                                       ; preds = %if.end125
  %arrayidx136 = getelementptr i8, ptr %pending_hashes, i32 %add120
  %sub138 = sub i32 %46, %add120
  %47 = call ptr @memset(ptr %arrayidx136, i32 0, i32 %sub138)
  %48 = ptrtoint ptr %write_merkle_tree_block to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_merkle_tree_block, align 4
  %50 = ptrtoint ptr %log_blocksize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %log_blocksize, align 4
  %call139 = call i32 %49(ptr noundef %1, ptr noundef %pending_hashes, i64 noundef %dst_block_num.1254, i32 noundef %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.then141

if.then141:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.20, i32 noundef %call139, i64 noundef %dst_block_num.1254) #14
  br label %cleanup155

if.end142:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i64 %dst_block_num.1254, 1
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end125.if.end143_crit_edge
  %dst_block_num.2 = phi i64 [ %inc, %if.end142 ], [ %dst_block_num.1254, %if.end125.if.end143_crit_edge ]
  %pending_size.1 = phi i32 [ 0, %if.end142 ], [ %add120, %if.end125.if.end143_crit_edge ]
  %52 = call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stack.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and1.i.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end143.for.inc_crit_edge, label %fatal_signal_pending.exit

if.end143.for.inc_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

fatal_signal_pending.exit:                        ; preds = %if.end143
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 116, i32 1
  %60 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %signal.i.i, align 4
  %62 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool146.not = icmp eq i32 %62, 0
  br i1 %tobool146.not, label %fatal_signal_pending.exit.for.inc_crit_edge, label %fatal_signal_pending.exit.cleanup155_crit_edge

fatal_signal_pending.exit.cleanup155_crit_edge:   ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

fatal_signal_pending.exit.for.inc_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %fatal_signal_pending.exit.for.inc_crit_edge, %if.end143.for.inc_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 138, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  %cmp59 = icmp ult i64 %add, %num_blocks_to_hash
  br i1 %cmp59, label %for.inc.for.body_crit_edge, label %for.inc.cleanup155_crit_edge

for.inc.cleanup155_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup155:                                       ; preds = %for.inc.cleanup155_crit_edge, %fatal_signal_pending.exit.cleanup155_crit_edge, %if.then141, %if.end119.cleanup155_crit_edge, %put_page.exit.cleanup155_crit_edge, %cleanup.thread, %if.then90, %if.end58.cleanup155_crit_edge, %do.end41, %do.end
  %retval.4 = phi i32 [ -22, %do.end ], [ -22, %do.end41 ], [ %29, %cleanup.thread ], [ %17, %if.then90 ], [ %call139, %if.then141 ], [ 0, %if.end58.cleanup155_crit_edge ], [ 0, %for.inc.cleanup155_crit_edge ], [ %call116, %put_page.exit.cleanup155_crit_edge ], [ 0, %if.end119.cleanup155_crit_edge ], [ -4, %fatal_signal_pending.exit.cleanup155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ra) #9
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_free_hash_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @file_ra_state_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @read_file_data_page(ptr noundef %filp, i32 noundef %index, ptr noundef %ra, i32 noundef %remaining_pages) unnamed_addr #0 align 64 {
entry:
  %ractl.i43 = alloca %struct.readahead_control, align 4
  %ractl.i = alloca %struct.readahead_control, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %index, i32 noundef 1, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.21) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !75
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.then4.critedge, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  br label %if.end11

if.then4.critedge:                                ; preds = %folio_flags.exit.i.i
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %2, align 4
  %and.i.i35 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35)
  %tobool.not.i.i36 = icmp eq i32 %and.i.i35, 0
  br i1 %tobool.not.i.i36, label %if.end.i.i39, label %if.then.i.i38, !prof !59

if.then.i.i38:                                    ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i37 = add i32 %14, -1
  br label %_compound_head.exit.i41

if.end.i.i39:                                     ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i41

_compound_head.exit.i41:                          ; preds = %if.end.i.i39, %if.then.i.i38
  %retval.0.i.i40 = phi i32 [ %sub.i.i37, %if.then.i.i38 ], [ %15, %if.end.i.i39 ]
  %16 = inttoptr i32 %retval.0.i.i40 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.24) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i41
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_file_data_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !69

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %16, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %16) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_mapping, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl.i) #9
  %22 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 3
  %25 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 4
  %26 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 5
  %27 = ptrtoint ptr %ractl.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %filp, ptr %ractl.i, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %22, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ra, ptr %23, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %index, ptr %24, align 4
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %25, align 4
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %26, align 4
  call void @page_cache_sync_ra(ptr noundef nonnull %ractl.i, i32 noundef %remaining_pages) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge
  %33 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_mapping, align 4
  %call.i42 = call ptr @read_cache_page(ptr noundef %34, i32 noundef %index, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %PageUptodate.exit
  %page.0 = phi ptr [ %call.i, %PageUptodate.exit ], [ %call.i42, %if.end.if.end11_crit_edge ]
  %35 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageReadahead.exit, !prof !64

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.23) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 468, 0\0A.popsection", ""() #9, !srcloc !77
  unreachable

PageReadahead.exit:                               ; preds = %if.end11
  %37 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page.0, align 4
  %39 = and i32 %38, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool13.not = icmp eq i32 %39, 0
  br i1 %tobool13.not, label %PageReadahead.exit.cleanup_crit_edge, label %if.then14

PageReadahead.exit.cleanup_crit_edge:             ; preds = %PageReadahead.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %PageReadahead.exit
  %40 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %f_mapping, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl.i43) #9
  %42 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i43, i32 0, i32 1
  %43 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i43, i32 0, i32 2
  %44 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i43, i32 0, i32 4
  %46 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i43, i32 0, i32 5
  %47 = ptrtoint ptr %ractl.i43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %filp, ptr %ractl.i43, align 4
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %41, ptr %42, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ra, ptr %43, align 4
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %index, ptr %44, align 4
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %45, align 4
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %46, align 4
  %53 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i44 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.not.i.i45 = icmp eq i32 %and.i.i44, 0
  br i1 %tobool.not.i.i45, label %if.end.i.i48, label %if.then.i.i47, !prof !59

if.then.i.i47:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i46 = add i32 %55, -1
  br label %page_cache_async_readahead.exit

if.end.i.i48:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %page.0 to i32
  br label %page_cache_async_readahead.exit

page_cache_async_readahead.exit:                  ; preds = %if.end.i.i48, %if.then.i.i47
  %retval.0.i.i49 = phi i32 [ %sub.i.i46, %if.then.i.i47 ], [ %56, %if.end.i.i48 ]
  %57 = inttoptr i32 %retval.0.i.i49 to ptr
  call void @page_cache_async_ra(ptr noundef nonnull %ractl.i43, ptr noundef %57, i32 noundef %remaining_pages) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl.i43) #9
  br label %cleanup

cleanup:                                          ; preds = %page_cache_async_readahead.exit, %PageReadahead.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i42, %if.end.cleanup_crit_edge ], [ %page.0, %page_cache_async_readahead.exit ], [ %page.0, %PageReadahead.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_hash_page(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_async_ra(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_fsverity_ioctl_enable, !1, !"__ksymtab_fsverity_ioctl_enable", i1 false, i1 false}
!1 = !{!"../fs/verity/enable.c", i32 418, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/verity/enable.c", i32 267, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @enable_verity.__UNIQUE_ID_ddebug277, !10, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!15 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/verity/enable.c", i32 271, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/verity/enable.c", i32 274, i32 2}
!21 = !{ptr @enable_verity.__UNIQUE_ID_ddebug279, !20, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/verity/enable.c", i32 291, i32 3}
!25 = !{ptr @enable_verity.__UNIQUE_ID_ddebug280, !24, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!26 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/verity/enable.c", i32 302, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/verity/enable.c", i32 75, i32 4}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @build_merkle_tree_level.__UNIQUE_ID_ddebug274, !30, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!33 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/verity/enable.c", i32 84, i32 5}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/verity/enable.c", i32 100, i32 5}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/verity/enable.c", i32 127, i32 5}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 468, i32 1}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/mm.h", i32 717, i32 2}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2152191471, i64 2152191496}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 4687026}
!61 = !{i64 4687223}
!62 = !{i64 2152172456}
!63 = !{i64 2152430550}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2148780839}
!66 = !{i64 1164505, i64 1164529, i64 1164550, i64 1164567, i64 1164584}
!67 = !{i64 2148781065}
!68 = !{i32 0, i32 33}
!69 = !{i64 2148503590, i64 2148503595, i64 2148503608, i64 2148503652, i64 2148503686, i64 2148503707}
!70 = !{i64 2148678992, i64 2148679018, i64 2148679047, i64 2148679081, i64 2148679112, i64 2148679135}
!71 = !{i64 2153778433, i64 2153778916, i64 2153778470, i64 2153778526, i64 2153778560, i64 2153778584, i64 2153778625, i64 2153778646, i64 2153778674, i64 2153778708}
!72 = !{i64 2148767468}
!73 = !{i64 2148682177, i64 2148682209, i64 2148682238, i64 2148682272, i64 2148682303, i64 2148682326}
!74 = !{i64 2148767697}
!75 = !{i64 2150587737, i64 2150588228, i64 2150587774, i64 2150587830, i64 2150587864, i64 2150587888, i64 2150587929, i64 2150587950, i64 2150587978, i64 2150588012}
!76 = !{i64 2151337629}
!77 = !{i64 2151189953, i64 2151190444, i64 2151189990, i64 2151190046, i64 2151190080, i64 2151190104, i64 2151190145, i64 2151190166, i64 2151190194, i64 2151190228}
