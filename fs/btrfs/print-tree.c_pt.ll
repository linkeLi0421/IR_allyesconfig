; ModuleID = '/llk/IR_all_yes/fs/btrfs/print-tree.c_pt.bc'
source_filename = "../fs/btrfs/print-tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.root_name_map = type { i64, [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.btrfs_extent_item = type { i64, i64, i64 }
%struct.btrfs_tree_block_info = type { %struct.btrfs_disk_key, i8 }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.82, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.82 = type { i64 }
%struct.btrfs_extent_inline_ref = type <{ i8, i64 }>

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TREE_RELOC offset=%llu\00", [41 x i8] zeroinitializer }, align 32
@root_map = internal constant { [11 x %struct.root_name_map], [88 x i8] } { [11 x %struct.root_name_map] [%struct.root_name_map { i64 1, [16 x i8] c"ROOT_TREE\00\00\00\00\00\00\00" }, %struct.root_name_map { i64 2, [16 x i8] c"EXTENT_TREE\00\00\00\00\00" }, %struct.root_name_map { i64 3, [16 x i8] c"CHUNK_TREE\00\00\00\00\00\00" }, %struct.root_name_map { i64 4, [16 x i8] c"DEV_TREE\00\00\00\00\00\00\00\00" }, %struct.root_name_map { i64 5, [16 x i8] c"FS_TREE\00\00\00\00\00\00\00\00\00" }, %struct.root_name_map { i64 7, [16 x i8] c"CSUM_TREE\00\00\00\00\00\00\00" }, %struct.root_name_map { i64 -6, [16 x i8] c"TREE_LOG\00\00\00\00\00\00\00\00" }, %struct.root_name_map { i64 8, [16 x i8] c"QUOTA_TREE\00\00\00\00\00\00" }, %struct.root_name_map { i64 9, [16 x i8] c"UUID_TREE\00\00\00\00\00\00\00" }, %struct.root_name_map { i64 10, [16 x i8] c"FREE_SPACE_TREE\00" }, %struct.root_name_map { i64 -9, [16 x i8] c"DATA_RELOC_TREE\00" }], [88 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016leaf %llu gen %llu total ptrs %d free space %d owner %llu\00", [36 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016\09item %d key (%llu %u %llu) itemoff %d itemsize %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btrfs_print_leaf\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/print-tree.c\00", [42 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr = internal global ptr @btrfs_print_leaf._entry, section ".printk_index", align 4
@btrfs_print_leaf._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016\09\09inode generation %llu size %llu mode %o\0A\00", [51 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.8 = internal global ptr @btrfs_print_leaf._entry.6, section ".printk_index", align 4
@btrfs_print_leaf._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016\09\09dir oid %llu type %u\0A\00", [38 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.11 = internal global ptr @btrfs_print_leaf._entry.9, section ".printk_index", align 4
@btrfs_print_leaf._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016\09\09root data bytenr %llu refs %u\0A\00", [61 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.14 = internal global ptr @btrfs_print_leaf._entry.12, section ".printk_index", align 4
@btrfs_print_leaf._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016\09\09tree block backref\0A\00", [40 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.17 = internal global ptr @btrfs_print_leaf._entry.15, section ".printk_index", align 4
@btrfs_print_leaf._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016\09\09shared block backref\0A\00", [38 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.20 = internal global ptr @btrfs_print_leaf._entry.18, section ".printk_index", align 4
@btrfs_print_leaf._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016\09\09shared data backref count %u\0A\00", [62 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.23 = internal global ptr @btrfs_print_leaf._entry.21, section ".printk_index", align 4
@btrfs_print_leaf._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016\09\09inline extent data size %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.26 = internal global ptr @btrfs_print_leaf._entry.24, section ".printk_index", align 4
@btrfs_print_leaf._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016\09\09extent data disk bytenr %llu nr %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.29 = internal global ptr @btrfs_print_leaf._entry.27, section ".printk_index", align 4
@btrfs_print_leaf._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016\09\09extent data offset %llu nr %llu ram %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.32 = internal global ptr @btrfs_print_leaf._entry.30, section ".printk_index", align 4
@btrfs_print_leaf._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.5, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016\09\09block group used %llu chunk_objectid %llu flags %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.35 = internal global ptr @btrfs_print_leaf._entry.33, section ".printk_index", align 4
@btrfs_print_leaf._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.4, ptr @.str.5, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016\09\09dev extent chunk_tree %llu\0A\09\09chunk objectid %llu chunk offset %llu length %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.38 = internal global ptr @btrfs_print_leaf._entry.36, section ".printk_index", align 4
@btrfs_print_leaf._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.4, ptr @.str.5, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016\09\09persistent item objectid %llu offset %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.41 = internal global ptr @btrfs_print_leaf._entry.39, section ".printk_index", align 4
@btrfs_print_leaf._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016\09\09device stats\0A\00", [46 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.44 = internal global ptr @btrfs_print_leaf._entry.42, section ".printk_index", align 4
@btrfs_print_leaf._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.4, ptr @.str.5, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016\09\09unknown persistent item\0A\00", [35 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.47 = internal global ptr @btrfs_print_leaf._entry.45, section ".printk_index", align 4
@btrfs_print_leaf._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.4, ptr @.str.5, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016\09\09temporary item objectid %llu offset %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.50 = internal global ptr @btrfs_print_leaf._entry.48, section ".printk_index", align 4
@btrfs_print_leaf._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.5, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016\09\09balance status\0A\00", [44 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.53 = internal global ptr @btrfs_print_leaf._entry.51, section ".printk_index", align 4
@btrfs_print_leaf._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.4, ptr @.str.5, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016\09\09unknown temporary item\0A\00", [36 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.56 = internal global ptr @btrfs_print_leaf._entry.54, section ".printk_index", align 4
@btrfs_print_leaf._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.4, ptr @.str.5, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016\09\09dev replace\0A\00", [47 x i8] zeroinitializer }, align 32
@btrfs_print_leaf._entry_ptr.59 = internal global ptr @btrfs_print_leaf._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016node %llu level %d gen %llu total ptrs %d free spc %u owner %llu\00", [61 x i8] zeroinitializer }, align 32
@btrfs_print_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016\09key %d (%llu %u %llu) block %llu gen %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btrfs_print_tree\00", [47 x i8] zeroinitializer }, align 32
@btrfs_print_tree._entry_ptr = internal global ptr @btrfs_print_tree._entry, section ".printk_index", align 4
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016refs %u lock_owner %u current %u\00", [61 x i8] zeroinitializer }, align 32
@__func__.print_extent_item = private unnamed_addr constant [18 x i8] c"print_extent_item\00", align 1
@print_extent_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.print_extent_item, ptr @.str.5, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016\09\09extent refs %llu gen %llu flags %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr = internal global ptr @print_extent_item._entry, section ".printk_index", align 4
@print_extent_item._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.print_extent_item, ptr @.str.5, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016\09\09tree block key (%llu %u %llu) level %d\0A\00", [52 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.67 = internal global ptr @print_extent_item._entry.65, section ".printk_index", align 4
@print_extent_item._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.print_extent_item, ptr @.str.5, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016\09\09ref#%d: \00", [19 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.70 = internal global ptr @print_extent_item._entry.68, section ".printk_index", align 4
@print_extent_item._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.print_extent_item, ptr @.str.5, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\01ctree block backref root %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.73 = internal global ptr @print_extent_item._entry.71, section ".printk_index", align 4
@print_extent_item._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @__func__.print_extent_item, ptr @.str.5, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\01cshared block backref parent %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.76 = internal global ptr @print_extent_item._entry.74, section ".printk_index", align 4
@print_extent_item._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.print_extent_item, ptr @.str.5, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016\09\09\09(parent %llu not aligned to sectorsize %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.79 = internal global ptr @print_extent_item._entry.77, section ".printk_index", align 4
@print_extent_item._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__.print_extent_item, ptr @.str.5, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\01cshared data backref parent %llu count %u\0A\00", [52 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.82 = internal global ptr @print_extent_item._entry.80, section ".printk_index", align 4
@print_extent_item._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.print_extent_item, ptr @.str.5, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.84 = internal global ptr @print_extent_item._entry.83, section ".printk_index", align 4
@print_extent_item._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @__func__.print_extent_item, ptr @.str.5, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\01c(extent %llu has INVALID ref type %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@print_extent_item._entry_ptr.87 = internal global ptr @print_extent_item._entry.85, section ".printk_index", align 4
@print_extent_data_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\01cextent data backref root %llu objectid %llu offset %llu count %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"print_extent_data_ref\00", [42 x i8] zeroinitializer }, align 32
@print_extent_data_ref._entry_ptr = internal global ptr @print_extent_data_ref._entry, section ".printk_index", align 4
@.str.90 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013Unsupported V0 extent filesystem detected. Aborting. Please re-create your filesystem with a newer kernel\00", [52 x i8] zeroinitializer }, align 32
@print_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016\09\09chunk length %llu owner %llu type %llu num_stripes %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"print_chunk\00", [20 x i8] zeroinitializer }, align 32
@print_chunk._entry_ptr = internal global ptr @print_chunk._entry, section ".printk_index", align 4
@print_chunk._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.5, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016\09\09\09stripe %d devid %llu offset %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@print_chunk._entry_ptr.95 = internal global ptr @print_chunk._entry.93, section ".printk_index", align 4
@print_dev_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016\09\09dev item devid %llu total_bytes %llu bytes used %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"print_dev_item\00", [17 x i8] zeroinitializer }, align 32
@print_dev_item._entry_ptr = internal global ptr @print_dev_item._entry, section ".printk_index", align 4
@print_uuid_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014BTRFS: uuid item with illegal size %lu!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"print_uuid_item\00", [16 x i8] zeroinitializer }, align 32
@print_uuid_item._entry_ptr = internal global ptr @print_uuid_item._entry, section ".printk_index", align 4
@print_uuid_item._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.5, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016\09\09subvol_id %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@print_uuid_item._entry_ptr.102 = internal global ptr @print_uuid_item._entry.100, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 64, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 -9, i64 -8, i64 -6]
@__sancov_gen_cov_switch_values.103 = internal global [22 x i64] [i64 20, i64 8, i64 1, i64 84, i64 108, i64 132, i64 168, i64 169, i64 176, i64 178, i64 180, i64 182, i64 184, i64 192, i64 204, i64 216, i64 228, i64 248, i64 249, i64 250, i64 251, i64 252]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 8, i64 176, i64 178, i64 182, i64 184]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 35, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"root_map\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 15, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 44, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 220, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 228, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 234, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 242, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 248, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 257, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 260, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 270, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 278, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 282, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 285, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 297, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 314, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 321, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 325, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 328, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 332, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 336, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 339, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 343, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 370, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 378, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 193, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 101, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 110, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 125, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 128, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 131, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 137, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 147, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 154, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 159, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 72, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 3562, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 52, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 56, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 64, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 172, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [25 x i8] c"../fs/btrfs/print-tree.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 180, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @btrfs_print_leaf._entry, ptr @btrfs_print_leaf._entry.12, ptr @btrfs_print_leaf._entry.15, ptr @btrfs_print_leaf._entry.18, ptr @btrfs_print_leaf._entry.21, ptr @btrfs_print_leaf._entry.24, ptr @btrfs_print_leaf._entry.27, ptr @btrfs_print_leaf._entry.30, ptr @btrfs_print_leaf._entry.33, ptr @btrfs_print_leaf._entry.36, ptr @btrfs_print_leaf._entry.39, ptr @btrfs_print_leaf._entry.42, ptr @btrfs_print_leaf._entry.45, ptr @btrfs_print_leaf._entry.48, ptr @btrfs_print_leaf._entry.51, ptr @btrfs_print_leaf._entry.54, ptr @btrfs_print_leaf._entry.57, ptr @btrfs_print_leaf._entry.6, ptr @btrfs_print_leaf._entry.9, ptr @btrfs_print_leaf._entry_ptr, ptr @btrfs_print_leaf._entry_ptr.11, ptr @btrfs_print_leaf._entry_ptr.14, ptr @btrfs_print_leaf._entry_ptr.17, ptr @btrfs_print_leaf._entry_ptr.20, ptr @btrfs_print_leaf._entry_ptr.23, ptr @btrfs_print_leaf._entry_ptr.26, ptr @btrfs_print_leaf._entry_ptr.29, ptr @btrfs_print_leaf._entry_ptr.32, ptr @btrfs_print_leaf._entry_ptr.35, ptr @btrfs_print_leaf._entry_ptr.38, ptr @btrfs_print_leaf._entry_ptr.41, ptr @btrfs_print_leaf._entry_ptr.44, ptr @btrfs_print_leaf._entry_ptr.47, ptr @btrfs_print_leaf._entry_ptr.50, ptr @btrfs_print_leaf._entry_ptr.53, ptr @btrfs_print_leaf._entry_ptr.56, ptr @btrfs_print_leaf._entry_ptr.59, ptr @btrfs_print_leaf._entry_ptr.8, ptr @btrfs_print_tree._entry, ptr @btrfs_print_tree._entry_ptr, ptr @print_chunk._entry, ptr @print_chunk._entry.93, ptr @print_chunk._entry_ptr, ptr @print_chunk._entry_ptr.95, ptr @print_dev_item._entry, ptr @print_dev_item._entry_ptr, ptr @print_extent_data_ref._entry, ptr @print_extent_data_ref._entry_ptr, ptr @print_extent_item._entry, ptr @print_extent_item._entry.65, ptr @print_extent_item._entry.68, ptr @print_extent_item._entry.71, ptr @print_extent_item._entry.74, ptr @print_extent_item._entry.77, ptr @print_extent_item._entry.80, ptr @print_extent_item._entry.83, ptr @print_extent_item._entry.85, ptr @print_extent_item._entry_ptr, ptr @print_extent_item._entry_ptr.67, ptr @print_extent_item._entry_ptr.70, ptr @print_extent_item._entry_ptr.73, ptr @print_extent_item._entry_ptr.76, ptr @print_extent_item._entry_ptr.79, ptr @print_extent_item._entry_ptr.82, ptr @print_extent_item._entry_ptr.84, ptr @print_extent_item._entry_ptr.87, ptr @print_uuid_item._entry, ptr @print_uuid_item._entry.100, ptr @print_uuid_item._entry_ptr, ptr @print_uuid_item._entry_ptr.102, ptr @.str, ptr @root_map, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_map to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_leaf._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_item._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_extent_data_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_chunk._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_dev_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_uuid_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_uuid_item._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_root_name(ptr nocapture noundef readonly %key, ptr noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %key, align 1
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i64 %1, label %for.inc.10 [
    i64 -8, label %if.then
    i64 1, label %entry.if.then4_crit_edge
    i64 2, label %if.then4.fold.split
    i64 3, label %if.then4.fold.split21
    i64 4, label %if.then4.fold.split22
    i64 5, label %if.then4.fold.split23
    i64 7, label %if.then4.fold.split24
    i64 -6, label %if.then4.fold.split25
    i64 8, label %if.then4.fold.split26
    i64 9, label %if.then4.fold.split27
    i64 10, label %if.then4.fold.split28
    i64 -9, label %if.then4.fold.split29
  ]

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %offset, align 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 48, ptr noundef nonnull @.str, i64 noundef %3)
  br label %cleanup

if.then4.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split21:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split22:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split23:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split24:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split25:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split26:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split27:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split28:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split29:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %if.then4.fold.split29, %if.then4.fold.split28, %if.then4.fold.split27, %if.then4.fold.split26, %if.then4.fold.split25, %if.then4.fold.split24, %if.then4.fold.split23, %if.then4.fold.split22, %if.then4.fold.split21, %if.then4.fold.split, %entry.if.then4_crit_edge
  %i.019.lcssa = phi i32 [ 0, %entry.if.then4_crit_edge ], [ 1, %if.then4.fold.split ], [ 2, %if.then4.fold.split21 ], [ 3, %if.then4.fold.split22 ], [ 4, %if.then4.fold.split23 ], [ 5, %if.then4.fold.split24 ], [ 6, %if.then4.fold.split25 ], [ 7, %if.then4.fold.split26 ], [ 8, %if.then4.fold.split27 ], [ 9, %if.then4.fold.split28 ], [ 10, %if.then4.fold.split29 ]
  %name = getelementptr [11 x %struct.root_name_map], ptr @root_map, i32 0, i32 %i.019.lcssa, i32 1
  br label %cleanup

for.inc.10:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 48, ptr noundef nonnull @.str.1, i64 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %for.inc.10, %if.then4, %if.then
  %retval.0 = phi ptr [ %buf, %if.then ], [ %name, %if.then4 ], [ %buf, %for.inc.10 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_print_leaf(ptr noundef %l) local_unnamed_addr #3 align 64 {
entry:
  %subvol_id.i = alloca i64, align 8
  %key.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i309 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #8
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %l, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i, align 4
  %call.i283 = tail call ptr @page_address(ptr noundef %10) #8
  %11 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %l, align 8
  %conv.i284 = trunc i64 %12 to i32
  %and.i285 = and i32 %conv.i284, 4095
  %add.ptr.i286 = getelementptr i8, ptr %call.i283, i32 %and.i285
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i286, i32 0, i32 2
  %13 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %bytenr.i, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #8
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %call.i288 = tail call ptr @page_address(ptr noundef %17) #8
  %18 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %l, align 8
  %conv.i289 = trunc i64 %19 to i32
  %and.i290 = and i32 %conv.i289, 4095
  %add.ptr.i291 = getelementptr i8, ptr %call.i288, i32 %and.i290
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i291, i32 0, i32 5
  %20 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %generation.i, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #8
  %call4 = tail call i32 @btrfs_leaf_free_space(ptr noundef nonnull %l) #8
  %23 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i, align 4
  %call.i293 = tail call ptr @page_address(ptr noundef %24) #8
  %25 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %l, align 8
  %conv.i294 = trunc i64 %26 to i32
  %and.i295 = and i32 %conv.i294, 4095
  %add.ptr.i296 = getelementptr i8, ptr %call.i293, i32 %and.i295
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i296, i32 0, i32 6
  %27 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %owner.i, align 1
  %29 = tail call i64 @llvm.bswap.i64(i64 %28) #8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.2, i64 noundef %15, i64 noundef %22, i32 noundef %8, i32 noundef %call4, i64 noundef %29) #11
  %30 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fs_info1, align 8
  %refs.i = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %refs.i, align 4
  %lock_owner.i = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 9
  %34 = ptrtoint ptr %lock_owner.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lock_owner.i, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !162) #8
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %31, ptr noundef nonnull @.str.63, i32 noundef %33, i32 noundef %35, i32 noundef %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp381.not = icmp eq i32 %7, 0
  br i1 %cmp381.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %42 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %44 = getelementptr inbounds %struct.btrfs_disk_key, ptr %key.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.btrfs_disk_key, ptr %key.i, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0382 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %mul.i.i.i.i = mul i32 %i.0382, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %46 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %l, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %43, align 1
  %49 = call i64 @llvm.bswap.i64(i64 %48) #8
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %42, align 8
  %52 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %disk_key.i, align 8
  %54 = call i64 @llvm.bswap.i64(i64 %53) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %conv = zext i8 %51 to i32
  %55 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %call.i.i299 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 21) #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.0382, i64 noundef %54, i32 noundef %conv, i64 noundef %49, i32 noundef %call.i.i, i32 noundef %call.i.i299) #11
  %56 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %51, label %for.body.for.inc_crit_edge [
    i8 1, label %sw.bb
    i8 84, label %sw.bb19
    i8 -124, label %sw.bb30
    i8 -88, label %for.body.sw.bb40_crit_edge
    i8 -87, label %for.body.sw.bb40_crit_edge388
    i8 -80, label %do.end44
    i8 -74, label %do.end50
    i8 -78, label %sw.bb53
    i8 -72, label %sw.bb56
    i8 108, label %sw.bb65
    i8 -76, label %sw.bb95
    i8 -64, label %sw.bb99
    i8 -28, label %sw.bb110
    i8 -40, label %sw.bb113
    i8 -52, label %sw.bb116
    i8 -7, label %do.end131
    i8 -8, label %do.end151
    i8 -6, label %do.end173
    i8 -5, label %for.body.sw.bb176_crit_edge
    i8 -4, label %for.body.sw.bb176_crit_edge389
  ]

for.body.sw.bb176_crit_edge389:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb176

for.body.sw.bb176_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb176

for.body.sw.bb40_crit_edge388:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

for.body.sw.bb40_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i302 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add = add i32 %call.i.i302, 101
  %57 = inttoptr i32 %add to ptr
  %call.i303 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %57, i32 noundef 0) #8
  %call.i304 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %57, i32 noundef 16) #8
  %call.i305 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %57, i32 noundef 52) #8
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %call.i303, i64 noundef %call.i304, i32 noundef %call.i305) #11
  br label %for.inc

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i308 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add21 = add i32 %call.i.i308, 101
  %58 = inttoptr i32 %add21 to ptr
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i309) #8
  %59 = call ptr @memset(ptr %disk_key.i309, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %l, ptr noundef nonnull %disk_key.i309, i32 noundef %add21, i32 noundef 17) #8
  %60 = ptrtoint ptr %disk_key.i309 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %disk_key.i309, align 8
  %62 = call i64 @llvm.bswap.i64(i64 %61) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i309) #8
  %call.i312 = call zeroext i8 @btrfs_get_8(ptr noundef %l, ptr noundef %58, i32 noundef 29) #8
  %conv28 = zext i8 %call.i312 to i32
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %62, i32 noundef %conv28) #11
  br label %for.inc

sw.bb30:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i315 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add32 = add i32 %call.i.i315, 101
  %63 = inttoptr i32 %add32 to ptr
  %call.i316 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %63, i32 noundef 176) #8
  %call.i317 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %63, i32 noundef 216) #8
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef %call.i316, i32 noundef %call.i317) #11
  br label %for.inc

sw.bb40:                                          ; preds = %for.body.sw.bb40_crit_edge, %for.body.sw.bb40_crit_edge388
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %64 = call ptr @memset(ptr %key.i, i32 255, i32 17)
  %call.i.i.i320 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i.i.i320)
  %cmp.i = icmp ult i32 %call.i.i.i320, 24
  br i1 %cmp.i, label %if.then.i, label %sw.bb40.if.end.i_crit_edge, !prof !172

sw.bb40.if.end.i_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fs_info1, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %66, ptr noundef nonnull @.str.90) #11
  %67 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fs_info1, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %68, ptr noundef nonnull @__func__.print_extent_item, i32 noundef 95, i32 noundef -22, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb40.if.end.i_crit_edge
  %call.i.i183.i = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add.i = add i32 %call.i.i183.i, 101
  %69 = inttoptr i32 %add.i to ptr
  %call.i.i322 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %69, i32 noundef 16) #8
  %call.i184.i = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %69, i32 noundef 0) #8
  %call.i185.i = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %69, i32 noundef 8) #8
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i64 noundef %call.i184.i, i64 noundef %call.i185.i, i64 noundef %call.i.i322) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %51)
  %cmp11.i = icmp ne i8 %51, -88
  %and.i323 = and i64 %call.i.i322, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i323)
  %tobool12.not.i = icmp eq i64 %and.i323, 0
  %or.cond.i = select i1 %cmp11.i, i1 true, i1 %tobool12.not.i
  %add.ptr25.i = getelementptr %struct.btrfs_extent_item, ptr %69, i32 1
  br i1 %or.cond.i, label %if.end.i.if.end26.i_crit_edge, label %if.then13.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %add.ptr25.i to i32
  call void @read_extent_buffer(ptr noundef %l, ptr noundef nonnull %key.i, i32 noundef %70, i32 noundef 17) #8
  %71 = ptrtoint ptr %key.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %key.i, align 8
  %73 = call i64 @llvm.bswap.i64(i64 %72) #8
  %74 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %44, align 8
  %conv.i324 = zext i8 %75 to i32
  %76 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %45, align 1
  %78 = call i64 @llvm.bswap.i64(i64 %77) #8
  %call.i186.i = call zeroext i8 @btrfs_get_8(ptr noundef %l, ptr noundef %add.ptr25.i, i32 noundef 17) #8
  %conv22.i = zext i8 %call.i186.i to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i64 noundef %73, i32 noundef %conv.i324, i64 noundef %78, i32 noundef %conv22.i) #11
  %add.ptr24.i = getelementptr %struct.btrfs_tree_block_info, ptr %add.ptr25.i, i32 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then13.i, %if.end.i.if.end26.i_crit_edge
  %iref.0.i = phi ptr [ %add.ptr24.i, %if.then13.i ], [ %add.ptr25.i, %if.end.i.if.end26.i_crit_edge ]
  %79 = ptrtoint ptr %iref.0.i to i32
  %add27.i = add i32 %add.i, %call.i.i.i320
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i, i32 %79)
  %cmp28194.i = icmp ugt i32 %add27.i, %79
  br i1 %cmp28194.i, label %if.end26.i.while.body.i_crit_edge, label %if.end26.i.while.end.i_crit_edge

if.end26.i.while.end.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  br label %while.body.i

while.body.i:                                     ; preds = %btrfs_extent_inline_ref_size.exit.i.while.body.i_crit_edge, %if.end26.i.while.body.i_crit_edge
  %ptr.0196.i = phi i32 [ %add94.i, %btrfs_extent_inline_ref_size.exit.i.while.body.i_crit_edge ], [ %79, %if.end26.i.while.body.i_crit_edge ]
  %ref_index.0195.i = phi i32 [ %inc.i, %btrfs_extent_inline_ref_size.exit.i.while.body.i_crit_edge ], [ 0, %if.end26.i.while.body.i_crit_edge ]
  %80 = inttoptr i32 %ptr.0196.i to ptr
  %call.i187.i = call zeroext i8 @btrfs_get_8(ptr noundef %l, ptr noundef %80, i32 noundef 0) #8
  %call.i188.i = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %80, i32 noundef 1) #8
  %inc.i = add i32 %ref_index.0195.i, 1
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %ref_index.0195.i) #11
  %81 = zext i8 %call.i187.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %call.i187.i, label %do.end90.i [
    i8 -80, label %do.end40.i
    i8 -74, label %do.end46.i
    i8 -78, label %if.then6.i.i
    i8 -72, label %sw.bb65.i
  ]

do.end40.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i64 noundef %call.i188.i) #11
  br label %btrfs_extent_inline_ref_size.exit.i

do.end46.i:                                       ; preds = %while.body.i
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i64 noundef %call.i188.i) #11
  %82 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fs_info1, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %83, i32 0, i32 167
  %84 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sectorsize.i, align 4
  %conv50.i = zext i32 %85 to i64
  %sub.i = add nsw i64 %conv50.i, -1
  %and51.i = and i64 %sub.i, %call.i188.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and51.i)
  %cmp52.i = icmp eq i64 %and51.i, 0
  br i1 %cmp52.i, label %do.end46.i.btrfs_extent_inline_ref_size.exit.i_crit_edge, label %do.end57.i

do.end46.i.btrfs_extent_inline_ref_size.exit.i_crit_edge: ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_extent_inline_ref_size.exit.i

do.end57.i:                                       ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %call.i188.i, i32 noundef %85) #11
  br label %btrfs_extent_inline_ref_size.exit.i

sw.bb65.i:                                        ; preds = %while.body.i
  %add.ptr66.i = getelementptr %struct.btrfs_extent_inline_ref, ptr %80, i32 1
  %call.i190.i = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %add.ptr66.i, i32 noundef 0) #8
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i64 noundef %call.i188.i, i32 noundef %call.i190.i) #11
  %86 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fs_info1, align 8
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %87, i32 0, i32 166
  %88 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nodesize.i, align 8
  %conv74.i = zext i32 %89 to i64
  %sub75.i = add nsw i64 %conv74.i, -1
  %and76.i = and i64 %sub75.i, %call.i188.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and76.i)
  %cmp77.i = icmp eq i64 %and76.i, 0
  br i1 %cmp77.i, label %sw.bb65.i.btrfs_extent_inline_ref_size.exit.i_crit_edge, label %do.end82.i

sw.bb65.i.btrfs_extent_inline_ref_size.exit.i_crit_edge: ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_extent_inline_ref_size.exit.i

do.end82.i:                                       ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #10
  %sectorsize85.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %87, i32 0, i32 167
  %90 = ptrtoint ptr %sectorsize85.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sectorsize85.i, align 4
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %call.i188.i, i32 noundef %91) #11
  br label %btrfs_extent_inline_ref_size.exit.i

do.end90.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.i = zext i8 %call.i187.i to i32
  %92 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %l, align 8
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i64 noundef %93, i32 noundef %conv31.i) #11
  br label %print_extent_item.exit

if.then6.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %offset64.i = getelementptr inbounds %struct.btrfs_extent_inline_ref, ptr %80, i32 0, i32 1
  %call.i.i189.i = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %offset64.i, i32 noundef 0) #8
  %call.i11.i.i = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %offset64.i, i32 noundef 8) #8
  %call.i12.i.i = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %offset64.i, i32 noundef 16) #8
  %call.i13.i.i = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %offset64.i, i32 noundef 24) #8
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i64 noundef %call.i.i189.i, i64 noundef %call.i11.i.i, i64 noundef %call.i12.i.i, i32 noundef %call.i13.i.i) #11
  br label %btrfs_extent_inline_ref_size.exit.i

btrfs_extent_inline_ref_size.exit.i:              ; preds = %if.then6.i.i, %do.end82.i, %sw.bb65.i.btrfs_extent_inline_ref_size.exit.i_crit_edge, %do.end57.i, %do.end46.i.btrfs_extent_inline_ref_size.exit.i_crit_edge, %do.end40.i
  %retval.0.i.i = phi i32 [ 29, %if.then6.i.i ], [ 13, %sw.bb65.i.btrfs_extent_inline_ref_size.exit.i_crit_edge ], [ 13, %do.end82.i ], [ 9, %do.end46.i.btrfs_extent_inline_ref_size.exit.i_crit_edge ], [ 9, %do.end57.i ], [ 9, %do.end40.i ]
  %add94.i = add i32 %retval.0.i.i, %ptr.0196.i
  %cmp28.i = icmp ult i32 %add94.i, %add27.i
  br i1 %cmp28.i, label %btrfs_extent_inline_ref_size.exit.i.while.body.i_crit_edge, label %btrfs_extent_inline_ref_size.exit.i.while.end.i_crit_edge

btrfs_extent_inline_ref_size.exit.i.while.end.i_crit_edge: ; preds = %btrfs_extent_inline_ref_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

btrfs_extent_inline_ref_size.exit.i.while.body.i_crit_edge: ; preds = %btrfs_extent_inline_ref_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %btrfs_extent_inline_ref_size.exit.i.while.end.i_crit_edge, %if.end26.i.while.end.i_crit_edge
  %ptr.0.lcssa.i = phi i32 [ %79, %if.end26.i.while.end.i_crit_edge ], [ %add94.i, %btrfs_extent_inline_ref_size.exit.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ptr.0.lcssa.i, i32 %add27.i)
  %cmp95.i = icmp ugt i32 %ptr.0.lcssa.i, %add27.i
  br i1 %cmp95.i, label %do.end112.i, label %while.end.i.print_extent_item.exit_crit_edge, !prof !172

while.end.i.print_extent_item.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_extent_item.exit

do.end112.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 165, i32 noundef 9, ptr noundef null) #8
  br label %print_extent_item.exit

print_extent_item.exit:                           ; preds = %do.end112.i, %while.end.i.print_extent_item.exit_crit_edge, %do.end90.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %for.inc

do.end44:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %for.inc

do.end50:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %for.inc

sw.bb53:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i327 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add55 = add i32 %call.i.i327, 101
  %94 = inttoptr i32 %add55 to ptr
  call fastcc void @print_extent_data_ref(ptr noundef %l, ptr noundef %94)
  br label %for.inc

sw.bb56:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i330 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add58 = add i32 %call.i.i330, 101
  %95 = inttoptr i32 %add58 to ptr
  %call.i331 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %95, i32 noundef 0) #8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call.i331) #11
  br label %for.inc

sw.bb65:                                          ; preds = %for.body
  %call.i.i334 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add67 = add i32 %call.i.i334, 101
  %96 = inttoptr i32 %add67 to ptr
  %call.i335 = call zeroext i8 @btrfs_get_8(ptr noundef %l, ptr noundef %96, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i335)
  %cmp70 = icmp eq i8 %call.i335, 0
  br i1 %cmp70, label %do.end75, label %do.end82

do.end75:                                         ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #10
  %call.i336 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %96, i32 noundef 8) #8
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i64 noundef %call.i336) #11
  br label %for.inc

do.end82:                                         ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #10
  %call.i337 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %96, i32 noundef 21) #8
  %call.i338 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %96, i32 noundef 29) #8
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i64 noundef %call.i337, i64 noundef %call.i338) #11
  %call.i339 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %96, i32 noundef 37) #8
  %call.i340 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %96, i32 noundef 45) #8
  %call.i341 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %96, i32 noundef 8) #8
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i64 noundef %call.i339, i64 noundef %call.i340, i64 noundef %call.i341) #11
  br label %for.inc

sw.bb95:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.90) #11
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 292, i32 noundef -22, ptr noundef null) #11
  br label %for.inc

sw.bb99:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i344 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add101 = add i32 %call.i.i344, 101
  %97 = inttoptr i32 %add101 to ptr
  %call.i345 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %97, i32 noundef 0) #8
  %call.i346 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %97, i32 noundef 8) #8
  %call.i347 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %97, i32 noundef 16) #8
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %call.i345, i64 noundef %call.i346, i64 noundef %call.i347) #11
  br label %for.inc

sw.bb110:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i350 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add112 = add i32 %call.i.i350, 101
  %98 = inttoptr i32 %add112 to ptr
  call fastcc void @print_chunk(ptr noundef %l, ptr noundef %98)
  br label %for.inc

sw.bb113:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i353 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add115 = add i32 %call.i.i353, 101
  %99 = inttoptr i32 %add115 to ptr
  call fastcc void @print_dev_item(ptr noundef %l, ptr noundef %99)
  br label %for.inc

sw.bb116:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i356 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %add118 = add i32 %call.i.i356, 101
  %100 = inttoptr i32 %add118 to ptr
  %call.i357 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %100, i32 noundef 0) #8
  %call.i358 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %100, i32 noundef 8) #8
  %call.i359 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %100, i32 noundef 16) #8
  %call.i360 = call i64 @btrfs_get_64(ptr noundef %l, ptr noundef %100, i32 noundef 24) #8
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i64 noundef %call.i357, i64 noundef %call.i358, i64 noundef %call.i359, i64 noundef %call.i360) #11
  br label %for.inc

do.end131:                                        ; preds = %for.body
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i64 noundef %54, i64 noundef %49) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cond194 = icmp eq i64 %53, 0
  br i1 %cond194, label %do.end140, label %do.end145

do.end140:                                        ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #10
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %for.inc

do.end145:                                        ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #10
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  br label %for.inc

do.end151:                                        ; preds = %for.body
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i64 noundef %54, i64 noundef %49) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -216172782113783809, i64 %53)
  %cond = icmp eq i64 %53, -216172782113783809
  br i1 %cond, label %do.end160, label %do.end166

do.end160:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #10
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #11
  br label %for.inc

do.end166:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #10
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #11
  br label %for.inc

do.end173:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #11
  br label %for.inc

sw.bb176:                                         ; preds = %for.body.sw.bb176_crit_edge, %for.body.sw.bb176_crit_edge389
  %call.i.i363 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 17) #8
  %call.i.i366 = call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %55, i32 noundef 21) #8
  %and.i367 = and i32 %call.i.i366, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i367)
  %cmp.i368 = icmp eq i32 %and.i367, 0
  br i1 %cmp.i368, label %while.cond.preheader.i, label %do.end.i

while.cond.preheader.i:                           ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i366)
  %tobool.not9.i = icmp eq i32 %call.i.i366, 0
  br i1 %tobool.not9.i, label %while.cond.preheader.i.for.inc_crit_edge, label %while.body.i372.preheader

while.cond.preheader.i.for.inc_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body.i372.preheader:                        ; preds = %while.cond.preheader.i
  %add178 = add i32 %call.i.i363, 101
  br label %while.body.i372

do.end.i:                                         ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #10
  %call.i369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %call.i.i366) #11
  br label %for.inc

while.body.i372:                                  ; preds = %while.body.i372.while.body.i372_crit_edge, %while.body.i372.preheader
  %offset.addr.011.i = phi i32 [ %add.i371, %while.body.i372.while.body.i372_crit_edge ], [ %add178, %while.body.i372.preheader ]
  %item_size.addr.010.i = phi i32 [ %sub.i370, %while.body.i372.while.body.i372_crit_edge ], [ %call.i.i366, %while.body.i372.preheader ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %subvol_id.i) #8
  %101 = ptrtoint ptr %subvol_id.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 -1, ptr %subvol_id.i, align 8, !annotation !173
  call void @read_extent_buffer(ptr noundef %l, ptr noundef nonnull %subvol_id.i, i32 noundef %offset.addr.011.i, i32 noundef 8) #8
  %102 = ptrtoint ptr %subvol_id.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %subvol_id.i, align 8
  %104 = call i64 @llvm.bswap.i64(i64 %103) #8
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i64 noundef %104) #11
  %sub.i370 = add i32 %item_size.addr.010.i, -8
  %add.i371 = add i32 %offset.addr.011.i, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subvol_id.i) #8
  %tobool.not.i = icmp eq i32 %sub.i370, 0
  br i1 %tobool.not.i, label %while.body.i372.for.inc_crit_edge, label %while.body.i372.while.body.i372_crit_edge

while.body.i372.while.body.i372_crit_edge:        ; preds = %while.body.i372
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i372

while.body.i372.for.inc_crit_edge:                ; preds = %while.body.i372
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %while.body.i372.for.inc_crit_edge, %do.end.i, %while.cond.preheader.i.for.inc_crit_edge, %do.end173, %do.end166, %do.end160, %do.end145, %do.end140, %sw.bb116, %sw.bb113, %sw.bb110, %sw.bb99, %sw.bb95, %do.end82, %do.end75, %sw.bb56, %sw.bb53, %do.end50, %do.end44, %print_extent_item.exit, %sw.bb30, %sw.bb19, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0382, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_leaf_free_space(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_extent_data_ref(ptr noundef %eb, ptr noundef %ref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %ref, i32 noundef 0) #8
  %call.i11 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %ref, i32 noundef 8) #8
  %call.i12 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %ref, i32 noundef 16) #8
  %call.i13 = tail call i32 @btrfs_get_32(ptr noundef %eb, ptr noundef %ref, i32 noundef 24) #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i64 noundef %call.i, i64 noundef %call.i11, i64 noundef %call.i12, i32 noundef %call.i13) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_handle_fs_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_chunk(ptr noundef %eb, ptr noundef %chunk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @btrfs_get_16(ptr noundef %eb, ptr noundef %chunk, i32 noundef 44) #8
  %conv = zext i16 %call.i to i32
  %call.i28 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %chunk, i32 noundef 0) #8
  %call.i29 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %chunk, i32 noundef 8) #8
  %call.i30 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %chunk, i32 noundef 24) #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i64 noundef %call.i28, i64 noundef %call.i29, i64 noundef %call.i30, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %cmp35.not = icmp eq i16 %call.i, 0
  br i1 %cmp35.not, label %entry.for.end_crit_edge, label %do.end8.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end8.lr.ph:                                    ; preds = %entry
  %0 = ptrtoint ptr %chunk to i32
  %add.i.i = add i32 %0, 48
  br label %do.end8

do.end8:                                          ; preds = %do.end8.do.end8_crit_edge, %do.end8.lr.ph
  %i.036 = phi i32 [ 0, %do.end8.lr.ph ], [ %inc, %do.end8.do.end8_crit_edge ]
  %mul.i.i = shl i32 %i.036, 5
  %add1.i.i = add i32 %add.i.i, %mul.i.i
  %1 = inttoptr i32 %add1.i.i to ptr
  %call.i.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %1, i32 noundef 0) #8
  %call.i.i34 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %1, i32 noundef 8) #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %i.036, i64 noundef %call.i.i, i64 noundef %call.i.i34) #11
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %do.end8.for.end_crit_edge, label %do.end8.do.end8_crit_edge

do.end8.do.end8_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.end8.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_dev_item(ptr noundef %eb, ptr noundef %dev_item) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %dev_item, i32 noundef 0) #8
  %call.i8 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %dev_item, i32 noundef 8) #8
  %call.i9 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %dev_item, i32 noundef 16) #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i64 noundef %call.i, i64 noundef %call.i8, i64 noundef %call.i9) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_print_tree(ptr noundef %c, i1 noundef zeroext %follow) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i136 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %first_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %c, null
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end:                                           ; preds = %entry
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %c, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #8
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %c, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i, align 4
  %call.i114 = tail call ptr @page_address(ptr noundef %10) #8
  %11 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %c, align 8
  %conv.i115 = trunc i64 %12 to i32
  %and.i116 = and i32 %conv.i115, 4095
  %add.ptr.i117 = getelementptr i8, ptr %call.i114, i32 %and.i116
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i117, i32 0, i32 8
  %13 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %level.i, align 1
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp eq i8 %14, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_print_leaf(ptr noundef nonnull %c)
  br label %cleanup65

if.end5:                                          ; preds = %if.end
  %15 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i, align 4
  %call.i119 = tail call ptr @page_address(ptr noundef %16) #8
  %17 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %c, align 8
  %conv.i120 = trunc i64 %18 to i32
  %and.i121 = and i32 %conv.i120, 4095
  %add.ptr.i122 = getelementptr i8, ptr %call.i119, i32 %and.i121
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i122, i32 0, i32 2
  %19 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %bytenr.i, align 1
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #8
  %22 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i, align 4
  %call.i124 = tail call ptr @page_address(ptr noundef %23) #8
  %24 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %c, align 8
  %conv.i125 = trunc i64 %25 to i32
  %and.i126 = and i32 %conv.i125, 4095
  %add.ptr.i127 = getelementptr i8, ptr %call.i124, i32 %and.i126
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i127, i32 0, i32 5
  %26 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %generation.i, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %29 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %30, -101
  %div.i = udiv i32 %sub.i.i, 33
  %sub = sub i32 %div.i, %8
  %31 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages.i, align 4
  %call.i129 = tail call ptr @page_address(ptr noundef %32) #8
  %33 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %c, align 8
  %conv.i130 = trunc i64 %34 to i32
  %and.i131 = and i32 %conv.i130, 4095
  %add.ptr.i132 = getelementptr i8, ptr %call.i129, i32 %and.i131
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i132, i32 0, i32 6
  %35 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %owner.i, align 1
  %37 = tail call i64 @llvm.bswap.i64(i64 %36) #8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.60, i64 noundef %21, i32 noundef %conv, i64 noundef %28, i32 noundef %8, i32 noundef %sub, i64 noundef %37) #11
  %38 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fs_info1, align 8
  %refs.i = getelementptr inbounds %struct.extent_buffer, ptr %c, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs.i, i32 noundef 4) #8
  %40 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %refs.i, align 4
  %lock_owner.i = getelementptr inbounds %struct.extent_buffer, ptr %c, i32 0, i32 9
  %42 = ptrtoint ptr %lock_owner.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lock_owner.i, align 4
  %44 = tail call i32 @llvm.read_register.i32(metadata !162) #8
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %39, ptr noundef nonnull @.str.63, i32 noundef %41, i32 noundef %43, i32 noundef %49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10160.not = icmp eq i32 %7, 0
  br i1 %cmp10160.not, label %if.end5.cleanup65_crit_edge, label %for.body.lr.ph

if.end5.cleanup65_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

for.body.lr.ph:                                   ; preds = %if.end5
  %50 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %51 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %52 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef nonnull %c, ptr noundef nonnull %disk_key.i, i32 noundef %i.0161) #8
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %51, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %54) #8
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %50, align 8
  %58 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %disk_key.i, align 8
  %60 = call i64 @llvm.bswap.i64(i64 %59) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %conv12 = zext i8 %57 to i32
  %mul.i = mul i32 %i.0161, 33
  %add.i = add i32 %mul.i, 101
  %61 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef nonnull %c, ptr noundef %61, i32 noundef 17) #8
  %call.i.i135 = call i64 @btrfs_get_64(ptr noundef nonnull %c, ptr noundef %61, i32 noundef 25) #8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %i.0161, i64 noundef %60, i32 noundef %conv12, i64 noundef %55, i64 noundef %call.i.i, i64 noundef %call.i.i135) #11
  %inc = add nuw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %follow, label %for.body22.lr.ph, label %for.end.cleanup65_crit_edge

for.end.cleanup65_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

for.body22.lr.ph:                                 ; preds = %for.end
  %62 = getelementptr inbounds %struct.btrfs_key, ptr %first_key, i32 0, i32 1
  %63 = getelementptr inbounds %struct.btrfs_key, ptr %first_key, i32 0, i32 2
  %64 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i136, i32 0, i32 1
  %65 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i136, i32 0, i32 2
  %sub26 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp37.not = icmp eq i8 %14, 1
  %umax165 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body22

for.body22:                                       ; preds = %cleanup.for.body22_crit_edge, %for.body22.lr.ph
  %i.1163 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc63, %cleanup.for.body22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %first_key) #8
  %66 = call ptr @memset(ptr %first_key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i136) #8
  %67 = call ptr @memset(ptr %disk_key.i136, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef nonnull %c, ptr noundef nonnull %disk_key.i136, i32 noundef %i.1163) #8
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %65, align 1
  %70 = call i64 @llvm.bswap.i64(i64 %69) #8
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %70, ptr %63, align 1
  %72 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %64, align 8
  %74 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %62, align 8
  %75 = ptrtoint ptr %disk_key.i136 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %disk_key.i136, align 8
  %77 = call i64 @llvm.bswap.i64(i64 %76) #8
  %78 = ptrtoint ptr %first_key to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %first_key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i136) #8
  %mul.i139 = mul i32 %i.1163, 33
  %add.i140 = add i32 %mul.i139, 101
  %79 = inttoptr i32 %add.i140 to ptr
  %call.i.i141 = call i64 @btrfs_get_64(ptr noundef nonnull %c, ptr noundef %79, i32 noundef 17) #8
  %80 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pages.i, align 4
  %call.i143 = call ptr @page_address(ptr noundef %81) #8
  %82 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %c, align 8
  %conv.i144 = trunc i64 %83 to i32
  %and.i145 = and i32 %conv.i144, 4095
  %add.ptr.i146 = getelementptr i8, ptr %call.i143, i32 %and.i145
  %owner.i147 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i146, i32 0, i32 6
  %84 = ptrtoint ptr %owner.i147 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %owner.i147, align 1
  %86 = call i64 @llvm.bswap.i64(i64 %85) #8
  %call.i.i150 = call i64 @btrfs_get_64(ptr noundef nonnull %c, ptr noundef %79, i32 noundef 25) #8
  %call27 = call ptr @read_tree_block(ptr noundef %1, i64 noundef %call.i.i141, i64 noundef %86, i64 noundef %call.i.i150, i32 noundef %sub26, ptr noundef nonnull %first_key) #8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body22.cleanup_crit_edge, label %if.else

for.body22.cleanup_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %for.body22
  %bflags.i = getelementptr inbounds %struct.extent_buffer, ptr %call27, i32 0, i32 2
  %87 = ptrtoint ptr %bflags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %bflags.i, align 4
  %and1.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool31.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool31.not, label %if.else.cleanup.sink.split_crit_edge, label %if.end34

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.else
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %call27, i32 0, i32 12
  %89 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pages.i.i, align 4
  %call.i.i151 = call ptr @page_address(ptr noundef %90) #8
  %91 = ptrtoint ptr %call27 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %call27, align 8
  %conv.i.i = trunc i64 %92 to i32
  %and.i.i152 = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i151, i32 %and.i.i152
  %level.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 8
  %93 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp.i153 = icmp ne i8 %94, 0
  %or.cond = select i1 %cmp.i153, i1 true, i1 %cmp37.not
  br i1 %or.cond, label %if.end46, label %do.body40

do.body40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/print-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 403, 0\0A.popsection", ""() #8, !srcloc !174
  unreachable

if.end46:                                         ; preds = %if.end34
  %95 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pages.i.i, align 4
  %call.i155 = call ptr @page_address(ptr noundef %96) #8
  %97 = ptrtoint ptr %call27 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %call27, align 8
  %conv.i156 = trunc i64 %98 to i32
  %and.i157 = and i32 %conv.i156, 4095
  %add.ptr.i158 = getelementptr i8, ptr %call.i155, i32 %and.i157
  %level.i159 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i158, i32 0, i32 8
  %99 = ptrtoint ptr %level.i159 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %level.i159, align 1
  %conv48 = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub26, i32 %conv48)
  %cmp50.not = icmp eq i32 %sub26, %conv48
  br i1 %cmp50.not, label %if.end59, label %do.body53

do.body53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/print-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !175
  unreachable

if.end59:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void @btrfs_print_tree(ptr noundef %call27, i1 noundef zeroext true)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end59, %if.else.cleanup.sink.split_crit_edge
  call void @free_extent_buffer(ptr noundef %call27) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body22.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %first_key) #8
  %inc63 = add nuw i32 %i.1163, 1
  %exitcond166.not = icmp eq i32 %inc63, %umax165
  br i1 %exitcond166.not, label %cleanup.cleanup65_crit_edge, label %cleanup.for.body22_crit_edge

cleanup.for.body22_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

cleanup.cleanup65_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

cleanup65:                                        ; preds = %cleanup.cleanup65_crit_edge, %for.end.cleanup65_crit_edge, %if.end5.cleanup65_crit_edge, %if.then4, %entry.cleanup65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_tree_block(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_node_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/print-tree.c", i32 35, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/print-tree.c", i32 44, i32 41}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/print-tree.c", i32 220, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/print-tree.c", i32 228, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @btrfs_print_leaf._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @btrfs_print_leaf._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/print-tree.c", i32 234, i32 4}
!14 = !{ptr @btrfs_print_leaf._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @btrfs_print_leaf._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/print-tree.c", i32 242, i32 4}
!18 = !{ptr @btrfs_print_leaf._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @btrfs_print_leaf._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/print-tree.c", i32 248, i32 4}
!22 = !{ptr @btrfs_print_leaf._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @btrfs_print_leaf._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/print-tree.c", i32 257, i32 4}
!26 = !{ptr @btrfs_print_leaf._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @btrfs_print_leaf._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/print-tree.c", i32 260, i32 4}
!30 = !{ptr @btrfs_print_leaf._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @btrfs_print_leaf._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/print-tree.c", i32 270, i32 4}
!34 = !{ptr @btrfs_print_leaf._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @btrfs_print_leaf._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/print-tree.c", i32 278, i32 5}
!38 = !{ptr @btrfs_print_leaf._entry.24, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @btrfs_print_leaf._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/print-tree.c", i32 282, i32 4}
!42 = !{ptr @btrfs_print_leaf._entry.27, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @btrfs_print_leaf._entry_ptr.29, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/print-tree.c", i32 285, i32 4}
!46 = !{ptr @btrfs_print_leaf._entry.30, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @btrfs_print_leaf._entry_ptr.32, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/btrfs/print-tree.c", i32 297, i32 4}
!50 = !{ptr @btrfs_print_leaf._entry.33, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @btrfs_print_leaf._entry_ptr.35, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.37, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/print-tree.c", i32 314, i32 4}
!54 = !{ptr @btrfs_print_leaf._entry.36, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @btrfs_print_leaf._entry_ptr.38, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/print-tree.c", i32 321, i32 4}
!58 = !{ptr @btrfs_print_leaf._entry.39, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @btrfs_print_leaf._entry_ptr.41, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.43, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/btrfs/print-tree.c", i32 325, i32 5}
!62 = !{ptr @btrfs_print_leaf._entry.42, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @btrfs_print_leaf._entry_ptr.44, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.46, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/btrfs/print-tree.c", i32 328, i32 5}
!66 = !{ptr @btrfs_print_leaf._entry.45, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @btrfs_print_leaf._entry_ptr.47, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.49, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/btrfs/print-tree.c", i32 332, i32 4}
!70 = !{ptr @btrfs_print_leaf._entry.48, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @btrfs_print_leaf._entry_ptr.50, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.52, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/btrfs/print-tree.c", i32 336, i32 5}
!74 = !{ptr @btrfs_print_leaf._entry.51, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @btrfs_print_leaf._entry_ptr.53, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.55, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/btrfs/print-tree.c", i32 339, i32 5}
!78 = !{ptr @btrfs_print_leaf._entry.54, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @btrfs_print_leaf._entry_ptr.56, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.58, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/btrfs/print-tree.c", i32 343, i32 4}
!82 = !{ptr @btrfs_print_leaf._entry.57, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @btrfs_print_leaf._entry_ptr.59, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.60, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/btrfs/print-tree.c", i32 370, i32 2}
!86 = !{ptr @.str.61, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/print-tree.c", i32 378, i32 3}
!88 = !{ptr @.str.62, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @btrfs_print_tree._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @btrfs_print_tree._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @root_map, !92, !"root_map", i1 false, i1 false}
!92 = !{!"../fs/btrfs/print-tree.c", i32 15, i32 35}
!93 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/btrfs/print-tree.c", i32 193, i32 2}
!95 = !{ptr @__func__.print_extent_item, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/btrfs/print-tree.c", i32 95, i32 3}
!97 = !{ptr @.str.64, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/btrfs/print-tree.c", i32 101, i32 2}
!99 = !{ptr @print_extent_item._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @print_extent_item._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/btrfs/print-tree.c", i32 110, i32 3}
!103 = !{ptr @print_extent_item._entry.65, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @print_extent_item._entry_ptr.67, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/btrfs/print-tree.c", i32 125, i32 3}
!107 = !{ptr @print_extent_item._entry.68, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @print_extent_item._entry_ptr.70, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.72, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/btrfs/print-tree.c", i32 128, i32 4}
!111 = !{ptr @print_extent_item._entry.71, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @print_extent_item._entry_ptr.73, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.75, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/btrfs/print-tree.c", i32 131, i32 4}
!115 = !{ptr @print_extent_item._entry.74, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @print_extent_item._entry_ptr.76, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.78, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/btrfs/print-tree.c", i32 137, i32 5}
!119 = !{ptr @print_extent_item._entry.77, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @print_extent_item._entry_ptr.79, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.81, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/btrfs/print-tree.c", i32 147, i32 4}
!123 = !{ptr @print_extent_item._entry.80, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @print_extent_item._entry_ptr.82, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @print_extent_item._entry.83, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../fs/btrfs/print-tree.c", i32 154, i32 5}
!127 = !{ptr @print_extent_item._entry_ptr.84, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.86, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/btrfs/print-tree.c", i32 159, i32 4}
!130 = !{ptr @print_extent_item._entry.85, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @print_extent_item._entry_ptr.87, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.88, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/btrfs/print-tree.c", i32 72, i32 2}
!134 = !{ptr @.str.89, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @print_extent_data_ref._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @print_extent_data_ref._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.90, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/btrfs/ctree.h", i32 3562, i32 2}
!139 = !{ptr @.str.91, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/btrfs/print-tree.c", i32 52, i32 2}
!141 = !{ptr @.str.92, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @print_chunk._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @print_chunk._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.94, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/btrfs/print-tree.c", i32 56, i32 3}
!146 = !{ptr @print_chunk._entry.93, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @print_chunk._entry_ptr.95, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.96, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/btrfs/print-tree.c", i32 64, i32 2}
!150 = !{ptr @.str.97, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @print_dev_item._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @print_dev_item._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.98, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/btrfs/print-tree.c", i32 172, i32 3}
!155 = !{ptr @.str.99, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @print_uuid_item._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @print_uuid_item._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.101, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/btrfs/print-tree.c", i32 180, i32 3}
!160 = !{ptr @print_uuid_item._entry.100, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @print_uuid_item._entry_ptr.102, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{!"auto-init"}
!174 = !{i64 2158293876, i64 2158294362, i64 2158293913, i64 2158293969, i64 2158294003, i64 2158294027, i64 2158294068, i64 2158294089, i64 2158294117, i64 2158294151}
!175 = !{i64 2158295360, i64 2158295846, i64 2158295397, i64 2158295453, i64 2158295487, i64 2158295511, i64 2158295552, i64 2158295573, i64 2158295601, i64 2158295635}
