; ModuleID = '/llk/IR_all_yes/fs/jffs2/gc.c_pt.bc'
source_filename = "../fs/jffs2/gc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.jffs2_unknown_node = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jffs2_raw_dirent = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [2 x i8], %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%union.jffs2_device_node = type { %struct.jint32_t }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.80 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.82 = type { ptr }
%struct.jffs2_full_dnode = type { ptr, i32, i32, i32 }
%struct.jffs2_node_frag = type { %struct.rb_node, ptr, i32, i32 }
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
%struct.jffs2_full_dirent = type { %union.anon.75, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.75 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }

@jffs2_garbage_collect_pass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\012jffs2: Checked all inodes but still 0x%x bytes of unchecked space?\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jffs2_garbage_collect_pass\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/jffs2/gc.c\00", [18 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pass._entry_ptr = internal global ptr @jffs2_garbage_collect_pass._entry, section ".printk_index", align 4
@jffs2_garbage_collect_pass._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014jffs2: Inode #%u is in state %d during CRC check phase!\0A\00", [37 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pass._entry_ptr.5 = internal global ptr @jffs2_garbage_collect_pass._entry.3, section ".printk_index", align 4
@jffs2_garbage_collect_pass._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014jffs2: Returned error for crccheck of ino #%u. Expect badness...\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pass._entry_ptr.8 = internal global ptr @jffs2_garbage_collect_pass._entry.6, section ".printk_index", align 4
@jffs2_garbage_collect_pass._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014jffs2: eep. End of raw list while still supposedly nodes to GC\0A\00", [62 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pass._entry_ptr.11 = internal global ptr @jffs2_garbage_collect_pass._entry.9, section ".printk_index", align 4
@jffs2_garbage_collect_pass._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014jffs2: erase block at 0x%08x. free_size 0x%08x, dirty_size 0x%08x, used_size 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pass._entry_ptr.14 = internal global ptr @jffs2_garbage_collect_pass._entry.12, section ".printk_index", align 4
@jffs2_garbage_collect_pass._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\012jffs2: Inode #%u already in state %d in jffs2_garbage_collect_pass()!\0A\00", [55 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pass._entry_ptr.17 = internal global ptr @jffs2_garbage_collect_pass._entry.15, section ".printk_index", align 4
@jffs2_garbage_collect_pass._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013jffs2: Error garbage collecting node at %08x!\0A\00", [47 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pass._entry_ptr.21 = internal global ptr @jffs2_garbage_collect_pass._entry.19, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@jffs2_find_gc_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014jffs2: Eep. ret->gc_node for block at 0x%08x is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jffs2_find_gc_block\00", [44 x i8] zeroinitializer }, align 32
@jffs2_find_gc_block._entry_ptr = internal global ptr @jffs2_find_gc_block._entry, section ".printk_index", align 4
@jffs2_garbage_collect_live._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014jffs2: Raw node at 0x%08x wasn't in node lists for ino #%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jffs2_garbage_collect_live\00", [37 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_live._entry_ptr = internal global ptr @jffs2_garbage_collect_live._entry, section ".printk_index", align 4
@jffs2_garbage_collect_live._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014jffs2: But it's obsolete so we don't mind too much\0A\00", [42 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_live._entry_ptr.28 = internal global ptr @jffs2_garbage_collect_live._entry.26, section ".printk_index", align 4
@jffs2_garbage_collect_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014jffs2: kmalloc of mdata failed in jffs2_garbage_collect_metadata()\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"jffs2_garbage_collect_metadata\00", [33 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_metadata._entry_ptr = internal global ptr @jffs2_garbage_collect_metadata._entry, section ".printk_index", align 4
@jffs2_garbage_collect_metadata._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014jffs2: read of old metadata failed in jffs2_garbage_collect_metadata(): %d\0A\00", [50 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_metadata._entry_ptr.33 = internal global ptr @jffs2_garbage_collect_metadata._entry.31, section ".printk_index", align 4
@jffs2_garbage_collect_metadata._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014jffs2: jffs2_reserve_space_gc of %zd bytes for garbage_collect_metadata failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_metadata._entry_ptr.36 = internal global ptr @jffs2_garbage_collect_metadata._entry.34, section ".printk_index", align 4
@jffs2_garbage_collect_metadata._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014jffs2: Error writing new dnode: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_metadata._entry_ptr.39 = internal global ptr @jffs2_garbage_collect_metadata._entry.37, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\014jffs2: Node read failed in jffs2_garbage_collect_hole. Ret %d, retlen %zd. Data will be lost by writing new hole node\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jffs2_garbage_collect_hole\00", [37 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr = internal global ptr @jffs2_garbage_collect_hole._entry, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014jffs2: %s(): Node at 0x%08x had node type 0x%04x instead of JFFS2_NODETYPE_INODE(0x%04x)\0A\00", [36 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.44 = internal global ptr @jffs2_garbage_collect_hole._entry.42, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014jffs2: %s(): Node at 0x%08x had totlen 0x%x instead of expected 0x%zx\0A\00", [55 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.47 = internal global ptr @jffs2_garbage_collect_hole._entry.45, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014jffs2: %s: Node at 0x%08x had CRC 0x%08x which doesn't match calculated CRC 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.50 = internal global ptr @jffs2_garbage_collect_hole._entry.48, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014jffs2: Data in the range 0x%08x to 0x%08x of inode #%u will be lost\0A\00", [57 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.53 = internal global ptr @jffs2_garbage_collect_hole._entry.51, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014jffs2: %s(): Node 0x%08x wasn't a hole node!\0A\00", [48 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.56 = internal global ptr @jffs2_garbage_collect_hole._entry.54, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.58 = internal global ptr @jffs2_garbage_collect_hole._entry.57, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.41, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014jffs2: jffs2_reserve_space_gc of %zd bytes for garbage_collect_hole failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.61 = internal global ptr @jffs2_garbage_collect_hole._entry.59, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.41, ptr @.str.2, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014jffs2: Error writing new hole node: %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.64 = internal global ptr @jffs2_garbage_collect_hole._entry.62, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.41, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014jffs2: %s(): Old node still has frags!\0A\00", [54 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.67 = internal global ptr @jffs2_garbage_collect_hole._entry.65, section ".printk_index", align 4
@jffs2_garbage_collect_hole._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.41, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014jffs2: %s(): New node has no frags!\0A\00", [57 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_hole._entry_ptr.70 = internal global ptr @jffs2_garbage_collect_hole._entry.68, section ".printk_index", align 4
@jffs2_garbage_collect_dnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014jffs2: read_cache_page() returned error: %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"jffs2_garbage_collect_dnode\00", [36 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_dnode._entry_ptr = internal global ptr @jffs2_garbage_collect_dnode._entry, section ".printk_index", align 4
@jffs2_garbage_collect_dnode._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014jffs2: jffs2_reserve_space_gc of %zd bytes for garbage_collect_dnode failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_dnode._entry_ptr.75 = internal global ptr @jffs2_garbage_collect_dnode._entry.73, section ".printk_index", align 4
@jffs2_garbage_collect_dnode._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.72, ptr @.str.2, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_dnode._entry_ptr.77 = internal global ptr @jffs2_garbage_collect_dnode._entry.76, section ".printk_index", align 4
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@jffs2_garbage_collect_dirent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014jffs2: jffs2_reserve_space_gc of %zd bytes for garbage_collect_dirent failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jffs2_garbage_collect_dirent\00", [35 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_dirent._entry_ptr = internal global ptr @jffs2_garbage_collect_dirent._entry, section ".printk_index", align 4
@jffs2_garbage_collect_dirent._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014jffs2: jffs2_write_dirent in garbage_collect_dirent failed: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_dirent._entry_ptr.84 = internal global ptr @jffs2_garbage_collect_dirent._entry.82, section ".printk_index", align 4
@jffs2_garbage_collect_deletion_dirent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014jffs2: %s(): Read error (%d) reading obsolete node at %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"jffs2_garbage_collect_deletion_dirent\00", [58 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_deletion_dirent._entry_ptr = internal global ptr @jffs2_garbage_collect_deletion_dirent._entry, section ".printk_index", align 4
@jffs2_garbage_collect_deletion_dirent._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014jffs2: %s(): Short read (%zd not %u) reading header from obsolete node at %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_deletion_dirent._entry_ptr.89 = internal global ptr @jffs2_garbage_collect_deletion_dirent._entry.87, section ".printk_index", align 4
@jffs2_garbage_collect_deletion_dirent._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014jffs2: Deletion dirent \22%s\22 not found in list for ino #%u\0A\00", [35 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_deletion_dirent._entry_ptr.92 = internal global ptr @jffs2_garbage_collect_deletion_dirent._entry.90, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014jffs2: Header CRC failed on REF_PRISTINE node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"jffs2_garbage_collect_pristine\00", [33 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr = internal global ptr @jffs2_garbage_collect_pristine._entry, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014jffs2: Node CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.97 = internal global ptr @jffs2_garbage_collect_pristine._entry.95, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014jffs2: Data CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.100 = internal global ptr @jffs2_garbage_collect_pristine._entry.98, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014jffs2: Node CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.103 = internal global ptr @jffs2_garbage_collect_pristine._entry.101, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.94, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014jffs2: Name in dirent node at 0x%08x contains zeroes\0A\00", [40 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.106 = internal global ptr @jffs2_garbage_collect_pristine._entry.104, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.94, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014jffs2: Name CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.109 = internal global ptr @jffs2_garbage_collect_pristine._entry.107, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.94, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014jffs2: Unknown node type for REF_PRISTINE node at 0x%08x: 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.112 = internal global ptr @jffs2_garbage_collect_pristine._entry.110, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.94, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015jffs2: Write of %d bytes at 0x%08x failed. returned %d, retlen %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.115 = internal global ptr @jffs2_garbage_collect_pristine._entry.113, section ".printk_index", align 4
@jffs2_garbage_collect_pristine._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.94, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\015jffs2: Not marking the space at 0x%08x as dirty because the flash driver returned retlen zero\0A\00", [63 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_pristine._entry_ptr.118 = internal global ptr @jffs2_garbage_collect_pristine._entry.116, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.119 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 16, i64 57345, i64 57346]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 16, i64 8192, i64 24576, i64 40960]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967219]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 179, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 206, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 239, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 298, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 299, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 391, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 471, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 102, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 576, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 579, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 781, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 786, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 799, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 837, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1035, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1040, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1046, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1053, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1057, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1062, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1064, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1104, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1111, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1150, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1154, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1332, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1351, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1389, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 44, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 717, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 880, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 887, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 948, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 954, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1005, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 636, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 645, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 654, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 665, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 672, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 680, i32 5 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 690, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 703, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.405 = private constant [17 x i8] c"../fs/jffs2/gc.c\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 708, i32 4 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @jffs2_find_gc_block._entry, ptr @jffs2_find_gc_block._entry_ptr, ptr @jffs2_garbage_collect_deletion_dirent._entry, ptr @jffs2_garbage_collect_deletion_dirent._entry.87, ptr @jffs2_garbage_collect_deletion_dirent._entry.90, ptr @jffs2_garbage_collect_deletion_dirent._entry_ptr, ptr @jffs2_garbage_collect_deletion_dirent._entry_ptr.89, ptr @jffs2_garbage_collect_deletion_dirent._entry_ptr.92, ptr @jffs2_garbage_collect_dirent._entry, ptr @jffs2_garbage_collect_dirent._entry.82, ptr @jffs2_garbage_collect_dirent._entry_ptr, ptr @jffs2_garbage_collect_dirent._entry_ptr.84, ptr @jffs2_garbage_collect_dnode._entry, ptr @jffs2_garbage_collect_dnode._entry.73, ptr @jffs2_garbage_collect_dnode._entry.76, ptr @jffs2_garbage_collect_dnode._entry_ptr, ptr @jffs2_garbage_collect_dnode._entry_ptr.75, ptr @jffs2_garbage_collect_dnode._entry_ptr.77, ptr @jffs2_garbage_collect_hole._entry, ptr @jffs2_garbage_collect_hole._entry.42, ptr @jffs2_garbage_collect_hole._entry.45, ptr @jffs2_garbage_collect_hole._entry.48, ptr @jffs2_garbage_collect_hole._entry.51, ptr @jffs2_garbage_collect_hole._entry.54, ptr @jffs2_garbage_collect_hole._entry.57, ptr @jffs2_garbage_collect_hole._entry.59, ptr @jffs2_garbage_collect_hole._entry.62, ptr @jffs2_garbage_collect_hole._entry.65, ptr @jffs2_garbage_collect_hole._entry.68, ptr @jffs2_garbage_collect_hole._entry_ptr, ptr @jffs2_garbage_collect_hole._entry_ptr.44, ptr @jffs2_garbage_collect_hole._entry_ptr.47, ptr @jffs2_garbage_collect_hole._entry_ptr.50, ptr @jffs2_garbage_collect_hole._entry_ptr.53, ptr @jffs2_garbage_collect_hole._entry_ptr.56, ptr @jffs2_garbage_collect_hole._entry_ptr.58, ptr @jffs2_garbage_collect_hole._entry_ptr.61, ptr @jffs2_garbage_collect_hole._entry_ptr.64, ptr @jffs2_garbage_collect_hole._entry_ptr.67, ptr @jffs2_garbage_collect_hole._entry_ptr.70, ptr @jffs2_garbage_collect_live._entry, ptr @jffs2_garbage_collect_live._entry.26, ptr @jffs2_garbage_collect_live._entry_ptr, ptr @jffs2_garbage_collect_live._entry_ptr.28, ptr @jffs2_garbage_collect_metadata._entry, ptr @jffs2_garbage_collect_metadata._entry.31, ptr @jffs2_garbage_collect_metadata._entry.34, ptr @jffs2_garbage_collect_metadata._entry.37, ptr @jffs2_garbage_collect_metadata._entry_ptr, ptr @jffs2_garbage_collect_metadata._entry_ptr.33, ptr @jffs2_garbage_collect_metadata._entry_ptr.36, ptr @jffs2_garbage_collect_metadata._entry_ptr.39, ptr @jffs2_garbage_collect_pass._entry, ptr @jffs2_garbage_collect_pass._entry.12, ptr @jffs2_garbage_collect_pass._entry.15, ptr @jffs2_garbage_collect_pass._entry.19, ptr @jffs2_garbage_collect_pass._entry.3, ptr @jffs2_garbage_collect_pass._entry.6, ptr @jffs2_garbage_collect_pass._entry.9, ptr @jffs2_garbage_collect_pass._entry_ptr, ptr @jffs2_garbage_collect_pass._entry_ptr.11, ptr @jffs2_garbage_collect_pass._entry_ptr.14, ptr @jffs2_garbage_collect_pass._entry_ptr.17, ptr @jffs2_garbage_collect_pass._entry_ptr.21, ptr @jffs2_garbage_collect_pass._entry_ptr.5, ptr @jffs2_garbage_collect_pass._entry_ptr.8, ptr @jffs2_garbage_collect_pristine._entry, ptr @jffs2_garbage_collect_pristine._entry.101, ptr @jffs2_garbage_collect_pristine._entry.104, ptr @jffs2_garbage_collect_pristine._entry.107, ptr @jffs2_garbage_collect_pristine._entry.110, ptr @jffs2_garbage_collect_pristine._entry.113, ptr @jffs2_garbage_collect_pristine._entry.116, ptr @jffs2_garbage_collect_pristine._entry.95, ptr @jffs2_garbage_collect_pristine._entry.98, ptr @jffs2_garbage_collect_pristine._entry_ptr, ptr @jffs2_garbage_collect_pristine._entry_ptr.100, ptr @jffs2_garbage_collect_pristine._entry_ptr.103, ptr @jffs2_garbage_collect_pristine._entry_ptr.106, ptr @jffs2_garbage_collect_pristine._entry_ptr.109, ptr @jffs2_garbage_collect_pristine._entry_ptr.112, ptr @jffs2_garbage_collect_pristine._entry_ptr.115, ptr @jffs2_garbage_collect_pristine._entry_ptr.118, ptr @jffs2_garbage_collect_pristine._entry_ptr.97, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pass._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pass._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pass._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pass._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pass._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pass._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_find_gc_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_live._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_live._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_metadata._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_metadata._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_metadata._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_hole._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_dnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_dnode._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_dnode._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_dirent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_dirent._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_deletion_dirent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_deletion_dirent._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_deletion_dirent._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_pristine._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_garbage_collect_pass(ptr noundef %c) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  %__wait340 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 7
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %alloc_sem, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup505_crit_edge

entry.cleanup505_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup505

for.cond.preheader:                               ; preds = %entry
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %0 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unchecked_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not766 = icmp eq i32 %1, 0
  br i1 %tobool1.not766, label %for.cond.preheader.for.end177_crit_edge, label %if.end3.lr.ph

for.cond.preheader.for.end177_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end177

if.end3.lr.ph:                                    ; preds = %for.cond.preheader
  %inocache_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 48
  %check_ino = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 2
  %inocache_hashsize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 46
  %inocache_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 47
  br label %if.end3

if.end3:                                          ; preds = %cleanup.if.end3_crit_edge, %if.end3.lr.ph
  %xattr.0767 = phi i32 [ 0, %if.end3.lr.ph ], [ %xattr.1, %cleanup.if.end3_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xattr.0767)
  %tobool5.not = icmp eq i32 %xattr.0767, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @jffs2_verify_xattr(ptr noundef %c) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge
  %xattr.1 = phi i32 [ %xattr.0767, %if.end3.if.end8_crit_edge ], [ %call7, %if.then6 ]
  tail call void @_raw_spin_lock(ptr noundef %inocache_lock) #11
  %2 = ptrtoint ptr %check_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %check_ino, align 4
  %4 = ptrtoint ptr %inocache_hashsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inocache_hashsize, align 4
  %rem = urem i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %5)
  %cmp751 = icmp slt i32 %rem, %5
  br i1 %cmp751, label %for.body.lr.ph, label %if.end8.for.end27_crit_edge

if.end8.for.end27_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.body.lr.ph:                                   ; preds = %if.end8
  %6 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inocache_list, align 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %bucket.0753 = phi i32 [ %rem, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %want_ino.0752 = phi i32 [ %3, %for.body.lr.ph ], [ 0, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %7, i32 %bucket.0753
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %ic.0747 = load ptr, ptr %arrayidx, align 4
  %tobool13.not748 = icmp eq ptr %ic.0747, null
  br i1 %tobool13.not748, label %for.body.for.end_crit_edge, label %for.body.for.body14_crit_edge

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %ic.0749 = phi ptr [ %ic.0, %for.inc.for.body14_crit_edge ], [ %ic.0747, %for.body.for.body14_crit_edge ]
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 5
  %9 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %want_ino.0752)
  %cmp15 = icmp ult i32 %10, %want_ino.0752
  br i1 %cmp15, label %for.body14.for.inc_crit_edge, label %if.end17

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17:                                         ; preds = %for.body14
  %state = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %state, align 2
  %13 = and i16 %12, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %switch = icmp eq i16 %13, 2
  br i1 %switch, label %if.end17.for.inc_crit_edge, label %got_next

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %for.body14.for.inc_crit_edge
  %next = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 6
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %ic.0 = load ptr, ptr %next, align 4
  %tobool13.not = icmp eq ptr %ic.0, null
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nsw i32 %bucket.0753, 1
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end27_crit_edge

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end27:                                        ; preds = %for.end.for.end27_crit_edge, %if.end8.for.end27_crit_edge
  %highest_ino = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 1
  %15 = ptrtoint ptr %highest_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %highest_ino, align 4
  %add = add i32 %5, 1
  %add29 = add i32 %add, %16
  %neg = xor i32 %5, -1
  %and = and i32 %add29, %neg
  %sub = add i32 %and, -1
  %17 = ptrtoint ptr %check_ino to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %check_ino, align 4
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #11
  %18 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unchecked_size, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %19) #14
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  br label %cleanup505

got_next:                                         ; preds = %if.end17
  %add41 = add i32 %10, %5
  %20 = ptrtoint ptr %check_ino to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add41, ptr %check_ino, align 4
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 8
  %21 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pino_nlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not = icmp eq i32 %22, 0
  br i1 %tobool43.not, label %do.end47, label %if.end49

do.end47:                                         ; preds = %got_next
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #11
  tail call void @jffs2_xattr_delete_inode(ptr noundef %c, ptr noundef nonnull %ic.0749) #11
  br label %cleanup

if.end49:                                         ; preds = %got_next
  %state.le = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 4
  %23 = ptrtoint ptr %state.le to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %state.le, align 2
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i16 %24, label %do.body153 [
    i16 3, label %if.end49.sw.bb_crit_edge
    i16 2, label %if.end49.sw.bb_crit_edge906
    i16 4, label %if.end49.do.end56_crit_edge
    i16 1, label %if.end49.do.end56_crit_edge907
    i16 5, label %do.end72
    i16 0, label %sw.epilog
  ]

if.end49.do.end56_crit_edge907:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

if.end49.do.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

if.end49.sw.bb_crit_edge906:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end49.sw.bb_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end49.sw.bb_crit_edge, %if.end49.sw.bb_crit_edge906
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #11
  br label %cleanup

do.end56:                                         ; preds = %if.end49.do.end56_crit_edge, %if.end49.do.end56_crit_edge907
  %ino.le.le = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 5
  %26 = ptrtoint ptr %ino.le.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ino.le.le, align 4
  %conv60 = zext i16 %24 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %27, i32 noundef %conv60) #14
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #11, !srcloc !194
  unreachable

do.end72:                                         ; preds = %if.end49
  %ino.le.le829 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 5
  %28 = ptrtoint ptr %ino.le.le829 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ino.le.le829, align 4
  %30 = ptrtoint ptr %check_ino to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %check_ino, align 4
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #11
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %33 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %__wait, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %31, align 4
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @default_wake_function, ptr %32, align 4
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %33, align 4
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %34, align 4
  %inocache_wq = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 45
  call void @add_wait_queue(ptr noundef %inocache_wq, ptr noundef nonnull %__wait) #11
  br label %__here

__here:                                           ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 212
  %46 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 ptrtoint (ptr blockaddress(@jffs2_garbage_collect_pass, %__here) to i32), ptr %task_state_change, align 4
  %47 = load ptr, ptr %task, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 2, ptr %47, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !195
  call void @_raw_spin_unlock(ptr noundef %inocache_lock) #11
  call void @schedule() #11
  call void @remove_wait_queue(ptr noundef %inocache_wq, ptr noundef nonnull %__wait) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #11
  br label %cleanup505

do.body153:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #11, !srcloc !196
  unreachable

sw.epilog:                                        ; preds = %if.end49
  %state.le.le = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 4
  %49 = ptrtoint ptr %state.le.le to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %state.le.le, align 2
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #11
  %call165 = tail call i32 @jffs2_do_crccheck_inode(ptr noundef %c, ptr noundef nonnull %ic.0749) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %sw.epilog.if.end174_crit_edge, label %do.end170

sw.epilog.if.end174_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

do.end170:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %ino.le.le831 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0749, i32 0, i32 5
  %50 = ptrtoint ptr %ino.le.le831 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ino.le.le831, align 4
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %51) #14
  br label %if.end174

if.end174:                                        ; preds = %do.end170, %sw.epilog.if.end174_crit_edge
  tail call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef nonnull %ic.0749, i32 noundef 3) #11
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  br label %cleanup505

cleanup:                                          ; preds = %sw.bb, %do.end47
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  %52 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %unchecked_size, align 4
  %tobool1.not = icmp eq i32 %53, 0
  br i1 %tobool1.not, label %cleanup.for.end177_crit_edge, label %cleanup.if.end3_crit_edge

cleanup.if.end3_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

cleanup.for.end177_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end177

for.end177:                                       ; preds = %cleanup.for.end177_crit_edge, %for.cond.preheader.for.end177_crit_edge
  %erase_complete_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 39
  %54 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %erase_complete_list, align 4
  %cmp.i.not = icmp eq ptr %55, %erase_complete_list
  br i1 %cmp.i.not, label %lor.lhs.false, label %for.end177.if.then182_crit_edge

for.end177.if.then182_crit_edge:                  ; preds = %for.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then182

lor.lhs.false:                                    ; preds = %for.end177
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %56 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %erase_pending_list, align 4
  %cmp.i672.not = icmp eq ptr %57, %erase_pending_list
  br i1 %cmp.i672.not, label %lor.lhs.false.if.end197_crit_edge, label %lor.lhs.false.if.then182_crit_edge

lor.lhs.false.if.then182_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then182

lor.lhs.false.if.end197_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197

if.then182:                                       ; preds = %lor.lhs.false.if.then182_crit_edge, %for.end177.if.then182_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  %call188 = tail call i32 @jffs2_erase_pending_blocks(ptr noundef %c, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %do.end194, label %if.then182.cleanup505_crit_edge

if.then182.cleanup505_crit_edge:                  ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup505

do.end194:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #11
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  br label %if.end197

if.end197:                                        ; preds = %do.end194, %lor.lhs.false.if.end197_crit_edge
  %gcblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %58 = ptrtoint ptr %gcblock to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gcblock, align 4
  %tobool198.not = icmp eq ptr %59, null
  br i1 %tobool198.not, label %if.then199, label %if.end197.do.end217_crit_edge

if.end197.do.end217_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end217

if.then199:                                       ; preds = %if.end197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %rem.i = and i32 %60, 127
  %bad_used_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 42
  %nr_free_blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %resv_blocks_gcbad.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %rem.i)
  %cmp3.i = icmp ult i32 %rem.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %rem.i)
  %cmp14.i = icmp ult i32 %rem.i, 110
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %rem.i)
  %cmp25.i = icmp ult i32 %rem.i, 126
  %erasable_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34
  %very_dirty_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32
  %dirty_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33
  %clean_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31
  %erasable_pending_wbuf_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 35
  br label %again.i

again.i:                                          ; preds = %do.end76.i, %if.then199
  %61 = ptrtoint ptr %bad_used_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %bad_used_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %62, %bad_used_list.i
  br i1 %cmp.i.not.i, label %again.i.if.else.i_crit_edge, label %land.lhs.true.i

again.i.if.else.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %again.i
  %63 = ptrtoint ptr %nr_free_blocks.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_free_blocks.i, align 4
  %65 = ptrtoint ptr %resv_blocks_gcbad.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %resv_blocks_gcbad.i, align 1
  %conv.i674 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv.i674)
  %cmp.i675 = icmp ugt i32 %64, %conv.i674
  br i1 %cmp.i675, label %if.end89.ithread-pre-split, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %again.i.if.else.i_crit_edge
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.else13.i

land.lhs.true5.i:                                 ; preds = %if.else.i
  %67 = ptrtoint ptr %erasable_list.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %erasable_list.i, align 4
  %cmp.i158.not.i = icmp eq ptr %68, %erasable_list.i
  br i1 %cmp.i158.not.i, label %land.lhs.true5.i.land.lhs.true16.i_crit_edge, label %land.lhs.true5.i.if.end89.i_crit_edge

land.lhs.true5.i.if.end89.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

land.lhs.true5.i.land.lhs.true16.i_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true16.i

if.else13.i:                                      ; preds = %if.else.i
  br i1 %cmp14.i, label %if.else13.i.land.lhs.true16.i_crit_edge, label %if.else24.i

if.else13.i.land.lhs.true16.i_crit_edge:          ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true16.i

land.lhs.true16.i:                                ; preds = %if.else13.i.land.lhs.true16.i_crit_edge, %land.lhs.true5.i.land.lhs.true16.i_crit_edge
  %69 = ptrtoint ptr %very_dirty_list.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %very_dirty_list.i, align 4
  %cmp.i160.not.i = icmp eq ptr %70, %very_dirty_list.i
  br i1 %cmp.i160.not.i, label %land.lhs.true16.i.land.lhs.true27.i_crit_edge, label %land.lhs.true16.i.if.end89.i_crit_edge

land.lhs.true16.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

land.lhs.true16.i.land.lhs.true27.i_crit_edge:    ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27.i

if.else24.i:                                      ; preds = %if.else13.i
  br i1 %cmp25.i, label %if.else24.i.land.lhs.true27.i_crit_edge, label %if.else24.i.if.else35.i_crit_edge

if.else24.i.if.else35.i_crit_edge:                ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else35.i

if.else24.i.land.lhs.true27.i_crit_edge:          ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27.i

land.lhs.true27.i:                                ; preds = %if.else24.i.land.lhs.true27.i_crit_edge, %land.lhs.true16.i.land.lhs.true27.i_crit_edge
  %71 = ptrtoint ptr %dirty_list.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %dirty_list.i, align 4
  %cmp.i162.not.i = icmp eq ptr %72, %dirty_list.i
  br i1 %cmp.i162.not.i, label %land.lhs.true27.i.if.else35.i_crit_edge, label %land.lhs.true27.i.if.end89.i_crit_edge

land.lhs.true27.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

land.lhs.true27.i.if.else35.i_crit_edge:          ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else35.i

if.else35.i:                                      ; preds = %land.lhs.true27.i.if.else35.i_crit_edge, %if.else24.i.if.else35.i_crit_edge
  %73 = ptrtoint ptr %clean_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %clean_list.i, align 4
  %cmp.i164.not.i = icmp eq ptr %74, %clean_list.i
  br i1 %cmp.i164.not.i, label %if.else43.i, label %if.else35.i.if.end89.i_crit_edge

if.else35.i.if.end89.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.else43.i:                                      ; preds = %if.else35.i
  %75 = ptrtoint ptr %dirty_list.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %dirty_list.i, align 4
  %cmp.i166.not.i = icmp eq ptr %76, %dirty_list.i
  br i1 %cmp.i166.not.i, label %if.else52.i, label %if.else43.i.if.end89.i_crit_edge

if.else43.i.if.end89.i_crit_edge:                 ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.else52.i:                                      ; preds = %if.else43.i
  %77 = ptrtoint ptr %very_dirty_list.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %very_dirty_list.i, align 4
  %cmp.i168.not.i = icmp eq ptr %78, %very_dirty_list.i
  br i1 %cmp.i168.not.i, label %if.else61.i, label %if.else52.i.if.end89.i_crit_edge

if.else52.i.if.end89.i_crit_edge:                 ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.else61.i:                                      ; preds = %if.else52.i
  %79 = ptrtoint ptr %erasable_list.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %erasable_list.i, align 4
  %cmp.i170.not.i = icmp eq ptr %80, %erasable_list.i
  br i1 %cmp.i170.not.i, label %if.else70.i, label %if.else61.i.if.end89.i_crit_edge

if.else61.i.if.end89.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.else70.i:                                      ; preds = %if.else61.i
  %81 = ptrtoint ptr %erasable_pending_wbuf_list.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %erasable_pending_wbuf_list.i, align 4
  %cmp.i172.not.i = icmp eq ptr %82, %erasable_pending_wbuf_list.i
  br i1 %cmp.i172.not.i, label %if.else70.i.if.then203_crit_edge, label %do.end76.i

if.else70.i.if.then203_crit_edge:                 ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then203

do.end76.i:                                       ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  %call77.i = tail call i32 @jffs2_flush_wbuf_pad(ptr noundef %c) #11
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  br label %again.i

if.end89.ithread-pre-split:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %bad_used_list.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr796 = load ptr, ptr %bad_used_list.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end89.ithread-pre-split, %if.else61.i.if.end89.i_crit_edge, %if.else52.i.if.end89.i_crit_edge, %if.else43.i.if.end89.i_crit_edge, %if.else35.i.if.end89.i_crit_edge, %land.lhs.true27.i.if.end89.i_crit_edge, %land.lhs.true16.i.if.end89.i_crit_edge, %land.lhs.true5.i.if.end89.i_crit_edge
  %84 = phi ptr [ %.pr796, %if.end89.ithread-pre-split ], [ %68, %land.lhs.true5.i.if.end89.i_crit_edge ], [ %70, %land.lhs.true16.i.if.end89.i_crit_edge ], [ %72, %land.lhs.true27.i.if.end89.i_crit_edge ], [ %74, %if.else35.i.if.end89.i_crit_edge ], [ %76, %if.else43.i.if.end89.i_crit_edge ], [ %78, %if.else52.i.if.end89.i_crit_edge ], [ %80, %if.else61.i.if.end89.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %84) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end89.i.list_del.exit.i_crit_edge

if.end89.i.list_del.exit.i_crit_edge:             ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end89.i.list_del.exit.i_crit_edge
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %gcblock to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %84, ptr %gcblock, align 4
  %first_node.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %84, i32 0, i32 9
  %94 = ptrtoint ptr %first_node.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %first_node.i, align 4
  %gc_node.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %84, i32 0, i32 11
  %96 = ptrtoint ptr %gc_node.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %gc_node.i, align 4
  %tobool91.not.i = icmp eq ptr %95, null
  br i1 %tobool91.not.i, label %do.end95.i, label %if.end104.i

do.end95.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %offset.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %84, i32 0, i32 2
  %97 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offset.i, align 4
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %98) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #11, !srcloc !197
  unreachable

if.end104.i:                                      ; preds = %list_del.exit.i
  %wasted_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %84, i32 0, i32 6
  %99 = ptrtoint ptr %wasted_size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wasted_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool105.not.i = icmp eq i32 %100, 0
  br i1 %tobool105.not.i, label %if.end104.i.if.end201_crit_edge, label %do.end109.i

if.end104.i.if.end201_crit_edge:                  ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

do.end109.i:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  %dirty_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %84, i32 0, i32 5
  %101 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dirty_size.i, align 4
  %add.i = add i32 %102, %100
  store i32 %add.i, ptr %dirty_size.i, align 4
  %wasted_size112.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %103 = ptrtoint ptr %wasted_size112.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %wasted_size112.i, align 4
  %sub.i = sub i32 %104, %100
  store i32 %sub.i, ptr %wasted_size112.i, align 4
  %105 = ptrtoint ptr %wasted_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %wasted_size.i, align 4
  %dirty_size114.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %107 = ptrtoint ptr %dirty_size114.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dirty_size114.i, align 4
  %add115.i = add i32 %108, %106
  store i32 %add115.i, ptr %dirty_size114.i, align 4
  store i32 0, ptr %wasted_size.i, align 4
  br label %if.end201

if.end201:                                        ; preds = %do.end109.i, %if.end104.i.if.end201_crit_edge
  %tobool202.not = icmp eq ptr %84, null
  br i1 %tobool202.not, label %if.end201.if.then203_crit_edge, label %if.end201.do.end217_crit_edge

if.end201.do.end217_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end217

if.end201.if.then203_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then203

if.then203:                                       ; preds = %if.end201.if.then203_crit_edge, %if.else70.i.if.then203_crit_edge
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %109 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_erasing_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool204.not = icmp eq i32 %110, 0
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  %. = select i1 %tobool204.not, i32 -5, i32 -11
  br label %cleanup505

do.end217:                                        ; preds = %if.end201.do.end217_crit_edge, %if.end197.do.end217_crit_edge
  %jeb.0696 = phi ptr [ %84, %if.end201.do.end217_crit_edge ], [ %59, %if.end197.do.end217_crit_edge ]
  %used_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0696, i32 0, i32 4
  %111 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %used_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool218.not = icmp eq i32 %112, 0
  br i1 %tobool218.not, label %if.then219, label %if.end221

if.then219:                                       ; preds = %do.end217
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  br label %eraseit

if.end221:                                        ; preds = %do.end217
  %gc_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0696, i32 0, i32 11
  %113 = ptrtoint ptr %gc_node to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %gc_node, align 4
  %dirty_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0696, i32 0, i32 5
  %115 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dirty_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end2.i.while.cond_crit_edge, %if.end221
  %raw.0 = phi ptr [ %114, %if.end221 ], [ %ref.addr.0.i, %if.end2.i.while.cond_crit_edge ]
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0, i32 0, i32 1
  %117 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flash_offset, align 4
  %and222 = and i32 %118, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and222)
  %cmp223 = icmp eq i32 %and222, 1
  br i1 %cmp223, label %do.end227, label %while.end

do.end227:                                        ; preds = %while.cond
  %incdec.ptr.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.0, i32 1
  %flash_offset.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.0, i32 1, i32 1
  %119 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flash_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %120)
  %cmp.i676 = icmp eq i32 %120, -1
  br i1 %cmp.i676, label %if.then.i, label %do.end227.if.end2.i_crit_edge

do.end227.if.end2.i_crit_edge:                    ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i:                                        ; preds = %do.end227
  %121 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %122, null
  br i1 %tobool.not.i, label %if.then.i.do.end241_crit_edge, label %if.then.i.if.end2.i_crit_edge

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i.do.end241_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end241

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %do.end227.if.end2.i_crit_edge
  %ref.addr.0.i = phi ptr [ %122, %if.then.i.if.end2.i_crit_edge ], [ %incdec.ptr.i, %do.end227.if.end2.i_crit_edge ]
  %flash_offset3.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i, i32 0, i32 1
  %123 = ptrtoint ptr %flash_offset3.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flash_offset3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %124)
  %cmp4.i = icmp eq i32 %124, -2
  %tobool229.not = icmp eq ptr %ref.addr.0.i, null
  %or.cond = select i1 %cmp4.i, i1 true, i1 %tobool229.not
  br i1 %or.cond, label %if.end2.i.do.end241_crit_edge, label %if.end2.i.while.cond_crit_edge, !prof !198

if.end2.i.while.cond_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end2.i.do.end241_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end241

do.end241:                                        ; preds = %if.end2.i.do.end241_crit_edge, %if.then.i.do.end241_crit_edge
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0696, i32 0, i32 2
  %125 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %offset, align 4
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb.0696, i32 0, i32 7
  %127 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %free_size, align 4
  %129 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dirty_size, align 4
  %131 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %used_size, align 4
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %126, i32 noundef %128, i32 noundef %130, i32 noundef %132) #14
  %133 = ptrtoint ptr %gc_node to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %gc_node, align 4
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

while.end:                                        ; preds = %while.cond
  %flash_offset.le = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0, i32 0, i32 1
  %134 = ptrtoint ptr %gc_node to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %raw.0, ptr %gc_node, align 4
  %135 = ptrtoint ptr %raw.0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %raw.0, align 4
  %tobool265.not = icmp eq ptr %136, null
  br i1 %tobool265.not, label %if.then266, label %while.end.while.cond.ithread-pre-split_crit_edge

while.end.while.cond.ithread-pre-split_crit_edge: ; preds = %while.end
  br label %while.cond.ithread-pre-split

if.then266:                                       ; preds = %while.end
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  %137 = ptrtoint ptr %flash_offset.le to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flash_offset.le, align 4
  %and269 = and i32 %138, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and269)
  %cmp270 = icmp eq i32 %and269, 2
  br i1 %cmp270, label %if.then272, label %if.else

if.then272:                                       ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #13
  %call273 = tail call fastcc i32 @jffs2_garbage_collect_pristine(ptr noundef %c, ptr noundef null, ptr noundef %raw.0)
  br label %eraseit_lock

if.else:                                          ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %raw.0) #11
  br label %eraseit_lock

while.cond.ithread-pre-split:                     ; preds = %while.cond.ithread-pre-split.while.cond.ithread-pre-split_crit_edge, %while.end.while.cond.ithread-pre-split_crit_edge
  %139 = phi ptr [ %.pr, %while.cond.ithread-pre-split.while.cond.ithread-pre-split_crit_edge ], [ %136, %while.end.while.cond.ithread-pre-split_crit_edge ]
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pr = load ptr, ptr %139, align 4
  %tobool.not.i678 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i678, label %jffs2_raw_ref_to_ic.exit, label %while.cond.ithread-pre-split.while.cond.ithread-pre-split_crit_edge

while.cond.ithread-pre-split.while.cond.ithread-pre-split_crit_edge: ; preds = %while.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.ithread-pre-split

jffs2_raw_ref_to_ic.exit:                         ; preds = %while.cond.ithread-pre-split
  %class = getelementptr inbounds %struct.jffs2_inode_cache, ptr %139, i32 0, i32 2
  %141 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %class, align 4
  %.off670 = add i8 %142, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off670)
  %switch671 = icmp ult i8 %.off670, 2
  br i1 %switch671, label %if.then286, label %if.end297

if.then286:                                       ; preds = %jffs2_raw_ref_to_ic.exit
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  %143 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %144)
  %cmp290 = icmp eq i8 %144, 1
  br i1 %cmp290, label %if.then292, label %if.else294

if.then292:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  %call293 = tail call i32 @jffs2_garbage_collect_xattr_datum(ptr noundef %c, ptr noundef nonnull %139, ptr noundef %raw.0) #11
  br label %test_gcnode

if.else294:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  %call295 = tail call i32 @jffs2_garbage_collect_xattr_ref(ptr noundef %c, ptr noundef nonnull %139, ptr noundef %raw.0) #11
  br label %test_gcnode

if.end297:                                        ; preds = %jffs2_raw_ref_to_ic.exit
  %inocache_lock298 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %inocache_lock298) #11
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  %state303 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %139, i32 0, i32 4
  %145 = ptrtoint ptr %state303 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %state303, align 2
  %147 = zext i16 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %146, label %if.end297.if.end451_crit_edge [
    i16 3, label %sw.bb305
    i16 5, label %sw.bb334
    i16 0, label %if.end297.do.end320_crit_edge
    i16 1, label %if.end297.do.end320_crit_edge908
    i16 4, label %if.end297.do.end320_crit_edge909
  ]

if.end297.do.end320_crit_edge909:                 ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end320

if.end297.do.end320_crit_edge908:                 ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end320

if.end297.do.end320_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end320

if.end297.if.end451_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end451

sw.bb305:                                         ; preds = %if.end297
  %148 = ptrtoint ptr %flash_offset.le to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flash_offset.le, align 4
  %and307 = and i32 %149, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and307)
  %cmp308 = icmp eq i32 %and307, 2
  br i1 %cmp308, label %sw.epilog435.thread, label %sw.bb305.if.end451_crit_edge

sw.bb305.if.end451_crit_edge:                     ; preds = %sw.bb305
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end451

sw.epilog435.thread:                              ; preds = %sw.bb305
  %150 = ptrtoint ptr %state303 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 4, ptr %state303, align 2
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock298) #11
  %call442 = tail call fastcc i32 @jffs2_garbage_collect_pristine(ptr noundef %c, ptr noundef nonnull %139, ptr noundef %raw.0)
  tail call void @_raw_spin_lock(ptr noundef %inocache_lock298) #11
  %151 = ptrtoint ptr %state303 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 3, ptr %state303, align 2
  %inocache_wq445 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 45
  tail call void @__wake_up(ptr noundef %inocache_wq445, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -77, i32 %call442)
  %cmp446.not = icmp eq i32 %call442, -77
  br i1 %cmp446.not, label %sw.epilog435.thread.if.end451_crit_edge, label %if.then448

sw.epilog435.thread.if.end451_crit_edge:          ; preds = %sw.epilog435.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end451

do.end320:                                        ; preds = %if.end297.do.end320_crit_edge, %if.end297.do.end320_crit_edge908, %if.end297.do.end320_crit_edge909
  %ino322 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %139, i32 0, i32 5
  %152 = ptrtoint ptr %ino322 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ino322, align 4
  %conv324 = zext i16 %146 to i32
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %153, i32 noundef %conv324) #14
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock298) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 395, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

sw.bb334:                                         ; preds = %if.end297
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait340) #11
  %154 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait340, i32 0, i32 1
  %155 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait340, i32 0, i32 2
  %156 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait340, i32 0, i32 3
  %157 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait340, i32 0, i32 3, i32 1
  %158 = ptrtoint ptr %__wait340 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %__wait340, align 4
  %159 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i679 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i679 to ptr
  %task344 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %task344 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %task344, align 8
  %163 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %154, align 4
  %164 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @default_wake_function, ptr %155, align 4
  %165 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %156, align 4
  %166 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %157, align 4
  %inocache_wq349 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 45
  call void @add_wait_queue(ptr noundef %inocache_wq349, ptr noundef nonnull %__wait340) #11
  br label %__here401

__here401:                                        ; preds = %sw.bb334
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %task344 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task344, align 8
  %task_state_change405 = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 212
  %169 = ptrtoint ptr %task_state_change405 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 ptrtoint (ptr blockaddress(@jffs2_garbage_collect_pass, %__here401) to i32), ptr %task_state_change405, align 4
  %170 = load ptr, ptr %task344, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile i32 2, ptr %170, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  call void @_raw_spin_unlock(ptr noundef %inocache_lock298) #11
  call void @schedule() #11
  call void @remove_wait_queue(ptr noundef %inocache_wq349, ptr noundef nonnull %__wait340) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait340) #11
  br label %cleanup505

if.then448:                                       ; preds = %sw.epilog435.thread
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock298) #11
  br label %test_gcnode

if.end451:                                        ; preds = %sw.epilog435.thread.if.end451_crit_edge, %sw.bb305.if.end451_crit_edge, %if.end297.if.end451_crit_edge
  %ino452 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %139, i32 0, i32 5
  %172 = ptrtoint ptr %ino452 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %ino452, align 4
  %pino_nlink453 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %139, i32 0, i32 8
  %174 = ptrtoint ptr %pino_nlink453 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pino_nlink453, align 4
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock298) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool455.not = icmp eq i32 %175, 0
  %lnot.ext457 = zext i1 %tobool455.not to i32
  %call458 = tail call ptr @jffs2_gc_fetch_inode(ptr noundef %c, i32 noundef %173, i32 noundef %lnot.ext457) #11
  %cmp.i680 = icmp ugt ptr %call458, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i680, label %if.then460, label %if.end462

if.then460:                                       ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %call458 to i32
  br label %eraseit_lock

if.end462:                                        ; preds = %if.end451
  %tobool463.not = icmp eq ptr %call458, null
  br i1 %tobool463.not, label %if.end462.eraseit_lock_crit_edge, label %if.end465

if.end462.eraseit_lock_crit_edge:                 ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #13
  br label %eraseit_lock

if.end465:                                        ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #13
  %call466 = tail call fastcc i32 @jffs2_garbage_collect_live(ptr noundef %c, ptr noundef nonnull %jeb.0696, ptr noundef %raw.0, ptr noundef nonnull %call458)
  tail call void @jffs2_gc_release_inode(ptr noundef %c, ptr noundef nonnull %call458) #11
  br label %test_gcnode

test_gcnode:                                      ; preds = %if.end465, %if.then448, %if.else294, %if.then292
  %ret.2 = phi i32 [ %call293, %if.then292 ], [ %call295, %if.else294 ], [ %call442, %if.then448 ], [ %call466, %if.end465 ]
  %177 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %dirty_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %116)
  %cmp468 = icmp eq i32 %178, %116
  br i1 %cmp468, label %land.lhs.true470, label %test_gcnode.eraseit_lock_crit_edge

test_gcnode.eraseit_lock_crit_edge:               ; preds = %test_gcnode
  call void @__sanitizer_cov_trace_pc() #13
  br label %eraseit_lock

land.lhs.true470:                                 ; preds = %test_gcnode
  %179 = ptrtoint ptr %gc_node to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %gc_node, align 4
  %flash_offset472 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %flash_offset472 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flash_offset472, align 4
  %and473 = and i32 %182, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and473)
  %cmp474 = icmp eq i32 %and473, 1
  br i1 %cmp474, label %land.lhs.true470.eraseit_lock_crit_edge, label %do.end479

land.lhs.true470.eraseit_lock_crit_edge:          ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #13
  br label %eraseit_lock

do.end479:                                        ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #13
  %and483 = and i32 %182, -4
  %call484 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and483) #14
  br label %eraseit_lock

eraseit_lock:                                     ; preds = %do.end479, %land.lhs.true470.eraseit_lock_crit_edge, %test_gcnode.eraseit_lock_crit_edge, %if.end462.eraseit_lock_crit_edge, %if.then460, %if.else, %if.then272
  %ret.4 = phi i32 [ 0, %if.else ], [ 0, %if.then272 ], [ %ret.2, %land.lhs.true470.eraseit_lock_crit_edge ], [ -28, %do.end479 ], [ %ret.2, %test_gcnode.eraseit_lock_crit_edge ], [ %176, %if.then460 ], [ 0, %if.end462.eraseit_lock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #11
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  br label %eraseit

eraseit:                                          ; preds = %eraseit_lock, %if.then219
  %ret.5 = phi i32 [ %ret.4, %eraseit_lock ], [ 0, %if.then219 ]
  %183 = ptrtoint ptr %gcblock to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %gcblock, align 4
  %tobool489.not = icmp eq ptr %184, null
  br i1 %tobool489.not, label %eraseit.if.end503_crit_edge, label %land.lhs.true490

eraseit.if.end503_crit_edge:                      ; preds = %eraseit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end503

land.lhs.true490:                                 ; preds = %eraseit
  %used_size492 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %used_size492 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %used_size492, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool493.not = icmp eq i32 %186, 0
  br i1 %tobool493.not, label %do.end497, label %land.lhs.true490.if.end503_crit_edge

land.lhs.true490.if.end503_crit_edge:             ; preds = %land.lhs.true490
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end503

do.end497:                                        ; preds = %land.lhs.true490
  %erase_pending_list499 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %prev.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38, i32 1
  %187 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %184, ptr noundef %188, ptr noundef %erase_pending_list499) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end497.list_add_tail.exit_crit_edge

do.end497.list_add_tail.exit_crit_edge:           ; preds = %do.end497
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end497
  call void @__sanitizer_cov_trace_pc() #13
  %189 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %184, ptr %prev.i, align 4
  %190 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %erase_pending_list499, ptr %184, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %184, i32 0, i32 1
  %191 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev3.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %184, ptr %188, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end497.list_add_tail.exit_crit_edge
  %193 = ptrtoint ptr %gcblock to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %gcblock, align 4
  %nr_erasing_blocks501 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %194 = ptrtoint ptr %nr_erasing_blocks501 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %nr_erasing_blocks501, align 4
  %inc502 = add i32 %195, 1
  store i32 %inc502, ptr %nr_erasing_blocks501, align 4
  tail call void @jffs2_garbage_collect_trigger(ptr noundef %c) #11
  br label %if.end503

if.end503:                                        ; preds = %list_add_tail.exit, %land.lhs.true490.if.end503_crit_edge, %eraseit.if.end503_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  br label %cleanup505

cleanup505:                                       ; preds = %if.end503, %__here401, %if.then203, %if.then182.cleanup505_crit_edge, %if.end174, %__here, %for.end27, %entry.cleanup505_crit_edge
  %retval.2 = phi i32 [ %ret.5, %if.end503 ], [ 0, %__here401 ], [ -4, %entry.cleanup505_crit_edge ], [ 0, %if.then182.cleanup505_crit_edge ], [ -28, %for.end27 ], [ 0, %__here ], [ %call165, %if.end174 ], [ %., %if.then203 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_verify_xattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_xattr_delete_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_crccheck_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_set_inocache_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_erase_pending_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_garbage_collect_pristine(ptr noundef %c, ptr noundef %ic, ptr noundef %raw) unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  %alloclen = alloca i32, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #11
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #11
  %gcblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %1 = ptrtoint ptr %gcblock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gcblock, align 4
  %call = tail call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %2, ptr noundef %raw) #11
  %tobool.not = icmp eq ptr %ic, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 197, i32 %call)
  %cmp = icmp ult i32 %call, 197
  %3 = or i1 %tobool.not, %cmp
  %spec.store.select287 = select i1 %3, i32 %call, i32 196
  %4 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.store.select287, ptr %alloclen, align 4
  %call1 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %spec.store.select287, ptr noundef nonnull %alloclen, i32 noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup188_crit_edge

entry.cleanup188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup188

if.end4:                                          ; preds = %entry
  %5 = ptrtoint ptr %alloclen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alloclen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call)
  %cmp5 = icmp ult i32 %6, %call
  br i1 %cmp5, label %if.end4.cleanup188_crit_edge, label %if.end8.i

if.end4.cleanup188_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup188

if.end8.i:                                        ; preds = %if.end4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call, i32 noundef 3264) #15
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end8.i.cleanup188_crit_edge, label %if.end11

if.end8.i.cleanup188_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup188

if.end11:                                         ; preds = %if.end8.i
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw, i32 0, i32 1
  %7 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flash_offset, align 4
  %and = and i32 %8, -4
  %conv = zext i32 %and to i64
  %call12 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv, i32 noundef %call, ptr noundef nonnull %retlen, ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.end11.out_node_crit_edge

if.end11.out_node_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_node

land.lhs.true14:                                  ; preds = %if.end11
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call)
  %cmp15.not = icmp eq i32 %10, %call
  br i1 %cmp15.not, label %if.end21, label %land.lhs.true14.out_node_crit_edge

land.lhs.true14.out_node_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_node

if.end21:                                         ; preds = %land.lhs.true14
  %call22 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i, i32 noundef 8) #16
  %hdr_crc = getelementptr inbounds %struct.jffs2_unknown_node, ptr %call9.i, i32 0, i32 3
  %11 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr_crc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call22)
  %cmp23.not = icmp eq i32 %12, %call22
  br i1 %cmp23.not, label %if.end34, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flash_offset, align 4
  %and30 = and i32 %14, -4
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %and30, i32 noundef %12, i32 noundef %call22) #14
  br label %out_node

if.end34:                                         ; preds = %if.end21
  %nodetype = getelementptr inbounds %struct.jffs2_unknown_node, ptr %call9.i, i32 0, i32 1
  %15 = ptrtoint ptr %nodetype to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nodetype, align 2
  %conv35 = zext i16 %16 to i32
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %16, label %sw.default [
    i16 -8190, label %sw.bb
    i16 -8191, label %sw.bb71
  ]

sw.bb:                                            ; preds = %if.end34
  %call36 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i, i32 noundef 60) #16
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i, i32 0, i32 20
  %18 = ptrtoint ptr %node_crc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node_crc, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call36)
  %cmp38.not = icmp eq i32 %19, %call36
  br i1 %cmp38.not, label %if.end50, label %do.end43

do.end43:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flash_offset, align 4
  %and46 = and i32 %21, -4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %and46, i32 noundef %19, i32 noundef %call36) #14
  br label %out_node

if.end50:                                         ; preds = %sw.bb
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i, i32 0, i32 15
  %22 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool52.not = icmp eq i32 %23, 0
  br i1 %tobool52.not, label %if.end50.sw.epilog_crit_edge, label %if.then53

if.end50.sw.epilog_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then53:                                        ; preds = %if.end50
  %data = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i, i32 0, i32 21
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i, i32 0, i32 14
  %24 = ptrtoint ptr %csize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %csize, align 16
  %call55 = call i32 @crc32_le(i32 noundef 0, ptr noundef %data, i32 noundef %25) #16
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i, i32 0, i32 19
  %26 = ptrtoint ptr %data_crc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_crc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %call55)
  %cmp57.not = icmp eq i32 %27, %call55
  br i1 %cmp57.not, label %if.then53.sw.epilog_crit_edge, label %do.end62

if.then53.sw.epilog_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end62:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flash_offset, align 4
  %and65 = and i32 %29, -4
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %and65, i32 noundef %27, i32 noundef %call55) #14
  br label %out_node

sw.bb71:                                          ; preds = %if.end34
  %call72 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i, i32 noundef 32) #16
  %node_crc73 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 11
  %30 = ptrtoint ptr %node_crc73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node_crc73, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %call72)
  %cmp75.not = icmp eq i32 %31, %call72
  br i1 %cmp75.not, label %if.end87, label %do.end80

do.end80:                                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flash_offset, align 4
  %and83 = and i32 %33, -4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %and83, i32 noundef %31, i32 noundef %call72) #14
  br label %out_node

if.end87:                                         ; preds = %sw.bb71
  %name = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 13
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 8
  %34 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nsize, align 4
  %conv89 = zext i8 %35 to i32
  %call90 = call i32 @strnlen(ptr noundef %name, i32 noundef %conv89) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call90, i32 %conv89)
  %cmp93.not = icmp eq i32 %call90, %conv89
  br i1 %cmp93.not, label %if.end103, label %do.end98

do.end98:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flash_offset, align 4
  %and101 = and i32 %37, -4
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %and101) #14
  br label %out_node

if.end103:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool105.not = icmp eq i8 %35, 0
  br i1 %tobool105.not, label %if.end103.sw.epilog_crit_edge, label %if.then106

if.end103.sw.epilog_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then106:                                       ; preds = %if.end103
  %call111 = call i32 @crc32_le(i32 noundef 0, ptr noundef %name, i32 noundef %conv89) #16
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 12
  %38 = ptrtoint ptr %name_crc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %name_crc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %call111)
  %cmp113.not = icmp eq i32 %39, %call111
  br i1 %cmp113.not, label %if.then106.sw.epilog_crit_edge, label %do.end118

if.then106.sw.epilog_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end118:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flash_offset, align 4
  %and121 = and i32 %41, -4
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %and121, i32 noundef %39, i32 noundef %call111) #14
  br label %out_node

sw.default:                                       ; preds = %if.end34
  br i1 %tobool.not, label %sw.default.sw.epilog_crit_edge, label %do.end131

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end131:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flash_offset, align 4
  %and134 = and i32 %43, -4
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %and134, i32 noundef %conv35) #14
  br label %out_node

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.then106.sw.epilog_crit_edge, %if.end103.sw.epilog_crit_edge, %if.then53.sw.epilog_crit_edge, %if.end50.sw.epilog_crit_edge
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %44 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nextblock, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset, align 4
  %48 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sector_size, align 4
  %add = add i32 %49, %47
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %45, i32 0, i32 7
  %50 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %free_size, align 4
  %sub = sub i32 %add, %51
  %conv141 = zext i32 %sub to i64
  %call142 = call i32 @jffs2_flash_write(ptr noundef %c, i64 noundef %conv141, i32 noundef %call, ptr noundef nonnull %retlen, ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %lor.lhs.false, label %sw.epilog.do.end149_crit_edge

sw.epilog.do.end149_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149

lor.lhs.false:                                    ; preds = %sw.epilog
  %52 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %call)
  %cmp144.not = icmp eq i32 %53, %call
  br i1 %cmp144.not, label %lor.lhs.false.if.end182_crit_edge, label %lor.lhs.false.do.end149_crit_edge

lor.lhs.false.do.end149_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149

lor.lhs.false.if.end182_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

do.end149:                                        ; preds = %lor.lhs.false.do.end149_crit_edge, %sw.epilog.do.end149_crit_edge
  %54 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %retlen, align 4
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %call, i32 noundef %sub, i32 noundef %call142, i32 noundef %55) #14
  %56 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool152.not = icmp eq i32 %57, 0
  br i1 %tobool152.not, label %do.end157, label %if.then153

if.then153:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %sub, 1
  %call154 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or, i32 noundef %call, ptr noundef null) #11
  br label %if.end160

do.end157:                                        ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #13
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %sub) #14
  br label %if.end160

if.end160:                                        ; preds = %do.end157, %if.then153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #11
  %58 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %dummy, align 4, !annotation !202
  %59 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %blocks, align 4
  %61 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %sub, %62
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %60, i32 %div
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef %arrayidx) #11
  %call167 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %call, ptr noundef nonnull %dummy, i32 noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #11
  br label %if.end178

cleanup:                                          ; preds = %if.end160
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef %arrayidx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #11
  %63 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nextblock, align 4
  %offset.1 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %offset.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.1, align 4
  %67 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sector_size, align 4
  %add.1 = add i32 %68, %66
  %free_size.1 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %64, i32 0, i32 7
  %69 = ptrtoint ptr %free_size.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %free_size.1, align 4
  %sub.1 = sub i32 %add.1, %70
  %conv141.1 = zext i32 %sub.1 to i64
  %call142.1 = call i32 @jffs2_flash_write(ptr noundef %c, i64 noundef %conv141.1, i32 noundef %call, ptr noundef nonnull %retlen, ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.1)
  %tobool143.not.1 = icmp eq i32 %call142.1, 0
  br i1 %tobool143.not.1, label %lor.lhs.false.1, label %cleanup.do.end149.1_crit_edge

cleanup.do.end149.1_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149.1

lor.lhs.false.1:                                  ; preds = %cleanup
  %71 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %call)
  %cmp144.not.1 = icmp eq i32 %72, %call
  br i1 %cmp144.not.1, label %lor.lhs.false.1.if.end182_crit_edge, label %lor.lhs.false.1.do.end149.1_crit_edge

lor.lhs.false.1.do.end149.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149.1

lor.lhs.false.1.if.end182_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

do.end149.1:                                      ; preds = %lor.lhs.false.1.do.end149.1_crit_edge, %cleanup.do.end149.1_crit_edge
  %73 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %retlen, align 4
  %call151.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %call, i32 noundef %sub.1, i32 noundef %call142.1, i32 noundef %74) #14
  %75 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool152.not.1 = icmp eq i32 %76, 0
  br i1 %tobool152.not.1, label %do.end157.1, label %if.then153.1

if.then153.1:                                     ; preds = %do.end149.1
  call void @__sanitizer_cov_trace_pc() #13
  %or.1 = or i32 %sub.1, 1
  %call154.1 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or.1, i32 noundef %call, ptr noundef null) #11
  br label %if.end178

do.end157.1:                                      ; preds = %do.end149.1
  call void @__sanitizer_cov_trace_pc() #13
  %call159.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %sub.1) #14
  br label %if.end178

if.end178:                                        ; preds = %do.end157.1, %if.then153.1, %cleanup.thread
  %ret.1 = phi i32 [ %call167, %cleanup.thread ], [ %call142.1, %if.then153.1 ], [ %call142.1, %do.end157.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool179.not = icmp eq i32 %ret.1, 0
  %spec.store.select = select i1 %tobool179.not, i32 -5, i32 %ret.1
  br label %out_node

if.end182:                                        ; preds = %lor.lhs.false.1.if.end182_crit_edge, %lor.lhs.false.if.end182_crit_edge
  %sub.lcssa = phi i32 [ %sub, %lor.lhs.false.if.end182_crit_edge ], [ %sub.1, %lor.lhs.false.1.if.end182_crit_edge ]
  %or183 = or i32 %sub.lcssa, 2
  %call184 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or183, i32 noundef %call, ptr noundef %ic) #11
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %raw) #11
  br label %out_node

out_node:                                         ; preds = %if.end182, %if.end178, %do.end131, %do.end118, %do.end98, %do.end80, %do.end62, %do.end43, %do.end28, %land.lhs.true14.out_node_crit_edge, %if.end11.out_node_crit_edge
  %ret.2 = phi i32 [ %spec.store.select, %if.end178 ], [ 0, %if.end182 ], [ -77, %do.end131 ], [ -77, %do.end118 ], [ -77, %do.end98 ], [ -77, %do.end80 ], [ -77, %do.end62 ], [ -77, %do.end43 ], [ -77, %do.end28 ], [ -5, %land.lhs.true14.out_node_crit_edge ], [ %call12, %if.end11.out_node_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup188

cleanup188:                                       ; preds = %out_node, %if.end8.i.cleanup188_crit_edge, %if.end4.cleanup188_crit_edge, %entry.cleanup188_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_node ], [ %call1, %entry.cleanup188_crit_edge ], [ -77, %if.end4.cleanup188_crit_edge ], [ -12, %if.end8.i.cleanup188_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_garbage_collect_xattr_datum(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_garbage_collect_xattr_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_gc_fetch_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_garbage_collect_live(ptr noundef %c, ptr noundef %jeb, ptr noundef %raw, ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  %ri.i169 = alloca %struct.jffs2_raw_inode, align 2
  %alloclen.i170 = alloca i32, align 4
  %readlen.i = alloca i32, align 4
  %ri.i = alloca %struct.jffs2_raw_inode, align 2
  %dev.i = alloca %union.jffs2_device_node, align 4
  %alloclen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #11
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  %gcblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %gcblock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gcblock, align 4
  %cmp.not = icmp eq ptr %1, %jeb
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  br label %upnout

if.end:                                           ; preds = %entry
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw, i32 0, i32 1
  %2 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_offset, align 4
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp2 = icmp eq i32 %and, 1
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  br i1 %cmp2, label %if.end.upnout_crit_edge, label %if.end8

if.end.upnout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %upnout

if.end8:                                          ; preds = %if.end
  %metadata = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %metadata, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end8.if.end15_crit_edge, label %land.lhs.true

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp12 = icmp eq ptr %7, %raw
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ri.i) #11
  %8 = call ptr @memset(ptr %ri.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev.i) #11
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %dev.i, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen.i) #11
  %10 = ptrtoint ptr %alloclen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %alloclen.i, align 4, !annotation !202
  %vfs_inode.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9
  %11 = ptrtoint ptr %vfs_inode.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vfs_inode.i, align 8
  %13 = and i16 %12, -4096
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %13, label %if.then13.if.end36.i_crit_edge [
    i16 24576, label %if.then13.if.then.i_crit_edge
    i16 8192, label %if.then13.if.then.i_crit_edge261
    i16 -24576, label %if.then15.i
  ]

if.then13.if.then.i_crit_edge261:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then13.if.then.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then13.if.end36.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then.i:                                        ; preds = %if.then13.if.then.i_crit_edge, %if.then13.if.then.i_crit_edge261
  %i_rdev.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 13
  %15 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_rdev.i, align 8
  %17 = and i32 %16, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.then.i3.i, label %if.else.i.i

if.then.i3.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = lshr i32 %16, 12
  %shl.i.i.i = and i32 %19, 65280
  %or.i.i.i = or i32 %shl.i.i.i, %16
  %conv.i.i.i = trunc i32 %or.i.i.i to i16
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i.i, ptr %dev.i, align 4
  br label %if.end36.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i.i = and i32 %16, 255
  %21 = lshr i32 %16, 12
  %shl.i7.i.i = and i32 %21, 1048320
  %or.i8.i.i = or i32 %shl.i7.i.i, %and1.i.i.i
  %and2.i.i.i = shl i32 %16, 12
  %shl3.i.i.i = and i32 %and2.i.i.i, -1048576
  %or4.i.i.i = or i32 %or.i8.i.i, %shl3.i.i.i
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or4.i.i.i, ptr %dev.i, align 4
  br label %if.end36.i

if.then15.i:                                      ; preds = %if.then13
  %size.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end21.i, label %if.end.i

do.end21.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %jffs2_garbage_collect_metadata.exit

if.end.i:                                         ; preds = %if.then15.i
  %call23.i = tail call i32 @jffs2_read_dnode(ptr noundef %c, ptr noundef %f, ptr noundef nonnull %5, ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end.i.if.end36.i_crit_edge, label %do.end28.i

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call23.i) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %jffs2_garbage_collect_metadata.exit

if.end36.i:                                       ; preds = %if.end.i.if.end36.i_crit_edge, %if.else.i.i, %if.then.i3.i, %if.then13.if.end36.i_crit_edge
  %mdatalen.0.i = phi i32 [ %24, %if.end.i.if.end36.i_crit_edge ], [ 0, %if.then13.if.end36.i_crit_edge ], [ 2, %if.then.i3.i ], [ 4, %if.else.i.i ]
  %mdata.0.i = phi ptr [ %call9.i.i, %if.end.i.if.end36.i_crit_edge ], [ null, %if.then13.if.end36.i_crit_edge ], [ %dev.i, %if.then.i3.i ], [ %dev.i, %if.else.i.i ]
  %add.i = add i32 %mdatalen.0.i, 68
  %call37.i = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %add.i, ptr noundef nonnull %alloclen.i, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end46.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %add.i, i32 noundef %call37.i) #14
  br label %out.i

if.end46.i:                                       ; preds = %if.end36.i
  %fragtree.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  %call.i.i = call ptr @rb_last(ptr noundef %fragtree.i) #11
  %tobool48.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool48.not.i, label %if.else52.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %ofs.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ofs.i, align 4
  %size50.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %size50.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size50.i, align 4
  %add51.i = add i32 %28, %26
  br label %if.end55.i

if.else52.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_size.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 14
  %29 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size.i, align 8
  %conv54.i = trunc i64 %30 to i32
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else52.i, %if.then49.i
  %ilen.0.i = phi i32 [ %add51.i, %if.then49.i ], [ %conv54.i, %if.else52.i ]
  %31 = getelementptr inbounds i8, ptr %ri.i, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 60)
  %33 = ptrtoint ptr %ri.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 6533, ptr %ri.i, align 2
  %nodetype.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 1
  %34 = ptrtoint ptr %nodetype.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -8190, ptr %nodetype.i, align 2
  %totlen.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 2
  %35 = ptrtoint ptr %totlen.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %add.i, ptr %totlen.i, align 2
  %call62.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri.i, i32 noundef 8) #16
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %call62.i, ptr %31, align 2
  %ino.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 4
  %inocache.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %37 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %inocache.i, align 8
  %ino65.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %ino65.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ino65.i, align 4
  %41 = ptrtoint ptr %ino.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %ino.i, align 2
  %version.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 5
  %highest_version.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %42 = ptrtoint ptr %highest_version.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %highest_version.i, align 4
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr %highest_version.i, align 4
  %44 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %inc.i, ptr %version.i, align 2
  %mode.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 6
  %45 = ptrtoint ptr %vfs_inode.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vfs_inode.i, align 8
  %conv71.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %conv71.i, ptr %mode.i, align 2
  %uid.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 7
  %i_sb.i.i.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 8
  %48 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 53
  %50 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 2
  %52 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %53 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = call i32 @from_kuid(ptr noundef %51, [1 x i32] %53) #11
  %conv76.i = trunc i32 %call1.i.i to i16
  %54 = ptrtoint ptr %uid.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv76.i, ptr %uid.i, align 2
  %gid.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 8
  %55 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i5.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 53
  %57 = ptrtoint ptr %s_user_ns.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_user_ns.i.i5.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 3
  %59 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack.i6.i = load i32, ptr %i_gid.i.i, align 8
  %60 = insertvalue [1 x i32] undef, i32 %.unpack.i6.i, 0
  %call1.i7.i = call i32 @from_kgid(ptr noundef %58, [1 x i32] %60) #11
  %conv81.i = trunc i32 %call1.i7.i to i16
  %61 = ptrtoint ptr %gid.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv81.i, ptr %gid.i, align 2
  %isize.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 9
  %62 = ptrtoint ptr %isize.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %ilen.0.i, ptr %isize.i, align 2
  %atime.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 10
  %i_atime.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 15
  %63 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_atime.i, align 8
  %65 = call i64 @llvm.smax.i64(i64 %64, i64 0) #11
  %66 = call i64 @llvm.umin.i64(i64 %65, i64 4294967295) #11
  %67 = trunc i64 %66 to i32
  %68 = ptrtoint ptr %atime.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %atime.i, align 2
  %ctime.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 12
  %i_ctime.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 17
  %69 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %i_ctime.i, align 8
  %71 = call i64 @llvm.smax.i64(i64 %70, i64 0) #11
  %72 = call i64 @llvm.umin.i64(i64 %71, i64 4294967295) #11
  %73 = trunc i64 %72 to i32
  %74 = ptrtoint ptr %ctime.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %ctime.i, align 2
  %mtime.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 11
  %i_mtime.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 16
  %75 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %i_mtime.i, align 8
  %77 = call i64 @llvm.smax.i64(i64 %76, i64 0) #11
  %78 = call i64 @llvm.umin.i64(i64 %77, i64 4294967295) #11
  %79 = trunc i64 %78 to i32
  %80 = ptrtoint ptr %mtime.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %mtime.i, align 2
  %offset.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 13
  %81 = ptrtoint ptr %offset.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 0, ptr %offset.i, align 2
  %csize.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 14
  %82 = ptrtoint ptr %csize.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %mdatalen.0.i, ptr %csize.i, align 2
  %dsize.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 15
  %83 = ptrtoint ptr %dsize.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %mdatalen.0.i, ptr %dsize.i, align 2
  %compr.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 16
  %84 = ptrtoint ptr %compr.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %compr.i, align 2
  %node_crc.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 20
  %call144.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri.i, i32 noundef 60) #16
  %85 = ptrtoint ptr %node_crc.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %call144.i, ptr %node_crc.i, align 2
  %data_crc.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i, i32 0, i32 19
  %call147.i = call i32 @crc32_le(i32 noundef 0, ptr noundef %mdata.0.i, i32 noundef %mdatalen.0.i) #16
  %86 = ptrtoint ptr %data_crc.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %call147.i, ptr %data_crc.i, align 2
  %call148.i = call ptr @jffs2_write_dnode(ptr noundef %c, ptr noundef %f, ptr noundef nonnull %ri.i, ptr noundef %mdata.0.i, i32 noundef %mdatalen.0.i, i32 noundef 2) #11
  %cmp.i8.i = icmp ugt ptr %call148.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i8.i, label %do.end153.i, label %if.end158.i

do.end153.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %call148.i to i32
  %call156.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %87) #14
  br label %out.i

if.end158.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %5, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %89) #11
  call void @jffs2_free_full_dnode(ptr noundef nonnull %5) #11
  %90 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call148.i, ptr %metadata, align 4
  br label %out.i

out.i:                                            ; preds = %if.end158.i, %do.end153.i, %do.end42.i
  %ret.0.i = phi i32 [ %call37.i, %do.end42.i ], [ %87, %do.end153.i ], [ 0, %if.end158.i ]
  %91 = ptrtoint ptr %vfs_inode.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vfs_inode.i, align 8
  %93 = and i16 %92, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %93)
  %cmp163.i = icmp eq i16 %93, -24576
  br i1 %cmp163.i, label %if.then165.i, label %out.i.jffs2_garbage_collect_metadata.exit_crit_edge

out.i.jffs2_garbage_collect_metadata.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_garbage_collect_metadata.exit

if.then165.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %mdata.0.i) #11
  br label %jffs2_garbage_collect_metadata.exit

jffs2_garbage_collect_metadata.exit:              ; preds = %if.then165.i, %out.i.jffs2_garbage_collect_metadata.exit_crit_edge, %do.end28.i, %do.end21.i
  %retval.0.i = phi i32 [ %call23.i, %do.end28.i ], [ -12, %do.end21.i ], [ %ret.0.i, %if.then165.i ], [ %ret.0.i, %out.i.jffs2_garbage_collect_metadata.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ri.i) #11
  br label %upnout

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %fragtree = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  %call.i = tail call ptr @rb_first(ptr noundef %fragtree) #11
  %tobool17.not229 = icmp eq ptr %call.i, null
  br i1 %tobool17.not229, label %if.end15.if.end58_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.if.end58_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15.for.body_crit_edge
  %frag.0234 = phi ptr [ %call34, %for.inc.for.body_crit_edge ], [ %call.i, %if.end15.for.body_crit_edge ]
  %fn.0233 = phi ptr [ %fn.1, %for.inc.for.body_crit_edge ], [ null, %if.end15.for.body_crit_edge ]
  %start.0232 = phi i32 [ %start.2, %for.inc.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %nrfrags.0231 = phi i32 [ %nrfrags.1, %for.inc.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %end.0230 = phi i32 [ %end.1, %for.inc.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %node = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0234, i32 0, i32 1
  %94 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %node, align 4
  %tobool18.not = icmp eq ptr %95, null
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %land.lhs.true19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true19:                                  ; preds = %for.body
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %cmp22 = icmp eq ptr %97, %raw
  br i1 %cmp22, label %if.then23, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then23:                                        ; preds = %land.lhs.true19
  %ofs = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0234, i32 0, i32 3
  %98 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ofs, align 4
  %size = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0234, i32 0, i32 2
  %100 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size, align 4
  %add = add i32 %101, %99
  %inc = add i32 %nrfrags.0231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrfrags.0231)
  %tobool25.not = icmp eq i32 %nrfrags.0231, 0
  %spec.select = select i1 %tobool25.not, i32 %99, i32 %start.0232
  %frags = getelementptr inbounds %struct.jffs2_full_dnode, ptr %95, i32 0, i32 3
  %102 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %frags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %103)
  %cmp30 = icmp eq i32 %inc, %103
  br i1 %cmp30, label %if.then23.if.then36_crit_edge, label %if.then23.for.inc_crit_edge

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then23.if.then36_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

for.inc:                                          ; preds = %if.then23.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %end.1 = phi i32 [ %add, %if.then23.for.inc_crit_edge ], [ %end.0230, %land.lhs.true19.for.inc_crit_edge ], [ %end.0230, %for.body.for.inc_crit_edge ]
  %nrfrags.1 = phi i32 [ %inc, %if.then23.for.inc_crit_edge ], [ %nrfrags.0231, %land.lhs.true19.for.inc_crit_edge ], [ %nrfrags.0231, %for.body.for.inc_crit_edge ]
  %start.2 = phi i32 [ %spec.select, %if.then23.for.inc_crit_edge ], [ %start.0232, %land.lhs.true19.for.inc_crit_edge ], [ %start.0232, %for.body.for.inc_crit_edge ]
  %fn.1 = phi ptr [ %95, %if.then23.for.inc_crit_edge ], [ %fn.0233, %land.lhs.true19.for.inc_crit_edge ], [ %fn.0233, %for.body.for.inc_crit_edge ]
  %call34 = tail call ptr @rb_next(ptr noundef nonnull %frag.0234) #11
  %tobool17.not = icmp eq ptr %call34, null
  br i1 %tobool17.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool35.not = icmp eq ptr %fn.1, null
  br i1 %tobool35.not, label %for.end.if.end58_crit_edge, label %for.end.if.then36_crit_edge

for.end.if.then36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then36:                                        ; preds = %for.end.if.then36_crit_edge, %if.then23.if.then36_crit_edge
  %frag.0225 = phi ptr [ null, %for.end.if.then36_crit_edge ], [ %frag.0234, %if.then23.if.then36_crit_edge ]
  %fn.2221 = phi ptr [ %fn.1, %for.end.if.then36_crit_edge ], [ %95, %if.then23.if.then36_crit_edge ]
  %start.3220 = phi i32 [ %start.2, %for.end.if.then36_crit_edge ], [ %spec.select, %if.then23.if.then36_crit_edge ]
  %end.2219 = phi i32 [ %end.1, %for.end.if.then36_crit_edge ], [ %add, %if.then23.if.then36_crit_edge ]
  %104 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flash_offset, align 4
  %and38 = and i32 %105, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and38)
  %cmp39 = icmp eq i32 %and38, 2
  br i1 %cmp39, label %if.then40, label %if.then36.if.end51_crit_edge

if.then36.if.end51_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then40:                                        ; preds = %if.then36
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %106 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %inocache, align 8
  %call41 = tail call fastcc i32 @jffs2_garbage_collect_pristine(ptr noundef %c, ptr noundef %107, ptr noundef %raw)
  %108 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %call41, label %if.then40.upnout_crit_edge [
    i32 0, label %if.then43
    i32 -77, label %if.then40.if.end51_crit_edge
  ]

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then40.upnout_crit_edge:                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %upnout

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %inocache, align 8
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %nodes, align 4
  %node45 = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0225, i32 0, i32 1
  %113 = ptrtoint ptr %node45 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %node45, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %114, align 4
  br label %upnout

if.end51:                                         ; preds = %if.then40.if.end51_crit_edge, %if.then36.if.end51_crit_edge
  %shr = lshr i32 %start.3220, 12
  %sub = add i32 %end.2219, -1
  %shr52 = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr52)
  %cmp53 = icmp ult i32 %shr, %shr52
  br i1 %cmp53, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ri.i169) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen.i170) #11
  %116 = ptrtoint ptr %alloclen.i170 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %alloclen.i170, align 4, !annotation !202
  %117 = call ptr @memset(ptr %ri.i169, i32 0, i32 68)
  %frags.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %fn.2221, i32 0, i32 3
  %118 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp.i = icmp ugt i32 %119, 1
  br i1 %cmp.i, label %if.then.i173, label %if.then54.fill.i_crit_edge

if.then54.fill.i_crit_edge:                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill.i

if.then.i173:                                     ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readlen.i) #11
  %120 = ptrtoint ptr %readlen.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %readlen.i, align 4, !annotation !202
  %121 = ptrtoint ptr %fn.2221 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fn.2221, align 4
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flash_offset.i, align 4
  %and.i = and i32 %124, -4
  %conv.i = zext i32 %and.i to i64
  %call.i171 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i, i32 noundef 68, ptr noundef nonnull %readlen.i, ptr noundef nonnull %ri.i169) #11
  %125 = ptrtoint ptr %readlen.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %readlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %126)
  %cmp1.not.i = icmp eq i32 %126, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  %or.cond.i = select i1 %cmp1.not.i, i1 %tobool.not.i172, i1 false
  br i1 %or.cond.i, label %if.end.i175, label %do.end6.i

do.end6.i:                                        ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call.i171, i32 noundef %126) #14
  br label %cleanup.thread.i

if.end.i175:                                      ; preds = %if.then.i173
  %nodetype.i174 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 1
  %127 = ptrtoint ptr %nodetype.i174 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %nodetype.i174, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8190, i16 %128)
  %cmp9.not.i = icmp eq i16 %128, -8190
  br i1 %cmp9.not.i, label %if.end23.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #13
  %conv8.i = zext i16 %128 to i32
  %129 = ptrtoint ptr %fn.2221 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fn.2221, align 4
  %flash_offset17.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %flash_offset17.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flash_offset17.i, align 4
  %and18.i = and i32 %132, -4
  %call22.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %and18.i, i32 noundef %conv8.i, i32 noundef 57346) #14
  br label %cleanup.thread9.i

if.end23.i:                                       ; preds = %if.end.i175
  %totlen.i177 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 2
  %133 = ptrtoint ptr %totlen.i177 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %totlen.i177, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %134)
  %cmp24.not.i = icmp eq i32 %134, 68
  br i1 %cmp24.not.i, label %if.end37.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %fn.2221 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fn.2221, align 4
  %flash_offset32.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flash_offset32.i, align 4
  %and33.i = and i32 %138, -4
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, i32 noundef %and33.i, i32 noundef %134, i32 noundef 68) #14
  br label %cleanup.thread9.i

if.end37.i:                                       ; preds = %if.end23.i
  %call38.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri.i169, i32 noundef 60) #16
  %node_crc.i178 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 20
  %139 = ptrtoint ptr %node_crc.i178 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %node_crc.i178, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call38.i, i32 %140)
  %cmp40.not.i = icmp eq i32 %call38.i, %140
  br i1 %cmp40.not.i, label %if.end58.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %fn.2221 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fn.2221, align 4
  %flash_offset48.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %flash_offset48.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flash_offset48.i, align 4
  %and49.i = and i32 %144, -4
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41, i32 noundef %and49.i, i32 noundef %140, i32 noundef %call38.i) #14
  %inocache.i179 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %145 = ptrtoint ptr %inocache.i179 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %inocache.i179, align 8
  %ino.i180 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %ino.i180 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ino.i180, align 4
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %start.3220, i32 noundef %end.2219, i32 noundef %148) #14
  br label %cleanup.thread.i

if.end58.i:                                       ; preds = %if.end37.i
  %compr.i181 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 16
  %149 = ptrtoint ptr %compr.i181 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %compr.i181, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %150)
  %cmp60.not.i = icmp eq i8 %150, 1
  br i1 %cmp60.not.i, label %cleanup.i, label %do.end65.i

do.end65.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %fn.2221 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fn.2221, align 4
  %flash_offset68.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %flash_offset68.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %flash_offset68.i, align 4
  %and69.i = and i32 %154, -4
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.41, i32 noundef %and69.i) #14
  %inocache75.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %155 = ptrtoint ptr %inocache75.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %inocache75.i, align 8
  %ino76.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %ino76.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ino76.i, align 4
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %start.3220, i32 noundef %end.2219, i32 noundef %158) #14
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end65.i, %do.end45.i, %do.end6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen.i) #11
  br label %fill.i

cleanup.thread9.i:                                ; preds = %do.end29.i, %do.end14.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen.i) #11
  br label %jffs2_garbage_collect_hole.exit

cleanup.i:                                        ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen.i) #11
  br label %if.end104.i

fill.i:                                           ; preds = %cleanup.thread.i, %if.then54.fill.i_crit_edge
  %159 = ptrtoint ptr %ri.i169 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 6533, ptr %ri.i169, align 2
  %nodetype81.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 1
  %160 = ptrtoint ptr %nodetype81.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 -8190, ptr %nodetype81.i, align 2
  %totlen84.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 2
  %161 = ptrtoint ptr %totlen84.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 68, ptr %totlen84.i, align 2
  %hdr_crc.i182 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 3
  %call89.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri.i169, i32 noundef 8) #16
  %162 = ptrtoint ptr %hdr_crc.i182 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %call89.i, ptr %hdr_crc.i182, align 2
  %ino90.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 4
  %inocache93.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %163 = ptrtoint ptr %inocache93.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %inocache93.i, align 8
  %ino94.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %ino94.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ino94.i, align 4
  %167 = ptrtoint ptr %ino90.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 %166, ptr %ino90.i, align 2
  %version.i183 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 5
  %highest_version.i184 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %168 = ptrtoint ptr %highest_version.i184 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %highest_version.i184, align 4
  %inc.i185 = add i32 %169, 1
  store i32 %inc.i185, ptr %highest_version.i184, align 4
  %170 = ptrtoint ptr %version.i183 to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %inc.i185, ptr %version.i183, align 2
  %offset.i186 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 13
  %171 = ptrtoint ptr %offset.i186 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %start.3220, ptr %offset.i186, align 2
  %dsize.i187 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 15
  %sub.i = sub i32 %end.2219, %start.3220
  %172 = ptrtoint ptr %dsize.i187 to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 %sub.i, ptr %dsize.i187, align 2
  %csize.i188 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 14
  %173 = ptrtoint ptr %csize.i188 to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 0, ptr %csize.i188, align 2
  %compr103.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 16
  %174 = ptrtoint ptr %compr103.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %compr103.i, align 2
  br label %if.end104.i

if.end104.i:                                      ; preds = %fill.i, %cleanup.i
  %call.i.i190 = call ptr @rb_last(ptr noundef %fragtree) #11
  %tobool106.not.i = icmp eq ptr %call.i.i190, null
  br i1 %tobool106.not.i, label %if.else108.i, label %if.then107.i

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  %ofs.i191 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i190, i32 0, i32 3
  %175 = ptrtoint ptr %ofs.i191 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ofs.i191, align 4
  %size.i192 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i.i190, i32 0, i32 2
  %177 = ptrtoint ptr %size.i192 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %size.i192, align 4
  %add.i193 = add i32 %178, %176
  br label %if.end110.i

if.else108.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_size.i194 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 14
  %179 = ptrtoint ptr %i_size.i194 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %i_size.i194, align 8
  %conv109.i = trunc i64 %180 to i32
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.else108.i, %if.then107.i
  %ilen.0.i195 = phi i32 [ %add.i193, %if.then107.i ], [ %conv109.i, %if.else108.i ]
  %mode.i196 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 6
  %vfs_inode112.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9
  %181 = ptrtoint ptr %vfs_inode112.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %vfs_inode112.i, align 8
  %conv113.i = zext i16 %182 to i32
  %183 = ptrtoint ptr %mode.i196 to i32
  call void @__asan_storeN_noabort(i32 %183, i32 4)
  store i32 %conv113.i, ptr %mode.i196, align 2
  %uid.i197 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 7
  %i_sb.i.i.i198 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 8
  %184 = ptrtoint ptr %i_sb.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %i_sb.i.i.i198, align 4
  %s_user_ns.i.i.i199 = getelementptr inbounds %struct.super_block, ptr %185, i32 0, i32 53
  %186 = ptrtoint ptr %s_user_ns.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %s_user_ns.i.i.i199, align 8
  %i_uid.i.i200 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 2
  %188 = ptrtoint ptr %i_uid.i.i200 to i32
  call void @__asan_load4_noabort(i32 %188)
  %.unpack.i.i201 = load i32, ptr %i_uid.i.i200, align 4
  %189 = insertvalue [1 x i32] undef, i32 %.unpack.i.i201, 0
  %call1.i.i202 = call i32 @from_kuid(ptr noundef %187, [1 x i32] %189) #11
  %conv118.i = trunc i32 %call1.i.i202 to i16
  %190 = ptrtoint ptr %uid.i197 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv118.i, ptr %uid.i197, align 2
  %gid.i203 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 8
  %191 = ptrtoint ptr %i_sb.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i_sb.i.i.i198, align 4
  %s_user_ns.i.i4.i = getelementptr inbounds %struct.super_block, ptr %192, i32 0, i32 53
  %193 = ptrtoint ptr %s_user_ns.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %s_user_ns.i.i4.i, align 8
  %i_gid.i.i204 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 3
  %195 = ptrtoint ptr %i_gid.i.i204 to i32
  call void @__asan_load4_noabort(i32 %195)
  %.unpack.i5.i = load i32, ptr %i_gid.i.i204, align 8
  %196 = insertvalue [1 x i32] undef, i32 %.unpack.i5.i, 0
  %call1.i6.i = call i32 @from_kgid(ptr noundef %194, [1 x i32] %196) #11
  %conv123.i = trunc i32 %call1.i6.i to i16
  %197 = ptrtoint ptr %gid.i203 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv123.i, ptr %gid.i203, align 2
  %isize.i205 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 9
  %198 = ptrtoint ptr %isize.i205 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 %ilen.0.i195, ptr %isize.i205, align 2
  %atime.i206 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 10
  %i_atime.i207 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 15
  %199 = ptrtoint ptr %i_atime.i207 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %i_atime.i207, align 8
  %201 = call i64 @llvm.smax.i64(i64 %200, i64 0) #11
  %202 = call i64 @llvm.umin.i64(i64 %201, i64 4294967295) #11
  %203 = trunc i64 %202 to i32
  %204 = ptrtoint ptr %atime.i206 to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %203, ptr %atime.i206, align 2
  %ctime.i208 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 12
  %i_ctime.i209 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 17
  %205 = ptrtoint ptr %i_ctime.i209 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %i_ctime.i209, align 8
  %207 = call i64 @llvm.smax.i64(i64 %206, i64 0) #11
  %208 = call i64 @llvm.umin.i64(i64 %207, i64 4294967295) #11
  %209 = trunc i64 %208 to i32
  %210 = ptrtoint ptr %ctime.i208 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %209, ptr %ctime.i208, align 2
  %mtime.i210 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 11
  %i_mtime.i211 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 16
  %211 = ptrtoint ptr %i_mtime.i211 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %i_mtime.i211, align 8
  %213 = call i64 @llvm.smax.i64(i64 %212, i64 0) #11
  %214 = call i64 @llvm.umin.i64(i64 %213, i64 4294967295) #11
  %215 = trunc i64 %214 to i32
  %216 = ptrtoint ptr %mtime.i210 to i32
  call void @__asan_storeN_noabort(i32 %216, i32 4)
  store i32 %215, ptr %mtime.i210, align 2
  %data_crc.i212 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 19
  %217 = ptrtoint ptr %data_crc.i212 to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 0, ptr %data_crc.i212, align 2
  %node_crc180.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 20
  %call183.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri.i169, i32 noundef 60) #16
  %218 = ptrtoint ptr %node_crc180.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store i32 %call183.i, ptr %node_crc180.i, align 2
  %call184.i = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef 68, ptr noundef nonnull %alloclen.i170, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i)
  %tobool185.not.i = icmp eq i32 %call184.i, 0
  br i1 %tobool185.not.i, label %if.end192.i, label %do.end189.i

do.end189.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #13
  %call191.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef 68, i32 noundef %call184.i) #14
  br label %jffs2_garbage_collect_hole.exit

if.end192.i:                                      ; preds = %if.end110.i
  %call193.i = call ptr @jffs2_write_dnode(ptr noundef %c, ptr noundef %f, ptr noundef nonnull %ri.i169, ptr noundef null, i32 noundef 0, i32 noundef 2) #11
  %cmp.i.i213 = icmp ugt ptr %call193.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i213, label %do.end198.i, label %if.end203.i

do.end198.i:                                      ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #13
  %219 = ptrtoint ptr %call193.i to i32
  %call201.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %219) #14
  br label %jffs2_garbage_collect_hole.exit

if.end203.i:                                      ; preds = %if.end192.i
  %version204.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri.i169, i32 0, i32 5
  %220 = ptrtoint ptr %version204.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %version204.i, align 2
  %highest_version206.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %222 = ptrtoint ptr %highest_version206.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %highest_version206.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %223)
  %cmp207.i = icmp eq i32 %221, %223
  br i1 %cmp207.i, label %if.then209.i, label %do.body219.i

if.then209.i:                                     ; preds = %if.end203.i
  %call210.i = call i32 @jffs2_add_full_dnode_to_inode(ptr noundef %c, ptr noundef %f, ptr noundef %call193.i) #11
  %224 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %metadata, align 4
  %tobool211.not.i = icmp eq ptr %225, null
  br i1 %tobool211.not.i, label %if.then209.i.jffs2_garbage_collect_hole.exit_crit_edge, label %if.then212.i

if.then209.i.jffs2_garbage_collect_hole.exit_crit_edge: ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_garbage_collect_hole.exit

if.then212.i:                                     ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #13
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %227) #11
  %228 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %metadata, align 4
  call void @jffs2_free_full_dnode(ptr noundef %229) #11
  %230 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %metadata, align 4
  br label %jffs2_garbage_collect_hole.exit

do.body219.i:                                     ; preds = %if.end203.i
  %231 = ptrtoint ptr %call193.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %call193.i, align 4
  %flash_offset221.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %flash_offset221.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %flash_offset221.i, align 4
  %or.i = or i32 %234, 3
  store i32 %or.i, ptr %flash_offset221.i, align 4
  %ofs228.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %fn.2221, i32 0, i32 1
  %235 = ptrtoint ptr %ofs228.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %ofs228.i, align 4
  %call229.i = call ptr @jffs2_lookup_node_frag(ptr noundef %fragtree, i32 noundef %236) #11
  %tobool230.not14.i = icmp eq ptr %call229.i, null
  br i1 %tobool230.not14.i, label %do.body219.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body219.i.for.end.i_crit_edge:                 ; preds = %do.body219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body219.i
  %size232.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %fn.2221, i32 0, i32 2
  %frags243.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %call193.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %frag.015.i = phi ptr [ %call229.i, %for.body.lr.ph.i ], [ %call247.i, %for.inc.i.for.body.i_crit_edge ]
  %ofs231.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.015.i, i32 0, i32 3
  %237 = ptrtoint ptr %ofs231.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ofs231.i, align 4
  %239 = ptrtoint ptr %size232.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %size232.i, align 4
  %241 = ptrtoint ptr %ofs228.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %ofs228.i, align 4
  %add234.i = add i32 %242, %240
  call void @__sanitizer_cov_trace_cmp4(i32 %238, i32 %add234.i)
  %cmp235.i = icmp ugt i32 %238, %add234.i
  br i1 %cmp235.i, label %for.body.i.for.end.i_crit_edge, label %if.end238.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end238.i:                                      ; preds = %for.body.i
  %node.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.015.i, i32 0, i32 1
  %243 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %node.i, align 4
  %cmp239.i = icmp eq ptr %244, %fn.2221
  br i1 %cmp239.i, label %if.then241.i, label %if.end238.i.for.inc.i_crit_edge

if.end238.i.for.inc.i_crit_edge:                  ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then241.i:                                     ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #13
  %245 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call193.i, ptr %node.i, align 4
  %246 = ptrtoint ptr %frags243.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %frags243.i, align 4
  %inc244.i = add i32 %247, 1
  store i32 %inc244.i, ptr %frags243.i, align 4
  %248 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %frags.i, align 4
  %dec.i = add i32 %249, -1
  store i32 %dec.i, ptr %frags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then241.i, %if.end238.i.for.inc.i_crit_edge
  %call247.i = call ptr @rb_next(ptr noundef nonnull %frag.015.i) #11
  %tobool230.not.i = icmp eq ptr %call247.i, null
  br i1 %tobool230.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %do.body219.i.for.end.i_crit_edge
  %250 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool250.not.i = icmp eq i32 %251, 0
  br i1 %tobool250.not.i, label %if.end263.i, label %do.end254.i

do.end254.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call256.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.41) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1151, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

if.end263.i:                                      ; preds = %for.end.i
  %frags264.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %call193.i, i32 0, i32 3
  %252 = ptrtoint ptr %frags264.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %frags264.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool265.not.i = icmp eq i32 %253, 0
  br i1 %tobool265.not.i, label %do.end269.i, label %if.end278.i

do.end269.i:                                      ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #13
  %call271.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.41) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1155, 0\0A.popsection", ""() #11, !srcloc !204
  unreachable

if.end278.i:                                      ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #13
  %254 = ptrtoint ptr %fn.2221 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %fn.2221, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %255) #11
  call void @jffs2_free_full_dnode(ptr noundef %fn.2221) #11
  br label %jffs2_garbage_collect_hole.exit

jffs2_garbage_collect_hole.exit:                  ; preds = %if.end278.i, %if.then212.i, %if.then209.i.jffs2_garbage_collect_hole.exit_crit_edge, %do.end198.i, %do.end189.i, %cleanup.thread9.i
  %retval.1.i = phi i32 [ %call184.i, %do.end189.i ], [ %219, %do.end198.i ], [ 0, %if.end278.i ], [ 0, %if.then212.i ], [ 0, %if.then209.i.jffs2_garbage_collect_hole.exit_crit_edge ], [ -5, %cleanup.thread9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen.i170) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ri.i169) #11
  br label %upnout

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call fastcc i32 @jffs2_garbage_collect_dnode(ptr noundef %c, ptr noundef %f, i32 noundef %start.3220, i32 noundef %end.2219)
  br label %upnout

if.end58:                                         ; preds = %for.end.if.end58_crit_edge, %if.end15.if.end58_crit_edge
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 4
  %256 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %256)
  %fd.0239 = load ptr, ptr %dents, align 4
  %tobool60.not240 = icmp eq ptr %fd.0239, null
  br i1 %tobool60.not240, label %if.end58.do.end79_crit_edge, label %if.end58.for.body61_crit_edge

if.end58.for.body61_crit_edge:                    ; preds = %if.end58
  br label %for.body61

if.end58.do.end79_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

for.body61:                                       ; preds = %for.inc65.for.body61_crit_edge, %if.end58.for.body61_crit_edge
  %fd.0241 = phi ptr [ %fd.0, %for.inc65.for.body61_crit_edge ], [ %fd.0239, %if.end58.for.body61_crit_edge ]
  %257 = ptrtoint ptr %fd.0241 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %fd.0241, align 4
  %cmp62 = icmp eq ptr %258, %raw
  br i1 %cmp62, label %land.lhs.true68.critedge, label %for.inc65

for.inc65:                                        ; preds = %for.body61
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0241, i32 0, i32 1
  %259 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %259)
  %fd.0 = load ptr, ptr %next, align 4
  %tobool60.not = icmp eq ptr %fd.0, null
  br i1 %tobool60.not, label %for.inc65.do.end79_crit_edge, label %for.inc65.for.body61_crit_edge

for.inc65.for.body61_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61

for.inc65.do.end79_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

land.lhs.true68.critedge:                         ; preds = %for.body61
  %ino = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0241, i32 0, i32 3
  %260 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool69.not = icmp eq i32 %261, 0
  br i1 %tobool69.not, label %if.then74.critedge, label %if.then70

if.then70:                                        ; preds = %land.lhs.true68.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %call71 = tail call fastcc i32 @jffs2_garbage_collect_dirent(ptr noundef %c, ptr noundef %f, ptr noundef nonnull %fd.0241)
  br label %upnout

if.then74.critedge:                               ; preds = %land.lhs.true68.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = tail call fastcc i32 @jffs2_garbage_collect_deletion_dirent(ptr noundef %c, ptr noundef %jeb, ptr noundef %f, ptr noundef nonnull %fd.0241)
  br label %upnout

do.end79:                                         ; preds = %for.inc65.do.end79_crit_edge, %if.end58.do.end79_crit_edge
  %262 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %flash_offset, align 4
  %and82 = and i32 %263, -4
  %inocache83 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %264 = ptrtoint ptr %inocache83 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %inocache83, align 8
  %ino84 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %265, i32 0, i32 5
  %266 = ptrtoint ptr %ino84 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %ino84, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %and82, i32 noundef %267) #14
  %268 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %flash_offset, align 4
  %and87 = and i32 %269, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and87)
  %cmp88 = icmp eq i32 %and87, 1
  br i1 %cmp88, label %do.end92, label %do.body96

do.end92:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #14
  br label %upnout

do.body96:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #11, !srcloc !205
  unreachable

upnout:                                           ; preds = %do.end92, %if.then74.critedge, %if.then70, %if.else, %jffs2_garbage_collect_hole.exit, %if.then43, %if.then40.upnout_crit_edge, %jffs2_garbage_collect_metadata.exit, %if.end.upnout_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %jffs2_garbage_collect_metadata.exit ], [ 0, %if.then43 ], [ %retval.1.i, %jffs2_garbage_collect_hole.exit ], [ %call56, %if.else ], [ %call71, %if.then70 ], [ %call75, %if.then74.critedge ], [ 0, %do.end92 ], [ %call41, %if.then40.upnout_crit_edge ], [ 0, %if.end.upnout_crit_edge ]
  call void @mutex_unlock(ptr noundef %f) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_gc_release_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_garbage_collect_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flush_wbuf_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_garbage_collect_dnode(ptr noundef %c, ptr noundef %f, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  %ri = alloca %struct.jffs2_raw_inode, align 2
  %alloclen = alloca i32, align 4
  %comprbuf = alloca ptr, align 4
  %datalen = alloca i32, align 4
  %cdatalen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ri) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #11
  %0 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alloclen, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comprbuf) #11
  %1 = ptrtoint ptr %comprbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %comprbuf, align 4
  %2 = call ptr @memset(ptr %ri, i32 0, i32 68)
  %nr_free_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %3 = ptrtoint ptr %nr_free_blocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_free_blocks, align 4
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %5 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_erasing_blocks, align 4
  %add = add i32 %6, %4
  %resv_blocks_gcmerge = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 24
  %7 = ptrtoint ptr %resv_blocks_gcmerge to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %resv_blocks_gcmerge, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %if.then, label %entry.if.end181_crit_edge

entry.if.end181_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then:                                          ; preds = %entry
  %and = and i32 %start, -4096
  %add2 = add i32 %and, 4096
  %fragtree = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  %call = tail call ptr @jffs2_lookup_node_frag(ptr noundef %fragtree, i32 noundef %start) #11
  %ofs = getelementptr inbounds %struct.jffs2_node_frag, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %start)
  %cmp4.not = icmp eq i32 %10, %start
  br i1 %cmp4.not, label %if.then.while.cond_crit_edge, label %do.body8, !prof !206

if.then.while.cond_crit_edge:                     ; preds = %if.then
  br label %while.cond

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1203, 0\0A.popsection", ""() #11, !srcloc !207
  unreachable

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then.while.cond_crit_edge
  %frag.0 = phi ptr [ %call16, %while.body.while.cond_crit_edge ], [ %call, %if.then.while.cond_crit_edge ]
  %start.addr.0 = phi i32 [ %12, %while.body.while.cond_crit_edge ], [ %start, %if.then.while.cond_crit_edge ]
  %call16 = tail call ptr @rb_prev(ptr noundef %frag.0) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %ofs18 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call16, i32 0, i32 3
  %11 = ptrtoint ptr %ofs18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ofs18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and)
  %cmp19.not = icmp ult i32 %12, %and
  br i1 %cmp19.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %cmp22 = icmp ugt i32 %12, %and
  br i1 %cmp22, label %while.body.while.cond_crit_edge, label %if.end29

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end29:                                         ; preds = %while.body
  %node = getelementptr inbounds %struct.jffs2_node_frag, ptr %call16, i32 0, i32 1
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 4
  %tobool30.not = icmp eq ptr %14, null
  br i1 %tobool30.not, label %if.end29.while.end_crit_edge, label %lor.lhs.false

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end29
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool32.not = icmp eq ptr %16, null
  br i1 %tobool32.not, label %lor.lhs.false.while.end_crit_edge, label %if.else

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.else:                                          ; preds = %lor.lhs.false
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %17 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %blocks, align 4
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flash_offset, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %21 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %20, %22
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %18, i32 %div
  %gcblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %23 = ptrtoint ptr %gcblock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gcblock, align 4
  %cmp40 = icmp eq ptr %arrayidx, %24
  br i1 %cmp40, label %if.else.while.end_crit_edge, label %if.end47

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end47:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dirty_size = getelementptr %struct.jffs2_eraseblock, ptr %18, i32 %div, i32 5
  %25 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dirty_size, align 4
  %wasted_size = getelementptr %struct.jffs2_eraseblock, ptr %18, i32 %div, i32 6
  %27 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wasted_size, align 4
  %add48 = add i32 %28, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %add48)
  %cmp49 = icmp ugt i32 %add48, 196
  %.start.addr.0 = select i1 %cmp49, i32 %12, i32 %start.addr.0
  br label %while.end

while.end:                                        ; preds = %if.end47, %if.else.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end29.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %start.addr.2 = phi i32 [ %start.addr.0, %lor.lhs.false.while.end_crit_edge ], [ %start.addr.0, %if.end29.while.end_crit_edge ], [ %12, %if.else.while.end_crit_edge ], [ %.start.addr.0, %if.end47 ], [ %start.addr.0, %land.rhs.while.end_crit_edge ], [ %start.addr.0, %while.cond.while.end_crit_edge ]
  %sub = add i32 %end, -1
  %call62 = tail call ptr @jffs2_lookup_node_frag(ptr noundef %fragtree, i32 noundef %sub) #11
  br label %while.cond63

while.cond63:                                     ; preds = %while.body76.while.cond63_crit_edge, %while.end
  %frag.1 = phi ptr [ %call62, %while.end ], [ %call66, %while.body76.while.cond63_crit_edge ]
  %end.addr.0 = phi i32 [ %end, %while.end ], [ %add72, %while.body76.while.cond63_crit_edge ]
  %call66 = tail call ptr @rb_next(ptr noundef %frag.1) #11
  %tobool69.not = icmp eq ptr %call66, null
  br i1 %tobool69.not, label %while.cond63.do.body143_crit_edge, label %land.rhs70

while.cond63.do.body143_crit_edge:                ; preds = %while.cond63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

land.rhs70:                                       ; preds = %while.cond63
  %ofs71 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call66, i32 0, i32 3
  %29 = ptrtoint ptr %ofs71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ofs71, align 4
  %size = getelementptr inbounds %struct.jffs2_node_frag, ptr %call66, i32 0, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %add72 = add i32 %32, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %add2)
  %cmp73.not = icmp ugt i32 %add72, %add2
  br i1 %cmp73.not, label %land.rhs70.do.body143_crit_edge, label %while.body76

land.rhs70.do.body143_crit_edge:                  ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

while.body76:                                     ; preds = %land.rhs70
  %cmp80 = icmp ult i32 %add72, %add2
  br i1 %cmp80, label %while.body76.while.cond63_crit_edge, label %if.end89

while.body76.while.cond63_crit_edge:              ; preds = %while.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond63

if.end89:                                         ; preds = %while.body76
  %node90 = getelementptr inbounds %struct.jffs2_node_frag, ptr %call66, i32 0, i32 1
  %33 = ptrtoint ptr %node90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %node90, align 4
  %tobool91.not = icmp eq ptr %34, null
  br i1 %tobool91.not, label %if.end89.do.body143_crit_edge, label %lor.lhs.false92

if.end89.do.body143_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

lor.lhs.false92:                                  ; preds = %if.end89
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool95.not = icmp eq ptr %36, null
  br i1 %tobool95.not, label %lor.lhs.false92.do.body143_crit_edge, label %if.else100

lor.lhs.false92.do.body143_crit_edge:             ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

if.else100:                                       ; preds = %lor.lhs.false92
  %blocks105 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %37 = ptrtoint ptr %blocks105 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %blocks105, align 4
  %flash_offset106 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %flash_offset106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flash_offset106, align 4
  %sector_size107 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %41 = ptrtoint ptr %sector_size107 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sector_size107, align 4
  %div108 = udiv i32 %40, %42
  %arrayidx109 = getelementptr %struct.jffs2_eraseblock, ptr %38, i32 %div108
  %gcblock110 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %43 = ptrtoint ptr %gcblock110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gcblock110, align 4
  %cmp111 = icmp eq ptr %arrayidx109, %44
  br i1 %cmp111, label %if.else100.do.body143_crit_edge, label %if.end120

if.else100.do.body143_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

if.end120:                                        ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #13
  %dirty_size121 = getelementptr %struct.jffs2_eraseblock, ptr %38, i32 %div108, i32 5
  %45 = ptrtoint ptr %dirty_size121 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dirty_size121, align 4
  %wasted_size122 = getelementptr %struct.jffs2_eraseblock, ptr %38, i32 %div108, i32 6
  %47 = ptrtoint ptr %wasted_size122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wasted_size122, align 4
  %add123 = add i32 %48, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %add123)
  %cmp124 = icmp ugt i32 %add123, 196
  %add72.end.addr.0 = select i1 %cmp124, i32 %add72, i32 %end.addr.0
  br label %do.body143

do.body143:                                       ; preds = %if.end120, %if.else100.do.body143_crit_edge, %lor.lhs.false92.do.body143_crit_edge, %if.end89.do.body143_crit_edge, %land.rhs70.do.body143_crit_edge, %while.cond63.do.body143_crit_edge
  %end.addr.2 = phi i32 [ %end.addr.0, %lor.lhs.false92.do.body143_crit_edge ], [ %end.addr.0, %if.end89.do.body143_crit_edge ], [ %add72, %if.else100.do.body143_crit_edge ], [ %add72.end.addr.0, %if.end120 ], [ %end.addr.0, %land.rhs70.do.body143_crit_edge ], [ %end.addr.0, %while.cond63.do.body143_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %end.addr.2, i32 %end)
  %cmp144 = icmp ult i32 %end.addr.2, %end
  br i1 %cmp144, label %do.body153, label %do.body162, !prof !208

do.body153:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1316, 0\0A.popsection", ""() #11, !srcloc !209
  unreachable

do.body162:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.2, i32 %start)
  %cmp163 = icmp ugt i32 %start.addr.2, %start
  br i1 %cmp163, label %do.body172, label %do.body162.if.end181_crit_edge, !prof !208

do.body162.if.end181_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

do.body172:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1317, 0\0A.popsection", ""() #11, !srcloc !210
  unreachable

if.end181:                                        ; preds = %do.body162.if.end181_crit_edge, %entry.if.end181_crit_edge
  %end.addr.3 = phi i32 [ %end, %entry.if.end181_crit_edge ], [ %end.addr.2, %do.body162.if.end181_crit_edge ]
  %start.addr.3 = phi i32 [ %start, %entry.if.end181_crit_edge ], [ %start.addr.2, %do.body162.if.end181_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %f) #11
  %i_mapping = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 9
  %49 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_mapping, align 8
  %shr = lshr i32 %start.addr.3, 12
  %call182 = tail call ptr @read_cache_page(ptr noundef %50, i32 noundef %shr, ptr noundef nonnull @jffs2_do_readpage_unlock, ptr noundef %vfs_inode) #11
  %cmp.i = icmp ugt ptr %call182, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end187, label %if.end193

do.end187:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %call182 to i32
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %51) #14
  tail call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #11
  br label %cleanup347

if.end193:                                        ; preds = %if.end181
  tail call void @__might_sleep(ptr noundef nonnull @.str.78, i32 noundef 44) #11
  %52 = ptrtoint ptr %call182 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call182, align 4
  %shr.i.i = lshr i32 %53, 30
  %54 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %shr.i.i, label %if.end193.if.then.i_crit_edge [
    i32 2, label %if.end193.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end193.if.else.i_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end193.if.then.i_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %55 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp2.i.not.i = icmp eq i32 %55, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end193.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call182) #11
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end193.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call182) #11
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  tail call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.3, i32 %end)
  %cmp19725 = icmp ult i32 %start.addr.3, %end
  br i1 %cmp19725, label %while.body199.lr.ph, label %kmap.exit.while.end346_crit_edge

kmap.exit.while.end346_crit_edge:                 ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end346

while.body199.lr.ph:                              ; preds = %kmap.exit
  %nodetype = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 3
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 5
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %mode = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 6
  %uid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 7
  %i_sb.i.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 8
  %i_uid.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 2
  %gid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 8
  %i_gid.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 3
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 9
  %i_size = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 14
  %atime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 10
  %i_atime = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 15
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 12
  %i_ctime = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 17
  %mtime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 11
  %i_mtime = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 16
  %offset303 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 13
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 14
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 15
  %compr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 16
  %usercompr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 17
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 20
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 19
  %metadata = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  br label %while.body199

while.body199:                                    ; preds = %cleanup343.while.body199_crit_edge, %while.body199.lr.ph
  %offset.026 = phi i32 [ %start.addr.3, %while.body199.lr.ph ], [ %add335, %cleanup343.while.body199_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datalen) #11
  %56 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %datalen, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cdatalen) #11
  %57 = ptrtoint ptr %cdatalen to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %cdatalen, align 4, !annotation !202
  %call200 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef 196, ptr noundef nonnull %alloclen, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end208, label %do.end205

do.end205:                                        ; preds = %while.body199
  call void @__sanitizer_cov_trace_pc() #13
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef 196, i32 noundef %call200) #14
  br label %cleanup343.thread

if.end208:                                        ; preds = %while.body199
  %58 = ptrtoint ptr %alloclen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %alloclen, align 4
  %sub209 = add i32 %59, -68
  %sub210 = sub i32 %end.addr.3, %offset.026
  %60 = call i32 @llvm.umin.i32(i32 %sub209, i32 %sub210)
  %61 = ptrtoint ptr %cdatalen to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %cdatalen, align 4
  %62 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub210, ptr %datalen, align 4
  %and215 = and i32 %offset.026, 4095
  %add.ptr216 = getelementptr i8, ptr %addr.0.i, i32 %and215
  %call217 = call zeroext i16 @jffs2_compress(ptr noundef %c, ptr noundef %f, ptr noundef %add.ptr216, ptr noundef nonnull %comprbuf, ptr noundef nonnull %datalen, ptr noundef nonnull %cdatalen) #11
  %63 = ptrtoint ptr %ri to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 6533, ptr %ri, align 2
  %64 = ptrtoint ptr %nodetype to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -8190, ptr %nodetype, align 2
  %65 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cdatalen, align 4
  %add221 = add i32 %66, 68
  %67 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %add221, ptr %totlen, align 2
  %call224 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri, i32 noundef 8) #16
  %68 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %call224, ptr %hdr_crc, align 2
  %69 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %inocache, align 8
  %ino227 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %ino227 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ino227, align 4
  %73 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %ino, align 2
  %74 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %highest_version, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %highest_version, align 4
  %76 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %inc, ptr %version, align 2
  %77 = ptrtoint ptr %vfs_inode to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vfs_inode, align 8
  %conv232 = zext i16 %78 to i32
  %79 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %conv232, ptr %mode, align 2
  %80 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 53
  %82 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_user_ns.i.i, align 8
  %84 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %85 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = call i32 @from_kuid(ptr noundef %83, [1 x i32] %85) #11
  %conv237 = trunc i32 %call1.i to i16
  %86 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv237, ptr %uid, align 2
  %87 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i4 = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 53
  %89 = ptrtoint ptr %s_user_ns.i.i4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_user_ns.i.i4, align 8
  %91 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.unpack.i5 = load i32, ptr %i_gid.i, align 8
  %92 = insertvalue [1 x i32] undef, i32 %.unpack.i5, 0
  %call1.i6 = call i32 @from_kgid(ptr noundef %90, [1 x i32] %92) #11
  %conv242 = trunc i32 %call1.i6 to i16
  %93 = ptrtoint ptr %gid to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv242, ptr %gid, align 2
  %94 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %i_size, align 8
  %conv246 = trunc i64 %95 to i32
  %96 = ptrtoint ptr %isize to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %conv246, ptr %isize, align 2
  %97 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %i_atime, align 8
  %99 = call i64 @llvm.smax.i64(i64 %98, i64 0)
  %100 = call i64 @llvm.umin.i64(i64 %99, i64 4294967295)
  %101 = trunc i64 %100 to i32
  %102 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %101, ptr %atime, align 2
  %103 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %i_ctime, align 8
  %105 = call i64 @llvm.smax.i64(i64 %104, i64 0)
  %106 = call i64 @llvm.umin.i64(i64 %105, i64 4294967295)
  %107 = trunc i64 %106 to i32
  %108 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %ctime, align 2
  %109 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %i_mtime, align 8
  %111 = call i64 @llvm.smax.i64(i64 %110, i64 0)
  %112 = call i64 @llvm.umin.i64(i64 %111, i64 4294967295)
  %113 = trunc i64 %112 to i32
  %114 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %113, ptr %mtime, align 2
  %115 = ptrtoint ptr %offset303 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %offset.026, ptr %offset303, align 2
  %116 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cdatalen, align 4
  %118 = ptrtoint ptr %csize to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %117, ptr %csize, align 2
  %119 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %datalen, align 4
  %121 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %dsize, align 2
  %conv312 = trunc i16 %call217 to i8
  %122 = ptrtoint ptr %compr to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv312, ptr %compr, align 2
  %123 = lshr i16 %call217, 8
  %conv316 = trunc i16 %123 to i8
  %124 = ptrtoint ptr %usercompr to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv316, ptr %usercompr, align 1
  %call319 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri, i32 noundef 60) #16
  %125 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %call319, ptr %node_crc, align 2
  %126 = ptrtoint ptr %comprbuf to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %comprbuf, align 4
  %call322 = call i32 @crc32_le(i32 noundef 0, ptr noundef %127, i32 noundef %117) #16
  %128 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %call322, ptr %data_crc, align 2
  %call323 = call ptr @jffs2_write_dnode(ptr noundef %c, ptr noundef %f, ptr noundef nonnull %ri, ptr noundef %127, i32 noundef %117, i32 noundef 2) #11
  %129 = ptrtoint ptr %comprbuf to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %comprbuf, align 4
  call void @jffs2_free_comprbuf(ptr noundef %130, ptr noundef %add.ptr216) #11
  %cmp.i7 = icmp ugt ptr %call323, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i7, label %do.end328, label %if.end333

do.end328:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %call323 to i32
  %call331 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %131) #14
  br label %cleanup343.thread

if.end333:                                        ; preds = %if.end208
  %call334 = call i32 @jffs2_add_full_dnode_to_inode(ptr noundef %c, ptr noundef %f, ptr noundef %call323) #11
  %132 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %datalen, align 4
  %add335 = add i32 %133, %offset.026
  %134 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %metadata, align 4
  %tobool336.not = icmp eq ptr %135, null
  br i1 %tobool336.not, label %if.end333.cleanup343_crit_edge, label %if.then337

if.end333.cleanup343_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup343

if.then337:                                       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %137) #11
  %138 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %metadata, align 4
  call void @jffs2_free_full_dnode(ptr noundef %139) #11
  %140 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %metadata, align 4
  br label %cleanup343

cleanup343.thread:                                ; preds = %do.end328, %do.end205
  %ret.1.ph = phi i32 [ %131, %do.end328 ], [ %call200, %do.end205 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdatalen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen) #11
  br label %while.end346

cleanup343:                                       ; preds = %if.then337, %if.end333.cleanup343_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdatalen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen) #11
  %cmp197 = icmp ult i32 %add335, %end
  br i1 %cmp197, label %cleanup343.while.body199_crit_edge, label %cleanup343.while.end346_crit_edge

cleanup343.while.end346_crit_edge:                ; preds = %cleanup343
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end346

cleanup343.while.body199_crit_edge:               ; preds = %cleanup343
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body199

while.end346:                                     ; preds = %cleanup343.while.end346_crit_edge, %cleanup343.thread, %kmap.exit.while.end346_crit_edge
  %ret.2 = phi i32 [ %ret.1.ph, %cleanup343.thread ], [ 0, %kmap.exit.while.end346_crit_edge ], [ %call334, %cleanup343.while.end346_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.78, i32 noundef 55) #11
  %141 = ptrtoint ptr %call182 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %call182, align 4
  %shr.i.i8 = lshr i32 %142, 30
  %143 = zext i32 %shr.i.i8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %shr.i.i8, label %while.end346.kunmap.exit_crit_edge [
    i32 2, label %while.end346.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i10
  ]

while.end346.if.end.i_crit_edge:                  ; preds = %while.end346
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.end346.kunmap.exit_crit_edge:               ; preds = %while.end346
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i10:                          ; preds = %while.end346
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %144 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp2.i.not.i9 = icmp eq i32 %144, 2
  br i1 %cmp2.i.not.i9, label %is_highmem_idx.exit.i10.if.end.i_crit_edge, label %is_highmem_idx.exit.i10.kunmap.exit_crit_edge

is_highmem_idx.exit.i10.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i10.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i10.if.end.i_crit_edge, %while.end346.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %call182) #11
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i10.kunmap.exit_crit_edge, %while.end346.kunmap.exit_crit_edge
  %145 = getelementptr inbounds %struct.page, ptr %call182, i32 0, i32 1
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %145, align 4
  %and.i.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !206

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %147, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %call182 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %148, %if.end.i.i ]
  %149 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %149, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %150 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp.i.i.i.i = icmp eq i32 %151, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !208

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %149, ptr noundef nonnull @.str.79) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !211
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !212
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %152 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !213
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %152, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@jffs2_garbage_collect_dnode, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !215

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %149, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup347_crit_edge

folio_put_testzero.exit.i.i.cleanup347_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup347

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %149) #11
  br label %cleanup347

cleanup347:                                       ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup347_crit_edge, %do.end187
  %retval.0 = phi i32 [ %51, %do.end187 ], [ %ret.2, %folio_put_testzero.exit.i.i.cleanup347_crit_edge ], [ %ret.2, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comprbuf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ri) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_garbage_collect_dirent(ptr noundef %c, ptr noundef %f, ptr noundef %fd) unnamed_addr #0 align 64 {
entry:
  %rd = alloca %struct.jffs2_raw_dirent, align 2
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rd) #11
  %0 = getelementptr inbounds i8, ptr %rd, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #11
  %2 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %alloclen, align 4, !annotation !202
  %3 = ptrtoint ptr %rd to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 6533, ptr %rd, align 2
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 1
  %4 = ptrtoint ptr %nodetype to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -8191, ptr %nodetype, align 2
  %name = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd, i32 0, i32 6
  %call = tail call i32 @strlen(ptr noundef %name) #17
  %conv = trunc i32 %call to i8
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 8
  %5 = ptrtoint ptr %nsize to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %nsize, align 2
  %totlen = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 2
  %conv5 = and i32 %call, 255
  %add = add nuw nsw i32 %conv5, 40
  %6 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %add, ptr %totlen, align 2
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 3
  %call8 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rd, i32 noundef 8) #16
  %7 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %call8, ptr %hdr_crc, align 2
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 4
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %8 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inocache, align 8
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ino, align 4
  %12 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %pino, align 2
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 5
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %highest_version, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %highest_version, align 4
  %15 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %inc, ptr %version, align 2
  %ino13 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 6
  %ino16 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd, i32 0, i32 3
  %16 = ptrtoint ptr %ino16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ino16, align 4
  %18 = ptrtoint ptr %ino13 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %ino13, align 2
  %i_mtime = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 16
  %19 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_mtime, align 8
  %21 = call i64 @llvm.smax.i64(i64 %20, i64 0)
  %22 = call i64 @llvm.umin.i64(i64 %21, i64 4294967295)
  %23 = trunc i64 %22 to i32
  %i_ctime = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9, i32 17
  %24 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_ctime, align 8
  %26 = call i64 @llvm.smax.i64(i64 %25, i64 0)
  %27 = call i64 @llvm.umin.i64(i64 %26, i64 4294967295)
  %28 = trunc i64 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %28)
  %cmp43 = icmp eq i32 %23, %28
  %spec.select = select i1 %cmp43, i32 %23, i32 0
  %29 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %spec.select, ptr %29, align 2
  %type = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd, i32 0, i32 5
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type, align 4
  %type68 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 9
  %33 = ptrtoint ptr %type68 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %type68, align 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 11
  %call71 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rd, i32 noundef 32) #16
  %34 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %call71, ptr %node_crc, align 2
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 12
  %call78 = call i32 @crc32_le(i32 noundef 0, ptr noundef %name, i32 noundef %conv5) #16
  %35 = ptrtoint ptr %name_crc to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %call78, ptr %name_crc, align 2
  %add84 = add nuw nsw i32 %conv5, 24
  %call85 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef %add84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool.not = icmp eq i32 %call85, 0
  %36 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nsize, align 2
  %conv96 = zext i8 %37 to i32
  br i1 %tobool.not, label %if.end92, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add90 = add nuw nsw i32 %conv96, 40
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %add90, i32 noundef %call85) #14
  br label %cleanup

if.end92:                                         ; preds = %entry
  %call97 = call ptr @jffs2_write_dirent(ptr noundef %c, ptr noundef %f, ptr noundef nonnull %rd, ptr noundef %name, i32 noundef %conv96, i32 noundef 2) #11
  %cmp.i = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end102, label %if.end107

do.end102:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %call97 to i32
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %38) #14
  br label %cleanup

if.end107:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 4
  call void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef %call97, ptr noundef %dents) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %do.end102, %do.end
  %retval.0 = phi i32 [ %call85, %do.end ], [ %38, %do.end102 ], [ 0, %if.end107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_garbage_collect_deletion_dirent(ptr noundef %c, ptr noundef %jeb, ptr noundef %f, ptr noundef %fd) unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #11
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !202
  %name = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd, i32 0, i32 6
  %call = tail call i32 @strlen(ptr noundef %name) #17
  %call3 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %name, i32 noundef %call) #16
  %1 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fd, align 4
  %call4 = tail call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %jeb, ptr noundef %2) #11
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call4, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup.thread_crit_edge, label %if.end

entry.cleanup.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end:                                           ; preds = %entry
  %erase_free_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #11
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %3 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inocache, align 8
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %raw.0164 = load ptr, ptr %nodes, align 4
  %cmp.not165 = icmp eq ptr %raw.0164, %4
  br i1 %cmp.not165, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 1
  %name_crc54 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 12
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 8
  %ino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 6
  %name66 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %raw.0166 = phi ptr [ %raw.0164, %for.body.lr.ph ], [ %raw.0, %for.inc.for.body_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 926, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0166, i32 0, i32 1
  %6 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flash_offset, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp8 = icmp eq i32 %and, 1
  br i1 %cmp8, label %if.end10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %call11 = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef null, ptr noundef %raw.0166) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %call4)
  %cmp12.not = icmp eq i32 %call11, %call4
  br i1 %cmp12.not, label %if.end14, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flash_offset, align 4
  %10 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size, align 4
  %12 = urem i32 %9, %11
  %mul = sub i32 %9, %12
  %13 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd, align 4
  %flash_offset17 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flash_offset17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flash_offset17, align 4
  %17 = urem i32 %16, %11
  %mul21 = sub i32 %16, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul21)
  %cmp22 = icmp eq i32 %mul, %mul21
  br i1 %cmp22, label %if.end14.for.inc_crit_edge, label %do.end

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %if.end14
  %and26 = and i32 %9, -4
  %conv = zext i32 %and26 to i64
  %call27 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv, i32 noundef %call4, ptr noundef nonnull %retlen, ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flash_offset, align 4
  %and35 = and i32 %19, -4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call27, i32 noundef %and35) #14
  br label %for.inc

if.end37:                                         ; preds = %do.end
  %20 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call4)
  %cmp38.not = icmp eq i32 %21, %call4
  br i1 %cmp38.not, label %if.end48, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flash_offset, align 4
  %and46 = and i32 %23, -4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %21, i32 noundef %call4, i32 noundef %and46) #14
  br label %for.inc

if.end48:                                         ; preds = %if.end37
  %24 = ptrtoint ptr %nodetype to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nodetype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8191, i16 %25)
  %cmp50.not = icmp eq i16 %25, -8191
  br i1 %cmp50.not, label %if.end53, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end53:                                         ; preds = %if.end48
  %26 = ptrtoint ptr %name_crc54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %name_crc54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %call3)
  %cmp55.not = icmp eq i32 %27, %call3
  br i1 %cmp55.not, label %if.end58, label %if.end53.for.inc_crit_edge

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end58:                                         ; preds = %if.end53
  %28 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nsize, align 4
  %conv59 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv59)
  %cmp60.not = icmp eq i32 %call, %conv59
  br i1 %cmp60.not, label %lor.lhs.false, label %if.end58.for.inc_crit_edge

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end58
  %30 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool63.not = icmp eq i32 %31, 0
  br i1 %tobool63.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end65

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end65:                                         ; preds = %lor.lhs.false
  %bcmp = call i32 @bcmp(ptr %name66, ptr %name, i32 %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool71.not = icmp eq i32 %bcmp, 0
  br i1 %tobool71.not, label %if.end73, label %if.end65.for.inc_crit_edge

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %erase_free_sem) #11
  call void @kfree(ptr noundef nonnull %call9.i) #11
  %call78 = call fastcc i32 @jffs2_garbage_collect_dirent(ptr noundef %c, ptr noundef %f, ptr noundef %fd)
  br label %cleanup.thread

for.inc:                                          ; preds = %if.end65.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end58.for.inc_crit_edge, %if.end53.for.inc_crit_edge, %if.end48.for.inc_crit_edge, %do.end43, %do.end32, %if.end14.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %raw.0166 to i32
  call void @__asan_load4_noabort(i32 %32)
  %raw.0 = load ptr, ptr %raw.0166, align 4
  %33 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inocache, align 8
  %cmp.not = icmp eq ptr %raw.0, %34
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end73, %entry.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -12, %entry.cleanup.thread_crit_edge ], [ %call78, %if.end73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #11
  br label %cleanup104

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef %erase_free_sem) #11
  call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #11
  %35 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dents, align 4
  %tobool86.not167 = icmp eq ptr %36, null
  br i1 %tobool86.not167, label %cleanup.do.end96.critedge_crit_edge, label %while.body.preheader

cleanup.do.end96.critedge_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96.critedge

while.body.preheader:                             ; preds = %cleanup
  %cmp87172 = icmp eq ptr %36, %fd
  br i1 %cmp87172, label %while.body.preheader.if.then89_crit_edge, label %while.body.preheader.while.cond_crit_edge

while.body.preheader.while.cond_crit_edge:        ; preds = %while.body.preheader
  br label %while.cond

while.body.preheader.if.then89_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.body.preheader.while.cond_crit_edge
  %37 = phi ptr [ %39, %while.body.while.cond_crit_edge ], [ %36, %while.body.preheader.while.cond_crit_edge ]
  %next91 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %next91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next91, align 4
  %tobool86.not = icmp eq ptr %39, null
  br i1 %tobool86.not, label %while.cond.do.end96.critedge_crit_edge, label %while.body

while.cond.do.end96.critedge_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96.critedge

while.body:                                       ; preds = %while.cond
  %cmp87 = icmp eq ptr %39, %fd
  br i1 %cmp87, label %if.then89.loopexit, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then89.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %next91.le = getelementptr inbounds %struct.jffs2_full_dirent, ptr %37, i32 0, i32 1
  br label %if.then89

if.then89:                                        ; preds = %if.then89.loopexit, %while.body.preheader.if.then89_crit_edge
  %fdp.0168.lcssa = phi ptr [ %dents, %while.body.preheader.if.then89_crit_edge ], [ %next91.le, %if.then89.loopexit ]
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd, i32 0, i32 1
  %40 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next, align 4
  %42 = ptrtoint ptr %fdp.0168.lcssa to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %fdp.0168.lcssa, align 4
  br label %if.end103

do.end96.critedge:                                ; preds = %while.cond.do.end96.critedge_crit_edge, %cleanup.do.end96.critedge_crit_edge
  %43 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %inocache, align 8
  %ino101 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %ino101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ino101, align 4
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name, i32 noundef %46) #14
  br label %if.end103

if.end103:                                        ; preds = %do.end96.critedge, %if.then89
  %47 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fd, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %48) #11
  call void @jffs2_free_full_dirent(ptr noundef %fd) #11
  br label %cleanup104

cleanup104:                                       ; preds = %if.end103, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.end103 ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_read_dnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space_gc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_write_dnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_add_full_dnode_to_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_lookup_node_frag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_readpage_unlock(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @jffs2_compress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_comprbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_write_dirent(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_fd_to_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jffs2_ref_totlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dirent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_add_physical_node_ref(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jffs2_dbg_acct_sanity_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183}
!llvm.named.register.sp = !{!184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/gc.c", i32 179, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_garbage_collect_pass._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_garbage_collect_pass._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/gc.c", i32 206, i32 4}
!8 = !{ptr @jffs2_garbage_collect_pass._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_garbage_collect_pass._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../fs/jffs2/gc.c", i32 222, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jffs2/gc.c", i32 239, i32 4}
!14 = !{ptr @jffs2_garbage_collect_pass._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @jffs2_garbage_collect_pass._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jffs2/gc.c", i32 298, i32 4}
!18 = !{ptr @jffs2_garbage_collect_pass._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @jffs2_garbage_collect_pass._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jffs2/gc.c", i32 299, i32 4}
!22 = !{ptr @jffs2_garbage_collect_pass._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @jffs2_garbage_collect_pass._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jffs2/gc.c", i32 391, i32 3}
!26 = !{ptr @jffs2_garbage_collect_pass._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @jffs2_garbage_collect_pass._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/jffs2/gc.c", i32 407, i32 3}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/jffs2/gc.c", i32 471, i32 3}
!32 = !{ptr @jffs2_garbage_collect_pass._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @jffs2_garbage_collect_pass._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/gc.c", i32 102, i32 3}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jffs2_find_gc_block._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @jffs2_find_gc_block._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/jffs2/gc.c", i32 576, i32 3}
!41 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @jffs2_garbage_collect_live._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @jffs2_garbage_collect_live._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/jffs2/gc.c", i32 579, i32 4}
!46 = !{ptr @jffs2_garbage_collect_live._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @jffs2_garbage_collect_live._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/jffs2/gc.c", i32 781, i32 4}
!50 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @jffs2_garbage_collect_metadata._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @jffs2_garbage_collect_metadata._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/jffs2/gc.c", i32 786, i32 4}
!55 = !{ptr @jffs2_garbage_collect_metadata._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @jffs2_garbage_collect_metadata._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/jffs2/gc.c", i32 799, i32 3}
!59 = !{ptr @jffs2_garbage_collect_metadata._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @jffs2_garbage_collect_metadata._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/jffs2/gc.c", i32 837, i32 3}
!63 = !{ptr @jffs2_garbage_collect_metadata._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @jffs2_garbage_collect_metadata._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/jffs2/gc.c", i32 1035, i32 4}
!67 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @jffs2_garbage_collect_hole._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @jffs2_garbage_collect_hole._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/jffs2/gc.c", i32 1040, i32 4}
!72 = !{ptr @jffs2_garbage_collect_hole._entry.42, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.44, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/jffs2/gc.c", i32 1046, i32 4}
!76 = !{ptr @jffs2_garbage_collect_hole._entry.45, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.47, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.49, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/jffs2/gc.c", i32 1053, i32 4}
!80 = !{ptr @jffs2_garbage_collect_hole._entry.48, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.50, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.52, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/jffs2/gc.c", i32 1057, i32 4}
!84 = !{ptr @jffs2_garbage_collect_hole._entry.51, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.53, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/jffs2/gc.c", i32 1062, i32 4}
!88 = !{ptr @jffs2_garbage_collect_hole._entry.54, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.56, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @jffs2_garbage_collect_hole._entry.57, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../fs/jffs2/gc.c", i32 1064, i32 4}
!92 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.58, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/jffs2/gc.c", i32 1104, i32 3}
!95 = !{ptr @jffs2_garbage_collect_hole._entry.59, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.61, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.63, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/jffs2/gc.c", i32 1111, i32 3}
!99 = !{ptr @jffs2_garbage_collect_hole._entry.62, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.64, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/jffs2/gc.c", i32 1150, i32 3}
!103 = !{ptr @jffs2_garbage_collect_hole._entry.65, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.67, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/jffs2/gc.c", i32 1154, i32 3}
!107 = !{ptr @jffs2_garbage_collect_hole._entry.68, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @jffs2_garbage_collect_hole._entry_ptr.70, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.71, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/jffs2/gc.c", i32 1332, i32 3}
!111 = !{ptr @.str.72, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @jffs2_garbage_collect_dnode._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @jffs2_garbage_collect_dnode._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.74, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/jffs2/gc.c", i32 1351, i32 4}
!116 = !{ptr @jffs2_garbage_collect_dnode._entry.73, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @jffs2_garbage_collect_dnode._entry_ptr.75, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @jffs2_garbage_collect_dnode._entry.76, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../fs/jffs2/gc.c", i32 1389, i32 4}
!120 = !{ptr @jffs2_garbage_collect_dnode._entry_ptr.77, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.78, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!123 = !{ptr @.str.79, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/mm.h", i32 717, i32 2}
!125 = !{ptr @.str.80, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/jffs2/gc.c", i32 880, i32 3}
!127 = !{ptr @.str.81, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @jffs2_garbage_collect_dirent._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @jffs2_garbage_collect_dirent._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/jffs2/gc.c", i32 887, i32 3}
!132 = !{ptr @jffs2_garbage_collect_dirent._entry.82, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @jffs2_garbage_collect_dirent._entry_ptr.84, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/jffs2/gc.c", i32 948, i32 5}
!136 = !{ptr @.str.86, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @jffs2_garbage_collect_deletion_dirent._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @jffs2_garbage_collect_deletion_dirent._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.88, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/jffs2/gc.c", i32 954, i32 5}
!141 = !{ptr @jffs2_garbage_collect_deletion_dirent._entry.87, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @jffs2_garbage_collect_deletion_dirent._entry_ptr.89, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.91, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/jffs2/gc.c", i32 1005, i32 3}
!145 = !{ptr @jffs2_garbage_collect_deletion_dirent._entry.90, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @jffs2_garbage_collect_deletion_dirent._entry_ptr.92, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/jffs2/gc.c", i32 636, i32 3}
!149 = !{ptr @.str.94, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @jffs2_garbage_collect_pristine._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.96, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/jffs2/gc.c", i32 645, i32 4}
!154 = !{ptr @jffs2_garbage_collect_pristine._entry.95, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.97, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.99, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/jffs2/gc.c", i32 654, i32 5}
!158 = !{ptr @jffs2_garbage_collect_pristine._entry.98, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.100, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.102, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/jffs2/gc.c", i32 665, i32 4}
!162 = !{ptr @jffs2_garbage_collect_pristine._entry.101, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.103, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.105, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/jffs2/gc.c", i32 672, i32 4}
!166 = !{ptr @jffs2_garbage_collect_pristine._entry.104, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.106, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.108, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/jffs2/gc.c", i32 680, i32 5}
!170 = !{ptr @jffs2_garbage_collect_pristine._entry.107, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.109, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.111, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/jffs2/gc.c", i32 690, i32 4}
!174 = !{ptr @jffs2_garbage_collect_pristine._entry.110, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.112, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.114, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/jffs2/gc.c", i32 703, i32 3}
!178 = !{ptr @jffs2_garbage_collect_pristine._entry.113, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.115, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.117, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/jffs2/gc.c", i32 708, i32 4}
!182 = !{ptr @jffs2_garbage_collect_pristine._entry.116, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @jffs2_garbage_collect_pristine._entry_ptr.118, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{!"sp"}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2154496187, i64 2154496665, i64 2154496224, i64 2154496280, i64 2154496314, i64 2154496338, i64 2154496379, i64 2154496400, i64 2154496428, i64 2154496462}
!195 = !{i64 2154505286}
!196 = !{i64 2154505508, i64 2154505986, i64 2154505545, i64 2154505601, i64 2154505635, i64 2154505659, i64 2154505700, i64 2154505721, i64 2154505749, i64 2154505783}
!197 = !{i64 2154483039, i64 2154483517, i64 2154483076, i64 2154483132, i64 2154483166, i64 2154483190, i64 2154483231, i64 2154483252, i64 2154483280, i64 2154483314}
!198 = !{!"branch_weights", i32 2002, i32 2000}
!199 = !{i64 2154529152, i64 2154529630, i64 2154529189, i64 2154529245, i64 2154529279, i64 2154529303, i64 2154529344, i64 2154529365, i64 2154529393, i64 2154529427}
!200 = !{i64 2154541211, i64 2154541689, i64 2154541248, i64 2154541304, i64 2154541338, i64 2154541362, i64 2154541403, i64 2154541424, i64 2154541452, i64 2154541486}
!201 = !{i64 2154554476}
!202 = !{!"auto-init"}
!203 = !{i64 2154854408, i64 2154854887, i64 2154854445, i64 2154854501, i64 2154854535, i64 2154854559, i64 2154854600, i64 2154854621, i64 2154854649, i64 2154854683}
!204 = !{i64 2154857557, i64 2154858036, i64 2154857594, i64 2154857650, i64 2154857684, i64 2154857708, i64 2154857749, i64 2154857770, i64 2154857798, i64 2154857832}
!205 = !{i64 2154570295, i64 2154570773, i64 2154570332, i64 2154570388, i64 2154570422, i64 2154570446, i64 2154570487, i64 2154570508, i64 2154570536, i64 2154570570}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 2154866256, i64 2154866735, i64 2154866293, i64 2154866349, i64 2154866383, i64 2154866407, i64 2154866448, i64 2154866469, i64 2154866497, i64 2154866531}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{i64 2154903684, i64 2154904163, i64 2154903721, i64 2154903777, i64 2154903811, i64 2154903835, i64 2154903876, i64 2154903897, i64 2154903925, i64 2154903959}
!210 = !{i64 2154905261, i64 2154905740, i64 2154905298, i64 2154905354, i64 2154905388, i64 2154905412, i64 2154905453, i64 2154905474, i64 2154905502, i64 2154905536}
!211 = !{i64 2153861184, i64 2153861667, i64 2153861221, i64 2153861277, i64 2153861311, i64 2153861335, i64 2153861376, i64 2153861397, i64 2153861425, i64 2153861459}
!212 = !{i64 2148341293}
!213 = !{i64 2148256026, i64 2148256058, i64 2148256087, i64 2148256121, i64 2148256152, i64 2148256175}
!214 = !{i64 2148341522}
!215 = !{i64 2148734656, i64 2148734661, i64 2148734674, i64 2148734718, i64 2148734752, i64 2148734773}
