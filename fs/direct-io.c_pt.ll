; ModuleID = '/llk/IR_all_yes/fs/direct-io.c_pt.bc'
source_filename = "../fs/direct-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__blockdev_direct_IO\22, \22a\22\09"
module asm "\09.weak\09__crc___blockdev_direct_IO\09\09\09\09"
module asm "\09.long\09__crc___blockdev_direct_IO\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blockdev_direct_IO:\09\09\09\09\09"
module asm "\09.asciz \09\22__blockdev_direct_IO\22\09\09\09\09\09"
module asm "__kstrtabns___blockdev_direct_IO:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dio_submit = type { ptr, i32, i32, i32, i32, i64, i32, i32, i64, i32, ptr, ptr, i64, i64, i64, ptr, i32, i32, i64, i64, ptr, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { ptr }
%union.anon.61 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.dio = type { i32, i32, i32, ptr, ptr, i64, ptr, ptr, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, i32, %union.anon.77, [8 x i8] }
%union.anon.77 = type { [64 x ptr] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.34 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dio/%s\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab___blockdev_direct_IO = external dso_local constant [0 x i8], align 1
@__kstrtabns___blockdev_direct_IO = external dso_local constant [0 x i8], align 1
@__ksymtab___blockdev_direct_IO = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blockdev_direct_IO to i32), ptr @__kstrtab___blockdev_direct_IO, ptr @__kstrtabns___blockdev_direct_IO }, section "___ksymtab+__blockdev_direct_IO", align 4
@__initcall__kmod_direct_io__271_1373_dio_init6 = internal global ptr @dio_init, section ".initcall6.init", align 4
@dio_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@do_blockdev_direct_IO.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dio->bio_lock\00", [17 x i8] zeroinitializer }, align 32
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@dio_bio_end_aio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&dio->complete_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dio\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 12]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 12]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 12]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 575, i32 48 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1252, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1160, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 359, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 717, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [18 x i8] c"../fs/direct-io.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1370, i32 14 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_direct_io__271_1373_dio_init6, ptr @__ksymtab___blockdev_direct_IO, ptr @.str, ptr @do_blockdev_direct_IO.__key, ptr @.str.1, ptr @.str.2, ptr @dio_bio_end_aio.__key, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_blockdev_direct_IO.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dio_bio_end_aio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sb_init_dio_done_wq(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %s_id) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 51
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_dio_done_wq, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  %0 = ptrtoint ptr %call to i32
  tail call void @llvm.prefetch.p0(ptr %s_dio_done_wq, i32 1, i32 3, i32 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %s_dio_done_wq, i32 0, i32 %0) #9, !srcloc !34
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool16.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool16.not, label %__cmpxchg.exit.cleanup_crit_edge, label %if.then17

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %__cmpxchg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %__cmpxchg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %inode, ptr noundef %bdev, ptr noundef %iter, ptr noundef %get_block, ptr noundef %end_io, ptr noundef %submit_io, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %part_tbl) #9, !srcloc !36
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %5) #9, !srcloc !36
  %6 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk, align 8
  %queue3 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue3, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #9, !srcloc !36
  %call = tail call fastcc i32 @do_blockdev_direct_IO(ptr noundef %iocb, ptr noundef %inode, ptr noundef %bdev, ptr noundef %iter, ptr noundef %get_block, ptr noundef %end_io, ptr noundef %submit_io, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_blockdev_direct_IO(ptr noundef %iocb, ptr noundef %inode, ptr noundef readonly %bdev, ptr noundef %iter, ptr noundef %get_block, ptr noundef %end_io, ptr noundef %submit_io, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  %sdio = alloca %struct.dio_submit, align 8
  %map_bh = alloca %struct.buffer_head, align 8
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %i_blkbits1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %i_blkbits1, align 2
  %conv = zext i8 %1 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos, align 8
  %conv3 = zext i32 %3 to i64
  %add = add i64 %5, %conv3
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sdio) #9
  %6 = call ptr @memset(ptr %sdio, i32 0, i32 144)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %map_bh) #9
  %7 = call ptr @memset(ptr %map_bh, i32 0, i32 104)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #9
  %8 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %call4 = tail call i32 @iov_iter_alignment(ptr noundef %iter) #9
  %9 = trunc i64 %5 to i32
  %conv6 = or i32 %call4, %9
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %10 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %entry.cleanup257_crit_edge, label %if.end

entry.cleanup257_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup257

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr @dio_cache, align 4
  %call10 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 3264) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.cleanup257_crit_edge, label %if.end13

if.end.cleanup257_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup257

if.end13:                                         ; preds = %if.end
  %13 = call ptr @memset(ptr %call10, i32 0, i32 120)
  %14 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %call10, align 128
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end13.if.end23_crit_edge, label %land.lhs.true17

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true17:                                  ; preds = %if.end13
  %15 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp20 = icmp eq i8 %16, 0
  br i1 %cmp20, label %if.then22, label %land.lhs.true17.if.end23_crit_edge

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true17.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %call24 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %i_size = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 5
  %17 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call24, ptr %i_size, align 8
  %18 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp27 = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %call24)
  %cmp31.not = icmp slt i64 %5, %call24
  %or.cond438 = select i1 %cmp27, i1 true, i1 %cmp31.not
  br i1 %or.cond438, label %if.end34, label %if.end23.fail_dio_crit_edge

if.end23.fail_dio_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dio

if.end34:                                         ; preds = %if.end23
  %and35 = and i32 %conv6, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end49_crit_edge, label %if.then37

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then37:                                        ; preds = %if.end34
  %tobool38.not = icmp eq ptr %bdev, null
  br i1 %tobool38.not, label %if.then37.fail_dio_crit_edge, label %if.then39

if.then37.fail_dio_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dio

if.then39:                                        ; preds = %if.then37
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %20 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then39.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.then39.do.body.i.preheader_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 37, i32 9
  %22 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i.i = icmp eq i32 %23, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %23
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %land.lhs.true.i.i, %if.then39.do.body.i.preheader_crit_edge
  %size.addr.0.i.ph = phi i32 [ %spec.select.i.i, %land.lhs.true.i.i ], [ 512, %if.then39.do.body.i.preheader_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %size.addr.0.i = phi i32 [ %shr.i, %do.body.i.do.body.i_crit_edge ], [ %size.addr.0.i.ph, %do.body.i.preheader ]
  %bits.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 8, %do.body.i.preheader ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i = lshr i32 %size.addr.0.i, 1
  %cmp.i = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %if.end42

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end42:                                         ; preds = %do.body.i
  %.pre = shl i32 -2, %bits.0.i
  %.pre447 = xor i32 %.pre, -1
  %.pre448 = and i32 %conv6, %.pre447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre448)
  %tobool46.not = icmp eq i32 %.pre448, 0
  br i1 %tobool46.not, label %if.end42.if.end49_crit_edge, label %if.end42.fail_dio_crit_edge

if.end42.fail_dio_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dio

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end49:                                         ; preds = %if.end42.if.end49_crit_edge, %if.end34.if.end49_crit_edge
  %blkbits.1 = phi i32 [ %inc.i, %if.end42.if.end49_crit_edge ], [ %conv, %if.end34.if.end49_crit_edge ]
  %24 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call10, align 128
  %and51 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %brmerge = select i1 %tobool52.not, i1 true, i1 %cmp27
  br i1 %brmerge, label %if.end49.if.end64_crit_edge, label %if.then58

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then58:                                        ; preds = %if.end49
  %26 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_mapping, align 4
  %sub59 = add i64 %add, -1
  %call60 = tail call i32 @filemap_write_and_wait_range(ptr noundef %29, i64 noundef %5, i64 noundef %sub59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then58.if.end64_crit_edge, label %if.then58.fail_dio_crit_edge

if.then58.fail_dio_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dio

if.then58.if.end64_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end64:                                         ; preds = %if.then58.if.end64_crit_edge, %if.end49.if.end64_crit_edge
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %30 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i367 = icmp eq ptr %31, null
  br i1 %cmp.i367, label %if.end64.if.end80_crit_edge, label %if.else

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.else:                                          ; preds = %if.end64
  %32 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp69 = icmp eq i8 %33, 1
  br i1 %cmp69, label %land.lhs.true71, label %if.else.if.else77_crit_edge

if.else.if.else77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else77

land.lhs.true71:                                  ; preds = %if.else
  %call72 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call72)
  %cmp73 = icmp sgt i64 %add, %call72
  br i1 %cmp73, label %land.lhs.true71.if.end80_crit_edge, label %land.lhs.true71.if.else77_crit_edge

land.lhs.true71.if.else77_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else77

land.lhs.true71.if.end80_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.else77:                                        ; preds = %land.lhs.true71.if.else77_crit_edge, %if.else.if.else77_crit_edge
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %land.lhs.true71.if.end80_crit_edge, %if.end64.if.end80_crit_edge
  %.sink = phi i32 [ 1, %if.else77 ], [ 0, %if.end64.if.end80_crit_edge ], [ 0, %land.lhs.true71.if.end80_crit_edge ]
  %is_async76 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 10
  %34 = ptrtoint ptr %is_async76 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %is_async76, align 8
  %inode81 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 4
  %35 = ptrtoint ptr %inode81 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %inode, ptr %inode81, align 16
  %36 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp84 = icmp eq i8 %37, 1
  %op = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 1
  br i1 %cmp84, label %if.end97, label %if.end97.thread

if.end97:                                         ; preds = %if.end80
  %38 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %op, align 4
  %op_flags = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 2
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %39 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ki_flags, align 8
  %and87 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %spec.store.select = select i1 %tobool88.not, i32 34816, i32 2131968
  %41 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.store.select, ptr %op_flags, align 8
  %is_async98 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 10
  %42 = ptrtoint ptr %is_async98 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %is_async98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool99.not = icmp eq i32 %43, 0
  br i1 %tobool99.not, label %if.end97.if.end123_crit_edge, label %if.then105

if.end97.if.end123_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.end97.thread:                                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %op, align 4
  %is_async98428 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 10
  br label %if.end123

if.then105:                                       ; preds = %if.end97
  %45 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ki_flags, align 8
  %and107 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  %47 = ptrtoint ptr %inode81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %inode81, align 16
  %i_sb = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  br i1 %tobool108.not, label %if.else111, label %if.then109

if.then109:                                       ; preds = %if.then105
  %defer_completion.i = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 11
  %51 = ptrtoint ptr %defer_completion.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %defer_completion.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then109.if.end123_crit_edge

if.then109.if.end123_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.end.i:                                         ; preds = %if.then109
  %53 = ptrtoint ptr %defer_completion.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %defer_completion.i, align 4
  %s_dio_done_wq.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 51
  %54 = ptrtoint ptr %s_dio_done_wq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_dio_done_wq.i, align 32
  %tobool2.not.i = icmp eq ptr %55, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end123_crit_edge

if.end.i.if.end123_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then3.i:                                       ; preds = %if.end.i
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 39
  %call.i.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %s_id.i.i) #9
  %tobool.not.i.i371 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i371, label %if.then3.i.fail_dio_crit_edge, label %if.end.i.i

if.then3.i.fail_dio_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dio

if.end.i.i:                                       ; preds = %if.then3.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_dio_done_wq.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  %56 = ptrtoint ptr %call.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %s_dio_done_wq.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end.i.i
  %57 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %s_dio_done_wq.i, i32 0, i32 %56) #9, !srcloc !34
  %asmresult.i.i.i = extractvalue { i32, i32 } %57, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %57, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %tobool16.not.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %tobool16.not.i.i, label %__cmpxchg.exit.i.i.if.end123_crit_edge, label %if.then17.i.i

__cmpxchg.exit.i.i.if.end123_crit_edge:           ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then17.i.i:                                    ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %call.i.i) #9
  br label %if.end123

if.else111:                                       ; preds = %if.then105
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 51
  %58 = ptrtoint ptr %s_dio_done_wq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_dio_done_wq, align 32
  %tobool113.not = icmp eq ptr %59, null
  br i1 %tobool113.not, label %if.end119, label %if.else111.if.end123_crit_edge

if.else111.if.end123_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.end119:                                        ; preds = %if.else111
  %call117 = tail call i32 @sb_init_dio_done_wq(ptr noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool120.not = icmp eq i32 %call117, 0
  br i1 %tobool120.not, label %if.end119.if.end123_crit_edge, label %if.end119.fail_dio_crit_edge

if.end119.fail_dio_crit_edge:                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dio

if.end119.if.end123_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.end123:                                        ; preds = %if.end119.if.end123_crit_edge, %if.else111.if.end123_crit_edge, %if.then17.i.i, %__cmpxchg.exit.i.i.if.end123_crit_edge, %if.end.i.if.end123_crit_edge, %if.then109.if.end123_crit_edge, %if.end97.thread, %if.end97.if.end123_crit_edge
  %is_async98431 = phi ptr [ %is_async98, %if.end119.if.end123_crit_edge ], [ %is_async98, %if.end97.if.end123_crit_edge ], [ %is_async98428, %if.end97.thread ], [ %is_async98, %if.else111.if.end123_crit_edge ], [ %is_async98, %if.then109.if.end123_crit_edge ], [ %is_async98, %if.end.i.if.end123_crit_edge ], [ %is_async98, %if.then17.i.i ], [ %is_async98, %__cmpxchg.exit.i.i.if.end123_crit_edge ]
  %i_dio_count.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 41
  %call.i.i.i372 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_dio_count.i, i32 1, i32 3, i32 1) #9
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i, ptr %i_dio_count.i, i32 1, ptr elementtype(i32) %i_dio_count.i) #9, !srcloc !38
  %blkbits124 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 1
  %61 = ptrtoint ptr %blkbits124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %blkbits.1, ptr %blkbits124, align 4
  %sub125 = sub i32 %conv, %blkbits.1
  %blkfactor = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 2
  %62 = ptrtoint ptr %blkfactor to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub125, ptr %blkfactor, align 8
  %sh_prom = zext i32 %blkbits.1 to i64
  %shr = ashr i64 %5, %sh_prom
  %block_in_file = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 5
  %63 = ptrtoint ptr %block_in_file to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %shr, ptr %block_in_file, align 8
  %get_block126 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 10
  %64 = ptrtoint ptr %get_block126 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %get_block, ptr %get_block126, align 4
  %end_io127 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 6
  %65 = ptrtoint ptr %end_io127 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %end_io, ptr %end_io127, align 32
  %submit_io128 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 11
  %66 = ptrtoint ptr %submit_io128 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %submit_io, ptr %submit_io128, align 8
  %final_block_in_bio = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 13
  %next_block_for_io = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 14
  %iocb129 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 17
  %67 = call ptr @memset(ptr %final_block_in_bio, i32 255, i32 16)
  %68 = ptrtoint ptr %iocb129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %iocb, ptr %iocb129, align 16
  %bio_lock = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %bio_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @do_blockdev_direct_IO.__key, i16 noundef signext 3) #9
  %refcount = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 14
  %69 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %refcount, align 4
  %70 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp.i373 = icmp eq i8 %71, 0
  br i1 %cmp.i373, label %land.rhs, label %if.end123.land.end_crit_edge

if.end123.land.end_crit_edge:                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp138 = icmp eq i8 %73, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end123.land.end_crit_edge
  %74 = phi i1 [ false, %if.end123.land.end_crit_edge ], [ %cmp138, %land.rhs ]
  %should_dirty = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 12
  %frombool = zext i1 %74 to i8
  %75 = ptrtoint ptr %should_dirty to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %frombool, ptr %should_dirty, align 1
  %iter140 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 20
  %76 = ptrtoint ptr %iter140 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %iter, ptr %iter140, align 8
  %shr142 = ashr i64 %add, %sh_prom
  %final_block_in_request = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 8
  %77 = ptrtoint ptr %final_block_in_request to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %shr142, ptr %final_block_in_request, align 8
  %78 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blkfactor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool144.not = icmp eq i32 %79, 0
  br i1 %tobool144.not, label %land.end.if.end148_crit_edge, label %if.then147, !prof !39

land.end.if.end148_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then147:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %pages_in_io = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 4
  %80 = ptrtoint ptr %pages_in_io to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %pages_in_io, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %land.end.if.end148_crit_edge
  %call149 = tail call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef 2147483647) #9
  %pages_in_io150 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 4
  %81 = ptrtoint ptr %pages_in_io150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pages_in_io150, align 8
  %add151 = add i32 %82, %call149
  store i32 %add151, ptr %pages_in_io150, align 8
  call void @blk_start_plug(ptr noundef nonnull %plug) #9
  %call152 = call fastcc i32 @do_direct_IO(ptr noundef %call10, ptr noundef nonnull %sdio, ptr noundef nonnull %map_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cond = icmp eq i32 %call152, 0
  br i1 %cond, label %if.end148.if.end159_crit_edge, label %if.then154

if.end148.if.end159_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then154:                                       ; preds = %if.end148
  %head.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 21
  %tail.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 22
  %83 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %head.i, align 4
  %85 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp4.i = icmp ult i32 %84, %86
  br i1 %cmp4.i, label %while.body.lr.ph.i, label %if.then154.dio_cleanup.exit_crit_edge

if.then154.dio_cleanup.exit_crit_edge:            ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_cleanup.exit

while.body.lr.ph.i:                               ; preds = %if.then154
  %87 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %put_page.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %88 = phi i32 [ %84, %while.body.lr.ph.i ], [ %102, %put_page.exit.i.while.body.i_crit_edge ]
  %inc.i375 = add nuw i32 %88, 1
  %89 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %inc.i375, ptr %head.i, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr %87, i32 0, i32 %88
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i, align 4
  %92 = getelementptr inbounds %struct.page, ptr %91, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %and.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i376 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i376, label %if.end.i.i.i, label %if.then.i.i.i, !prof !39

if.then.i.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %94, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %91 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %95, %if.end.i.i.i ]
  %96 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %97 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i.i.i.i.i = icmp eq i32 %98, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !40

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = inttoptr i32 %retval.0.i.i.i to ptr
  call void @dump_page(ptr noundef %99, ptr noundef nonnull @.str.4) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %100 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %100, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_blockdev_direct_IO, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !45

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %96, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_page.exit.i_crit_edge

folio_put_testzero.exit.i.i.i.put_page.exit.i_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit.i

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %96) #9
  br label %put_page.exit.i

put_page.exit.i:                                  ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_page.exit.i_crit_edge
  %101 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %head.i, align 4
  %103 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tail.i, align 8
  %cmp.i377 = icmp ult i32 %102, %104
  br i1 %cmp.i377, label %put_page.exit.i.while.body.i_crit_edge, label %put_page.exit.i.dio_cleanup.exit_crit_edge

put_page.exit.i.dio_cleanup.exit_crit_edge:       ; preds = %put_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_cleanup.exit

put_page.exit.i.while.body.i_crit_edge:           ; preds = %put_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

dio_cleanup.exit:                                 ; preds = %put_page.exit.i.dio_cleanup.exit_crit_edge, %if.then154.dio_cleanup.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %call152)
  %cmp156 = icmp eq i32 %call152, -15
  %spec.select363 = select i1 %cmp156, i32 0, i32 %call152
  br label %if.end159

if.end159:                                        ; preds = %dio_cleanup.exit, %if.end148.if.end159_crit_edge
  %retval2.1 = phi i32 [ 0, %if.end148.if.end159_crit_edge ], [ %spec.select363, %dio_cleanup.exit ]
  %start_zero_done.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 3
  %105 = ptrtoint ptr %start_zero_done.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %start_zero_done.i, align 4
  %106 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %blkfactor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i378 = icmp eq i32 %107, 0
  br i1 %tobool.not.i378, label %if.end159.dio_zero_block.exit_crit_edge, label %lor.lhs.false.i

if.end159.dio_zero_block.exit_crit_edge:          ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_zero_block.exit

lor.lhs.false.i:                                  ; preds = %if.end159
  %108 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %map_bh, align 8
  %110 = and i32 %109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool1.not.i = icmp eq i32 %110, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dio_zero_block.exit_crit_edge, label %if.end.i379

lor.lhs.false.i.dio_zero_block.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_zero_block.exit

if.end.i379:                                      ; preds = %lor.lhs.false.i
  %shl.i = shl nuw i32 1, %107
  %111 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %block_in_file, align 8
  %sub.i = add i32 %shl.i, -1
  %113 = trunc i64 %112 to i32
  %conv3.i = and i32 %sub.i, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %tobool4.not.i = icmp eq i32 %conv3.i, 0
  br i1 %tobool4.not.i, label %if.end.i379.dio_zero_block.exit_crit_edge, label %if.end6.i

if.end.i379.dio_zero_block.exit_crit_edge:        ; preds = %if.end.i379
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_zero_block.exit

if.end6.i:                                        ; preds = %if.end.i379
  %sub9.i = sub i32 %shl.i, %conv3.i
  %114 = ptrtoint ptr %blkbits124 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %blkbits124, align 4
  %shl11.i = shl i32 %sub9.i, %115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %116 = load ptr, ptr @empty_zero_page, align 4
  %117 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %next_block_for_io, align 8
  %call12.i = call fastcc i32 @submit_page_section(ptr noundef %call10, ptr noundef nonnull %sdio, ptr noundef %116, i32 noundef 0, i32 noundef %shl11.i, i64 noundef %118, ptr noundef nonnull %map_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end6.i.dio_zero_block.exit_crit_edge

if.end6.i.dio_zero_block.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_zero_block.exit

if.end15.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv16.i = zext i32 %sub9.i to i64
  %119 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %next_block_for_io, align 8
  %add.i = add i64 %120, %conv16.i
  store i64 %add.i, ptr %next_block_for_io, align 8
  br label %dio_zero_block.exit

dio_zero_block.exit:                              ; preds = %if.end15.i, %if.end6.i.dio_zero_block.exit_crit_edge, %if.end.i379.dio_zero_block.exit_crit_edge, %lor.lhs.false.i.dio_zero_block.exit_crit_edge, %if.end159.dio_zero_block.exit_crit_edge
  %cur_page = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 15
  %121 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur_page, align 8
  %tobool160.not = icmp eq ptr %122, null
  br i1 %tobool160.not, label %dio_zero_block.exit.if.end169_crit_edge, label %if.then161

dio_zero_block.exit.if.end169_crit_edge:          ; preds = %dio_zero_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.then161:                                       ; preds = %dio_zero_block.exit
  %call162 = call fastcc i32 @dio_send_cur_page(ptr noundef %call10, ptr noundef nonnull %sdio, ptr noundef nonnull %map_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.1)
  %cmp163 = icmp eq i32 %retval2.1, 0
  %spec.select = select i1 %cmp163, i32 %call162, i32 %retval2.1
  %123 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur_page, align 8
  %125 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 1
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  %and.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i380 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i380, label %if.end.i.i381, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %127, -1
  br label %_compound_head.exit.i

if.end.i.i381:                                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %124 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i381, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %128, %if.end.i.i381 ]
  %129 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %130 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i.i.i.i = icmp eq i32 %131, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %129, ptr noundef nonnull @.str.4) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %132 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %132, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_blockdev_direct_IO, %if.then.i.i.i.i.i382)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i382], !srcloc !45

if.then.i.i.i.i.i382:                             ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %129, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i382, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %129) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %133 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %cur_page, align 8
  br label %if.end169

if.end169:                                        ; preds = %put_page.exit, %dio_zero_block.exit.if.end169_crit_edge
  %retval2.3 = phi i32 [ %spec.select, %put_page.exit ], [ %retval2.1, %dio_zero_block.exit.if.end169_crit_edge ]
  %134 = ptrtoint ptr %sdio to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sdio, align 8
  %tobool170.not = icmp eq ptr %135, null
  br i1 %tobool170.not, label %if.end169.if.end172_crit_edge, label %if.then171

if.end169.if.end172_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then171:                                       ; preds = %if.end169
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %135, i32 0, i32 11
  %136 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call10, ptr %bi_private.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %135, i32 0, i32 3
  %137 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %138, -9
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock) #9
  %139 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %refcount, align 4
  %inc.i383 = add i32 %140, 1
  store i32 %inc.i383, ptr %refcount, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock, i32 noundef %call3.i) #9
  %141 = ptrtoint ptr %is_async98431 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %is_async98431, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.i384 = icmp eq i32 %142, 0
  br i1 %tobool.not.i384, label %if.then171.if.end.i385_crit_edge, label %land.lhs.true.i

if.then171.if.end.i385_crit_edge:                 ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i385

land.lhs.true.i:                                  ; preds = %if.then171
  %op.i = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 1
  %143 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp7.i = icmp eq i32 %144, 0
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end.i385_crit_edge

land.lhs.true.i.if.end.i385_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i385

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %145 = ptrtoint ptr %should_dirty to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %should_dirty, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool10.not.i = icmp eq i8 %146, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.end.i385_crit_edge, label %if.then.i

land.lhs.true9.i.if.end.i385_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i385

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @bio_set_pages_dirty(ptr noundef nonnull %135) #9
  br label %if.end.i385

if.end.i385:                                      ; preds = %if.then.i, %land.lhs.true9.i.if.end.i385_crit_edge, %land.lhs.true.i.if.end.i385_crit_edge, %if.then171.if.end.i385_crit_edge
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %135, i32 0, i32 1
  %147 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %148, i32 0, i32 17
  %149 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bd_disk.i, align 8
  %bio_disk.i = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 3
  %151 = ptrtoint ptr %bio_disk.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %bio_disk.i, align 4
  %152 = ptrtoint ptr %submit_io128 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %submit_io128, align 8
  %tobool12.not.i = icmp eq ptr %153, null
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %inode81 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %inode81, align 16
  %logical_offset_in_bio.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %156 = ptrtoint ptr %logical_offset_in_bio.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %logical_offset_in_bio.i, align 8
  call void %153(ptr noundef nonnull %135, ptr noundef %155, i64 noundef %157) #9
  br label %dio_bio_submit.exit

if.else.i:                                        ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #11
  call void @submit_bio(ptr noundef nonnull %135) #9
  br label %dio_bio_submit.exit

dio_bio_submit.exit:                              ; preds = %if.else.i, %if.then13.i
  %158 = ptrtoint ptr %sdio to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %sdio, align 8
  %boundary.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 9
  %159 = ptrtoint ptr %boundary.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %boundary.i, align 8
  %logical_offset_in_bio17.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %160 = ptrtoint ptr %logical_offset_in_bio17.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 0, ptr %logical_offset_in_bio17.i, align 8
  br label %if.end172

if.end172:                                        ; preds = %dio_bio_submit.exit, %if.end169.if.end172_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #9
  %head.i388 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 21
  %tail.i389 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 22
  %161 = ptrtoint ptr %head.i388 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %head.i388, align 4
  %163 = ptrtoint ptr %tail.i389 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %tail.i389, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %164)
  %cmp4.i390 = icmp ult i32 %162, %164
  br i1 %cmp4.i390, label %while.body.lr.ph.i391, label %if.end172.dio_cleanup.exit416_crit_edge

if.end172.dio_cleanup.exit416_crit_edge:          ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_cleanup.exit416

while.body.lr.ph.i391:                            ; preds = %if.end172
  %165 = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 19
  br label %while.body.i396

while.body.i396:                                  ; preds = %put_page.exit.i415.while.body.i396_crit_edge, %while.body.lr.ph.i391
  %166 = phi i32 [ %162, %while.body.lr.ph.i391 ], [ %180, %put_page.exit.i415.while.body.i396_crit_edge ]
  %inc.i392 = add nuw i32 %166, 1
  %167 = ptrtoint ptr %head.i388 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %inc.i392, ptr %head.i388, align 4
  %arrayidx.i393 = getelementptr [64 x ptr], ptr %165, i32 0, i32 %166
  %168 = ptrtoint ptr %arrayidx.i393 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i393, align 4
  %170 = getelementptr inbounds %struct.page, ptr %169, i32 0, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %170, align 4
  %and.i.i.i394 = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i394)
  %tobool.not.i.i.i395 = icmp eq i32 %and.i.i.i394, 0
  br i1 %tobool.not.i.i.i395, label %if.end.i.i.i399, label %if.then.i.i.i398, !prof !39

if.then.i.i.i398:                                 ; preds = %while.body.i396
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i397 = add i32 %172, -1
  br label %_compound_head.exit.i.i404

if.end.i.i.i399:                                  ; preds = %while.body.i396
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %169 to i32
  br label %_compound_head.exit.i.i404

_compound_head.exit.i.i404:                       ; preds = %if.end.i.i.i399, %if.then.i.i.i398
  %retval.0.i.i.i400 = phi i32 [ %sub.i.i.i397, %if.then.i.i.i398 ], [ %173, %if.end.i.i.i399 ]
  %174 = inttoptr i32 %retval.0.i.i.i400 to ptr
  %_refcount.i.i.i.i.i.i401 = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i402 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i401, i32 noundef 4) #9
  %175 = ptrtoint ptr %_refcount.i.i.i.i.i.i401 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %_refcount.i.i.i.i.i.i401, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i.i.i.i.i403 = icmp eq i32 %176, 0
  br i1 %cmp.i.i.i.i.i403, label %if.then.i.i.i.i.i405, label %do.end5.i.i.i.i.i409, !prof !40

if.then.i.i.i.i.i405:                             ; preds = %_compound_head.exit.i.i404
  call void @__sanitizer_cov_trace_pc() #11
  %177 = inttoptr i32 %retval.0.i.i.i400 to ptr
  call void @dump_page(ptr noundef %177, ptr noundef nonnull @.str.4) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i.i409:                             ; preds = %_compound_head.exit.i.i404
  %call.i.i.i10.i.i.i.i.i406 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i401, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i401, i32 1, i32 3, i32 1) #9
  %178 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i401, ptr %_refcount.i.i.i.i.i.i401, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i401) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i.i407 = extractvalue { i32, i32 } %178, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i407)
  %cmp.i.i.i.i.i.i.i.i408 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i407, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_blockdev_direct_IO, %if.then.i.i.i.i.i.i411)) #9
          to label %folio_put_testzero.exit.i.i.i412 [label %if.then.i.i.i.i.i.i411], !srcloc !45

if.then.i.i.i.i.i.i411:                           ; preds = %do.end5.i.i.i.i.i409
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i410 = zext i1 %cmp.i.i.i.i.i.i.i.i408 to i32
  call void @__page_ref_mod_and_test(ptr noundef %174, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i410) #9
  br label %folio_put_testzero.exit.i.i.i412

folio_put_testzero.exit.i.i.i412:                 ; preds = %if.then.i.i.i.i.i.i411, %do.end5.i.i.i.i.i409
  br i1 %cmp.i.i.i.i.i.i.i.i408, label %if.then.i4.i.i413, label %folio_put_testzero.exit.i.i.i412.put_page.exit.i415_crit_edge

folio_put_testzero.exit.i.i.i412.put_page.exit.i415_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i412
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit.i415

if.then.i4.i.i413:                                ; preds = %folio_put_testzero.exit.i.i.i412
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %174) #9
  br label %put_page.exit.i415

put_page.exit.i415:                               ; preds = %if.then.i4.i.i413, %folio_put_testzero.exit.i.i.i412.put_page.exit.i415_crit_edge
  %179 = ptrtoint ptr %head.i388 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %head.i388, align 4
  %181 = ptrtoint ptr %tail.i389 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %tail.i389, align 8
  %cmp.i414 = icmp ult i32 %180, %182
  br i1 %cmp.i414, label %put_page.exit.i415.while.body.i396_crit_edge, label %put_page.exit.i415.dio_cleanup.exit416_crit_edge

put_page.exit.i415.dio_cleanup.exit416_crit_edge: ; preds = %put_page.exit.i415
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_cleanup.exit416

put_page.exit.i415.while.body.i396_crit_edge:     ; preds = %put_page.exit.i415
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i396

dio_cleanup.exit416:                              ; preds = %put_page.exit.i415.dio_cleanup.exit416_crit_edge, %if.end172.dio_cleanup.exit416_crit_edge
  %183 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp175 = icmp eq i8 %184, 0
  br i1 %cmp175, label %land.lhs.true177, label %dio_cleanup.exit416.do.body184_crit_edge

dio_cleanup.exit416.do.body184_crit_edge:         ; preds = %dio_cleanup.exit416
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body184

land.lhs.true177:                                 ; preds = %dio_cleanup.exit416
  %185 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %call10, align 128
  %and179 = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %land.lhs.true177.do.body184_crit_edge, label %if.then181

land.lhs.true177.do.body184_crit_edge:            ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body184

if.then181:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %inode81 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %inode81, align 16
  %i_rwsem.i418 = getelementptr inbounds %struct.inode, ptr %188, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i418) #9
  br label %do.body184

do.body184:                                       ; preds = %if.then181, %land.lhs.true177.do.body184_crit_edge, %dio_cleanup.exit416.do.body184_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %retval2.3)
  %cmp185 = icmp eq i32 %retval2.3, -529
  br i1 %cmp185, label %do.body194, label %do.end202, !prof !40

do.body194:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #9, !srcloc !46
  unreachable

do.end202:                                        ; preds = %do.body184
  %189 = ptrtoint ptr %is_async98431 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %is_async98431, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool204.not = icmp ne i32 %190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.3)
  %cmp206 = icmp eq i32 %retval2.3, 0
  %or.cond362 = select i1 %tobool204.not, i1 %cmp206, i1 false
  br i1 %or.cond362, label %land.lhs.true208, label %do.end202.if.else219_crit_edge

do.end202.if.else219_crit_edge:                   ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else219

land.lhs.true208:                                 ; preds = %do.end202
  %result = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 18
  %191 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool209.not = icmp eq i32 %192, 0
  br i1 %tobool209.not, label %land.lhs.true208.if.else219_crit_edge, label %land.lhs.true210

land.lhs.true208.if.else219_crit_edge:            ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else219

land.lhs.true210:                                 ; preds = %land.lhs.true208
  %193 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp213 = icmp eq i8 %194, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %3)
  %cmp216 = icmp eq i32 %192, %3
  %or.cond440 = select i1 %cmp213, i1 true, i1 %cmp216
  br i1 %or.cond440, label %land.lhs.true210.if.end220_crit_edge, label %land.lhs.true210.if.else219_crit_edge

land.lhs.true210.if.else219_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else219

land.lhs.true210.if.end220_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

if.else219:                                       ; preds = %land.lhs.true210.if.else219_crit_edge, %land.lhs.true208.if.else219_crit_edge, %do.end202.if.else219_crit_edge
  %call6.i = call fastcc ptr @dio_await_one(ptr noundef %call10) #9
  %tobool.not7.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not7.i, label %if.else219.if.end220_crit_edge, label %if.then.lr.ph.i

if.else219.if.end220_crit_edge:                   ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

if.then.lr.ph.i:                                  ; preds = %if.else219
  %op.i.i = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 1
  %io_error.i.i = getelementptr inbounds %struct.dio, ptr %call10, i32 0, i32 13
  br label %if.then.i420

if.then.i420:                                     ; preds = %dio_bio_complete.exit.i.if.then.i420_crit_edge, %if.then.lr.ph.i
  %call8.i = phi ptr [ %call6.i, %if.then.lr.ph.i ], [ %call.i, %dio_bio_complete.exit.i.if.then.i420_crit_edge ]
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %call8.i, i32 0, i32 6
  %195 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %bi_status.i.i, align 2
  %197 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %op.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp.i.i = icmp eq i32 %198, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then.i420.land.end.i.i_crit_edge

if.then.i420.land.end.i.i_crit_edge:              ; preds = %if.then.i420
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %if.then.i420
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %should_dirty to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %should_dirty, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.i.i = icmp ne i8 %200, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then.i420.land.end.i.i_crit_edge
  %201 = phi i1 [ false, %if.then.i420.land.end.i.i_crit_edge ], [ %tobool.i.i, %land.rhs.i.i ]
  %202 = zext i8 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values)
  switch i8 %196, label %land.end.i.i.if.else.i.i_crit_edge [
    i8 0, label %land.end.i.i.if.end9.i.i_crit_edge
    i8 12, label %land.lhs.true.i.i421
  ]

land.end.i.i.if.end9.i.i_crit_edge:               ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

land.end.i.i.if.else.i.i_crit_edge:               ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

land.lhs.true.i.i421:                             ; preds = %land.end.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call8.i, i32 0, i32 2
  %203 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %bi_opf.i.i, align 8
  %205 = and i32 %204, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool6.not.i.i = icmp eq i32 %205, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i421.if.else.i.i_crit_edge, label %land.lhs.true.i.i421.if.end9.sink.split.i.i_crit_edge

land.lhs.true.i.i421.if.end9.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split.i.i

land.lhs.true.i.i421.if.else.i.i_crit_edge:       ; preds = %land.lhs.true.i.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i421.if.else.i.i_crit_edge, %land.end.i.i.if.else.i.i_crit_edge
  br label %if.end9.sink.split.i.i

if.end9.sink.split.i.i:                           ; preds = %if.else.i.i, %land.lhs.true.i.i421.if.end9.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ -5, %if.else.i.i ], [ -11, %land.lhs.true.i.i421.if.end9.sink.split.i.i_crit_edge ]
  %206 = ptrtoint ptr %io_error.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %.sink.i.i, ptr %io_error.i.i, align 32
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end9.sink.split.i.i, %land.end.i.i.if.end9.i.i_crit_edge
  %207 = ptrtoint ptr %is_async98431 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %is_async98431, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool10.not.i.i = icmp eq i32 %208, 0
  %.not.i.i = xor i1 %201, true
  %brmerge.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %.not.i.i
  br i1 %brmerge.i.i, label %if.else15.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @bio_check_pages_dirty(ptr noundef nonnull %call8.i) #9
  br label %dio_bio_complete.exit.i

if.else15.i.i:                                    ; preds = %if.end9.i.i
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call8.i, i32 0, i32 3
  %209 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %211 = and i16 %210, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %cmp.i.not.i.i.i = icmp eq i16 %211, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i422, label %if.else15.i.i.bio_release_pages.exit.i.i_crit_edge

if.else15.i.i.bio_release_pages.exit.i.i_crit_edge: ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_release_pages.exit.i.i

if.then.i.i.i422:                                 ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__bio_release_pages(ptr noundef nonnull %call8.i, i1 noundef zeroext %201) #9
  br label %bio_release_pages.exit.i.i

bio_release_pages.exit.i.i:                       ; preds = %if.then.i.i.i422, %if.else15.i.i.bio_release_pages.exit.i.i_crit_edge
  call void @bio_put(ptr noundef nonnull %call8.i) #9
  br label %dio_bio_complete.exit.i

dio_bio_complete.exit.i:                          ; preds = %bio_release_pages.exit.i.i, %if.then14.i.i
  %call.i = call fastcc ptr @dio_await_one(ptr noundef %call10) #9
  %tobool.not.i423 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i423, label %dio_bio_complete.exit.i.if.end220_crit_edge, label %dio_bio_complete.exit.i.if.then.i420_crit_edge

dio_bio_complete.exit.i.if.then.i420_crit_edge:   ; preds = %dio_bio_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i420

dio_bio_complete.exit.i.if.end220_crit_edge:      ; preds = %dio_bio_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

if.end220:                                        ; preds = %dio_bio_complete.exit.i.if.end220_crit_edge, %if.else219.if.end220_crit_edge, %land.lhs.true210.if.end220_crit_edge
  %retval2.4 = phi i32 [ -529, %land.lhs.true210.if.end220_crit_edge ], [ %retval2.3, %if.else219.if.end220_crit_edge ], [ %retval2.3, %dio_bio_complete.exit.i.if.end220_crit_edge ]
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock) #9
  %212 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %refcount, align 4
  %dec.i = add i32 %213, -1
  store i32 %dec.i, ptr %refcount, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp222 = icmp eq i32 %dec.i, 0
  br i1 %cmp222, label %if.then224, label %do.body227

if.then224:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  %call225 = call fastcc i32 @dio_complete(ptr noundef %call10, i32 noundef %retval2.4, i32 noundef 2)
  br label %cleanup257

do.body227:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %retval2.4)
  %cmp228.not = icmp eq i32 %retval2.4, -529
  br i1 %cmp228.not, label %do.body227.cleanup257_crit_edge, label %do.body237, !prof !39

do.body227.cleanup257_crit_edge:                  ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup257

do.body237:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1332, 0\0A.popsection", ""() #9, !srcloc !47
  unreachable

fail_dio:                                         ; preds = %if.end119.fail_dio_crit_edge, %if.then3.i.fail_dio_crit_edge, %if.then58.fail_dio_crit_edge, %if.end42.fail_dio_crit_edge, %if.then37.fail_dio_crit_edge, %if.end23.fail_dio_crit_edge
  %retval2.6 = phi i32 [ -22, %if.end42.fail_dio_crit_edge ], [ %call60, %if.then58.fail_dio_crit_edge ], [ %call117, %if.end119.fail_dio_crit_edge ], [ -12, %if.then3.i.fail_dio_crit_edge ], [ 0, %if.end23.fail_dio_crit_edge ], [ -22, %if.then37.fail_dio_crit_edge ]
  %214 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %call10, align 128
  %and248 = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %fail_dio.if.end256_crit_edge, label %land.lhs.true250

fail_dio.if.end256_crit_edge:                     ; preds = %fail_dio
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

land.lhs.true250:                                 ; preds = %fail_dio
  %216 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %data_source.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %cmp253 = icmp eq i8 %217, 0
  br i1 %cmp253, label %if.then255, label %land.lhs.true250.if.end256_crit_edge

land.lhs.true250.if.end256_crit_edge:             ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

if.then255:                                       ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #11
  %i_rwsem.i427 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i427) #9
  br label %if.end256

if.end256:                                        ; preds = %if.then255, %land.lhs.true250.if.end256_crit_edge, %fail_dio.if.end256_crit_edge
  %218 = load ptr, ptr @dio_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %218, ptr noundef %call10) #9
  br label %cleanup257

cleanup257:                                       ; preds = %if.end256, %do.body227.cleanup257_crit_edge, %if.then224, %if.end.cleanup257_crit_edge, %entry.cleanup257_crit_edge
  %retval.0 = phi i32 [ %retval2.6, %if.end256 ], [ 0, %entry.cleanup257_crit_edge ], [ -12, %if.end.cleanup257_crit_edge ], [ %call225, %if.then224 ], [ -529, %do.body227.cleanup257_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %map_bh) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sdio) #9
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dio_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 384, i32 noundef 128, i32 noundef 262144, ptr noundef null) #9
  store ptr %call, ptr @dio_cache, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !48
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !49
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !40

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !50
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !52
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
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
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_direct_IO(ptr noundef %dio, ptr noundef %sdio, ptr noundef %map_bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %blkbits1 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 1
  %0 = ptrtoint ptr %blkbits1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blkbits1, align 4
  %blkfactor = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 2
  %2 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blkfactor, align 8
  %add = add i32 %3, %1
  %block_in_file = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 5
  %final_block_in_request = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 8
  %4 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %block_in_file, align 8
  %6 = ptrtoint ptr %final_block_in_request to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %final_block_in_request, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp429 = icmp ult i64 %5, %7
  br i1 %cmp429, label %while.body.lr.ph, label %entry.cleanup189_crit_edge

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

while.body.lr.ph:                                 ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 22
  %head.i.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 21
  %8 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 19
  %from4 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 23
  %to8 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 24
  %blocks_available = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 6
  %page_errors.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 9
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 4
  %op.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %inode.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 4
  %get_block.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 10
  %b_private.i = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 8
  %private.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 7
  %defer_completion.i.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 11
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 3
  %next_block_for_io = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 14
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 6
  %start_zero_done = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 3
  %boundary = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 9
  %result146 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 18
  %shl64 = shl nuw i32 1, %1
  %conv65 = sext i32 %shl64 to i64
  %sub66 = add nsw i64 %conv65, -1
  %neg = sub nsw i64 0, %conv65
  %sh_prom73 = zext i32 %1 to i64
  br label %while.body

while.body:                                       ; preds = %cleanup183.while.body_crit_edge, %while.body.lr.ph
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tail.i.i, align 8
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp eq i32 %10, %12
  br i1 %cmp.i, label %if.then.i, label %while.body.if.end16.i_crit_edge

while.body.if.end16.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then.i:                                        ; preds = %while.body
  %call1.i = tail call fastcc i32 @dio_refill_pages(ptr noundef %dio, ptr noundef %sdio) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %cleanup.i

do.body.i:                                        ; preds = %if.then.i
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail.i.i, align 8
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp5.i = icmp eq i32 %14, %16
  br i1 %cmp5.i, label %do.body9.i, label %do.body.i.if.end16.i_crit_edge, !prof !40

do.body.i.if.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = inttoptr i32 %call1.i to ptr
  br label %dio_get_page.exit

if.end16.i:                                       ; preds = %do.body.i.if.end16.i_crit_edge, %while.body.if.end16.i_crit_edge
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head.i.i, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr %8, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  br label %dio_get_page.exit

dio_get_page.exit:                                ; preds = %if.end16.i, %cleanup.i
  %retval.1.i = phi ptr [ %17, %cleanup.i ], [ %21, %if.end16.i ]
  %cmp.i303 = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then, label %if.end

if.then:                                          ; preds = %dio_get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %retval.1.i to i32
  br label %cleanup189

if.end:                                           ; preds = %dio_get_page.exit
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %from4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %from4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %26, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail.i.i, align 8
  %sub = add i32 %28, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub)
  %cmp6 = icmp eq i32 %24, %sub
  br i1 %cmp6, label %cond.true7, label %cond.end.cond.end10_crit_edge

cond.end.cond.end10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

cond.true7:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %to8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %to8, align 8
  br label %cond.end10

cond.end10:                                       ; preds = %cond.true7, %cond.end.cond.end10_crit_edge
  %cond11 = phi i32 [ %30, %cond.true7 ], [ 4096, %cond.end.cond.end10_crit_edge ]
  %inc = add i32 %24, 1
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc, ptr %head.i.i, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %do.end171.while.cond13_crit_edge, %cond.end10
  %from.0 = phi i32 [ %cond, %cond.end10 ], [ %from.2, %do.end171.while.cond13_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond11, i32 %from.0)
  %cmp14 = icmp ugt i32 %cond11, %from.0
  br i1 %cmp14, label %while.body15, label %while.cond13.while.end_crit_edge

while.cond13.while.end_crit_edge:                 ; preds = %while.cond13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body15:                                     ; preds = %while.cond13
  %32 = ptrtoint ptr %blocks_available to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blocks_available, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16 = icmp eq i32 %33, 0
  br i1 %cmp16, label %if.then17, label %while.body15.do_holes_crit_edge

while.body15.do_holes_crit_edge:                  ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_holes

if.then17:                                        ; preds = %while.body15
  %34 = ptrtoint ptr %blkbits1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blkbits1, align 4
  %36 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blkfactor, align 8
  %add.i = add i32 %37, %35
  %38 = ptrtoint ptr %page_errors.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_errors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i304 = icmp eq i32 %39, 0
  br i1 %cmp.i304, label %do.body.i305, label %if.then17.if.then20_crit_edge

if.then17.if.then20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

do.body.i305:                                     ; preds = %if.then17
  %40 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %block_in_file, align 8
  %42 = ptrtoint ptr %final_block_in_request to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %final_block_in_request, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp1.not.i = icmp ult i64 %41, %43
  br i1 %cmp1.not.i, label %do.end9.i, label %do.body4.i, !prof !39

do.body4.i:                                       ; preds = %do.body.i305
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end9.i:                                        ; preds = %do.body.i305
  %sh_prom.i = zext i32 %37 to i64
  %shr.i = lshr i64 %41, %sh_prom.i
  %sub.i = add i64 %43, -1
  %shr15.i = lshr i64 %sub.i, %sh_prom.i
  %sub16.i = sub i64 %shr15.i, %shr.i
  %44 = trunc i64 %sub16.i to i32
  %conv.i = add i32 %44, 1
  %45 = ptrtoint ptr %map_bh to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %map_bh, align 8
  %shl.i = shl i32 %conv.i, %add.i
  %46 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl.i, ptr %b_size.i, align 8
  %47 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp18.i = icmp eq i32 %48, 1
  %49 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dio, align 128
  %and.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %do.end9.i.if.end30.i_crit_edge, label %if.then21.i

do.end9.i.if.end30.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then21.i:                                      ; preds = %do.end9.i
  %51 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %inode.i, align 16
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %52) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool22.not.i = icmp eq i64 %call.i, 0
  br i1 %tobool22.not.i, label %if.then21.i.if.end30.i_crit_edge, label %land.lhs.true.i

if.then21.i.if.end30.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub23.i = add i64 %call.i, -1
  %sh_prom24.i = zext i32 %add.i to i64
  %shr25.i = ashr i64 %sub23.i, %sh_prom24.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %shr25.i)
  %cmp26.not.i = icmp ugt i64 %shr.i, %shr25.i
  %spec.select.i = select i1 %cmp26.not.i, i1 %cmp18.i, i1 false
  br label %if.end30.i

if.end30.i:                                       ; preds = %land.lhs.true.i, %if.then21.i.if.end30.i_crit_edge, %do.end9.i.if.end30.i_crit_edge
  %create.0.shrunk.i = phi i1 [ %cmp18.i, %if.then21.i.if.end30.i_crit_edge ], [ %cmp18.i, %do.end9.i.if.end30.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %create.0.i = zext i1 %create.0.shrunk.i to i32
  %53 = ptrtoint ptr %get_block.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_block.i, align 4
  %55 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %inode.i, align 16
  %call32.i = tail call i32 %54(ptr noundef %56, i64 noundef %shr.i, ptr noundef %map_bh, i32 noundef %create.0.i) #9
  %57 = ptrtoint ptr %b_private.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_private.i, align 8
  %59 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.i, label %land.lhs.true35.i, label %if.end30.i.if.then20_crit_edge

if.end30.i.if.then20_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

land.lhs.true35.i:                                ; preds = %if.end30.i
  %60 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %map_bh, align 4
  %62 = and i32 %61, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool37.not.i = icmp eq i32 %62, 0
  br i1 %tobool37.not.i, label %land.lhs.true35.i.if.end21_crit_edge, label %if.then38.i

land.lhs.true35.i.if.end21_crit_edge:             ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then38.i:                                      ; preds = %land.lhs.true35.i
  %63 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %inode.i, align 16
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb.i.i, align 4
  %67 = ptrtoint ptr %defer_completion.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %defer_completion.i.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then38.i.if.end21_crit_edge

if.then38.i.if.end21_crit_edge:                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.i.i:                                       ; preds = %if.then38.i
  %69 = ptrtoint ptr %defer_completion.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %defer_completion.i.i, align 4
  %s_dio_done_wq.i.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 51
  %70 = ptrtoint ptr %s_dio_done_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_dio_done_wq.i.i, align 32
  %tobool2.not.i.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i.i.if.end21_crit_edge

if.end.i.i.if.end21_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then3.i.i:                                     ; preds = %if.end.i.i
  %s_id.i.i.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 39
  %call.i.i.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, ptr noundef %s_id.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then3.i.i.if.then20_crit_edge, label %if.end.i.i.i

if.then3.i.i.if.then20_crit_edge:                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end.i.i.i:                                     ; preds = %if.then3.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_dio_done_wq.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  %72 = ptrtoint ptr %call.i.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %s_dio_done_wq.i.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i.i.i
  %73 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %s_dio_done_wq.i.i, i32 0, i32 %72) #9, !srcloc !34
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %73, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %__cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

__cmpxchg.exit.i.i.i:                             ; preds = %do.body.i.i.i.i
  %asmresult1.i.i.i.i = extractvalue { i32, i32 } %73, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %asmresult1.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %__cmpxchg.exit.i.i.i.if.end21_crit_edge, label %if.then17.i.i.i

__cmpxchg.exit.i.i.i.if.end21_crit_edge:          ; preds = %__cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17.i.i.i:                                  ; preds = %__cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %call.i.i.i) #9
  br label %if.end21

if.then20:                                        ; preds = %if.then3.i.i.if.then20_crit_edge, %if.end30.i.if.then20_crit_edge, %if.then17.if.then20_crit_edge
  %ret.0.i = phi i32 [ %call32.i, %if.end30.i.if.then20_crit_edge ], [ %39, %if.then17.if.then20_crit_edge ], [ -12, %if.then3.i.i.if.then20_crit_edge ]
  %74 = getelementptr inbounds %struct.page, ptr %retval.1.i, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i306 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i306, label %if.end.i.i307, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %76, -1
  br label %_compound_head.exit.i

if.end.i.i307:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %retval.1.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i307, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %77, %if.end.i.i307 ]
  %78 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %79 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i.i.i = icmp eq i32 %80, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %78, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %81, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_direct_IO, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !45

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %78, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup189_crit_edge

folio_put_testzero.exit.i.i.cleanup189_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %78) #9
  br label %cleanup189

if.end21:                                         ; preds = %if.then17.i.i.i, %__cmpxchg.exit.i.i.i.if.end21_crit_edge, %if.end.i.i.if.end21_crit_edge, %if.then38.i.if.end21_crit_edge, %land.lhs.true35.i.if.end21_crit_edge
  %82 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %map_bh, align 4
  %84 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool23.not = icmp eq i32 %84, 0
  br i1 %tobool23.not, label %if.end21.do_holes_crit_edge, label %if.end25

if.end21.do_holes_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_holes

if.end25:                                         ; preds = %if.end21
  %85 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %b_size.i, align 8
  %shr = lshr i32 %86, %1
  %87 = ptrtoint ptr %blocks_available to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shr, ptr %blocks_available, align 8
  %88 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %b_blocknr, align 8
  %90 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blkfactor, align 8
  %sh_prom = zext i32 %91 to i64
  %shl = shl i64 %89, %sh_prom
  %92 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %shl, ptr %next_block_for_io, align 8
  %93 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %map_bh, align 4
  %95 = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool29.not = icmp eq i32 %95, 0
  br i1 %tobool29.not, label %if.end25.if.end34_crit_edge, label %if.then30

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %b_bdev, align 8
  %98 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %b_blocknr, align 8
  %100 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %b_size.i, align 8
  %shr33 = lshr i32 %101, %add
  %conv = zext i32 %shr33 to i64
  tail call void @clean_bdev_aliases(ptr noundef %97, i64 noundef %99, i64 noundef %conv) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end25.if.end34_crit_edge
  %102 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %blkfactor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool36.not = icmp eq i32 %103, 0
  br i1 %tobool36.not, label %if.end34.do_holes_crit_edge, label %if.end38

if.end34.do_holes_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_holes

if.end38:                                         ; preds = %if.end34
  %notmask = shl nsw i32 -1, %103
  %sub41 = xor i32 %notmask, -1
  %104 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %block_in_file, align 8
  %106 = trunc i64 %105 to i32
  %conv44 = and i32 %106, %sub41
  %107 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %map_bh, align 4
  %109 = and i32 %108, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool46.not = icmp eq i32 %109, 0
  br i1 %tobool46.not, label %if.then47, label %if.end38.if.end51_crit_edge

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %conv48 = zext i32 %conv44 to i64
  %110 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %next_block_for_io, align 8
  %add50 = add i64 %111, %conv48
  store i64 %add50, ptr %next_block_for_io, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end38.if.end51_crit_edge
  %112 = ptrtoint ptr %blocks_available to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %blocks_available, align 8
  %sub53 = sub i32 %113, %conv44
  store i32 %sub53, ptr %blocks_available, align 8
  br label %do_holes

do_holes:                                         ; preds = %if.end51, %if.end34.do_holes_crit_edge, %if.end21.do_holes_crit_edge, %while.body15.do_holes_crit_edge
  %114 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %map_bh, align 4
  %116 = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool57.not = icmp eq i32 %116, 0
  br i1 %tobool57.not, label %if.then58, label %if.end87

if.then58:                                        ; preds = %do_holes
  %117 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp59 = icmp eq i32 %118, 1
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then58
  %119 = getelementptr inbounds %struct.page, ptr %retval.1.i, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 4
  %and.i.i308 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i308)
  %tobool.not.i.i309 = icmp eq i32 %and.i.i308, 0
  br i1 %tobool.not.i.i309, label %if.end.i.i312, label %if.then.i.i311, !prof !39

if.then.i.i311:                                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i310 = add i32 %121, -1
  br label %_compound_head.exit.i317

if.end.i.i312:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %retval.1.i to i32
  br label %_compound_head.exit.i317

_compound_head.exit.i317:                         ; preds = %if.end.i.i312, %if.then.i.i311
  %retval.0.i.i313 = phi i32 [ %sub.i.i310, %if.then.i.i311 ], [ %122, %if.end.i.i312 ]
  %123 = inttoptr i32 %retval.0.i.i313 to ptr
  %_refcount.i.i.i.i.i314 = getelementptr inbounds %struct.page, ptr %123, i32 0, i32 3
  %call.i.i.i.i.i.i.i315 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i314, i32 noundef 4) #9
  %124 = ptrtoint ptr %_refcount.i.i.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %_refcount.i.i.i.i.i314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp.i.i.i.i316 = icmp eq i32 %125, 0
  br i1 %cmp.i.i.i.i316, label %if.then.i.i.i.i318, label %do.end5.i.i.i.i322, !prof !40

if.then.i.i.i.i318:                               ; preds = %_compound_head.exit.i317
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %123, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i322:                               ; preds = %_compound_head.exit.i317
  %call.i.i.i10.i.i.i.i319 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i314, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i314, i32 1, i32 3, i32 1) #9
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i314, ptr %_refcount.i.i.i.i.i314, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i314) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i320 = extractvalue { i32, i32 } %126, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i320)
  %cmp.i.i.i.i.i.i.i321 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i320, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_direct_IO, %if.then.i.i.i.i.i324)) #9
          to label %folio_put_testzero.exit.i.i325 [label %if.then.i.i.i.i.i324], !srcloc !45

if.then.i.i.i.i.i324:                             ; preds = %do.end5.i.i.i.i322
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i323 = zext i1 %cmp.i.i.i.i.i.i.i321 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %123, i32 noundef -1, i32 noundef %conv.i.i.i.i.i323) #9
  br label %folio_put_testzero.exit.i.i325

folio_put_testzero.exit.i.i325:                   ; preds = %if.then.i.i.i.i.i324, %do.end5.i.i.i.i322
  br i1 %cmp.i.i.i.i.i.i.i321, label %if.then.i4.i326, label %folio_put_testzero.exit.i.i325.cleanup189_crit_edge

folio_put_testzero.exit.i.i325.cleanup189_crit_edge: ; preds = %folio_put_testzero.exit.i.i325
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.then.i4.i326:                                  ; preds = %folio_put_testzero.exit.i.i325
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %123) #9
  br label %cleanup189

if.end62:                                         ; preds = %if.then58
  %127 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %inode.i, align 16
  %call63 = tail call fastcc i64 @i_size_read(ptr noundef %128)
  %add67 = add i64 %sub66, %call63
  %and71 = and i64 %add67, %neg
  %129 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %block_in_file, align 8
  %shr74 = ashr i64 %and71, %sh_prom73
  call void @__sanitizer_cov_trace_cmp8(i64 %130, i64 %shr74)
  %cmp75.not = icmp ult i64 %130, %shr74
  br i1 %cmp75.not, label %cleanup86, label %if.then77

if.then77:                                        ; preds = %if.end62
  %131 = getelementptr inbounds %struct.page, ptr %retval.1.i, i32 0, i32 1
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %131, align 4
  %and.i.i328 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i328)
  %tobool.not.i.i329 = icmp eq i32 %and.i.i328, 0
  br i1 %tobool.not.i.i329, label %if.end.i.i332, label %if.then.i.i331, !prof !39

if.then.i.i331:                                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i330 = add i32 %133, -1
  br label %_compound_head.exit.i337

if.end.i.i332:                                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %retval.1.i to i32
  br label %_compound_head.exit.i337

_compound_head.exit.i337:                         ; preds = %if.end.i.i332, %if.then.i.i331
  %retval.0.i.i333 = phi i32 [ %sub.i.i330, %if.then.i.i331 ], [ %134, %if.end.i.i332 ]
  %135 = inttoptr i32 %retval.0.i.i333 to ptr
  %_refcount.i.i.i.i.i334 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 3
  %call.i.i.i.i.i.i.i335 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i334, i32 noundef 4) #9
  %136 = ptrtoint ptr %_refcount.i.i.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %_refcount.i.i.i.i.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i.i.i.i336 = icmp eq i32 %137, 0
  br i1 %cmp.i.i.i.i336, label %if.then.i.i.i.i338, label %do.end5.i.i.i.i342, !prof !40

if.then.i.i.i.i338:                               ; preds = %_compound_head.exit.i337
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %135, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i342:                               ; preds = %_compound_head.exit.i337
  %call.i.i.i10.i.i.i.i339 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i334, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i334, i32 1, i32 3, i32 1) #9
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i334, ptr %_refcount.i.i.i.i.i334, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i334) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i340 = extractvalue { i32, i32 } %138, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i340)
  %cmp.i.i.i.i.i.i.i341 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i340, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_direct_IO, %if.then.i.i.i.i.i344)) #9
          to label %folio_put_testzero.exit.i.i345 [label %if.then.i.i.i.i.i344], !srcloc !45

if.then.i.i.i.i.i344:                             ; preds = %do.end5.i.i.i.i342
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i343 = zext i1 %cmp.i.i.i.i.i.i.i341 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %135, i32 noundef -1, i32 noundef %conv.i.i.i.i.i343) #9
  br label %folio_put_testzero.exit.i.i345

folio_put_testzero.exit.i.i345:                   ; preds = %if.then.i.i.i.i.i344, %do.end5.i.i.i.i342
  br i1 %cmp.i.i.i.i.i.i.i341, label %if.then.i4.i346, label %folio_put_testzero.exit.i.i345.cleanup189_crit_edge

folio_put_testzero.exit.i.i345.cleanup189_crit_edge: ; preds = %folio_put_testzero.exit.i.i345
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.then.i4.i346:                                  ; preds = %folio_put_testzero.exit.i.i345
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %135) #9
  br label %cleanup189

cleanup86:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %add.i348 = add i32 %from.0, %shl64
  tail call void @zero_user_segments(ptr noundef %retval.1.i, i32 noundef %from.0, i32 noundef %add.i348, i32 noundef 0, i32 noundef 0) #9
  %139 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %block_in_file, align 8
  %inc81 = add i64 %140, 1
  store i64 %inc81, ptr %block_in_file, align 8
  %141 = ptrtoint ptr %result146 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %result146, align 4
  %add85 = add i32 %142, %shl64
  store i32 %add85, ptr %result146, align 4
  br label %do.body151

if.end87:                                         ; preds = %do_holes
  %143 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %blkfactor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool89.not = icmp eq i32 %144, 0
  br i1 %tobool89.not, label %if.end87.if.end95_crit_edge, label %land.rhs

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

land.rhs:                                         ; preds = %if.end87
  %145 = ptrtoint ptr %start_zero_done to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %start_zero_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool90.not = icmp eq i32 %146, 0
  br i1 %tobool90.not, label %if.then94, label %land.rhs.if.end95_crit_edge, !prof !40

land.rhs.if.end95_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then94:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dio_zero_block(ptr noundef %dio, ptr noundef %sdio, i32 noundef 0, ptr noundef %map_bh)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %land.rhs.if.end95_crit_edge, %if.end87.if.end95_crit_edge
  %147 = ptrtoint ptr %blocks_available to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %blocks_available, align 8
  %sub97 = sub i32 %cond11, %from.0
  %shr98 = lshr i32 %sub97, %1
  %149 = tail call i32 @llvm.umin.i32(i32 %148, i32 %shr98)
  %150 = ptrtoint ptr %final_block_in_request to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %final_block_in_request, align 8
  %152 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %block_in_file, align 8
  %sub105 = sub i64 %151, %153
  %conv106 = trunc i64 %sub105 to i32
  %154 = tail call i32 @llvm.umin.i32(i32 %149, i32 %conv106)
  %shl111 = shl i32 %154, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl111)
  %cmp112 = icmp eq i32 %shl111, 0
  br i1 %cmp112, label %do.body121, label %do.end127, !prof !40

do.body121:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1045, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %148)
  %cmp129 = icmp eq i32 %154, %148
  br i1 %cmp129, label %if.then131, label %do.end127.if.end133_crit_edge

do.end127.if.end133_crit_edge:                    ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then131:                                       ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %map_bh, align 4
  %shr.i.i301 = lshr i32 %156, 9
  %and1.i.i302 = and i32 %shr.i.i301, 1
  %157 = ptrtoint ptr %boundary to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %and1.i.i302, ptr %boundary, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %do.end127.if.end133_crit_edge
  %158 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %next_block_for_io, align 8
  %call135 = tail call fastcc i32 @submit_page_section(ptr noundef %dio, ptr noundef %sdio, ptr noundef %retval.1.i, i32 noundef %from.0, i32 noundef %shl111, i64 noundef %159, ptr noundef %map_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.end133
  %160 = getelementptr inbounds %struct.page, ptr %retval.1.i, i32 0, i32 1
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %160, align 4
  %and.i.i349 = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i349)
  %tobool.not.i.i350 = icmp eq i32 %and.i.i349, 0
  br i1 %tobool.not.i.i350, label %if.end.i.i353, label %if.then.i.i352, !prof !39

if.then.i.i352:                                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i351 = add i32 %162, -1
  br label %_compound_head.exit.i358

if.end.i.i353:                                    ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %retval.1.i to i32
  br label %_compound_head.exit.i358

_compound_head.exit.i358:                         ; preds = %if.end.i.i353, %if.then.i.i352
  %retval.0.i.i354 = phi i32 [ %sub.i.i351, %if.then.i.i352 ], [ %163, %if.end.i.i353 ]
  %164 = inttoptr i32 %retval.0.i.i354 to ptr
  %_refcount.i.i.i.i.i355 = getelementptr inbounds %struct.page, ptr %164, i32 0, i32 3
  %call.i.i.i.i.i.i.i356 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i355, i32 noundef 4) #9
  %165 = ptrtoint ptr %_refcount.i.i.i.i.i355 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %_refcount.i.i.i.i.i355, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i.i.i.i357 = icmp eq i32 %166, 0
  br i1 %cmp.i.i.i.i357, label %if.then.i.i.i.i359, label %do.end5.i.i.i.i363, !prof !40

if.then.i.i.i.i359:                               ; preds = %_compound_head.exit.i358
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %164, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i363:                               ; preds = %_compound_head.exit.i358
  %call.i.i.i10.i.i.i.i360 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i355, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i355, i32 1, i32 3, i32 1) #9
  %167 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i355, ptr %_refcount.i.i.i.i.i355, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i355) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i361 = extractvalue { i32, i32 } %167, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i361)
  %cmp.i.i.i.i.i.i.i362 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i361, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_direct_IO, %if.then.i.i.i.i.i365)) #9
          to label %folio_put_testzero.exit.i.i366 [label %if.then.i.i.i.i.i365], !srcloc !45

if.then.i.i.i.i.i365:                             ; preds = %do.end5.i.i.i.i363
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i364 = zext i1 %cmp.i.i.i.i.i.i.i362 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %164, i32 noundef -1, i32 noundef %conv.i.i.i.i.i364) #9
  br label %folio_put_testzero.exit.i.i366

folio_put_testzero.exit.i.i366:                   ; preds = %if.then.i.i.i.i.i365, %do.end5.i.i.i.i363
  br i1 %cmp.i.i.i.i.i.i.i362, label %if.then.i4.i367, label %folio_put_testzero.exit.i.i366.cleanup189_crit_edge

folio_put_testzero.exit.i.i366.cleanup189_crit_edge: ; preds = %folio_put_testzero.exit.i.i366
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.then.i4.i367:                                  ; preds = %folio_put_testzero.exit.i.i366
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %164) #9
  br label %cleanup189

if.end138:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %conv139 = zext i32 %154 to i64
  %168 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %next_block_for_io, align 8
  %add141 = add i64 %169, %conv139
  store i64 %add141, ptr %next_block_for_io, align 8
  %170 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %block_in_file, align 8
  %add144 = add i64 %171, %conv139
  store i64 %add144, ptr %block_in_file, align 8
  %add145 = add i32 %shl111, %from.0
  %172 = ptrtoint ptr %result146 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %result146, align 4
  %add147 = add i32 %173, %shl111
  store i32 %add147, ptr %result146, align 4
  %174 = ptrtoint ptr %blocks_available to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %blocks_available, align 8
  %sub149 = sub i32 %175, %154
  store i32 %sub149, ptr %blocks_available, align 8
  br label %do.body151

do.body151:                                       ; preds = %if.end138, %cleanup86
  %from.2 = phi i32 [ %add145, %if.end138 ], [ %add.i348, %cleanup86 ]
  %176 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %block_in_file, align 8
  %178 = ptrtoint ptr %final_block_in_request to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %final_block_in_request, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %177, i64 %179)
  %cmp154 = icmp ugt i64 %177, %179
  br i1 %cmp154, label %do.body163, label %do.end171, !prof !40

do.body163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1065, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.end171:                                        ; preds = %do.body151
  %cmp174 = icmp eq i64 %177, %179
  br i1 %cmp174, label %do.end171.while.end_crit_edge, label %do.end171.while.cond13_crit_edge

do.end171.while.cond13_crit_edge:                 ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond13

do.end171.while.end_crit_edge:                    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end171.while.end_crit_edge, %while.cond13.while.end_crit_edge
  %180 = getelementptr inbounds %struct.page, ptr %retval.1.i, i32 0, i32 1
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %180, align 4
  %and.i.i369 = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i369)
  %tobool.not.i.i370 = icmp eq i32 %and.i.i369, 0
  br i1 %tobool.not.i.i370, label %if.end.i.i373, label %if.then.i.i372, !prof !39

if.then.i.i372:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i371 = add i32 %182, -1
  br label %_compound_head.exit.i378

if.end.i.i373:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %retval.1.i to i32
  br label %_compound_head.exit.i378

_compound_head.exit.i378:                         ; preds = %if.end.i.i373, %if.then.i.i372
  %retval.0.i.i374 = phi i32 [ %sub.i.i371, %if.then.i.i372 ], [ %183, %if.end.i.i373 ]
  %184 = inttoptr i32 %retval.0.i.i374 to ptr
  %_refcount.i.i.i.i.i375 = getelementptr inbounds %struct.page, ptr %184, i32 0, i32 3
  %call.i.i.i.i.i.i.i376 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i375, i32 noundef 4) #9
  %185 = ptrtoint ptr %_refcount.i.i.i.i.i375 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %_refcount.i.i.i.i.i375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i.i.i.i377 = icmp eq i32 %186, 0
  br i1 %cmp.i.i.i.i377, label %if.then.i.i.i.i379, label %do.end5.i.i.i.i383, !prof !40

if.then.i.i.i.i379:                               ; preds = %_compound_head.exit.i378
  call void @__sanitizer_cov_trace_pc() #11
  %187 = inttoptr i32 %retval.0.i.i374 to ptr
  tail call void @dump_page(ptr noundef %187, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i383:                               ; preds = %_compound_head.exit.i378
  %call.i.i.i10.i.i.i.i380 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i375, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i375, i32 1, i32 3, i32 1) #9
  %188 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i375, ptr %_refcount.i.i.i.i.i375, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i375) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i381 = extractvalue { i32, i32 } %188, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i381)
  %cmp.i.i.i.i.i.i.i382 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i381, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_direct_IO, %if.then.i.i.i.i.i385)) #9
          to label %folio_put_testzero.exit.i.i386 [label %if.then.i.i.i.i.i385], !srcloc !45

if.then.i.i.i.i.i385:                             ; preds = %do.end5.i.i.i.i383
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i384 = zext i1 %cmp.i.i.i.i.i.i.i382 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %184, i32 noundef -1, i32 noundef %conv.i.i.i.i.i384) #9
  br label %folio_put_testzero.exit.i.i386

folio_put_testzero.exit.i.i386:                   ; preds = %if.then.i.i.i.i.i385, %do.end5.i.i.i.i383
  br i1 %cmp.i.i.i.i.i.i.i382, label %if.then.i4.i387, label %folio_put_testzero.exit.i.i386.cleanup183_crit_edge

folio_put_testzero.exit.i.i386.cleanup183_crit_edge: ; preds = %folio_put_testzero.exit.i.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup183

if.then.i4.i387:                                  ; preds = %folio_put_testzero.exit.i.i386
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %184) #9
  br label %cleanup183

cleanup183:                                       ; preds = %if.then.i4.i387, %folio_put_testzero.exit.i.i386.cleanup183_crit_edge
  %189 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %block_in_file, align 8
  %191 = ptrtoint ptr %final_block_in_request to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %final_block_in_request, align 8
  %cmp = icmp ult i64 %190, %192
  br i1 %cmp, label %cleanup183.while.body_crit_edge, label %cleanup183.cleanup189_crit_edge

cleanup183.cleanup189_crit_edge:                  ; preds = %cleanup183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

cleanup183.while.body_crit_edge:                  ; preds = %cleanup183
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup189:                                       ; preds = %cleanup183.cleanup189_crit_edge, %if.then.i4.i367, %folio_put_testzero.exit.i.i366.cleanup189_crit_edge, %if.then.i4.i346, %folio_put_testzero.exit.i.i345.cleanup189_crit_edge, %if.then.i4.i326, %folio_put_testzero.exit.i.i325.cleanup189_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup189_crit_edge, %if.then, %entry.cleanup189_crit_edge
  %retval.7 = phi i32 [ %22, %if.then ], [ %call135, %if.then.i4.i367 ], [ %call135, %folio_put_testzero.exit.i.i366.cleanup189_crit_edge ], [ %ret.0.i, %if.then.i4.i ], [ %ret.0.i, %folio_put_testzero.exit.i.i.cleanup189_crit_edge ], [ -15, %folio_put_testzero.exit.i.i325.cleanup189_crit_edge ], [ -15, %if.then.i4.i326 ], [ 0, %folio_put_testzero.exit.i.i345.cleanup189_crit_edge ], [ 0, %if.then.i4.i346 ], [ 0, %entry.cleanup189_crit_edge ], [ 0, %cleanup183.cleanup189_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dio_zero_block(ptr noundef %dio, ptr noundef %sdio, i32 noundef %end, ptr noundef %map_bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %start_zero_done = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 3
  %0 = ptrtoint ptr %start_zero_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %start_zero_done, align 4
  %blkfactor = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 2
  %1 = ptrtoint ptr %blkfactor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %blkfactor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %map_bh, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shl = shl nuw i32 1, %2
  %block_in_file = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 5
  %6 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %block_in_file, align 8
  %sub = add i32 %shl, -1
  %8 = trunc i64 %7 to i32
  %conv3 = and i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool4.not = icmp eq i32 %conv3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool7.not = icmp eq i32 %end, 0
  %sub9 = sub i32 %shl, %conv3
  %spec.select = select i1 %tobool7.not, i32 %conv3, i32 %sub9
  %blkbits = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 1
  %9 = ptrtoint ptr %blkbits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blkbits, align 4
  %shl11 = shl i32 %spec.select, %10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %11 = load ptr, ptr @empty_zero_page, align 4
  %next_block_for_io = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 14
  %12 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %next_block_for_io, align 8
  %call12 = tail call fastcc i32 @submit_page_section(ptr noundef %dio, ptr noundef %sdio, ptr noundef %11, i32 noundef 0, i32 noundef %shl11, i64 noundef %13, ptr noundef %map_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %conv16 = zext i32 %spec.select to i64
  %14 = ptrtoint ptr %next_block_for_io to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %next_block_for_io, align 8
  %add = add i64 %15, %conv16
  store i64 %add, ptr %next_block_for_io, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dio_send_cur_page(ptr noundef %dio, ptr noundef %sdio, ptr nocapture noundef readonly %map_bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then10_crit_edge, label %if.then

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then:                                          ; preds = %entry
  %final_block_in_bio = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 13
  %2 = ptrtoint ptr %final_block_in_bio to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %final_block_in_bio, align 8
  %cur_page_block = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 18
  %4 = ptrtoint ptr %cur_page_block to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cur_page_block, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.not = icmp eq i64 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.if.then5_crit_edge

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.then
  %logical_offset_in_bio = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %6 = ptrtoint ptr %logical_offset_in_bio to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %logical_offset_in_bio, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_size, align 8
  %conv = zext i32 %9 to i64
  %add = add i64 %7, %conv
  %cur_page_fs_offset = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 19
  %10 = ptrtoint ptr %cur_page_fs_offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cur_page_fs_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %add)
  %cmp3.not = icmp eq i64 %11, %add
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dio, ptr %bi_private.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %14, -9
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bio_lock.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock.i) #9
  %refcount.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 14
  %15 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcount.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %refcount.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock.i, i32 noundef %call3.i) #9
  %is_async.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 10
  %17 = ptrtoint ptr %is_async.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %is_async.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then5.if.end.i_crit_edge, label %land.lhs.true.i

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then5
  %op.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %19 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.i = icmp eq i32 %20, 0
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %should_dirty.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 12
  %21 = ptrtoint ptr %should_dirty.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %should_dirty.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not.i = icmp eq i8 %22, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bio_set_pages_dirty(ptr noundef nonnull %1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then5.if.end.i_crit_edge
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_disk.i, align 8
  %bio_disk.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 3
  %27 = ptrtoint ptr %bio_disk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %bio_disk.i, align 4
  %submit_io.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 11
  %28 = ptrtoint ptr %submit_io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %submit_io.i, align 8
  %tobool12.not.i = icmp eq ptr %29, null
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 4
  %30 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inode.i, align 16
  %logical_offset_in_bio.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %32 = ptrtoint ptr %logical_offset_in_bio.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %logical_offset_in_bio.i, align 8
  tail call void %29(ptr noundef nonnull %1, ptr noundef %31, i64 noundef %33) #9
  br label %dio_bio_submit.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @submit_bio(ptr noundef nonnull %1) #9
  br label %dio_bio_submit.exit

dio_bio_submit.exit:                              ; preds = %if.else.i, %if.then13.i
  %34 = ptrtoint ptr %sdio to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %sdio, align 8
  %boundary.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 9
  %35 = ptrtoint ptr %boundary.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %boundary.i, align 8
  %logical_offset_in_bio17.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %36 = ptrtoint ptr %logical_offset_in_bio17.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %logical_offset_in_bio17.i, align 8
  br label %if.then10

if.end6:                                          ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %sdio to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load ptr, ptr %sdio, align 8
  %cmp8 = icmp eq ptr %.pr, null
  br i1 %cmp8, label %if.end6.if.then10_crit_edge, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %if.end6.if.then10_crit_edge, %dio_bio_submit.exit, %entry.if.then10_crit_edge
  %cur_page_block11 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 18
  %38 = ptrtoint ptr %cur_page_block11 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cur_page_block11, align 8
  %call = tail call fastcc i32 @dio_new_bio(ptr noundef %dio, ptr noundef %sdio, i64 noundef %39, ptr noundef %map_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.out_crit_edge

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %call16 = tail call fastcc i32 @dio_bio_add_page(ptr noundef %sdio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end15.out_crit_edge, label %if.then19

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then19:                                        ; preds = %if.end15
  %40 = ptrtoint ptr %sdio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdio, align 8
  %bi_private.i61 = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %bi_private.i61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dio, ptr %bi_private.i61, align 4
  %bi_flags.i.i62 = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 3
  %43 = ptrtoint ptr %bi_flags.i.i62 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bi_flags.i.i62, align 4
  %conv1.i.i63 = and i16 %44, -9
  store i16 %conv1.i.i63, ptr %bi_flags.i.i62, align 4
  %bio_lock.i64 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 8
  %call3.i65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock.i64) #9
  %refcount.i66 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 14
  %45 = ptrtoint ptr %refcount.i66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %refcount.i66, align 4
  %inc.i67 = add i32 %46, 1
  store i32 %inc.i67, ptr %refcount.i66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock.i64, i32 noundef %call3.i65) #9
  %is_async.i68 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 10
  %47 = ptrtoint ptr %is_async.i68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %is_async.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i69 = icmp eq i32 %48, 0
  br i1 %tobool.not.i69, label %if.then19.if.end.i82_crit_edge, label %land.lhs.true.i72

if.then19.if.end.i82_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i82

land.lhs.true.i72:                                ; preds = %if.then19
  %op.i70 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %49 = ptrtoint ptr %op.i70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %op.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp7.i71 = icmp eq i32 %50, 0
  br i1 %cmp7.i71, label %land.lhs.true9.i75, label %land.lhs.true.i72.if.end.i82_crit_edge

land.lhs.true.i72.if.end.i82_crit_edge:           ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i82

land.lhs.true9.i75:                               ; preds = %land.lhs.true.i72
  %should_dirty.i73 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 12
  %51 = ptrtoint ptr %should_dirty.i73 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %should_dirty.i73, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool10.not.i74 = icmp eq i8 %52, 0
  br i1 %tobool10.not.i74, label %land.lhs.true9.i75.if.end.i82_crit_edge, label %if.then.i76

land.lhs.true9.i75.if.end.i82_crit_edge:          ; preds = %land.lhs.true9.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i82

if.then.i76:                                      ; preds = %land.lhs.true9.i75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bio_set_pages_dirty(ptr noundef %41) #9
  br label %if.end.i82

if.end.i82:                                       ; preds = %if.then.i76, %land.lhs.true9.i75.if.end.i82_crit_edge, %land.lhs.true.i72.if.end.i82_crit_edge, %if.then19.if.end.i82_crit_edge
  %bi_bdev.i77 = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 1
  %53 = ptrtoint ptr %bi_bdev.i77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bi_bdev.i77, align 4
  %bd_disk.i78 = getelementptr inbounds %struct.block_device, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %bd_disk.i78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bd_disk.i78, align 8
  %bio_disk.i79 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 3
  %57 = ptrtoint ptr %bio_disk.i79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %bio_disk.i79, align 4
  %submit_io.i80 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 11
  %58 = ptrtoint ptr %submit_io.i80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %submit_io.i80, align 8
  %tobool12.not.i81 = icmp eq ptr %59, null
  br i1 %tobool12.not.i81, label %if.else.i86, label %if.then13.i85

if.then13.i85:                                    ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i83 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 4
  %60 = ptrtoint ptr %inode.i83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %inode.i83, align 16
  %logical_offset_in_bio.i84 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %62 = ptrtoint ptr %logical_offset_in_bio.i84 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %logical_offset_in_bio.i84, align 8
  tail call void %59(ptr noundef %41, ptr noundef %61, i64 noundef %63) #9
  br label %dio_bio_submit.exit89

if.else.i86:                                      ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @submit_bio(ptr noundef %41) #9
  br label %dio_bio_submit.exit89

dio_bio_submit.exit89:                            ; preds = %if.else.i86, %if.then13.i85
  %64 = ptrtoint ptr %sdio to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %sdio, align 8
  %boundary.i87 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 9
  %65 = ptrtoint ptr %boundary.i87 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %boundary.i87, align 8
  %logical_offset_in_bio17.i88 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %66 = ptrtoint ptr %logical_offset_in_bio17.i88 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %logical_offset_in_bio17.i88, align 8
  %cur_page_block20 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 18
  %67 = ptrtoint ptr %cur_page_block20 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %cur_page_block20, align 8
  %call21 = tail call fastcc i32 @dio_new_bio(ptr noundef %dio, ptr noundef %sdio, i64 noundef %68, ptr noundef %map_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %dio_bio_submit.exit89.out_crit_edge

dio_bio_submit.exit89.out_crit_edge:              ; preds = %dio_bio_submit.exit89
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then24:                                        ; preds = %dio_bio_submit.exit89
  %call25 = tail call fastcc i32 @dio_bio_add_page(ptr noundef %sdio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.then24.out_crit_edge, label %do.body31, !prof !39

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 781, 0\0A.popsection", ""() #9, !srcloc !59
  unreachable

out:                                              ; preds = %if.then24.out_crit_edge, %dio_bio_submit.exit89.out_crit_edge, %if.end15.out_crit_edge, %if.then10.out_crit_edge
  %ret.1 = phi i32 [ %call, %if.then10.out_crit_edge ], [ 0, %if.then24.out_crit_edge ], [ %call21, %dio_bio_submit.exit89.out_crit_edge ], [ 0, %if.end15.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dio_complete(ptr noundef %dio, i32 noundef %ret, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iocb = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 17
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 16
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %ret)
  %cmp = icmp eq i32 %ret, -529
  %spec.store.select = select i1 %cmp, i32 0, i32 %ret
  %result = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 18
  %4 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then1

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then1:                                         ; preds = %entry
  %op = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %land.lhs.true, label %if.then1.if.end9_crit_edge

if.then1.if.end9_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then1
  %conv = sext i32 %5 to i64
  %add = add i64 %3, %conv
  %i_size = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 5
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp4 = icmp sgt i64 %add, %9
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %9, %3
  %conv8 = trunc i64 %sub to i32
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %if.then1.if.end9_crit_edge
  %transferred.0 = phi i32 [ %conv8, %if.then6 ], [ %5, %land.lhs.true.if.end9_crit_edge ], [ %5, %if.then1.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %spec.store.select)
  %cmp10 = icmp eq i32 %spec.store.select, -14
  br i1 %cmp10, label %land.lhs.true14, label %if.end9.if.end18_crit_edge, !prof !40

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transferred.0)
  %tobool15.not = icmp eq i32 %transferred.0, 0
  br i1 %tobool15.not, label %land.lhs.true14.if.end26.thread_crit_edge, label %land.lhs.true14.if.then21_crit_edge

land.lhs.true14.if.then21_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

land.lhs.true14.if.end26.thread_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.thread

if.end18:                                         ; preds = %if.end9.if.end18_crit_edge, %entry.if.end18_crit_edge
  %transferred.1 = phi i32 [ %transferred.0, %if.end9.if.end18_crit_edge ], [ 0, %entry.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp19 = icmp eq i32 %spec.store.select, 0
  br i1 %cmp19, label %if.end18.if.then21_crit_edge, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %if.end18.if.then21_crit_edge, %land.lhs.true14.if.then21_crit_edge
  %transferred.1138 = phi i32 [ %transferred.1, %if.end18.if.then21_crit_edge ], [ %transferred.0, %land.lhs.true14.if.then21_crit_edge ]
  %page_errors = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 9
  %10 = ptrtoint ptr %page_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_errors, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %transferred.1137 = phi i32 [ %transferred.1138, %if.then21 ], [ %transferred.1, %if.end18.if.end22_crit_edge ]
  %ret.addr.1 = phi i32 [ %11, %if.then21 ], [ %spec.store.select, %if.end18.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.addr.1)
  %cmp23 = icmp eq i32 %ret.addr.1, 0
  br i1 %cmp23, label %if.end26, label %if.end22.if.end26.thread_crit_edge

if.end22.if.end26.thread_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.thread

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %io_error = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 13
  %12 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_error, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27 = icmp eq i32 %13, 0
  %spec.select = select i1 %cmp27, i32 %transferred.1137, i32 %13
  br label %if.end26.thread

if.end26.thread:                                  ; preds = %if.end26, %if.end22.if.end26.thread_crit_edge, %land.lhs.true14.if.end26.thread_crit_edge
  %transferred.1137146150 = phi i32 [ %transferred.1137, %if.end22.if.end26.thread_crit_edge ], [ 0, %land.lhs.true14.if.end26.thread_crit_edge ], [ %transferred.1137, %if.end26 ]
  %14 = phi i32 [ %ret.addr.1, %if.end22.if.end26.thread_crit_edge ], [ -14, %land.lhs.true14.if.end26.thread_crit_edge ], [ %spec.select, %if.end26 ]
  %end_io = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 6
  %15 = ptrtoint ptr %end_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end_io, align 32
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %if.end26.thread.if.end38_crit_edge, label %if.then32

if.end26.thread.if.end38_crit_edge:               ; preds = %if.end26.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then32:                                        ; preds = %if.end26.thread
  call void @__sanitizer_cov_trace_pc() #11
  %private = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 7
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %call = tail call i32 %16(ptr noundef %1, i64 noundef %3, i32 noundef %14, ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  %spec.select132 = select i1 %tobool35.not, i32 %14, i32 %call
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end26.thread.if.end38_crit_edge
  %ret.addr.4 = phi i32 [ %14, %if.end26.thread.if.end38_crit_edge ], [ %spec.select132, %if.then32 ]
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.addr.4)
  %cmp41 = icmp sgt i32 %ret.addr.4, 0
  %or.cond = select i1 %tobool39.not, i1 %cmp41, i1 false
  br i1 %or.cond, label %land.lhs.true43, label %if.end38.if.end63_crit_edge

if.end38.if.end63_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true43:                                  ; preds = %if.end38
  %op44 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %19 = ptrtoint ptr %op44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %op44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp45 = icmp eq i32 %20, 1
  br i1 %cmp45, label %land.lhs.true47, label %land.lhs.true43.if.end63_crit_edge

land.lhs.true43.if.end63_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %inode = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 4
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %inode, align 16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool48.not = icmp eq i32 %26, 0
  br i1 %tobool48.not, label %land.lhs.true47.if.end63_crit_edge, label %if.then49

land.lhs.true47.if.end63_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then49:                                        ; preds = %land.lhs.true47
  %27 = lshr i64 %3, 12
  %conv52 = trunc i64 %27 to i32
  %conv53152 = zext i32 %ret.addr.4 to i64
  %add54 = add i64 %3, 17592186044415
  %sub55 = add i64 %add54, %conv53152
  %28 = lshr i64 %sub55, 12
  %conv57 = trunc i64 %28 to i32
  %call58 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %24, i32 noundef %conv52, i32 noundef %conv57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then49.if.end63_crit_edge, label %if.then60

if.then49.if.end63_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then60:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iocb, align 16
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  tail call void @dio_warn_stale_pagecache(ptr noundef %32) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.then49.if.end63_crit_edge, %land.lhs.true47.if.end63_crit_edge, %land.lhs.true43.if.end63_crit_edge, %if.end38.if.end63_crit_edge
  %inode64 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 4
  %33 = ptrtoint ptr %inode64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inode64, align 16
  %i_dio_count.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %i_dio_count.i, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_dio_count.i, ptr %i_dio_count.i, i32 1, ptr elementtype(i32) %i_dio_count.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end63.inode_dio_end.exit_crit_edge

if.end63.inode_dio_end.exit_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_dio_end.exit

if.then.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %i_state.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 24
  tail call void @wake_up_bit(ptr noundef %i_state.i, i32 noundef 9) #9
  br label %inode_dio_end.exit

inode_dio_end.exit:                               ; preds = %if.then.i, %if.end63.inode_dio_end.exit_crit_edge
  %and65 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %inode_dio_end.exit.if.end84_crit_edge, label %if.then67

inode_dio_end.exit.if.end84_crit_edge:            ; preds = %inode_dio_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then67:                                        ; preds = %inode_dio_end.exit
  %conv68 = sext i32 %transferred.1137146150 to i64
  %36 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iocb, align 16
  %ki_pos70 = getelementptr inbounds %struct.kiocb, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ki_pos70 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ki_pos70, align 8
  %add71 = add i64 %39, %conv68
  store i64 %add71, ptr %ki_pos70, align 8
  br i1 %cmp41, label %land.lhs.true74, label %if.then67.if.end81_crit_edge

if.then67.if.end81_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true74:                                  ; preds = %if.then67
  %op75 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %40 = ptrtoint ptr %op75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %op75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp76 = icmp eq i32 %41, 1
  br i1 %cmp76, label %if.then78, label %land.lhs.true74.if.end81_crit_edge

land.lhs.true74.if.end81_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then78:                                        ; preds = %land.lhs.true74
  %42 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iocb, align 16
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then78.if.end8.i_crit_edge, label %if.then.i133

if.then78.if.end8.i_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i133:                                     ; preds = %if.then78
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 8
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ki_pos.i, align 8
  %conv.i151 = zext i32 %ret.addr.4 to i64
  %sub.i = sub i64 %49, %conv.i151
  %sub2.i = add i64 %49, -1
  %and4.i = lshr i32 %45, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %50 = xor i32 %and4.lobit.i, 1
  %call.i = tail call i32 @vfs_fsync_range(ptr noundef %47, i64 noundef %sub.i, i64 noundef %sub2.i, i32 noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i133.if.end8.i_crit_edge, label %if.then.i133.if.end81_crit_edge

if.then.i133.if.end81_crit_edge:                  ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then.i133.if.end8.i_crit_edge:                 ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i133.if.end8.i_crit_edge, %if.then78.if.end8.i_crit_edge
  br label %if.end81

if.end81:                                         ; preds = %if.end8.i, %if.then.i133.if.end81_crit_edge, %land.lhs.true74.if.end81_crit_edge, %if.then67.if.end81_crit_edge
  %ret.addr.5 = phi i32 [ %ret.addr.4, %land.lhs.true74.if.end81_crit_edge ], [ %ret.addr.4, %if.then67.if.end81_crit_edge ], [ %call.i, %if.then.i133.if.end81_crit_edge ], [ %ret.addr.4, %if.end8.i ]
  %51 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iocb, align 16
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ki_complete, align 8
  tail call void %54(ptr noundef %52, i32 noundef %ret.addr.5) #9
  br label %if.end84

if.end84:                                         ; preds = %if.end81, %inode_dio_end.exit.if.end84_crit_edge
  %ret.addr.6 = phi i32 [ %ret.addr.5, %if.end81 ], [ %ret.addr.4, %inode_dio_end.exit.if.end84_crit_edge ]
  %55 = load ptr, ptr @dio_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %55, ptr noundef %dio) #9
  ret i32 %ret.addr.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_page_section(ptr noundef %dio, ptr noundef %sdio, ptr noundef %page, i32 noundef %offset, i32 noundef %len, i64 noundef %blocknr, ptr nocapture noundef readonly %map_bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %boundary1 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 9
  %0 = ptrtoint ptr %boundary1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boundary1, align 8
  %op = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i32 %len to i64
  %4 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %write_bytes.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 155, i32 5
  %8 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %write_bytes.i, align 8
  %add.i = add i64 %9, %conv.i
  store i64 %add.i, ptr %write_bytes.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cur_page = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 15
  %10 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_page, align 8
  %cmp2 = icmp eq ptr %11, %page
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %cur_page_offset = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 16
  %12 = ptrtoint ptr %cur_page_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_page_offset, align 4
  %cur_page_len = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 17
  %14 = ptrtoint ptr %cur_page_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_page_len, align 8
  %add = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp3 = icmp eq i32 %add, %offset
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true4:                                   ; preds = %land.lhs.true
  %cur_page_block = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 18
  %16 = ptrtoint ptr %cur_page_block to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cur_page_block, align 8
  %blkbits = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 1
  %18 = ptrtoint ptr %blkbits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blkbits, align 4
  %shr = lshr i32 %15, %19
  %conv = zext i32 %shr to i64
  %add6 = add i64 %17, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add6, i64 %blocknr)
  %cmp7 = icmp eq i64 %add6, %blocknr
  br i1 %cmp7, label %if.then9, label %land.lhs.true4.if.end12_crit_edge

land.lhs.true4.if.end12_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  %add11 = add i32 %15, %len
  %20 = ptrtoint ptr %cur_page_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add11, ptr %cur_page_len, align 8
  br label %out

if.end12:                                         ; preds = %land.lhs.true4.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end12.if.end20_crit_edge, label %if.then14

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then14:                                        ; preds = %if.end12
  %call = tail call fastcc i32 @dio_send_cur_page(ptr noundef %dio, ptr noundef %sdio, ptr noundef %map_bh)
  %21 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_page, align 8
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i71 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool.not.i.i = icmp eq i32 %and.i.i71, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %22 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@submit_page_section, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !45

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %27) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %31 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cur_page, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %put_page.exit.if.end20_crit_edge, label %put_page.exit.cleanup_crit_edge

put_page.exit.cleanup_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

put_page.exit.if.end20_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %put_page.exit.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %32 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i72 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i72)
  %tobool.not.i.i73 = icmp eq i32 %and.i.i72, 0
  br i1 %tobool.not.i.i73, label %if.end.i.i76, label %if.then.i.i75, !prof !39

if.then.i.i75:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i74 = add i32 %34, -1
  br label %_compound_head.exit.i78

if.end.i.i76:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i78

_compound_head.exit.i78:                          ; preds = %if.end.i.i76, %if.then.i.i75
  %retval.0.i.i77 = phi i32 [ %sub.i.i74, %if.then.i.i75 ], [ %35, %if.end.i.i76 ]
  %36 = inttoptr i32 %retval.0.i.i77 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %38, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !40

if.then.i1.i:                                     ; preds = %_compound_head.exit.i78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.2) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i78
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@submit_page_section, %if.then.i.i.i.i79)) #9
          to label %get_page.exit [label %if.then.i.i.i.i79], !srcloc !45

if.then.i.i.i.i79:                                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %36, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i79, %do.end5.i.i
  %40 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %page, ptr %cur_page, align 8
  %cur_page_offset22 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 16
  %41 = ptrtoint ptr %cur_page_offset22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %offset, ptr %cur_page_offset22, align 4
  %cur_page_len23 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 17
  %42 = ptrtoint ptr %cur_page_len23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %len, ptr %cur_page_len23, align 8
  %cur_page_block24 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 18
  %43 = ptrtoint ptr %cur_page_block24 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %blocknr, ptr %cur_page_block24, align 8
  %block_in_file = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 5
  %44 = ptrtoint ptr %block_in_file to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %block_in_file, align 8
  %blkbits25 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 1
  %46 = ptrtoint ptr %blkbits25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blkbits25, align 4
  %sh_prom = zext i32 %47 to i64
  %shl = shl i64 %45, %sh_prom
  %cur_page_fs_offset = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 19
  %48 = ptrtoint ptr %cur_page_fs_offset to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %shl, ptr %cur_page_fs_offset, align 8
  br label %out

out:                                              ; preds = %get_page.exit, %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool26.not = icmp eq i32 %1, 0
  br i1 %tobool26.not, label %out.cleanup_crit_edge, label %if.then27

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %out
  %call28 = tail call fastcc i32 @dio_send_cur_page(ptr noundef %dio, ptr noundef %sdio, ptr noundef %map_bh)
  %49 = ptrtoint ptr %sdio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdio, align 8
  %tobool29.not = icmp eq ptr %50, null
  br i1 %tobool29.not, label %if.then27.if.end31_crit_edge, label %if.then30

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.then27
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dio, ptr %bi_private.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %50, i32 0, i32 3
  %52 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %53, -9
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bio_lock.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock.i) #9
  %refcount.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 14
  %54 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %refcount.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %refcount.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock.i, i32 noundef %call3.i) #9
  %is_async.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 10
  %56 = ptrtoint ptr %is_async.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %is_async.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i, label %if.then30.if.end.i_crit_edge, label %land.lhs.true.i

if.then30.if.end.i_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then30
  %58 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp7.i = icmp eq i32 %59, 0
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %should_dirty.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 12
  %60 = ptrtoint ptr %should_dirty.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %should_dirty.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool10.not.i = icmp eq i8 %61, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bio_set_pages_dirty(ptr noundef nonnull %50) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then30.if.end.i_crit_edge
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %50, i32 0, i32 1
  %62 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bd_disk.i, align 8
  %bio_disk.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 3
  %66 = ptrtoint ptr %bio_disk.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %bio_disk.i, align 4
  %submit_io.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 11
  %67 = ptrtoint ptr %submit_io.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %submit_io.i, align 8
  %tobool12.not.i = icmp eq ptr %68, null
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %inode.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 4
  %69 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %inode.i, align 16
  %logical_offset_in_bio.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %71 = ptrtoint ptr %logical_offset_in_bio.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %logical_offset_in_bio.i, align 8
  tail call void %68(ptr noundef nonnull %50, ptr noundef %70, i64 noundef %72) #9
  br label %dio_bio_submit.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @submit_bio(ptr noundef nonnull %50) #9
  br label %dio_bio_submit.exit

dio_bio_submit.exit:                              ; preds = %if.else.i, %if.then13.i
  %73 = ptrtoint ptr %sdio to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %sdio, align 8
  %74 = ptrtoint ptr %boundary1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %boundary1, align 8
  %logical_offset_in_bio17.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %75 = ptrtoint ptr %logical_offset_in_bio17.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %logical_offset_in_bio17.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %dio_bio_submit.exit, %if.then27.if.end31_crit_edge
  %76 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur_page, align 8
  %78 = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i80 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i80, 0
  br i1 %tobool.not.i.i81, label %if.end.i.i84, label %if.then.i.i83, !prof !39

if.then.i.i83:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i82 = add i32 %80, -1
  br label %_compound_head.exit.i89

if.end.i.i84:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %77 to i32
  br label %_compound_head.exit.i89

_compound_head.exit.i89:                          ; preds = %if.end.i.i84, %if.then.i.i83
  %retval.0.i.i85 = phi i32 [ %sub.i.i82, %if.then.i.i83 ], [ %81, %if.end.i.i84 ]
  %82 = inttoptr i32 %retval.0.i.i85 to ptr
  %_refcount.i.i.i.i.i86 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 3
  %call.i.i.i.i.i.i.i87 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i86, i32 noundef 4) #9
  %83 = ptrtoint ptr %_refcount.i.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %_refcount.i.i.i.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i.i.i.i88 = icmp eq i32 %84, 0
  br i1 %cmp.i.i.i.i88, label %if.then.i.i.i.i90, label %do.end5.i.i.i.i94, !prof !40

if.then.i.i.i.i90:                                ; preds = %_compound_head.exit.i89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %82, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

do.end5.i.i.i.i94:                                ; preds = %_compound_head.exit.i89
  %call.i.i.i10.i.i.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i86, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i86, i32 1, i32 3, i32 1) #9
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i86, ptr %_refcount.i.i.i.i.i86, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i86) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i.i.i92 = extractvalue { i32, i32 } %85, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i92)
  %cmp.i.i.i.i.i.i.i93 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i92, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@submit_page_section, %if.then.i.i.i.i.i96)) #9
          to label %folio_put_testzero.exit.i.i97 [label %if.then.i.i.i.i.i96], !srcloc !45

if.then.i.i.i.i.i96:                              ; preds = %do.end5.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i95 = zext i1 %cmp.i.i.i.i.i.i.i93 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %82, i32 noundef -1, i32 noundef %conv.i.i.i.i.i95) #9
  br label %folio_put_testzero.exit.i.i97

folio_put_testzero.exit.i.i97:                    ; preds = %if.then.i.i.i.i.i96, %do.end5.i.i.i.i94
  br i1 %cmp.i.i.i.i.i.i.i93, label %if.then.i4.i98, label %folio_put_testzero.exit.i.i97.put_page.exit99_crit_edge

folio_put_testzero.exit.i.i97.put_page.exit99_crit_edge: ; preds = %folio_put_testzero.exit.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit99

if.then.i4.i98:                                   ; preds = %folio_put_testzero.exit.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %82) #9
  br label %put_page.exit99

put_page.exit99:                                  ; preds = %if.then.i4.i98, %folio_put_testzero.exit.i.i97.put_page.exit99_crit_edge
  %86 = ptrtoint ptr %cur_page to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %cur_page, align 8
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit99, %out.cleanup_crit_edge, %put_page.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %put_page.exit.cleanup_crit_edge ], [ %call28, %put_page.exit99 ], [ 0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dio_refill_pages(ptr noundef %dio, ptr noundef %sdio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %iter = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 20
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 8
  %2 = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 19
  %from = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 23
  %call = tail call i32 @iov_iter_get_pages(ptr noundef %1, ptr noundef %2, i32 noundef 2147483647, i32 noundef 64, ptr noundef %from) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.then9

land.lhs.true:                                    ; preds = %entry
  %blocks_available = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 6
  %3 = ptrtoint ptr %blocks_available to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blocks_available, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true1

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true1:                                   ; preds = %land.lhs.true
  %op = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then, label %land.lhs.true1.cleanup_crit_edge

land.lhs.true1.cleanup_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %7 = load ptr, ptr @empty_zero_page, align 4
  %page_errors = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 9
  %8 = ptrtoint ptr %page_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page_errors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %page_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %11 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !40

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.2) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@dio_refill_pages, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !45

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %15, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %2, align 8
  %head = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 21
  %20 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 22
  %21 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %tail, align 8
  %22 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %from, align 4
  br label %cleanup.sink.split

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iter, align 8
  tail call void @iov_iter_advance(ptr noundef %24, i32 noundef %call) #9
  %25 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %from, align 4
  %head12 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 21
  %27 = ptrtoint ptr %head12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %head12, align 4
  %add = add nuw i32 %call, 4095
  %sub = add i32 %add, %26
  %div42 = lshr i32 %sub, 12
  %tail14 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 22
  %28 = ptrtoint ptr %tail14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div42, ptr %tail14, align 8
  %and = and i32 %sub, 4095
  %add16 = add nuw nsw i32 %and, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then9, %get_page.exit
  %add16.sink = phi i32 [ %add16, %if.then9 ], [ 4096, %get_page.exit ]
  %to17 = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 24
  %29 = ptrtoint ptr %to17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add16.sink, ptr %to17, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %land.lhs.true1.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dio_new_bio(ptr noundef %dio, ptr nocapture noundef %sdio, i64 noundef %start_sector, ptr nocapture noundef readonly %map_bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %reap_counter.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 7
  %0 = ptrtoint ptr %reap_counter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reap_counter.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %reap_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp.i = icmp sgt i32 %1, 63
  br i1 %cmp.i, label %while.cond.preheader.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.cond.preheader.i:                           ; preds = %entry
  %bio_list.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 15
  %2 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_list.i, align 8
  %tobool.not24.i = icmp eq ptr %3, null
  br i1 %tobool.not24.i, label %dio_bio_reap.exit.thread26, label %while.body.lr.ph.i

dio_bio_reap.exit.thread26:                       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %reap_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reap_counter.i, align 4
  br label %if.end

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %bio_lock.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 8
  %op.i.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %should_dirty1.i.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 12
  %io_error.i.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 13
  %is_async.i.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %dio_bio_complete.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ret.025.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %spec.select.i, %dio_bio_complete.exit.i.while.body.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock.i) #9
  %5 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bio_list.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi_private.i, align 4
  store ptr %8, ptr %bio_list.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock.i, i32 noundef %call3.i) #9
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bi_status.i.i, align 2
  %11 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %while.body.i.land.end.i.i_crit_edge

while.body.i.land.end.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %should_dirty1.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %should_dirty1.i.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i.i = icmp ne i8 %14, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %while.body.i.land.end.i.i_crit_edge
  %15 = phi i1 [ false, %while.body.i.land.end.i.i_crit_edge ], [ %tobool.i.i, %land.rhs.i.i ]
  %16 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %10, label %land.end.i.i.if.else.i.i_crit_edge [
    i8 0, label %land.end.i.i.if.end9.i.i_crit_edge
    i8 12, label %land.lhs.true.i.i
  ]

land.end.i.i.if.end9.i.i_crit_edge:               ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

land.end.i.i.if.else.i.i_crit_edge:               ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %land.end.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf.i.i, align 8
  %19 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.if.end9.sink.split.i.i_crit_edge

land.lhs.true.i.i.if.end9.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %land.end.i.i.if.else.i.i_crit_edge
  br label %if.end9.sink.split.i.i

if.end9.sink.split.i.i:                           ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end9.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ -5, %if.else.i.i ], [ -11, %land.lhs.true.i.i.if.end9.sink.split.i.i_crit_edge ]
  %20 = ptrtoint ptr %io_error.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i.i, ptr %io_error.i.i, align 32
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end9.sink.split.i.i, %land.end.i.i.if.end9.i.i_crit_edge
  %21 = ptrtoint ptr %is_async.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %is_async.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not.i.i = icmp eq i32 %22, 0
  %.not.i.i = xor i1 %15, true
  %brmerge.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %.not.i.i
  br i1 %brmerge.i.i, label %if.else15.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bio_check_pages_dirty(ptr noundef %6) #9
  br label %dio_bio_complete.exit.i

if.else15.i.i:                                    ; preds = %if.end9.i.i
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 3
  %23 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.not.i.i.i = icmp eq i16 %25, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %if.else15.i.i.bio_release_pages.exit.i.i_crit_edge

if.else15.i.i.bio_release_pages.exit.i.i_crit_edge: ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_release_pages.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__bio_release_pages(ptr noundef %6, i1 noundef zeroext %15) #9
  br label %bio_release_pages.exit.i.i

bio_release_pages.exit.i.i:                       ; preds = %if.then.i.i.i, %if.else15.i.i.bio_release_pages.exit.i.i_crit_edge
  tail call void @bio_put(ptr noundef %6) #9
  br label %dio_bio_complete.exit.i

dio_bio_complete.exit.i:                          ; preds = %bio_release_pages.exit.i.i, %if.then14.i.i
  %call10.i = tail call i32 @blk_status_to_errno(i8 noundef zeroext %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.025.i)
  %cmp11.i = icmp eq i32 %ret.025.i, 0
  %spec.select.i = select i1 %cmp11.i, i32 %call10.i, i32 %ret.025.i
  %26 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bio_list.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %dio_bio_reap.exit, label %dio_bio_complete.exit.i.while.body.i_crit_edge

dio_bio_complete.exit.i.while.body.i_crit_edge:   ; preds = %dio_bio_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

dio_bio_reap.exit:                                ; preds = %dio_bio_complete.exit.i
  %28 = ptrtoint ptr %reap_counter.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %reap_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %dio_bio_reap.exit.if.end_crit_edge, label %dio_bio_reap.exit.out_crit_edge

dio_bio_reap.exit.out_crit_edge:                  ; preds = %dio_bio_reap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

dio_bio_reap.exit.if.end_crit_edge:               ; preds = %dio_bio_reap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %dio_bio_reap.exit.if.end_crit_edge, %dio_bio_reap.exit.thread26, %entry.if.end_crit_edge
  %pages_in_io = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 4
  %29 = ptrtoint ptr %pages_in_io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pages_in_io, align 8
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %do.body5, label %do.end11, !prof !40

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/direct-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 695, 0\0A.popsection", ""() #9, !srcloc !61
  unreachable

do.end11:                                         ; preds = %if.end
  %blkbits = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 1
  %32 = ptrtoint ptr %blkbits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blkbits, align 4
  %sub = add i32 %33, -9
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %start_sector, %sh_prom
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 6
  %34 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_bdev, align 8
  %conv.i = trunc i32 %31 to i16
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #9
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %37, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %39, %35
  br i1 %cmp.not.i.i, label %do.end11.dio_bio_alloc.exit_crit_edge, label %if.then.i.i

do.end11.dio_bio_alloc.exit_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dio_bio_alloc.exit

if.then.i.i:                                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i.i = and i16 %37, -2177
  %40 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %dio_bio_alloc.exit

dio_bio_alloc.exit:                               ; preds = %if.then.i.i, %do.end11.dio_bio_alloc.exit_crit_edge
  %41 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %35, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #9
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shl, ptr %bi_iter.i, align 8
  %op.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 1
  %43 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %op.i, align 4
  %op_flags.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 2
  %45 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %op_flags.i, align 8
  %or.i.i = or i32 %46, %44
  %bi_opf.i.i19 = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %bi_opf.i.i19 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i, ptr %bi_opf.i.i19, align 8
  %is_async.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 10
  %48 = ptrtoint ptr %is_async.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %is_async.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i20 = icmp eq i32 %49, 0
  %spec.select.i21 = select i1 %tobool.not.i20, ptr @dio_bio_end_io, ptr @dio_bio_end_aio
  %50 = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %spec.select.i21, ptr %50, align 8
  %iocb.i = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 17
  %52 = ptrtoint ptr %iocb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iocb.i, align 16
  %ki_hint.i = getelementptr inbounds %struct.kiocb, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %ki_hint.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ki_hint.i, align 4
  %bi_write_hint.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %bi_write_hint.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %bi_write_hint.i, align 8
  %57 = ptrtoint ptr %sdio to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i, ptr %sdio, align 8
  %cur_page_fs_offset.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 19
  %58 = ptrtoint ptr %cur_page_fs_offset.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cur_page_fs_offset.i, align 8
  %logical_offset_in_bio.i = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 12
  %60 = ptrtoint ptr %logical_offset_in_bio.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %logical_offset_in_bio.i, align 8
  %boundary = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 9
  %61 = ptrtoint ptr %boundary to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %boundary, align 8
  br label %out

out:                                              ; preds = %dio_bio_alloc.exit, %dio_bio_reap.exit.out_crit_edge
  %ret.2.i24 = phi i32 [ %spec.select.i, %dio_bio_reap.exit.out_crit_edge ], [ 0, %dio_bio_alloc.exit ]
  ret i32 %ret.2.i24
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dio_bio_add_page(ptr nocapture noundef %sdio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdio, align 8
  %cur_page = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 15
  %2 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_page, align 8
  %cur_page_len = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 17
  %4 = ptrtoint ptr %cur_page_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_page_len, align 8
  %cur_page_offset = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 16
  %6 = ptrtoint ptr %cur_page_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_page_offset, align 4
  %call = tail call i32 @bio_add_page(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %7) #9
  %8 = ptrtoint ptr %cur_page_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_page_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp = icmp eq i32 %call, %9
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %cur_page_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_page_offset, align 4
  %add = add i32 %11, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp4 = icmp eq i32 %add, 4096
  br i1 %cmp4, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pages_in_io = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 4
  %12 = ptrtoint ptr %pages_in_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pages_in_io, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %pages_in_io, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %cur_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_page, align 8
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %15 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %22, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !40

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.2) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@dio_bio_add_page, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !45

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %20, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %cur_page_block = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 18
  %24 = ptrtoint ptr %cur_page_block to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cur_page_block, align 8
  %26 = ptrtoint ptr %cur_page_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_page_len, align 8
  %blkbits = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 1
  %28 = ptrtoint ptr %blkbits to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blkbits, align 4
  %shr = lshr i32 %27, %29
  %conv = zext i32 %shr to i64
  %add8 = add i64 %25, %conv
  %final_block_in_bio = getelementptr inbounds %struct.dio_submit, ptr %sdio, i32 0, i32 13
  %30 = ptrtoint ptr %final_block_in_bio to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add8, ptr %final_block_in_bio, align 8
  br label %if.end9

if.end9:                                          ; preds = %get_page.exit, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ 0, %get_page.exit ], [ 1, %entry.if.end9_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dio_bio_end_aio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status.i, align 2
  %op.i = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.land.end.i_crit_edge

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %should_dirty1.i = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %should_dirty1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %should_dirty1.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i = icmp ne i8 %7, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %entry.land.end.i_crit_edge
  %8 = phi i1 [ false, %entry.land.end.i_crit_edge ], [ %tobool.i, %land.rhs.i ]
  %9 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %3, label %land.end.i.if.else.i_crit_edge [
    i8 0, label %land.end.i.if.end9.i_crit_edge
    i8 12, label %land.lhs.true.i
  ]

land.end.i.if.end9.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

land.end.i.if.else.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %land.end.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_opf.i, align 8
  %12 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.i = icmp eq i32 %12, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end9.sink.split.i_crit_edge

land.lhs.true.i.if.end9.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %land.end.i.if.else.i_crit_edge
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.else.i, %land.lhs.true.i.if.end9.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -5, %if.else.i ], [ -11, %land.lhs.true.i.if.end9.sink.split.i_crit_edge ]
  %io_error.i = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %io_error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %io_error.i, align 32
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.sink.split.i, %land.end.i.if.end9.i_crit_edge
  %is_async.i = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %is_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %is_async.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i = icmp eq i32 %15, 0
  %.not.i = xor i1 %8, true
  %brmerge.i = select i1 %tobool10.not.i, i1 true, i1 %.not.i
  br i1 %brmerge.i, label %if.else15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bio_check_pages_dirty(ptr noundef %bio) #9
  br label %dio_bio_complete.exit

if.else15.i:                                      ; preds = %if.end9.i
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %16 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bi_flags.i.i.i, align 4
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.not.i.i = icmp eq i16 %18, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.else15.i.bio_release_pages.exit.i_crit_edge

if.else15.i.bio_release_pages.exit.i_crit_edge:   ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_release_pages.exit.i

if.then.i.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__bio_release_pages(ptr noundef %bio, i1 noundef zeroext %8) #9
  br label %bio_release_pages.exit.i

bio_release_pages.exit.i:                         ; preds = %if.then.i.i, %if.else15.i.bio_release_pages.exit.i_crit_edge
  tail call void @bio_put(ptr noundef %bio) #9
  br label %dio_bio_complete.exit

dio_bio_complete.exit:                            ; preds = %bio_release_pages.exit.i, %if.then14.i
  %bio_lock = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock) #9
  %refcount = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %refcount, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %dio_bio_complete.exit
  %waiter = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %waiter, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %land.lhs.true.if.end.thread_crit_edge, label %if.then

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @wake_up_process(ptr noundef nonnull %22) #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then, %land.lhs.true.if.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock, i32 noundef %call3) #9
  br label %if.end33

if.end:                                           ; preds = %dio_bio_complete.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock, i32 noundef %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp11 = icmp eq i32 %dec, 0
  br i1 %cmp11, label %if.then13, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then13:                                        ; preds = %if.end
  %result = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not = icmp eq i32 %24, 0
  br i1 %tobool14.not, label %if.then13.if.else_crit_edge, label %if.then15

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then15:                                        ; preds = %if.then13
  %defer_completion16 = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %defer_completion16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %defer_completion16, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool17.not = icmp eq i8 %26, 0
  br i1 %tobool17.not, label %lor.rhs, label %if.then15.do.body25_crit_edge

if.then15.do.body25_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

lor.rhs:                                          ; preds = %if.then15
  %27 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp19 = icmp eq i32 %28, 1
  br i1 %cmp19, label %land.rhs, label %lor.rhs.if.else_crit_edge

lor.rhs.if.else_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.rhs:                                         ; preds = %lor.rhs
  %inode = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %inode, align 16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool21.not = icmp eq i32 %34, 0
  br i1 %tobool21.not, label %land.rhs.if.else_crit_edge, label %land.rhs.do.body25_crit_edge

land.rhs.do.body25_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body25:                                        ; preds = %land.rhs.do.body25_crit_edge, %if.then15.do.body25_crit_edge
  %35 = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 19
  tail call void @__init_work(ptr noundef %35, i32 noundef 0) #9
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %35, align 8
  %lockdep_map = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 19, i32 0, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @dio_bio_end_aio.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry26 = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 19, i32 0, i32 1
  %37 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 19, i32 0, i32 2
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 19, i32 0, i32 3
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dio_aio_complete_work, ptr %func, align 4
  %inode29 = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %inode29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %inode29, align 16
  %i_sb = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 51
  %44 = ptrtoint ptr %s_dio_done_wq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_dio_done_wq, align 32
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %35) #9
  br label %if.end33

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %lor.rhs.if.else_crit_edge, %if.then13.if.else_crit_edge
  %call31 = tail call fastcc i32 @dio_complete(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %do.body25, %if.end.if.end33_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dio_bio_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bio_lock = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock) #9
  %bio_list = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_list, align 8
  %4 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bi_private, align 4
  store ptr %bio, ptr %bio_list, align 8
  %refcount = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcount, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 1
  br i1 %cmp7, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %waiter = getelementptr inbounds %struct.dio, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %waiter, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @wake_up_process(ptr noundef nonnull %8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dio_aio_complete_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  %call = tail call fastcc i32 @dio_complete(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dio_await_one(ptr noundef %dio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_lock = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock) #9
  %bio_list = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 15
  %refcount = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 14
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5106 = icmp ugt i32 %1, 1
  br i1 %cmp5106, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %waiter = getelementptr inbounds %struct.dio, ptr %dio, i32 0, i32 16
  br label %land.rhs

land.rhs:                                         ; preds = %__here.land.rhs_crit_edge, %land.rhs.lr.ph
  %flags.0107 = phi i32 [ %call2, %land.rhs.lr.ph ], [ %call79, %__here.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_list, align 8
  %cmp7 = icmp eq ptr %3, null
  br i1 %cmp7, label %__here, label %land.rhs.if.then87_crit_edge

land.rhs.if.then87_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

__here:                                           ; preds = %land.rhs
  %4 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@dio_await_one, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 2, ptr %9, align 128
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %waiter, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock, i32 noundef %flags.0107) #9
  tail call void @blk_io_schedule() #9
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_lock) #9
  %13 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %waiter, align 4
  %14 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %refcount, align 4
  %cmp5 = icmp ugt i32 %15, 1
  br i1 %cmp5, label %__here.land.rhs_crit_edge, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

__here.land.rhs_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %__here.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa.ph = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call79, %__here.while.end_crit_edge ]
  %16 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %bio_list, align 8
  %tobool86.not = icmp eq ptr %.pr, null
  br i1 %tobool86.not, label %while.end.if.end90_crit_edge, label %while.end.if.then87_crit_edge

while.end.if.then87_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

while.end.if.end90_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then87:                                        ; preds = %while.end.if.then87_crit_edge, %land.rhs.if.then87_crit_edge
  %flags.0.lcssa111 = phi i32 [ %flags.0.lcssa.ph, %while.end.if.then87_crit_edge ], [ %flags.0107, %land.rhs.if.then87_crit_edge ]
  %17 = phi ptr [ %.pr, %while.end.if.then87_crit_edge ], [ %3, %land.rhs.if.then87_crit_edge ]
  %bi_private = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_private, align 4
  %20 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %bio_list, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %while.end.if.end90_crit_edge
  %flags.0.lcssa112 = phi i32 [ %flags.0.lcssa111, %if.then87 ], [ %flags.0.lcssa.ph, %while.end.if.end90_crit_edge ]
  %21 = phi ptr [ %17, %if.then87 ], [ null, %while.end.if.end90_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_lock, i32 noundef %flags.0.lcssa112) #9
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dio_warn_stale_pagecache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/direct-io.c", i32 575, i32 48}
!2 = !{ptr @__ksymtab___blockdev_direct_IO, !3, !"__ksymtab___blockdev_direct_IO", i1 false, i1 false}
!3 = !{!"../fs/direct-io.c", i32 1366, i32 1}
!4 = !{ptr @__initcall__kmod_direct_io__271_1373_dio_init6, !5, !"__initcall__kmod_direct_io__271_1373_dio_init6", i1 false, i1 false}
!5 = !{!"../fs/direct-io.c", i32 1373, i32 1}
!6 = !{ptr @do_blockdev_direct_IO.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/direct-io.c", i32 1252, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dio_cache, !10, !"dio_cache", i1 false, i1 false}
!10 = !{!"../fs/direct-io.c", i32 155, i32 27}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!13 = !{ptr @dio_bio_end_aio.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../fs/direct-io.c", i32 359, i32 4}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/mm.h", i32 717, i32 2}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/direct-io.c", i32 479, i32 3}
!20 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/direct-io.c", i32 1370, i32 14}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2154436744}
!34 = !{i64 757642, i64 757663, i64 757686, i64 757705, i64 757724}
!35 = !{i64 2154437156}
!36 = !{i64 745641}
!37 = !{i8 0, i8 2}
!38 = !{i64 2148248150, i64 2148248176, i64 2148248205, i64 2148248239, i64 2148248270, i64 2148248293}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2153355327, i64 2153355810, i64 2153355364, i64 2153355420, i64 2153355454, i64 2153355478, i64 2153355519, i64 2153355540, i64 2153355568, i64 2153355602}
!42 = !{i64 2148336602}
!43 = !{i64 2148251335, i64 2148251367, i64 2148251396, i64 2148251430, i64 2148251461, i64 2148251484}
!44 = !{i64 2148336831}
!45 = !{i64 2148729965, i64 2148729970, i64 2148729983, i64 2148730027, i64 2148730061, i64 2148730082}
!46 = !{i64 2154451332, i64 2154451812, i64 2154451369, i64 2154451425, i64 2154451459, i64 2154451483, i64 2154451524, i64 2154451545, i64 2154451573, i64 2154451607}
!47 = !{i64 2154452921, i64 2154453401, i64 2154452958, i64 2154453014, i64 2154453048, i64 2154453072, i64 2154453113, i64 2154453134, i64 2154453162, i64 2154453196}
!48 = !{i64 640631, i64 640692}
!49 = !{i64 643363}
!50 = !{i64 643648}
!51 = !{i64 2152741584}
!52 = !{i64 2152741426}
!53 = !{i64 2152741754}
!54 = !{i64 2150010286}
!55 = !{i64 2154424997, i64 2154425476, i64 2154425034, i64 2154425090, i64 2154425124, i64 2154425148, i64 2154425189, i64 2154425210, i64 2154425238, i64 2154425272}
!56 = !{i64 2154437560, i64 2154438039, i64 2154437597, i64 2154437653, i64 2154437687, i64 2154437711, i64 2154437752, i64 2154437773, i64 2154437801, i64 2154437835}
!57 = !{i64 2154443721, i64 2154444201, i64 2154443758, i64 2154443814, i64 2154443848, i64 2154443872, i64 2154443913, i64 2154443934, i64 2154443962, i64 2154443996}
!58 = !{i64 2154445365, i64 2154445845, i64 2154445402, i64 2154445458, i64 2154445492, i64 2154445516, i64 2154445557, i64 2154445578, i64 2154445606, i64 2154445640}
!59 = !{i64 2154441263, i64 2154441742, i64 2154441300, i64 2154441356, i64 2154441390, i64 2154441414, i64 2154441455, i64 2154441476, i64 2154441504, i64 2154441538}
!60 = !{i64 2153375239, i64 2153375723, i64 2153375276, i64 2153375332, i64 2153375366, i64 2153375390, i64 2153375431, i64 2153375452, i64 2153375480, i64 2153375514}
!61 = !{i64 2154439296, i64 2154439775, i64 2154439333, i64 2154439389, i64 2154439423, i64 2154439447, i64 2154439488, i64 2154439509, i64 2154439537, i64 2154439571}
