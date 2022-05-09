; ModuleID = '/llk/IR_all_yes/fs/verity/read_metadata.c_pt.bc'
source_filename = "../fs/verity/read_metadata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsverity_ioctl_read_metadata\22, \22a\22\09"
module asm "\09.weak\09__crc_fsverity_ioctl_read_metadata\09\09\09\09"
module asm "\09.long\09__crc_fsverity_ioctl_read_metadata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsverity_ioctl_read_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22fsverity_ioctl_read_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_fsverity_ioctl_read_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.fsverity_read_metadata_arg = type { i64, i64, i64, i64, i64 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.merkle_tree_params = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, [8 x i64] }
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
%struct.fsverity_descriptor = type { i8, i8, i8, i8, i32, i64, [64 x i8], [32 x i8], [144 x i8], [0 x i8] }

@__kstrtab_fsverity_ioctl_read_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsverity_ioctl_read_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_fsverity_ioctl_read_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsverity_ioctl_read_metadata to i32), ptr @__kstrtab_fsverity_ioctl_read_metadata, ptr @__kstrtabns_fsverity_ioctl_read_metadata }, section "___ksymtab_gpl+fsverity_ioctl_read_metadata", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error %d reading Merkle tree page %lu\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/verity/read_metadata.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 64, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 230, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 214, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 156, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 50, i32 4 }
@___asan_gen_.27 = private constant [29 x i8] c"../fs/verity/read_metadata.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 74, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 44, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 717, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_fsverity_ioctl_read_metadata, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_ioctl_read_metadata(ptr nocapture noundef readonly %filp, ptr noundef %uarg) #0 align 64 {
entry:
  %arg = alloca %struct.fsverity_read_metadata_arg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %arg) #7
  %2 = getelementptr inbounds %struct.fsverity_read_metadata_arg, ptr %arg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fsverity_read_metadata_arg, ptr %arg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fsverity_read_metadata_arg, ptr %arg, i32 0, i32 3
  %5 = getelementptr inbounds %struct.fsverity_read_metadata_arg, ptr %arg, i32 0, i32 4
  %i_verity_info.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 53
  %6 = call ptr @memset(ptr %arg, i32 255, i32 40)
  %7 = ptrtoint ptr %i_verity_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %i_verity_info.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uarg, i32 40, i32 -1226833920) #10, !srcloc !29
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !30

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg, i32 noundef 40) #7
  %10 = call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !31
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg, ptr noundef %uarg, i32 noundef 40) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !30

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %if.then.i.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %arg, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool6.not = icmp eq i64 %15, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %2, align 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %3, align 8
  %20 = xor i64 %17, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %20)
  %cmp = icmp ugt i64 %19, %20
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %21 = call i64 @llvm.umin.i64(i64 %19, i64 2147483647)
  %22 = trunc i64 %21 to i32
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %4, align 8
  %conv19 = trunc i64 %24 to i32
  %25 = inttoptr i32 %conv19 to ptr
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arg, align 8
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i64 %27, label %if.end12.cleanup_crit_edge [
    i64 1, label %sw.bb
    i64 2, label %sw.bb22
    i64 3, label %sw.bb25
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call fastcc i32 @fsverity_read_merkle_tree(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %25, i64 noundef %17, i32 noundef %22)
  br label %cleanup

sw.bb22:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call fastcc i32 @fsverity_read_descriptor(ptr noundef %1, ptr noundef %25, i64 noundef %17, i32 noundef %22)
  br label %cleanup

sw.bb25:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call fastcc i32 @fsverity_read_signature(ptr noundef %1, ptr noundef %25, i64 noundef %17, i32 noundef %22)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25, %sw.bb22, %sw.bb, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %sw.bb25 ], [ %call24, %sw.bb22 ], [ %call21, %sw.bb ], [ -61, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %arg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsverity_read_merkle_tree(ptr noundef %inode, ptr nocapture noundef readonly %vi, ptr noundef %buf, i64 noundef %offset, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_vop = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %s_vop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_vop, align 4
  %4 = zext i32 %length to i64
  %add = add i64 %4, %offset
  %tree_size = getelementptr inbounds %struct.merkle_tree_params, ptr %vi, i32 0, i32 8
  %5 = ptrtoint ptr %tree_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tree_size, align 8
  %7 = tail call i64 @llvm.umin.i64(i64 %add, i64 %6)
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp3.not = icmp ugt i64 %7, %offset
  br i1 %cmp3.not, label %if.end, label %entry.cleanup59_crit_edge

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.end:                                           ; preds = %entry
  %sub = add i64 %7, 17592186044415
  %shr = lshr i64 %sub, 12
  %conv6 = trunc i64 %shr to i32
  %shr7 = lshr i64 %offset, 12
  %conv8 = trunc i64 %shr7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %conv6)
  %cmp9.not166 = icmp ugt i32 %conv8, %conv6
  br i1 %cmp9.not166, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  %conv5 = trunc i64 %offset to i32
  %and = and i32 %conv5, 4095
  %sub11 = add i32 %conv6, 1
  %read_merkle_tree_page = getelementptr inbounds %struct.fsverity_operations, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %buf.addr.0171 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr41, %for.inc.for.body_crit_edge ]
  %offset.addr.0170 = phi i64 [ %offset, %for.body.lr.ph ], [ %add43, %for.inc.for.body_crit_edge ]
  %retval1.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %add40, %for.inc.for.body_crit_edge ]
  %index.0168 = phi i32 [ %conv8, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %offs_in_page.0167 = phi i32 [ %and, %for.body.lr.ph ], [ 0, %for.inc.for.body_crit_edge ]
  %add12 = sub i32 %sub11, %index.0168
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdi, align 8
  %io_pages = getelementptr inbounds %struct.backing_dev_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %io_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_pages, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %add12, i32 %13)
  %sub21 = sub i64 %7, %offset.addr.0170
  %sub22 = sub nuw nsw i32 4096, %offs_in_page.0167
  %conv23 = zext i32 %sub22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub21, i64 %conv23)
  %cmp25 = icmp ult i64 %sub21, %conv23
  %extract.t = trunc i64 %sub21 to i32
  %cond30.off0 = select i1 %cmp25, i32 %extract.t, i32 %sub22
  %15 = ptrtoint ptr %read_merkle_tree_page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_merkle_tree_page, align 4
  %call = tail call ptr %16(ptr noundef %inode, i32 noundef %index.0168, i32 noundef %14) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %index.0168) #11
  br label %for.end

if.end35:                                         ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #7
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call, align 4
  %shr.i.i = lshr i32 %19, 30
  %20 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i.i, label %if.end35.if.then.i103_crit_edge [
    i32 2, label %if.end35.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end35.if.else.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end35.if.then.i103_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i103

is_highmem_idx.exit.i:                            ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %21 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp2.i.not.i = icmp eq i32 %21, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i103_crit_edge

is_highmem_idx.exit.i.if.then.i103_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i103

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i103:                                     ; preds = %is_highmem_idx.exit.i.if.then.i103_crit_edge, %if.end35.if.then.i103_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call) #7
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end35.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call) #7
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i103
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i103 ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %offs_in_page.0167
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %cond30.off0, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %kmap.exit.copy_to_user.exit_crit_edge, label %if.end.i.i

kmap.exit.copy_to_user.exit_crit_edge:            ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %kmap.exit
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0171, i32 %cond30.off0, i32 -1226833920) #10, !srcloc !34
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %cond30.off0) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0171, ptr noundef %add.ptr, i32 noundef %cond30.off0) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %kmap.exit.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %cond30.off0, %kmap.exit.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %cond30.off0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 55) #7
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call, align 4
  %shr.i.i109 = lshr i32 %24, 30
  br i1 %tobool.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %copy_to_user.exit
  %25 = zext i32 %shr.i.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i.i109, label %if.then38.kunmap.exit_crit_edge [
    i32 2, label %if.then38.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i106
  ]

if.then38.if.end.i_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then38.kunmap.exit_crit_edge:                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i106:                         ; preds = %if.then38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %26 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp2.i.not.i105 = icmp eq i32 %26, 2
  br i1 %cmp2.i.not.i105, label %is_highmem_idx.exit.i106.if.end.i_crit_edge, label %is_highmem_idx.exit.i106.kunmap.exit_crit_edge

is_highmem_idx.exit.i106.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i106.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i106.if.end.i_crit_edge, %if.then38.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %call) #7
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i106.kunmap.exit_crit_edge, %if.then38.kunmap.exit_crit_edge
  %27 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i108, label %if.then.i.i107, !prof !30

if.then.i.i107:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i108:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i108, %if.then.i.i107
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i107 ], [ %30, %if.end.i.i108 ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !35

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fsverity_read_merkle_tree, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !40

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.end_crit_edge

folio_put_testzero.exit.i.i.for.end_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %31) #7
  br label %for.end

if.end39:                                         ; preds = %copy_to_user.exit
  %35 = zext i32 %shr.i.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i109, label %if.end39.kunmap.exit113_crit_edge [
    i32 2, label %if.end39.if.end.i112_crit_edge
    i32 3, label %is_highmem_idx.exit.i111
  ]

if.end39.if.end.i112_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i112

if.end39.kunmap.exit113_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit113

is_highmem_idx.exit.i111:                         ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %36 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp2.i.not.i110 = icmp eq i32 %36, 2
  br i1 %cmp2.i.not.i110, label %is_highmem_idx.exit.i111.if.end.i112_crit_edge, label %is_highmem_idx.exit.i111.kunmap.exit113_crit_edge

is_highmem_idx.exit.i111.kunmap.exit113_crit_edge: ; preds = %is_highmem_idx.exit.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit113

is_highmem_idx.exit.i111.if.end.i112_crit_edge:   ; preds = %is_highmem_idx.exit.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i112

if.end.i112:                                      ; preds = %is_highmem_idx.exit.i111.if.end.i112_crit_edge, %if.end39.if.end.i112_crit_edge
  tail call void @kunmap_high(ptr noundef %call) #7
  br label %kunmap.exit113

kunmap.exit113:                                   ; preds = %if.end.i112, %is_highmem_idx.exit.i111.kunmap.exit113_crit_edge, %if.end39.kunmap.exit113_crit_edge
  %37 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i114 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i.i115, label %if.end.i.i118, label %if.then.i.i117, !prof !30

if.then.i.i117:                                   ; preds = %kunmap.exit113
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i116 = add i32 %39, -1
  br label %_compound_head.exit.i123

if.end.i.i118:                                    ; preds = %kunmap.exit113
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i123

_compound_head.exit.i123:                         ; preds = %if.end.i.i118, %if.then.i.i117
  %retval.0.i.i119 = phi i32 [ %sub.i.i116, %if.then.i.i117 ], [ %40, %if.end.i.i118 ]
  %41 = inttoptr i32 %retval.0.i.i119 to ptr
  %_refcount.i.i.i.i.i120 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 3
  %call.i.i.i.i.i.i.i121 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i120, i32 noundef 4) #7
  %42 = ptrtoint ptr %_refcount.i.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i.i122 = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i.i122, label %if.then.i.i.i.i124, label %do.end5.i.i.i.i128, !prof !35

if.then.i.i.i.i124:                               ; preds = %_compound_head.exit.i123
  call void @__sanitizer_cov_trace_pc() #9
  %44 = inttoptr i32 %retval.0.i.i119 to ptr
  tail call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.end5.i.i.i.i128:                               ; preds = %_compound_head.exit.i123
  %call.i.i.i10.i.i.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i120, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i120, i32 1, i32 3, i32 1) #7
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i120, ptr %_refcount.i.i.i.i.i120, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i120) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i.i.i126 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i126)
  %cmp.i.i.i.i.i.i.i127 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i126, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fsverity_read_merkle_tree, %if.then.i.i.i.i.i130)) #7
          to label %folio_put_testzero.exit.i.i131 [label %if.then.i.i.i.i.i130], !srcloc !40

if.then.i.i.i.i.i130:                             ; preds = %do.end5.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i129 = zext i1 %cmp.i.i.i.i.i.i.i127 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %41, i32 noundef -1, i32 noundef %conv.i.i.i.i.i129) #7
  br label %folio_put_testzero.exit.i.i131

folio_put_testzero.exit.i.i131:                   ; preds = %if.then.i.i.i.i.i130, %do.end5.i.i.i.i128
  br i1 %cmp.i.i.i.i.i.i.i127, label %if.then.i4.i132, label %folio_put_testzero.exit.i.i131.put_page.exit133_crit_edge

folio_put_testzero.exit.i.i131.put_page.exit133_crit_edge: ; preds = %folio_put_testzero.exit.i.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit133

if.then.i4.i132:                                  ; preds = %folio_put_testzero.exit.i.i131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %41) #7
  br label %put_page.exit133

put_page.exit133:                                 ; preds = %if.then.i4.i132, %folio_put_testzero.exit.i.i131.put_page.exit133_crit_edge
  %add40 = add i32 %cond30.off0, %retval1.0169
  %add.ptr41 = getelementptr i8, ptr %buf.addr.0171, i32 %cond30.off0
  %conv42 = zext i32 %cond30.off0 to i64
  %add43 = add i64 %offset.addr.0170, %conv42
  %46 = tail call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stack.i.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and1.i.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %put_page.exit133.for.inc_crit_edge, label %fatal_signal_pending.exit

put_page.exit133.for.inc_crit_edge:               ; preds = %put_page.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

fatal_signal_pending.exit:                        ; preds = %put_page.exit133
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 116, i32 1
  %54 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %signal.i.i, align 4
  %56 = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool46.not = icmp eq i32 %56, 0
  br i1 %tobool46.not, label %fatal_signal_pending.exit.for.inc_crit_edge, label %fatal_signal_pending.exit.for.end_crit_edge

fatal_signal_pending.exit.for.end_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

fatal_signal_pending.exit.for.inc_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %fatal_signal_pending.exit.for.inc_crit_edge, %put_page.exit133.for.inc_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 74, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %inc = add i32 %index.0168, 1
  %cmp9.not = icmp ugt i32 %inc, %conv6
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %fatal_signal_pending.exit.for.end_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.for.end_crit_edge, %if.then33
  %retval1.2 = phi i32 [ %retval1.0169, %if.then.i4.i ], [ %retval1.0169, %folio_put_testzero.exit.i.i.for.end_crit_edge ], [ %retval1.0169, %if.then33 ], [ %add40, %fatal_signal_pending.exit.for.end_crit_edge ], [ %add40, %for.inc.for.end_crit_edge ]
  %err.2 = phi i32 [ -14, %if.then.i4.i ], [ -14, %folio_put_testzero.exit.i.i.for.end_crit_edge ], [ %17, %if.then33 ], [ 0, %for.inc.for.end_crit_edge ], [ -4, %fatal_signal_pending.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.2)
  %tobool54.not = icmp eq i32 %retval1.2, 0
  br i1 %tobool54.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup59_crit_edge

for.end.cleanup59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  %err.2204 = phi i32 [ %err.2, %for.end.for.end.thread_crit_edge ], [ 0, %if.end.for.end.thread_crit_edge ]
  br label %cleanup59

cleanup59:                                        ; preds = %for.end.thread, %for.end.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup59_crit_edge ], [ %err.2204, %for.end.thread ], [ %retval1.2, %for.end.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsverity_read_descriptor(ptr noundef %inode, ptr noundef %buf, i64 noundef %offset, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %desc = alloca ptr, align 4
  %desc_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #7
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_size) #7
  %1 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %desc_size, align 4, !annotation !41
  %call = call i32 @fsverity_get_descriptor(ptr noundef %inode, ptr noundef nonnull %desc, ptr noundef nonnull %desc_size) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %desc_size, align 4
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %sig_size = getelementptr inbounds %struct.fsverity_descriptor, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sig_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sig_size, align 4
  %call1 = call fastcc i32 @fsverity_read_buffer(ptr noundef %buf, i64 noundef %offset, i32 noundef %length, ptr noundef %4, i32 noundef 256)
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  call void @kfree(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsverity_read_signature(ptr noundef %inode, ptr noundef %buf, i64 noundef %offset, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %desc = alloca ptr, align 4
  %desc_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #7
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_size) #7
  %1 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %desc_size, align 4, !annotation !41
  %call = call i32 @fsverity_get_descriptor(ptr noundef %inode, ptr noundef nonnull %desc, ptr noundef nonnull %desc_size) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %sig_size = getelementptr inbounds %struct.fsverity_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sig_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %signature = getelementptr inbounds %struct.fsverity_descriptor, ptr %3, i32 0, i32 9
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %call4 = call fastcc i32 @fsverity_read_buffer(ptr noundef %buf, i64 noundef %offset, i32 noundef %length, ptr noundef %signature, i32 noundef %6)
  br label %out

out:                                              ; preds = %if.end2, %if.end.out_crit_edge
  %res.0 = phi i32 [ %call4, %if.end2 ], [ -61, %if.end.out_crit_edge ]
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc, align 4
  call void @kfree(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #7
  ret i32 %retval.0
}

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
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fsverity_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_get_descriptor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsverity_read_buffer(ptr noundef %dst, i64 noundef %offset, i32 noundef %length, ptr noundef %src, i32 noundef %src_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %src_length to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp.not = icmp ugt i64 %conv, %offset
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %idx.ext = trunc i64 %offset to i32
  %add.ptr = getelementptr i8, ptr %src, i32 %idx.ext
  %conv3 = sub i32 %src_length, %idx.ext
  %0 = tail call i32 @llvm.umin.i32(i32 %conv3, i32 %length)
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %0, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end.copy_to_user.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst, i32 %0, i32 -1226833920) #10, !srcloc !34
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %0) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dst, ptr noundef %add.ptr, i32 noundef %0) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %0, %if.end.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %0, i32 -14
  br label %return

return:                                           ; preds = %copy_to_user.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_fsverity_ioctl_read_metadata, !1, !"__ksymtab_fsverity_ioctl_read_metadata", i1 false, i1 false}
!1 = !{!"../fs/verity/read_metadata.c", i32 195, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/verity/read_metadata.c", i32 50, i32 4}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/verity/read_metadata.c", i32 74, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/mm.h", i32 717, i32 2}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2152567824}
!29 = !{i64 2152184541, i64 2152184566}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 4680096}
!32 = !{i64 4680293}
!33 = !{i64 2152165526}
!34 = !{i64 2152185222, i64 2152185247}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2153650765, i64 2153651248, i64 2153650802, i64 2153650858, i64 2153650892, i64 2153650916, i64 2153650957, i64 2153650978, i64 2153651006, i64 2153651040}
!37 = !{i64 2148760538}
!38 = !{i64 2148675247, i64 2148675279, i64 2148675308, i64 2148675342, i64 2148675373, i64 2148675396}
!39 = !{i64 2148760767}
!40 = !{i64 2148496660, i64 2148496665, i64 2148496678, i64 2148496722, i64 2148496756, i64 2148496777}
!41 = !{!"auto-init"}
