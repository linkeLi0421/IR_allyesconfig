; ModuleID = '/llk/IR_all_yes/fs/ext4/page-io.c_pt.bc'
source_filename = "../fs/ext4/page-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ext4_io_end = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.31, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.31 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ext4_io_submit = type { ptr, ptr, ptr, i64 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.67 = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11 }
%struct.llist_node = type { ptr }
%union.anon.11 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext4_io_end\00", [20 x i8] zeroinitializer }, align 32
@io_end_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext4_io_end_vec\00", [16 x i8] zeroinitializer }, align 32
@io_end_vec_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ext4_bio_write_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ext4_bio_write_page = private unnamed_addr constant [20 x i8] c"ext4_bio_write_page\00", align 1
@ext4_bio_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.ext4_bio_write_page, ptr @.str.4, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013%s: ret = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ext4/page-io.c\00", [46 x i8] zeroinitializer }, align 32
@ext4_bio_write_page._entry_ptr = internal global ptr @ext4_bio_write_page._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"failed to convert unwritten extents to written extents -- potential data loss!  (inode %lu, error %d)\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@buffer_io_error._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.buffer_io_error = private unnamed_addr constant [16 x i8] c"buffer_io_error\00", align 1
@buffer_io_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.buffer_io_error, ptr @.str.4, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Buffer I/O error on device %pg, logical block %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@buffer_io_error._entry_ptr = internal global ptr @buffer_io_error._entry, section ".printk_index", align 4
@ext4__ioend_wq = external dso_local global [37 x %struct.wait_queue_head], align 4
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@ext4_end_bio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"io_end is NULL: %s: sector %Lu len %u err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.ext4_end_bio = private unnamed_addr constant [13 x i8] c"ext4_end_bio\00", align 1
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"I/O error %d writing to inode %lu starting block %llu)\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 38, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"io_end_cachep\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 33, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 42, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"io_end_vec_cachep\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 34, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 536, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 186, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 416, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 95, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 452, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 328, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [21 x i8] c"../fs/ext4/page-io.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 342, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @buffer_io_error._entry, ptr @buffer_io_error._entry_ptr, ptr @ext4_bio_write_page._entry, ptr @ext4_bio_write_page._entry_ptr, ptr @.str, ptr @io_end_cachep, ptr @.str.1, ptr @io_end_vec_cachep, ptr @ext4_bio_write_page._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @buffer_io_error._rs, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_end_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_end_vec_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_bio_write_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_bio_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_io_error._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_io_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_pageio() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 4, i32 noundef 131072, ptr noundef null) #10
  store ptr %call, ptr @io_end_cachep, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 24, i32 noundef 8, i32 noundef 0, ptr noundef null) #10
  store ptr %call1, ptr @io_end_vec_cachep, align 4
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @io_end_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_exit_pageio() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @io_end_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  %1 = load ptr, ptr @io_end_vec_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_alloc_io_end_vec(ptr noundef %io_end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @io_end_vec_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call.i, ptr %call.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %prev.i, align 4
  %list_vec = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 6
  %prev.i6 = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i6, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %4, ptr noundef %list_vec) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %prev.i6, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list_vec, ptr %call.i, align 8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call.i, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_last_io_end_vec(ptr noundef %io_end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %list_vec = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 6
  %0 = ptrtoint ptr %list_vec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list_vec, align 4
  %cmp.i.not = icmp eq ptr %1, %list_vec
  br i1 %cmp.i.not, label %do.body3, label %do.end6, !prof !49

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #10, !srcloc !50
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_end_io_rsv_work(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  %unwritten.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rsv_conversion_list = getelementptr i8, ptr %work, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %unwritten.i) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %unwritten.i, i32 0, i32 1
  %i_completed_io_lock.i = getelementptr i8, ptr %work, i32 -52
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_completed_io_lock.i) #10
  %1 = ptrtoint ptr %i_rsv_conversion_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_rsv_conversion_list, align 4
  %3 = ptrtoint ptr %unwritten.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %unwritten.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %unwritten.i, ptr %prev.i.i.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %work, i32 -4
  %5 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %0, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %unwritten.i, ptr %6, align 4
  store volatile ptr %i_rsv_conversion_list, ptr %i_rsv_conversion_list, align 4
  store ptr %i_rsv_conversion_list, ptr %prev3.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i_completed_io_lock.i, i32 noundef %call3.i) #10
  %9 = ptrtoint ptr %unwritten.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %unwritten.i, align 4
  %cmp.i.not3.i = icmp eq ptr %10, %unwritten.i
  br i1 %cmp.i.not3.i, label %entry.ext4_do_flush_completed_IO.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.ext4_do_flush_completed_IO.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_do_flush_completed_IO.exit

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %11 = phi ptr [ %43, %if.end33.i.while.body.i_crit_edge ], [ %10, %entry.while.body.i_crit_edge ]
  %ret.04.i = phi i32 [ %ret.1.i, %if.end33.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %flag.i = getelementptr inbounds %struct.ext4_io_end, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %do.body15.i, label %do.end22.i, !prof !49

do.body15.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 254, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end22.i:                                       ; preds = %while.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end22.i.list_del_init.exit.i_crit_edge

do.end22.i.list_del_init.exit.i_crit_edge:        ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i1.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i1.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.end22.i.list_del_init.exit.i_crit_edge
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %11, ptr %prev.i3.i.i, align 4
  %inode1.i.i = getelementptr inbounds %struct.ext4_io_end, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %inode1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inode1.i.i, align 4
  %handle2.i.i = getelementptr inbounds %struct.ext4_io_end, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %handle2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle2.i.i, align 4
  store ptr null, ptr %handle2.i.i, align 4
  %call.i.i = call i32 @ext4_convert_unwritten_io_end_vec(ptr noundef %25, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i2.i, label %land.lhs.true.i.i, label %list_del_init.exit.i.if.end.i.i_crit_edge

list_del_init.exit.i.if.end.i.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %list_del_init.exit.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_ext4_flags.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 48
  %30 = ptrtoint ptr %s_ext4_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %s_ext4_flags.i.i.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %33 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino.i.i, align 8
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %34, i32 noundef %call.i.i) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %list_del_init.exit.i.if.end.i.i_crit_edge
  %35 = ptrtoint ptr %inode1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inode1.i.i, align 4
  %37 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flag.i, align 4
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.ext4_end_io_end.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.i.ext4_end_io_end.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_end_io_end.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %and3.i.i.i = and i32 %38, -2
  %39 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and3.i.i.i, ptr %flag.i, align 4
  %i_unwritten.i.i.i = getelementptr i8, ptr %36, i32 1104
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_unwritten.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  call void @llvm.prefetch.p0(ptr %i_unwritten.i.i.i, i32 1, i32 3, i32 1) #10
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_unwritten.i.i.i, ptr %i_unwritten.i.i.i, i32 1, ptr elementtype(i32) %i_unwritten.i.i.i) #10, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then5.i.i.i, label %if.then.i.i.i.ext4_end_io_end.exit.i_crit_edge

if.then.i.i.i.ext4_end_io_end.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_end_io_end.exit.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %36 to i32
  %rem.i.i.i = urem i32 %41, 37
  %arrayidx.i.i.i = getelementptr [37 x %struct.wait_queue_head], ptr @ext4__ioend_wq, i32 0, i32 %rem.i.i.i
  call void @__wake_up(ptr noundef %arrayidx.i.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %ext4_end_io_end.exit.i

ext4_end_io_end.exit.i:                           ; preds = %if.then5.i.i.i, %if.then.i.i.i.ext4_end_io_end.exit.i_crit_edge, %if.end.i.i.ext4_end_io_end.exit.i_crit_edge
  call fastcc void @ext4_release_io_end(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.04.i)
  %tobool24.not.i = icmp eq i32 %ret.04.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.i = icmp ne i32 %call.i.i, 0
  %spec.select.i = select i1 %tobool24.not.i, i1 %tobool25.i, i1 false
  br i1 %spec.select.i, label %if.then32.i, label %ext4_end_io_end.exit.i.if.end33.i_crit_edge, !prof !49

ext4_end_io_end.exit.i.if.end33.i_crit_edge:      ; preds = %ext4_end_io_end.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then32.i:                                      ; preds = %ext4_end_io_end.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %ext4_end_io_end.exit.i.if.end33.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %if.then32.i ], [ %ret.04.i, %ext4_end_io_end.exit.i.if.end33.i_crit_edge ]
  %42 = ptrtoint ptr %unwritten.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %unwritten.i, align 4
  %cmp.i.not.i = icmp eq ptr %43, %unwritten.i
  br i1 %cmp.i.not.i, label %if.end33.i.ext4_do_flush_completed_IO.exit_crit_edge, label %if.end33.i.while.body.i_crit_edge

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end33.i.ext4_do_flush_completed_IO.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_do_flush_completed_IO.exit

ext4_do_flush_completed_IO.exit:                  ; preds = %if.end33.i.ext4_do_flush_completed_IO.exit_crit_edge, %entry.ext4_do_flush_completed_IO.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %unwritten.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_init_io_end(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @io_end_cachep, align 4
  %or.i = or i32 %flags, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or.i) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inode1 = getelementptr inbounds %struct.ext4_io_end, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %inode1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %inode1, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call.i, ptr %call.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %prev.i, align 4
  %list_vec = getelementptr inbounds %struct.ext4_io_end, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %list_vec to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list_vec, ptr %list_vec, align 4
  %prev.i7 = getelementptr inbounds %struct.ext4_io_end, ptr %call.i, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list_vec, ptr %prev.i7, align 8
  %count = getelementptr inbounds %struct.ext4_io_end, ptr %call.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_put_io_end_defer(ptr noundef %io_end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i, !prof !57

if.end5.i.i.i.if.end4_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #10
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %flag = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 4
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flag, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.then3_crit_edge, label %lor.lhs.false

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %list_vec = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 6
  %3 = ptrtoint ptr %list_vec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %list_vec, align 4
  %cmp.i.not = icmp eq ptr %4, %list_vec
  br i1 %cmp.i.not, label %lor.lhs.false.if.then3_crit_edge, label %if.end.i

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  tail call fastcc void @ext4_release_io_end(ptr noundef %io_end)
  br label %if.end4

if.end.i:                                         ; preds = %lor.lhs.false
  %inode.i = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 2
  %5 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inode.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %handle.i = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 1
  %11 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle.i, align 4
  %tobool24.not.i = icmp eq ptr %12, null
  br i1 %tobool24.not.i, label %land.rhs.i, label %if.end.i.if.end47.i_crit_edge

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

land.rhs.i:                                       ; preds = %if.end.i
  %s_journal.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 47
  %13 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_journal.i, align 8
  %tobool25.not.i = icmp eq ptr %14, null
  br i1 %tobool25.not.i, label %land.rhs.i.if.end47.i_crit_edge, label %do.end41.i, !prof !57

land.rhs.i.if.end47.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

do.end41.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 229, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end41.i, %land.rhs.i.if.end47.i_crit_edge, %if.end.i.if.end47.i_crit_edge
  %i_completed_io_lock.i = getelementptr i8, ptr %6, i32 1008
  %call59.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_completed_io_lock.i) #10
  %rsv_conversion_wq.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 115
  %15 = ptrtoint ptr %rsv_conversion_wq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsv_conversion_wq.i, align 8
  %i_rsv_conversion_list.i = getelementptr i8, ptr %6, i32 1052
  %17 = ptrtoint ptr %i_rsv_conversion_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %i_rsv_conversion_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %i_rsv_conversion_list.i
  br i1 %cmp.i.not.i, label %if.then66.i, label %if.end47.i.if.end68.i_crit_edge

if.end47.i.if.end68.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_rsv_conversion_work.i = getelementptr i8, ptr %6, i32 1060
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %i_rsv_conversion_work.i) #10
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.end47.i.if.end68.i_crit_edge
  %prev.i.i = getelementptr i8, ptr %6, i32 1056
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %io_end, ptr noundef %20, ptr noundef %i_rsv_conversion_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end68.i.ext4_add_complete_io.exit_crit_edge

if.end68.i.ext4_add_complete_io.exit_crit_edge:   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_add_complete_io.exit

if.end.i.i.i:                                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %io_end, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %io_end to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i_rsv_conversion_list.i, ptr %io_end, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %io_end, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %io_end, ptr %20, align 4
  br label %ext4_add_complete_io.exit

ext4_add_complete_io.exit:                        ; preds = %if.end.i.i.i, %if.end68.i.ext4_add_complete_io.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i_completed_io_lock.i, i32 noundef %call59.i) #10
  br label %if.end4

if.end4:                                          ; preds = %ext4_add_complete_io.exit, %if.then3, %if.then10.i.i.i, %if.end5.i.i.i.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_release_io_end(ptr noundef %io_end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %io_end, align 4
  %cmp.i.not = icmp eq ptr %1, %io_end
  br i1 %cmp.i.not, label %do.body10, label %do.body4, !prof !57

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

do.body10:                                        ; preds = %entry
  %flag = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 4
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.end27, label %do.body19, !prof !57

do.body19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

do.end27:                                         ; preds = %do.body10
  %handle = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 1
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %do.end27.if.end50_crit_edge, label %do.end44, !prof !57

do.end27.if.end50_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end44:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 154, i32 noundef 9, ptr noundef null) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %do.end27.if.end50_crit_edge
  %bio57 = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 3
  %6 = ptrtoint ptr %bio57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bio57, align 4
  %tobool58.not68 = icmp eq ptr %7, null
  br i1 %tobool58.not68, label %if.end50.for.end_crit_edge, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  br label %for.body

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end50.for.body_crit_edge
  %bio.069 = phi ptr [ %9, %for.body.for.body_crit_edge ], [ %7, %if.end50.for.body_crit_edge ]
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio.069, i32 0, i32 11
  %8 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_private, align 4
  tail call fastcc void @ext4_finish_bio(ptr noundef nonnull %bio.069)
  tail call void @bio_put(ptr noundef nonnull %bio.069) #10
  %tobool58.not = icmp eq ptr %9, null
  br i1 %tobool58.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end50.for.end_crit_edge
  %list_vec.i = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 6
  %10 = ptrtoint ptr %list_vec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %list_vec.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %list_vec.i
  br i1 %cmp.i.not.i, label %for.end.ext4_free_io_end_vec.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.ext4_free_io_end_vec.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_free_io_end_vec.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %io_end_vec.023.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %11, %for.end.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %io_end_vec.023.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0.i = load ptr, ptr %io_end_vec.023.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_end_vec.023.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %io_end_vec.023.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %io_end_vec.023.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_end_vec.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %io_end_vec.023.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %io_end_vec.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %io_end_vec.023.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %21 = load ptr, ptr @io_end_vec_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %io_end_vec.023.i) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list_vec.i
  br i1 %cmp.not.i, label %list_del.exit.i.ext4_free_io_end_vec.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.ext4_free_io_end_vec.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_free_io_end_vec.exit

ext4_free_io_end_vec.exit:                        ; preds = %list_del.exit.i.ext4_free_io_end_vec.exit_crit_edge, %for.end.ext4_free_io_end_vec.exit_crit_edge
  %22 = load ptr, ptr @io_end_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef %io_end) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_put_io_end(ptr noundef %io_end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i, !prof !57

if.end5.i.i.i.if.end4_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #10
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %flag = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 4
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flag, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then1:                                         ; preds = %if.then
  %handle = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 1
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handle, align 4
  %call2 = tail call i32 @ext4_convert_unwritten_io_end_vec(ptr noundef %4, ptr noundef %io_end) #10
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %handle, align 4
  %inode1.i = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 2
  %6 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode1.i, align 4
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then1.if.end_crit_edge, label %if.then.i

if.then1.if.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then1
  %and3.i = and i32 %9, -2
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and3.i, ptr %flag, align 4
  %i_unwritten.i = getelementptr i8, ptr %7, i32 1104
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_unwritten.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %i_unwritten.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_unwritten.i, ptr %i_unwritten.i, i32 1, ptr elementtype(i32) %i_unwritten.i) #10, !srcloc !53
  %asmresult.i.i.i.i.i.i11 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i11)
  %cmp.i.i.i12 = icmp eq i32 %asmresult.i.i.i.i.i.i11, 0
  br i1 %cmp.i.i.i12, label %if.then5.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %7 to i32
  %rem.i = urem i32 %12, 37
  %arrayidx.i = getelementptr [37 x %struct.wait_queue_head], ptr @ext4__ioend_wq, i32 0, i32 %rem.i
  tail call void @__wake_up(ptr noundef %arrayidx.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %if.then.i.if.end_crit_edge, %if.then1.if.end_crit_edge, %if.then.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %call2, %if.then1.if.end_crit_edge ], [ %call2, %if.then.i.if.end_crit_edge ], [ %call2, %if.then5.i ]
  tail call fastcc void @ext4_release_io_end(ptr noundef %io_end)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end4_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end ], [ 0, %if.end5.i.i.i.if.end4_crit_edge ], [ 0, %if.then10.i.i.i ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_convert_unwritten_io_end_vec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_get_io_end(ptr noundef returned %io_end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ext4_io_end, ptr %io_end, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #10, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !49

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !57

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %io_end
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_io_submit(ptr nocapture noundef %io) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_bio = getelementptr inbounds %struct.ext4_io_submit, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_bio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %io_end = getelementptr inbounds %struct.ext4_io_submit, ptr %io, i32 0, i32 2
  %6 = ptrtoint ptr %io_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_end, align 8
  %inode = getelementptr inbounds %struct.ext4_io_end, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inode, align 4
  %i_write_hint = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %i_write_hint to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_write_hint, align 1
  %conv1 = zext i8 %11 to i16
  %bi_write_hint = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %bi_write_hint to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv1, ptr %bi_write_hint, align 8
  %13 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_bio, align 4
  %or.i = select i1 %cmp, i32 2049, i32 1
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %bi_opf.i, align 8
  %16 = load ptr, ptr %io_bio, align 4
  tail call void @submit_bio(ptr noundef %16) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %io_bio to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %io_bio, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ext4_io_submit_init(ptr nocapture noundef writeonly %io, ptr noundef %wbc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %wbc, ptr %io, align 8
  %io_bio = getelementptr inbounds %struct.ext4_io_submit, ptr %io, i32 0, i32 1
  %1 = ptrtoint ptr %io_bio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %io_bio, align 4
  %io_end = getelementptr inbounds %struct.ext4_io_submit, ptr %io, i32 0, i32 2
  %2 = ptrtoint ptr %io_end to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %io_end, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_bio_write_page(ptr nocapture noundef %io, ptr noundef %page, i32 noundef %len, i1 noundef zeroext %keep_towrite) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 8
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %6, align 4
  %and.i16.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !49

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !57

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %14, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %15, %if.end.i20.i ]
  %16 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #10, !srcloc !62
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !57

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %14, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %17, %if.end.i27.i ]
  %18 = inttoptr i32 %retval.0.i28.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !49

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 449, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

do.body10:                                        ; preds = %PageLocked.exit
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %6, align 4
  %and.i.i237 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i237)
  %tobool.not.i.i238 = icmp eq i32 %and.i.i237, 0
  br i1 %tobool.not.i.i238, label %if.end.i.i241, label %if.then.i.i240, !prof !57

if.then.i.i240:                                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i239 = add i32 %22, -1
  br label %_compound_head.exit.i246

if.end.i.i241:                                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i246

_compound_head.exit.i246:                         ; preds = %if.end.i.i241, %if.then.i.i240
  %retval.0.i.i242 = phi i32 [ %sub.i.i239, %if.then.i.i240 ], [ %23, %if.end.i.i241 ]
  %24 = inttoptr i32 %retval.0.i.i242 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i243 = icmp eq i32 %26, -1
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %6, align 4
  %and.i16.i244 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i244)
  %tobool.not.i17.i245 = icmp eq i32 %and.i16.i244, 0
  br i1 %cmp.i.not.i243, label %if.then.i247, label %do.end10.i253, !prof !49

if.then.i247:                                     ; preds = %_compound_head.exit.i246
  br i1 %tobool.not.i17.i245, label %if.end.i20.i250, label %if.then.i19.i249, !prof !57

if.then.i19.i249:                                 ; preds = %if.then.i247
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i248 = add i32 %28, -1
  br label %_compound_head.exit22.i252

if.end.i20.i250:                                  ; preds = %if.then.i247
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i252

_compound_head.exit22.i252:                       ; preds = %if.end.i20.i250, %if.then.i19.i249
  %retval.0.i21.i251 = phi i32 [ %sub.i18.i248, %if.then.i19.i249 ], [ %29, %if.end.i20.i250 ]
  %30 = inttoptr i32 %retval.0.i21.i251 to ptr
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

do.end10.i253:                                    ; preds = %_compound_head.exit.i246
  br i1 %tobool.not.i17.i245, label %if.end.i27.i256, label %if.then.i26.i255, !prof !57

if.then.i26.i255:                                 ; preds = %do.end10.i253
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i254 = add i32 %28, -1
  br label %PageWriteback.exit

if.end.i27.i256:                                  ; preds = %do.end10.i253
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i256, %if.then.i26.i255
  %retval.0.i28.i257 = phi i32 [ %sub.i25.i254, %if.then.i26.i255 ], [ %31, %if.end.i27.i256 ]
  %32 = inttoptr i32 %retval.0.i28.i257 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool12.not = icmp eq i32 %35, 0
  br i1 %tobool12.not, label %do.end28, label %do.body20, !prof !57

do.body20:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #10, !srcloc !65
  unreachable

do.end28:                                         ; preds = %PageWriteback.exit
  br i1 %keep_towrite, label %if.then30, label %if.else

if.then30:                                        ; preds = %do.end28
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %6, align 4
  %and.i.i296 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i296)
  %tobool.not.i.i297 = icmp eq i32 %and.i.i296, 0
  br i1 %tobool.not.i.i297, label %if.end.i.i300, label %if.then.i.i299, !prof !57

if.then.i.i299:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i298 = add i32 %37, -1
  br label %set_page_writeback_keepwrite.exit

if.end.i.i300:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %page to i32
  br label %set_page_writeback_keepwrite.exit

set_page_writeback_keepwrite.exit:                ; preds = %if.end.i.i300, %if.then.i.i299
  %retval.0.i.i301 = phi i32 [ %sub.i.i298, %if.then.i.i299 ], [ %38, %if.end.i.i300 ]
  %39 = inttoptr i32 %retval.0.i.i301 to ptr
  %call1.i = tail call zeroext i1 @__folio_start_writeback(ptr noundef %39, i1 noundef zeroext true) #10
  br label %if.end32

if.else:                                          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #10
  br label %if.end32

if.end32:                                         ; preds = %if.else, %set_page_writeback_keepwrite.exit
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %6, align 4
  %and.i.i259 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i259)
  %tobool.not.i = icmp eq i32 %and.i.i259, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i260, !prof !57

if.then.i260:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.body7.i:                                       ; preds = %if.end32
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %6, align 4
  %and.i31.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i261 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i261, label %if.end.i.i264, label %if.then.i.i263, !prof !57

if.then.i.i263:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i262 = add i32 %43, -1
  br label %_compound_head.exit.i267

if.end.i.i264:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i267

_compound_head.exit.i267:                         ; preds = %if.end.i.i264, %if.then.i.i263
  %retval.0.i.i265 = phi i32 [ %sub.i.i262, %if.then.i.i263 ], [ %44, %if.end.i.i264 ]
  %45 = inttoptr i32 %retval.0.i.i265 to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp.i.not.i266 = icmp eq i32 %47, -1
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %6, align 4
  %and.i32.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i266, label %if.then17.i, label %do.end24.i, !prof !49

if.then17.i:                                      ; preds = %_compound_head.exit.i267
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !57

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %49, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %50, %if.end.i36.i ]
  %51 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i267
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !57

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %49, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %52, %if.end.i43.i ]
  %53 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp ult i32 %len, 4096
  br i1 %cmp, label %if.then33, label %ClearPageError.exit.do.body35_crit_edge

ClearPageError.exit.do.body35_crit_edge:          ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body35

if.then33:                                        ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %len, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  br label %do.body35

do.body35:                                        ; preds = %if.then33, %ClearPageError.exit.do.body35_crit_edge
  %54 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i268 = icmp eq i32 %55, -1
  br i1 %cmp.i.not.i268, label %if.then.i269, label %PagePrivate.exit, !prof !49

if.then.i269:                                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

PagePrivate.exit:                                 ; preds = %do.body35
  %56 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %page, align 4
  %58 = and i32 %57, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool37.not = icmp eq i32 %58, 0
  br i1 %tobool37.not, label %do.body47, label %do.end55, !prof !49

do.body47:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 476, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

do.end55:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %59 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %private, align 4
  %61 = inttoptr i32 %60 to ptr
  %io_bio = getelementptr inbounds %struct.ext4_io_submit, ptr %io, i32 0, i32 1
  %io_end.i = getelementptr inbounds %struct.ext4_io_submit, ptr %io, i32 0, i32 2
  br label %do.body56

do.body56:                                        ; preds = %do.cond83.do.body56_crit_edge, %do.end55
  %bh.0 = phi ptr [ %61, %do.end55 ], [ %107, %do.cond83.do.body56_crit_edge ]
  %nr_to_submit.0 = phi i32 [ 0, %do.end55 ], [ %nr_to_submit.1, %do.cond83.do.body56_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %62 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data, align 4
  %64 = ptrtoint ptr %63 to i32
  %and = and i32 %64, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %len)
  %cmp57.not = icmp ult i32 %and, %len
  br i1 %cmp57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %do.body56
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #10
  %65 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i272 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i272)
  %tobool.not.i273 = icmp eq i32 %and1.i.i272, 0
  br i1 %tobool.not.i273, label %if.then.i274, label %if.then58.do.cond83_crit_edge

if.then58.do.cond83_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond83

if.then.i274:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #10
  br label %do.cond83

if.end59:                                         ; preds = %do.body56
  %67 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %bh.0, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool61.not = icmp eq i32 %69, 0
  br i1 %tobool61.not, label %if.end59.if.then70_crit_edge, label %lor.lhs.false

if.end59.if.then70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

lor.lhs.false:                                    ; preds = %if.end59
  %70 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %bh.0, align 4
  %72 = and i32 %71, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool63.not = icmp eq i32 %72, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %lor.lhs.false.if.then70_crit_edge

lor.lhs.false.if.then70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %73 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %bh.0, align 4
  %75 = and i32 %74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool66.not = icmp eq i32 %75, 0
  br i1 %tobool66.not, label %lor.lhs.false64.if.then70_crit_edge, label %lor.lhs.false67

lor.lhs.false64.if.then70_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %76 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %bh.0, align 4
  %78 = and i32 %77, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool69.not = icmp eq i32 %78, 0
  br i1 %tobool69.not, label %if.end78, label %lor.lhs.false67.if.then70_crit_edge

lor.lhs.false67.if.then70_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false67.if.then70_crit_edge, %lor.lhs.false64.if.then70_crit_edge, %lor.lhs.false.if.then70_crit_edge, %if.end59.if.then70_crit_edge
  %79 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %bh.0, align 4
  %81 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool72.not = icmp eq i32 %81, 0
  br i1 %tobool72.not, label %if.then73, label %if.then70.if.end74_crit_edge

if.then70.if.end74_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then70.if.end74_crit_edge
  %82 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_bio, align 4
  %tobool75.not = icmp eq ptr %83, null
  br i1 %tobool75.not, label %if.end74.do.cond83_crit_edge, label %ext4_io_submit.exit

if.end74.do.cond83_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond83

ext4_io_submit.exit:                              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io, align 8
  %sync_mode.i = getelementptr inbounds %struct.writeback_control, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sync_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i = icmp eq i32 %87, 1
  %88 = ptrtoint ptr %io_end.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io_end.i, align 8
  %inode.i = getelementptr inbounds %struct.ext4_io_end, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %inode.i, align 4
  %i_write_hint.i = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 21
  %92 = ptrtoint ptr %i_write_hint.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i_write_hint.i, align 1
  %conv1.i = zext i8 %93 to i16
  %bi_write_hint.i = getelementptr inbounds %struct.bio, ptr %83, i32 0, i32 5
  %94 = ptrtoint ptr %bi_write_hint.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv1.i, ptr %bi_write_hint.i, align 8
  %95 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_bio, align 4
  %or.i.i = select i1 %cmp.i, i32 2049, i32 1
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i.i, ptr %bi_opf.i.i, align 8
  %98 = load ptr, ptr %io_bio, align 4
  tail call void @submit_bio(ptr noundef %98) #10
  %99 = ptrtoint ptr %io_bio to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %io_bio, align 4
  br label %do.cond83

if.end78:                                         ; preds = %lor.lhs.false67
  %100 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %bh.0, align 4
  %102 = and i32 %101, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool80.not = icmp eq i32 %102, 0
  br i1 %tobool80.not, label %if.end78.if.end82_crit_edge, label %if.then81

if.end78.if.end82_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh.0) #10
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end78.if.end82_crit_edge
  %103 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %bh.0, align 4
  %105 = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i287 = icmp eq i32 %105, 0
  br i1 %tobool.not.i287, label %if.then.i288, label %if.end82.set_buffer_async_write.exit_crit_edge

if.end82.set_buffer_async_write.exit_crit_edge:   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_async_write.exit

if.then.i288:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %bh.0) #10
  br label %set_buffer_async_write.exit

set_buffer_async_write.exit:                      ; preds = %if.then.i288, %if.end82.set_buffer_async_write.exit_crit_edge
  %inc = add i32 %nr_to_submit.0, 1
  br label %do.cond83

do.cond83:                                        ; preds = %set_buffer_async_write.exit, %ext4_io_submit.exit, %if.end74.do.cond83_crit_edge, %if.then.i274, %if.then58.do.cond83_crit_edge
  %nr_to_submit.1 = phi i32 [ %nr_to_submit.0, %ext4_io_submit.exit ], [ %nr_to_submit.0, %if.end74.do.cond83_crit_edge ], [ %inc, %set_buffer_async_write.exit ], [ %nr_to_submit.0, %if.then58.do.cond83_crit_edge ], [ %nr_to_submit.0, %if.then.i274 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %106 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %b_this_page, align 4
  %cmp84.not = icmp eq ptr %107, %61
  br i1 %cmp84.not, label %do.body86, label %do.cond83.do.body56_crit_edge

do.cond83.do.body56_crit_edge:                    ; preds = %do.cond83
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

do.body86:                                        ; preds = %do.cond83
  %108 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp.i.not.i289 = icmp eq i32 %109, -1
  br i1 %cmp.i.not.i289, label %if.then.i290, label %PagePrivate.exit293, !prof !49

if.then.i290:                                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

PagePrivate.exit293:                              ; preds = %do.body86
  %110 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %page, align 4
  %112 = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool88.not = icmp eq i32 %112, 0
  br i1 %tobool88.not, label %do.body98, label %do.end106, !prof !49

do.body98:                                        ; preds = %PagePrivate.exit293
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.end106:                                        ; preds = %PagePrivate.exit293
  %113 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %private, align 4
  %115 = inttoptr i32 %114 to ptr
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %116 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i305 = and i32 %117, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i305)
  %tobool.not.i.i306 = icmp eq i32 %and.i.i305, 0
  br i1 %tobool.not.i.i306, label %do.end106.if.end153_crit_edge, label %fscrypt_needs_contents_encryption.exit.i

do.end106.if.end153_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

fscrypt_needs_contents_encryption.exit.i:         ; preds = %do.end106
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %3, align 8
  %120 = and i16 %119, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %120)
  %cmp.i.i = icmp eq i16 %120, -32768
  br i1 %cmp.i.i, label %fscrypt_inode_uses_fs_layer_crypto.exit, label %fscrypt_needs_contents_encryption.exit.i.if.end153_crit_edge

fscrypt_needs_contents_encryption.exit.i.if.end153_crit_edge: ; preds = %fscrypt_needs_contents_encryption.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

fscrypt_inode_uses_fs_layer_crypto.exit:          ; preds = %fscrypt_needs_contents_encryption.exit.i
  %call1.i307 = tail call zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_to_submit.1)
  %tobool110.not = icmp eq i32 %nr_to_submit.1, 0
  %or.cond = select i1 %call1.i307, i1 true, i1 %tobool110.not
  br i1 %or.cond, label %fscrypt_inode_uses_fs_layer_crypto.exit.if.end153_crit_edge, label %if.then111

fscrypt_inode_uses_fs_layer_crypto.exit.if.end153_crit_edge: ; preds = %fscrypt_inode_uses_fs_layer_crypto.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then111:                                       ; preds = %fscrypt_inode_uses_fs_layer_crypto.exit
  %sub = add i32 %len, -1
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %121 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %122 to i32
  %notmask = shl nsw i32 -1, %conv.i
  %sub113 = xor i32 %notmask, -1
  %or = or i32 %sub, %sub113
  %add = add i32 %or, 1
  %123 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %io_bio, align 4
  %tobool115.not = icmp eq ptr %124, null
  %spec.select = select i1 %tobool115.not, i32 3136, i32 10240
  %call118345 = tail call ptr @fscrypt_encrypt_pagecache_blocks(ptr noundef %page, i32 noundef %add, i32 noundef 0, i32 noundef %spec.select) #10
  %cmp.i308346 = icmp ugt ptr %call118345, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i308346, label %if.then120.lr.ph, label %if.then111.if.end153_crit_edge

if.then111.if.end153_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then120.lr.ph:                                 ; preds = %if.then111
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %5, i32 0, i32 4
  br label %if.then120

if.then120:                                       ; preds = %if.end134.if.then120_crit_edge, %if.then120.lr.ph
  %call118348 = phi ptr [ %call118345, %if.then120.lr.ph ], [ %call118, %if.end134.if.then120_crit_edge ]
  %gfp_flags.1347 = phi i32 [ %spec.select, %if.then120.lr.ph ], [ %new_gfp_flags.0, %if.end134.if.then120_crit_edge ]
  %cmp122 = icmp eq ptr %call118348, inttoptr (i32 -12 to ptr)
  br i1 %cmp122, label %land.lhs.true123, label %if.then120.if.end135_crit_edge

if.then120.if.end135_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

land.lhs.true123:                                 ; preds = %if.then120
  %125 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io_bio, align 4
  %tobool125.not = icmp eq ptr %126, null
  br i1 %tobool125.not, label %lor.lhs.false126, label %ext4_io_submit.exit321

lor.lhs.false126:                                 ; preds = %land.lhs.true123
  %127 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp127 = icmp eq i32 %128, 1
  br i1 %cmp127, label %lor.lhs.false126.if.end134_crit_edge, label %lor.lhs.false126.if.end135_crit_edge

lor.lhs.false126.if.end135_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

lor.lhs.false126.if.end134_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

ext4_io_submit.exit321:                           ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io, align 8
  %sync_mode.i311 = getelementptr inbounds %struct.writeback_control, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %sync_mode.i311 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sync_mode.i311, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp.i312 = icmp eq i32 %132, 1
  %133 = ptrtoint ptr %io_end.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %io_end.i, align 8
  %inode.i314 = getelementptr inbounds %struct.ext4_io_end, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %inode.i314 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %inode.i314, align 4
  %i_write_hint.i315 = getelementptr inbounds %struct.inode, ptr %136, i32 0, i32 21
  %137 = ptrtoint ptr %i_write_hint.i315 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %i_write_hint.i315, align 1
  %conv1.i316 = zext i8 %138 to i16
  %bi_write_hint.i317 = getelementptr inbounds %struct.bio, ptr %126, i32 0, i32 5
  %139 = ptrtoint ptr %bi_write_hint.i317 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv1.i316, ptr %bi_write_hint.i317, align 8
  %140 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_bio, align 4
  %or.i.i318 = select i1 %cmp.i312, i32 2049, i32 1
  %bi_opf.i.i319 = getelementptr inbounds %struct.bio, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %bi_opf.i.i319 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or.i.i318, ptr %bi_opf.i.i319, align 8
  %143 = load ptr, ptr %io_bio, align 4
  tail call void @submit_bio(ptr noundef %143) #10
  %144 = ptrtoint ptr %io_bio to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %io_bio, align 4
  br label %if.end134

if.end134:                                        ; preds = %ext4_io_submit.exit321, %lor.lhs.false126.if.end134_crit_edge
  %new_gfp_flags.0 = phi i32 [ 3136, %ext4_io_submit.exit321 ], [ 35904, %lor.lhs.false126.if.end134_crit_edge ]
  tail call fastcc void @memalloc_retry_wait(i32 noundef %gfp_flags.1347)
  %call118 = tail call ptr @fscrypt_encrypt_pagecache_blocks(ptr noundef %page, i32 noundef %add, i32 noundef 0, i32 noundef %new_gfp_flags.0) #10
  %cmp.i308 = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i308, label %if.end134.if.then120_crit_edge, label %if.end134.if.end153_crit_edge

if.end134.if.end153_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.end134.if.then120_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then120

if.end135:                                        ; preds = %lor.lhs.false126.if.end135_crit_edge, %if.then120.if.end135_crit_edge
  %145 = ptrtoint ptr %call118348 to i32
  %call136 = tail call i32 @___ratelimit(ptr noundef nonnull @ext4_bio_write_page._rs, ptr noundef nonnull @__func__.ext4_bio_write_page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end135.if.end144_crit_edge, label %do.end141

if.end135.if.end144_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ext4_bio_write_page, i32 noundef %145) #13
  br label %if.end144

if.end144:                                        ; preds = %do.end141, %if.end135.if.end144_crit_edge
  %call145 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %5, ptr noundef %page) #10
  br label %do.body146

do.body146:                                       ; preds = %do.body146.do.body146_crit_edge, %if.end144
  %bh.1 = phi ptr [ %115, %if.end144 ], [ %147, %do.body146.do.body146_crit_edge ]
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %bh.1) #10
  %b_this_page147 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %146 = ptrtoint ptr %b_this_page147 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %b_this_page147, align 4
  %cmp149.not = icmp eq ptr %147, %115
  br i1 %cmp149.not, label %unlock.thread, label %do.body146.do.body146_crit_edge

do.body146.do.body146_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body146

unlock.thread:                                    ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef %page) #10
  br label %if.then166

if.end153:                                        ; preds = %if.end134.if.end153_crit_edge, %if.then111.if.end153_crit_edge, %fscrypt_inode_uses_fs_layer_crypto.exit.if.end153_crit_edge, %fscrypt_needs_contents_encryption.exit.i.if.end153_crit_edge, %do.end106.if.end153_crit_edge
  %ret.2 = phi i32 [ 0, %fscrypt_inode_uses_fs_layer_crypto.exit.if.end153_crit_edge ], [ 0, %fscrypt_needs_contents_encryption.exit.i.if.end153_crit_edge ], [ 0, %do.end106.if.end153_crit_edge ], [ 0, %if.then111.if.end153_crit_edge ], [ -12, %if.end134.if.end153_crit_edge ]
  %bounce_page.0 = phi ptr [ null, %fscrypt_inode_uses_fs_layer_crypto.exit.if.end153_crit_edge ], [ null, %fscrypt_needs_contents_encryption.exit.i.if.end153_crit_edge ], [ null, %do.end106.if.end153_crit_edge ], [ %call118345, %if.then111.if.end153_crit_edge ], [ %call118, %if.end134.if.end153_crit_edge ]
  %tobool159.not = icmp eq ptr %bounce_page.0, null
  %page.bounce_page.0 = select i1 %tobool159.not, ptr %page, ptr %bounce_page.0
  %io_next_block.i = getelementptr inbounds %struct.ext4_io_submit, ptr %io, i32 0, i32 3
  %i_write_hint.i328 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 21
  br label %do.body154

do.body154:                                       ; preds = %do.cond161.do.body154_crit_edge, %if.end153
  %bh.4 = phi ptr [ %115, %if.end153 ], [ %224, %do.cond161.do.body154_crit_edge ]
  %nr_submitted.0 = phi i32 [ 0, %if.end153 ], [ %nr_submitted.1, %do.cond161.do.body154_crit_edge ]
  %148 = ptrtoint ptr %bh.4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %bh.4, align 4
  %150 = and i32 %149, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool156.not = icmp eq i32 %150, 0
  br i1 %tobool156.not, label %do.body154.do.cond161_crit_edge, label %if.end158

do.body154.do.cond161_crit_edge:                  ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond161

if.end158:                                        ; preds = %do.body154
  %151 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %io_bio, align 4
  %tobool.not.i323 = icmp eq ptr %152, null
  br i1 %tobool.not.i323, label %if.end158.if.then4.i_crit_edge, label %land.lhs.true.i

if.end158.if.then4.i_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

land.lhs.true.i:                                  ; preds = %if.end158
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 3
  %153 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %b_blocknr.i, align 8
  %155 = ptrtoint ptr %io_next_block.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %io_next_block.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %154, i64 %156)
  %cmp.not.i = icmp eq i64 %154, %156
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.submit_and_retry.i_crit_edge

land.lhs.true.i.submit_and_retry.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_and_retry.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %call.i = tail call zeroext i1 @fscrypt_mergeable_bio_bh(ptr noundef nonnull %152, ptr noundef %bh.4) #10
  br i1 %call.i, label %if.endthread-pre-split.i, label %lor.lhs.false.i.submit_and_retry.i_crit_edge

lor.lhs.false.i.submit_and_retry.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_and_retry.i

submit_and_retry.i:                               ; preds = %if.end6.i.submit_and_retry.i_crit_edge, %lor.lhs.false.i.submit_and_retry.i_crit_edge, %land.lhs.true.i.submit_and_retry.i_crit_edge
  %157 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %io_bio, align 4
  %tobool.not.i.i324 = icmp eq ptr %158, null
  br i1 %tobool.not.i.i324, label %submit_and_retry.i.ext4_io_submit.exit.i_crit_edge, label %if.then.i.i326

submit_and_retry.i.ext4_io_submit.exit.i_crit_edge: ; preds = %submit_and_retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_io_submit.exit.i

if.then.i.i326:                                   ; preds = %submit_and_retry.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %io, align 8
  %sync_mode.i.i = getelementptr inbounds %struct.writeback_control, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %sync_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sync_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp.i.i325 = icmp eq i32 %162, 1
  %163 = ptrtoint ptr %io_end.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io_end.i, align 8
  %inode.i.i = getelementptr inbounds %struct.ext4_io_end, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %inode.i.i, align 4
  %i_write_hint.i.i = getelementptr inbounds %struct.inode, ptr %166, i32 0, i32 21
  %167 = ptrtoint ptr %i_write_hint.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %i_write_hint.i.i, align 1
  %conv1.i.i = zext i8 %168 to i16
  %bi_write_hint.i.i = getelementptr inbounds %struct.bio, ptr %158, i32 0, i32 5
  %169 = ptrtoint ptr %bi_write_hint.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv1.i.i, ptr %bi_write_hint.i.i, align 8
  %170 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_bio, align 4
  %or.i.i.i = select i1 %cmp.i.i325, i32 2049, i32 1
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or.i.i.i, ptr %bi_opf.i.i.i, align 8
  %173 = load ptr, ptr %io_bio, align 4
  tail call void @submit_bio(ptr noundef %173) #10
  br label %ext4_io_submit.exit.i

ext4_io_submit.exit.i:                            ; preds = %if.then.i.i326, %submit_and_retry.i.ext4_io_submit.exit.i_crit_edge
  %174 = ptrtoint ptr %io_bio to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %io_bio, align 4
  br label %if.then4.i

if.endthread-pre-split.i:                         ; preds = %lor.lhs.false.i
  %175 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %175)
  %.pr.i = load ptr, ptr %io_bio, align 4
  %phi.cmp.i = icmp eq ptr %.pr.i, null
  br i1 %phi.cmp.i, label %if.endthread-pre-split.i.if.then4.i_crit_edge, label %if.endthread-pre-split.i.if.end6.i_crit_edge

if.endthread-pre-split.i.if.end6.i_crit_edge:     ; preds = %if.endthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.endthread-pre-split.i.if.then4.i_crit_edge:    ; preds = %if.endthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.endthread-pre-split.i.if.then4.i_crit_edge, %ext4_io_submit.exit.i, %if.end158.if.then4.i_crit_edge
  %call.i.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #10
  tail call void @fscrypt_set_bio_crypt_ctx_bh(ptr noundef %call.i.i.i, ptr noundef %bh.4, i32 noundef 3072) #10
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 3
  %176 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %b_blocknr.i.i, align 8
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 4
  %178 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %b_size.i.i, align 8
  %shr.i.i327 = lshr i32 %179, 9
  %conv.i.i = zext i32 %shr.i.i327 to i64
  %mul.i.i = mul i64 %177, %conv.i.i
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 8
  %180 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %mul.i.i, ptr %bi_iter.i.i, align 8
  %b_bdev.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 6
  %181 = ptrtoint ptr %b_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %b_bdev.i.i, align 8
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 3
  %183 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %184, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %186, %182
  br i1 %cmp.not.i.i.i, label %if.then4.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i.i

if.then4.i.bio_set_dev.exit.i.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i.i.i = and i16 %184, -2177
  %187 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then4.i.bio_set_dev.exit.i.i_crit_edge
  %188 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %182, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i.i) #10
  %bi_end_io.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 10
  %189 = ptrtoint ptr %bi_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @ext4_end_bio, ptr %bi_end_io.i.i, align 8
  %190 = ptrtoint ptr %io_end.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_end.i, align 8
  %count.i.i.i = getelementptr inbounds %struct.ext4_io_end, ptr %191, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %192 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %192, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %bio_set_dev.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !49

bio_set_dev.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %bio_set_dev.exit.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %193 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %193)
  %.not.i.i.i.i.i.i = icmp sgt i32 %193, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.ext4_get_io_end.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !57

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.ext4_get_io_end.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext4_get_io_end.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %bio_set_dev.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bio_set_dev.exit.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %ext4_get_io_end.exit.i.i

ext4_get_io_end.exit.i.i:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.ext4_get_io_end.exit.i.i_crit_edge
  %bi_private.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 11
  %194 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %191, ptr %bi_private.i.i, align 4
  %195 = ptrtoint ptr %io_bio to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call.i.i.i, ptr %io_bio, align 4
  %196 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %b_blocknr.i.i, align 8
  %198 = ptrtoint ptr %io_next_block.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %io_next_block.i, align 8
  %199 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %io, align 8
  %wb.i.i.i = getelementptr inbounds %struct.writeback_control, ptr %200, i32 0, i32 6
  %201 = ptrtoint ptr %wb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %wb.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %202, null
  br i1 %tobool.not.i.i.i, label %ext4_get_io_end.exit.i.i.io_submit_init_bio.exit.i_crit_edge, label %if.then.i16.i.i

ext4_get_io_end.exit.i.i.io_submit_init_bio.exit.i_crit_edge: ; preds = %ext4_get_io_end.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %io_submit_init_bio.exit.i

if.then.i16.i.i:                                  ; preds = %ext4_get_io_end.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %blkcg_css.i.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %202, i32 0, i32 30
  %203 = ptrtoint ptr %blkcg_css.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %blkcg_css.i.i.i, align 4
  tail call void @bio_associate_blkg_from_css(ptr noundef %call.i.i.i, ptr noundef %204) #10
  br label %io_submit_init_bio.exit.i

io_submit_init_bio.exit.i:                        ; preds = %if.then.i16.i.i, %ext4_get_io_end.exit.i.i.io_submit_init_bio.exit.i_crit_edge
  %205 = ptrtoint ptr %i_write_hint.i328 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %i_write_hint.i328, align 1
  %conv.i329 = zext i8 %206 to i16
  %207 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %io_bio, align 4
  %bi_write_hint.i330 = getelementptr inbounds %struct.bio, ptr %208, i32 0, i32 5
  %209 = ptrtoint ptr %bi_write_hint.i330 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv.i329, ptr %bi_write_hint.i330, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %io_submit_init_bio.exit.i, %if.endthread-pre-split.i.if.end6.i_crit_edge
  %210 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io_bio, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 4
  %212 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %b_size.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 5
  %214 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %b_data.i, align 4
  %216 = ptrtoint ptr %215 to i32
  %and.i = and i32 %216, 4095
  %call8.i = tail call i32 @bio_add_page(ptr noundef %211, ptr noundef %page.bounce_page.0, i32 noundef %213, i32 noundef %and.i) #10
  %217 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %218)
  %cmp10.not.i = icmp eq i32 %call8.i, %218
  br i1 %cmp10.not.i, label %io_submit_add_bh.exit, label %if.end6.i.submit_and_retry.i_crit_edge

if.end6.i.submit_and_retry.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_and_retry.i

io_submit_add_bh.exit:                            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %io, align 8
  tail call void @wbc_account_cgroup_owner(ptr noundef %220, ptr noundef %page.bounce_page.0, i32 noundef %call8.i) #10
  %221 = ptrtoint ptr %io_next_block.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %io_next_block.i, align 8
  %inc.i = add i64 %222, 1
  store i64 %inc.i, ptr %io_next_block.i, align 8
  %inc160 = add i32 %nr_submitted.0, 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.4) #10
  br label %do.cond161

do.cond161:                                       ; preds = %io_submit_add_bh.exit, %do.body154.do.cond161_crit_edge
  %nr_submitted.1 = phi i32 [ %inc160, %io_submit_add_bh.exit ], [ %nr_submitted.0, %do.body154.do.cond161_crit_edge ]
  %b_this_page162 = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 1
  %223 = ptrtoint ptr %b_this_page162 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %b_this_page162, align 4
  %cmp163.not = icmp eq ptr %224, %115
  br i1 %cmp163.not, label %unlock, label %do.cond161.do.body154_crit_edge

do.cond161.do.body154_crit_edge:                  ; preds = %do.cond161
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body154

unlock:                                           ; preds = %do.cond161
  tail call void @unlock_page(ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_submitted.1)
  %tobool165.not = icmp eq i32 %nr_submitted.1, 0
  br i1 %tobool165.not, label %unlock.if.then166_crit_edge, label %unlock.cleanup168_crit_edge

unlock.cleanup168_crit_edge:                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup168

unlock.if.then166_crit_edge:                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then166

if.then166:                                       ; preds = %unlock.if.then166_crit_edge, %unlock.thread
  %ret.3341 = phi i32 [ %145, %unlock.thread ], [ %ret.2, %unlock.if.then166_crit_edge ]
  tail call void @end_page_writeback(ptr noundef %page) #10
  br label %cleanup168

cleanup168:                                       ; preds = %if.then166, %unlock.cleanup168_crit_edge
  %ret.3340 = phi i32 [ %ret.2, %unlock.cleanup168_crit_edge ], [ %ret.3341, %if.then166 ]
  ret i32 %ret.3340
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscrypt_encrypt_pagecache_blocks(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memalloc_retry_wait(i32 noundef %gfp_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #10
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
  %7 = tail call i32 @llvm.read_register.i32(metadata !39) #10
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
  %and.i62 = and i32 %12, 269221888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i, label %__here.current_gfp_context.exit_crit_edge, label %if.then.i, !prof !57

__here.current_gfp_context.exit_crit_edge:        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %current_gfp_context.exit

if.then.i:                                        ; preds = %__here
  %and4.i = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and7.i = and i32 %gfp_flags, -193
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and11.i = and i32 %gfp_flags, -129
  %spec.select.i = select i1 %tobool9.not.i, i32 %gfp_flags, i32 %and11.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then6.i
  %flags.addr.0.i = phi i32 [ %and7.i, %if.then6.i ], [ %spec.select.i, %if.else.i ]
  %and13.i = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %and16.i = and i32 %flags.addr.0.i, -9
  %spec.select25.i = select i1 %tobool14.not.i, i32 %flags.addr.0.i, i32 %and16.i
  br label %current_gfp_context.exit

current_gfp_context.exit:                         ; preds = %if.end12.i, %__here.current_gfp_context.exit_crit_edge
  %flags.addr.1.i = phi i32 [ %gfp_flags, %__here.current_gfp_context.exit_crit_edge ], [ %spec.select25.i, %if.end12.i ]
  %and.i63 = and i32 %flags.addr.1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.i.not = icmp eq i32 %and.i63, 0
  %. = select i1 %tobool.i.not, i32 2, i32 1
  %call56 = tail call i32 @io_schedule_timeout(i32 noundef %.) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_finish_bio(ptr nocapture noundef readonly %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i108.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i108.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end53.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.0111 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end53.if.end.i_crit_edge ]
  %iter_all.sroa.13.0110 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select103, %if.end53.if.end.i_crit_edge ]
  %iter_all.sroa.17.0109 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select102, %if.end53.if.end.i_crit_edge ]
  %2 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.17.0109)
  %tobool.not.i.i80 = icmp eq i32 %iter_all.sroa.17.0109, 0
  br i1 %tobool.not.i.i80, label %if.else.i.i, label %if.then.i.i81

if.then.i.i81:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0111, i32 1
  br label %if.end.i.i85

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.13.0110
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.13.0110, i32 2
  %6 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i82 = lshr i32 %7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %5, i32 %shr.i.i82
  %and.i.i83 = and i32 %7, 4095
  br label %if.end.i.i85

if.end.i.i85:                                     ; preds = %if.else.i.i, %if.then.i.i81
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i81 ]
  %.sink.i.i = phi i32 [ %and.i.i83, %if.else.i.i ], [ 0, %if.then.i.i81 ]
  %sub.i.i84 = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.13.0110, i32 1
  %8 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %9, %iter_all.sroa.17.0109
  %10 = tail call i32 @llvm.umin.i32(i32 %sub.i.i84, i32 %sub9.i.i) #10
  %add.i.i = add i32 %10, %iter_all.sroa.17.0109
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp15.i.i = icmp eq i32 %add.i.i, %9
  %spec.select102 = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select103 = add nuw nsw i32 %iter_all.sroa.13.0110, %inc.i.i
  %add = add nuw nsw i32 %10, %.sink.i.i
  %mapping.i = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping.i, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %if.then, label %if.end.i.i85.if.end_crit_edge

if.end.i.i85.if.end_crit_edge:                    ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private.i, align 4
  %15 = inttoptr i32 %14 to ptr
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.i85.if.end_crit_edge
  %bounce_page.0 = phi ptr [ %iter_all.sroa.0.1, %if.then ], [ null, %if.end.i.i85.if.end_crit_edge ]
  %page.0 = phi ptr [ %15, %if.then ], [ %iter_all.sroa.0.1, %if.end.i.i85.if.end_crit_edge ]
  %16 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then4:                                         ; preds = %if.end
  %18 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !57

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.body7.i:                                       ; preds = %if.then4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %18, align 4
  %and.i31.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %22, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i = icmp eq i32 %26, -1
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %18, align 4
  %and.i32.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !49

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !57

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %28, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %29, %if.end.i36.i ]
  %30 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !72
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !57

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %28, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %page.0 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %31, %if.end.i43.i ]
  %32 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %32) #10
  %mapping = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mapping, align 4
  tail call void @__filemap_set_wb_err(ptr noundef %34, i32 noundef -5) #10
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool4.not.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i, label %SetPageError.exit.mapping_set_error.exit_crit_edge, label %if.then5.i

SetPageError.exit.mapping_set_error.exit_crit_edge: ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef -5) #10
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %SetPageError.exit.mapping_set_error.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.address_space, ptr %34, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #10
  br label %do.body

do.body:                                          ; preds = %mapping_set_error.exit, %if.end.do.body_crit_edge
  %39 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i75 = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i75, label %if.then.i76, label %PagePrivate.exit, !prof !49

if.then.i76:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

PagePrivate.exit:                                 ; preds = %do.body
  %41 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %page.0, align 4
  %43 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool7.not = icmp eq i32 %43, 0
  br i1 %tobool7.not, label %do.body12, label %do.end18, !prof !49

do.body12:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/page-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

do.end18:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private, align 4
  %46 = inttoptr i32 %45 to ptr
  %b_uptodate_lock = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 12
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %b_uptodate_lock) #10
  br label %do.body28

do.body28:                                        ; preds = %do.cond46.do.body28_crit_edge, %do.end18
  %bh.0 = phi ptr [ %46, %do.end18 ], [ %62, %do.cond46.do.body28_crit_edge ]
  %under_io.0 = phi i32 [ 0, %do.end18 ], [ %under_io.1, %do.cond46.do.body28_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %47 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data, align 4
  %49 = ptrtoint ptr %48 to i32
  %and = and i32 %49, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %.sink.i.i)
  %cmp29 = icmp ult i32 %and, %.sink.i.i
  br i1 %cmp29, label %do.body28.if.then36_crit_edge, label %lor.lhs.false

do.body28.if.then36_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false:                                    ; preds = %do.body28
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 4
  %50 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %b_size, align 8
  %add33 = add i32 %51, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %add)
  %cmp34 = icmp ugt i32 %add33, %add
  br i1 %cmp34, label %lor.lhs.false.if.then36_crit_edge, label %if.end41

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %do.body28.if.then36_crit_edge
  %52 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %bh.0, align 4
  %54 = lshr i32 %53, 7
  %.lobit = and i32 %54, 1
  %spec.select = add i32 %.lobit, %under_io.0
  br label %do.cond46

if.end41:                                         ; preds = %lor.lhs.false
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %bh.0) #10
  %55 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool43.not = icmp eq i8 %56, 0
  br i1 %tobool43.not, label %if.end41.do.cond46_crit_edge, label %if.then44

if.end41.do.cond46_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond46

if.then44:                                        ; preds = %if.end41
  %call.i87 = tail call i32 @___ratelimit(ptr noundef nonnull @buffer_io_error._rs, ptr noundef nonnull @__func__.buffer_io_error) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.then44.do.cond46_crit_edge, label %do.end.i

if.then44.do.cond46_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond46

do.end.i:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %57 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %59 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %b_blocknr.i, align 8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %58, i64 noundef %60) #13
  br label %do.cond46

do.cond46:                                        ; preds = %do.end.i, %if.then44.do.cond46_crit_edge, %if.end41.do.cond46_crit_edge, %if.then36
  %under_io.1 = phi i32 [ %under_io.0, %if.end41.do.cond46_crit_edge ], [ %spec.select, %if.then36 ], [ %under_io.0, %if.then44.do.cond46_crit_edge ], [ %under_io.0, %do.end.i ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %61 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_this_page, align 4
  %cmp47.not = icmp eq ptr %62, %46
  br i1 %cmp47.not, label %do.end49, label %do.cond46.do.body28_crit_edge

do.cond46.do.body28_crit_edge:                    ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

do.end49:                                         ; preds = %do.cond46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %b_uptodate_lock, i32 noundef %call23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %under_io.1)
  %tobool51.not = icmp eq i32 %under_io.1, 0
  br i1 %tobool51.not, label %if.then52, label %do.end49.if.end53_crit_edge

do.end49.if.end53_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then52:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fscrypt_free_bounce_page(ptr noundef %bounce_page.0) #10
  tail call void @end_page_writeback(ptr noundef %page.0) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %do.end49.if.end53_crit_edge
  %63 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %64 to i32
  %cmp.not.i = icmp ult i32 %spec.select103, %conv.i
  br i1 %cmp.not.i, label %if.end53.if.end.i_crit_edge, label %if.end53.for.end_crit_edge

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end53.if.end.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_free_bounce_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fscrypt_mergeable_bio_bh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wbc_account_cgroup_owner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_set_bio_crypt_ctx_bh(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext4_end_bio(ptr noundef %bio) #2 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #10
  %tobool.not = icmp eq ptr %1, null
  %4 = call ptr @memset(ptr %b, i32 255, i32 32)
  br i1 %tobool.not, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %entry
  %.b107 = load i1, ptr @ext4_end_bio.__already_done, align 1
  br i1 %.b107, label %land.rhs.if.then42_crit_edge, label %if.then, !prof !57

land.rhs.if.then42_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ext4_end_bio.__already_done, align 1
  %call = call ptr @bio_devname(ptr noundef %bio, ptr noundef nonnull %b) #10
  %5 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %8, 9
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %9 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bi_status, align 2
  %conv = zext i8 %10 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 332, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call, i64 noundef %6, i32 noundef %shr, i32 noundef %conv) #10
  br label %if.then42

if.then42:                                        ; preds = %if.then, %land.rhs.if.then42_crit_edge
  call fastcc void @ext4_finish_bio(ptr noundef %bio)
  call void @bio_put(ptr noundef %bio) #10
  br label %cleanup

if.end43:                                         ; preds = %entry
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %11 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bi_end_io, align 8
  %bi_status44 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %12 = ptrtoint ptr %bi_status44 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bi_status44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool45.not = icmp eq i8 %13, 0
  br i1 %tobool45.not, label %if.end43.if.end54_crit_edge, label %if.then46

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then46:                                        ; preds = %if.end43
  %inode47 = getelementptr inbounds %struct.ext4_io_end, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %inode47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inode47, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %conv49 = zext i8 %13 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 20
  %20 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i_blkbits, align 2
  %conv50 = zext i8 %21 to i32
  %sub = add nsw i32 %conv50, -9
  %sh_prom = zext i32 %sub to i64
  %shr51 = lshr i64 %3, %sh_prom
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %17, ptr noundef nonnull @__func__.ext4_end_bio, i32 noundef 346, ptr noundef nonnull @.str.13, i32 noundef %conv49, i32 noundef %19, i64 noundef %shr51) #10
  %i_mapping = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping, align 8
  %24 = ptrtoint ptr %bi_status44 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bi_status44, align 2
  %call53 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool.not.i = icmp eq i32 %call53, 0
  br i1 %tobool.not.i, label %if.then46.if.end54_crit_edge, label %if.end.i, !prof !57

if.then46.if.end54_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end.i:                                         ; preds = %if.then46
  tail call void @__filemap_set_wb_err(ptr noundef %23, i32 noundef %call53) #10
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 50
  %call.i109 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call53) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call53)
  %cmp.i = icmp eq i32 %call53, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %23, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #10
  br label %if.end54

if.end54:                                         ; preds = %if.end7.i, %if.then46.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %flag = getelementptr inbounds %struct.ext4_io_end, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flag, align 4
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %bio57 = getelementptr inbounds %struct.ext4_io_end, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bio57, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  %32 = ptrtoint ptr %bio to i32
  tail call void @llvm.prefetch.p0(ptr %bio57, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %32, ptr %bio57) #10, !srcloc !75
  %asmresult.i = extractvalue { i32, i32 } %33, 0
  %34 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %35 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %bi_private, align 4
  tail call void @ext4_put_io_end_defer(ptr noundef nonnull %1)
  br label %cleanup

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ext4_put_io_end_defer(ptr noundef nonnull %1)
  tail call fastcc void @ext4_finish_bio(ptr noundef %bio)
  tail call void @bio_put(ptr noundef %bio) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then56, %if.then42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_devname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg_from_css(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33, !35, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/page-io.c", i32 38, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/page-io.c", i32 42, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext4/page-io.c", i32 536, i32 4}
!6 = !{ptr @ext4_bio_write_page._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.ext4_bio_write_page, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ext4_bio_write_page._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @ext4_bio_write_page._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @io_end_cachep, !13, !"io_end_cachep", i1 false, i1 false}
!13 = !{!"../fs/ext4/page-io.c", i32 33, i32 27}
!14 = !{ptr @io_end_vec_cachep, !15, !"io_end_vec_cachep", i1 false, i1 false}
!15 = !{!"../fs/ext4/page-io.c", i32 34, i32 27}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext4/page-io.c", i32 186, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @buffer_io_error._rs, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../fs/ext4/page-io.c", i32 95, i32 2}
!24 = !{ptr @__func__.buffer_io_error, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @buffer_io_error._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @buffer_io_error._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/sched/mm.h", i32 230, i32 2}
!32 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/ext4/page-io.c", i32 328, i32 6}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__func__.ext4_end_bio, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ext4/page-io.c", i32 342, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2155666366, i64 2155666847, i64 2155666403, i64 2155666459, i64 2155666493, i64 2155666517, i64 2155666558, i64 2155666579, i64 2155666607, i64 2155666641}
!51 = !{i64 2155683872, i64 2155684354, i64 2155683909, i64 2155683965, i64 2155683999, i64 2155684023, i64 2155684064, i64 2155684085, i64 2155684113, i64 2155684147}
!52 = !{i64 2148754372}
!53 = !{i64 2148669081, i64 2148669113, i64 2148669142, i64 2148669176, i64 2148669207, i64 2148669230}
!54 = !{i64 2148754601}
!55 = !{i64 2148755451}
!56 = !{i64 2148669891, i64 2148669923, i64 2148669952, i64 2148669986, i64 2148670017, i64 2148670040}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2150376540}
!59 = !{i64 2155674675, i64 2155675157, i64 2155674712, i64 2155674768, i64 2155674802, i64 2155674826, i64 2155674867, i64 2155674888, i64 2155674916, i64 2155674950}
!60 = !{i64 2155676274, i64 2155676756, i64 2155676311, i64 2155676367, i64 2155676401, i64 2155676425, i64 2155676466, i64 2155676487, i64 2155676515, i64 2155676549}
!61 = !{i64 2148667426, i64 2148667458, i64 2148667487, i64 2148667521, i64 2148667552, i64 2148667575}
!62 = !{i64 2150582074, i64 2150582565, i64 2150582111, i64 2150582167, i64 2150582201, i64 2150582225, i64 2150582266, i64 2150582287, i64 2150582315, i64 2150582349}
!63 = !{i64 2155690486, i64 2155690968, i64 2155690523, i64 2155690579, i64 2155690613, i64 2155690637, i64 2155690678, i64 2155690699, i64 2155690727, i64 2155690761}
!64 = !{i64 2151090495, i64 2151090986, i64 2151090532, i64 2151090588, i64 2151090622, i64 2151090646, i64 2151090687, i64 2151090708, i64 2151090736, i64 2151090770}
!65 = !{i64 2155692074, i64 2155692556, i64 2155692111, i64 2155692167, i64 2155692201, i64 2155692225, i64 2155692266, i64 2155692287, i64 2155692315, i64 2155692349}
!66 = !{i64 2150645033, i64 2150645206, i64 2150645221, i64 2150645273, i64 2150645332, i64 2150645356, i64 2150645397, i64 2150645418, i64 2150645446, i64 2150645478}
!67 = !{i64 2150645908, i64 2150646081, i64 2150646096, i64 2150646148, i64 2150646207, i64 2150646231, i64 2150646272, i64 2150646293, i64 2150646321, i64 2150646353}
!68 = !{i64 2151033347, i64 2151033838, i64 2151033384, i64 2151033440, i64 2151033474, i64 2151033498, i64 2151033539, i64 2151033560, i64 2151033588, i64 2151033622}
!69 = !{i64 2155693891, i64 2155694373, i64 2155693928, i64 2155693984, i64 2155694018, i64 2155694042, i64 2155694083, i64 2155694104, i64 2155694132, i64 2155694166}
!70 = !{i64 2155695687, i64 2155696169, i64 2155695724, i64 2155695780, i64 2155695814, i64 2155695838, i64 2155695879, i64 2155695900, i64 2155695928, i64 2155695962}
!71 = !{i64 2150636231, i64 2150636404, i64 2150636419, i64 2150636471, i64 2150636530, i64 2150636554, i64 2150636595, i64 2150636616, i64 2150636644, i64 2150636676}
!72 = !{i64 2150637106, i64 2150637279, i64 2150637294, i64 2150637346, i64 2150637405, i64 2150637429, i64 2150637470, i64 2150637491, i64 2150637519, i64 2150637551}
!73 = !{i64 2155672522, i64 2155673004, i64 2155672559, i64 2155672615, i64 2155672649, i64 2155672673, i64 2155672714, i64 2155672735, i64 2155672763, i64 2155672797}
!74 = !{i64 2155689451}
!75 = !{i64 1172664, i64 1172681, i64 1172705, i64 1172731, i64 1172749}
!76 = !{i64 2155689796}
