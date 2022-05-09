; ModuleID = '/llk/IR_all_yes/fs/iomap/direct-io.c_pt.bc'
source_filename = "../fs/iomap/direct-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iomap_dio_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_dio_complete\09\09\09\09"
module asm "\09.long\09__crc_iomap_dio_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_dio_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_dio_complete\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_dio_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__iomap_dio_rw\22, \22a\22\09"
module asm "\09.weak\09__crc___iomap_dio_rw\09\09\09\09"
module asm "\09.long\09__crc___iomap_dio_rw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22__iomap_dio_rw\22\09\09\09\09\09"
module asm "__kstrtabns___iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_dio_rw\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_dio_rw\09\09\09\09"
module asm "\09.long\09__crc_iomap_dio_rw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_dio_rw\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.iomap_dio = type { ptr, ptr, i64, i64, %struct.atomic_t, i32, i32, i32, i8, %union.anon.82 }
%union.anon.82 = type { %struct.anon.84 }
%struct.anon.84 = type { %struct.work_struct }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.64, %union.anon.65 }
%union.anon.64 = type { ptr }
%union.anon.65 = type { i64 }
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iomap_dio_ops = type { ptr, ptr }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__kstrtab_iomap_dio_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_dio_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_dio_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_dio_complete to i32), ptr @__kstrtab_iomap_dio_complete, ptr @__kstrtabns_iomap_dio_complete }, section "___ksymtab_gpl+iomap_dio_complete", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/iomap/direct-io.c\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab___iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__kstrtabns___iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__ksymtab___iomap_dio_rw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iomap_dio_rw to i32), ptr @__kstrtab___iomap_dio_rw, ptr @__kstrtabns___iomap_dio_rw }, section "___ksymtab_gpl+__iomap_dio_rw", align 4
@__kstrtab_iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_dio_rw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_dio_rw to i32), ptr @__kstrtab_iomap_dio_rw, ptr @__kstrtabns_iomap_dio_rw }, section "___ksymtab_gpl+iomap_dio_rw", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_iomap_dio_invalidate_fail = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/iomap/trace.h\00", [47 x i8] zeroinitializer }, align 32
@trace_iomap_dio_invalidate_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@iomap_dio_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_dio_iter._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.iomap_dio_iter = private unnamed_addr constant [15 x i8] c"iomap_dio_iter\00", align 1
@iomap_dio_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.iomap_dio_iter, ptr @.str, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014Direct I/O collision with buffered writes! File: %pD4 Comm: %.20s\0A\00", [59 x i8] zeroinitializer }, align 32
@iomap_dio_iter._entry_ptr = internal global ptr @iomap_dio_iter._entry, section ".printk_index", align 4
@iomap_dio_iter.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@iomap_dio_bio_opflags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@iomap_dio_bio_end_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&dio->aio.work)\00", [62 x i8] zeroinitializer }, align 32
@iomap_dio_inline_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 652, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"../fs/iomap/trace.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 85, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 108, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 444, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 1160, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private constant [24 x i8] c"../fs/iomap/direct-io.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 163, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 230, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 214, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 271, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab___iomap_dio_rw, ptr @__ksymtab_iomap_dio_complete, ptr @__ksymtab_iomap_dio_rw, ptr @iomap_dio_iter._entry, ptr @iomap_dio_iter._entry_ptr, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @iomap_dio_iter._rs, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @iomap_dio_bio_end_io.__key, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_dio_iter._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_dio_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_dio_bio_end_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_dio_complete(ptr noundef %dio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dops1 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 1
  %0 = ptrtoint ptr %dops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dops1, align 4
  %2 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dio, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %error = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 6
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 3
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  %conv = trunc i64 %15 to i32
  %flags = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %call5 = tail call i32 %13(ptr noundef %3, i32 noundef %conv, i32 noundef %11, i32 noundef %17) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ %11, %land.lhs.true.if.end_crit_edge ], [ %11, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.then10, label %if.end.if.end25_crit_edge, !prof !60

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then10:                                        ; preds = %if.end
  %size11 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 3
  %18 = ptrtoint ptr %size11 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size11, align 8
  %conv12 = trunc i64 %19 to i32
  %conv13 = sext i32 %conv12 to i64
  %add = add i64 %9, %conv13
  %i_size = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 2
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %21)
  %cmp = icmp sgt i64 %add, %21
  br i1 %cmp, label %land.lhs.true15, label %if.then10.if.end21_crit_edge

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true15:                                  ; preds = %if.then10
  %flags16 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %22 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags16, align 4
  %and = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true15.if.end21_crit_edge

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i64 %21, %9
  %conv20 = trunc i64 %sub to i32
  %.pre = sext i32 %conv20 to i64
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true15.if.end21_crit_edge, %if.then10.if.end21_crit_edge
  %conv22.pre-phi = phi i64 [ %.pre, %if.then18 ], [ %conv13, %land.lhs.true15.if.end21_crit_edge ], [ %conv13, %if.then10.if.end21_crit_edge ]
  %ret.1 = phi i32 [ %conv20, %if.then18 ], [ %conv12, %land.lhs.true15.if.end21_crit_edge ], [ %conv12, %if.then10.if.end21_crit_edge ]
  %24 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ki_pos, align 8
  %add24 = add i64 %25, %conv22.pre-phi
  store i64 %add24, ptr %ki_pos, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.end.if.end25_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end21 ], [ %ret.0, %if.end.if.end25_crit_edge ]
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end25.if.end50_crit_edge

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true28:                                  ; preds = %if.end25
  %size29 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 3
  %28 = ptrtoint ptr %size29 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size29, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool30.not = icmp eq i64 %29, 0
  br i1 %tobool30.not, label %land.lhs.true28.if.end50_crit_edge, label %land.lhs.true31

land.lhs.true28.if.end50_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %flags32 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %30 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags32, align 4
  %and33 = and i32 %31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true31.if.end50_crit_edge, label %land.lhs.true35

land.lhs.true31.if.end50_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %32 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool36.not = icmp eq i32 %35, 0
  br i1 %tobool36.not, label %land.lhs.true35.if.end50_crit_edge, label %if.then37

land.lhs.true35.if.end50_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then37:                                        ; preds = %land.lhs.true35
  %36 = lshr i64 %9, 12
  %conv39 = trunc i64 %36 to i32
  %add41 = add i64 %9, 17592186044415
  %sub42 = add i64 %add41, %29
  %37 = lshr i64 %sub42, 12
  %conv44 = trunc i64 %37 to i32
  %call45 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %33, i32 noundef %conv39, i32 noundef %conv44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then37.if.end50_crit_edge, label %if.then47

if.then37.if.end50_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then47:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  tail call void @dio_warn_stale_pagecache(ptr noundef %39) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then37.if.end50_crit_edge, %land.lhs.true35.if.end50_crit_edge, %land.lhs.true31.if.end50_crit_edge, %land.lhs.true28.if.end50_crit_edge, %if.end25.if.end50_crit_edge
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 8
  %f_inode.i105 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %f_inode.i105 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f_inode.i105, align 8
  %i_dio_count.i = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %i_dio_count.i, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i, ptr %i_dio_count.i, i32 1, ptr elementtype(i32) %i_dio_count.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end50.inode_dio_end.exit_crit_edge

if.end50.inode_dio_end.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %inode_dio_end.exit

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %i_state.i = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 24
  tail call void @wake_up_bit(ptr noundef %i_state.i, i32 noundef 9) #10
  br label %inode_dio_end.exit

inode_dio_end.exit:                               ; preds = %if.then.i, %if.end50.inode_dio_end.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp53 = icmp sgt i32 %ret.2, 0
  br i1 %cmp53, label %land.lhs.true55, label %inode_dio_end.exit.if.end66_crit_edge

inode_dio_end.exit.if.end66_crit_edge:            ; preds = %inode_dio_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

land.lhs.true55:                                  ; preds = %inode_dio_end.exit
  %flags56 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %45 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags56, align 4
  %and57 = and i32 %46, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true55.if.then64_crit_edge, label %if.then59

land.lhs.true55.if.then64_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then59:                                        ; preds = %land.lhs.true55
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then59.if.then64_crit_edge, label %if.then.i106

if.then59.if.then64_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then.i106:                                     ; preds = %if.then59
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 8
  %51 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ki_pos, align 8
  %conv.i113 = zext i32 %ret.2 to i64
  %sub.i = sub i64 %52, %conv.i113
  %sub2.i = add i64 %52, -1
  %and4.i = lshr i32 %48, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %53 = xor i32 %and4.lobit.i, 1
  %call.i = tail call i32 @vfs_fsync_range(ptr noundef %50, i64 noundef %sub.i, i64 noundef %sub2.i, i32 noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i106.if.then64_crit_edge, label %if.end61

if.then.i106.if.then64_crit_edge:                 ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.end61:                                         ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp62 = icmp sgt i32 %call.i, 0
  br i1 %cmp62, label %if.end61.if.then64_crit_edge, label %if.end61.if.end66_crit_edge

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.end61.if.then64_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %if.end61.if.then64_crit_edge, %if.then.i106.if.then64_crit_edge, %if.then59.if.then64_crit_edge, %land.lhs.true55.if.then64_crit_edge
  %ret.3109 = phi i32 [ %call.i, %if.end61.if.then64_crit_edge ], [ %ret.2, %land.lhs.true55.if.then64_crit_edge ], [ %ret.2, %if.then.i106.if.then64_crit_edge ], [ %ret.2, %if.then59.if.then64_crit_edge ]
  %done_before = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 7
  %54 = ptrtoint ptr %done_before to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %done_before, align 4
  %add65 = add i32 %55, %ret.3109
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end61.if.end66_crit_edge, %inode_dio_end.exit.if.end66_crit_edge
  %ret.4 = phi i32 [ %add65, %if.then64 ], [ %call.i, %if.end61.if.end66_crit_edge ], [ %ret.2, %inode_dio_end.exit.if.end66_crit_edge ]
  tail call void @kfree(ptr noundef %dio) #10
  ret i32 %ret.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dio_warn_stale_pagecache(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__iomap_dio_rw(ptr noundef %iocb, ptr noundef %iter, ptr noundef %ops, ptr noundef %dops, i32 noundef %dio_flags, i32 noundef %done_before) #0 align 64 {
entry:
  %iomi = alloca %struct.iomap_iter, align 8
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iomi) #10
  %6 = call ptr @memset(ptr %iomi, i32 0, i32 136)
  %7 = ptrtoint ptr %iomi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %iomi, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 1
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pos, align 8
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %len, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %flags, align 8
  %add = add i64 %9, -1
  %sub = add i64 %add, %conv
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %15 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %16, null
  %and = and i32 %dio_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %17 = or i1 %tobool, %cmp.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #10
  %18 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 88) #13
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %iocb, ptr %call7.i, align 8
  %ref = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  %21 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %ref, align 8
  %size = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 3
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %size, align 8
  %call16 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %i_size = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 2
  %23 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call16, ptr %i_size, align 8
  %dops17 = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 1
  %24 = ptrtoint ptr %dops17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dops, ptr %dops17, align 4
  %error = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 6
  %25 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %error, align 8
  %flags18 = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 5
  %26 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags18, align 4
  %done_before19 = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 7
  %27 = ptrtoint ptr %done_before19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %done_before, ptr %done_before19, align 4
  %28 = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 9
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %iter, ptr %28, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %waiter = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %waiter, align 8
  %poll_bio = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %poll_bio to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %poll_bio, align 4
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %36 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data_source.i, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp = icmp eq i8 %37, 0
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end14
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %call16)
  %cmp28.not = icmp slt i64 %39, %call16
  br i1 %cmp28.not, label %if.end31, label %out_free_dio.thread466

out_free_dio.thread466:                           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end31:                                         ; preds = %if.then25
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %40 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ki_flags, align 8
  %and32 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end40_crit_edge, label %if.then34

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nrpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %if.then34.if.end38_crit_edge, label %if.end.i

if.then34.if.end38_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end.i:                                         ; preds = %if.then34
  %xa_flags.i.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xa_flags.i.i.i, align 4
  %46 = and i32 %45, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %.not.i = icmp eq i32 %46, 0
  br i1 %.not.i, label %if.end.i.if.end38_crit_edge, label %filemap_range_needs_writeback.exit

if.end.i.if.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

filemap_range_needs_writeback.exit:               ; preds = %if.end.i
  %call4.i = tail call zeroext i1 @filemap_range_has_writeback(ptr noundef %3, i64 noundef %39, i64 noundef %sub) #10
  br i1 %call4.i, label %filemap_range_needs_writeback.exit.if.then356_crit_edge, label %filemap_range_needs_writeback.exit.if.end38_crit_edge

filemap_range_needs_writeback.exit.if.end38_crit_edge: ; preds = %filemap_range_needs_writeback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

filemap_range_needs_writeback.exit.if.then356_crit_edge: ; preds = %filemap_range_needs_writeback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then356

if.end38:                                         ; preds = %filemap_range_needs_writeback.exit.if.end38_crit_edge, %if.end.i.if.end38_crit_edge, %if.then34.if.end38_crit_edge
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 8
  %or = or i32 %48, 32
  store i32 %or, ptr %flags, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.end31.if.end40_crit_edge
  %49 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i455 = icmp eq i8 %50, 0
  br i1 %cmp.i455, label %if.end40.if.end76.sink.split_crit_edge, label %if.end40.if.end76_crit_edge

if.end40.if.end76_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end40.if.end76.sink.split_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.sink.split

if.else:                                          ; preds = %if.end14
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %or47 = or i32 %52, 1
  store i32 %or47, ptr %flags, align 8
  %53 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1073741824, ptr %flags18, align 4
  %ki_flags50 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %54 = ptrtoint ptr %ki_flags50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ki_flags50, align 8
  %and51 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else.if.end60_crit_edge, label %if.then53

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then53:                                        ; preds = %if.else
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %pos, align 8
  %call55 = tail call zeroext i1 @filemap_range_has_page(ptr noundef %3, i64 noundef %57, i64 noundef %sub) #10
  br i1 %call55, label %if.then53.if.then356_crit_edge, label %if.end57

if.then53.if.then356_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then356

if.end57:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 8
  %or59 = or i32 %59, 32
  store i32 %or59, ptr %flags, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.end57, %if.else.if.end60_crit_edge
  %60 = ptrtoint ptr %ki_flags50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ki_flags50, align 8
  %and62 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end60.if.end67_crit_edge, label %if.then64

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags18, align 4
  %or66 = or i32 %63, 536870912
  store i32 %or66, ptr %flags18, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end60.if.end67_crit_edge
  %and69 = and i32 %61, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and69)
  %cmp70 = icmp eq i32 %and69, 2
  br i1 %cmp70, label %if.end67.if.end76.sink.split_crit_edge, label %if.end67.if.end76_crit_edge

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end67.if.end76.sink.split_crit_edge:           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.sink.split

if.end76.sink.split:                              ; preds = %if.end67.if.end76.sink.split_crit_edge, %if.end40.if.end76.sink.split_crit_edge
  %.sink474 = phi i32 [ -2147483648, %if.end40.if.end76.sink.split_crit_edge ], [ 268435456, %if.end67.if.end76.sink.split_crit_edge ]
  %64 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags18, align 4
  %or74 = or i32 %65, %.sink474
  store i32 %or74, ptr %flags18, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %if.end67.if.end76_crit_edge, %if.end40.if.end76_crit_edge
  %and77 = and i32 %dio_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end94_crit_edge, label %if.then79

if.end76.if.end94_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then79:                                        ; preds = %if.end76
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %pos, align 8
  %68 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %69)
  %cmp82.not = icmp slt i64 %67, %69
  br i1 %cmp82.not, label %lor.lhs.false, label %if.then79.if.then356_crit_edge

if.then79.if.then356_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then356

lor.lhs.false:                                    ; preds = %if.then79
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %len, align 8
  %add86 = add i64 %71, %67
  call void @__sanitizer_cov_trace_cmp8(i64 %add86, i64 %69)
  %cmp88 = icmp ugt i64 %add86, %69
  br i1 %cmp88, label %lor.lhs.false.if.then356_crit_edge, label %if.end91

lor.lhs.false.if.then356_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then356

if.end91:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 8
  %or93 = or i32 %73, 64
  store i32 %or93, ptr %flags, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.end91, %if.end76.if.end94_crit_edge
  %74 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %pos, align 8
  %call96 = tail call i32 @filemap_write_and_wait_range(ptr noundef %3, i64 noundef %75, i64 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool98.not = icmp eq i32 %call96, 0
  br i1 %tobool98.not, label %if.end100, label %if.end94.if.then356_crit_edge

if.end94.if.then356_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then356

if.end100:                                        ; preds = %if.end94
  %76 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data_source.i, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp103 = icmp eq i8 %77, 1
  br i1 %cmp103, label %if.then105, label %if.end100.if.end127_crit_edge

if.end100.if.end127_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then105:                                       ; preds = %if.end100
  %78 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %pos, align 8
  %80 = lshr i64 %79, 12
  %conv107 = trunc i64 %80 to i32
  %81 = lshr i64 %sub, 12
  %conv109 = trunc i64 %81 to i32
  %call110 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %3, i32 noundef %conv107, i32 noundef %conv109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end115, label %if.then112

if.then112:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %pos, align 8
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %len, align 8
  tail call fastcc void @trace_iomap_dio_invalidate_fail(ptr noundef %5, i64 noundef %83, i64 noundef %85)
  br label %if.then356

if.end115:                                        ; preds = %if.then105
  br i1 %17, label %if.end115.if.end127_crit_edge, label %land.lhs.true

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true:                                    ; preds = %if.end115
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %86 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb, align 4
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 51
  %88 = ptrtoint ptr %s_dio_done_wq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_dio_done_wq, align 32
  %tobool117.not = icmp eq ptr %89, null
  br i1 %tobool117.not, label %if.then118, label %land.lhs.true.if.end127_crit_edge

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then118:                                       ; preds = %land.lhs.true
  %call120 = tail call i32 @sb_init_dio_done_wq(ptr noundef %87) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp122 = icmp slt i32 %call120, 0
  br i1 %cmp122, label %if.then118.if.then356_crit_edge, label %if.then118.if.end127_crit_edge

if.then118.if.end127_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then118.if.then356_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then356

if.end127:                                        ; preds = %if.then118.if.end127_crit_edge, %land.lhs.true.if.end127_crit_edge, %if.end115.if.end127_crit_edge, %if.end100.if.end127_crit_edge
  %i_dio_count.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %i_dio_count.i, i32 1, i32 3, i32 1) #10
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i, ptr %i_dio_count.i, i32 1, ptr elementtype(i32) %i_dio_count.i) #10, !srcloc !65
  call void @blk_start_plug(ptr noundef nonnull %plug) #10
  %call128471 = call i32 @iomap_iter(ptr noundef nonnull %iomi, ptr noundef %ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128471)
  %cmp130472 = icmp sgt i32 %call128471, 0
  br i1 %cmp130472, label %while.body.lr.ph, label %if.end127.while.end_crit_edge

if.end127.while.end_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end127
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 5, i32 3
  %inline_data.i.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 5, i32 7
  %offset.i.i153.i = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 5, i32 1
  %length.i.i154.i = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 5, i32 2
  %type.i.i156.i = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 6, i32 3
  %offset4.i.i158.i = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 6, i32 1
  %length6.i.i159.i = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 6, i32 2
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iomi, i32 0, i32 3
  %ki_flags133 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %iomap_dio_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %91 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %type.i, align 8
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i16 %92, label %land.end70.i [
    i16 0, label %sw.bb.i
    i16 3, label %sw.bb40.i
    i16 2, label %sw.bb48.i
    i16 4, label %sw.bb50.i
    i16 1, label %sw.bb52.i
  ]

sw.bb.i:                                          ; preds = %while.body
  %94 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags18, align 4
  %and.i457 = and i32 %95, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i457)
  %tobool.not.i458 = icmp eq i32 %and.i457, 0
  br i1 %tobool.not.i458, label %if.end39.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %sw.bb.i
  %.b129.i = load i1, ptr @iomap_dio_iter.__already_done, align 1
  br i1 %.b129.i, label %land.rhs.i.iomap_dio_iter.exit_crit_edge, label %if.then.i, !prof !60

land.rhs.i.iomap_dio_iter.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_iter.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iomap_dio_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #10
  br label %iomap_dio_iter.exit

if.end39.i:                                       ; preds = %sw.bb.i
  %96 = ptrtoint ptr %offset.i.i153.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %offset.i.i153.i, align 8
  %98 = ptrtoint ptr %length.i.i154.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %length.i.i154.i, align 8
  %add.i.i.i = add i64 %99, %97
  %100 = ptrtoint ptr %type.i.i156.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %type.i.i156.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp.not.i.i.i = icmp eq i16 %101, 0
  br i1 %cmp.not.i.i.i, label %if.end39.i.iomap_dio_hole_iter.exit.i_crit_edge, label %if.then.i.i.i

if.end39.i.iomap_dio_hole_iter.exit.i_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_hole_iter.exit.i

if.then.i.i.i:                                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %offset4.i.i158.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %offset4.i.i158.i, align 8
  %104 = ptrtoint ptr %length6.i.i159.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %length6.i.i159.i, align 8
  %add7.i.i.i = add i64 %105, %103
  %106 = call i64 @llvm.umin.i64(i64 %add.i.i.i, i64 %add7.i.i.i) #10
  br label %iomap_dio_hole_iter.exit.i

iomap_dio_hole_iter.exit.i:                       ; preds = %if.then.i.i.i, %if.end39.i.iomap_dio_hole_iter.exit.i_crit_edge
  %end.0.i.i.i = phi i64 [ %106, %if.then.i.i.i ], [ %add.i.i.i, %if.end39.i.iomap_dio_hole_iter.exit.i_crit_edge ]
  %107 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %len, align 8
  %109 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %pos, align 8
  %sub.i.i.i = sub i64 %end.0.i.i.i, %110
  %111 = call i64 @llvm.umin.i64(i64 %108, i64 %sub.i.i.i) #10
  %conv.i.i = trunc i64 %111 to i32
  %112 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %28, align 4
  %call2.i.i = call i32 @iov_iter_zero(i32 noundef %conv.i.i, ptr noundef %113) #10
  %conv3.i.i = zext i32 %call2.i.i to i64
  %114 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %size, align 8
  %add.i.i = add i64 %115, %conv3.i.i
  store i64 %add.i.i, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  %.conv3.i.i = select i1 %tobool.not.i.i, i64 -14, i64 %conv3.i.i
  br label %iomap_dio_iter.exit

sw.bb40.i:                                        ; preds = %while.body
  %116 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags18, align 4
  %and42.i = and i32 %117, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.then44.i, label %if.end46.i

if.then44.i:                                      ; preds = %sw.bb40.i
  %118 = ptrtoint ptr %offset.i.i153.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %offset.i.i153.i, align 8
  %120 = ptrtoint ptr %length.i.i154.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %length.i.i154.i, align 8
  %add.i.i134.i = add i64 %121, %119
  %122 = ptrtoint ptr %type.i.i156.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %type.i.i156.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp.not.i.i136.i = icmp eq i16 %123, 0
  br i1 %cmp.not.i.i136.i, label %if.then44.i.iomap_dio_hole_iter.exit152.i_crit_edge, label %if.then.i.i140.i

if.then44.i.iomap_dio_hole_iter.exit152.i_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_hole_iter.exit152.i

if.then.i.i140.i:                                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %offset4.i.i158.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %offset4.i.i158.i, align 8
  %126 = ptrtoint ptr %length6.i.i159.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %length6.i.i159.i, align 8
  %add7.i.i139.i = add i64 %127, %125
  %128 = call i64 @llvm.umin.i64(i64 %add.i.i134.i, i64 %add7.i.i139.i) #10
  br label %iomap_dio_hole_iter.exit152.i

iomap_dio_hole_iter.exit152.i:                    ; preds = %if.then.i.i140.i, %if.then44.i.iomap_dio_hole_iter.exit152.i_crit_edge
  %end.0.i.i141.i = phi i64 [ %128, %if.then.i.i140.i ], [ %add.i.i134.i, %if.then44.i.iomap_dio_hole_iter.exit152.i_crit_edge ]
  %129 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %len, align 8
  %131 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %pos, align 8
  %sub.i.i144.i = sub i64 %end.0.i.i141.i, %132
  %133 = call i64 @llvm.umin.i64(i64 %130, i64 %sub.i.i144.i) #10
  %conv.i145.i = trunc i64 %133 to i32
  %134 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %28, align 4
  %call2.i146.i = call i32 @iov_iter_zero(i32 noundef %conv.i145.i, ptr noundef %135) #10
  %conv3.i147.i = zext i32 %call2.i146.i to i64
  %136 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %size, align 8
  %add.i149.i = add i64 %137, %conv3.i147.i
  store i64 %add.i149.i, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i146.i)
  %tobool.not.i150.i = icmp eq i32 %call2.i146.i, 0
  %.conv3.i151.i = select i1 %tobool.not.i150.i, i64 -14, i64 %conv3.i147.i
  br label %iomap_dio_iter.exit

if.end46.i:                                       ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #12
  %call47.i = call fastcc i64 @iomap_dio_bio_iter(ptr noundef nonnull %iomi, ptr noundef nonnull %call7.i) #10
  br label %iomap_dio_iter.exit

sw.bb48.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call49.i = call fastcc i64 @iomap_dio_bio_iter(ptr noundef nonnull %iomi, ptr noundef nonnull %call7.i) #10
  br label %iomap_dio_iter.exit

sw.bb50.i:                                        ; preds = %while.body
  %138 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %28, align 4
  %140 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %pos, align 8
  %142 = ptrtoint ptr %inline_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %inline_data.i.i.i, align 4
  %idx.ext.i.i.i = trunc i64 %141 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %143, i32 %idx.ext.i.i.i
  %144 = ptrtoint ptr %offset.i.i153.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %offset.i.i153.i, align 8
  %idx.ext1.i.i.i = trunc i64 %145 to i32
  %idx.neg.i.i.i = sub i32 0, %idx.ext1.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %idx.neg.i.i.i
  %146 = ptrtoint ptr %length.i.i154.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %length.i.i154.i, align 8
  %add.i.i155.i = add i64 %147, %145
  %148 = ptrtoint ptr %type.i.i156.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %type.i.i156.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp.not.i.i157.i = icmp eq i16 %149, 0
  br i1 %cmp.not.i.i157.i, label %sw.bb50.i.iomap_length.exit.i.i_crit_edge, label %if.then.i.i161.i

sw.bb50.i.iomap_length.exit.i.i_crit_edge:        ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_length.exit.i.i

if.then.i.i161.i:                                 ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %offset4.i.i158.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %offset4.i.i158.i, align 8
  %152 = ptrtoint ptr %length6.i.i159.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %length6.i.i159.i, align 8
  %add7.i.i160.i = add i64 %153, %151
  %154 = call i64 @llvm.umin.i64(i64 %add.i.i155.i, i64 %add7.i.i160.i) #10
  br label %iomap_length.exit.i.i

iomap_length.exit.i.i:                            ; preds = %if.then.i.i161.i, %sw.bb50.i.iomap_length.exit.i.i_crit_edge
  %end.0.i.i162.i = phi i64 [ %154, %if.then.i.i161.i ], [ %add.i.i155.i, %sw.bb50.i.iomap_length.exit.i.i_crit_edge ]
  %155 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %len, align 8
  %sub.i.i164.i = sub i64 %end.0.i.i162.i, %141
  %157 = call i64 @llvm.umin.i64(i64 %156, i64 %sub.i.i164.i) #10
  %158 = ptrtoint ptr %143 to i32
  %and.i.i.i = and i32 %158, 4095
  %sub.i127.i.i = sub nuw nsw i32 4096, %and.i.i.i
  %conv.i.i.i = zext i32 %sub.i127.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %147, i64 %conv.i.i.i)
  %cmp.i.not.i.i = icmp ugt i64 %147, %conv.i.i.i
  br i1 %cmp.i.not.i.i, label %land.rhs.i.i, label %if.end44.i.i

land.rhs.i.i:                                     ; preds = %iomap_length.exit.i.i
  %.b106.i.i = load i1, ptr @iomap_dio_inline_iter.__already_done, align 1
  br i1 %.b106.i.i, label %land.rhs.i.i.iomap_dio_iter.exit_crit_edge, label %if.then.i.i, !prof !60

land.rhs.i.i.iomap_dio_iter.exit_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_iter.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iomap_dio_inline_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 398, i32 noundef 9, ptr noundef null) #10
  br label %iomap_dio_iter.exit

if.end44.i.i:                                     ; preds = %iomap_length.exit.i.i
  %159 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flags18, align 4
  %and.i.i = and i32 %160, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool45.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool45.not.i.i, label %if.else.i.i, label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.end44.i.i
  %161 = ptrtoint ptr %iomi to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %iomi, align 8
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %162, i32 0, i32 14
  %163 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %i_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %141, i64 %164)
  %cmp.i.i459 = icmp sgt i64 %141, %164
  br i1 %cmp.i.i459, label %if.then47.i.i, label %if.then46.i.i.if.end49.i.i_crit_edge

if.then46.i.i.if.end49.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.then47.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %idx.ext.i129.i.i = trunc i64 %164 to i32
  %add.ptr.i130.i.i = getelementptr i8, ptr %143, i32 %idx.ext.i129.i.i
  %add.ptr2.i134.i.i = getelementptr i8, ptr %add.ptr.i130.i.i, i32 %idx.neg.i.i.i
  %sub.i.i = sub i64 %141, %164
  %conv.i165.i = trunc i64 %sub.i.i to i32
  %165 = call ptr @memset(ptr %add.ptr2.i134.i.i, i32 0, i32 %conv.i165.i)
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then47.i.i, %if.then46.i.i.if.end49.i.i_crit_edge
  %conv50.i.i = trunc i64 %157 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv50.i.i)
  %cmp9.i.i.i.i = icmp slt i32 %conv50.i.i, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end49.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.if.end66.thread.i.i_crit_edge, label %land.rhs16.i.i.i.i.if.end66.thread.i.i.sink.split_crit_edge, !prof !60

land.rhs16.i.i.i.i.if.end66.thread.i.i.sink.split_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.thread.i.i.sink.split

land.rhs16.i.i.i.i.if.end66.thread.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.thread.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end49.i.i
  call void @__check_object_size(ptr noundef %add.ptr2.i.i.i, i32 noundef %conv50.i.i, i1 noundef zeroext false) #10
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %add.ptr2.i.i.i, i32 noundef %conv50.i.i, ptr noundef %139) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool52.not.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool52.not.i.i, label %if.then.i.i.i.i.i.if.end66.thread.i.i_crit_edge, label %if.then53.i.i

if.then.i.i.i.i.i.if.end66.thread.i.i_crit_edge:  ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.thread.i.i

if.then53.i.i:                                    ; preds = %if.then.i.i.i.i.i
  %conv54.i.i = zext i32 %call3.i.i.i to i64
  %add.i166.i = add i64 %141, %conv54.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i166.i, i64 %164)
  %cmp55.i.i = icmp sgt i64 %add.i166.i, %164
  br i1 %cmp55.i.i, label %if.then57.i.i, label %if.then53.i.i.if.end66.thread144.i.i_crit_edge

if.then53.i.i.if.end66.thread144.i.i_crit_edge:   ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.thread144.i.i

if.then57.i.i:                                    ; preds = %if.then53.i.i
  %166 = ptrtoint ptr %iomi to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %iomi, align 8
  %168 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i.i = and i32 %168, -16384
  %169 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %171, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %172 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i.i.i.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i.i.i.i, label %if.then57.i.i.i_size_write.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then57.i.i.i_size_write.exit.i.i_crit_edge:    ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then57.i.i
  %173 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i.i.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %176, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %177 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %180
  %181 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i28.i.i.i = add i32 %182, ptrtoint (ptr @lockdep_recursion to i32)
  %183 = inttoptr i32 %add.i28.i.i.i to ptr
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %183, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  %186 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i7.i.i.i.i = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %189, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool20.not.i.i.i.i = icmp eq i32 %185, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %190 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i29.i.i.i = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i29.i.i.i to ptr
  %preempt_count.i.i30.i.i.i = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %preempt_count.i.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %preempt_count.i.i30.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp.i.i135.i.i = icmp eq i32 %193, 0
  br i1 %cmp.i.i135.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge

land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %194 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i9.i.i.i.i = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %197, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %198 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %199
  %200 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %201, ptrtoint (ptr @hardirqs_enabled to i32)
  %202 = inttoptr i32 %add47.i.i.i.i to ptr
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %202, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %205 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i12.i.i.i.i = and i32 %205, -16384
  %206 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %208, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool54.not.i.i.i.i = icmp eq i32 %204, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge, label %if.then.i.i136.i.i, !prof !60

land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i.i

if.then.i.i136.i.i:                               ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit.i.i

i_size_write.exit.i.i:                            ; preds = %if.then.i.i136.i.i, %land.rhs58.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.rhs.i.i.i.i.i_size_write.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.i_size_write.exit.i.i_crit_edge, %if.then57.i.i.i_size_write.exit.i.i_crit_edge
  %i_size_seqcount.i.i.i = getelementptr inbounds %struct.inode, ptr %167, i32 0, i32 23
  %209 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %i_size_seqcount.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %210, 1
  store i32 %inc.i.i.i.i.i.i, ptr %i_size_seqcount.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %167, i32 0, i32 23, i32 1
  %211 = call ptr @llvm.returnaddress(i32 0) #10
  %212 = ptrtoint ptr %211 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %212) #10
  %i_size8.i.i.i = getelementptr inbounds %struct.inode, ptr %167, i32 0, i32 14
  %213 = ptrtoint ptr %i_size8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %add.i166.i, ptr %i_size8.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %212) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %214 = ptrtoint ptr %i_size_seqcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %i_size_seqcount.i.i.i, align 4
  %inc.i.i.i.i.i = add i32 %215, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %216 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i26.i.i.i = and i32 %216, -16384
  %217 = inttoptr i32 %and.i.i.i26.i.i.i to ptr
  %preempt_count.i.i27.i.i.i = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %preempt_count.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %preempt_count.i.i27.i.i.i, align 4
  %sub.i.i.i.i = add i32 %219, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i27.i.i.i, align 4
  br label %if.end66.thread144.i.i

if.end66.thread144.i.i:                           ; preds = %i_size_write.exit.i.i, %if.then53.i.i.if.end66.thread144.i.i_crit_edge
  %220 = ptrtoint ptr %iomi to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %iomi, align 8
  call void @__mark_inode_dirty(ptr noundef %221, i32 noundef 7) #10
  %222 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %size, align 8
  %add69148.i.i = add i64 %223, %conv54.i.i
  store i64 %add69148.i.i, ptr %size, align 8
  br label %iomap_dio_iter.exit

if.else.i.i:                                      ; preds = %if.end44.i.i
  %conv64.i.i = trunc i64 %157 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv64.i.i)
  %cmp9.i.i114.i.i = icmp slt i32 %conv64.i.i, 0
  br i1 %cmp9.i.i114.i.i, label %land.rhs16.i.i117.i.i, label %if.then.i.i.i120.i.i

land.rhs16.i.i117.i.i:                            ; preds = %if.else.i.i
  %.b71.i.i116.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i116.i.i, label %land.rhs16.i.i117.i.i.if.end66.thread.i.i_crit_edge, label %land.rhs16.i.i117.i.i.if.end66.thread.i.i.sink.split_crit_edge, !prof !60

land.rhs16.i.i117.i.i.if.end66.thread.i.i.sink.split_crit_edge: ; preds = %land.rhs16.i.i117.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.thread.i.i.sink.split

land.rhs16.i.i117.i.i.if.end66.thread.i.i_crit_edge: ; preds = %land.rhs16.i.i117.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.thread.i.i

if.then.i.i.i120.i.i:                             ; preds = %if.else.i.i
  call void @__check_object_size(ptr noundef %add.ptr2.i.i.i, i32 noundef %conv64.i.i, i1 noundef zeroext true) #10
  %call3.i121.i.i = call i32 @_copy_to_iter(ptr noundef %add.ptr2.i.i.i, i32 noundef %conv64.i.i, ptr noundef %139) #10
  %conv67.i.i = zext i32 %call3.i121.i.i to i64
  %224 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %size, align 8
  %add69.i.i = add i64 %225, %conv67.i.i
  store i64 %add69.i.i, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i121.i.i)
  %tobool70.not.i.i = icmp eq i32 %call3.i121.i.i, 0
  br i1 %tobool70.not.i.i, label %if.then.i.i.i120.i.i.if.end66.thread.i.i_crit_edge, label %if.then.i.i.i120.i.i.iomap_dio_iter.exit_crit_edge

if.then.i.i.i120.i.i.iomap_dio_iter.exit_crit_edge: ; preds = %if.then.i.i.i120.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_iter.exit

if.then.i.i.i120.i.i.if.end66.thread.i.i_crit_edge: ; preds = %if.then.i.i.i120.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.thread.i.i

if.end66.thread.i.i.sink.split:                   ; preds = %land.rhs16.i.i117.i.i.if.end66.thread.i.i.sink.split_crit_edge, %land.rhs16.i.i.i.i.if.end66.thread.i.i.sink.split_crit_edge
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.end66.thread.i.i

if.end66.thread.i.i:                              ; preds = %if.end66.thread.i.i.sink.split, %if.then.i.i.i120.i.i.if.end66.thread.i.i_crit_edge, %land.rhs16.i.i117.i.i.if.end66.thread.i.i_crit_edge, %if.then.i.i.i.i.i.if.end66.thread.i.i_crit_edge, %land.rhs16.i.i.i.i.if.end66.thread.i.i_crit_edge
  br label %iomap_dio_iter.exit

sw.bb52.i:                                        ; preds = %while.body
  %call53.i = call i32 @___ratelimit(ptr noundef nonnull @iomap_dio_iter._rs, ptr noundef nonnull @__func__.iomap_dio_iter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %sw.bb52.i.iomap_dio_iter.exit_crit_edge, label %do.end58.i

sw.bb52.i.iomap_dio_iter.exit_crit_edge:          ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_iter.exit

do.end58.i:                                       ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #12
  %226 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %call7.i, align 8
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 8
  %230 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i167.i = and i32 %230, -16384
  %231 = inttoptr i32 %and.i167.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %233, i32 0, i32 101
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %229, ptr noundef %comm.i) #14
  br label %iomap_dio_iter.exit

land.end70.i:                                     ; preds = %while.body
  %.b128130.i = load i1, ptr @iomap_dio_iter.__already_done.7, align 1
  br i1 %.b128130.i, label %land.end70.i.iomap_dio_iter.exit_crit_edge, label %if.then77.i, !prof !60

land.end70.i.iomap_dio_iter.exit_crit_edge:       ; preds = %land.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_iter.exit

if.then77.i:                                      ; preds = %land.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iomap_dio_iter.__already_done.7, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 448, i32 noundef 9, ptr noundef null) #10
  br label %iomap_dio_iter.exit

iomap_dio_iter.exit:                              ; preds = %if.then77.i, %land.end70.i.iomap_dio_iter.exit_crit_edge, %do.end58.i, %sw.bb52.i.iomap_dio_iter.exit_crit_edge, %if.end66.thread.i.i, %if.then.i.i.i120.i.i.iomap_dio_iter.exit_crit_edge, %if.end66.thread144.i.i, %if.then.i.i, %land.rhs.i.i.iomap_dio_iter.exit_crit_edge, %sw.bb48.i, %if.end46.i, %iomap_dio_hole_iter.exit152.i, %iomap_dio_hole_iter.exit.i, %if.then.i, %land.rhs.i.iomap_dio_iter.exit_crit_edge
  %retval.0.i460 = phi i64 [ %call49.i, %sw.bb48.i ], [ %call47.i, %if.end46.i ], [ %.conv3.i151.i, %iomap_dio_hole_iter.exit152.i ], [ %.conv3.i.i, %iomap_dio_hole_iter.exit.i ], [ -5, %if.then.i ], [ -5, %do.end58.i ], [ -5, %sw.bb52.i.iomap_dio_iter.exit_crit_edge ], [ -5, %if.then77.i ], [ -5, %land.end70.i.iomap_dio_iter.exit_crit_edge ], [ -5, %land.rhs.i.iomap_dio_iter.exit_crit_edge ], [ -5, %if.then.i.i ], [ -5, %land.rhs.i.i.iomap_dio_iter.exit_crit_edge ], [ -14, %if.end66.thread.i.i ], [ %conv67.i.i, %if.then.i.i.i120.i.i.iomap_dio_iter.exit_crit_edge ], [ %conv54.i.i, %if.end66.thread144.i.i ]
  %234 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %retval.0.i460, ptr %processed, align 8
  %235 = ptrtoint ptr %ki_flags133 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %ki_flags133, align 8
  %and134 = and i32 %236, -2
  store i32 %and134, ptr %ki_flags133, align 8
  %call128 = call i32 @iomap_iter(ptr noundef nonnull %iomi, ptr noundef %ops) #10
  %cmp130 = icmp sgt i32 %call128, 0
  br i1 %cmp130, label %iomap_dio_iter.exit.while.body_crit_edge, label %iomap_dio_iter.exit.while.end_crit_edge

iomap_dio_iter.exit.while.end_crit_edge:          ; preds = %iomap_dio_iter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

iomap_dio_iter.exit.while.body_crit_edge:         ; preds = %iomap_dio_iter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %iomap_dio_iter.exit.while.end_crit_edge, %if.end127.while.end_crit_edge
  %call128.lcssa470 = phi i32 [ %call128471, %if.end127.while.end_crit_edge ], [ %call128, %iomap_dio_iter.exit.while.end_crit_edge ]
  %conv129.le = sext i32 %call128.lcssa470 to i64
  call void @blk_finish_plug(ptr noundef nonnull %plug) #10
  %237 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %data_source.i, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %cmp137 = icmp eq i8 %238, 0
  br i1 %cmp137, label %land.lhs.true139, label %while.end.if.end149_crit_edge

while.end.if.end149_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

land.lhs.true139:                                 ; preds = %while.end
  %239 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %pos, align 8
  %241 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %240, i64 %242)
  %cmp142.not = icmp slt i64 %240, %242
  br i1 %cmp142.not, label %land.lhs.true139.if.end149_crit_edge, label %if.then144

land.lhs.true139.if.end149_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then144:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #12
  %sub147 = sub i64 %240, %242
  %conv148 = trunc i64 %sub147 to i32
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %conv148) #10
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %land.lhs.true139.if.end149_crit_edge, %while.end.if.end149_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call128.lcssa470)
  %cmp150 = icmp eq i32 %call128.lcssa470, -14
  br i1 %cmp150, label %land.lhs.true152, label %if.end149.if.end164_crit_edge

if.end149.if.end164_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

land.lhs.true152:                                 ; preds = %if.end149
  %243 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %244)
  %tobool154.not = icmp eq i64 %244, 0
  %and156 = and i32 %dio_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  %or.cond = or i1 %tobool157.not, %tobool154.not
  br i1 %or.cond, label %land.lhs.true152.if.end164_crit_edge, label %if.then158

land.lhs.true152.if.end164_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then158:                                       ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #12
  %ki_flags159 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %245 = ptrtoint ptr %ki_flags159 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %ki_flags159, align 8
  %and160 = and i32 %246, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  %spec.select = select i1 %tobool161.not, i1 true, i1 %17
  br label %if.end164

if.end164:                                        ; preds = %if.then158, %land.lhs.true152.if.end164_crit_edge, %if.end149.if.end164_crit_edge
  %wait_for_completion.1.off0 = phi i1 [ %spec.select, %if.then158 ], [ %17, %land.lhs.true152.if.end164_crit_edge ], [ %17, %if.end149.if.end164_crit_edge ]
  %ret.0 = phi i64 [ 0, %if.then158 ], [ -14, %land.lhs.true152.if.end164_crit_edge ], [ %conv129.le, %if.end149.if.end164_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -15, i64 %ret.0)
  %cmp165 = icmp eq i64 %ret.0, -15
  %spec.select452 = select i1 %cmp165, i1 true, i1 %wait_for_completion.1.off0
  %spec.select453 = select i1 %cmp165, i64 0, i64 %ret.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select453)
  %cmp169 = icmp slt i64 %spec.select453, 0
  br i1 %cmp169, label %if.then171, label %if.end164.if.end173_crit_edge

if.end164.if.end173_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

if.then171:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %conv172 = trunc i64 %spec.select453 to i32
  call fastcc void @iomap_dio_set_error(ptr noundef nonnull %call7.i, i32 noundef %conv172)
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.end164.if.end173_crit_edge
  %247 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %flags18, align 4
  %and175 = and i32 %248, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.do.body182_crit_edge, label %if.then177

if.end173.do.body182_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body182

if.then177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  %and179 = and i32 %248, -536870913
  %249 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %and179, ptr %flags18, align 4
  br label %do.body182

do.body182:                                       ; preds = %if.then177, %if.end173.do.body182_crit_edge
  %250 = ptrtoint ptr %poll_bio to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %poll_bio, align 4
  %private = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  %252 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile ptr %251, ptr %private, align 4
  %wait_for_completion189 = getelementptr inbounds %struct.iomap_dio, ptr %call7.i, i32 0, i32 8
  %frombool190 = zext i1 %spec.select452 to i8
  %253 = ptrtoint ptr %wait_for_completion189 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %frombool190, ptr %wait_for_completion189, align 8
  %call.i.i454 = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %254 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %254, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  %spec.select452.not = xor i1 %spec.select452, true
  %brmerge = select i1 %cmp.i.i, i1 true, i1 %spec.select452.not
  %call7.i.mux = select i1 %cmp.i.i, ptr %call7.i, ptr inttoptr (i32 -529 to ptr)
  br i1 %brmerge, label %do.body182.cleanup_crit_edge, label %do.body182.__here_crit_edge

do.body182.__here_crit_edge:                      ; preds = %do.body182
  br label %__here

do.body182.cleanup_crit_edge:                     ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here:                                           ; preds = %__here.backedge, %do.body182.__here_crit_edge
  %255 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %256, i32 0, i32 212
  %257 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 ptrtoint (ptr blockaddress(@__iomap_dio_rw, %__here) to i32), ptr %task_state_change, align 4
  %258 = load ptr, ptr %task, align 8
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store volatile i32 2, ptr %258, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  %260 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile ptr, ptr %waiter, align 8
  %tobool271.not = icmp eq ptr %261, null
  br i1 %tobool271.not, label %__here333, label %if.end273

if.end273:                                        ; preds = %__here
  %262 = ptrtoint ptr %poll_bio to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %poll_bio, align 4
  %tobool275.not = icmp eq ptr %263, null
  br i1 %tobool275.not, label %if.end273.if.then280_crit_edge, label %lor.lhs.false276

if.end273.if.then280_crit_edge:                   ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then280

lor.lhs.false276:                                 ; preds = %if.end273
  %call278 = call i32 @bio_poll(ptr noundef nonnull %263, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %lor.lhs.false276.if.then280_crit_edge, label %lor.lhs.false276.__here.backedge_crit_edge

lor.lhs.false276.__here.backedge_crit_edge:       ; preds = %lor.lhs.false276
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here.backedge

lor.lhs.false276.if.then280_crit_edge:            ; preds = %lor.lhs.false276
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then280

if.then280:                                       ; preds = %lor.lhs.false276.if.then280_crit_edge, %if.end273.if.then280_crit_edge
  call void @blk_io_schedule() #10
  br label %__here.backedge

__here.backedge:                                  ; preds = %if.then280, %lor.lhs.false276.__here.backedge_crit_edge
  br label %__here

__here333:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %264 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %task, align 8
  %task_state_change337 = getelementptr inbounds %struct.task_struct, ptr %265, i32 0, i32 212
  %266 = ptrtoint ptr %task_state_change337 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 ptrtoint (ptr blockaddress(@__iomap_dio_rw, %__here333) to i32), ptr %task_state_change337, align 4
  %267 = load ptr, ptr %task, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile i32 0, ptr %267, align 128
  br label %cleanup

if.then356:                                       ; preds = %if.then118.if.then356_crit_edge, %if.then112, %if.end94.if.then356_crit_edge, %lor.lhs.false.if.then356_crit_edge, %if.then79.if.then356_crit_edge, %if.then53.if.then356_crit_edge, %filemap_range_needs_writeback.exit.if.then356_crit_edge
  %ret.2465.off0 = phi i32 [ -11, %if.then53.if.then356_crit_edge ], [ -11, %filemap_range_needs_writeback.exit.if.then356_crit_edge ], [ -15, %if.then112 ], [ -11, %lor.lhs.false.if.then356_crit_edge ], [ -11, %if.then79.if.then356_crit_edge ], [ %call96, %if.end94.if.then356_crit_edge ], [ %call120, %if.then118.if.then356_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %269 = inttoptr i32 %ret.2465.off0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then356, %__here333, %do.body182.cleanup_crit_edge, %out_free_dio.thread466, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %269, %if.then356 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %__here333 ], [ %call7.i.mux, %do.body182.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ null, %out_free_dio.thread466 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iomi) #10
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !75
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !77

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !78
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !80
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_range_has_page(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iomap_dio_invalidate_fail(ptr noundef %inode, i64 noundef %off, i64 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_dio_invalidate_fail, i32 0, i32 1), ptr blockaddress(@trace_iomap_dio_invalidate_fail, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !83

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !60

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %call42 = tail call i32 @__traceiter_iomap_dio_invalidate_fail(ptr noundef null, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !60

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_dio_invalidate_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_dio_invalidate_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iomap_dio_invalidate_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_iomap_dio_invalidate_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #10
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
declare dso_local i32 @sb_init_dio_done_wq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iomap_dio_set_error(ptr noundef %dio, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 6
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error, i32 0, i32 %ret) #10, !srcloc !89
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_poll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %iter, ptr noundef %ops, ptr noundef %dops, i32 noundef %dio_flags, i32 noundef %done_before) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__iomap_dio_rw(ptr noundef %iocb, ptr noundef %iter, ptr noundef %ops, ptr noundef %dops, i32 noundef %dio_flags, i32 noundef %done_before)
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  %spec.select.i6 = select i1 %cmp.i, i32 %0, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @iomap_dio_complete(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select.i6, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_range_has_writeback(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_dio_invalidate_fail(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @iomap_dio_bio_iter(ptr noundef %iter, ptr noundef %dio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap1 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 8
  %bdev = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

entry.do.body.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 9
  %6 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i.i = icmp eq i32 %7, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %land.lhs.true.i.i, %entry.do.body.i.preheader_crit_edge
  %size.addr.0.i.ph = phi i32 [ %spec.select.i.i, %land.lhs.true.i.i ], [ 512, %entry.do.body.i.preheader_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %size.addr.0.i = phi i32 [ %shr.i260, %do.body.i.do.body.i_crit_edge ], [ %size.addr.0.i.ph, %do.body.i.preheader ]
  %bits.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 8, %do.body.i.preheader ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i260 = lshr i32 %size.addr.0.i, 1
  %cmp.i = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %blksize_bits.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

blksize_bits.exit:                                ; preds = %do.body.i
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %10 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call6 = tail call i32 @iov_iter_alignment(ptr noundef %12) #10
  %offset.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset.i, align 8
  %length.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length.i, align 8
  %add.i = add i64 %16, %14
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i = icmp eq i16 %18, 0
  br i1 %cmp.not.i, label %blksize_bits.exit.iomap_length.exit_crit_edge, label %if.then.i

blksize_bits.exit.iomap_length.exit_crit_edge:    ; preds = %blksize_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_length.exit

if.then.i:                                        ; preds = %blksize_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %offset4.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset4.i, align 8
  %length6.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %length6.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %length6.i, align 8
  %add7.i = add i64 %22, %20
  %23 = tail call i64 @llvm.umin.i64(i64 %add.i, i64 %add7.i) #10
  br label %iomap_length.exit

iomap_length.exit:                                ; preds = %if.then.i, %blksize_bits.exit.iomap_length.exit_crit_edge
  %end.0.i = phi i64 [ %23, %if.then.i ], [ %add.i, %blksize_bits.exit.iomap_length.exit_crit_edge ]
  %len.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %len.i, align 8
  %pos.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos.i, align 8
  %sub.i = sub i64 %end.0.i, %27
  %28 = tail call i64 @llvm.umin.i64(i64 %25, i64 %sub.i) #10
  %conv = zext i32 %call6 to i64
  %or = or i64 %27, %conv
  %or9 = or i64 %or, %28
  %notmask = shl i32 -2, %bits.0.i
  %sub = xor i32 %notmask, -1
  %conv10 = sext i32 %sub to i64
  %and = and i64 %or9, %conv10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %iomap_length.exit.cleanup155_crit_edge

iomap_length.exit.cleanup155_crit_edge:           ; preds = %iomap_length.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

if.end:                                           ; preds = %iomap_length.exit
  %type = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp = icmp eq i16 %30, 3
  br i1 %cmp, label %if.then13, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or14 = or i32 %32, 1
  store i32 %or14, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %flags16 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 4
  %33 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags16, align 2
  %35 = and i16 %34, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool19.not = icmp eq i16 %35, 0
  br i1 %tobool19.not, label %if.end15.if.end23_crit_edge, label %if.then20

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %flags21 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %36 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags21, align 4
  %or22 = or i32 %37, 2
  store i32 %or22, ptr %flags21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end15.if.end23_crit_edge
  %38 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags16, align 2
  %conv25 = zext i16 %39 to i32
  %and26 = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %if.end23.if.end49_crit_edge

if.end23.if.end49_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else:                                          ; preds = %if.end23
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %41)
  %cmp31 = icmp eq i16 %41, 2
  %and36 = and i32 %conv25, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %or.cond = select i1 %cmp31, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %land.lhs.true, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true:                                    ; preds = %if.else
  %flags38 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %42 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags38, align 4
  %and39 = and i32 %43, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true41

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true41:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %queue_flags, align 4
  %50 = and i32 %49, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool45.not = icmp ne i32 %50, 0
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true41, %land.lhs.true.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.end23.if.end49_crit_edge
  %need_zeroout.1.off0 = phi i1 [ %cmp, %land.lhs.true.if.end49_crit_edge ], [ %cmp, %if.else.if.end49_crit_edge ], [ true, %if.end23.if.end49_crit_edge ], [ %cmp, %land.lhs.true41 ]
  %use_fua.0.off0 = phi i1 [ false, %land.lhs.true.if.end49_crit_edge ], [ false, %if.else.if.end49_crit_edge ], [ false, %if.end23.if.end49_crit_edge ], [ %tobool45.not, %land.lhs.true41 ]
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %10, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count.i, align 8
  %conv.i261 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv.i261)
  %cmp.i262 = icmp ult i64 %28, %conv.i261
  br i1 %cmp.i262, label %if.then.i263, label %if.end49.iov_iter_truncate.exit_crit_edge

if.end49.iov_iter_truncate.exit_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %iov_iter_truncate.exit

if.then.i263:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i = trunc i64 %28 to i32
  %55 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv3.i, ptr %count.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i263, %if.end49.iov_iter_truncate.exit_crit_edge
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %10, align 4
  %count.i264 = getelementptr inbounds %struct.iov_iter, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %count.i264 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count.i264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool55.not = icmp eq i32 %59, 0
  br i1 %tobool55.not, label %iov_iter_truncate.exit.out.thread_crit_edge, label %if.end57

iov_iter_truncate.exit.out.thread_crit_edge:      ; preds = %iov_iter_truncate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end57:                                         ; preds = %iov_iter_truncate.exit
  br i1 %need_zeroout.1.off0, label %if.then71.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end57
  %flags60 = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %60 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags60, align 4
  %and61 = and i32 %61, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %lor.lhs.false.if.end81_crit_edge, label %land.lhs.true63

lor.lhs.false.if.end81_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

land.lhs.true63:                                  ; preds = %lor.lhs.false
  %call64 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %call64)
  %cmp65.not = icmp slt i64 %27, %call64
  br i1 %cmp65.not, label %land.lhs.true63.if.end81_crit_edge, label %if.end81.critedge

land.lhs.true63.if.end81_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then71.critedge:                               ; preds = %if.end57
  %62 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dio, align 8
  %ki_flags.c258 = getelementptr inbounds %struct.kiocb, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ki_flags.c258 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ki_flags.c258, align 8
  %and68.c259 = and i32 %65, -2
  store i32 %and68.c259, ptr %ki_flags.c258, align 8
  %sub72 = add i32 %shl.i, -1
  %66 = trunc i64 %27 to i32
  %conv75 = and i32 %sub72, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv75)
  %tobool76.not = icmp eq i32 %conv75, 0
  br i1 %tobool76.not, label %if.then71.critedge.if.end81_crit_edge, label %if.then77

if.then71.critedge.if.end81_crit_edge:            ; preds = %if.then71.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then77:                                        ; preds = %if.then71.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %conv78 = zext i32 %conv75 to i64
  %sub79 = sub i64 %27, %conv78
  tail call fastcc void @iomap_dio_zero(ptr noundef %iter, ptr noundef %dio, i64 noundef %sub79, i32 noundef %conv75)
  br label %if.end81

if.end81.critedge:                                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dio, align 8
  %ki_flags.c = getelementptr inbounds %struct.kiocb, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %ki_flags.c to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ki_flags.c, align 8
  %and68.c = and i32 %70, -2
  store i32 %and68.c, ptr %ki_flags.c, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end81.critedge, %if.then77, %if.then71.critedge.if.end81_crit_edge, %land.lhs.true63.if.end81_crit_edge, %lor.lhs.false.if.end81_crit_edge
  %flags.i = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 5
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %72, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %73 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags16, align 2
  %75 = and i16 %74, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool3.not.i = icmp eq i16 %75, 0
  br i1 %tobool.not.i, label %if.then.i265, label %if.end42.i

if.then.i265:                                     ; preds = %if.end81
  br i1 %tobool3.not.i, label %if.then.i265.iomap_dio_bio_opflags.exit_crit_edge, label %land.rhs.i

if.then.i265.iomap_dio_bio_opflags.exit_crit_edge: ; preds = %if.then.i265
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_bio_opflags.exit

land.rhs.i:                                       ; preds = %if.then.i265
  %.b66.i = load i1, ptr @iomap_dio_bio_opflags.__already_done, align 1
  br i1 %.b66.i, label %land.rhs.i.iomap_dio_bio_opflags.exit_crit_edge, label %if.then13.i, !prof !60

land.rhs.i.iomap_dio_bio_opflags.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iomap_dio_bio_opflags.exit

if.then13.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iomap_dio_bio_opflags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #10
  br label %iomap_dio_bio_opflags.exit

if.end42.i:                                       ; preds = %if.end81
  %..i = select i1 %tobool3.not.i, i32 34817, i32 34829
  br i1 %use_fua.0.off0, label %if.then51.i, label %if.else55.i

if.then51.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = or i32 %..i, 131072
  br label %iomap_dio_bio_opflags.exit

if.else55.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %and57.i = and i32 %72, -268435457
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and57.i, ptr %flags.i, align 4
  br label %iomap_dio_bio_opflags.exit

iomap_dio_bio_opflags.exit:                       ; preds = %if.else55.i, %if.then51.i, %if.then13.i, %land.rhs.i.iomap_dio_bio_opflags.exit_crit_edge, %if.then.i265.iomap_dio_bio_opflags.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i265.iomap_dio_bio_opflags.exit_crit_edge ], [ 0, %if.then13.i ], [ 0, %land.rhs.i.iomap_dio_bio_opflags.exit_crit_edge ], [ %76, %if.then51.i ], [ %..i, %if.else55.i ]
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %10, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp.i.i = icmp eq i8 %81, 2
  br i1 %cmp.i.i, label %iomap_dio_bio_opflags.exit.bio_iov_vecs_to_alloc.exit_crit_edge, label %if.end.i

iomap_dio_bio_opflags.exit.bio_iov_vecs_to_alloc.exit_crit_edge: ; preds = %iomap_dio_bio_opflags.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_iov_vecs_to_alloc.exit

if.end.i:                                         ; preds = %iomap_dio_bio_opflags.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @iov_iter_npages(ptr noundef %79, i32 noundef 256) #10
  br label %bio_iov_vecs_to_alloc.exit

bio_iov_vecs_to_alloc.exit:                       ; preds = %if.end.i, %iomap_dio_bio_opflags.exit.bio_iov_vecs_to_alloc.exit_crit_edge
  %retval.0.i266 = phi i32 [ %call1.i, %if.end.i ], [ 0, %iomap_dio_bio_opflags.exit.bio_iov_vecs_to_alloc.exit_crit_edge ]
  %error = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 6
  %size = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 3
  %ref.i = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 4
  %poll_bio.i = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  %dops.i = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %bio_iov_vecs_to_alloc.exit
  %pos.0 = phi i64 [ %27, %bio_iov_vecs_to_alloc.exit ], [ %add126, %do.cond.do.body_crit_edge ]
  %nr_pages.0 = phi i32 [ %retval.0.i266, %bio_iov_vecs_to_alloc.exit ], [ %retval.0.i279288, %do.cond.do.body_crit_edge ]
  %copied.0 = phi i32 [ 0, %bio_iov_vecs_to_alloc.exit ], [ %add116, %do.cond.do.body_crit_edge ]
  %82 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool86.not = icmp eq i32 %83, 0
  br i1 %tobool86.not, label %if.end89, label %cleanup

if.end89:                                         ; preds = %do.body
  %conv90 = trunc i32 %nr_pages.0 to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv90, ptr noundef nonnull @fs_bio_set) #10
  %84 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %86 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %87, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %88 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i267 = icmp eq ptr %89, %85
  br i1 %cmp.not.i267, label %if.end89.bio_set_dev.exit_crit_edge, label %if.then.i268

if.end89.bio_set_dev.exit_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i268:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %87, -2177
  %90 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i268, %if.end89.bio_set_dev.exit_crit_edge
  %91 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %85, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #10
  %92 = ptrtoint ptr %iomap1 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %iomap1, align 8
  %add.i270 = add i64 %93, %pos.0
  %94 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %offset.i, align 8
  %sub.i272 = sub i64 %add.i270, %95
  %shr.i273 = lshr i64 %sub.i272, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %96 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %shr.i273, ptr %bi_iter, align 8
  %97 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dio, align 8
  %ki_hint = getelementptr inbounds %struct.kiocb, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %ki_hint to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ki_hint, align 4
  %bi_write_hint = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 5
  %101 = ptrtoint ptr %bi_write_hint to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %bi_write_hint, align 8
  %102 = load ptr, ptr %dio, align 8
  %ki_ioprio = getelementptr inbounds %struct.kiocb, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %ki_ioprio to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %ki_ioprio, align 2
  %bi_ioprio = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 4
  %105 = ptrtoint ptr %bi_ioprio to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %bi_ioprio, align 2
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %106 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %dio, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %107 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @iomap_dio_bio_end_io, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %108 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %retval.0.i, ptr %bi_opf, align 8
  %109 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %10, align 4
  %call97 = tail call i32 @bio_iov_iter_get_pages(ptr noundef %call.i, ptr noundef %110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end102, label %cleanup.thread301, !prof !60

cleanup.thread301:                                ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_put(ptr noundef %call.i) #10
  br label %zero_tail

if.end102:                                        ; preds = %bio_set_dev.exit
  %bi_size = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8, i32 1
  %111 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bi_size, align 8
  %113 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i, align 4
  %and105 = and i32 %114, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.else108, label %if.then107

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i274 = zext i32 %112 to i64
  %115 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task.i, align 8
  %write_bytes.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 155, i32 5
  %119 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %write_bytes.i, align 8
  %add.i275 = add i64 %120, %conv.i274
  store i64 %add.i275, ptr %write_bytes.i, align 8
  br label %if.end114

if.else108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %tobool111.not = icmp sgt i32 %114, -1
  br i1 %tobool111.not, label %if.else108.if.end114_crit_edge, label %if.then112

if.else108.if.end114_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then112:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_set_pages_dirty(ptr noundef %call.i) #10
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.else108.if.end114_crit_edge, %if.then107
  %conv115 = zext i32 %112 to i64
  %121 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %size, align 8
  %add = add i64 %122, %conv115
  store i64 %add, ptr %size, align 8
  %add116 = add i32 %112, %copied.0
  %123 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %10, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp.i.i276 = icmp eq i8 %126, 2
  br i1 %cmp.i.i276, label %if.end114.if.end124_crit_edge, label %bio_iov_vecs_to_alloc.exit280

if.end114.if.end124_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

bio_iov_vecs_to_alloc.exit280:                    ; preds = %if.end114
  %call1.i277 = tail call i32 @iov_iter_npages(ptr noundef %124, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i277)
  %tobool119.not = icmp eq i32 %call1.i277, 0
  br i1 %tobool119.not, label %bio_iov_vecs_to_alloc.exit280.if.end124_crit_edge, label %if.then120

bio_iov_vecs_to_alloc.exit280.if.end124_crit_edge: ; preds = %bio_iov_vecs_to_alloc.exit280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then120:                                       ; preds = %bio_iov_vecs_to_alloc.exit280
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dio, align 8
  %ki_flags122 = getelementptr inbounds %struct.kiocb, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %ki_flags122 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ki_flags122, align 8
  %and123 = and i32 %130, -2
  store i32 %and123, ptr %ki_flags122, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %bio_iov_vecs_to_alloc.exit280.if.end124_crit_edge, %if.end114.if.end124_crit_edge
  %retval.0.i279288 = phi i32 [ %call1.i277, %if.then120 ], [ 0, %bio_iov_vecs_to_alloc.exit280.if.end124_crit_edge ], [ 0, %if.end114.if.end124_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %131 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !65
  %132 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dio, align 8
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ki_flags.i, align 8
  %and.i281 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i281)
  %tobool.not.i282 = icmp eq i32 %and.i281, 0
  br i1 %tobool.not.i282, label %if.end124.if.end.i284_crit_edge, label %if.then.i283

if.end124.if.end.i284_crit_edge:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i284

if.then.i283:                                     ; preds = %if.end124
  %136 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bi_opf, align 8
  %138 = or i32 %137, 16777216
  store i32 %138, ptr %bi_opf, align 8
  %ki_complete.i.i.i = getelementptr inbounds %struct.kiocb, ptr %133, i32 0, i32 2
  %139 = ptrtoint ptr %ki_complete.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ki_complete.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %140, null
  br i1 %cmp.i.i.i, label %if.then.i283.bio_set_polled.exit.i_crit_edge, label %if.then.i.i

if.then.i283.bio_set_polled.exit.i_crit_edge:     ; preds = %if.then.i283
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_polled.exit.i

if.then.i.i:                                      ; preds = %if.then.i283
  call void @__sanitizer_cov_trace_pc() #12
  %141 = or i32 %137, 18874368
  %142 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %bi_opf, align 8
  br label %bio_set_polled.exit.i

bio_set_polled.exit.i:                            ; preds = %if.then.i.i, %if.then.i283.bio_set_polled.exit.i_crit_edge
  %143 = ptrtoint ptr %poll_bio.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i, ptr %poll_bio.i, align 4
  br label %if.end.i284

if.end.i284:                                      ; preds = %bio_set_polled.exit.i, %if.end124.if.end.i284_crit_edge
  %144 = ptrtoint ptr %dops.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dops.i, align 4
  %tobool2.not.i = icmp eq ptr %145, null
  br i1 %tobool2.not.i, label %if.end.i284.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i284.if.else.i_crit_edge:                  ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i284
  %submit_io.i = getelementptr inbounds %struct.iomap_dio_ops, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %submit_io.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %submit_io.i, align 4
  %tobool4.not.i = icmp eq ptr %147, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %147(ptr noundef %iter, ptr noundef %call.i, i64 noundef %pos.0) #10
  br label %do.cond

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i284.if.else.i_crit_edge
  tail call void @submit_bio(ptr noundef %call.i) #10
  br label %do.cond

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %10, align 4
  tail call void @iov_iter_revert(ptr noundef %149, i32 noundef %copied.0) #10
  br label %out.thread

do.cond:                                          ; preds = %if.else.i, %if.then5.i
  %add126 = add i64 %pos.0, %conv115
  %tobool127.not = icmp eq i32 %retval.0.i279288, 0
  br i1 %tobool127.not, label %do.cond.zero_tail_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.zero_tail_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %zero_tail

zero_tail:                                        ; preds = %do.cond.zero_tail_crit_edge, %cleanup.thread301
  %copied.1299 = phi i32 [ %copied.0, %cleanup.thread301 ], [ %add116, %do.cond.zero_tail_crit_edge ]
  %pos.1294 = phi i64 [ %pos.0, %cleanup.thread301 ], [ %add126, %do.cond.zero_tail_crit_edge ]
  br i1 %need_zeroout.1.off0, label %zero_tail.if.then138_crit_edge, label %lor.lhs.false130

zero_tail.if.then138_crit_edge:                   ; preds = %zero_tail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138

lor.lhs.false130:                                 ; preds = %zero_tail
  %150 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags.i, align 4
  %and132 = and i32 %151, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %lor.lhs.false130.out_crit_edge, label %land.lhs.true134

lor.lhs.false130.out_crit_edge:                   ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true134:                                 ; preds = %lor.lhs.false130
  %call135 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.1294, i64 %call135)
  %cmp136.not = icmp slt i64 %pos.1294, %call135
  br i1 %cmp136.not, label %land.lhs.true134.out_crit_edge, label %land.lhs.true134.if.then138_crit_edge

land.lhs.true134.if.then138_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138

land.lhs.true134.out_crit_edge:                   ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then138:                                       ; preds = %land.lhs.true134.if.then138_crit_edge, %zero_tail.if.then138_crit_edge
  %sub139 = add i32 %shl.i, -1
  %152 = trunc i64 %pos.1294 to i32
  %conv142 = and i32 %sub139, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv142)
  %tobool143.not = icmp eq i32 %conv142, 0
  br i1 %tobool143.not, label %if.then138.out_crit_edge, label %if.then144

if.then138.out_crit_edge:                         ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then144:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  %sub145 = sub i32 %shl.i, %conv142
  tail call fastcc void @iomap_dio_zero(ptr noundef %iter, ptr noundef %dio, i64 noundef %pos.1294, i32 noundef %sub145)
  br label %out

out.thread:                                       ; preds = %cleanup, %iov_iter_truncate.exit.out.thread_crit_edge
  %153 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %10, align 4
  %count1.i285310 = getelementptr inbounds %struct.iov_iter, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %count1.i285310 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %54, ptr %count1.i285310, align 8
  br label %if.end153

out:                                              ; preds = %if.then144, %if.then138.out_crit_edge, %land.lhs.true134.out_crit_edge, %lor.lhs.false130.out_crit_edge
  %156 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %10, align 4
  %sub149 = sub i32 %54, %copied.1299
  %count1.i285 = getelementptr inbounds %struct.iov_iter, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %count1.i285 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub149, ptr %count1.i285, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.1299)
  %tobool150.not = icmp eq i32 %copied.1299, 0
  br i1 %tobool150.not, label %out.if.end153_crit_edge, label %if.then151

out.if.end153_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then151:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %conv152 = zext i32 %copied.1299 to i64
  br label %cleanup155

if.end153:                                        ; preds = %out.if.end153_crit_edge, %out.thread
  %ret.1312 = phi i32 [ 0, %out.thread ], [ %call97, %out.if.end153_crit_edge ]
  %conv154 = sext i32 %ret.1312 to i64
  br label %cleanup155

cleanup155:                                       ; preds = %if.end153, %if.then151, %iomap_length.exit.cleanup155_crit_edge
  %retval.0 = phi i64 [ %conv152, %if.then151 ], [ %conv154, %if.end153 ], [ -22, %iomap_length.exit.cleanup155_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iomap_dio_zero(ptr noundef %iter, ptr noundef %dio, i64 noundef %pos, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %0 = load ptr, ptr @empty_zero_page, align 4
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #10
  %iomap = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %bdev = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 5
  %1 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %4, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %6, %2
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %4, -2177
  %7 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #10
  %9 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %iomap, align 8
  %add.i = add i64 %10, %pos
  %offset.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset.i, align 8
  %sub.i = sub i64 %add.i, %12
  %shr.i = lshr i64 %sub.i, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shr.i, ptr %bi_iter, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dio, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @iomap_dio_bio_end_io, ptr %bi_end_io, align 8
  %16 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %22, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !77

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !91
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iomap_dio_zero, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !83

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %20, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  tail call void @__bio_add_page(ptr noundef %call.i, ptr noundef %0, i32 noundef %len, i32 noundef 0) #10
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 34817, ptr %bi_opf.i, align 8
  %ref.i = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !65
  %26 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dio, align 8
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %get_page.exit.if.end.i_crit_edge, label %if.then.i14

get_page.exit.if.end.i_crit_edge:                 ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i14:                                      ; preds = %get_page.exit
  %30 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_opf.i, align 8
  %32 = or i32 %31, 16777216
  store i32 %32, ptr %bi_opf.i, align 8
  %ki_complete.i.i.i = getelementptr inbounds %struct.kiocb, ptr %27, i32 0, i32 2
  %33 = ptrtoint ptr %ki_complete.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ki_complete.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %34, null
  br i1 %cmp.i.i.i, label %if.then.i14.bio_set_polled.exit.i_crit_edge, label %if.then.i.i15

if.then.i14.bio_set_polled.exit.i_crit_edge:      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_polled.exit.i

if.then.i.i15:                                    ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #12
  %35 = or i32 %31, 18874368
  %36 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bi_opf.i, align 8
  br label %bio_set_polled.exit.i

bio_set_polled.exit.i:                            ; preds = %if.then.i.i15, %if.then.i14.bio_set_polled.exit.i_crit_edge
  %poll_bio.i = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %poll_bio.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %poll_bio.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %bio_set_polled.exit.i, %get_page.exit.if.end.i_crit_edge
  %dops.i = getelementptr inbounds %struct.iomap_dio, ptr %dio, i32 0, i32 1
  %38 = ptrtoint ptr %dops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dops.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %submit_io.i = getelementptr inbounds %struct.iomap_dio_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %submit_io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %submit_io.i, align 4
  %tobool4.not.i = icmp eq ptr %41, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %41(ptr noundef %iter, ptr noundef %call.i, i64 noundef %pos) #10
  br label %iomap_dio_submit_bio.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  tail call void @submit_bio(ptr noundef %call.i) #10
  br label %iomap_dio_submit_bio.exit

iomap_dio_submit_bio.exit:                        ; preds = %if.else.i, %if.then5.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iomap_dio_bio_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %flags = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @blk_status_to_errno(i8 noundef zeroext %5) #10
  %error.i = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 6
  %call.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %error.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %error.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %error.i, i32 0, i32 %call) #10, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %iomap_dio_set_error.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

iomap_dio_set_error.exit:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %iomap_dio_set_error.exit, %entry.if.end_crit_edge
  %ref = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then4, label %if.end.if.end55_crit_edge

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then4:                                         ; preds = %if.end
  %wait_for_completion = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %wait_for_completion to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait_for_completion, align 8, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %waiter7 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %waiter7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %waiter7, align 4
  store volatile ptr null, ptr %waiter7, align 4
  tail call fastcc void @blk_wake_io_task(ptr noundef %11)
  br label %if.end55

if.else:                                          ; preds = %if.then4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and16 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  br i1 %tobool17.not, label %do.body45, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_inode.i, align 8
  %private = getelementptr inbounds %struct.kiocb, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr null, ptr %private, align 4
  %21 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9
  tail call void @__init_work(ptr noundef %21, i32 noundef 0) #10
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %21, align 4
  %lockdep_map = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @iomap_dio_bio_end_io.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry34 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @iomap_dio_complete_work, ptr %func, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 51
  %28 = ptrtoint ptr %s_dio_done_wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_dio_done_wq, align 32
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %21) #10
  br label %if.end55

do.body45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %private47 = getelementptr inbounds %struct.kiocb, ptr %15, i32 0, i32 3
  %30 = ptrtoint ptr %private47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr null, ptr %private47, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ki_complete.i, align 8
  %call.i82 = tail call i32 @iomap_dio_complete(ptr noundef %1) #10
  tail call void %34(ptr noundef %32, i32 noundef %call.i82) #10
  br label %if.end55

if.end55:                                         ; preds = %do.body45, %if.then18, %if.then6, %if.end.if.end55_crit_edge
  br i1 %tobool.not, label %if.else58, label %if.then57

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_check_pages_dirty(ptr noundef %bio) #10
  br label %if.end59

if.else58:                                        ; preds = %if.end55
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %35 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bi_flags.i.i, align 4
  %37 = and i16 %36, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp.i.not.i = icmp eq i16 %37, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else58.bio_release_pages.exit_crit_edge

if.else58.bio_release_pages.exit_crit_edge:       ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_release_pages.exit

if.then.i:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__bio_release_pages(ptr noundef %bio, i1 noundef zeroext false) #10
  br label %bio_release_pages.exit

bio_release_pages.exit:                           ; preds = %if.then.i, %if.else58.bio_release_pages.exit_crit_edge
  tail call void @bio_put(ptr noundef %bio) #10
  br label %if.end59

if.end59:                                         ; preds = %bio_release_pages.exit, %if.then57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_iov_iter_get_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_wake_io_task(ptr noundef %waiter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cmp = icmp eq ptr %3, %waiter
  br i1 %cmp, label %__here, label %if.else

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %waiter, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@blk_wake_io_task, %__here) to i32), ptr %task_state_change, align 4
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %6, align 128
  br label %if.end55

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 @wake_up_process(ptr noundef %waiter) #10
  br label %if.end55

if.end55:                                         ; preds = %if.else, %__here
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iomap_dio_complete_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ki_complete, align 8
  %call = tail call i32 @iomap_dio_complete(ptr noundef %add.ptr)
  tail call void %3(ptr noundef %1, i32 noundef %call) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !37, !39, !40, !42, !44, !45, !47, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__ksymtab_iomap_dio_complete, !1, !"__ksymtab_iomap_dio_complete", i1 false, i1 false}
!1 = !{!"../fs/iomap/direct-io.c", i32 126, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/iomap/direct-io.c", i32 652, i32 4}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../fs/iomap/direct-io.c", i32 660, i32 3}
!7 = !{ptr @__ksymtab___iomap_dio_rw, !8, !"__ksymtab___iomap_dio_rw", i1 false, i1 false}
!8 = !{!"../fs/iomap/direct-io.c", i32 671, i32 1}
!9 = !{ptr @__ksymtab_iomap_dio_rw, !10, !"__ksymtab_iomap_dio_rw", i1 false, i1 false}
!10 = !{!"../fs/iomap/direct-io.c", i32 685, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/iomap/trace.h", i32 85, i32 1}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/iomap/direct-io.c", i32 426, i32 7}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/iomap/direct-io.c", i32 444, i32 3}
!23 = !{ptr @iomap_dio_iter._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.iomap_dio_iter, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iomap_dio_iter._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @iomap_dio_iter._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/iomap/direct-io.c", i32 448, i32 3}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/iomap/direct-io.c", i32 209, i32 3}
!34 = !{ptr @iomap_dio_bio_end_io.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../fs/iomap/direct-io.c", i32 163, i32 4}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/blkdev.h", i32 1252, i32 3}
!39 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/iomap/direct-io.c", i32 398, i32 6}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148445670}
!62 = !{i64 2148360379, i64 2148360411, i64 2148360440, i64 2148360474, i64 2148360505, i64 2148360528}
!63 = !{i64 2148445899}
!64 = !{i8 0, i8 2}
!65 = !{i64 2148357194, i64 2148357220, i64 2148357249, i64 2148357283, i64 2148357314, i64 2148357337}
!66 = !{i64 2152722249}
!67 = !{i64 2149881352}
!68 = !{i64 2149886284}
!69 = !{i64 2149907996}
!70 = !{i64 2149912888}
!71 = !{i64 2149989345}
!72 = !{i64 2149989670}
!73 = !{i64 2152734111}
!74 = !{i64 2155055948}
!75 = !{i64 760894, i64 760955}
!76 = !{i64 763626}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 763911}
!79 = !{i64 2152720318}
!80 = !{i64 2152720160}
!81 = !{i64 2152720488}
!82 = !{i64 2149989020}
!83 = !{i64 2148970571, i64 2148970576, i64 2148970589, i64 2148970633, i64 2148970667, i64 2148970688}
!84 = !{i64 2154953589}
!85 = !{i64 2154953832}
!86 = !{i64 2149381912}
!87 = !{i64 2149382948}
!88 = !{i64 2155032066}
!89 = !{i64 866686, i64 866707, i64 866730, i64 866749, i64 866768}
!90 = !{i64 2155032469}
!91 = !{i64 2153392753, i64 2153393237, i64 2153392790, i64 2153392846, i64 2153392880, i64 2153392904, i64 2153392945, i64 2153392966, i64 2153392994, i64 2153393028}
