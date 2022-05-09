; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_metapage.c_pt.bc'
source_filename = "../fs/jfs/jfs_metapage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.58 }
%union.anon.58 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.jfs_log = type { %struct.list_head, %struct.list_head, ptr, i32, i64, i32, i32, i32, ptr, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, ptr, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.uuid_t, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.uuid_t = type { [16 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.33, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.33 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.69 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jfs_mp\00", [25 x i8] zeroinitializer }, align 32
@metapage_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@metapage_mempool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jfs_metapage_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @metapage_writepage, ptr @metapage_readpage, ptr null, ptr @__set_page_dirty_nobuffers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @metapage_invalidatepage, ptr @metapage_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@__get_metapage._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 589, ptr null, ptr null }, align 1
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016__get_metapage: ino = %ld, lblock = 0x%lx, abs=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__get_metapage\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/jfs/jfs_metapage.c\00", [42 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr = internal global ptr @__get_metapage._entry, section ".printk_index", align 4
@__get_metapage._entry.4 = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 596, ptr null, ptr null }, align 1
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013MetaData crosses page boundary!!\0A\00", [60 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr.6 = internal global ptr @__get_metapage._entry.4, section ".printk_index", align 4
@__get_metapage._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 597, ptr null, ptr null }, align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013lblock = %lx, size  = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr.9 = internal global ptr @__get_metapage._entry.7, section ".printk_index", align 4
@__get_metapage._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 617, ptr null, ptr null }, align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013grab_cache_page failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr.12 = internal global ptr @__get_metapage._entry.10, section ".printk_index", align 4
@__get_metapage._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 624, ptr null, ptr null }, align 1
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013read_mapping_page failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr.15 = internal global ptr @__get_metapage._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"get_mp->logical_size != size\0A\00", [34 x i8] zeroinitializer }, align 32
@__get_metapage._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 636, ptr null, ptr null }, align 1
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013logical_size = %d, size = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr.19 = internal global ptr @__get_metapage._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using a discarded metapage\0A\00", [36 x i8] zeroinitializer }, align 32
@mpStat.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mpStat.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mpStat.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__get_metapage._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 673, ptr null, ptr null }, align 1
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016zeroing mp = 0x%p\0A\00", [43 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr.23 = internal global ptr @__get_metapage._entry.21, section ".printk_index", align 4
@__get_metapage._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 678, ptr null, ptr null }, align 1
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016__get_metapage: returning = 0x%p data = 0x%p\0A\00", [48 x i8] zeroinitializer }, align 32
@__get_metapage._entry_ptr.26 = internal global ptr @__get_metapage._entry.24, section ".printk_index", align 4
@grab_metapage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016grab_metapage: mp = 0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"grab_metapage\00", [18 x i8] zeroinitializer }, align 32
@grab_metapage._entry_ptr = internal global ptr @grab_metapage._entry, section ".printk_index", align 4
@force_metapage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016force_metapage: mp = 0x%p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"force_metapage\00", [17 x i8] zeroinitializer }, align 32
@force_metapage._entry_ptr = internal global ptr @force_metapage._entry, section ".printk_index", align 4
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"write_one_page() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@release_metapage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016release_metapage: mp = 0x%p, flag = 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"release_metapage\00", [47 x i8] zeroinitializer }, align 32
@release_metapage._entry_ptr = internal global ptr @release_metapage._entry, section ".printk_index", align 4
@release_metapage._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@release_metapage._entry_ptr.36 = internal global ptr @release_metapage._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mp->count\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"JFS Metapage statistics\0A=======================\0Apage allocations = %d\0Apage frees = %d\0Alock waits = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@metapage_writepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013JFS: metapage_get_blocks failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"metapage_writepage\00", [45 x i8] zeroinitializer }, align 32
@metapage_writepage._entry_ptr = internal global ptr @metapage_writepage._entry, section ".printk_index", align 4
@metapage_writepage._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013JFS: bio_add_page failed unexpectedly\0A\00", [55 x i8] zeroinitializer }, align 32
@metapage_writepage._entry_ptr.43 = internal global ptr @metapage_writepage._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"JFS: dump of bio: \00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@metapage_write_end_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013metapage_write_end_io: I/O error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"metapage_write_end_io\00", [42 x i8] zeroinitializer }, align 32
@metapage_write_end_io._entry_ptr = internal global ptr @metapage_write_end_io._entry, section ".printk_index", align 4
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@metapage_readpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.51, ptr @.str.3, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"metapage_readpage\00", [46 x i8] zeroinitializer }, align 32
@metapage_readpage._entry_ptr = internal global ptr @metapage_readpage._entry, section ".printk_index", align 4
@metapage_read_end_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013metapage_read_end_io: I/O error\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"metapage_read_end_io\00", [43 x i8] zeroinitializer }, align 32
@metapage_read_end_io._entry_ptr = internal global ptr @metapage_read_end_io._entry, section ".printk_index", align 4
@metapage_releasepage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016metapage_releasepage: mp = 0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"metapage_releasepage\00", [43 x i8] zeroinitializer }, align 32
@metapage_releasepage._entry_ptr = internal global ptr @metapage_releasepage._entry, section ".printk_index", align 4
@metapage_releasepage._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016count = %ld, nohomeok = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@metapage_releasepage._entry_ptr.58 = internal global ptr @metapage_releasepage._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@alloc_metapage.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mp->wait\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 199, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"metapage_cache\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 68, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"metapage_mempool\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 69, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"jfs_metapage_aops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 568, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 588, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 596, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 597, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 617, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 624, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 634, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 635, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 645, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant [9 x i8] c"mpStat.0\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [9 x i8] c"mpStat.1\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"mpStat.2\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 673, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 678, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 688, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 699, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 706, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 733, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 740, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 809, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 410, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 457, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 460, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 460, i32 27 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 414, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 329, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 452, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 416, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 523, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 272, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 541, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 544, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 55, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 260, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 788, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.244 = private constant [25 x i8] c"../fs/jfs/jfs_metapage.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 184, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1160, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 717, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__get_metapage._entry, ptr @__get_metapage._entry.10, ptr @__get_metapage._entry.13, ptr @__get_metapage._entry.17, ptr @__get_metapage._entry.21, ptr @__get_metapage._entry.24, ptr @__get_metapage._entry.4, ptr @__get_metapage._entry.7, ptr @__get_metapage._entry_ptr, ptr @__get_metapage._entry_ptr.12, ptr @__get_metapage._entry_ptr.15, ptr @__get_metapage._entry_ptr.19, ptr @__get_metapage._entry_ptr.23, ptr @__get_metapage._entry_ptr.26, ptr @__get_metapage._entry_ptr.6, ptr @__get_metapage._entry_ptr.9, ptr @force_metapage._entry, ptr @force_metapage._entry_ptr, ptr @grab_metapage._entry, ptr @grab_metapage._entry_ptr, ptr @metapage_read_end_io._entry, ptr @metapage_read_end_io._entry_ptr, ptr @metapage_readpage._entry, ptr @metapage_readpage._entry_ptr, ptr @metapage_releasepage._entry, ptr @metapage_releasepage._entry.56, ptr @metapage_releasepage._entry_ptr, ptr @metapage_releasepage._entry_ptr.58, ptr @metapage_write_end_io._entry, ptr @metapage_write_end_io._entry_ptr, ptr @metapage_writepage._entry, ptr @metapage_writepage._entry.41, ptr @metapage_writepage._entry_ptr, ptr @metapage_writepage._entry_ptr.43, ptr @release_metapage._entry, ptr @release_metapage._entry.34, ptr @release_metapage._entry_ptr, ptr @release_metapage._entry_ptr.36, ptr @.str, ptr @metapage_cache, ptr @metapage_mempool, ptr @jfs_metapage_aops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @mpStat.0, ptr @mpStat.1, ptr @mpStat.2, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @alloc_metapage.__key, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_mempool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_metapage_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpStat.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpStat.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpStat.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grab_metapage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_metapage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_metapage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_metapage._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_writepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_writepage._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_write_end_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_readpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_read_end_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_releasepage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metapage_releasepage._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_metapage.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @metapage_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  store ptr %call, ptr @metapage_cache, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mempool_create(i32 noundef 32, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call) #9
  store ptr %call.i, ptr @metapage_mempool, align 4
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @metapage_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
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
define dso_local void @metapage_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @metapage_mempool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #9
  %1 = load ptr, ptr @metapage_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metapage_writepage(ptr noundef %page, ptr noundef %wbc) #2 align 64 {
entry:
  %xflag.i = alloca i32, align 4
  %xaddr.i = alloca i64, align 8
  %xlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #9
  %4 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %xlen, align 4, !annotation !143
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %conv1 = zext i32 %6 to i64
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_blkbits, align 2
  %conv2 = zext i8 %8 to i32
  %sub = sub nsw i32 12, %conv2
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %conv1, %sh_prom
  %9 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %9, align 4
  %and.i16.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !145

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !144

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %17, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %18, %if.end.i20.i ]
  %19 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.46) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !146
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !144

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %17, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %20, %if.end.i27.i ]
  %21 = inttoptr i32 %retval.0.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body7, label %do.body13, !prof !145

do.body7:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #9, !srcloc !147
  unreachable

do.body13:                                        ; preds = %PageLocked.exit
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %9, align 4
  %and.i.i247 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i247)
  %tobool.not.i.i248 = icmp eq i32 %and.i.i247, 0
  br i1 %tobool.not.i.i248, label %if.end.i.i251, label %if.then.i.i250, !prof !144

if.then.i.i250:                                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i249 = add i32 %25, -1
  br label %_compound_head.exit.i256

if.end.i.i251:                                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i256

_compound_head.exit.i256:                         ; preds = %if.end.i.i251, %if.then.i.i250
  %retval.0.i.i252 = phi i32 [ %sub.i.i249, %if.then.i.i250 ], [ %26, %if.end.i.i251 ]
  %27 = inttoptr i32 %retval.0.i.i252 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i253 = icmp eq i32 %29, -1
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %9, align 4
  %and.i16.i254 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i254)
  %tobool.not.i17.i255 = icmp eq i32 %and.i16.i254, 0
  br i1 %cmp.i.not.i253, label %if.then.i257, label %do.end10.i263, !prof !145

if.then.i257:                                     ; preds = %_compound_head.exit.i256
  br i1 %tobool.not.i17.i255, label %if.end.i20.i260, label %if.then.i19.i259, !prof !144

if.then.i19.i259:                                 ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i258 = add i32 %31, -1
  br label %_compound_head.exit22.i262

if.end.i20.i260:                                  ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i262

_compound_head.exit22.i262:                       ; preds = %if.end.i20.i260, %if.then.i19.i259
  %retval.0.i21.i261 = phi i32 [ %sub.i18.i258, %if.then.i19.i259 ], [ %32, %if.end.i20.i260 ]
  %33 = inttoptr i32 %retval.0.i21.i261 to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.46) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #9, !srcloc !148
  unreachable

do.end10.i263:                                    ; preds = %_compound_head.exit.i256
  br i1 %tobool.not.i17.i255, label %if.end.i27.i266, label %if.then.i26.i265, !prof !144

if.then.i26.i265:                                 ; preds = %do.end10.i263
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i264 = add i32 %31, -1
  br label %PageWriteback.exit

if.end.i27.i266:                                  ; preds = %do.end10.i263
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i266, %if.then.i26.i265
  %retval.0.i28.i267 = phi i32 [ %sub.i25.i264, %if.then.i26.i265 ], [ %34, %if.end.i27.i266 ]
  %35 = inttoptr i32 %retval.0.i28.i267 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool15.not = icmp eq i32 %38, 0
  br i1 %tobool15.not, label %do.end31, label %do.body23, !prof !144

do.body23:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #9, !srcloc !149
  unreachable

do.end31:                                         ; preds = %PageWriteback.exit
  %call32 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #9
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i.i = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i271, label %PagePrivate.exit.i, !prof !145

if.then.i.i271:                                   ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.49) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

PagePrivate.exit.i:                               ; preds = %do.end31
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %page, align 4
  %43 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %PagePrivate.exit.i.if.then151_crit_edge, label %page_to_mp.exit

PagePrivate.exit.i.if.then151_crit_edge:          ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

page_to_mp.exit:                                  ; preds = %PagePrivate.exit.i
  %44 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private.i, align 4
  %46 = inttoptr i32 %45 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool35.not = icmp eq i32 %45, 0
  br i1 %tobool35.not, label %page_to_mp.exit.if.then151_crit_edge, label %lor.lhs.false

page_to_mp.exit.if.then151_crit_edge:             ; preds = %page_to_mp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

lor.lhs.false:                                    ; preds = %page_to_mp.exit
  %flag = getelementptr inbounds %struct.metapage, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flag, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool37.not = icmp eq i32 %49, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.then151_crit_edge, label %if.end39

lor.lhs.false.if.then151_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.end39:                                         ; preds = %lor.lhs.false
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %46, i32 0, i32 14
  %50 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool40.not = icmp eq i32 %51, 0
  br i1 %tobool40.not, label %if.end39.if.end87_crit_edge, label %land.lhs.true

if.end39.if.end87_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end39
  %52 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flag, align 4
  %54 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool43.not = icmp eq i32 %54, 0
  br i1 %tobool43.not, label %if.then44, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then44:                                        ; preds = %land.lhs.true
  %log = getelementptr inbounds %struct.metapage, ptr %46, i32 0, i32 15
  %55 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %log, align 8
  %tobool45.not = icmp eq ptr %56, null
  br i1 %tobool45.not, label %if.then44.if.end148.thread352_crit_edge, label %land.lhs.true46

if.then44.if.end148.thread352_crit_edge:          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.thread352

land.lhs.true46:                                  ; preds = %if.then44
  %cflag = getelementptr inbounds %struct.jfs_log, ptr %56, i32 0, i32 18
  %57 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cflag, align 4
  %and = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true46.if.end148.thread352_crit_edge

land.lhs.true46.if.end148.thread352_crit_edge:    ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.thread352

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  call void @jfs_flush_journal(ptr noundef nonnull %56, i32 noundef 0) #9
  br label %if.end148.thread352

if.end87:                                         ; preds = %land.lhs.true.if.end87_crit_edge, %if.end39.if.end87_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %flag) #9
  %59 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %i_blkbits, align 2
  %conv90 = zext i8 %60 to i32
  %shr91 = lshr i32 4096, %conv90
  %61 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr91, ptr %xlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag.i) #9
  %62 = ptrtoint ptr %xflag.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %xflag.i, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr.i) #9
  %63 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -1, ptr %xaddr.i, align 8, !annotation !143
  %64 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_size.i, align 8
  %66 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %69 to i64
  %add.i = add i64 %65, -1
  %sub.i = add i64 %add.i, %conv.i
  %sh_prom.i = zext i8 %60 to i64
  %shr.i272 = ashr i64 %sub.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i272, i64 %shl)
  %cmp.not.i = icmp ugt i64 %shr.i272, %shl
  br i1 %cmp.not.i, label %if.end.i, label %if.end87.metapage_get_blocks.exit.thread_crit_edge

if.end87.metapage_get_blocks.exit.thread_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit.thread

if.end.i:                                         ; preds = %if.end87
  %conv3.i283 = zext i32 %shr91 to i64
  %add4.i = add i64 %shl, %conv3.i283
  call void @__sanitizer_cov_trace_cmp8(i64 %add4.i, i64 %shr.i272)
  %cmp5.i = icmp ugt i64 %add4.i, %shr.i272
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub8.i = sub i64 %shr.i272, %shl
  %conv9.i = trunc i64 %sub8.i to i32
  %70 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv9.i, ptr %xlen, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %71 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i273 = icmp eq i32 %72, 0
  br i1 %tobool.not.i273, label %if.end10.i.metapage_get_blocks.exit_crit_edge, label %if.then11.i

if.end10.i.metapage_get_blocks.exit_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit

if.then11.i:                                      ; preds = %if.end10.i
  %73 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %xlen, align 4
  %conv12.i = sext i32 %74 to i64
  %call.i = call i32 @xtLookup(ptr noundef %3, i64 noundef %shl, i64 noundef %conv12.i, ptr noundef nonnull %xflag.i, ptr noundef nonnull %xaddr.i, ptr noundef nonnull %xlen, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.i = icmp eq i32 %call.i, 0
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.then11.i.metapage_get_blocks.exit.thread_crit_edge

if.then11.i.metapage_get_blocks.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit.thread

land.lhs.true.i:                                  ; preds = %if.then11.i
  %75 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %xlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool15.not.i = icmp eq i32 %76, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.metapage_get_blocks.exit.thread_crit_edge, label %if.then16.i

land.lhs.true.i.metapage_get_blocks.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit.thread

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %xaddr.i, align 8
  br label %metapage_get_blocks.exit

metapage_get_blocks.exit.thread:                  ; preds = %land.lhs.true.i.metapage_get_blocks.exit.thread_crit_edge, %if.then11.i.metapage_get_blocks.exit.thread_crit_edge, %if.end87.metapage_get_blocks.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #9
  br label %while.body.preheader

metapage_get_blocks.exit:                         ; preds = %if.then16.i, %if.end10.i.metapage_get_blocks.exit_crit_edge
  %retval.0.i = phi i64 [ %78, %if.then16.i ], [ %shl, %if.end10.i.metapage_get_blocks.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %tobool93.not = icmp eq i64 %retval.0.i, 0
  br i1 %tobool93.not, label %metapage_get_blocks.exit.while.body.preheader_crit_edge, label %if.end101

metapage_get_blocks.exit.while.body.preheader_crit_edge: ; preds = %metapage_get_blocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

if.end101:                                        ; preds = %metapage_get_blocks.exit
  %79 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %xlen, align 4
  %81 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i274 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 33
  %83 = ptrtoint ptr %s_fs_info.i274 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info.i274, align 16
  %nbperpage104 = getelementptr inbounds %struct.jfs_sb_info, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %nbperpage104 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %nbperpage104, align 4
  %conv105 = sext i16 %86 to i32
  %87 = call i32 @llvm.smin.i32(i32 %80, i32 %conv105)
  %call.i275 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %88 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 26
  %90 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i275, i32 0, i32 3
  %92 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %93, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i275, i32 0, i32 1
  %94 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i276 = icmp eq ptr %95, %91
  br i1 %cmp.not.i276, label %if.end101.for.end_crit_edge, label %if.then.i277

if.end101.for.end_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then.i277:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i = and i16 %93, -2177
  %96 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %for.end

for.end:                                          ; preds = %if.then.i277, %if.end101.for.end_crit_edge
  %97 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %91, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i275) #9
  %98 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %i_blkbits, align 2
  %conv116 = zext i8 %99 to i32
  %sub117 = add nsw i32 %conv116, -9
  %sh_prom118 = zext i32 %sub117 to i64
  %shl119 = shl i64 %retval.0.i, %sh_prom118
  %bi_iter120 = getelementptr inbounds %struct.bio, ptr %call.i275, i32 0, i32 8
  %100 = ptrtoint ptr %bi_iter120 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %shl119, ptr %bi_iter120, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i275, i32 0, i32 10
  %101 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @metapage_write_end_io, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i275, i32 0, i32 11
  %102 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %page, ptr %bi_private, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i275, i32 0, i32 2
  %103 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %bi_opf.i, align 8
  %104 = load i8, ptr %i_blkbits, align 2
  %105 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %xlen, align 4
  %sub124 = sub i32 %106, %87
  store i32 %sub124, ptr %xlen, align 4
  %tobool128.not = icmp eq ptr %call.i275, null
  br i1 %tobool128.not, label %for.end.if.then151_crit_edge, label %if.then129

for.end.if.then151_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.then129:                                       ; preds = %for.end
  %conv122 = zext i8 %104 to i32
  %shl123 = shl i32 %87, %conv122
  %call130 = call i32 @bio_add_page(ptr noundef nonnull %call.i275, ptr noundef %page, i32 noundef %shl123, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call130, i32 %shl123)
  %cmp131 = icmp ult i32 %call130, %shl123
  br i1 %cmp131, label %do.end155, label %if.end134

if.end134:                                        ; preds = %if.then129
  %bi_size136 = getelementptr inbounds %struct.bio, ptr %call.i275, i32 0, i32 8, i32 1
  %107 = ptrtoint ptr %bi_size136 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bi_size136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool137.not = icmp eq i32 %108, 0
  br i1 %tobool137.not, label %dump_bio, label %if.end148

if.end148.thread352:                              ; preds = %if.then49, %land.lhs.true46.if.end148.thread352_crit_edge, %if.then44.if.end148.thread352_crit_edge
  %call144 = call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #9
  br label %if.then151

if.end148:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  call void @submit_bio(ptr noundef nonnull %call.i275) #9
  call void @unlock_page(ptr noundef %page) #9
  br label %cleanup

if.then151:                                       ; preds = %if.end148.thread352, %for.end.if.then151_crit_edge, %lor.lhs.false.if.then151_crit_edge, %page_to_mp.exit.if.then151_crit_edge, %PagePrivate.exit.i.if.then151_crit_edge
  call void @unlock_page(ptr noundef %page) #9
  call void @end_page_writeback(ptr noundef %page) #9
  br label %cleanup

do.end155:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %err_out.thread

dump_bio:                                         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %call.i275, i32 noundef 104, i1 noundef zeroext false) #9
  br label %err_out.thread

err_out.thread:                                   ; preds = %dump_bio, %do.end155
  call void @bio_put(ptr noundef nonnull %call.i275) #9
  call void @unlock_page(ptr noundef %page) #9
  call fastcc void @last_write_complete(ptr noundef %page)
  br label %cleanup

while.body.preheader:                             ; preds = %metapage_get_blocks.exit.while.body.preheader_crit_edge, %metapage_get_blocks.exit.thread
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  call void @unlock_page(ptr noundef %page) #9
  call fastcc void @last_write_complete(ptr noundef %page)
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %err_out.thread, %if.then151, %if.end148
  %retval.0 = phi i32 [ 0, %if.then151 ], [ 0, %if.end148 ], [ -5, %while.body.preheader ], [ -5, %err_out.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metapage_readpage(ptr nocapture noundef readnone %fp, ptr noundef %page) #2 align 64 {
entry:
  %xflag.i = alloca i32, align 4
  %xaddr.i = alloca i64, align 8
  %xlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i100 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool.not.i.i101 = icmp eq i32 %and.i.i100, 0
  br i1 %tobool.not.i.i101, label %if.end.i.i104, label %if.then.i.i103, !prof !144

if.then.i.i103:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i102 = add i32 %6, -1
  br label %_compound_head.exit.i106

if.end.i.i104:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i106

_compound_head.exit.i106:                         ; preds = %if.end.i.i104, %if.then.i.i103
  %retval.0.i.i105 = phi i32 [ %sub.i.i102, %if.then.i.i103 ], [ %7, %if.end.i.i104 ]
  %8 = inttoptr i32 %retval.0.i.i105 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !145

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %_compound_head.exit.i106
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %8, align 4
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.i_blocks_per_page.exit_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.i_blocks_per_page.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_blocks_per_page.exit

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = getelementptr %struct.page, ptr %8, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %16 to i32
  br label %i_blocks_per_page.exit

i_blocks_per_page.exit:                           ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.i_blocks_per_page.exit_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %conv.i.i.i.i.i, %if.end.i.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.i.i_blocks_per_page.exit_crit_edge ]
  %shl.i.i.i = shl i32 4096, %retval.0.i.i.i.i.i
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %18 to i32
  %shr.i.i107 = lshr i32 %shl.i.i.i, %conv.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #9
  %19 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %xlen, align 4, !annotation !143
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %i_blocks_per_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %21, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %i_blocks_per_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %22, %if.end.i.i ]
  %23 = inttoptr i32 %retval.0.i.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, -1
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !145

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !144

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %27, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %28, %if.end.i20.i ]
  %29 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.46) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !146
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !144

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %27, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %30, %if.end.i27.i ]
  %31 = inttoptr i32 %retval.0.i28.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !145

do.body5:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 484, 0\0A.popsection", ""() #9, !srcloc !152
  unreachable

do.end10:                                         ; preds = %PageLocked.exit
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %conv = zext i32 %35 to i64
  %sub = sub nsw i32 12, %conv.i.i
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i107)
  %cmp117 = icmp sgt i32 %shr.i.i107, 0
  br i1 %cmp117, label %while.body.lr.ph, label %do.end10.if.else50_crit_edge

do.end10.if.else50_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

while.body.lr.ph:                                 ; preds = %do.end10
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %block_offset.0120 = phi i32 [ 0, %while.body.lr.ph ], [ %block_offset.1, %if.end47.while.body_crit_edge ]
  %bio.0118 = phi ptr [ null, %while.body.lr.ph ], [ %bio.1, %if.end47.while.body_crit_edge ]
  %sub13 = sub i32 %shr.i.i107, %block_offset.0120
  %36 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub13, ptr %xlen, align 4
  %conv14 = sext i32 %block_offset.0120 to i64
  %add = add i64 %shl, %conv14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag.i) #9
  %37 = ptrtoint ptr %xflag.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %xflag.i, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr.i) #9
  %38 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %xaddr.i, align 8, !annotation !143
  %39 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_size.i, align 8
  %41 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %44 to i64
  %add.i = add i64 %40, -1
  %sub.i = add i64 %add.i, %conv.i
  %45 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i_blkbits.i.i, align 2
  %sh_prom.i = zext i8 %46 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %add)
  %cmp.not.i = icmp ugt i64 %shr.i, %add
  br i1 %cmp.not.i, label %if.end.i, label %while.body.metapage_get_blocks.exit.thread_crit_edge

while.body.metapage_get_blocks.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit.thread

if.end.i:                                         ; preds = %while.body
  %conv3.i = sext i32 %sub13 to i64
  %add4.i = add i64 %add, %conv3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add4.i, i64 %shr.i)
  %cmp5.i = icmp ugt i64 %add4.i, %shr.i
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub8.i = sub i64 %shr.i, %add
  %conv9.i = trunc i64 %sub8.i to i32
  %47 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv9.i, ptr %xlen, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %48 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.end10.i.metapage_get_blocks.exit_crit_edge, label %if.then11.i

if.end10.i.metapage_get_blocks.exit_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit

if.then11.i:                                      ; preds = %if.end10.i
  %50 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xlen, align 4
  %conv12.i = sext i32 %51 to i64
  %call.i = call i32 @xtLookup(ptr noundef %3, i64 noundef %add, i64 noundef %conv12.i, ptr noundef nonnull %xflag.i, ptr noundef nonnull %xaddr.i, ptr noundef nonnull %xlen, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.i = icmp eq i32 %call.i, 0
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.then11.i.metapage_get_blocks.exit.thread_crit_edge

if.then11.i.metapage_get_blocks.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit.thread

land.lhs.true.i:                                  ; preds = %if.then11.i
  %52 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool15.not.i = icmp eq i32 %53, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.metapage_get_blocks.exit.thread_crit_edge, label %if.then16.i

land.lhs.true.i.metapage_get_blocks.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %metapage_get_blocks.exit.thread

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %xaddr.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %xaddr.i, align 8
  br label %metapage_get_blocks.exit

metapage_get_blocks.exit.thread:                  ; preds = %land.lhs.true.i.metapage_get_blocks.exit.thread_crit_edge, %if.then11.i.metapage_get_blocks.exit.thread_crit_edge, %while.body.metapage_get_blocks.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #9
  br label %if.end47

metapage_get_blocks.exit:                         ; preds = %if.then16.i, %if.end10.i.metapage_get_blocks.exit_crit_edge
  %retval.0.i = phi i64 [ %55, %if.then16.i ], [ %add, %if.end10.i.metapage_get_blocks.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %tobool16.not = icmp eq i64 %retval.0.i, 0
  br i1 %tobool16.not, label %metapage_get_blocks.exit.if.end47_crit_edge, label %if.then17

metapage_get_blocks.exit.if.end47_crit_edge:      ; preds = %metapage_get_blocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then17:                                        ; preds = %metapage_get_blocks.exit
  %56 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp.i.not.i97 = icmp eq i32 %57, -1
  br i1 %cmp.i.not.i97, label %if.then.i98, label %PagePrivate.exit, !prof !145

if.then.i98:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.49) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

PagePrivate.exit:                                 ; preds = %if.then17
  %58 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %page, align 4
  %tobool26.not = icmp eq ptr %bio.0118, null
  br i1 %tobool26.not, label %PagePrivate.exit.if.end28_crit_edge, label %if.then27

PagePrivate.exit.if.end28_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @submit_bio(ptr noundef nonnull %bio.0118) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %PagePrivate.exit.if.end28_crit_edge
  %call.i109 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %60 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb.i, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 26
  %62 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i109, i32 0, i32 3
  %64 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %65, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i109, i32 0, i32 1
  %66 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i110 = icmp eq ptr %67, %63
  br i1 %cmp.not.i110, label %if.end28.bio_set_dev.exit_crit_edge, label %if.then.i111

if.end28.bio_set_dev.exit_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_set_dev.exit

if.then.i111:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i = and i16 %65, -2177
  %68 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i111, %if.end28.bio_set_dev.exit_crit_edge
  %69 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %63, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i109) #9
  %70 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i_blkbits.i.i, align 2
  %conv31 = zext i8 %71 to i32
  %sub32 = add nsw i32 %conv31, -9
  %sh_prom33 = zext i32 %sub32 to i64
  %shl34 = shl i64 %retval.0.i, %sh_prom33
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i109, i32 0, i32 8
  %72 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %shl34, ptr %bi_iter, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i109, i32 0, i32 10
  %73 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @metapage_read_end_io, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i109, i32 0, i32 11
  %74 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %page, ptr %bi_private, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i109, i32 0, i32 2
  %75 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %bi_opf.i, align 8
  %76 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %xlen, align 4
  %78 = load i8, ptr %i_blkbits.i.i, align 2
  %conv36 = zext i8 %78 to i32
  %shl37 = shl i32 %77, %conv36
  %shl40 = shl i32 %block_offset.0120, %conv36
  %call41 = call i32 @bio_add_page(ptr noundef %call.i109, ptr noundef %page, i32 noundef %shl37, i32 noundef %shl40) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call41, i32 %shl37)
  %cmp42 = icmp ult i32 %call41, %shl37
  br i1 %cmp42, label %do.end54, label %if.end45

if.end45:                                         ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %xlen, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %metapage_get_blocks.exit.if.end47_crit_edge, %metapage_get_blocks.exit.thread
  %bio.1 = phi ptr [ %call.i109, %if.end45 ], [ %bio.0118, %metapage_get_blocks.exit.if.end47_crit_edge ], [ %bio.0118, %metapage_get_blocks.exit.thread ]
  %.pn = phi i32 [ %80, %if.end45 ], [ 1, %metapage_get_blocks.exit.if.end47_crit_edge ], [ 1, %metapage_get_blocks.exit.thread ]
  %block_offset.1 = add i32 %.pn, %block_offset.0120
  %cmp = icmp sgt i32 %shr.i.i107, %block_offset.1
  br i1 %cmp, label %if.end47.while.body_crit_edge, label %while.end

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end47
  %tobool48.not = icmp eq ptr %bio.1, null
  br i1 %tobool48.not, label %while.end.if.else50_crit_edge, label %if.then49

while.end.if.else50_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

if.then49:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @submit_bio(ptr noundef nonnull %bio.1) #9
  br label %cleanup

if.else50:                                        ; preds = %while.end.if.else50_crit_edge, %do.end10.if.else50_crit_edge
  call void @unlock_page(ptr noundef %page) #9
  br label %cleanup

do.end54:                                         ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  call void @bio_put(ptr noundef %call.i109) #9
  call fastcc void @last_read_complete(ptr noundef %page)
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.else50, %if.then49
  %retval.0 = phi i32 [ -5, %do.end54 ], [ 0, %if.else50 ], [ 0, %if.then49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metapage_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp ne i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ult i32 %length, 4096
  %spec.select = or i1 %tobool.not, %cmp
  br i1 %spec.select, label %do.body3, label %do.body7, !prof !145

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 561, 0\0A.popsection", ""() #9, !srcloc !153
  unreachable

do.body7:                                         ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !145

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !144

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
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.46) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #9, !srcloc !148
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !144

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %do.end21, label %do.body16, !prof !144

do.body16:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #9, !srcloc !154
  unreachable

do.end21:                                         ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @metapage_releasepage(ptr noundef %page, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metapage_releasepage(ptr noundef %page, i32 noundef %gfp_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !145

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

PagePrivate.exit.i:                               ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %PagePrivate.exit.i.for.end_crit_edge, label %page_to_mp.exit

PagePrivate.exit.i.for.end_crit_edge:             ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

page_to_mp.exit:                                  ; preds = %PagePrivate.exit.i
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private.i, align 4
  %7 = inttoptr i32 %6 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %page_to_mp.exit.for.end_crit_edge, label %do.body

page_to_mp.exit.for.end_crit_edge:                ; preds = %page_to_mp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body:                                          ; preds = %page_to_mp.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp1 = icmp sgt i32 %8, 3
  br i1 %cmp1, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %7) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %count = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %do.end7.do.body14_crit_edge

do.end7.do.body14_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

lor.lhs.false:                                    ; preds = %do.end7
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 14
  %11 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.do.body14_crit_edge

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %flag = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flag, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.end27, label %lor.lhs.false10.do.body14_crit_edge

lor.lhs.false10.do.body14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.body14:                                        ; preds = %lor.lhs.false10.do.body14_crit_edge, %lor.lhs.false.do.body14_crit_edge, %do.end7.do.body14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %16 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp15 = icmp sgt i32 %16, 3
  br i1 %cmp15, label %do.end19, label %do.body14.for.end_crit_edge

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %nohomeok22 = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 14
  %17 = ptrtoint ptr %nohomeok22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nohomeok22, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %10, i32 noundef %18) #12
  br label %for.end

if.end27:                                         ; preds = %lor.lhs.false10
  %lsn = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool28.not = icmp eq i32 %20, 0
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  %log1.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 15
  %21 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log1.i, align 8
  %tobool.not.i44 = icmp eq ptr %22, null
  br i1 %tobool.not.i44, label %if.then29.if.end30_crit_edge, label %do.body2.i

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body2.i:                                       ; preds = %if.then29
  %synclock.i = getelementptr inbounds %struct.jfs_log, ptr %22, i32 0, i32 30
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock.i) #9
  %23 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i, label %do.body2.i.if.end10.i_crit_edge, label %if.then7.i

do.body2.i.if.end10.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %do.body2.i
  %25 = ptrtoint ptr %log1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %log1.i, align 8
  %26 = ptrtoint ptr %lsn to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %lsn, align 8
  %clsn.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 13
  %27 = ptrtoint ptr %clsn.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %clsn.i, align 8
  %count.i = getelementptr inbounds %struct.jfs_log, ptr %22, i32 0, i32 32
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %count.i, align 4
  %synclist.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.list_del.exit.i_crit_edge

if.then7.i.list_del.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %synclist.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %synclist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then7.i.list_del.exit.i_crit_edge
  %36 = ptrtoint ptr %synclist.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %synclist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %list_del.exit.i, %do.body2.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock.i, i32 noundef %call3.i) #9
  br label %if.end30

if.end30:                                         ; preds = %if.end10.i, %if.then29.if.end30_crit_edge, %if.end27.if.end30_crit_edge
  %38 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %private.i, align 4
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i.i45 = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i.i45, label %if.then.i.i46, label %ClearPagePrivate.exit.i, !prof !145

if.then.i.i46:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !155
  unreachable

ClearPagePrivate.exit.i:                          ; preds = %if.end30
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.59, i32 noundef 55) #9
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page, align 4
  %shr.i.i.i = lshr i32 %42, 30
  %43 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %ClearPagePrivate.exit.i.remove_metapage.exit_crit_edge [
    i32 2, label %ClearPagePrivate.exit.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

ClearPagePrivate.exit.i.if.end.i.i_crit_edge:     ; preds = %ClearPagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

ClearPagePrivate.exit.i.remove_metapage.exit_crit_edge: ; preds = %ClearPagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_metapage.exit

is_highmem_idx.exit.i.i:                          ; preds = %ClearPagePrivate.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %44 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i.not.i.i = icmp eq i32 %44, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i.i.remove_metapage.exit_crit_edge

is_highmem_idx.exit.i.i.remove_metapage.exit_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_metapage.exit

is_highmem_idx.exit.i.i.if.end.i.i_crit_edge:     ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i.i.if.end.i.i_crit_edge, %ClearPagePrivate.exit.i.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #9
  br label %remove_metapage.exit

remove_metapage.exit:                             ; preds = %if.end.i.i, %is_highmem_idx.exit.i.i.remove_metapage.exit_crit_edge, %ClearPagePrivate.exit.i.remove_metapage.exit_crit_edge
  %45 = load i32, ptr @mpStat.1, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr @mpStat.1, align 4
  %46 = load ptr, ptr @metapage_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %7, ptr noundef %46) #9
  br label %for.end

for.end:                                          ; preds = %remove_metapage.exit, %do.end19, %do.body14.for.end_crit_edge, %page_to_mp.exit.for.end_crit_edge, %PagePrivate.exit.i.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 1, %remove_metapage.exit ], [ 1, %page_to_mp.exit.for.end_crit_edge ], [ 0, %do.end19 ], [ 0, %do.body14.for.end_crit_edge ], [ 1, %PagePrivate.exit.i.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__get_metapage(ptr nocapture noundef readonly %inode, i32 noundef %lblock, i32 noundef %size, i32 noundef %absolute, i32 noundef %new) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %1 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_ino, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %lblock, i32 noundef %absolute) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %3 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %4 to i32
  %sub = sub nsw i32 12, %conv
  %shr = lshr i32 %lblock, %sub
  %shl = shl i32 %shr, %sub
  %sub4 = sub i32 %lblock, %shl
  %shl5 = shl i32 %sub4, %conv
  %add = add i32 %shl5, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp6 = icmp ugt i32 %add, 4096
  br i1 %cmp6, label %do.body9, label %if.end33

do.body9:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %5 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp sgt i32 %5, 0
  br i1 %cmp10, label %do.body21, label %do.body9.do.end32_crit_edge

do.body9.do.end32_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.body21:                                        ; preds = %do.body9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %.pr = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp22 = icmp sgt i32 %.pr, 0
  br i1 %cmp22, label %do.end27, label %do.body21.do.end32_crit_edge

do.body21.do.end32_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %lblock, i32 noundef %size) #12
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.body21.do.end32_crit_edge, %do.body9.do.end32_crit_edge
  tail call void @dump_stack() #12
  br label %cleanup

if.end33:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %absolute)
  %tobool.not = icmp eq i32 %absolute, 0
  br i1 %tobool.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %direct_inode = getelementptr inbounds %struct.jfs_sb_info, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %direct_inode, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end33
  %shl38 = shl i32 %lblock, %conv
  %conv39 = zext i32 %shl38 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv39)
  %cmp40.not = icmp sgt i64 %13, %conv39
  br i1 %cmp40.not, label %if.else.if.end45_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.then34
  %.pn = phi ptr [ %11, %if.then34 ], [ %inode, %if.else.if.end45_crit_edge ]
  %mapping.0.in = getelementptr inbounds %struct.inode, ptr %.pn, i32 0, i32 9
  %14 = ptrtoint ptr %mapping.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %mapping.0 = load ptr, ptr %mapping.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new)
  %tobool46.not = icmp eq i32 %new, 0
  br i1 %tobool46.not, label %if.else64, label %if.then47

if.then47:                                        ; preds = %if.end45
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping.0, i32 0, i32 3
  %15 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %mapping.0, i32 noundef %shr, i32 noundef 7, i32 noundef %16) #9
  %tobool49.not = icmp eq ptr %call.i.i, null
  br i1 %tobool49.not, label %do.body51, label %if.end63

do.body51:                                        ; preds = %if.then47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %17 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp52 = icmp sgt i32 %17, 0
  br i1 %cmp52, label %do.end57, label %do.body51.cleanup_crit_edge

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end63:                                         ; preds = %if.then47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  %18 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !144

if.then.i.i.i:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i.i) #9
  br label %if.end84

if.else64:                                        ; preds = %if.end45
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping.0, i32 noundef %shr, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else64.do.body71_crit_edge, label %lor.lhs.false

if.else64.do.body71_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

lor.lhs.false:                                    ; preds = %if.else64
  %21 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %24, %if.end.i.i ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i232 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i232)
  %tobool.not.i.i.i233 = icmp eq i32 %and.i.i.i.i232, 0
  br i1 %tobool.not.i.i.i233, label %folio_flags.exit.i.i, label %if.then.i.i.i234, !prof !144

if.then.i.i.i234:                                 ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.do.body71_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.do.body71_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @__might_sleep(ptr noundef nonnull @.str.62, i32 noundef 788) #9
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %21, align 4
  %and.i.i235 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i235)
  %tobool.not.i.i236 = icmp eq i32 %and.i.i235, 0
  br i1 %tobool.not.i.i236, label %if.end.i.i239, label %if.then.i.i238, !prof !144

do.body71:                                        ; preds = %folio_flags.exit.i.i.do.body71_crit_edge, %if.else64.do.body71_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %34 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp72 = icmp sgt i32 %34, 0
  br i1 %cmp72, label %do.end77, label %do.body71.cleanup_crit_edge

do.body71.cleanup_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end77:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.then.i.i238:                                   ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i237 = add i32 %33, -1
  br label %_compound_head.exit.i243

if.end.i.i239:                                    ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i243

_compound_head.exit.i243:                         ; preds = %if.end.i.i239, %if.then.i.i238
  %retval.0.i.i240 = phi i32 [ %sub.i.i237, %if.then.i.i238 ], [ %35, %if.end.i.i239 ]
  %36 = inttoptr i32 %retval.0.i.i240 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i241 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i241)
  %tobool.not.i.i.i242 = icmp eq i32 %and.i.i.i.i241, 0
  br i1 %tobool.not.i.i.i242, label %folio_flags.exit.i.i245, label %if.then.i.i.i244, !prof !144

if.then.i.i.i244:                                 ; preds = %_compound_head.exit.i243
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i245:                          ; preds = %_compound_head.exit.i243
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %36, i32 noundef 4) #9
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and.i.i4.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i245.if.then.i_crit_edge

folio_flags.exit.i.i245.if.then.i_crit_edge:      ; preds = %folio_flags.exit.i.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i245
  tail call void @llvm.prefetch.p0(ptr %36, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end84_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.if.end84_crit_edge:          ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i245.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %36) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then.i, %folio_trylock.exit.i.if.end84_crit_edge, %SetPageUptodate.exit
  %page.0 = phi ptr [ %call.i.i, %SetPageUptodate.exit ], [ %call.i, %folio_trylock.exit.i.if.end84_crit_edge ], [ %call.i, %if.then.i ]
  %43 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.not.i.i = icmp eq i32 %44, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i246, label %PagePrivate.exit.i, !prof !145

if.then.i.i246:                                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end84
  %45 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %page.0, align 4
  %47 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %PagePrivate.exit.i.if.else115_crit_edge, label %page_to_mp.exit

PagePrivate.exit.i.if.else115_crit_edge:          ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else115

page_to_mp.exit:                                  ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %private.i, align 4
  %50 = inttoptr i32 %49 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool86.not = icmp eq i32 %49, 0
  br i1 %tobool86.not, label %page_to_mp.exit.if.else115_crit_edge, label %if.then87

page_to_mp.exit.if.else115_crit_edge:             ; preds = %page_to_mp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else115

if.then87:                                        ; preds = %page_to_mp.exit
  %logical_size = getelementptr inbounds %struct.metapage, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %logical_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %logical_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %size)
  %cmp88.not = icmp eq i32 %52, %size
  br i1 %cmp88.not, label %if.end105, label %if.then90

if.then90:                                        ; preds = %if.then87
  %i_sb91 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %53 = ptrtoint ptr %i_sb91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb91, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %54, ptr noundef nonnull @.str.16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %55 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp93 = icmp sgt i32 %55, 0
  br i1 %cmp93, label %do.end98, label %if.then90.do.end104_crit_edge

if.then90.do.end104_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104

do.end98:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %logical_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %logical_size, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %57, i32 noundef %size) #12
  br label %do.end104

do.end104:                                        ; preds = %do.end98, %if.then90.do.end104_crit_edge
  tail call void @dump_stack() #12
  br label %unlock

if.end105:                                        ; preds = %if.then87
  %count = getelementptr inbounds %struct.metapage, ptr %50, i32 0, i32 6
  %58 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count, align 8
  %inc = add i32 %59, 1
  store i32 %inc, ptr %count, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %50, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flag.i, i32 noundef 4) #9
  %60 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flag.i, align 4
  %and.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i247 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i247, label %test_and_set_bit_lock.exit.i, label %if.end105.if.then.i248_crit_edge

if.end105.if.then.i248_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i248

test_and_set_bit_lock.exit.i:                     ; preds = %if.end105
  tail call void @llvm.prefetch.p0(ptr %flag.i, i32 1, i32 3, i32 1) #9
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flag.i, ptr %flag.i, i32 1, ptr elementtype(i32) %flag.i) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge, label %test_and_set_bit_lock.exit.i.if.then.i248_crit_edge

test_and_set_bit_lock.exit.i.if.then.i248_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i248

test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_metapage.exit

if.then.i248:                                     ; preds = %test_and_set_bit_lock.exit.i.if.then.i248_crit_edge, %if.end105.if.then.i248_crit_edge
  tail call fastcc void @__lock_metapage(ptr noundef nonnull %50) #9
  br label %lock_metapage.exit

lock_metapage.exit:                               ; preds = %if.then.i248, %test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge
  %63 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flag.i, align 4
  %65 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool107.not = icmp eq i32 %65, 0
  br i1 %tobool107.not, label %lock_metapage.exit.if.end134_crit_edge, label %if.then108

lock_metapage.exit.if.end134_crit_edge:           ; preds = %lock_metapage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then108:                                       ; preds = %lock_metapage.exit
  br i1 %tobool46.not, label %if.then110, label %if.end134.thread

if.then110:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb111 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %66 = ptrtoint ptr %i_sb111 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb111, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %67, ptr noundef nonnull @.str.20) #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i) #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag.i) #9
  tail call void @release_metapage(ptr noundef nonnull %50) #9
  br label %unlock

if.end134.thread:                                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flag.i) #9
  br label %do.body137

if.else115:                                       ; preds = %page_to_mp.exit.if.else115_crit_edge, %PagePrivate.exit.i.if.else115_crit_edge
  %68 = load i32, ptr @mpStat.0, align 4
  %inc116 = add i32 %68, 1
  store i32 %inc116, ptr @mpStat.0, align 4
  %69 = load ptr, ptr @metapage_mempool, align 4
  %call.i250 = tail call noalias ptr @mempool_alloc(ptr noundef %69, i32 noundef 3136) #9
  %tobool.not.i251 = icmp eq ptr %call.i250, null
  br i1 %tobool.not.i251, label %if.else115.unlock_crit_edge, label %if.then.i255

if.else115.unlock_crit_edge:                      ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then.i255:                                     ; preds = %if.else115
  %lid.i = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 2
  %70 = ptrtoint ptr %lid.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %lid.i, align 4
  %lsn.i = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 3
  %71 = ptrtoint ptr %lsn.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %lsn.i, align 8
  %data.i = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 7
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %data.i, align 4
  %clsn.i = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 13
  %73 = ptrtoint ptr %clsn.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %clsn.i, align 8
  %log.i = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 15
  %74 = ptrtoint ptr %log.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %log.i, align 8
  %wait.i = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @alloc_metapage.__key) #9
  %page121 = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 10
  %75 = ptrtoint ptr %page121 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %page.0, ptr %page121, align 4
  %i_sb122 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %76 = ptrtoint ptr %i_sb122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb122, align 4
  %sb = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 11
  %78 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %sb, align 8
  %flag123 = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 5
  %79 = ptrtoint ptr %flag123 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %flag123, align 4
  %80 = ptrtoint ptr %call.i250 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 4096, ptr %call.i250, align 8
  %count124 = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 6
  %81 = ptrtoint ptr %count124 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %count124, align 8
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 14
  %82 = ptrtoint ptr %nohomeok to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %nohomeok, align 4
  %logical_size125 = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 12
  %83 = ptrtoint ptr %logical_size125 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %size, ptr %logical_size125, align 4
  %call126 = tail call ptr @page_address(ptr noundef %page.0) #9
  %add.ptr = getelementptr i8, ptr %call126, i32 %shl5
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr, ptr %data.i, align 4
  %conv127 = zext i32 %lblock to i64
  %index = getelementptr inbounds %struct.metapage, ptr %call.i250, i32 0, i32 8
  %85 = ptrtoint ptr %index to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv127, ptr %index, align 8
  %86 = ptrtoint ptr %call.i250 to i32
  %private1.i.i = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 3
  %87 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %private1.i.i, align 4
  %88 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp.i.not.i.i254 = icmp eq i32 %89, -1
  br i1 %cmp.i.not.i.i254, label %if.then.i.i256, label %SetPagePrivate.exit.i, !prof !145

if.then.i.i256:                                   ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !161
  unreachable

SetPagePrivate.exit.i:                            ; preds = %if.then.i255
  tail call void @_set_bit(i32 noundef 13, ptr noundef %page.0) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.59, i32 noundef 44) #9
  %90 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %page.0, align 4
  %shr.i.i.i = lshr i32 %91, 30
  %92 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %shr.i.i.i, label %SetPagePrivate.exit.i.if.then.i1.i_crit_edge [
    i32 2, label %SetPagePrivate.exit.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

SetPagePrivate.exit.i.if.else.i.i_crit_edge:      ; preds = %SetPagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

SetPagePrivate.exit.i.if.then.i1.i_crit_edge:     ; preds = %SetPagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1.i

is_highmem_idx.exit.i.i:                          ; preds = %SetPagePrivate.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %93 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp2.i.not.i.i = icmp eq i32 %93, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i1.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i1.i_crit_edge:   ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i1.i:                                     ; preds = %is_highmem_idx.exit.i.i.if.then.i1.i_crit_edge, %SetPagePrivate.exit.i.if.then.i1.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %page.0) #9
  br label %insert_metapage.exit

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %SetPagePrivate.exit.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %page.0) #9
  br label %insert_metapage.exit

insert_metapage.exit:                             ; preds = %if.else.i.i, %if.then.i1.i
  %call.i.i.i258 = tail call zeroext i1 @__kasan_check_write(ptr noundef %flag123, i32 noundef 4) #9
  %94 = ptrtoint ptr %flag123 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flag123, align 4
  %and.i.i.i259 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i259)
  %tobool.not.i.i.i260 = icmp eq i32 %and.i.i.i259, 0
  br i1 %tobool.not.i.i.i260, label %test_and_set_bit_lock.exit.i264, label %insert_metapage.exit.if.then.i265_crit_edge

insert_metapage.exit.if.then.i265_crit_edge:      ; preds = %insert_metapage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i265

test_and_set_bit_lock.exit.i264:                  ; preds = %insert_metapage.exit
  tail call void @llvm.prefetch.p0(ptr %flag123, i32 1, i32 3, i32 1) #9
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flag123, ptr %flag123, i32 1, ptr elementtype(i32) %flag123) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i261 = extractvalue { i32, i32, i32 } %96, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i262 = and i32 %asmresult.i.i.i.i.i.i261, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i262)
  %phi.cmp.i.not.i263 = icmp eq i32 %and1.i.i.i262, 0
  br i1 %phi.cmp.i.not.i263, label %test_and_set_bit_lock.exit.i264.if.end134_crit_edge, label %test_and_set_bit_lock.exit.i264.if.then.i265_crit_edge

test_and_set_bit_lock.exit.i264.if.then.i265_crit_edge: ; preds = %test_and_set_bit_lock.exit.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i265

test_and_set_bit_lock.exit.i264.if.end134_crit_edge: ; preds = %test_and_set_bit_lock.exit.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then.i265:                                     ; preds = %test_and_set_bit_lock.exit.i264.if.then.i265_crit_edge, %insert_metapage.exit.if.then.i265_crit_edge
  tail call fastcc void @__lock_metapage(ptr noundef nonnull %call.i250) #9
  br label %if.end134

if.end134:                                        ; preds = %if.then.i265, %test_and_set_bit_lock.exit.i264.if.end134_crit_edge, %lock_metapage.exit.if.end134_crit_edge
  %mp.0 = phi ptr [ %50, %lock_metapage.exit.if.end134_crit_edge ], [ %call.i250, %test_and_set_bit_lock.exit.i264.if.end134_crit_edge ], [ %call.i250, %if.then.i265 ]
  br i1 %tobool46.not, label %if.end134.if.end150_crit_edge, label %if.end134.do.body137_crit_edge

if.end134.do.body137_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body137

if.end134.if.end150_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

do.body137:                                       ; preds = %if.end134.do.body137_crit_edge, %if.end134.thread
  %mp.0273 = phi ptr [ %50, %if.end134.thread ], [ %mp.0, %if.end134.do.body137_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %97 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %cmp138 = icmp sgt i32 %97, 3
  br i1 %cmp138, label %do.end143, label %do.body137.do.end148_crit_edge

do.body137.do.end148_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end148

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %mp.0273) #12
  br label %do.end148

do.end148:                                        ; preds = %do.end143, %do.body137.do.end148_crit_edge
  %data149 = getelementptr inbounds %struct.metapage, ptr %mp.0273, i32 0, i32 7
  %98 = ptrtoint ptr %data149 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data149, align 4
  %100 = call ptr @memset(ptr %99, i32 0, i32 4096)
  br label %if.end150

if.end150:                                        ; preds = %do.end148, %if.end134.if.end150_crit_edge
  %mp.0275 = phi ptr [ %mp.0273, %do.end148 ], [ %mp.0, %if.end134.if.end150_crit_edge ]
  tail call void @unlock_page(ptr noundef %page.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %101 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp152 = icmp sgt i32 %101, 3
  br i1 %cmp152, label %do.end157, label %if.end150.cleanup_crit_edge

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end157:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  %data159 = getelementptr inbounds %struct.metapage, ptr %mp.0275, i32 0, i32 7
  %102 = ptrtoint ptr %data159 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data159, align 4
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %mp.0275, ptr noundef %103) #12
  br label %cleanup

unlock:                                           ; preds = %if.else115.unlock_crit_edge, %if.then110, %do.end104
  tail call void @unlock_page(ptr noundef %page.0) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end157, %if.end150.cleanup_crit_edge, %do.end77, %do.body71.cleanup_crit_edge, %do.end57, %do.body51.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end32
  %retval.0 = phi ptr [ null, %do.end32 ], [ null, %unlock ], [ null, %if.else.cleanup_crit_edge ], [ null, %do.end57 ], [ null, %do.body51.cleanup_crit_edge ], [ null, %do.end77 ], [ null, %do.body71.cleanup_crit_edge ], [ %mp.0275, %do.end157 ], [ %mp.0275, %if.end150.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @grab_metapage(ptr noundef %mp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %mp) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %page = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %1 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %page, align 4
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %9, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !145

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %7, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !162
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@grab_metapage, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !164

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %7, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.62, i32 noundef 788) #9
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i10 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10)
  %tobool.not.i.i11 = icmp eq i32 %and.i.i10, 0
  br i1 %tobool.not.i.i11, label %if.end.i.i14, label %if.then.i.i13, !prof !144

if.then.i.i13:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i12 = add i32 %15, -1
  br label %_compound_head.exit.i16

if.end.i.i14:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i16

_compound_head.exit.i16:                          ; preds = %if.end.i.i14, %if.then.i.i13
  %retval.0.i.i15 = phi i32 [ %sub.i.i12, %if.then.i.i13 ], [ %16, %if.end.i.i14 ]
  %17 = inttoptr i32 %retval.0.i.i15 to ptr
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !144

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #9
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and.i.i4.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %17, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %17) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %count = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 6
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %count, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flag.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flag.i, align 4
  %and.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i17 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i17, label %test_and_set_bit_lock.exit.i, label %lock_page.exit.if.then.i18_crit_edge

lock_page.exit.if.then.i18_crit_edge:             ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i18

test_and_set_bit_lock.exit.i:                     ; preds = %lock_page.exit
  tail call void @llvm.prefetch.p0(ptr %flag.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flag.i, ptr %flag.i, i32 1, ptr elementtype(i32) %flag.i) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge, label %test_and_set_bit_lock.exit.i.if.then.i18_crit_edge

test_and_set_bit_lock.exit.i.if.then.i18_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i18

test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_metapage.exit

if.then.i18:                                      ; preds = %test_and_set_bit_lock.exit.i.if.then.i18_crit_edge, %lock_page.exit.if.then.i18_crit_edge
  tail call fastcc void @__lock_metapage(ptr noundef %mp) #9
  br label %lock_metapage.exit

lock_metapage.exit:                               ; preds = %if.then.i18, %test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge
  %29 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page, align 4
  tail call void @unlock_page(ptr noundef %30) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @force_metapage(ptr noundef %mp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %mp) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %flag = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flag) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flag) #9
  %3 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %9, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !145

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %7, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !162
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@force_metapage, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !164

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %7, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.62, i32 noundef 788) #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %3, align 4
  %and.i.i20 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20)
  %tobool.not.i.i21 = icmp eq i32 %and.i.i20, 0
  br i1 %tobool.not.i.i21, label %if.end.i.i24, label %if.then.i.i23, !prof !144

if.then.i.i23:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i22 = add i32 %12, -1
  br label %_compound_head.exit.i26

if.end.i.i24:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i26

_compound_head.exit.i26:                          ; preds = %if.end.i.i24, %if.then.i.i23
  %retval.0.i.i25 = phi i32 [ %sub.i.i22, %if.then.i.i23 ], [ %13, %if.end.i.i24 ]
  %14 = inttoptr i32 %retval.0.i.i25 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !144

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i26
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #9
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %14, align 4
  %and.i.i4.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %14) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call6 = tail call zeroext i1 @set_page_dirty(ptr noundef %1) #9
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %3, align 4
  %and.i.i27 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i28, label %if.end.i.i31, label %if.then.i.i30, !prof !144

if.then.i.i30:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i29 = add i32 %22, -1
  br label %write_one_page.exit

if.end.i.i31:                                     ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %1 to i32
  br label %write_one_page.exit

write_one_page.exit:                              ; preds = %if.end.i.i31, %if.then.i.i30
  %retval.0.i.i32 = phi i32 [ %sub.i.i29, %if.then.i.i30 ], [ %23, %if.end.i.i31 ]
  %24 = inttoptr i32 %retval.0.i.i32 to ptr
  %call1.i = tail call i32 @folio_write_one(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %write_one_page.exit.if.end9_crit_edge, label %if.then8

write_one_page.exit.if.end9_crit_edge:            ; preds = %write_one_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %write_one_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sb = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 11
  %25 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sb, align 8
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %26, ptr noundef nonnull @.str.31) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %write_one_page.exit.if.end9_crit_edge
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flag) #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %3, align 4
  %and.i.i34 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.not.i.i35, label %if.end.i.i38, label %if.then.i.i37, !prof !144

if.then.i.i37:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i36 = add i32 %28, -1
  br label %_compound_head.exit.i40

if.end.i.i38:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i40

_compound_head.exit.i40:                          ; preds = %if.end.i.i38, %if.then.i.i37
  %retval.0.i.i39 = phi i32 [ %sub.i.i36, %if.then.i.i37 ], [ %29, %if.end.i.i38 ]
  %30 = inttoptr i32 %retval.0.i.i39 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i41, label %do.end5.i.i.i.i, !prof !145

if.then.i.i.i.i41:                                ; preds = %_compound_head.exit.i40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.66) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !165
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i40
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !167
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@force_metapage, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !164

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %30) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hold_metapage(ptr nocapture noundef readonly %mp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.62, i32 noundef 788) #9
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
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
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !144

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #9
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %6) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_metapage(ptr noundef %mp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 14
  %2 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %page = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page, align 4
  tail call void @unlock_page(ptr noundef %5) #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %page2 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %6 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page2, align 4
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %13 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !145

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.65) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !162
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@put_metapage, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !164

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %12, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flag.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flag.i, align 4
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %get_page.exit.if.then.i_crit_edge

get_page.exit.if.then.i_crit_edge:                ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

test_and_set_bit_lock.exit.i:                     ; preds = %get_page.exit
  tail call void @llvm.prefetch.p0(ptr %flag.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flag.i, ptr %flag.i, i32 1, ptr elementtype(i32) %flag.i) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge, label %test_and_set_bit_lock.exit.i.if.then.i_crit_edge

test_and_set_bit_lock.exit.i.if.then.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_metapage.exit

if.then.i:                                        ; preds = %test_and_set_bit_lock.exit.i.if.then.i_crit_edge, %get_page.exit.if.then.i_crit_edge
  tail call fastcc void @__lock_metapage(ptr noundef %mp) #9
  br label %lock_metapage.exit

lock_metapage.exit:                               ; preds = %if.then.i, %test_and_set_bit_lock.exit.i.lock_metapage.exit_crit_edge
  %21 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page2, align 4
  tail call void @unlock_page(ptr noundef %22) #9
  tail call void @release_metapage(ptr noundef %mp)
  br label %return

return:                                           ; preds = %lock_metapage.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_metapage(ptr noundef %mp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flag = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flag, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %mp, i32 noundef %4) #12
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body10, label %do.end18, !prof !145

do.body10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 735, 0\0A.popsection", ""() #9, !srcloc !169
  unreachable

do.end18:                                         ; preds = %do.body5
  tail call void @__might_sleep(ptr noundef nonnull @.str.62, i32 noundef 788) #9
  %5 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !144

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #9
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %and.i.i4.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %9) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flag.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %flag.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flag.i, ptr %flag.i, i32 1, ptr elementtype(i32) %flag.i) #9, !srcloc !171
  %wait.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %count = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 6
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %do.end24, label %do.end35

do.end24:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef 740, ptr noundef nonnull @.str.37) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 740, 0\0A.popsection", ""() #9, !srcloc !172
  unreachable

do.end35:                                         ; preds = %lock_page.exit
  %dec = add i32 %18, -1
  %19 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %do.end35.if.then39_crit_edge

do.end35.if.then39_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false:                                    ; preds = %do.end35
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 14
  %20 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool38.not = icmp eq i32 %21, 0
  br i1 %tobool38.not, label %if.end40, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %do.end35.if.then39_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %1) #9
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %5, align 4
  %and.i.i84 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %and.i.i84, 0
  br i1 %tobool.not.i.i85, label %if.end.i.i88, label %if.then.i.i87, !prof !144

if.then.i.i87:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i86 = add i32 %23, -1
  br label %_compound_head.exit.i90

if.end.i.i88:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i90

_compound_head.exit.i90:                          ; preds = %if.end.i.i88, %if.then.i.i87
  %retval.0.i.i89 = phi i32 [ %sub.i.i86, %if.then.i.i87 ], [ %24, %if.end.i.i88 ]
  %25 = inttoptr i32 %retval.0.i.i89 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !145

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.66) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !165
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i90
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !167
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@release_metapage, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !164

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end40:                                         ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flag.i, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool43.not = icmp eq i32 %31, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end40
  %call45 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %1) #9
  %32 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flag.i, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool48.not = icmp eq i32 %34, 0
  br i1 %tobool48.not, label %if.then44.if.end59_crit_edge, label %if.then49

if.then44.if.end59_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then49:                                        ; preds = %if.then44
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flag.i) #9
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %5, align 4
  %and.i.i91 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool.not.i.i92 = icmp eq i32 %and.i.i91, 0
  br i1 %tobool.not.i.i92, label %if.end.i.i95, label %if.then.i.i94, !prof !144

if.then.i.i94:                                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i93 = add i32 %36, -1
  br label %write_one_page.exit

if.end.i.i95:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %1 to i32
  br label %write_one_page.exit

write_one_page.exit:                              ; preds = %if.end.i.i95, %if.then.i.i94
  %retval.0.i.i96 = phi i32 [ %sub.i.i93, %if.then.i.i94 ], [ %37, %if.end.i.i95 ]
  %38 = inttoptr i32 %retval.0.i.i96 to ptr
  %call1.i = tail call i32 @folio_write_one(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool52.not = icmp eq i32 %call1.i, 0
  br i1 %tobool52.not, label %write_one_page.exit.if.end54_crit_edge, label %if.then53

write_one_page.exit.if.end54_crit_edge:           ; preds = %write_one_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then53:                                        ; preds = %write_one_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sb = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 11
  %39 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sb, align 8
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %40, ptr noundef nonnull @.str.31) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %write_one_page.exit.if.end54_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.62, i32 noundef 788) #9
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %5, align 4
  %and.i.i98 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %and.i.i98, 0
  br i1 %tobool.not.i.i99, label %if.end.i.i102, label %if.then.i.i101, !prof !144

if.then.i.i101:                                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i100 = add i32 %42, -1
  br label %_compound_head.exit.i106

if.end.i.i102:                                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i106

_compound_head.exit.i106:                         ; preds = %if.end.i.i102, %if.then.i.i101
  %retval.0.i.i103 = phi i32 [ %sub.i.i100, %if.then.i.i101 ], [ %43, %if.end.i.i102 ]
  %44 = inttoptr i32 %retval.0.i.i103 to ptr
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i.i104 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i104)
  %tobool.not.i.i.i105 = icmp eq i32 %and.i.i.i.i104, 0
  br i1 %tobool.not.i.i.i105, label %folio_flags.exit.i.i111, label %if.then.i.i.i107, !prof !144

if.then.i.i.i107:                                 ; preds = %_compound_head.exit.i106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i111:                          ; preds = %_compound_head.exit.i106
  %call.i.i.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #9
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %44, align 4
  %and.i.i4.i.i109 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i109)
  %tobool.not.i.i.i.i110 = icmp eq i32 %and.i.i4.i.i109, 0
  br i1 %tobool.not.i.i.i.i110, label %folio_trylock.exit.i115, label %folio_flags.exit.i.i111.if.then.i116_crit_edge

folio_flags.exit.i.i111.if.then.i116_crit_edge:   ; preds = %folio_flags.exit.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i116

folio_trylock.exit.i115:                          ; preds = %folio_flags.exit.i.i111
  tail call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #9
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i112 = extractvalue { i32, i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i.i113 = and i32 %asmresult.i.i.i.i.i.i.i112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i113)
  %phi.cmp.i.i.i114 = icmp eq i32 %and1.i.i.i.i113, 0
  br i1 %phi.cmp.i.i.i114, label %folio_trylock.exit.i115.if.end59_crit_edge, label %folio_trylock.exit.i115.if.then.i116_crit_edge

folio_trylock.exit.i115.if.then.i116_crit_edge:   ; preds = %folio_trylock.exit.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i116

folio_trylock.exit.i115.if.end59_crit_edge:       ; preds = %folio_trylock.exit.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then.i116:                                     ; preds = %folio_trylock.exit.i115.if.then.i116_crit_edge, %folio_flags.exit.i.i111.if.then.i116_crit_edge
  tail call void @__folio_lock(ptr noundef %44) #9
  br label %if.end59

if.else:                                          ; preds = %if.end40
  %lsn = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 3
  %51 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool56.not = icmp eq i32 %52, 0
  br i1 %tobool56.not, label %if.else.if.end59_crit_edge, label %if.then57

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.else
  %log1.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 15
  %53 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %log1.i, align 8
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.then57.if.end59_crit_edge, label %do.body2.i

if.then57.if.end59_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

do.body2.i:                                       ; preds = %if.then57
  %synclock.i = getelementptr inbounds %struct.jfs_log, ptr %54, i32 0, i32 30
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock.i) #9
  %55 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool6.not.i = icmp eq i32 %56, 0
  br i1 %tobool6.not.i, label %do.body2.i.if.end10.i_crit_edge, label %if.then7.i

do.body2.i.if.end10.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %do.body2.i
  %57 = ptrtoint ptr %log1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %log1.i, align 8
  %58 = ptrtoint ptr %lsn to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %lsn, align 8
  %clsn.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 13
  %59 = ptrtoint ptr %clsn.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %clsn.i, align 8
  %count.i = getelementptr inbounds %struct.jfs_log, ptr %54, i32 0, i32 32
  %60 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %61, -1
  store i32 %dec.i, ptr %count.i, align 4
  %synclist.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 4
  %call.i.i.i118 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist.i) #9
  br i1 %call.i.i.i118, label %if.end.i.i.i, label %if.then7.i.list_del.exit.i_crit_edge

if.then7.i.list_del.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %synclist.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %synclist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then7.i.list_del.exit.i_crit_edge
  %68 = ptrtoint ptr %synclist.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %synclist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %list_del.exit.i, %do.body2.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock.i, i32 noundef %call3.i) #9
  br label %if.end59

if.end59:                                         ; preds = %if.end10.i, %if.then57.if.end59_crit_edge, %if.else.if.end59_crit_edge, %if.then.i116, %folio_trylock.exit.i115.if.end59_crit_edge, %if.then44.if.end59_crit_edge
  %70 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i120 = icmp eq i32 %71, 0
  br i1 %tobool.not.i120, label %lor.lhs.false.i, label %if.end59.drop_metapage.exit_crit_edge

if.end59.drop_metapage.exit_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_metapage.exit

lor.lhs.false.i:                                  ; preds = %if.end59
  %72 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool1.not.i = icmp eq i32 %73, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.drop_metapage.exit_crit_edge

lor.lhs.false.i.drop_metapage.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_metapage.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %74 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flag.i, align 4
  %76 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool3.not.i = icmp eq i32 %76, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false2.i.drop_metapage.exit_crit_edge

lor.lhs.false2.i.drop_metapage.exit_crit_edge:    ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_metapage.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %77 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flag.i, align 4
  %79 = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool7.not.i = icmp eq i32 %79, 0
  br i1 %tobool7.not.i, label %if.end.i, label %lor.lhs.false4.i.drop_metapage.exit_crit_edge

lor.lhs.false4.i.drop_metapage.exit_crit_edge:    ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_metapage.exit

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %private1.i.i.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %80 = ptrtoint ptr %private1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %private1.i.i.i, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %cmp.i.not.i.i.i = icmp eq i32 %82, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i122, label %ClearPagePrivate.exit.i.i, !prof !145

if.then.i.i.i122:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %1, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !155
  unreachable

ClearPagePrivate.exit.i.i:                        ; preds = %if.end.i
  tail call void @_clear_bit(i32 noundef 13, ptr noundef nonnull %1) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.59, i32 noundef 55) #9
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %1, align 4
  %shr.i.i.i.i = lshr i32 %84, 30
  %85 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %shr.i.i.i.i, label %ClearPagePrivate.exit.i.i.remove_metapage.exit.i_crit_edge [
    i32 2, label %ClearPagePrivate.exit.i.i.if.end.i.i.i123_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

ClearPagePrivate.exit.i.i.if.end.i.i.i123_crit_edge: ; preds = %ClearPagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i123

ClearPagePrivate.exit.i.i.remove_metapage.exit.i_crit_edge: ; preds = %ClearPagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_metapage.exit.i

is_highmem_idx.exit.i.i.i:                        ; preds = %ClearPagePrivate.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %86 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp2.i.not.i.i.i = icmp eq i32 %86, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.end.i.i.i123_crit_edge, label %is_highmem_idx.exit.i.i.i.remove_metapage.exit.i_crit_edge

is_highmem_idx.exit.i.i.i.remove_metapage.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_metapage.exit.i

is_highmem_idx.exit.i.i.i.if.end.i.i.i123_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i123

if.end.i.i.i123:                                  ; preds = %is_highmem_idx.exit.i.i.i.if.end.i.i.i123_crit_edge, %ClearPagePrivate.exit.i.i.if.end.i.i.i123_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %1) #9
  br label %remove_metapage.exit.i

remove_metapage.exit.i:                           ; preds = %if.end.i.i.i123, %is_highmem_idx.exit.i.i.i.remove_metapage.exit.i_crit_edge, %ClearPagePrivate.exit.i.i.remove_metapage.exit.i_crit_edge
  %87 = load i32, ptr @mpStat.1, align 4
  %inc.i = add i32 %87, 1
  store i32 %inc.i, ptr @mpStat.1, align 4
  %88 = load ptr, ptr @metapage_mempool, align 4
  tail call void @mempool_free(ptr noundef %mp, ptr noundef %88) #9
  br label %drop_metapage.exit

drop_metapage.exit:                               ; preds = %remove_metapage.exit.i, %lor.lhs.false4.i.drop_metapage.exit_crit_edge, %lor.lhs.false2.i.drop_metapage.exit_crit_edge, %lor.lhs.false.i.drop_metapage.exit_crit_edge, %if.end59.drop_metapage.exit_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %1) #9
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %5, align 4
  %and.i.i124 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i128, label %if.then.i.i127, !prof !144

if.then.i.i127:                                   ; preds = %drop_metapage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i126 = add i32 %90, -1
  br label %_compound_head.exit.i133

if.end.i.i128:                                    ; preds = %drop_metapage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i133

_compound_head.exit.i133:                         ; preds = %if.end.i.i128, %if.then.i.i127
  %retval.0.i.i129 = phi i32 [ %sub.i.i126, %if.then.i.i127 ], [ %91, %if.end.i.i128 ]
  %92 = inttoptr i32 %retval.0.i.i129 to ptr
  %_refcount.i.i.i.i.i130 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 3
  %call.i.i.i.i.i.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i130, i32 noundef 4) #9
  %93 = ptrtoint ptr %_refcount.i.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %_refcount.i.i.i.i.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i.i.i.i132 = icmp eq i32 %94, 0
  br i1 %cmp.i.i.i.i132, label %if.then.i.i.i.i134, label %do.end5.i.i.i.i138, !prof !145

if.then.i.i.i.i134:                               ; preds = %_compound_head.exit.i133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %92, ptr noundef nonnull @.str.66) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !165
  unreachable

do.end5.i.i.i.i138:                               ; preds = %_compound_head.exit.i133
  %call.i.i.i10.i.i.i.i135 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i130, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i130, i32 1, i32 3, i32 1) #9
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i130, ptr %_refcount.i.i.i.i.i130, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i130) #9, !srcloc !167
  %asmresult.i.i.i.i.i.i.i.i.i.i136 = extractvalue { i32, i32 } %95, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i136)
  %cmp.i.i.i.i.i.i.i137 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i136, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@release_metapage, %if.then.i.i.i.i.i140)) #9
          to label %folio_put_testzero.exit.i.i141 [label %if.then.i.i.i.i.i140], !srcloc !164

if.then.i.i.i.i.i140:                             ; preds = %do.end5.i.i.i.i138
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i139 = zext i1 %cmp.i.i.i.i.i.i.i137 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %92, i32 noundef -1, i32 noundef %conv.i.i.i.i.i139) #9
  br label %folio_put_testzero.exit.i.i141

folio_put_testzero.exit.i.i141:                   ; preds = %if.then.i.i.i.i.i140, %do.end5.i.i.i.i138
  br i1 %cmp.i.i.i.i.i.i.i137, label %folio_put_testzero.exit.i.i141.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i141.cleanup_crit_edge

folio_put_testzero.exit.i.i141.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

folio_put_testzero.exit.i.i141.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i141.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %25, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %92, %folio_put_testzero.exit.i.i141.cleanup.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i141.cleanup_crit_edge, %folio_put_testzero.exit.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__invalidate_metapages(ptr nocapture noundef readonly %ip, i64 noundef %addr, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 12, %conv
  %shl = shl nuw nsw i32 1, %sub
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %direct_inode = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %direct_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %neg = sub i32 0, %shl
  %conv2 = sext i32 %neg to i64
  %and = and i64 %conv2, %addr
  %conv3 = sext i32 %len to i64
  %add = add i64 %conv3, %addr
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %add)
  %cmp60 = icmp ult i64 %and, %add
  br i1 %cmp60, label %for.body.lr.ph, label %entry.for.end34_crit_edge

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.body.lr.ph:                                   ; preds = %entry
  %sh_prom = zext i32 %sub to i64
  %conv32 = sext i32 %shl to i64
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.lr.ph
  %lblock.061 = phi i64 [ %and, %for.body.lr.ph ], [ %add33, %for.inc31.for.body_crit_edge ]
  %shr = lshr i64 %lblock.061, %sh_prom
  %conv5 = trunc i64 %shr to i32
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %9, i32 noundef %conv5, i32 noundef 2, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.for.inc31_crit_edge, label %for.body10.critedge

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

for.body10.critedge:                              ; preds = %for.body
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i.i = icmp eq i32 %11, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !145

if.then.i.i:                                      ; preds = %for.body10.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

PagePrivate.exit.i:                               ; preds = %for.body10.critedge
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %call.i, align 4
  %14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %PagePrivate.exit.i.for.end_crit_edge, label %page_to_mp.exit

PagePrivate.exit.i.for.end_crit_edge:             ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

page_to_mp.exit:                                  ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %private.i, align 4
  %17 = inttoptr i32 %16 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %page_to_mp.exit.for.end_crit_edge, label %if.end14

page_to_mp.exit.for.end_crit_edge:                ; preds = %page_to_mp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14:                                         ; preds = %page_to_mp.exit
  %index = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %index, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %addr)
  %cmp15 = icmp uge i64 %19, %addr
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add)
  %cmp22.not = icmp ult i64 %19, %add
  %or.cond = and i1 %cmp15, %cmp22.not
  br i1 %or.cond, label %if.end25, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end25:                                         ; preds = %if.end14
  %flag = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flag) #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag) #9
  %lsn = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %if.end25.for.end_crit_edge, label %if.then28

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then28:                                        ; preds = %if.end25
  %log1.i = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 15
  %22 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %log1.i, align 8
  %tobool.not.i55 = icmp eq ptr %23, null
  br i1 %tobool.not.i55, label %if.then28.for.end_crit_edge, label %do.body2.i

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body2.i:                                       ; preds = %if.then28
  %synclock.i = getelementptr inbounds %struct.jfs_log, ptr %23, i32 0, i32 30
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock.i) #9
  %24 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not.i = icmp eq i32 %25, 0
  br i1 %tobool6.not.i, label %do.body2.i.if.end10.i_crit_edge, label %if.then7.i

do.body2.i.if.end10.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %do.body2.i
  %26 = ptrtoint ptr %log1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %log1.i, align 8
  %27 = ptrtoint ptr %lsn to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %lsn, align 8
  %clsn.i = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 13
  %28 = ptrtoint ptr %clsn.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %clsn.i, align 8
  %count.i = getelementptr inbounds %struct.jfs_log, ptr %23, i32 0, i32 32
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %count.i, align 4
  %synclist.i = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.list_del.exit.i_crit_edge

if.then7.i.list_del.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %synclist.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %synclist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then7.i.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %synclist.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %synclist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.metapage, ptr %17, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %list_del.exit.i, %do.body2.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock.i, i32 noundef %call3.i) #9
  br label %for.end

for.end:                                          ; preds = %if.end10.i, %if.then28.for.end_crit_edge, %if.end25.for.end_crit_edge, %if.end14.for.end_crit_edge, %page_to_mp.exit.for.end_crit_edge, %PagePrivate.exit.i.for.end_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %call.i) #9
  %39 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i56, !prof !144

if.then.i.i56:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %41, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i56
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i56 ], [ %42, %if.end.i.i ]
  %43 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %44 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i.i.i = icmp eq i32 %45, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !145

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.66) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !165
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !167
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__invalidate_metapages, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !164

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %43, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc31_crit_edge

folio_put_testzero.exit.i.i.for.inc31_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %43) #9
  br label %for.inc31

for.inc31:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc31_crit_edge, %for.body.for.inc31_crit_edge
  %add33 = add i64 %lblock.061, %conv32
  %cmp = icmp ult i64 %add33, %add
  br i1 %cmp, label %for.inc31.for.body_crit_edge, label %for.inc31.for.end34_crit_edge

for.inc31.for.end34_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end34:                                        ; preds = %for.inc31.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_mpstat_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mpStat.0, align 4
  %1 = load i32, ptr @mpStat.1, align 4
  %2 = load i32, ptr @mpStat.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %0, i32 noundef %1, i32 noundef %2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_flush_journal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metapage_write_end_io(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !145

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !145

do.body4:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_metapage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #9, !srcloc !173
  unreachable

do.end9:                                          ; preds = %PagePrivate.exit
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %7 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %do.end9.if.end16_crit_edge, label %do.end14

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end14:                                         ; preds = %do.end9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  %9 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i21, !prof !144

if.then.i21:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.50) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !174
  unreachable

do.body7.i:                                       ; preds = %do.end14
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %9, align 4
  %and.i31.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i22 = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %9, align 4
  %and.i32.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i22, label %if.then17.i, label %do.end24.i, !prof !145

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !144

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %19, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %20, %if.end.i36.i ]
  %21 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.46) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !175
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !144

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %19, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %1 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %22, %if.end.i43.i ]
  %23 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %23) #9
  br label %if.end16

if.end16:                                         ; preds = %SetPageError.exit, %do.end9.if.end16_crit_edge
  tail call fastcc void @last_write_complete(ptr noundef %1)
  tail call void @bio_put(ptr noundef %bio) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @last_write_complete(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !145

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.49) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !150
  unreachable

PagePrivate.exit.i:                               ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %PagePrivate.exit.i.for.end_crit_edge, label %page_to_mp.exit

PagePrivate.exit.i.for.end_crit_edge:             ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

page_to_mp.exit:                                  ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private.i, align 4
  %7 = inttoptr i32 %6 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %page_to_mp.exit.for.end_crit_edge, label %land.lhs.true

page_to_mp.exit.for.end_crit_edge:                ; preds = %page_to_mp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %page_to_mp.exit
  %flag = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %land.lhs.true.for.end_crit_edge, label %if.then

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then:                                          ; preds = %land.lhs.true
  %lsn = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  %log1.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 15
  %13 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log1.i, align 8
  %tobool.not.i14 = icmp eq ptr %14, null
  br i1 %tobool.not.i14, label %if.then4.if.end_crit_edge, label %do.body2.i

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2.i:                                       ; preds = %if.then4
  %synclock.i = getelementptr inbounds %struct.jfs_log, ptr %14, i32 0, i32 30
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock.i) #9
  %15 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  br i1 %tobool6.not.i, label %do.body2.i.if.end10.i_crit_edge, label %if.then7.i

do.body2.i.if.end10.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %do.body2.i
  %17 = ptrtoint ptr %log1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %log1.i, align 8
  %18 = ptrtoint ptr %lsn to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %lsn, align 8
  %clsn.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 13
  %19 = ptrtoint ptr %clsn.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %clsn.i, align 8
  %count.i = getelementptr inbounds %struct.jfs_log, ptr %14, i32 0, i32 32
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %count.i, align 4
  %synclist.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.list_del.exit.i_crit_edge

if.then7.i.list_del.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %synclist.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %synclist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then7.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %synclist.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %synclist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %list_del.exit.i, %do.body2.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock.i, i32 noundef %call3.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end10.i, %if.then4.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flag) #9
  br label %for.end

for.end:                                          ; preds = %if.end, %land.lhs.true.for.end_crit_edge, %page_to_mp.exit.for.end_crit_edge, %PagePrivate.exit.i.for.end_crit_edge
  tail call void @end_page_writeback(ptr noundef %page) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtLookup(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metapage_read_end_io(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !144

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.50) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !174
  unreachable

do.body7.i:                                       ; preds = %do.end
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %4, align 4
  %and.i31.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %and.i32.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !145

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !144

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %14, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %15, %if.end.i36.i ]
  %16 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.46) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !175
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !144

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %14, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %1 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %17, %if.end.i43.i ]
  %18 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %18) #9
  br label %if.end

if.end:                                           ; preds = %SetPageError.exit, %entry.if.end_crit_edge
  tail call fastcc void @last_read_complete(ptr noundef %1)
  tail call void @bio_put(ptr noundef %bio) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @last_read_complete(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !145

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !144

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
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.46) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !176
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !144

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then, label %PageError.exit.if.end_crit_edge

PageError.exit.if.end_crit_edge:                  ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %PageError.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !144

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #9
  br label %if.end

if.end:                                           ; preds = %SetPageUptodate.exit, %PageError.exit.if.end_crit_edge
  tail call void @unlock_page(ptr noundef %page) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lock_metapage(ptr noundef %mp) #6 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !133) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = load i32, ptr @mpStat.2, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @mpStat.2, align 4
  %wait2 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 9
  call void @add_wait_queue_exclusive(ptr noundef %wait2, ptr noundef nonnull %wait) #9
  %flag = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  %page = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  br label %__here

__here:                                           ; preds = %__here.backedge, %entry
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 212
  %16 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr blockaddress(@__lock_metapage, %__here) to i32), ptr %task_state_change, align 4
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 2, ptr %17, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !177
  %19 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool66.not = icmp eq i32 %and1.i, 0
  br i1 %tobool66.not, label %__here.do.cond70_crit_edge, label %if.then67

__here.do.cond70_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond70

if.then67:                                        ; preds = %__here
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page, align 4
  call void @unlock_page(ptr noundef %22) #9
  call void @io_schedule() #9
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.62, i32 noundef 788) #9
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !144

if.then.i.i:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %24 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !144

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.60) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %29, i32 noundef 4) #9
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %29, align 4
  %and.i.i4.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %29, i32 1, i32 3, i32 1) #9
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #9, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.do.cond70_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.do.cond70_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond70

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %29) #9
  br label %do.cond70

do.cond70:                                        ; preds = %if.then.i, %folio_trylock.exit.i.do.cond70_crit_edge, %__here.do.cond70_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flag, i32 noundef 4) #9
  %37 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flag, align 4
  %and.i.i155 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i155)
  %tobool.not.i.i156 = icmp eq i32 %and.i.i155, 0
  br i1 %tobool.not.i.i156, label %if.end.i.i157, label %do.cond70.__here.backedge_crit_edge

do.cond70.__here.backedge_crit_edge:              ; preds = %do.cond70
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here.backedge

if.end.i.i157:                                    ; preds = %do.cond70
  call void @llvm.prefetch.p0(ptr %flag, i32 1, i32 3, i32 1) #9
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flag, ptr %flag, i32 1, ptr elementtype(i32) %flag) #9, !srcloc !159
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and1.i.i = and i32 %asmresult.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %phi.cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %phi.cmp.i.not, label %__here124, label %if.end.i.i157.__here.backedge_crit_edge

if.end.i.i157.__here.backedge_crit_edge:          ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here.backedge

__here.backedge:                                  ; preds = %if.end.i.i157.__here.backedge_crit_edge, %do.cond70.__here.backedge_crit_edge
  br label %__here

__here124:                                        ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %task_state_change128 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 212
  %42 = ptrtoint ptr %task_state_change128 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 ptrtoint (ptr blockaddress(@__lock_metapage, %__here124) to i32), ptr %task_state_change128, align 4
  %43 = load ptr, ptr %task, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %43, align 128
  call void @remove_wait_queue(ptr noundef %wait2, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_write_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_metapage.c", i32 199, i32 37}
!2 = !{ptr @jfs_metapage_aops, !3, !"jfs_metapage_aops", i1 false, i1 false}
!3 = !{!"../fs/jfs/jfs_metapage.c", i32 568, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/jfs/jfs_metapage.c", i32 588, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__get_metapage._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @__get_metapage._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jfs/jfs_metapage.c", i32 596, i32 3}
!12 = !{ptr @__get_metapage._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @__get_metapage._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jfs/jfs_metapage.c", i32 597, i32 3}
!16 = !{ptr @__get_metapage._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @__get_metapage._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jfs/jfs_metapage.c", i32 617, i32 4}
!20 = !{ptr @__get_metapage._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @__get_metapage._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/jfs/jfs_metapage.c", i32 624, i32 4}
!24 = !{ptr @__get_metapage._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @__get_metapage._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/jfs/jfs_metapage.c", i32 634, i32 7}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/jfs/jfs_metapage.c", i32 635, i32 4}
!30 = !{ptr @__get_metapage._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @__get_metapage._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/jfs/jfs_metapage.c", i32 645, i32 8}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jfs/jfs_metapage.c", i32 673, i32 3}
!36 = !{ptr @__get_metapage._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @__get_metapage._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jfs/jfs_metapage.c", i32 678, i32 2}
!40 = !{ptr @__get_metapage._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @__get_metapage._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/jfs/jfs_metapage.c", i32 688, i32 2}
!44 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @grab_metapage._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @grab_metapage._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/jfs/jfs_metapage.c", i32 699, i32 2}
!49 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @force_metapage._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @force_metapage._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jfs/jfs_metapage.c", i32 706, i32 21}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/jfs/jfs_metapage.c", i32 733, i32 2}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @release_metapage._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @release_metapage._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/jfs/jfs_metapage.c", i32 740, i32 2}
!61 = !{ptr @release_metapage._entry.34, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @release_metapage._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/jfs/jfs_metapage.c", i32 809, i32 10}
!66 = distinct !{null, !67, !"mpStat", i1 false, i1 false}
!67 = !{!"../fs/jfs/jfs_metapage.c", i32 29, i32 3}
!68 = !{ptr @metapage_cache, !69, !"metapage_cache", i1 false, i1 false}
!69 = !{!"../fs/jfs/jfs_metapage.c", i32 68, i32 27}
!70 = !{ptr @metapage_mempool, !71, !"metapage_mempool", i1 false, i1 false}
!71 = !{!"../fs/jfs/jfs_metapage.c", i32 69, i32 19}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/jfs/jfs_metapage.c", i32 410, i32 4}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @metapage_writepage._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @metapage_writepage._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/jfs/jfs_metapage.c", i32 457, i32 2}
!79 = !{ptr @metapage_writepage._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @metapage_writepage._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/jfs/jfs_metapage.c", i32 460, i32 17}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/jfs/jfs_metapage.c", i32 460, i32 27}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/jfs/jfs_metapage.c", i32 329, i32 3}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @metapage_write_end_io._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @metapage_write_end_io._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/jfs/jfs_metapage.c", i32 523, i32 2}
!98 = !{ptr @metapage_readpage._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @metapage_readpage._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/jfs/jfs_metapage.c", i32 272, i32 3}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @metapage_read_end_io._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @metapage_read_end_io._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/jfs/jfs_metapage.c", i32 541, i32 3}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @metapage_releasepage._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @metapage_releasepage._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/jfs/jfs_metapage.c", i32 544, i32 4}
!112 = !{ptr @metapage_releasepage._entry.56, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @metapage_releasepage._entry_ptr.58, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../fs/jfs/jfs_metapage.c", i32 47, i32 3}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../fs/jfs/jfs_metapage.c", i32 54, i32 2}
!126 = !{ptr @alloc_metapage.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../fs/jfs/jfs_metapage.c", i32 184, i32 3}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/mm.h", i32 717, i32 2}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"auto-init"}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{i64 2150585488, i64 2150585979, i64 2150585525, i64 2150585581, i64 2150585615, i64 2150585639, i64 2150585680, i64 2150585701, i64 2150585729, i64 2150585763}
!147 = !{i64 2154749400, i64 2154749886, i64 2154749437, i64 2154749493, i64 2154749527, i64 2154749551, i64 2154749592, i64 2154749613, i64 2154749641, i64 2154749675}
!148 = !{i64 2151093909, i64 2151094400, i64 2151093946, i64 2151094002, i64 2151094036, i64 2151094060, i64 2151094101, i64 2151094122, i64 2151094150, i64 2151094184}
!149 = !{i64 2154751000, i64 2154751486, i64 2154751037, i64 2154751093, i64 2154751127, i64 2154751151, i64 2154751192, i64 2154751213, i64 2154751241, i64 2154751275}
!150 = !{i64 2151036761, i64 2151037252, i64 2151036798, i64 2151036854, i64 2151036888, i64 2151036912, i64 2151036953, i64 2151036974, i64 2151037002, i64 2151037036}
!151 = !{i64 2151340780, i64 2151341271, i64 2151340817, i64 2151340873, i64 2151340907, i64 2151340931, i64 2151340972, i64 2151340993, i64 2151341021, i64 2151341055}
!152 = !{i64 2154759278, i64 2154759764, i64 2154759315, i64 2154759371, i64 2154759405, i64 2154759429, i64 2154759470, i64 2154759491, i64 2154759519, i64 2154759553}
!153 = !{i64 2154766075, i64 2154766561, i64 2154766112, i64 2154766168, i64 2154766202, i64 2154766226, i64 2154766267, i64 2154766288, i64 2154766316, i64 2154766350}
!154 = !{i64 2154767675, i64 2154768161, i64 2154767712, i64 2154767768, i64 2154767802, i64 2154767826, i64 2154767867, i64 2154767888, i64 2154767916, i64 2154767950}
!155 = !{i64 2151046591, i64 2151046764, i64 2151046779, i64 2151046831, i64 2151046890, i64 2151046914, i64 2151046955, i64 2151046976, i64 2151047004, i64 2151047036}
!156 = !{i64 2151329018}
!157 = !{i64 2150578055, i64 2150578546, i64 2150578092, i64 2150578148, i64 2150578182, i64 2150578206, i64 2150578247, i64 2150578268, i64 2150578296, i64 2150578330}
!158 = !{i64 2151327947}
!159 = !{i64 2148678168, i64 2148678200, i64 2148678229, i64 2148678263, i64 2148678294, i64 2148678317}
!160 = !{i64 2148767273}
!161 = !{i64 2151042012, i64 2151042185, i64 2151042200, i64 2151042252, i64 2151042311, i64 2151042335, i64 2151042376, i64 2151042397, i64 2151042425, i64 2151042457}
!162 = !{i64 2153152319, i64 2153152803, i64 2153152356, i64 2153152412, i64 2153152446, i64 2153152470, i64 2153152511, i64 2153152532, i64 2153152560, i64 2153152594}
!163 = !{i64 2148669310, i64 2148669336, i64 2148669365, i64 2148669399, i64 2148669430, i64 2148669453}
!164 = !{i64 2148493908, i64 2148493913, i64 2148493926, i64 2148493970, i64 2148494004, i64 2148494025}
!165 = !{i64 2153128346, i64 2153128829, i64 2153128383, i64 2153128439, i64 2153128473, i64 2153128497, i64 2153128538, i64 2153128559, i64 2153128587, i64 2153128621}
!166 = !{i64 2148757786}
!167 = !{i64 2148672495, i64 2148672527, i64 2148672556, i64 2148672590, i64 2148672621, i64 2148672644}
!168 = !{i64 2148758015}
!169 = !{i64 2154788076, i64 2154788562, i64 2154788113, i64 2154788169, i64 2154788203, i64 2154788227, i64 2154788268, i64 2154788289, i64 2154788317, i64 2154788351}
!170 = !{i64 2148766160}
!171 = !{i64 2148676555, i64 2148676587, i64 2148676616, i64 2148676650, i64 2148676681, i64 2148676704}
!172 = !{i64 2154791225, i64 2154791711, i64 2154791262, i64 2154791318, i64 2154791352, i64 2154791376, i64 2154791417, i64 2154791438, i64 2154791466, i64 2154791500}
!173 = !{i64 2154746284, i64 2154746770, i64 2154746321, i64 2154746377, i64 2154746411, i64 2154746435, i64 2154746476, i64 2154746497, i64 2154746525, i64 2154746559}
!174 = !{i64 2150639645, i64 2150639818, i64 2150639833, i64 2150639885, i64 2150639944, i64 2150639968, i64 2150640009, i64 2150640030, i64 2150640058, i64 2150640090}
!175 = !{i64 2150640520, i64 2150640693, i64 2150640708, i64 2150640760, i64 2150640819, i64 2150640843, i64 2150640884, i64 2150640905, i64 2150640933, i64 2150640965}
!176 = !{i64 2150631087, i64 2150631578, i64 2150631124, i64 2150631180, i64 2150631214, i64 2150631238, i64 2150631279, i64 2150631300, i64 2150631328, i64 2150631362}
!177 = !{i64 2154737429}
