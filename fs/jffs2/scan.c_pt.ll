; ModuleID = '/llk/IR_all_yes/fs/jffs2/scan.c_pt.bc'
source_filename = "../fs/jffs2/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_unknown_node = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.jffs2_sum_marker = type { %struct.jint32_t, %struct.jint32_t }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
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
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jffs2_raw_dirent = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [2 x i8], %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jffs2_full_dirent = type { %union.anon.75, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.75 = type { ptr }
%struct.jffs2_raw_xattr = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jffs2_xattr_datum = type { ptr, ptr, i8, i8, i16, %struct.list_head, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.jffs2_raw_xref = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t }
%struct.jffs2_xattr_ref = type { ptr, ptr, i8, i8, i16, i32, %union.anon.76, %union.anon.77, ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }

@jffs2_scan_medium._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014jffs2: warning: (%d) %s: Can't allocate memory for summary\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jffs2_scan_medium\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/jffs2/scan.c\00", [16 x i8] zeroinitializer }, align 32
@jffs2_scan_medium._entry_ptr = internal global ptr @jffs2_scan_medium._entry, section ".printk_index", align 4
@jffs2_scan_medium._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014jffs2: %s(): unknown block state\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_scan_medium._entry_ptr.5 = internal global ptr @jffs2_scan_medium._entry.3, section ".printk_index", align 4
@jffs2_scan_medium._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\015jffs2: Cowardly refusing to erase blocks on filesystem with no valid JFFS2 nodes\0A\00", [44 x i8] zeroinitializer }, align 32
@jffs2_scan_medium._entry_ptr.8 = internal global ptr @jffs2_scan_medium._entry.6, section ".printk_index", align 4
@jffs2_scan_medium._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015jffs2: empty_blocks %d, bad_blocks %d, c->nr_blocks %d\0A\00", [38 x i8] zeroinitializer }, align 32
@jffs2_scan_medium._entry_ptr.11 = internal global ptr @jffs2_scan_medium._entry.9, section ".printk_index", align 4
@jffs2_scan_make_ino_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015jffs2: %s(): allocation of inode cache failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jffs2_scan_make_ino_cache\00", [38 x i8] zeroinitializer }, align 32
@jffs2_scan_make_ino_cache._entry_ptr = internal global ptr @jffs2_scan_make_ino_cache._entry, section ".printk_index", align 4
@pseudo_random = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jffs2_scan_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014jffs2: Eep. ofs 0x%08x not word-aligned!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_scan_eraseblock\00", [42 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr = internal global ptr @jffs2_scan_eraseblock._entry, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014jffs2: ofs 0x%08x has already been seen. Skipping\0A\00", [43 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.18 = internal global ptr @jffs2_scan_eraseblock._entry.16, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014jffs2: Empty flash at 0x%08x ends at 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.21 = internal global ptr @jffs2_scan_eraseblock._entry.19, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014jffs2: Magic bitmask is backwards at offset 0x%08x. Wrong endian filesystem?\0A\00", [48 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.24 = internal global ptr @jffs2_scan_eraseblock._entry.22, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014jffs2: Old JFFS2 bitmask found at 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.27 = internal global ptr @jffs2_scan_eraseblock._entry.25, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014jffs2: You cannot use older JFFS2 filesystems with newer kernels\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.30 = internal global ptr @jffs2_scan_eraseblock._entry.28, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015jffs2: %s(): Magic bitmask 0x%04x not found at 0x%08x: 0x%04x instead\0A\00", [55 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.33 = internal global ptr @jffs2_scan_eraseblock._entry.31, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015jffs2: Further such events for this erase block will not be printed\0A\00", [57 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.36 = internal global ptr @jffs2_scan_eraseblock._entry.34, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\015jffs2: %s(): Node at 0x%08x {0x%04x, 0x%04x, 0x%08x) has invalid CRC 0x%08x (calculated 0x%08x)\0A\00", [61 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.39 = internal global ptr @jffs2_scan_eraseblock._entry.37, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.41 = internal global ptr @jffs2_scan_eraseblock._entry.40, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.15, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014jffs2: Node at 0x%08x with length 0x%08x would run over the end of the erase block\0A\00", [42 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.44 = internal global ptr @jffs2_scan_eraseblock._entry.42, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.15, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014jffs2: Perhaps the file system was created with the wrong erase size?\0A\00", [55 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.47 = internal global ptr @jffs2_scan_eraseblock._entry.45, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.15, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\015jffs2: CLEANMARKER node found at 0x%08x has totlen 0x%x != normal 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.50 = internal global ptr @jffs2_scan_eraseblock._entry.48, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.15, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015jffs2: CLEANMARKER node found at 0x%08x, not first node in block (0x%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.53 = internal global ptr @jffs2_scan_eraseblock._entry.51, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.15, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015jffs2: Read-only compatible feature node (0x%04x) found at offset 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.56 = internal global ptr @jffs2_scan_eraseblock._entry.54, section ".printk_index", align 4
@jffs2_scan_eraseblock._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.15, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015jffs2: Incompatible feature node (0x%04x) found at offset 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_scan_eraseblock._entry_ptr.59 = internal global ptr @jffs2_scan_eraseblock._entry.57, section ".printk_index", align 4
@jffs2_scan_inode_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015jffs2: %s(): CRC failed on node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_scan_inode_node\00", [42 x i8] zeroinitializer }, align 32
@jffs2_scan_inode_node._entry_ptr = internal global ptr @jffs2_scan_inode_node._entry, section ".printk_index", align 4
@jffs2_scan_dirent_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015jffs2: %s(): Node CRC failed on node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jffs2_scan_dirent_node\00", [41 x i8] zeroinitializer }, align 32
@jffs2_scan_dirent_node._entry_ptr = internal global ptr @jffs2_scan_dirent_node._entry, section ".printk_index", align 4
@jffs2_scan_dirent_node._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013jffs2: Dirent at %08x has zeroes in name. Truncating to %d chars\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_scan_dirent_node._entry_ptr.66 = internal global ptr @jffs2_scan_dirent_node._entry.64, section ".printk_index", align 4
@jffs2_scan_dirent_node._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015jffs2: %s(): Name CRC failed on node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@jffs2_scan_dirent_node._entry_ptr.69 = internal global ptr @jffs2_scan_dirent_node._entry.67, section ".printk_index", align 4
@jffs2_scan_xattr_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014jffs2: warning: (%d) %s: node CRC failed at %#08x, read=%#08x, calc=%#08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_scan_xattr_node\00", [42 x i8] zeroinitializer }, align 32
@jffs2_scan_xattr_node._entry_ptr = internal global ptr @jffs2_scan_xattr_node._entry, section ".printk_index", align 4
@jffs2_scan_xattr_node._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014jffs2: warning: (%d) %s: node length mismatch at %#08x, read=%u, calc=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_scan_xattr_node._entry_ptr.74 = internal global ptr @jffs2_scan_xattr_node._entry.72, section ".printk_index", align 4
@jffs2_scan_xref_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.75, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jffs2_scan_xref_node\00", [43 x i8] zeroinitializer }, align 32
@jffs2_scan_xref_node._entry_ptr = internal global ptr @jffs2_scan_xref_node._entry, section ".printk_index", align 4
@jffs2_scan_xref_node._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014jffs2: warning: (%d) %s: node length mismatch at %#08x, read=%u, calc=%zd\0A\00", [51 x i8] zeroinitializer }, align 32
@jffs2_scan_xref_node._entry_ptr.78 = internal global ptr @jffs2_scan_xref_node._entry.76, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 6532, i64 6533]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 16, i64 8195, i64 8196, i64 57345, i64 57346, i64 57352, i64 57353]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 137, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 237, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 266, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 267, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 976, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"pseudo_random\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 37, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 625, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 630, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 675, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 723, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 738, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 739, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 747, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 763, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 778, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 780, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 872, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 879, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 902, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 913, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1009, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1059, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1072, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1084, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 338, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 351, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 394, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [19 x i8] c"../fs/jffs2/scan.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 402, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @jffs2_scan_dirent_node._entry, ptr @jffs2_scan_dirent_node._entry.64, ptr @jffs2_scan_dirent_node._entry.67, ptr @jffs2_scan_dirent_node._entry_ptr, ptr @jffs2_scan_dirent_node._entry_ptr.66, ptr @jffs2_scan_dirent_node._entry_ptr.69, ptr @jffs2_scan_eraseblock._entry, ptr @jffs2_scan_eraseblock._entry.16, ptr @jffs2_scan_eraseblock._entry.19, ptr @jffs2_scan_eraseblock._entry.22, ptr @jffs2_scan_eraseblock._entry.25, ptr @jffs2_scan_eraseblock._entry.28, ptr @jffs2_scan_eraseblock._entry.31, ptr @jffs2_scan_eraseblock._entry.34, ptr @jffs2_scan_eraseblock._entry.37, ptr @jffs2_scan_eraseblock._entry.40, ptr @jffs2_scan_eraseblock._entry.42, ptr @jffs2_scan_eraseblock._entry.45, ptr @jffs2_scan_eraseblock._entry.48, ptr @jffs2_scan_eraseblock._entry.51, ptr @jffs2_scan_eraseblock._entry.54, ptr @jffs2_scan_eraseblock._entry.57, ptr @jffs2_scan_eraseblock._entry_ptr, ptr @jffs2_scan_eraseblock._entry_ptr.18, ptr @jffs2_scan_eraseblock._entry_ptr.21, ptr @jffs2_scan_eraseblock._entry_ptr.24, ptr @jffs2_scan_eraseblock._entry_ptr.27, ptr @jffs2_scan_eraseblock._entry_ptr.30, ptr @jffs2_scan_eraseblock._entry_ptr.33, ptr @jffs2_scan_eraseblock._entry_ptr.36, ptr @jffs2_scan_eraseblock._entry_ptr.39, ptr @jffs2_scan_eraseblock._entry_ptr.41, ptr @jffs2_scan_eraseblock._entry_ptr.44, ptr @jffs2_scan_eraseblock._entry_ptr.47, ptr @jffs2_scan_eraseblock._entry_ptr.50, ptr @jffs2_scan_eraseblock._entry_ptr.53, ptr @jffs2_scan_eraseblock._entry_ptr.56, ptr @jffs2_scan_eraseblock._entry_ptr.59, ptr @jffs2_scan_inode_node._entry, ptr @jffs2_scan_inode_node._entry_ptr, ptr @jffs2_scan_make_ino_cache._entry, ptr @jffs2_scan_make_ino_cache._entry_ptr, ptr @jffs2_scan_medium._entry, ptr @jffs2_scan_medium._entry.3, ptr @jffs2_scan_medium._entry.6, ptr @jffs2_scan_medium._entry.9, ptr @jffs2_scan_medium._entry_ptr, ptr @jffs2_scan_medium._entry_ptr.11, ptr @jffs2_scan_medium._entry_ptr.5, ptr @jffs2_scan_medium._entry_ptr.8, ptr @jffs2_scan_xattr_node._entry, ptr @jffs2_scan_xattr_node._entry.72, ptr @jffs2_scan_xattr_node._entry_ptr, ptr @jffs2_scan_xattr_node._entry_ptr.74, ptr @jffs2_scan_xref_node._entry, ptr @jffs2_scan_xref_node._entry.76, ptr @jffs2_scan_xref_node._entry_ptr, ptr @jffs2_scan_xref_node._entry_ptr.78, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @pseudo_random, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_medium._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_medium._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_medium._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_medium._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_make_ino_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pseudo_random to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_eraseblock._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_inode_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_dirent_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_dirent_node._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_dirent_node._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_xattr_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_xattr_node._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_xref_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_scan_xref_node._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_scan_medium(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  %retlen.i1330.i = alloca i32, align 4
  %retlen.i1317.i = alloca i32, align 4
  %retlen.i1307.i = alloca i32, align 4
  %retlen.i.i = alloca i32, align 4
  %crcnode.i = alloca %struct.jffs2_unknown_node, align 2
  %flashbuf = alloca ptr, align 4
  %pointlen = alloca i32, align 4
  %try_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flashbuf) #11
  %0 = ptrtoint ptr %flashbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %flashbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pointlen) #11
  %1 = ptrtoint ptr %pointlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pointlen, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %try_size) #11
  %2 = ptrtoint ptr %try_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %try_size, align 4, !annotation !132
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size, align 8
  %conv = trunc i64 %6 to i32
  %call = call i32 @mtd_point(ptr noundef %4, i64 noundef 0, i32 noundef %conv, ptr noundef nonnull %pointlen, ptr noundef nonnull %flashbuf, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %pointlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pointlen, align 4
  %conv2 = zext i32 %8 to i64
  %9 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c, align 4
  %size4 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %size4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv2)
  %cmp = icmp ugt i64 %12, %conv2
  br i1 %cmp, label %if.end.thread, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 @mtd_unpoint(ptr noundef %10, i64 noundef 0, i32 noundef %8) #11
  %13 = ptrtoint ptr %flashbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %flashbuf, align 4
  br label %if.then18

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %flashbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %flashbuf, align 4
  %tobool17.not = icmp eq ptr %.pr, null
  br i1 %tobool17.not, label %if.end.if.then18_crit_edge, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %if.end.if.then18_crit_edge, %if.end.thread
  %15 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %18)
  %cmp21 = icmp eq i8 %18, 4
  br i1 %cmp21, label %if.then23, label %if.then18.do.end27_crit_edge

if.then18.do.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %19 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sector_size, align 4
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %if.then18.do.end27_crit_edge
  %storemerge = phi i32 [ %20, %if.then23 ], [ 4096, %if.then18.do.end27_crit_edge ]
  %21 = ptrtoint ptr %try_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %try_size, align 4
  %call29 = call ptr @mtd_kmalloc_up_to(ptr noundef %16, ptr noundef nonnull %try_size) #11
  %22 = ptrtoint ptr %flashbuf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call29, ptr %flashbuf, align 4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end27.cleanup219_crit_edge, label %do.end35

do.end27.cleanup219_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

do.end35:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %try_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %try_size, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %if.end.if.end36_crit_edge
  %buf_size.0 = phi i32 [ 0, %if.end.if.end36_crit_edge ], [ %24, %do.end35 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 24) #14
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %do.end42, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end36
  %nr_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 27
  %26 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp47440.not = icmp eq i32 %27, 0
  br i1 %cmp47440.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size.0)
  %tobool51.not = icmp eq i32 %buf_size.0, 0
  %28 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %crcnode.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %crcnode.i, i32 0, i32 2
  %wbuf_pagesize.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %sector_size34.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %tobool12.not.not.i = xor i1 %tobool51.not, true
  %cleanmarker_size696.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %flags.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 3
  %os_priv.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 72
  %dirty_size848.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %wasted_size851.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %bad_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 41
  %bad_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 15
  %free_size120 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %erase_pending_list110 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %nr_erasing_blocks111 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %clean_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31
  %free_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40
  %nr_free_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  br label %for.body

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %30 = call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid.i, align 8
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %35, ptr noundef nonnull @.str.1) #15
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0445 = phi i32 [ 0, %for.body.lr.ph ], [ %inc133, %for.inc.for.body_crit_edge ]
  %empty_blocks.0443 = phi i32 [ 0, %for.body.lr.ph ], [ %empty_blocks.1, %for.inc.for.body_crit_edge ]
  %bad_blocks.0441 = phi i32 [ 0, %for.body.lr.ph ], [ %bad_blocks.1, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %blocks, align 4
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 146, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  call void @jffs2_sum_reset_collected(ptr noundef nonnull %call7.i.i) #11
  %38 = ptrtoint ptr %flashbuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %flashbuf, align 4
  br i1 %tobool51.not, label %cond.false, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %offset = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 2
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.false ], [ %39, %for.body.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %crcnode.i) #11
  %offset.i = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 2
  %42 = call ptr @memset(ptr %crcnode.i, i32 255, i32 12)
  %43 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset.i, align 4
  %sub.i = add i32 %44, -1
  %45 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %c, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp.i = icmp eq i8 %48, 4
  br i1 %cmp.i, label %if.then.i, label %cond.end.if.end11.i_crit_edge

cond.end.if.end11.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then.i:                                        ; preds = %cond.end
  %conv5.i = zext i32 %44 to i64
  %call.i329 = call i32 @mtd_block_isbad(ptr noundef %46, i64 noundef %conv5.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool.not.i = icmp eq i32 %call.i329, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.jffs2_scan_eraseblock.exit.thread_crit_edge

if.then.i.jffs2_scan_eraseblock.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %call7.i = call i32 @jffs2_check_nand_cleanmarker(ptr noundef %c, ptr noundef %arrayidx) #11
  %49 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7.i, label %if.end.i.jffs2_scan_eraseblock.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.if.end11.i_crit_edge
  ]

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end.i.jffs2_scan_eraseblock.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %sw.bb.i, %if.end.i.if.end11.i_crit_edge, %cond.end.if.end11.i_crit_edge
  %tobool143.not.i = phi i32 [ 0, %if.end.i.if.end11.i_crit_edge ], [ 3, %sw.bb.i ], [ 0, %cond.end.if.end11.i_crit_edge ]
  %cleanmarkerfound.2.i = phi i32 [ 0, %if.end.i.if.end11.i_crit_edge ], [ 1, %sw.bb.i ], [ 0, %cond.end.if.end11.i_crit_edge ]
  br i1 %tobool51.not, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end11.i
  %50 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sector_size34.i, align 4
  %add.ptr.i = getelementptr i8, ptr %cond, i32 -8
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %51
  %magic.i = getelementptr inbounds %struct.jffs2_sum_marker, ptr %add.ptr14.i, i32 0, i32 1
  %52 = ptrtoint ptr %magic.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %magic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 42276997, i32 %53)
  %cmp15.i = icmp eq i32 %53, 42276997
  br i1 %cmp15.i, label %if.then17.i, label %full_scan.thread1376.i

full_scan.thread1376.i:                           ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i, align 4
  br label %if.then111.i

if.then17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %add.ptr14.i, align 1
  %add.ptr20.i = getelementptr i8, ptr %cond, i32 %57
  %sub24.i = sub i32 %51, %57
  br label %if.end91.i

if.else.i:                                        ; preds = %if.end11.i
  %58 = ptrtoint ptr %wbuf_pagesize.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wbuf_pagesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool26.not.i = icmp eq i32 %59, 0
  %..i = select i1 %tobool26.not.i, i32 8, i32 %59
  %idx.neg.i = sub i32 0, %..i
  %add.ptr31.i = getelementptr i8, ptr %cond, i32 %buf_size.0
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %idx.neg.i
  %60 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i, align 4
  %62 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sector_size34.i, align 4
  %add.i = add i32 %63, %61
  %sub35.i = sub i32 %add.i, %..i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i.i) #11
  %64 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %retlen.i.i, align 4, !annotation !132
  %conv.i.i = zext i32 %sub35.i to i64
  %call.i.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i.i, i32 noundef %..i, ptr noundef nonnull %retlen.i.i, ptr noundef %add.ptr32.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i1306.i, label %if.else.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge

if.else.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit.thread.i

if.end.i1306.i:                                   ; preds = %if.else.i
  %65 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %retlen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %..i)
  %cmp.i1305.i = icmp ult i32 %66, %..i
  br i1 %cmp.i1305.i, label %if.end.i1306.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge, label %if.end39.i

if.end.i1306.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge: ; preds = %if.end.i1306.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit.thread.i

jffs2_fill_scan_buf.exit.thread.i:                ; preds = %if.end.i1306.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge, %if.else.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.else.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge ], [ -5, %if.end.i1306.i.jffs2_fill_scan_buf.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #11
  br label %jffs2_scan_eraseblock.exit

if.end39.i:                                       ; preds = %if.end.i1306.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #11
  %add.ptr41.i = getelementptr i8, ptr %add.ptr31.i, i32 -8
  %magic42.i = getelementptr inbounds %struct.jffs2_sum_marker, ptr %add.ptr41.i, i32 0, i32 1
  %67 = ptrtoint ptr %magic42.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %magic42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 42276997, i32 %68)
  %cmp44.i = icmp eq i32 %68, 42276997
  br i1 %cmp44.i, label %if.then46.i, label %if.end39.i.if.else113.sink.split.i_crit_edge

if.end39.i.if.else113.sink.split.i_crit_edge:     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113.sink.split.i

if.then46.i:                                      ; preds = %if.end39.i
  %69 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sector_size34.i, align 4
  %71 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %add.ptr41.i, align 1
  %sub50.i = sub i32 %70, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp55.i = icmp ult i32 %70, %72
  br i1 %cmp55.i, label %if.then46.i.if.else113.sink.split.i_crit_edge, label %if.end58.i

if.then46.i.if.else113.sink.split.i_crit_edge:    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113.sink.split.i

if.end58.i:                                       ; preds = %if.then46.i
  %idx.neg52.i = sub i32 0, %sub50.i
  %add.ptr53.i = getelementptr i8, ptr %add.ptr31.i, i32 %idx.neg52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub50.i, i32 %buf_size.0)
  %cmp59.i = icmp ugt i32 %sub50.i, %buf_size.0
  br i1 %cmp59.i, label %if.end8.i.i, label %if.end58.i.if.end72.i_crit_edge

if.end58.i.if.end72.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.end8.i.i:                                      ; preds = %if.end58.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub50.i, i32 noundef 3264) #16
  %tobool63.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool63.not.i, label %if.end8.i.i.jffs2_scan_eraseblock.exit.thread374_crit_edge, label %if.end65.i

if.end8.i.i.jffs2_scan_eraseblock.exit.thread374_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread374

if.end65.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr66.i = getelementptr i8, ptr %call9.i.i, i32 %sub50.i
  %add.ptr68.i = getelementptr i8, ptr %add.ptr66.i, i32 %idx.neg.i
  %73 = call ptr @memcpy(ptr %add.ptr68.i, ptr %add.ptr32.i, i32 %..i)
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.end65.i, %if.end58.i.if.end72.i_crit_edge
  %sumptr.0.i = phi ptr [ %call9.i.i, %if.end65.i ], [ %add.ptr53.i, %if.end58.i.if.end72.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub50.i, i32 %..i)
  %cmp73.i = icmp ugt i32 %sub50.i, %..i
  br i1 %cmp73.i, label %if.then75.i, label %if.end72.i.if.end91.i_crit_edge

if.end72.i.if.end91.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then75.i:                                      ; preds = %if.end72.i
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i, align 4
  %76 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sector_size34.i, align 4
  %add78.i = sub i32 %75, %sub50.i
  %sub79.i = add i32 %add78.i, %77
  %sub80.i = sub i32 %sub50.i, %..i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #11
  %78 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %retlen.i, align 4, !annotation !132
  %conv.i = zext i32 %sub79.i to i64
  %call.i360 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i, i32 noundef %sub80.i, ptr noundef nonnull %retlen.i, ptr noundef %sumptr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i360)
  %tobool.not.i361 = icmp eq i32 %call.i360, 0
  br i1 %tobool.not.i361, label %if.end.i364, label %if.then75.i.if.then83.i_crit_edge

if.then75.i.if.then83.i_crit_edge:                ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83.i

if.end.i364:                                      ; preds = %if.then75.i
  %79 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub80.i)
  %cmp.i362 = icmp ult i32 %80, %sub80.i
  br i1 %cmp.i362, label %if.end.i364.if.then83.i_crit_edge, label %jffs2_fill_scan_buf.exit

if.end.i364.if.then83.i_crit_edge:                ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83.i

jffs2_fill_scan_buf.exit:                         ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #11
  br label %if.end91.i

if.then83.i:                                      ; preds = %if.end.i364.if.then83.i_crit_edge, %if.then75.i.if.then83.i_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i360, %if.then75.i.if.then83.i_crit_edge ], [ -5, %if.end.i364.if.then83.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #11
  br i1 %cmp59.i, label %if.then86.i, label %if.then83.i.jffs2_scan_eraseblock.exit_crit_edge

if.then83.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.then86.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %sumptr.0.i) #11
  br label %jffs2_scan_eraseblock.exit

if.end91.i:                                       ; preds = %jffs2_fill_scan_buf.exit, %if.end72.i.if.end91.i_crit_edge, %if.then17.i
  %sumlen.0.i = phi i32 [ %sub50.i, %jffs2_fill_scan_buf.exit ], [ %sub50.i, %if.end72.i.if.end91.i_crit_edge ], [ %sub24.i, %if.then17.i ]
  %sumptr.1.i = phi ptr [ %sumptr.0.i, %jffs2_fill_scan_buf.exit ], [ %sumptr.0.i, %if.end72.i.if.end91.i_crit_edge ], [ %add.ptr20.i, %if.then17.i ]
  %tobool92.not.i = icmp eq ptr %sumptr.1.i, null
  br i1 %tobool92.not.i, label %if.end91.i.full_scan.i_crit_edge, label %if.then93.i

if.end91.i.full_scan.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %full_scan.i

if.then93.i:                                      ; preds = %if.end91.i
  %call94.i = call i32 @jffs2_sum_scan_sumnode(ptr noundef %c, ptr noundef %arrayidx, ptr noundef nonnull %sumptr.1.i, i32 noundef %sumlen.0.i, ptr noundef nonnull @pseudo_random) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %sumlen.0.i, i32 %buf_size.0)
  %cmp96.i = icmp ugt i32 %sumlen.0.i, %buf_size.0
  %or.cond.i = select i1 %tobool12.not.not.i, i1 %cmp96.i, i1 false
  br i1 %or.cond.i, label %if.then98.i, label %if.then93.i.if.end99.i_crit_edge

if.then93.i.if.end99.i_crit_edge:                 ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

if.then98.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %sumptr.1.i) #11
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %if.then93.i.if.end99.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool100.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool100.not.i, label %if.end99.i.full_scan.i_crit_edge, label %if.end99.i.jffs2_scan_eraseblock.exit_crit_edge

if.end99.i.jffs2_scan_eraseblock.exit_crit_edge:  ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end99.i.full_scan.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %full_scan.i

full_scan.i:                                      ; preds = %if.end99.i.full_scan.i_crit_edge, %if.end91.i.full_scan.i_crit_edge
  %81 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %offset.i, align 4
  br i1 %tobool51.not, label %full_scan.i.if.then111.i_crit_edge, label %full_scan.i.if.else113.i_crit_edge

full_scan.i.if.else113.i_crit_edge:               ; preds = %full_scan.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113.i

full_scan.i.if.then111.i_crit_edge:               ; preds = %full_scan.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then111.i

if.then111.i:                                     ; preds = %full_scan.i.if.then111.i_crit_edge, %full_scan.thread1376.i
  %83 = phi i32 [ %55, %full_scan.thread1376.i ], [ %82, %full_scan.i.if.then111.i_crit_edge ]
  %84 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sector_size34.i, align 4
  br label %if.end120.i

if.else113.sink.split.i:                          ; preds = %if.then46.i.if.else113.sink.split.i_crit_edge, %if.end39.i.if.else113.sink.split.i_crit_edge
  %86 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset.i, align 4
  br label %if.else113.i

if.else113.i:                                     ; preds = %if.else113.sink.split.i, %full_scan.i.if.else113.i_crit_edge
  %88 = phi i32 [ %82, %full_scan.i.if.else113.i_crit_edge ], [ %87, %if.else113.sink.split.i ]
  %89 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sector_size34.i, align 4
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 256) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i1307.i) #11
  %92 = ptrtoint ptr %retlen.i1307.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %retlen.i1307.i, align 4, !annotation !132
  %conv.i1308.i = zext i32 %88 to i64
  %call.i1309.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i1308.i, i32 noundef %91, ptr noundef nonnull %retlen.i1307.i, ptr noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1309.i)
  %tobool.not.i1310.i = icmp eq i32 %call.i1309.i, 0
  br i1 %tobool.not.i1310.i, label %if.end.i1313.i, label %if.else113.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge

if.else113.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge: ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit1315.thread.i

if.end.i1313.i:                                   ; preds = %if.else113.i
  %93 = ptrtoint ptr %retlen.i1307.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %retlen.i1307.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %91)
  %cmp.i1311.i = icmp ult i32 %94, %91
  br i1 %cmp.i1311.i, label %if.end.i1313.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge, label %jffs2_fill_scan_buf.exit1315.i

if.end.i1313.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge: ; preds = %if.end.i1313.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit1315.thread.i

jffs2_fill_scan_buf.exit1315.thread.i:            ; preds = %if.end.i1313.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge, %if.else113.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge
  %retval.0.i1314.ph.i = phi i32 [ %call.i1309.i, %if.else113.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge ], [ -5, %if.end.i1313.i.jffs2_fill_scan_buf.exit1315.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i1307.i) #11
  br label %jffs2_scan_eraseblock.exit

jffs2_fill_scan_buf.exit1315.i:                   ; preds = %if.end.i1313.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i1307.i) #11
  br label %if.end120.i

if.end120.i:                                      ; preds = %jffs2_fill_scan_buf.exit1315.i, %if.then111.i
  %95 = phi i32 [ %88, %jffs2_fill_scan_buf.exit1315.i ], [ %83, %if.then111.i ]
  %buf_len.1.i = phi i32 [ %91, %jffs2_fill_scan_buf.exit1315.i ], [ %85, %if.then111.i ]
  %96 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sector_size34.i, align 4
  %98 = call i32 @llvm.umin.i32(i32 %97, i32 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp1231412.not.i = icmp eq i32 %98, 0
  br i1 %cmp1231412.not.i, label %if.end120.i.if.then130.i_crit_edge, label %land.rhs.preheader.i

if.end120.i.if.then130.i_crit_edge:               ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then130.i

land.rhs.preheader.i:                             ; preds = %if.end120.i
  %99 = add nuw nsw i32 %98, 3
  %100 = and i32 %99, 1020
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %ofs.01413.i = phi i32 [ %add127.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %land.rhs.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %cond, i32 %ofs.01413.i
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp125.i = icmp eq i32 %102, -1
  br i1 %cmp125.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %add127.i = add nuw nsw i32 %ofs.01413.i, 4
  %cmp123.i = icmp ult i32 %add127.i, %98
  br i1 %cmp123.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %ofs.0.lcssa.i = phi i32 [ %ofs.01413.i, %land.rhs.i.while.end.i_crit_edge ], [ %100, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ofs.0.lcssa.i, i32 %98)
  %cmp128.i = icmp eq i32 %ofs.0.lcssa.i, %98
  br i1 %cmp128.i, label %while.end.i.if.then130.i_crit_edge, label %if.end155.i

while.end.i.if.then130.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then130.i

if.then130.i:                                     ; preds = %while.end.i.if.then130.i_crit_edge, %if.end120.i.if.then130.i_crit_edge
  %103 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %c, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %106)
  %cmp134.i = icmp eq i8 %106, 4
  br i1 %cmp134.i, label %if.then136.i, label %do.end150.i

if.then136.i:                                     ; preds = %if.then130.i
  %call138.i = call i32 @jffs2_check_oob_empty(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %cleanmarkerfound.2.i) #11
  %107 = zext i32 %call138.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call138.i, label %if.then136.i.jffs2_scan_eraseblock.exit_crit_edge [
    i32 0, label %sw.bb142.i
    i32 1, label %if.then136.i.jffs2_scan_eraseblock.exit.thread_crit_edge
  ]

if.then136.i.jffs2_scan_eraseblock.exit.thread_crit_edge: ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

if.then136.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

sw.bb142.i:                                       ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

do.end150.i:                                      ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %cleanmarker_size696.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cleanmarker_size696.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp151.i = icmp eq i32 %109, 0
  %.1300.i = select i1 %cmp151.i, i32 3, i32 0
  br label %jffs2_scan_eraseblock.exit.thread

if.end155.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ofs.0.lcssa.i)
  %tobool156.not.i = icmp eq i32 %ofs.0.lcssa.i, 0
  br i1 %tobool156.not.i, label %if.end155.i.if.end169.i_crit_edge, label %do.end160.i

if.end155.i.if.end169.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169.i

do.end160.i:                                      ; preds = %if.end155.i
  %call161.i = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %tobool162.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool162.not.i, label %if.end164.i, label %do.end160.i.jffs2_scan_eraseblock.exit_crit_edge

do.end160.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end164.i:                                      ; preds = %do.end160.i
  %call165.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %ofs.0.lcssa.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165.i)
  %tobool166.not.i = icmp eq i32 %call165.i, 0
  br i1 %tobool166.not.i, label %if.end164.i.if.end169.i_crit_edge, label %if.end164.i.jffs2_scan_eraseblock.exit_crit_edge

if.end164.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end164.i.if.end169.i_crit_edge:                ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.end164.i.if.end169.i_crit_edge, %if.end155.i.if.end169.i_crit_edge
  %110 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %offset.i, align 4
  %add171.i = add i32 %111, %ofs.0.lcssa.i
  %first_node714.i = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 9
  %used_size.i = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 4
  %dirty_size.i = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 5
  br label %scan_more.i

scan_more.i:                                      ; preds = %do.end282.i.scan_more.i_crit_edge, %if.end169.i
  %noise.0.i = phi i32 [ 10, %if.end169.i ], [ %noise.11417.i, %do.end282.i.scan_more.i_crit_edge ]
  %buf_len.2.i = phi i32 [ %buf_len.1.i, %if.end169.i ], [ %buf_len.5.ph.i, %do.end282.i.scan_more.i_crit_edge ]
  %buf_ofs.0.i = phi i32 [ %95, %if.end169.i ], [ %buf_ofs.3.ph.i, %do.end282.i.scan_more.i_crit_edge ]
  %prevofs.0.i = phi i32 [ %sub.i, %if.end169.i ], [ %ofs.21421.i, %do.end282.i.scan_more.i_crit_edge ]
  %ofs.1.i = phi i32 [ %add171.i, %if.end169.i ], [ %ofs.41425.i, %do.end282.i.scan_more.i_crit_edge ]
  %112 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset.i, align 4
  %114 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sector_size34.i, align 4
  %add1751415.i = add i32 %115, %113
  call void @__sanitizer_cov_trace_cmp4(i32 %ofs.1.i, i32 %add1751415.i)
  %cmp1761416.i = icmp ult i32 %ofs.1.i, %add1751415.i
  br i1 %cmp1761416.i, label %scan_more.i.while.body178.i_crit_edge, label %scan_more.i.while.end830.i_crit_edge

scan_more.i.while.end830.i_crit_edge:             ; preds = %scan_more.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end830.i

scan_more.i.while.body178.i_crit_edge:            ; preds = %scan_more.i
  br label %while.body178.i

while.body178.i:                                  ; preds = %while.cond172.backedge.i.while.body178.i_crit_edge, %scan_more.i.while.body178.i_crit_edge
  %ofs.21421.i = phi i32 [ %ofs.2.be.i, %while.cond172.backedge.i.while.body178.i_crit_edge ], [ %ofs.1.i, %scan_more.i.while.body178.i_crit_edge ]
  %prevofs.11420.i = phi i32 [ %prevofs.1.be.i, %while.cond172.backedge.i.while.body178.i_crit_edge ], [ %prevofs.0.i, %scan_more.i.while.body178.i_crit_edge ]
  %buf_ofs.11419.i = phi i32 [ %buf_ofs.1.be.i, %while.cond172.backedge.i.while.body178.i_crit_edge ], [ %buf_ofs.0.i, %scan_more.i.while.body178.i_crit_edge ]
  %buf_len.31418.i = phi i32 [ %buf_len.3.be.i, %while.cond172.backedge.i.while.body178.i_crit_edge ], [ %buf_len.2.i, %scan_more.i.while.body178.i_crit_edge ]
  %noise.11417.i = phi i32 [ %noise.1.be.i, %while.cond172.backedge.i.while.body178.i_crit_edge ], [ %noise.0.i, %scan_more.i.while.body178.i_crit_edge ]
  %call179.i = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.i)
  %tobool180.not.i = icmp eq i32 %call179.i, 0
  br i1 %tobool180.not.i, label %if.end182.i, label %while.body178.i.jffs2_scan_eraseblock.exit_crit_edge

while.body178.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %while.body178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end182.i:                                      ; preds = %while.body178.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 622, i32 noundef 0) #11
  %call.i1316.i = call i32 @__cond_resched() #11
  %and.i331 = and i32 %ofs.21421.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i331)
  %tobool185.not.i = icmp eq i32 %and.i331, 0
  br i1 %tobool185.not.i, label %if.end194.i, label %do.end189.i

do.end189.i:                                      ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #13
  %call191.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %ofs.21421.i) #15
  %add192.i = add i32 %ofs.21421.i, 3
  %and193.i = and i32 %add192.i, -4
  br label %while.cond172.backedge.i

while.cond172.backedge.i:                         ; preds = %do.end816.i, %if.end807.i, %if.end781.i, %if.end749.i, %if.else728.i, %do.end719.i.while.cond172.backedge.i_crit_edge, %do.end702.i.while.cond172.backedge.i_crit_edge, %if.end684.i, %if.end648.i, %if.end612.i, %if.end576.i, %if.end538.i, %if.end519.i, %if.end492.i, %if.end442.i, %if.end408.i, %if.end386.i, %if.end371.i, %if.end206.i, %do.end189.i
  %noise.1.be.i = phi i32 [ %noise.11417.i, %do.end189.i ], [ %noise.11417.i, %if.end206.i ], [ %noise.11417.i, %if.end371.i ], [ %noise.11417.i, %if.end386.i ], [ %noise.11417.i, %if.end408.i ], [ %noise.2.i, %if.end442.i ], [ %noise.3.i, %if.end492.i ], [ %noise.11417.i, %if.end519.i ], [ %noise.11417.i, %if.end538.i ], [ %noise.11417.i, %do.end719.i.while.cond172.backedge.i_crit_edge ], [ %noise.11417.i, %do.end702.i.while.cond172.backedge.i_crit_edge ], [ %noise.11417.i, %if.end781.i ], [ %noise.11417.i, %if.end807.i ], [ %noise.11417.i, %do.end816.i ], [ %noise.11417.i, %if.else728.i ], [ %noise.11417.i, %if.end749.i ], [ %noise.11417.i, %if.end684.i ], [ %noise.11417.i, %if.end648.i ], [ %noise.11417.i, %if.end612.i ], [ %noise.11417.i, %if.end576.i ]
  %buf_len.3.be.i = phi i32 [ %buf_len.31418.i, %do.end189.i ], [ %buf_len.31418.i, %if.end206.i ], [ %buf_len.4.i, %if.end371.i ], [ %buf_len.4.i, %if.end386.i ], [ %buf_len.4.i, %if.end408.i ], [ %buf_len.4.i, %if.end442.i ], [ %buf_len.4.i, %if.end492.i ], [ %buf_len.4.i, %if.end519.i ], [ %buf_len.4.i, %if.end538.i ], [ %buf_len.4.i, %do.end719.i.while.cond172.backedge.i_crit_edge ], [ %buf_len.4.i, %do.end702.i.while.cond172.backedge.i_crit_edge ], [ %buf_len.4.i, %if.end781.i ], [ %buf_len.4.i, %if.end807.i ], [ %buf_len.4.i, %do.end816.i ], [ %buf_len.4.i, %if.else728.i ], [ %buf_len.4.i, %if.end749.i ], [ %buf_len.10.i, %if.end684.i ], [ %buf_len.9.i, %if.end648.i ], [ %buf_len.8.i, %if.end612.i ], [ %buf_len.7.i, %if.end576.i ]
  %buf_ofs.1.be.i = phi i32 [ %buf_ofs.11419.i, %do.end189.i ], [ %buf_ofs.11419.i, %if.end206.i ], [ %buf_ofs.2.i, %if.end371.i ], [ %buf_ofs.2.i, %if.end386.i ], [ %buf_ofs.2.i, %if.end408.i ], [ %buf_ofs.2.i, %if.end442.i ], [ %buf_ofs.2.i, %if.end492.i ], [ %buf_ofs.2.i, %if.end519.i ], [ %buf_ofs.2.i, %if.end538.i ], [ %buf_ofs.2.i, %do.end719.i.while.cond172.backedge.i_crit_edge ], [ %buf_ofs.2.i, %do.end702.i.while.cond172.backedge.i_crit_edge ], [ %buf_ofs.2.i, %if.end781.i ], [ %buf_ofs.2.i, %if.end807.i ], [ %buf_ofs.2.i, %do.end816.i ], [ %buf_ofs.2.i, %if.else728.i ], [ %buf_ofs.2.i, %if.end749.i ], [ %buf_ofs.7.i, %if.end684.i ], [ %buf_ofs.6.i, %if.end648.i ], [ %buf_ofs.5.i, %if.end612.i ], [ %buf_ofs.4.i, %if.end576.i ]
  %prevofs.1.be.i = phi i32 [ %prevofs.11420.i, %do.end189.i ], [ %ofs.21421.i, %if.end206.i ], [ %ofs.21421.i, %if.end371.i ], [ %ofs.21421.i, %if.end386.i ], [ %ofs.21421.i, %if.end408.i ], [ %ofs.21421.i, %if.end442.i ], [ %ofs.21421.i, %if.end492.i ], [ %ofs.21421.i, %if.end519.i ], [ %ofs.21421.i, %if.end538.i ], [ %ofs.21421.i, %do.end719.i.while.cond172.backedge.i_crit_edge ], [ %ofs.21421.i, %do.end702.i.while.cond172.backedge.i_crit_edge ], [ %ofs.21421.i, %if.end781.i ], [ %ofs.21421.i, %if.end807.i ], [ %ofs.21421.i, %do.end816.i ], [ %ofs.21421.i, %if.else728.i ], [ %ofs.21421.i, %if.end749.i ], [ %ofs.21421.i, %if.end684.i ], [ %ofs.21421.i, %if.end648.i ], [ %ofs.21421.i, %if.end612.i ], [ %ofs.21421.i, %if.end576.i ]
  %ofs.2.be.i = phi i32 [ %and193.i, %do.end189.i ], [ %add207.i, %if.end206.i ], [ %add372.i, %if.end371.i ], [ %add387.i, %if.end386.i ], [ %add409.i, %if.end408.i ], [ %add443.i, %if.end442.i ], [ %add493.i, %if.end492.i ], [ %add520.i, %if.end519.i ], [ %add543.i, %if.end538.i ], [ %add212.i, %do.end719.i.while.cond172.backedge.i_crit_edge ], [ %add212.i, %do.end702.i.while.cond172.backedge.i_crit_edge ], [ %add786.i, %if.end781.i ], [ %add812.i, %if.end807.i ], [ %add827.i, %do.end816.i ], [ %add735.i, %if.else728.i ], [ %add754.i, %if.end749.i ], [ %add689.i, %if.end684.i ], [ %add653.i, %if.end648.i ], [ %add617.i, %if.end612.i ], [ %add581.i, %if.end576.i ]
  %116 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset.i, align 4
  %118 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sector_size34.i, align 4
  %add175.i = add i32 %119, %117
  %cmp176.i = icmp ult i32 %ofs.2.be.i, %add175.i
  br i1 %cmp176.i, label %while.cond172.backedge.i.while.body178.i_crit_edge, label %while.cond172.backedge.i.while.end830.i_crit_edge

while.cond172.backedge.i.while.end830.i_crit_edge: ; preds = %while.cond172.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end830.i

while.cond172.backedge.i.while.body178.i_crit_edge: ; preds = %while.cond172.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body178.i

if.end194.i:                                      ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ofs.21421.i, i32 %prevofs.11420.i)
  %cmp195.i = icmp eq i32 %ofs.21421.i, %prevofs.11420.i
  br i1 %cmp195.i, label %do.end200.i, label %if.end208.i

do.end200.i:                                      ; preds = %if.end194.i
  %call202.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %ofs.21421.i) #15
  %call203.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203.i)
  %tobool204.not.i = icmp eq i32 %call203.i, 0
  br i1 %tobool204.not.i, label %if.end206.i, label %do.end200.i.jffs2_scan_eraseblock.exit_crit_edge

do.end200.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end206.i:                                      ; preds = %do.end200.i
  call void @__sanitizer_cov_trace_pc() #13
  %add207.i = add i32 %ofs.21421.i, 4
  br label %while.cond172.backedge.i

if.end208.i:                                      ; preds = %if.end194.i
  %120 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %offset.i, align 4
  %122 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sector_size34.i, align 4
  %add211.i = add i32 %123, %121
  %add212.i = add i32 %ofs.21421.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add211.i, i32 %add212.i)
  %cmp213.i = icmp ult i32 %add211.i, %add212.i
  br i1 %cmp213.i, label %do.end218.i, label %if.end227.i

do.end218.i:                                      ; preds = %if.end208.i
  %sub222.i = sub i32 %add211.i, %ofs.21421.i
  %call223.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %sub222.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223.i)
  %tobool224.not.i = icmp eq i32 %call223.i, 0
  br i1 %tobool224.not.i, label %do.end218.i.while.end830.i_crit_edge, label %do.end218.i.jffs2_scan_eraseblock.exit_crit_edge

do.end218.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

do.end218.i.while.end830.i_crit_edge:             ; preds = %do.end218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end830.i

if.end227.i:                                      ; preds = %if.end208.i
  %add228.i = add i32 %buf_len.31418.i, %buf_ofs.11419.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add228.i, i32 %add212.i)
  %cmp230.i = icmp ult i32 %add228.i, %add212.i
  br i1 %cmp230.i, label %if.then232.i, label %if.end227.i.if.end248.i_crit_edge

if.end227.i.if.end248.i_crit_edge:                ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248.i

if.then232.i:                                     ; preds = %if.end227.i
  %sub236.i = sub i32 %add211.i, %ofs.21421.i
  %124 = call i32 @llvm.umin.i32(i32 %sub236.i, i32 %buf_size.0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i1317.i) #11
  %125 = ptrtoint ptr %retlen.i1317.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %retlen.i1317.i, align 4, !annotation !132
  %conv.i1318.i = zext i32 %ofs.21421.i to i64
  %call.i1319.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i1318.i, i32 noundef %124, ptr noundef nonnull %retlen.i1317.i, ptr noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1319.i)
  %tobool.not.i1320.i = icmp eq i32 %call.i1319.i, 0
  br i1 %tobool.not.i1320.i, label %if.end.i1323.i, label %if.then232.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge

if.then232.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge: ; preds = %if.then232.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit1325.thread.i

if.end.i1323.i:                                   ; preds = %if.then232.i
  %126 = ptrtoint ptr %retlen.i1317.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %retlen.i1317.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %124)
  %cmp.i1321.i = icmp ult i32 %127, %124
  br i1 %cmp.i1321.i, label %if.end.i1323.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge, label %jffs2_fill_scan_buf.exit1325.i

if.end.i1323.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge: ; preds = %if.end.i1323.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit1325.thread.i

jffs2_fill_scan_buf.exit1325.thread.i:            ; preds = %if.end.i1323.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge, %if.then232.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge
  %retval.0.i1324.ph.i = phi i32 [ %call.i1319.i, %if.then232.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge ], [ -5, %if.end.i1323.i.jffs2_fill_scan_buf.exit1325.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i1317.i) #11
  br label %jffs2_scan_eraseblock.exit

jffs2_fill_scan_buf.exit1325.i:                   ; preds = %if.end.i1323.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i1317.i) #11
  br label %if.end248.i

if.end248.i:                                      ; preds = %jffs2_fill_scan_buf.exit1325.i, %if.end227.i.if.end248.i_crit_edge
  %buf_len.4.i = phi i32 [ %buf_len.31418.i, %if.end227.i.if.end248.i_crit_edge ], [ %124, %jffs2_fill_scan_buf.exit1325.i ]
  %buf_ofs.2.i = phi i32 [ %buf_ofs.11419.i, %if.end227.i.if.end248.i_crit_edge ], [ %ofs.21421.i, %jffs2_fill_scan_buf.exit1325.i ]
  %sub249.i = sub i32 %ofs.21421.i, %buf_ofs.2.i
  %arrayidx250.i = getelementptr i8, ptr %cond, i32 %sub249.i
  %128 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx250.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %cmp253.i = icmp eq i32 %129, -1
  br i1 %cmp253.i, label %if.then255.i, label %if.end353.i

if.then255.i:                                     ; preds = %if.end248.i
  %add256.i = add i32 %ofs.21421.i, 4
  %130 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sector_size34.i, align 4
  %132 = call i32 @llvm.umin.i32(i32 %131, i32 256) #11
  %div1299.i = lshr i32 %132, 3
  %133 = call i32 @llvm.umin.i32(i32 %div1299.i, i32 %buf_len.4.i) #11
  br label %more_empty.outer.i

more_empty.outer.i:                               ; preds = %jffs2_fill_scan_buf.exit1338.i, %if.then255.i
  %scan_end.0.ph.i = phi i32 [ %154, %jffs2_fill_scan_buf.exit1338.i ], [ %133, %if.then255.i ]
  %buf_len.5.ph.i = phi i32 [ %154, %jffs2_fill_scan_buf.exit1338.i ], [ %buf_len.4.i, %if.then255.i ]
  %buf_ofs.3.ph.i = phi i32 [ %ofs.4.lcssa.i, %jffs2_fill_scan_buf.exit1338.i ], [ %buf_ofs.2.i, %if.then255.i ]
  %ofs.3.ph.i = phi i32 [ %ofs.4.lcssa.i, %jffs2_fill_scan_buf.exit1338.i ], [ %add256.i, %if.then255.i ]
  br label %more_empty.i

more_empty.i:                                     ; preds = %if.end318.i.more_empty.i_crit_edge, %more_empty.outer.i
  %scan_end.0.i = phi i32 [ %buf_len.5.ph.i, %if.end318.i.more_empty.i_crit_edge ], [ %scan_end.0.ph.i, %more_empty.outer.i ]
  %ofs.3.i = phi i32 [ %ofs.4.lcssa.i, %if.end318.i.more_empty.i_crit_edge ], [ %ofs.3.ph.i, %more_empty.outer.i ]
  %sub269.i = sub i32 %ofs.3.i, %buf_ofs.3.ph.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub269.i, i32 %scan_end.0.i)
  %cmp2711423.i = icmp ult i32 %sub269.i, %scan_end.0.i
  br i1 %cmp2711423.i, label %more_empty.i.while.body273.i_crit_edge, label %more_empty.i.do.end296.i_crit_edge

more_empty.i.do.end296.i_crit_edge:               ; preds = %more_empty.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end296.i

more_empty.i.while.body273.i_crit_edge:           ; preds = %more_empty.i
  br label %while.body273.i

while.body273.i:                                  ; preds = %if.end290.i.while.body273.i_crit_edge, %more_empty.i.while.body273.i_crit_edge
  %ofs.41425.i = phi i32 [ %add292.i, %if.end290.i.while.body273.i_crit_edge ], [ %ofs.3.i, %more_empty.i.while.body273.i_crit_edge ]
  %inbuf_ofs.01424.i = phi i32 [ %add291.i, %if.end290.i.while.body273.i_crit_edge ], [ %sub269.i, %more_empty.i.while.body273.i_crit_edge ]
  %arrayidx274.i = getelementptr i8, ptr %cond, i32 %inbuf_ofs.01424.i
  %134 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx274.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp275.not.i = icmp eq i32 %135, -1
  br i1 %cmp275.not.i, label %if.end290.i, label %do.end282.i, !prof !133

do.end282.i:                                      ; preds = %while.body273.i
  %call284.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %ofs.21421.i, i32 noundef %ofs.41425.i) #15
  %sub285.i = sub i32 %ofs.41425.i, %ofs.21421.i
  %call286.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %sub285.i) #11
  %tobool287.not.i = icmp eq i32 %call286.i, 0
  br i1 %tobool287.not.i, label %do.end282.i.scan_more.i_crit_edge, label %do.end282.i.jffs2_scan_eraseblock.exit_crit_edge

do.end282.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end282.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

do.end282.i.scan_more.i_crit_edge:                ; preds = %do.end282.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scan_more.i

if.end290.i:                                      ; preds = %while.body273.i
  %add291.i = add i32 %inbuf_ofs.01424.i, 4
  %add292.i = add i32 %ofs.41425.i, 4
  %cmp271.i = icmp ult i32 %add291.i, %scan_end.0.i
  br i1 %cmp271.i, label %if.end290.i.while.body273.i_crit_edge, label %if.end290.i.do.end296.i_crit_edge

if.end290.i.do.end296.i_crit_edge:                ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end296.i

if.end290.i.while.body273.i_crit_edge:            ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body273.i

do.end296.i:                                      ; preds = %if.end290.i.do.end296.i_crit_edge, %more_empty.i.do.end296.i_crit_edge
  %ofs.4.lcssa.i = phi i32 [ %ofs.3.i, %more_empty.i.do.end296.i_crit_edge ], [ %add292.i, %if.end290.i.do.end296.i_crit_edge ]
  %136 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_ofs.3.ph.i, i32 %137)
  %cmp298.i = icmp eq i32 %buf_ofs.3.ph.i, %137
  br i1 %cmp298.i, label %land.lhs.true300.i, label %do.end296.i.if.end318.i_crit_edge

do.end296.i.if.end318.i_crit_edge:                ; preds = %do.end296.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318.i

land.lhs.true300.i:                               ; preds = %do.end296.i
  %138 = ptrtoint ptr %used_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %used_size.i, align 4
  %140 = ptrtoint ptr %cleanmarker_size696.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cleanmarker_size696.i, align 4
  %add302.i = add i32 %141, 3
  %and303.i = and i32 %add302.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %and303.i)
  %cmp304.i = icmp ne i32 %139, %and303.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool308.not.i = icmp eq i32 %141, 0
  %or.cond1302.i = select i1 %cmp304.i, i1 true, i1 %tobool308.not.i
  br i1 %or.cond1302.i, label %land.lhs.true300.i.if.end318.i_crit_edge, label %land.lhs.true309.i

land.lhs.true300.i.if.end318.i_crit_edge:         ; preds = %land.lhs.true300.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318.i

land.lhs.true309.i:                               ; preds = %land.lhs.true300.i
  %142 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dirty_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool310.not.i = icmp eq i32 %143, 0
  br i1 %tobool310.not.i, label %land.lhs.true311.i, label %land.lhs.true309.i.if.end318.i_crit_edge

land.lhs.true309.i.if.end318.i_crit_edge:         ; preds = %land.lhs.true309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318.i

land.lhs.true311.i:                               ; preds = %land.lhs.true309.i
  %144 = ptrtoint ptr %first_node714.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %first_node714.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %145, i32 1
  %flash_offset.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %145, i32 1, i32 1
  %146 = ptrtoint ptr %flash_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flash_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %147)
  %cmp.i1326.i = icmp eq i32 %147, -1
  br i1 %cmp.i1326.i, label %if.then.i1328.i, label %land.lhs.true311.i.if.end2.i.i_crit_edge

land.lhs.true311.i.if.end2.i.i_crit_edge:         ; preds = %land.lhs.true311.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i.i

if.then.i1328.i:                                  ; preds = %land.lhs.true311.i
  %148 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i1327.i = icmp eq ptr %149, null
  br i1 %tobool.not.i1327.i, label %if.then.i1328.i.jffs2_scan_eraseblock.exit.thread_crit_edge, label %if.then.i1328.i.if.end2.i.i_crit_edge

if.then.i1328.i.if.end2.i.i_crit_edge:            ; preds = %if.then.i1328.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i.i

if.then.i1328.i.jffs2_scan_eraseblock.exit.thread_crit_edge: ; preds = %if.then.i1328.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

if.end2.i.i:                                      ; preds = %if.then.i1328.i.if.end2.i.i_crit_edge, %land.lhs.true311.i.if.end2.i.i_crit_edge
  %ref.addr.0.i.i = phi ptr [ %149, %if.then.i1328.i.if.end2.i.i_crit_edge ], [ %incdec.ptr.i.i, %land.lhs.true311.i.if.end2.i.i_crit_edge ]
  %flash_offset3.i.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %flash_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flash_offset3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %151)
  %cmp4.i.i = icmp eq i32 %151, -2
  %tobool313.not.i = icmp eq ptr %ref.addr.0.i.i, null
  %or.cond1378.i = select i1 %cmp4.i.i, i1 true, i1 %tobool313.not.i
  br i1 %or.cond1378.i, label %if.end2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, label %if.end2.i.i.if.end318.i_crit_edge

if.end2.i.i.if.end318.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318.i

if.end2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

if.end318.i:                                      ; preds = %if.end2.i.i.if.end318.i_crit_edge, %land.lhs.true309.i.if.end318.i_crit_edge, %land.lhs.true300.i.if.end318.i_crit_edge, %do.end296.i.if.end318.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %scan_end.0.i, i32 %buf_len.5.ph.i)
  %cmp321.not.i = icmp eq i32 %scan_end.0.i, %buf_len.5.ph.i
  %or.cond1304.i = select i1 %tobool12.not.not.i, i1 true, i1 %cmp321.not.i
  br i1 %or.cond1304.i, label %if.end324.i, label %if.end318.i.more_empty.i_crit_edge

if.end318.i.more_empty.i_crit_edge:               ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %more_empty.i

if.end324.i:                                      ; preds = %if.end318.i
  %152 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sector_size34.i, align 4
  %add327.i = sub i32 %137, %ofs.4.lcssa.i
  %sub328.i = add i32 %add327.i, %153
  %154 = call i32 @llvm.umin.i32(i32 %sub328.i, i32 %buf_size.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool336.not.i = icmp eq i32 %154, 0
  br i1 %tobool336.not.i, label %if.end324.i.while.end830.i_crit_edge, label %if.end341.i

if.end324.i.while.end830.i_crit_edge:             ; preds = %if.end324.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end830.i

if.end341.i:                                      ; preds = %if.end324.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i1330.i) #11
  %155 = ptrtoint ptr %retlen.i1330.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -1, ptr %retlen.i1330.i, align 4, !annotation !132
  %conv.i1331.i = zext i32 %ofs.4.lcssa.i to i64
  %call.i1332.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i1331.i, i32 noundef %154, ptr noundef nonnull %retlen.i1330.i, ptr noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1332.i)
  %tobool.not.i1333.i = icmp eq i32 %call.i1332.i, 0
  br i1 %tobool.not.i1333.i, label %if.end.i1336.i, label %if.end341.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge

if.end341.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge: ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit1338.thread.i

if.end.i1336.i:                                   ; preds = %if.end341.i
  %156 = ptrtoint ptr %retlen.i1330.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %retlen.i1330.i, align 4
  %cmp.i1334.i = icmp ult i32 %157, %154
  br i1 %cmp.i1334.i, label %if.end.i1336.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge, label %jffs2_fill_scan_buf.exit1338.i

if.end.i1336.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge: ; preds = %if.end.i1336.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_fill_scan_buf.exit1338.thread.i

jffs2_fill_scan_buf.exit1338.thread.i:            ; preds = %if.end.i1336.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge, %if.end341.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge
  %retval.0.i1337.ph.i = phi i32 [ %call.i1332.i, %if.end341.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge ], [ -5, %if.end.i1336.i.jffs2_fill_scan_buf.exit1338.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i1330.i) #11
  br label %jffs2_scan_eraseblock.exit

jffs2_fill_scan_buf.exit1338.i:                   ; preds = %if.end.i1336.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i1330.i) #11
  br label %more_empty.outer.i

if.end353.i:                                      ; preds = %if.end248.i
  %158 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ofs.21421.i, i32 %159)
  %cmp355.i = icmp eq i32 %ofs.21421.i, %159
  %160 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %arrayidx250.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31463, i16 %161)
  %cmp360.i = icmp eq i16 %161, -31463
  %or.cond1501.i = select i1 %cmp355.i, i1 %cmp360.i, i1 false
  br i1 %or.cond1501.i, label %do.end365.i, label %if.end373.i

do.end365.i:                                      ; preds = %if.end353.i
  %call367.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %ofs.21421.i) #15
  %call368.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368.i)
  %tobool369.not.i = icmp eq i32 %call368.i, 0
  br i1 %tobool369.not.i, label %if.end371.i, label %do.end365.i.jffs2_scan_eraseblock.exit_crit_edge

do.end365.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end365.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end371.i:                                      ; preds = %do.end365.i
  call void @__sanitizer_cov_trace_pc() #13
  %add372.i = add i32 %ofs.21421.i, 4
  br label %while.cond172.backedge.i

if.end373.i:                                      ; preds = %if.end353.i
  %conv376.i = zext i16 %161 to i32
  %162 = zext i16 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %161, label %do.body417.i [
    i16 0, label %do.end382.i
    i16 6532, label %do.end397.i
    i16 6533, label %if.end444.i
  ]

do.end382.i:                                      ; preds = %if.end373.i
  %call383.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383.i)
  %tobool384.not.i = icmp eq i32 %call383.i, 0
  br i1 %tobool384.not.i, label %if.end386.i, label %do.end382.i.jffs2_scan_eraseblock.exit_crit_edge

do.end382.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end382.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end386.i:                                      ; preds = %do.end382.i
  call void @__sanitizer_cov_trace_pc() #13
  %add387.i = add i32 %ofs.21421.i, 4
  br label %while.cond172.backedge.i

do.end397.i:                                      ; preds = %if.end373.i
  %call399.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %ofs.21421.i) #15
  %call404.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  %call405.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call405.i)
  %tobool406.not.i = icmp eq i32 %call405.i, 0
  br i1 %tobool406.not.i, label %if.end408.i, label %do.end397.i.jffs2_scan_eraseblock.exit_crit_edge

do.end397.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end397.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end408.i:                                      ; preds = %do.end397.i
  call void @__sanitizer_cov_trace_pc() #13
  %add409.i = add i32 %ofs.21421.i, 4
  br label %while.cond172.backedge.i

do.body417.i:                                     ; preds = %if.end373.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noise.11417.i)
  %tobool418.not.i = icmp eq i32 %noise.11417.i, 0
  br i1 %tobool418.not.i, label %do.body417.i.do.end438.i_crit_edge, label %do.end422.i

do.body417.i.do.end438.i_crit_edge:               ; preds = %do.body417.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end438.i

do.end422.i:                                      ; preds = %do.body417.i
  %call427.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.15, i32 noundef 6533, i32 noundef %ofs.21421.i, i32 noundef %conv376.i) #15
  %dec.i = add i32 %noise.11417.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool428.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool428.not.i, label %do.end432.i, label %do.end422.i.do.end438.i_crit_edge

do.end422.i.do.end438.i_crit_edge:                ; preds = %do.end422.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end438.i

do.end432.i:                                      ; preds = %do.end422.i
  call void @__sanitizer_cov_trace_pc() #13
  %call434.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %do.end438.i

do.end438.i:                                      ; preds = %do.end432.i, %do.end422.i.do.end438.i_crit_edge, %do.body417.i.do.end438.i_crit_edge
  %noise.2.i = phi i32 [ %dec.i, %do.end422.i.do.end438.i_crit_edge ], [ 0, %do.end432.i ], [ 0, %do.body417.i.do.end438.i_crit_edge ]
  %call439.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call439.i)
  %tobool440.not.i = icmp eq i32 %call439.i, 0
  br i1 %tobool440.not.i, label %if.end442.i, label %do.end438.i.jffs2_scan_eraseblock.exit_crit_edge

do.end438.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end438.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end442.i:                                      ; preds = %do.end438.i
  call void @__sanitizer_cov_trace_pc() #13
  %add443.i = add i32 %ofs.21421.i, 4
  br label %while.cond172.backedge.i

if.end444.i:                                      ; preds = %if.end373.i
  %163 = ptrtoint ptr %crcnode.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 6533, ptr %crcnode.i, align 2
  %nodetype448.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %arrayidx250.i, i32 0, i32 1
  %164 = ptrtoint ptr %nodetype448.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %nodetype448.i, align 1
  %166 = or i16 %165, 8192
  %167 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %28, align 2
  %totlen452.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %arrayidx250.i, i32 0, i32 2
  %168 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %totlen452.i, align 1
  %170 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %169, ptr %29, align 2
  %call453.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %crcnode.i, i32 noundef 8) #17
  %hdr_crc454.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %arrayidx250.i, i32 0, i32 3
  %171 = ptrtoint ptr %hdr_crc454.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %hdr_crc454.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call453.i, i32 %172)
  %cmp456.not.i = icmp eq i32 %call453.i, %172
  br i1 %cmp456.not.i, label %if.end494.i, label %do.body459.i

do.body459.i:                                     ; preds = %if.end444.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noise.11417.i)
  %tobool460.not.i = icmp eq i32 %noise.11417.i, 0
  br i1 %tobool460.not.i, label %do.body459.i.do.end488.i_crit_edge, label %do.end464.i

do.body459.i.do.end488.i_crit_edge:               ; preds = %do.body459.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end488.i

do.end464.i:                                      ; preds = %do.body459.i
  %conv471.i = zext i16 %165 to i32
  %call476.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.15, i32 noundef %ofs.21421.i, i32 noundef %conv376.i, i32 noundef %conv471.i, i32 noundef %169, i32 noundef %172, i32 noundef %call453.i) #15
  %dec477.i = add i32 %noise.11417.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec477.i)
  %tobool478.not.i = icmp eq i32 %dec477.i, 0
  br i1 %tobool478.not.i, label %do.end482.i, label %do.end464.i.do.end488.i_crit_edge

do.end464.i.do.end488.i_crit_edge:                ; preds = %do.end464.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end488.i

do.end482.i:                                      ; preds = %do.end464.i
  call void @__sanitizer_cov_trace_pc() #13
  %call484.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %do.end488.i

do.end488.i:                                      ; preds = %do.end482.i, %do.end464.i.do.end488.i_crit_edge, %do.body459.i.do.end488.i_crit_edge
  %noise.3.i = phi i32 [ %dec477.i, %do.end464.i.do.end488.i_crit_edge ], [ 0, %do.end482.i ], [ 0, %do.body459.i.do.end488.i_crit_edge ]
  %call489.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call489.i)
  %tobool490.not.i = icmp eq i32 %call489.i, 0
  br i1 %tobool490.not.i, label %if.end492.i, label %do.end488.i.jffs2_scan_eraseblock.exit_crit_edge

do.end488.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end488.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end492.i:                                      ; preds = %do.end488.i
  call void @__sanitizer_cov_trace_pc() #13
  %add493.i = add i32 %ofs.21421.i, 4
  br label %while.cond172.backedge.i

if.end494.i:                                      ; preds = %if.end444.i
  %add497.i = add i32 %169, %ofs.21421.i
  %173 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sector_size34.i, align 4
  %add500.i = add i32 %174, %159
  call void @__sanitizer_cov_trace_cmp4(i32 %add497.i, i32 %add500.i)
  %cmp501.i = icmp ugt i32 %add497.i, %add500.i
  br i1 %cmp501.i, label %do.end506.i, label %if.end521.i

do.end506.i:                                      ; preds = %if.end494.i
  %call510.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %ofs.21421.i, i32 noundef %169) #15
  %call515.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  %call516.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call516.i)
  %tobool517.not.i = icmp eq i32 %call516.i, 0
  br i1 %tobool517.not.i, label %if.end519.i, label %do.end506.i.jffs2_scan_eraseblock.exit_crit_edge

do.end506.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end506.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end519.i:                                      ; preds = %do.end506.i
  call void @__sanitizer_cov_trace_pc() #13
  %add520.i = add i32 %ofs.21421.i, 4
  br label %while.cond172.backedge.i

if.end521.i:                                      ; preds = %if.end494.i
  %conv524.i = zext i16 %165 to i32
  %and525.i = and i32 %conv524.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and525.i)
  %tobool526.not.i = icmp eq i32 %and525.i, 0
  br i1 %tobool526.not.i, label %do.end530.i, label %if.end544.i

do.end530.i:                                      ; preds = %if.end521.i
  %add533.i = add i32 %169, 3
  %and534.i = and i32 %add533.i, -4
  %call535.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %and534.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call535.i)
  %tobool536.not.i = icmp eq i32 %call535.i, 0
  br i1 %tobool536.not.i, label %if.end538.i, label %do.end530.i.jffs2_scan_eraseblock.exit_crit_edge

do.end530.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end530.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end538.i:                                      ; preds = %do.end530.i
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %totlen452.i, align 1
  %add541.i = add i32 %176, 3
  %and542.i = and i32 %add541.i, -4
  %add543.i = add i32 %and542.i, %ofs.21421.i
  br label %while.cond172.backedge.i

if.end544.i:                                      ; preds = %if.end521.i
  %177 = zext i16 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %165, label %sw.default755.i [
    i16 -8190, label %sw.bb548.i
    i16 -8191, label %sw.bb582.i
    i16 -8184, label %sw.bb618.i
    i16 -8183, label %sw.bb654.i
    i16 8195, label %do.end693.i
    i16 8196, label %sw.bb738.i
  ]

sw.bb548.i:                                       ; preds = %if.end544.i
  %add549.i = add i32 %buf_ofs.2.i, %buf_len.4.i
  %add550.i = add i32 %ofs.21421.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %add549.i, i32 %add550.i)
  %cmp551.i = icmp ult i32 %add549.i, %add550.i
  br i1 %cmp551.i, label %if.then553.i, label %sw.bb548.i.if.end572.i_crit_edge

sw.bb548.i.if.end572.i_crit_edge:                 ; preds = %sw.bb548.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end572.i

if.then553.i:                                     ; preds = %sw.bb548.i
  %sub557.i = sub i32 %add500.i, %ofs.21421.i
  %178 = call i32 @llvm.umin.i32(i32 %sub557.i, i32 %buf_size.0) #11
  %call568.i = call fastcc i32 @jffs2_fill_scan_buf(ptr noundef %c, ptr noundef %cond, i32 noundef %ofs.21421.i, i32 noundef %178) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call568.i)
  %tobool569.not.i = icmp eq i32 %call568.i, 0
  br i1 %tobool569.not.i, label %if.then553.i.if.end572.i_crit_edge, label %if.then553.i.jffs2_scan_eraseblock.exit_crit_edge

if.then553.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.then553.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.then553.i.if.end572.i_crit_edge:               ; preds = %if.then553.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end572.i

if.end572.i:                                      ; preds = %if.then553.i.if.end572.i_crit_edge, %sw.bb548.i.if.end572.i_crit_edge
  %buf_len.7.i = phi i32 [ %buf_len.4.i, %sw.bb548.i.if.end572.i_crit_edge ], [ %178, %if.then553.i.if.end572.i_crit_edge ]
  %buf_ofs.4.i = phi i32 [ %buf_ofs.2.i, %sw.bb548.i.if.end572.i_crit_edge ], [ %ofs.21421.i, %if.then553.i.if.end572.i_crit_edge ]
  %node.0.i = phi ptr [ %arrayidx250.i, %sw.bb548.i.if.end572.i_crit_edge ], [ %cond, %if.then553.i.if.end572.i_crit_edge ]
  %call573.i = call fastcc i32 @jffs2_scan_inode_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %node.0.i, i32 noundef %ofs.21421.i, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call573.i)
  %tobool574.not.i = icmp eq i32 %call573.i, 0
  br i1 %tobool574.not.i, label %if.end576.i, label %if.end572.i.jffs2_scan_eraseblock.exit_crit_edge

if.end572.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.end572.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end576.i:                                      ; preds = %if.end572.i
  call void @__sanitizer_cov_trace_pc() #13
  %totlen577.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %node.0.i, i32 0, i32 2
  %179 = ptrtoint ptr %totlen577.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %totlen577.i, align 1
  %add579.i = add i32 %180, 3
  %and580.i = and i32 %add579.i, -4
  %add581.i = add i32 %and580.i, %ofs.21421.i
  br label %while.cond172.backedge.i

sw.bb582.i:                                       ; preds = %if.end544.i
  %add583.i = add i32 %buf_ofs.2.i, %buf_len.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add583.i, i32 %add497.i)
  %cmp587.i = icmp ult i32 %add583.i, %add497.i
  br i1 %cmp587.i, label %if.then589.i, label %sw.bb582.i.if.end608.i_crit_edge

sw.bb582.i.if.end608.i_crit_edge:                 ; preds = %sw.bb582.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end608.i

if.then589.i:                                     ; preds = %sw.bb582.i
  %sub593.i = sub i32 %add500.i, %ofs.21421.i
  %181 = call i32 @llvm.umin.i32(i32 %sub593.i, i32 %buf_size.0) #11
  %call604.i = call fastcc i32 @jffs2_fill_scan_buf(ptr noundef %c, ptr noundef %cond, i32 noundef %ofs.21421.i, i32 noundef %181) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call604.i)
  %tobool605.not.i = icmp eq i32 %call604.i, 0
  br i1 %tobool605.not.i, label %if.then589.i.if.end608.i_crit_edge, label %if.then589.i.jffs2_scan_eraseblock.exit_crit_edge

if.then589.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.then589.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.then589.i.if.end608.i_crit_edge:               ; preds = %if.then589.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end608.i

if.end608.i:                                      ; preds = %if.then589.i.if.end608.i_crit_edge, %sw.bb582.i.if.end608.i_crit_edge
  %buf_len.8.i = phi i32 [ %buf_len.4.i, %sw.bb582.i.if.end608.i_crit_edge ], [ %181, %if.then589.i.if.end608.i_crit_edge ]
  %buf_ofs.5.i = phi i32 [ %buf_ofs.2.i, %sw.bb582.i.if.end608.i_crit_edge ], [ %ofs.21421.i, %if.then589.i.if.end608.i_crit_edge ]
  %node.1.i = phi ptr [ %arrayidx250.i, %sw.bb582.i.if.end608.i_crit_edge ], [ %cond, %if.then589.i.if.end608.i_crit_edge ]
  %call609.i = call fastcc i32 @jffs2_scan_dirent_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %node.1.i, i32 noundef %ofs.21421.i, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call609.i)
  %tobool610.not.i = icmp eq i32 %call609.i, 0
  br i1 %tobool610.not.i, label %if.end612.i, label %if.end608.i.jffs2_scan_eraseblock.exit_crit_edge

if.end608.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.end608.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end612.i:                                      ; preds = %if.end608.i
  call void @__sanitizer_cov_trace_pc() #13
  %totlen613.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %node.1.i, i32 0, i32 2
  %182 = ptrtoint ptr %totlen613.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %totlen613.i, align 1
  %add615.i = add i32 %183, 3
  %and616.i = and i32 %add615.i, -4
  %add617.i = add i32 %and616.i, %ofs.21421.i
  br label %while.cond172.backedge.i

sw.bb618.i:                                       ; preds = %if.end544.i
  %add619.i = add i32 %buf_ofs.2.i, %buf_len.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add619.i, i32 %add497.i)
  %cmp623.i = icmp ult i32 %add619.i, %add497.i
  br i1 %cmp623.i, label %if.then625.i, label %sw.bb618.i.if.end644.i_crit_edge

sw.bb618.i.if.end644.i_crit_edge:                 ; preds = %sw.bb618.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end644.i

if.then625.i:                                     ; preds = %sw.bb618.i
  %sub629.i = sub i32 %add500.i, %ofs.21421.i
  %184 = call i32 @llvm.umin.i32(i32 %sub629.i, i32 %buf_size.0) #11
  %call640.i = call fastcc i32 @jffs2_fill_scan_buf(ptr noundef %c, ptr noundef %cond, i32 noundef %ofs.21421.i, i32 noundef %184) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call640.i)
  %tobool641.not.i = icmp eq i32 %call640.i, 0
  br i1 %tobool641.not.i, label %if.then625.i.if.end644.i_crit_edge, label %if.then625.i.jffs2_scan_eraseblock.exit_crit_edge

if.then625.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.then625.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.then625.i.if.end644.i_crit_edge:               ; preds = %if.then625.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end644.i

if.end644.i:                                      ; preds = %if.then625.i.if.end644.i_crit_edge, %sw.bb618.i.if.end644.i_crit_edge
  %buf_len.9.i = phi i32 [ %buf_len.4.i, %sw.bb618.i.if.end644.i_crit_edge ], [ %184, %if.then625.i.if.end644.i_crit_edge ]
  %buf_ofs.6.i = phi i32 [ %buf_ofs.2.i, %sw.bb618.i.if.end644.i_crit_edge ], [ %ofs.21421.i, %if.then625.i.if.end644.i_crit_edge ]
  %node.2.i = phi ptr [ %arrayidx250.i, %sw.bb618.i.if.end644.i_crit_edge ], [ %cond, %if.then625.i.if.end644.i_crit_edge ]
  %call645.i = call fastcc i32 @jffs2_scan_xattr_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %node.2.i, i32 noundef %ofs.21421.i, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call645.i)
  %tobool646.not.i = icmp eq i32 %call645.i, 0
  br i1 %tobool646.not.i, label %if.end648.i, label %if.end644.i.jffs2_scan_eraseblock.exit_crit_edge

if.end644.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.end644.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end648.i:                                      ; preds = %if.end644.i
  call void @__sanitizer_cov_trace_pc() #13
  %totlen649.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %node.2.i, i32 0, i32 2
  %185 = ptrtoint ptr %totlen649.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %totlen649.i, align 1
  %add651.i = add i32 %186, 3
  %and652.i = and i32 %add651.i, -4
  %add653.i = add i32 %and652.i, %ofs.21421.i
  br label %while.cond172.backedge.i

sw.bb654.i:                                       ; preds = %if.end544.i
  %add655.i = add i32 %buf_ofs.2.i, %buf_len.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add655.i, i32 %add497.i)
  %cmp659.i = icmp ult i32 %add655.i, %add497.i
  br i1 %cmp659.i, label %if.then661.i, label %sw.bb654.i.if.end680.i_crit_edge

sw.bb654.i.if.end680.i_crit_edge:                 ; preds = %sw.bb654.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end680.i

if.then661.i:                                     ; preds = %sw.bb654.i
  %sub665.i = sub i32 %add500.i, %ofs.21421.i
  %187 = call i32 @llvm.umin.i32(i32 %sub665.i, i32 %buf_size.0) #11
  %call676.i = call fastcc i32 @jffs2_fill_scan_buf(ptr noundef %c, ptr noundef %cond, i32 noundef %ofs.21421.i, i32 noundef %187) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call676.i)
  %tobool677.not.i = icmp eq i32 %call676.i, 0
  br i1 %tobool677.not.i, label %if.then661.i.if.end680.i_crit_edge, label %if.then661.i.jffs2_scan_eraseblock.exit_crit_edge

if.then661.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.then661.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.then661.i.if.end680.i_crit_edge:               ; preds = %if.then661.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end680.i

if.end680.i:                                      ; preds = %if.then661.i.if.end680.i_crit_edge, %sw.bb654.i.if.end680.i_crit_edge
  %buf_len.10.i = phi i32 [ %buf_len.4.i, %sw.bb654.i.if.end680.i_crit_edge ], [ %187, %if.then661.i.if.end680.i_crit_edge ]
  %buf_ofs.7.i = phi i32 [ %buf_ofs.2.i, %sw.bb654.i.if.end680.i_crit_edge ], [ %ofs.21421.i, %if.then661.i.if.end680.i_crit_edge ]
  %node.3.i = phi ptr [ %arrayidx250.i, %sw.bb654.i.if.end680.i_crit_edge ], [ %cond, %if.then661.i.if.end680.i_crit_edge ]
  %call681.i = call fastcc i32 @jffs2_scan_xref_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %node.3.i, i32 noundef %ofs.21421.i, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call681.i)
  %tobool682.not.i = icmp eq i32 %call681.i, 0
  br i1 %tobool682.not.i, label %if.end684.i, label %if.end680.i.jffs2_scan_eraseblock.exit_crit_edge

if.end680.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.end680.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end684.i:                                      ; preds = %if.end680.i
  call void @__sanitizer_cov_trace_pc() #13
  %totlen685.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %node.3.i, i32 0, i32 2
  %188 = ptrtoint ptr %totlen685.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %totlen685.i, align 1
  %add687.i = add i32 %189, 3
  %and688.i = and i32 %add687.i, -4
  %add689.i = add i32 %and688.i, %ofs.21421.i
  br label %while.cond172.backedge.i

do.end693.i:                                      ; preds = %if.end544.i
  %190 = ptrtoint ptr %cleanmarker_size696.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cleanmarker_size696.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %191)
  %cmp697.not.i = icmp eq i32 %169, %191
  br i1 %cmp697.not.i, label %if.else713.i, label %do.end702.i

do.end702.i:                                      ; preds = %do.end693.i
  %call707.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %ofs.21421.i, i32 noundef %169, i32 noundef %191) #15
  %call708.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call708.i)
  %tobool709.not.i = icmp eq i32 %call708.i, 0
  br i1 %tobool709.not.i, label %do.end702.i.while.cond172.backedge.i_crit_edge, label %do.end702.i.jffs2_scan_eraseblock.exit_crit_edge

do.end702.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end702.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

do.end702.i.while.cond172.backedge.i_crit_edge:   ; preds = %do.end702.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond172.backedge.i

if.else713.i:                                     ; preds = %do.end693.i
  %192 = ptrtoint ptr %first_node714.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %first_node714.i, align 4
  %tobool715.not.i = icmp eq ptr %193, null
  br i1 %tobool715.not.i, label %if.else728.i, label %do.end719.i

do.end719.i:                                      ; preds = %if.else713.i
  %call722.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %ofs.21421.i, i32 noundef %159) #15
  %call723.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call723.i)
  %tobool724.not.i = icmp eq i32 %call723.i, 0
  br i1 %tobool724.not.i, label %do.end719.i.while.cond172.backedge.i_crit_edge, label %do.end719.i.jffs2_scan_eraseblock.exit_crit_edge

do.end719.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end719.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

do.end719.i.while.cond172.backedge.i_crit_edge:   ; preds = %do.end719.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond172.backedge.i

if.else728.i:                                     ; preds = %if.else713.i
  call void @__sanitizer_cov_trace_pc() #13
  %or729.i = or i32 %ofs.21421.i, 3
  %call731.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %or729.i, i32 noundef %169, ptr noundef null) #11
  %194 = ptrtoint ptr %cleanmarker_size696.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cleanmarker_size696.i, align 4
  %add733.i = add i32 %195, 3
  %and734.i = and i32 %add733.i, -4
  %add735.i = add i32 %and734.i, %ofs.21421.i
  br label %while.cond172.backedge.i

sw.bb738.i:                                       ; preds = %if.end544.i
  %call741.i = call i32 @jffs2_sum_add_padding_mem(ptr noundef nonnull %call7.i.i, i32 noundef %169) #11
  %196 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 4)
  %197 = load i32, ptr %totlen452.i, align 1
  %add744.i = add i32 %197, 3
  %and745.i = and i32 %add744.i, -4
  %call746.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %and745.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call746.i)
  %tobool747.not.i = icmp eq i32 %call746.i, 0
  br i1 %tobool747.not.i, label %if.end749.i, label %sw.bb738.i.jffs2_scan_eraseblock.exit_crit_edge

sw.bb738.i.jffs2_scan_eraseblock.exit_crit_edge:  ; preds = %sw.bb738.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end749.i:                                      ; preds = %sw.bb738.i
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %totlen452.i, align 1
  %add752.i = add i32 %199, 3
  %and753.i = and i32 %add752.i, -4
  %add754.i = add i32 %and753.i, %ofs.21421.i
  br label %while.cond172.backedge.i

sw.default755.i:                                  ; preds = %if.end544.i
  %200 = lshr i32 %conv524.i, 14
  %201 = zext i32 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %200, label %sw.default755.unreachabledefault.i [
    i32 2, label %do.end763.i
    i32 3, label %do.end790.i
    i32 0, label %do.end799.i
    i32 1, label %do.end816.i
  ]

do.end763.i:                                      ; preds = %sw.default755.i
  %call768.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv524.i, i32 noundef %ofs.21421.i) #15
  %202 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %flags.i, align 4
  %or769.i = or i32 %203, 1
  store i32 %or769.i, ptr %flags.i, align 4
  %204 = ptrtoint ptr %os_priv.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %os_priv.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %205, i32 0, i32 10
  %206 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %s_flags.i, align 4
  %and770.i = and i32 %207, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and770.i)
  %tobool771.not.i = icmp eq i32 %and770.i, 0
  br i1 %tobool771.not.i, label %do.end763.i.jffs2_scan_eraseblock.exit.thread374_crit_edge, label %if.end773.i

do.end763.i.jffs2_scan_eraseblock.exit.thread374_crit_edge: ; preds = %do.end763.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread374

if.end773.i:                                      ; preds = %do.end763.i
  %208 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %totlen452.i, align 1
  %add776.i = add i32 %209, 3
  %and777.i = and i32 %add776.i, -4
  %call778.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %and777.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call778.i)
  %tobool779.not.i = icmp eq i32 %call778.i, 0
  br i1 %tobool779.not.i, label %if.end781.i, label %if.end773.i.jffs2_scan_eraseblock.exit_crit_edge

if.end773.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %if.end773.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end781.i:                                      ; preds = %if.end773.i
  call void @__sanitizer_cov_trace_pc() #13
  %210 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %totlen452.i, align 1
  %add784.i = add i32 %211, 3
  %and785.i = and i32 %add784.i, -4
  %add786.i = add i32 %and785.i, %ofs.21421.i
  br label %while.cond172.backedge.i

do.end790.i:                                      ; preds = %sw.default755.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv524.i.le = zext i16 %165 to i32
  %call795.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv524.i.le, i32 noundef %ofs.21421.i) #15
  br label %jffs2_scan_eraseblock.exit.thread374

do.end799.i:                                      ; preds = %sw.default755.i
  %add802.i = add i32 %169, 3
  %and803.i = and i32 %add802.i, -4
  %call804.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %and803.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call804.i)
  %tobool805.not.i = icmp eq i32 %call804.i, 0
  br i1 %tobool805.not.i, label %if.end807.i, label %do.end799.i.jffs2_scan_eraseblock.exit_crit_edge

do.end799.i.jffs2_scan_eraseblock.exit_crit_edge: ; preds = %do.end799.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit

if.end807.i:                                      ; preds = %do.end799.i
  call void @__sanitizer_cov_trace_pc() #13
  %212 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %totlen452.i, align 1
  %add810.i = add i32 %213, 3
  %and811.i = and i32 %add810.i, -4
  %add812.i = add i32 %and811.i, %ofs.21421.i
  br label %while.cond172.backedge.i

do.end816.i:                                      ; preds = %sw.default755.i
  call void @__sanitizer_cov_trace_pc() #13
  %or817.i = or i32 %ofs.21421.i, 2
  %add820.i = add i32 %169, 3
  %and821.i = and i32 %add820.i, -4
  %call822.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %or817.i, i32 noundef %and821.i, ptr noundef null) #11
  call void @jffs2_sum_disable_collecting(ptr noundef nonnull %call7.i.i) #11
  %214 = ptrtoint ptr %totlen452.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %totlen452.i, align 1
  %add825.i = add i32 %215, 3
  %and826.i = and i32 %add825.i, -4
  %add827.i = add i32 %and826.i, %ofs.21421.i
  br label %while.cond172.backedge.i

sw.default755.unreachabledefault.i:               ; preds = %sw.default755.i
  unreachable

while.end830.i:                                   ; preds = %if.end324.i.while.end830.i_crit_edge, %do.end218.i.while.end830.i_crit_edge, %while.cond172.backedge.i.while.end830.i_crit_edge, %scan_more.i.while.end830.i_crit_edge
  %216 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %call7.i.i, align 8
  %add832.i = add i32 %217, 43
  %and833.i = and i32 %add832.i, -4
  %free_size.i = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 7
  %218 = ptrtoint ptr %free_size.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %free_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and833.i, i32 %219)
  %cmp834.i = icmp ugt i32 %and833.i, %219
  br i1 %cmp834.i, label %if.then836.i, label %while.end830.i.do.end841.i_crit_edge

while.end830.i.do.end841.i_crit_edge:             ; preds = %while.end830.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end841.i

if.then836.i:                                     ; preds = %while.end830.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @jffs2_sum_disable_collecting(ptr noundef nonnull %call7.i.i) #11
  br label %do.end841.i

do.end841.i:                                      ; preds = %if.then836.i, %while.end830.i.do.end841.i_crit_edge
  %wasted_size.i = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 6
  %220 = ptrtoint ptr %wasted_size.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %wasted_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool842.not.i = icmp eq i32 %221, 0
  br i1 %tobool842.not.i, label %do.end841.i.if.end854.i_crit_edge, label %if.then843.i

do.end841.i.if.end854.i_crit_edge:                ; preds = %do.end841.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end854.i

if.then843.i:                                     ; preds = %do.end841.i
  call void @__sanitizer_cov_trace_pc() #13
  %222 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %dirty_size.i, align 4
  %add846.i = add i32 %223, %221
  store i32 %add846.i, ptr %dirty_size.i, align 4
  %224 = ptrtoint ptr %dirty_size848.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dirty_size848.i, align 4
  %add849.i = add i32 %225, %221
  store i32 %add849.i, ptr %dirty_size848.i, align 4
  %226 = ptrtoint ptr %wasted_size.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %wasted_size.i, align 4
  %228 = ptrtoint ptr %wasted_size851.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %wasted_size851.i, align 4
  %sub852.i = sub i32 %229, %227
  store i32 %sub852.i, ptr %wasted_size851.i, align 4
  store i32 0, ptr %wasted_size.i, align 4
  br label %if.end854.i

if.end854.i:                                      ; preds = %if.then843.i, %do.end841.i.if.end854.i_crit_edge
  %230 = ptrtoint ptr %used_size.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %used_size.i, align 4
  %unchecked_size.i.i = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 3
  %232 = ptrtoint ptr %unchecked_size.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %unchecked_size.i.i, align 4
  %add.i.i = add i32 %233, %231
  %234 = ptrtoint ptr %cleanmarker_size696.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %cleanmarker_size696.i, align 4
  %add1.i.i = add i32 %235, 3
  %and.i.i = and i32 %add1.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %and.i.i)
  %cmp.i1339.i = icmp eq i32 %add.i.i, %and.i.i
  br i1 %cmp.i1339.i, label %land.lhs.true.i.i, label %if.end854.i.if.else.i.i_crit_edge

if.end854.i.if.else.i.i_crit_edge:                ; preds = %if.end854.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end854.i
  %236 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %dirty_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool.not.i1340.i = icmp eq i32 %237, 0
  br i1 %tobool.not.i1340.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %238 = ptrtoint ptr %first_node714.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %first_node714.i, align 4
  %tobool3.not.i.i = icmp eq ptr %239, null
  br i1 %tobool3.not.i.i, label %land.lhs.true2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, label %lor.lhs.false.i.i

land.lhs.true2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

lor.lhs.false.i.i:                                ; preds = %land.lhs.true2.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %239, i32 1
  %flash_offset.i.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %239, i32 1, i32 1
  %240 = ptrtoint ptr %flash_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flash_offset.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %241)
  %cmp.i.i1341.i = icmp eq i32 %241, -1
  br i1 %cmp.i.i1341.i, label %if.then.i.i.i, label %lor.lhs.false.i.i.if.end2.i.i.i_crit_edge

lor.lhs.false.i.i.if.end2.i.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i
  %242 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %incdec.ptr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %243, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, label %if.then.i.i.i.if.end2.i.i.i_crit_edge

if.then.i.i.i.if.end2.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i.i.i

if.then.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

if.end2.i.i.i:                                    ; preds = %if.then.i.i.i.if.end2.i.i.i_crit_edge, %lor.lhs.false.i.i.if.end2.i.i.i_crit_edge
  %ref.addr.0.i.i.i = phi ptr [ %243, %if.then.i.i.i.if.end2.i.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %lor.lhs.false.i.i.if.end2.i.i.i_crit_edge ]
  %flash_offset3.i.i.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i.i.i, i32 0, i32 1
  %244 = ptrtoint ptr %flash_offset3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %flash_offset3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %245)
  %cmp4.i.i.i = icmp eq i32 %245, -2
  %tobool5.not.i.i = icmp eq ptr %ref.addr.0.i.i.i, null
  %or.cond46.i.i = select i1 %cmp4.i.i.i, i1 true, i1 %tobool5.not.i.i
  br i1 %or.cond46.i.i, label %if.end2.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, label %if.end2.i.i.i.if.else.i.i_crit_edge

if.end2.i.i.i.if.else.i.i_crit_edge:              ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end2.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge: ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_scan_eraseblock.exit.thread

if.else.i.i:                                      ; preds = %if.end2.i.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end854.i.if.else.i.i_crit_edge
  %246 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %sector_size34.i, align 4
  %sub.i.i = sub i32 %247, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %sub.i.i)
  %cmp9.i.i = icmp ugt i32 %sub.i.i, 196
  br i1 %cmp9.i.i, label %if.else20.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %248 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dirty_size.i, align 4
  %250 = ptrtoint ptr %dirty_size848.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dirty_size848.i, align 4
  %sub13.i.i = sub i32 %251, %249
  store i32 %sub13.i.i, ptr %dirty_size848.i, align 4
  %252 = load i32, ptr %dirty_size.i, align 4
  %253 = ptrtoint ptr %wasted_size851.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %wasted_size851.i, align 4
  %add15.i.i = add i32 %254, %252
  store i32 %add15.i.i, ptr %wasted_size851.i, align 4
  %255 = load i32, ptr %dirty_size.i, align 4
  %256 = ptrtoint ptr %wasted_size.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %wasted_size.i, align 4
  %add18.i.i = add i32 %257, %255
  store i32 %add18.i.i, ptr %wasted_size.i, align 4
  store i32 0, ptr %dirty_size.i, align 4
  br label %jffs2_scan_eraseblock.exit.thread

if.else20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool22.not.i.i = icmp eq i32 %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool25.not.i.i = icmp eq i32 %233, 0
  %or.cond.i.i = select i1 %tobool22.not.i.i, i1 %tobool25.not.i.i, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i, i32 4, i32 2
  br label %jffs2_scan_eraseblock.exit.thread

jffs2_scan_eraseblock.exit.thread:                ; preds = %if.else20.i.i, %if.then10.i.i, %if.end2.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, %if.then.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, %land.lhs.true2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, %if.end2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge, %if.then.i1328.i.jffs2_scan_eraseblock.exit.thread_crit_edge, %do.end150.i, %sw.bb142.i, %if.then136.i.jffs2_scan_eraseblock.exit.thread_crit_edge, %if.then.i.jffs2_scan_eraseblock.exit.thread_crit_edge
  %retval.6.i.ph = phi i32 [ 5, %if.then.i.jffs2_scan_eraseblock.exit.thread_crit_edge ], [ 3, %if.end2.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge ], [ 3, %if.then.i.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge ], [ %spec.select.i.i, %if.else20.i.i ], [ 3, %land.lhs.true2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge ], [ 1, %if.then10.i.i ], [ %.1300.i, %do.end150.i ], [ 4, %if.then136.i.jffs2_scan_eraseblock.exit.thread_crit_edge ], [ %tobool143.not.i, %sw.bb142.i ], [ 3, %if.end2.i.i.jffs2_scan_eraseblock.exit.thread_crit_edge ], [ 3, %if.then.i1328.i.jffs2_scan_eraseblock.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %crcnode.i) #11
  br label %if.end56

jffs2_scan_eraseblock.exit.thread374:             ; preds = %do.end790.i, %do.end763.i.jffs2_scan_eraseblock.exit.thread374_crit_edge, %if.end8.i.i.jffs2_scan_eraseblock.exit.thread374_crit_edge
  %retval.6.i.ph373 = phi i32 [ -22, %do.end790.i ], [ -30, %do.end763.i.jffs2_scan_eraseblock.exit.thread374_crit_edge ], [ -12, %if.end8.i.i.jffs2_scan_eraseblock.exit.thread374_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %crcnode.i) #11
  br label %out

jffs2_scan_eraseblock.exit:                       ; preds = %do.end799.i.jffs2_scan_eraseblock.exit_crit_edge, %if.end773.i.jffs2_scan_eraseblock.exit_crit_edge, %sw.bb738.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end719.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end702.i.jffs2_scan_eraseblock.exit_crit_edge, %if.end680.i.jffs2_scan_eraseblock.exit_crit_edge, %if.then661.i.jffs2_scan_eraseblock.exit_crit_edge, %if.end644.i.jffs2_scan_eraseblock.exit_crit_edge, %if.then625.i.jffs2_scan_eraseblock.exit_crit_edge, %if.end608.i.jffs2_scan_eraseblock.exit_crit_edge, %if.then589.i.jffs2_scan_eraseblock.exit_crit_edge, %if.end572.i.jffs2_scan_eraseblock.exit_crit_edge, %if.then553.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end530.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end506.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end488.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end438.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end397.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end382.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end365.i.jffs2_scan_eraseblock.exit_crit_edge, %jffs2_fill_scan_buf.exit1338.thread.i, %do.end282.i.jffs2_scan_eraseblock.exit_crit_edge, %jffs2_fill_scan_buf.exit1325.thread.i, %do.end218.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end200.i.jffs2_scan_eraseblock.exit_crit_edge, %while.body178.i.jffs2_scan_eraseblock.exit_crit_edge, %if.end164.i.jffs2_scan_eraseblock.exit_crit_edge, %do.end160.i.jffs2_scan_eraseblock.exit_crit_edge, %if.then136.i.jffs2_scan_eraseblock.exit_crit_edge, %jffs2_fill_scan_buf.exit1315.thread.i, %if.end99.i.jffs2_scan_eraseblock.exit_crit_edge, %if.then86.i, %if.then83.i.jffs2_scan_eraseblock.exit_crit_edge, %jffs2_fill_scan_buf.exit.thread.i, %if.end.i.jffs2_scan_eraseblock.exit_crit_edge
  %retval.6.i = phi i32 [ %call161.i, %do.end160.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call165.i, %if.end164.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call223.i, %do.end218.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %retval.0.i1314.ph.i, %jffs2_fill_scan_buf.exit1315.thread.i ], [ %retval.0.i1324.ph.i, %jffs2_fill_scan_buf.exit1325.thread.i ], [ %call7.i, %if.end.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %retval.0.i.ph.i, %jffs2_fill_scan_buf.exit.thread.i ], [ %call94.i, %if.end99.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %retval.0.i.ph, %if.then83.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %retval.0.i.ph, %if.then86.i ], [ %retval.0.i1337.ph.i, %jffs2_fill_scan_buf.exit1338.thread.i ], [ %call138.i, %if.then136.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call179.i, %while.body178.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call203.i, %do.end200.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call368.i, %do.end365.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call383.i, %do.end382.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call405.i, %do.end397.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call439.i, %do.end438.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call489.i, %do.end488.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call516.i, %do.end506.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call535.i, %do.end530.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call568.i, %if.then553.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call573.i, %if.end572.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call604.i, %if.then589.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call609.i, %if.end608.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call640.i, %if.then625.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call645.i, %if.end644.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call676.i, %if.then661.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call681.i, %if.end680.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call708.i, %do.end702.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call723.i, %do.end719.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call746.i, %sw.bb738.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call778.i, %if.end773.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call804.i, %do.end799.i.jffs2_scan_eraseblock.exit_crit_edge ], [ %call286.i, %do.end282.i.jffs2_scan_eraseblock.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %crcnode.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.6.i)
  %cmp53 = icmp slt i32 %retval.6.i, 0
  br i1 %cmp53, label %jffs2_scan_eraseblock.exit.out_crit_edge, label %jffs2_scan_eraseblock.exit.if.end56_crit_edge

jffs2_scan_eraseblock.exit.if.end56_crit_edge:    ; preds = %jffs2_scan_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

jffs2_scan_eraseblock.exit.out_crit_edge:         ; preds = %jffs2_scan_eraseblock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end56:                                         ; preds = %jffs2_scan_eraseblock.exit.if.end56_crit_edge, %jffs2_scan_eraseblock.exit.thread
  %retval.6.i371 = phi i32 [ %retval.6.i.ph, %jffs2_scan_eraseblock.exit.thread ], [ %retval.6.i, %jffs2_scan_eraseblock.exit.if.end56_crit_edge ]
  %258 = zext i32 %retval.6.i371 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %retval.6.i371, label %do.end124 [
    i32 0, label %sw.bb
    i32 3, label %sw.bb58
    i32 1, label %sw.bb72
    i32 2, label %sw.bb74
    i32 4, label %do.end108
    i32 5, label %do.end116
  ]

sw.bb:                                            ; preds = %if.end56
  %inc = add i32 %empty_blocks.0443, 1
  %259 = ptrtoint ptr %erase_pending_list110 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %erase_pending_list110, align 4
  %call.i.i332 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %erase_pending_list110, ptr noundef %260) #11
  br i1 %call.i.i332, label %if.end.i.i333, label %sw.bb.list_add.exit_crit_edge

sw.bb.list_add.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i333:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %arrayidx, ptr %prev1.i.i, align 4
  %262 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %260, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %263 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %erase_pending_list110, ptr %prev3.i.i, align 4
  %264 = ptrtoint ptr %erase_pending_list110 to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %arrayidx, ptr %erase_pending_list110, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i333, %sw.bb.list_add.exit_crit_edge
  %265 = ptrtoint ptr %nr_erasing_blocks111 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %nr_erasing_blocks111, align 4
  %inc57 = add i32 %266, 1
  store i32 %inc57, ptr %nr_erasing_blocks111, align 4
  br label %for.inc

sw.bb58:                                          ; preds = %if.end56
  %dirty_size = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 5
  %267 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %dirty_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool59.not = icmp eq i32 %268, 0
  br i1 %tobool59.not, label %if.then60, label %do.end66

if.then60:                                        ; preds = %sw.bb58
  %269 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %free_list, align 4
  %call.i.i334 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %free_list, ptr noundef %270) #11
  br i1 %call.i.i334, label %if.end.i.i337, label %if.then60.list_add.exit338_crit_edge

if.then60.list_add.exit338_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit338

if.end.i.i337:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i335 = getelementptr inbounds %struct.list_head, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %prev1.i.i335 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %arrayidx, ptr %prev1.i.i335, align 4
  %272 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %270, ptr %arrayidx, align 4
  %prev3.i.i336 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %273 = ptrtoint ptr %prev3.i.i336 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %free_list, ptr %prev3.i.i336, align 4
  %274 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %274)
  store volatile ptr %arrayidx, ptr %free_list, align 4
  br label %list_add.exit338

list_add.exit338:                                 ; preds = %if.end.i.i337, %if.then60.list_add.exit338_crit_edge
  %275 = ptrtoint ptr %nr_free_blocks to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %nr_free_blocks, align 4
  %inc62 = add i32 %276, 1
  store i32 %inc62, ptr %nr_free_blocks, align 4
  br label %for.inc

do.end66:                                         ; preds = %sw.bb58
  %277 = ptrtoint ptr %erase_pending_list110 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %erase_pending_list110, align 4
  %call.i.i339 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %erase_pending_list110, ptr noundef %278) #11
  br i1 %call.i.i339, label %if.end.i.i342, label %do.end66.list_add.exit343_crit_edge

do.end66.list_add.exit343_crit_edge:              ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit343

if.end.i.i342:                                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i340 = getelementptr inbounds %struct.list_head, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %prev1.i.i340 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %arrayidx, ptr %prev1.i.i340, align 4
  %280 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %278, ptr %arrayidx, align 4
  %prev3.i.i341 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %281 = ptrtoint ptr %prev3.i.i341 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %erase_pending_list110, ptr %prev3.i.i341, align 4
  %282 = ptrtoint ptr %erase_pending_list110 to i32
  call void @__asan_store4_noabort(i32 %282)
  store volatile ptr %arrayidx, ptr %erase_pending_list110, align 4
  br label %list_add.exit343

list_add.exit343:                                 ; preds = %if.end.i.i342, %do.end66.list_add.exit343_crit_edge
  %283 = ptrtoint ptr %nr_erasing_blocks111 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %nr_erasing_blocks111, align 4
  %inc70 = add i32 %284, 1
  store i32 %inc70, ptr %nr_erasing_blocks111, align 4
  br label %for.inc

sw.bb72:                                          ; preds = %if.end56
  %285 = ptrtoint ptr %clean_list to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %clean_list, align 4
  %call.i.i344 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %clean_list, ptr noundef %286) #11
  br i1 %call.i.i344, label %if.end.i.i347, label %sw.bb72.for.inc_crit_edge

sw.bb72.for.inc_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i347:                                    ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i345 = getelementptr inbounds %struct.list_head, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %prev1.i.i345 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %arrayidx, ptr %prev1.i.i345, align 4
  %288 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %286, ptr %arrayidx, align 4
  %prev3.i.i346 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %289 = ptrtoint ptr %prev3.i.i346 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %clean_list, ptr %prev3.i.i346, align 4
  %290 = ptrtoint ptr %clean_list to i32
  call void @__asan_store4_noabort(i32 %290)
  store volatile ptr %arrayidx, ptr %clean_list, align 4
  br label %for.inc

sw.bb74:                                          ; preds = %if.end56
  %free_size = getelementptr %struct.jffs2_eraseblock, ptr %37, i32 %i.0445, i32 7
  %291 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %free_size, align 4
  %293 = ptrtoint ptr %wbuf_pagesize.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %wbuf_pagesize.i, align 4
  %295 = call i32 @llvm.umax.i32(i32 %294, i32 136) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %292, i32 %295)
  %cmp76 = icmp ugt i32 %292, %295
  br i1 %cmp76, label %land.lhs.true78, label %sw.bb74.if.else99_crit_edge

sw.bb74.if.else99_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else99

land.lhs.true78:                                  ; preds = %sw.bb74
  %296 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %nextblock, align 4
  %tobool79.not = icmp eq ptr %297, null
  br i1 %tobool79.not, label %land.lhs.true78.if.end94_crit_edge, label %lor.lhs.false

land.lhs.true78.if.end94_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

lor.lhs.false:                                    ; preds = %land.lhs.true78
  %free_size81 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %297, i32 0, i32 7
  %298 = ptrtoint ptr %free_size81 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %free_size81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %299, i32 %292)
  %cmp83 = icmp ult i32 %299, %292
  br i1 %cmp83, label %if.then88, label %lor.lhs.false.if.else99_crit_edge

lor.lhs.false.if.else99_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else99

if.then88:                                        ; preds = %lor.lhs.false
  %call90 = call fastcc i32 @file_dirty(ptr noundef %c, ptr noundef nonnull %297)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then88.out_crit_edge

if.then88.out_crit_edge:                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end93:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  %300 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %summary, align 4
  call void @jffs2_sum_reset_collected(ptr noundef %301) #11
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %land.lhs.true78.if.end94_crit_edge
  call void @jffs2_sum_move_collected(ptr noundef %c, ptr noundef nonnull %call7.i.i) #11
  %302 = ptrtoint ptr %nextblock to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %arrayidx, ptr %nextblock, align 4
  br label %for.inc

if.else99:                                        ; preds = %lor.lhs.false.if.else99_crit_edge, %sw.bb74.if.else99_crit_edge
  %call100 = call fastcc i32 @file_dirty(ptr noundef %c, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.else99.for.inc_crit_edge, label %if.else99.out_crit_edge

if.else99.out_crit_edge:                          ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else99.for.inc_crit_edge:                      ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end108:                                        ; preds = %if.end56
  %303 = ptrtoint ptr %erase_pending_list110 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %erase_pending_list110, align 4
  %call.i.i350 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %erase_pending_list110, ptr noundef %304) #11
  br i1 %call.i.i350, label %if.end.i.i353, label %do.end108.list_add.exit354_crit_edge

do.end108.list_add.exit354_crit_edge:             ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit354

if.end.i.i353:                                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i351 = getelementptr inbounds %struct.list_head, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %prev1.i.i351 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %arrayidx, ptr %prev1.i.i351, align 4
  %306 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %304, ptr %arrayidx, align 4
  %prev3.i.i352 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %307 = ptrtoint ptr %prev3.i.i352 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %erase_pending_list110, ptr %prev3.i.i352, align 4
  %308 = ptrtoint ptr %erase_pending_list110 to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile ptr %arrayidx, ptr %erase_pending_list110, align 4
  br label %list_add.exit354

list_add.exit354:                                 ; preds = %if.end.i.i353, %do.end108.list_add.exit354_crit_edge
  %309 = ptrtoint ptr %nr_erasing_blocks111 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %nr_erasing_blocks111, align 4
  %inc112 = add i32 %310, 1
  store i32 %inc112, ptr %nr_erasing_blocks111, align 4
  br label %for.inc

do.end116:                                        ; preds = %if.end56
  %311 = ptrtoint ptr %bad_list to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %bad_list, align 4
  %call.i.i355 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %bad_list, ptr noundef %312) #11
  br i1 %call.i.i355, label %if.end.i.i358, label %do.end116.list_add.exit359_crit_edge

do.end116.list_add.exit359_crit_edge:             ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit359

if.end.i.i358:                                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i356 = getelementptr inbounds %struct.list_head, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %prev1.i.i356 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %arrayidx, ptr %prev1.i.i356, align 4
  %314 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %312, ptr %arrayidx, align 4
  %prev3.i.i357 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %315 = ptrtoint ptr %prev3.i.i357 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %bad_list, ptr %prev3.i.i357, align 4
  %316 = ptrtoint ptr %bad_list to i32
  call void @__asan_store4_noabort(i32 %316)
  store volatile ptr %arrayidx, ptr %bad_list, align 4
  br label %list_add.exit359

list_add.exit359:                                 ; preds = %if.end.i.i358, %do.end116.list_add.exit359_crit_edge
  %317 = ptrtoint ptr %sector_size34.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %sector_size34.i, align 4
  %319 = ptrtoint ptr %bad_size to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %bad_size, align 4
  %add = add i32 %320, %318
  store i32 %add, ptr %bad_size, align 4
  %321 = ptrtoint ptr %free_size120 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %free_size120, align 4
  %sub = sub i32 %322, %318
  store i32 %sub, ptr %free_size120, align 4
  %inc121 = add i32 %bad_blocks.0441, 1
  br label %for.inc

do.end124:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #11, !srcloc !134
  unreachable

for.inc:                                          ; preds = %list_add.exit359, %list_add.exit354, %if.else99.for.inc_crit_edge, %if.end94, %if.end.i.i347, %sw.bb72.for.inc_crit_edge, %list_add.exit343, %list_add.exit338, %list_add.exit
  %bad_blocks.1 = phi i32 [ %inc121, %list_add.exit359 ], [ %bad_blocks.0441, %list_add.exit354 ], [ %bad_blocks.0441, %if.end94 ], [ %bad_blocks.0441, %if.else99.for.inc_crit_edge ], [ %bad_blocks.0441, %list_add.exit343 ], [ %bad_blocks.0441, %list_add.exit338 ], [ %bad_blocks.0441, %list_add.exit ], [ %bad_blocks.0441, %sw.bb72.for.inc_crit_edge ], [ %bad_blocks.0441, %if.end.i.i347 ]
  %empty_blocks.1 = phi i32 [ %empty_blocks.0443, %list_add.exit359 ], [ %empty_blocks.0443, %list_add.exit354 ], [ %empty_blocks.0443, %if.end94 ], [ %empty_blocks.0443, %if.else99.for.inc_crit_edge ], [ %empty_blocks.0443, %list_add.exit343 ], [ %empty_blocks.0443, %list_add.exit338 ], [ %inc, %list_add.exit ], [ %empty_blocks.0443, %sw.bb72.for.inc_crit_edge ], [ %empty_blocks.0443, %if.end.i.i347 ]
  %inc133 = add nuw i32 %i.0445, 1
  %323 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %nr_blocks, align 4
  %cmp47 = icmp ult i32 %inc133, %324
  br i1 %cmp47, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bad_blocks.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %bad_blocks.1, %for.inc.for.end_crit_edge ]
  %empty_blocks.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %empty_blocks.1, %for.inc.for.end_crit_edge ]
  %nextblock134 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %325 = ptrtoint ptr %nextblock134 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %nextblock134, align 4
  %tobool135.not = icmp eq ptr %326, null
  br i1 %tobool135.not, label %for.end.if.end155_crit_edge, label %land.lhs.true136

for.end.if.end155_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

land.lhs.true136:                                 ; preds = %for.end
  %dirty_size138 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %326, i32 0, i32 5
  %327 = ptrtoint ptr %dirty_size138 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %dirty_size138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool139.not = icmp eq i32 %328, 0
  br i1 %tobool139.not, label %land.lhs.true136.if.end155_crit_edge, label %if.then140

land.lhs.true136.if.end155_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.then140:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #13
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %326, i32 0, i32 6
  %329 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %wasted_size, align 4
  %add144 = add i32 %330, %328
  store i32 %add144, ptr %wasted_size, align 4
  %331 = ptrtoint ptr %nextblock134 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %nextblock134, align 4
  %dirty_size146 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %332, i32 0, i32 5
  %333 = ptrtoint ptr %dirty_size146 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %dirty_size146, align 4
  %wasted_size147 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %335 = ptrtoint ptr %wasted_size147 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %wasted_size147, align 4
  %add148 = add i32 %336, %334
  store i32 %add148, ptr %wasted_size147, align 4
  %337 = load i32, ptr %dirty_size146, align 4
  %dirty_size151 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %338 = ptrtoint ptr %dirty_size151 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %dirty_size151, align 4
  %sub152 = sub i32 %339, %337
  store i32 %sub152, ptr %dirty_size151, align 4
  store i32 0, ptr %dirty_size146, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then140, %land.lhs.true136.if.end155_crit_edge, %for.end.if.end155_crit_edge
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %340 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %wbuf_pagesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool156.not = icmp eq i32 %341, 0
  br i1 %tobool156.not, label %if.end155.if.end177_crit_edge, label %land.lhs.true157

if.end155.if.end177_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

land.lhs.true157:                                 ; preds = %if.end155
  %342 = ptrtoint ptr %nextblock134 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %nextblock134, align 4
  %tobool159.not = icmp eq ptr %343, null
  br i1 %tobool159.not, label %land.lhs.true157.if.end177_crit_edge, label %land.lhs.true160

land.lhs.true157.if.end177_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

land.lhs.true160:                                 ; preds = %land.lhs.true157
  %free_size162 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %343, i32 0, i32 7
  %344 = ptrtoint ptr %free_size162 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %free_size162, align 4
  %rem = urem i32 %345, %341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool164.not = icmp eq i32 %rem, 0
  br i1 %tobool164.not, label %land.lhs.true160.if.end177_crit_edge, label %if.then165

land.lhs.true160.if.end177_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.then165:                                       ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #13
  %call174 = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef nonnull %343, i32 noundef 1) #11
  %346 = ptrtoint ptr %nextblock134 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %nextblock134, align 4
  %call176 = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %347, i32 noundef %rem) #11
  br label %if.end177

if.end177:                                        ; preds = %if.then165, %land.lhs.true160.if.end177_crit_edge, %land.lhs.true157.if.end177_crit_edge, %if.end155.if.end177_crit_edge
  %nr_erasing_blocks178 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %348 = ptrtoint ptr %nr_erasing_blocks178 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %nr_erasing_blocks178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %tobool179.not = icmp eq i32 %349, 0
  br i1 %tobool179.not, label %if.end177.out_crit_edge, label %if.then180

if.end177.out_crit_edge:                          ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then180:                                       ; preds = %if.end177
  %used_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %350 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %used_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool181.not = icmp eq i32 %351, 0
  br i1 %tobool181.not, label %land.lhs.true182, label %if.then180.if.end207_crit_edge

if.then180.if.end207_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

land.lhs.true182:                                 ; preds = %if.then180
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %352 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %unchecked_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool183.not = icmp eq i32 %353, 0
  br i1 %tobool183.not, label %land.lhs.true184, label %land.lhs.true182.if.end207_crit_edge

land.lhs.true182.if.end207_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

land.lhs.true184:                                 ; preds = %land.lhs.true182
  %nr_free_blocks185 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %354 = ptrtoint ptr %nr_free_blocks185 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %nr_free_blocks185, align 4
  %add186 = add i32 %empty_blocks.0.lcssa, %bad_blocks.0.lcssa
  %add187 = add i32 %add186, %355
  %356 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %nr_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add187, i32 %357)
  %cmp189.not = icmp ne i32 %add187, %357
  call void @__sanitizer_cov_trace_cmp4(i32 %bad_blocks.0.lcssa, i32 %357)
  %cmp193 = icmp eq i32 %bad_blocks.0.lcssa, %357
  %or.cond = or i1 %cmp193, %cmp189.not
  br i1 %or.cond, label %do.end198, label %land.lhs.true184.if.end207_crit_edge

land.lhs.true184.if.end207_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

do.end198:                                        ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #13
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  %358 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %nr_blocks, align 4
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %empty_blocks.0.lcssa, i32 noundef %bad_blocks.0.lcssa, i32 noundef %359) #15
  br label %out

if.end207:                                        ; preds = %land.lhs.true184.if.end207_crit_edge, %land.lhs.true182.if.end207_crit_edge, %if.then180.if.end207_crit_edge
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  call void @jffs2_garbage_collect_trigger(ptr noundef %c) #11
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  br label %out

out:                                              ; preds = %if.end207, %do.end198, %if.end177.out_crit_edge, %if.else99.out_crit_edge, %if.then88.out_crit_edge, %jffs2_scan_eraseblock.exit.out_crit_edge, %jffs2_scan_eraseblock.exit.thread374, %do.end42
  %ret.3 = phi i32 [ -5, %do.end198 ], [ -12, %do.end42 ], [ 0, %if.end207 ], [ 0, %if.end177.out_crit_edge ], [ %retval.6.i.ph373, %jffs2_scan_eraseblock.exit.thread374 ], [ %retval.6.i, %jffs2_scan_eraseblock.exit.out_crit_edge ], [ %call90, %if.then88.out_crit_edge ], [ %call100, %if.else99.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size.0)
  %tobool210.not = icmp eq i32 %buf_size.0, 0
  br i1 %tobool210.not, label %if.else212, label %if.then211

if.then211:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %360 = ptrtoint ptr %flashbuf to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %flashbuf, align 4
  call void @kfree(ptr noundef %361) #11
  br label %if.end218

if.else212:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %362 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %c, align 4
  %size215 = getelementptr inbounds %struct.mtd_info, ptr %363, i32 0, i32 2
  %364 = ptrtoint ptr %size215 to i32
  call void @__asan_load8_noabort(i32 %364)
  %365 = load i64, ptr %size215, align 8
  %conv216 = trunc i64 %365 to i32
  %call217 = call i32 @mtd_unpoint(ptr noundef %363, i64 noundef 0, i32 noundef %conv216) #11
  br label %if.end218

if.end218:                                        ; preds = %if.else212, %if.then211
  call void @kfree(ptr noundef %call7.i.i) #11
  br label %cleanup219

cleanup219:                                       ; preds = %if.end218, %do.end27.cleanup219_crit_edge
  %retval.0 = phi i32 [ %ret.3, %if.end218 ], [ -12, %do.end27.cleanup219_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %try_size) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pointlen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashbuf) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_point(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unpoint(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_kmalloc_up_to(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_sum_reset_collected(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @file_dirty(ptr noundef %c, ptr noundef %jeb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %jeb, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %0 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_size, align 4
  %call1 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %2 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wasted_size, align 4
  %dirty_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %4 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dirty_size, align 4
  %add = add i32 %5, %3
  store i32 %add, ptr %dirty_size, align 4
  %dirty_size6 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %6 = ptrtoint ptr %dirty_size6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty_size6, align 4
  %add7 = add i32 %7, %3
  store i32 %add7, ptr %dirty_size6, align 4
  %8 = load i32, ptr %wasted_size, align 4
  %wasted_size9 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %9 = ptrtoint ptr %wasted_size9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wasted_size9, align 4
  %sub = sub i32 %10, %8
  store i32 %sub, ptr %wasted_size9, align 4
  store i32 0, ptr %wasted_size, align 4
  %11 = load i32, ptr %dirty_size, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %12 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sector_size, align 4
  %div32 = lshr i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div32)
  %cmp.not = icmp ult i32 %11, %div32
  br i1 %cmp.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end4
  %very_dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32
  %14 = ptrtoint ptr %very_dirty_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %very_dirty_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %very_dirty_list, ptr noundef %15) #11
  br i1 %call.i.i, label %if.then12.cleanup.sink.split_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end4
  %dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33
  %16 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dirty_list, align 4
  %call.i.i33 = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %dirty_list, ptr noundef %17) #11
  br i1 %call.i.i33, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge
  %.sink39 = phi ptr [ %15, %if.then12.cleanup.sink.split_crit_edge ], [ %17, %if.else.cleanup.sink.split_crit_edge ]
  %dirty_list.sink38 = phi ptr [ %very_dirty_list, %if.then12.cleanup.sink.split_crit_edge ], [ %dirty_list, %if.else.cleanup.sink.split_crit_edge ]
  %prev1.i.i34 = getelementptr inbounds %struct.list_head, ptr %.sink39, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %jeb, ptr %prev1.i.i34, align 4
  %19 = ptrtoint ptr %jeb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.sink39, ptr %jeb, align 4
  %prev3.i.i35 = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dirty_list.sink38, ptr %prev3.i.i35, align 4
  %21 = ptrtoint ptr %dirty_list.sink38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %jeb, ptr %dirty_list.sink38, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_sum_move_collected(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_prealloc_raw_node_refs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_scan_dirty_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_garbage_collect_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @jffs2_scan_classify_jeb(ptr nocapture noundef %c, ptr nocapture noundef %jeb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %used_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 4
  %0 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used_size, align 4
  %unchecked_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 3
  %2 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unchecked_size, align 4
  %add = add i32 %3, %1
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %4 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cleanmarker_size, align 4
  %add1 = add i32 %5, 3
  %and = and i32 %add1, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and)
  %cmp = icmp eq i32 %add, %and
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %dirty_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %6 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %first_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 9
  %8 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %first_node, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true2.return_crit_edge, label %lor.lhs.false

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %incdec.ptr.i = getelementptr %struct.jffs2_raw_node_ref, ptr %9, i32 1
  %flash_offset.i = getelementptr %struct.jffs2_raw_node_ref, ptr %9, i32 1, i32 1
  %10 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flash_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp eq i32 %11, -1
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.if.end2.i_crit_edge

lor.lhs.false.if.end2.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i:                                        ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i.return_crit_edge, label %if.then.i.if.end2.i_crit_edge

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %lor.lhs.false.if.end2.i_crit_edge
  %ref.addr.0.i = phi ptr [ %13, %if.then.i.if.end2.i_crit_edge ], [ %incdec.ptr.i, %lor.lhs.false.if.end2.i_crit_edge ]
  %flash_offset3.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %flash_offset3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flash_offset3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %15)
  %cmp4.i = icmp eq i32 %15, -2
  %tobool5.not = icmp eq ptr %ref.addr.0.i, null
  %or.cond46 = select i1 %cmp4.i, i1 true, i1 %tobool5.not
  br i1 %or.cond46, label %if.end2.i.return_crit_edge, label %if.end2.i.if.else_crit_edge

if.end2.i.if.else_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end2.i.return_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else:                                          ; preds = %if.end2.i.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %16 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sector_size, align 4
  %sub = sub i32 %17, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %sub)
  %cmp9 = icmp ugt i32 %sub, 196
  br i1 %cmp9, label %if.else20, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dirty_size11 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %18 = ptrtoint ptr %dirty_size11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty_size11, align 4
  %dirty_size12 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %20 = ptrtoint ptr %dirty_size12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty_size12, align 4
  %sub13 = sub i32 %21, %19
  store i32 %sub13, ptr %dirty_size12, align 4
  %22 = load i32, ptr %dirty_size11, align 4
  %wasted_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %23 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wasted_size, align 4
  %add15 = add i32 %24, %22
  store i32 %add15, ptr %wasted_size, align 4
  %25 = load i32, ptr %dirty_size11, align 4
  %wasted_size17 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %26 = ptrtoint ptr %wasted_size17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wasted_size17, align 4
  %add18 = add i32 %27, %25
  store i32 %add18, ptr %wasted_size17, align 4
  store i32 0, ptr %dirty_size11, align 4
  br label %return

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool22.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool25.not, i1 false
  %spec.select = select i1 %or.cond, i32 4, i32 2
  br label %return

return:                                           ; preds = %if.else20, %if.then10, %if.end2.i.return_crit_edge, %if.then.i.return_crit_edge, %land.lhs.true2.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 3, %land.lhs.true2.return_crit_edge ], [ %spec.select, %if.else20 ], [ 3, %if.then.i.return_crit_edge ], [ 3, %if.end2.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_scan_make_ino_cache(ptr noundef %c, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %ino) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %highest_ino = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %highest_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %highest_ino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ino)
  %cmp = icmp ult i32 %1, %ino
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %highest_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ino, ptr %highest_ino, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %call4 = tail call ptr @jffs2_alloc_inode_cache() #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %3 = call ptr @memset(ptr %call4, i32 0, i32 28)
  %ino9 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4, i32 0, i32 5
  %4 = ptrtoint ptr %ino9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ino, ptr %ino9, align 4
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4, i32 0, i32 1
  %5 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %nodes, align 4
  tail call void @jffs2_add_ino_cache(ptr noundef %c, ptr noundef nonnull %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ino)
  %cmp10 = icmp eq i32 %ino, 1
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4, i32 0, i32 8
  %6 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %pino_nlink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.then11 ], [ %call4, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_get_ino_cache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_inode_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_ino_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_rotate_lists(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clean_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %count.0.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %tmp.0.in.i = phi ptr [ %clean_list, %entry ], [ %tmp.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %clean_list
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %count_list.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

count_list.exit:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %tobool.not = icmp eq i32 %count.0.i, 0
  br i1 %tobool.not, label %count_list.exit.if.end_crit_edge, label %if.then

count_list.exit.if.end_crit_edge:                 ; preds = %count_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %count_list.exit
  %1 = load i32, ptr @pseudo_random, align 4
  %rem = urem i32 %1, %count.0.i
  %2 = ptrtoint ptr %clean_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clean_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %clean_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %clean_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clean_list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %clean_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %clean_list, align 4
  %prev.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not7.i = icmp eq i32 %rem, 0
  br i1 %tobool.not7.i, label %list_del.exit.i.while.end.i_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  br label %while.body.i

list_del.exit.i.while.end.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %list_del.exit.i.while.body.i_crit_edge
  %n.09.i = phi ptr [ %13, %while.body.i.while.body.i_crit_edge ], [ %3, %list_del.exit.i.while.body.i_crit_edge ]
  %count.addr.08.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %rem, %list_del.exit.i.while.body.i_crit_edge ]
  %dec.i = add i32 %count.addr.08.i, -1
  %12 = ptrtoint ptr %n.09.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %n.09.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %list_del.exit.i.while.end.i_crit_edge
  %n.0.lcssa.i = phi ptr [ %3, %list_del.exit.i.while.end.i_crit_edge ], [ %13, %while.body.i.while.end.i_crit_edge ]
  %14 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %n.0.lcssa.i, align 4
  %call.i.i5.i = tail call zeroext i1 @__list_add_valid(ptr noundef %clean_list, ptr noundef %n.0.lcssa.i, ptr noundef %15) #11
  br i1 %call.i.i5.i, label %if.end.i.i6.i, label %while.end.i.if.end_crit_edge

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i6.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %clean_list, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %clean_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %clean_list, align 4
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %n.0.lcssa.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %clean_list, ptr %n.0.lcssa.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i6.i, %while.end.i.if.end_crit_edge, %count_list.exit.if.end_crit_edge
  %very_dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %for.cond.i61.for.cond.i61_crit_edge, %if.end
  %count.0.i56 = phi i32 [ 0, %if.end ], [ %inc.i60, %for.cond.i61.for.cond.i61_crit_edge ]
  %tmp.0.in.i57 = phi ptr [ %very_dirty_list, %if.end ], [ %tmp.0.i58, %for.cond.i61.for.cond.i61_crit_edge ]
  %20 = ptrtoint ptr %tmp.0.in.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.0.i58 = load ptr, ptr %tmp.0.in.i57, align 4
  %cmp.i.not.i59 = icmp eq ptr %tmp.0.i58, %very_dirty_list
  %inc.i60 = add i32 %count.0.i56, 1
  br i1 %cmp.i.not.i59, label %count_list.exit62, label %for.cond.i61.for.cond.i61_crit_edge

for.cond.i61.for.cond.i61_crit_edge:              ; preds = %for.cond.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i61

count_list.exit62:                                ; preds = %for.cond.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i56)
  %tobool3.not = icmp eq i32 %count.0.i56, 0
  br i1 %tobool3.not, label %count_list.exit62.if.end7_crit_edge, label %if.then4

count_list.exit62.if.end7_crit_edge:              ; preds = %count_list.exit62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %count_list.exit62
  %21 = load i32, ptr @pseudo_random, align 4
  %rem5 = urem i32 %21, %count.0.i56
  %22 = ptrtoint ptr %very_dirty_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %very_dirty_list, align 4
  %call.i.i.i63 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %very_dirty_list) #11
  br i1 %call.i.i.i63, label %if.end.i.i.i66, label %if.then4.list_del.exit.i69_crit_edge

if.then4.list_del.exit.i69_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i69

if.end.i.i.i66:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i64 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32, i32 1
  %24 = ptrtoint ptr %prev.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i64, align 4
  %26 = ptrtoint ptr %very_dirty_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %very_dirty_list, align 4
  %prev1.i.i.i.i65 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i65, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i69

list_del.exit.i69:                                ; preds = %if.end.i.i.i66, %if.then4.list_del.exit.i69_crit_edge
  %30 = ptrtoint ptr %very_dirty_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %very_dirty_list, align 4
  %prev.i.i67 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32, i32 1
  %31 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5)
  %tobool.not7.i68 = icmp eq i32 %rem5, 0
  br i1 %tobool.not7.i68, label %list_del.exit.i69.while.end.i77_crit_edge, label %list_del.exit.i69.while.body.i74_crit_edge

list_del.exit.i69.while.body.i74_crit_edge:       ; preds = %list_del.exit.i69
  br label %while.body.i74

list_del.exit.i69.while.end.i77_crit_edge:        ; preds = %list_del.exit.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i77

while.body.i74:                                   ; preds = %while.body.i74.while.body.i74_crit_edge, %list_del.exit.i69.while.body.i74_crit_edge
  %n.09.i70 = phi ptr [ %33, %while.body.i74.while.body.i74_crit_edge ], [ %23, %list_del.exit.i69.while.body.i74_crit_edge ]
  %count.addr.08.i71 = phi i32 [ %dec.i72, %while.body.i74.while.body.i74_crit_edge ], [ %rem5, %list_del.exit.i69.while.body.i74_crit_edge ]
  %dec.i72 = add i32 %count.addr.08.i71, -1
  %32 = ptrtoint ptr %n.09.i70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %n.09.i70, align 4
  %tobool.not.i73 = icmp eq i32 %dec.i72, 0
  br i1 %tobool.not.i73, label %while.body.i74.while.end.i77_crit_edge, label %while.body.i74.while.body.i74_crit_edge

while.body.i74.while.body.i74_crit_edge:          ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i74

while.body.i74.while.end.i77_crit_edge:           ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i77

while.end.i77:                                    ; preds = %while.body.i74.while.end.i77_crit_edge, %list_del.exit.i69.while.end.i77_crit_edge
  %n.0.lcssa.i75 = phi ptr [ %23, %list_del.exit.i69.while.end.i77_crit_edge ], [ %33, %while.body.i74.while.end.i77_crit_edge ]
  %34 = ptrtoint ptr %n.0.lcssa.i75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %n.0.lcssa.i75, align 4
  %call.i.i5.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef %very_dirty_list, ptr noundef %n.0.lcssa.i75, ptr noundef %35) #11
  br i1 %call.i.i5.i76, label %if.end.i.i6.i79, label %while.end.i77.if.end7_crit_edge

while.end.i77.if.end7_crit_edge:                  ; preds = %while.end.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i.i6.i79:                                  ; preds = %while.end.i77
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i78 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %very_dirty_list, ptr %prev1.i.i.i78, align 4
  %37 = ptrtoint ptr %very_dirty_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %very_dirty_list, align 4
  %38 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %n.0.lcssa.i75, ptr %prev.i.i67, align 4
  %39 = ptrtoint ptr %n.0.lcssa.i75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %very_dirty_list, ptr %n.0.lcssa.i75, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i6.i79, %while.end.i77.if.end7_crit_edge, %count_list.exit62.if.end7_crit_edge
  %dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33
  br label %for.cond.i86

for.cond.i86:                                     ; preds = %for.cond.i86.for.cond.i86_crit_edge, %if.end7
  %count.0.i81 = phi i32 [ 0, %if.end7 ], [ %inc.i85, %for.cond.i86.for.cond.i86_crit_edge ]
  %tmp.0.in.i82 = phi ptr [ %dirty_list, %if.end7 ], [ %tmp.0.i83, %for.cond.i86.for.cond.i86_crit_edge ]
  %40 = ptrtoint ptr %tmp.0.in.i82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %tmp.0.i83 = load ptr, ptr %tmp.0.in.i82, align 4
  %cmp.i.not.i84 = icmp eq ptr %tmp.0.i83, %dirty_list
  %inc.i85 = add i32 %count.0.i81, 1
  br i1 %cmp.i.not.i84, label %count_list.exit87, label %for.cond.i86.for.cond.i86_crit_edge

for.cond.i86.for.cond.i86_crit_edge:              ; preds = %for.cond.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i86

count_list.exit87:                                ; preds = %for.cond.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i81)
  %tobool9.not = icmp eq i32 %count.0.i81, 0
  br i1 %tobool9.not, label %count_list.exit87.if.end13_crit_edge, label %if.then10

count_list.exit87.if.end13_crit_edge:             ; preds = %count_list.exit87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %count_list.exit87
  %41 = load i32, ptr @pseudo_random, align 4
  %rem11 = urem i32 %41, %count.0.i81
  %42 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dirty_list, align 4
  %call.i.i.i88 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dirty_list) #11
  br i1 %call.i.i.i88, label %if.end.i.i.i91, label %if.then10.list_del.exit.i94_crit_edge

if.then10.list_del.exit.i94_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i94

if.end.i.i.i91:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i89 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33, i32 1
  %44 = ptrtoint ptr %prev.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i89, align 4
  %46 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dirty_list, align 4
  %prev1.i.i.i.i90 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i90, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i94

list_del.exit.i94:                                ; preds = %if.end.i.i.i91, %if.then10.list_del.exit.i94_crit_edge
  %50 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %dirty_list, align 4
  %prev.i.i92 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33, i32 1
  %51 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem11)
  %tobool.not7.i93 = icmp eq i32 %rem11, 0
  br i1 %tobool.not7.i93, label %list_del.exit.i94.while.end.i102_crit_edge, label %list_del.exit.i94.while.body.i99_crit_edge

list_del.exit.i94.while.body.i99_crit_edge:       ; preds = %list_del.exit.i94
  br label %while.body.i99

list_del.exit.i94.while.end.i102_crit_edge:       ; preds = %list_del.exit.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i102

while.body.i99:                                   ; preds = %while.body.i99.while.body.i99_crit_edge, %list_del.exit.i94.while.body.i99_crit_edge
  %n.09.i95 = phi ptr [ %53, %while.body.i99.while.body.i99_crit_edge ], [ %43, %list_del.exit.i94.while.body.i99_crit_edge ]
  %count.addr.08.i96 = phi i32 [ %dec.i97, %while.body.i99.while.body.i99_crit_edge ], [ %rem11, %list_del.exit.i94.while.body.i99_crit_edge ]
  %dec.i97 = add i32 %count.addr.08.i96, -1
  %52 = ptrtoint ptr %n.09.i95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %n.09.i95, align 4
  %tobool.not.i98 = icmp eq i32 %dec.i97, 0
  br i1 %tobool.not.i98, label %while.body.i99.while.end.i102_crit_edge, label %while.body.i99.while.body.i99_crit_edge

while.body.i99.while.body.i99_crit_edge:          ; preds = %while.body.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i99

while.body.i99.while.end.i102_crit_edge:          ; preds = %while.body.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i102

while.end.i102:                                   ; preds = %while.body.i99.while.end.i102_crit_edge, %list_del.exit.i94.while.end.i102_crit_edge
  %n.0.lcssa.i100 = phi ptr [ %43, %list_del.exit.i94.while.end.i102_crit_edge ], [ %53, %while.body.i99.while.end.i102_crit_edge ]
  %54 = ptrtoint ptr %n.0.lcssa.i100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %n.0.lcssa.i100, align 4
  %call.i.i5.i101 = tail call zeroext i1 @__list_add_valid(ptr noundef %dirty_list, ptr noundef %n.0.lcssa.i100, ptr noundef %55) #11
  br i1 %call.i.i5.i101, label %if.end.i.i6.i104, label %while.end.i102.if.end13_crit_edge

while.end.i102.if.end13_crit_edge:                ; preds = %while.end.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end.i.i6.i104:                                 ; preds = %while.end.i102
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dirty_list, ptr %prev1.i.i.i103, align 4
  %57 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %dirty_list, align 4
  %58 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %n.0.lcssa.i100, ptr %prev.i.i92, align 4
  %59 = ptrtoint ptr %n.0.lcssa.i100 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %dirty_list, ptr %n.0.lcssa.i100, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i.i6.i104, %while.end.i102.if.end13_crit_edge, %count_list.exit87.if.end13_crit_edge
  %erasable_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34
  br label %for.cond.i111

for.cond.i111:                                    ; preds = %for.cond.i111.for.cond.i111_crit_edge, %if.end13
  %count.0.i106 = phi i32 [ 0, %if.end13 ], [ %inc.i110, %for.cond.i111.for.cond.i111_crit_edge ]
  %tmp.0.in.i107 = phi ptr [ %erasable_list, %if.end13 ], [ %tmp.0.i108, %for.cond.i111.for.cond.i111_crit_edge ]
  %60 = ptrtoint ptr %tmp.0.in.i107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %tmp.0.i108 = load ptr, ptr %tmp.0.in.i107, align 4
  %cmp.i.not.i109 = icmp eq ptr %tmp.0.i108, %erasable_list
  %inc.i110 = add i32 %count.0.i106, 1
  br i1 %cmp.i.not.i109, label %count_list.exit112, label %for.cond.i111.for.cond.i111_crit_edge

for.cond.i111.for.cond.i111_crit_edge:            ; preds = %for.cond.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i111

count_list.exit112:                               ; preds = %for.cond.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i106)
  %tobool15.not = icmp eq i32 %count.0.i106, 0
  br i1 %tobool15.not, label %count_list.exit112.if.end19_crit_edge, label %if.then16

count_list.exit112.if.end19_crit_edge:            ; preds = %count_list.exit112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %count_list.exit112
  %61 = load i32, ptr @pseudo_random, align 4
  %rem17 = urem i32 %61, %count.0.i106
  %62 = ptrtoint ptr %erasable_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %erasable_list, align 4
  %call.i.i.i113 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %erasable_list) #11
  br i1 %call.i.i.i113, label %if.end.i.i.i116, label %if.then16.list_del.exit.i119_crit_edge

if.then16.list_del.exit.i119_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i119

if.end.i.i.i116:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i114 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34, i32 1
  %64 = ptrtoint ptr %prev.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i114, align 4
  %66 = ptrtoint ptr %erasable_list to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %erasable_list, align 4
  %prev1.i.i.i.i115 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i115, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i119

list_del.exit.i119:                               ; preds = %if.end.i.i.i116, %if.then16.list_del.exit.i119_crit_edge
  %70 = ptrtoint ptr %erasable_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %erasable_list, align 4
  %prev.i.i117 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34, i32 1
  %71 = ptrtoint ptr %prev.i.i117 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem17)
  %tobool.not7.i118 = icmp eq i32 %rem17, 0
  br i1 %tobool.not7.i118, label %list_del.exit.i119.while.end.i127_crit_edge, label %list_del.exit.i119.while.body.i124_crit_edge

list_del.exit.i119.while.body.i124_crit_edge:     ; preds = %list_del.exit.i119
  br label %while.body.i124

list_del.exit.i119.while.end.i127_crit_edge:      ; preds = %list_del.exit.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i127

while.body.i124:                                  ; preds = %while.body.i124.while.body.i124_crit_edge, %list_del.exit.i119.while.body.i124_crit_edge
  %n.09.i120 = phi ptr [ %73, %while.body.i124.while.body.i124_crit_edge ], [ %63, %list_del.exit.i119.while.body.i124_crit_edge ]
  %count.addr.08.i121 = phi i32 [ %dec.i122, %while.body.i124.while.body.i124_crit_edge ], [ %rem17, %list_del.exit.i119.while.body.i124_crit_edge ]
  %dec.i122 = add i32 %count.addr.08.i121, -1
  %72 = ptrtoint ptr %n.09.i120 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %n.09.i120, align 4
  %tobool.not.i123 = icmp eq i32 %dec.i122, 0
  br i1 %tobool.not.i123, label %while.body.i124.while.end.i127_crit_edge, label %while.body.i124.while.body.i124_crit_edge

while.body.i124.while.body.i124_crit_edge:        ; preds = %while.body.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i124

while.body.i124.while.end.i127_crit_edge:         ; preds = %while.body.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i127

while.end.i127:                                   ; preds = %while.body.i124.while.end.i127_crit_edge, %list_del.exit.i119.while.end.i127_crit_edge
  %n.0.lcssa.i125 = phi ptr [ %63, %list_del.exit.i119.while.end.i127_crit_edge ], [ %73, %while.body.i124.while.end.i127_crit_edge ]
  %74 = ptrtoint ptr %n.0.lcssa.i125 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %n.0.lcssa.i125, align 4
  %call.i.i5.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef %erasable_list, ptr noundef %n.0.lcssa.i125, ptr noundef %75) #11
  br i1 %call.i.i5.i126, label %if.end.i.i6.i129, label %while.end.i127.if.end19_crit_edge

while.end.i127.if.end19_crit_edge:                ; preds = %while.end.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end.i.i6.i129:                                 ; preds = %while.end.i127
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i128 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %erasable_list, ptr %prev1.i.i.i128, align 4
  %77 = ptrtoint ptr %erasable_list to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %erasable_list, align 4
  %78 = ptrtoint ptr %prev.i.i117 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %n.0.lcssa.i125, ptr %prev.i.i117, align 4
  %79 = ptrtoint ptr %n.0.lcssa.i125 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %erasable_list, ptr %n.0.lcssa.i125, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end.i.i6.i129, %while.end.i127.if.end19_crit_edge, %count_list.exit112.if.end19_crit_edge
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %80 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_erasing_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool20.not = icmp eq i32 %81, 0
  br i1 %tobool20.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  %82 = load i32, ptr @pseudo_random, align 4
  %rem23 = urem i32 %82, %81
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %83 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %erase_pending_list, align 4
  %call.i.i.i131 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %erase_pending_list) #11
  br i1 %call.i.i.i131, label %if.end.i.i.i134, label %if.then21.list_del.exit.i137_crit_edge

if.then21.list_del.exit.i137_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i137

if.end.i.i.i134:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i132 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38, i32 1
  %85 = ptrtoint ptr %prev.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i132, align 4
  %87 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %erase_pending_list, align 4
  %prev1.i.i.i.i133 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i133, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit.i137

list_del.exit.i137:                               ; preds = %if.end.i.i.i134, %if.then21.list_del.exit.i137_crit_edge
  %91 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %erase_pending_list, align 4
  %prev.i.i135 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38, i32 1
  %92 = ptrtoint ptr %prev.i.i135 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23)
  %tobool.not7.i136 = icmp eq i32 %rem23, 0
  br i1 %tobool.not7.i136, label %list_del.exit.i137.while.end.i145_crit_edge, label %list_del.exit.i137.while.body.i142_crit_edge

list_del.exit.i137.while.body.i142_crit_edge:     ; preds = %list_del.exit.i137
  br label %while.body.i142

list_del.exit.i137.while.end.i145_crit_edge:      ; preds = %list_del.exit.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i145

while.body.i142:                                  ; preds = %while.body.i142.while.body.i142_crit_edge, %list_del.exit.i137.while.body.i142_crit_edge
  %n.09.i138 = phi ptr [ %94, %while.body.i142.while.body.i142_crit_edge ], [ %84, %list_del.exit.i137.while.body.i142_crit_edge ]
  %count.addr.08.i139 = phi i32 [ %dec.i140, %while.body.i142.while.body.i142_crit_edge ], [ %rem23, %list_del.exit.i137.while.body.i142_crit_edge ]
  %dec.i140 = add i32 %count.addr.08.i139, -1
  %93 = ptrtoint ptr %n.09.i138 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %n.09.i138, align 4
  %tobool.not.i141 = icmp eq i32 %dec.i140, 0
  br i1 %tobool.not.i141, label %while.body.i142.while.end.i145_crit_edge, label %while.body.i142.while.body.i142_crit_edge

while.body.i142.while.body.i142_crit_edge:        ; preds = %while.body.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i142

while.body.i142.while.end.i145_crit_edge:         ; preds = %while.body.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i145

while.end.i145:                                   ; preds = %while.body.i142.while.end.i145_crit_edge, %list_del.exit.i137.while.end.i145_crit_edge
  %n.0.lcssa.i143 = phi ptr [ %84, %list_del.exit.i137.while.end.i145_crit_edge ], [ %94, %while.body.i142.while.end.i145_crit_edge ]
  %95 = ptrtoint ptr %n.0.lcssa.i143 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %n.0.lcssa.i143, align 4
  %call.i.i5.i144 = tail call zeroext i1 @__list_add_valid(ptr noundef %erase_pending_list, ptr noundef %n.0.lcssa.i143, ptr noundef %96) #11
  br i1 %call.i.i5.i144, label %if.end.i.i6.i147, label %while.end.i145.if.end24_crit_edge

while.end.i145.if.end24_crit_edge:                ; preds = %while.end.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.i.i6.i147:                                 ; preds = %while.end.i145
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i146 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %erase_pending_list, ptr %prev1.i.i.i146, align 4
  %98 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %96, ptr %erase_pending_list, align 4
  %99 = ptrtoint ptr %prev.i.i135 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %n.0.lcssa.i143, ptr %prev.i.i135, align 4
  %100 = ptrtoint ptr %n.0.lcssa.i143 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %erase_pending_list, ptr %n.0.lcssa.i143, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end.i.i6.i147, %while.end.i145.if.end24_crit_edge, %if.end19.if.end24_crit_edge
  %nr_free_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %101 = ptrtoint ptr %nr_free_blocks to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_free_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool25.not = icmp eq i32 %102, 0
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.then26

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  %103 = load i32, ptr @pseudo_random, align 4
  %rem28 = urem i32 %103, %102
  %free_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40
  %104 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %free_list, align 4
  %call.i.i.i149 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %free_list) #11
  br i1 %call.i.i.i149, label %if.end.i.i.i152, label %if.then26.list_del.exit.i155_crit_edge

if.then26.list_del.exit.i155_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i155

if.end.i.i.i152:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i150 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40, i32 1
  %106 = ptrtoint ptr %prev.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i.i150, align 4
  %108 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %free_list, align 4
  %prev1.i.i.i.i151 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i.i151, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del.exit.i155

list_del.exit.i155:                               ; preds = %if.end.i.i.i152, %if.then26.list_del.exit.i155_crit_edge
  %112 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 256 to ptr), ptr %free_list, align 4
  %prev.i.i153 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40, i32 1
  %113 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem28)
  %tobool.not7.i154 = icmp eq i32 %rem28, 0
  br i1 %tobool.not7.i154, label %list_del.exit.i155.while.end.i163_crit_edge, label %list_del.exit.i155.while.body.i160_crit_edge

list_del.exit.i155.while.body.i160_crit_edge:     ; preds = %list_del.exit.i155
  br label %while.body.i160

list_del.exit.i155.while.end.i163_crit_edge:      ; preds = %list_del.exit.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i163

while.body.i160:                                  ; preds = %while.body.i160.while.body.i160_crit_edge, %list_del.exit.i155.while.body.i160_crit_edge
  %n.09.i156 = phi ptr [ %115, %while.body.i160.while.body.i160_crit_edge ], [ %105, %list_del.exit.i155.while.body.i160_crit_edge ]
  %count.addr.08.i157 = phi i32 [ %dec.i158, %while.body.i160.while.body.i160_crit_edge ], [ %rem28, %list_del.exit.i155.while.body.i160_crit_edge ]
  %dec.i158 = add i32 %count.addr.08.i157, -1
  %114 = ptrtoint ptr %n.09.i156 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %n.09.i156, align 4
  %tobool.not.i159 = icmp eq i32 %dec.i158, 0
  br i1 %tobool.not.i159, label %while.body.i160.while.end.i163_crit_edge, label %while.body.i160.while.body.i160_crit_edge

while.body.i160.while.body.i160_crit_edge:        ; preds = %while.body.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i160

while.body.i160.while.end.i163_crit_edge:         ; preds = %while.body.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i163

while.end.i163:                                   ; preds = %while.body.i160.while.end.i163_crit_edge, %list_del.exit.i155.while.end.i163_crit_edge
  %n.0.lcssa.i161 = phi ptr [ %105, %list_del.exit.i155.while.end.i163_crit_edge ], [ %115, %while.body.i160.while.end.i163_crit_edge ]
  %116 = ptrtoint ptr %n.0.lcssa.i161 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %n.0.lcssa.i161, align 4
  %call.i.i5.i162 = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list, ptr noundef %n.0.lcssa.i161, ptr noundef %117) #11
  br i1 %call.i.i5.i162, label %if.end.i.i6.i165, label %while.end.i163.if.end29_crit_edge

while.end.i163.if.end29_crit_edge:                ; preds = %while.end.i163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end.i.i6.i165:                                 ; preds = %while.end.i163
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i164 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i164 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %free_list, ptr %prev1.i.i.i164, align 4
  %119 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %free_list, align 4
  %120 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %n.0.lcssa.i161, ptr %prev.i.i153, align 4
  %121 = ptrtoint ptr %n.0.lcssa.i161 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %free_list, ptr %n.0.lcssa.i161, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end.i.i6.i165, %while.end.i163.if.end29_crit_edge, %if.end24.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_check_nand_cleanmarker(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_fill_scan_buf(ptr noundef %c, ptr noundef %buf, i32 noundef %ofs, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #11
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !132
  %conv = zext i32 %ofs to i64
  %call = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv, i32 noundef %len, ptr noundef nonnull %retlen, ptr noundef %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %len)
  %cmp = icmp ult i32 %2, %len
  %. = select i1 %cmp, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_scan_sumnode(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_check_oob_empty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_scan_inode_node(ptr noundef %c, ptr noundef %jeb, ptr noundef %ri, i32 noundef %ofs, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ino1 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %0 = ptrtoint ptr %ino1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ino1, align 1
  %call = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %ri, i32 noundef 60) #17
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 20
  %2 = ptrtoint ptr %node_crc to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp.not = icmp eq i32 %call, %3
  br i1 %cmp.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %ofs, i32 noundef %3, i32 noundef %call) #15
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %4 = ptrtoint ptr %totlen to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %totlen, align 1
  %add = add i32 %5, 3
  %and = and i32 %add, -4
  %call10 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %and) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.then12, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %if.end
  %call.i = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %1) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end.i:                                         ; preds = %if.then12
  %highest_ino.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %highest_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %highest_ino.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp.i = icmp ult i32 %7, %1
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %highest_ino.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %highest_ino.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %call4.i = tail call ptr @jffs2_alloc_inode_cache() #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %jffs2_scan_make_ino_cache.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end3.i
  %9 = call ptr @memset(ptr %call4.i, i32 0, i32 28)
  %ino9.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4.i, i32 0, i32 5
  %10 = ptrtoint ptr %ino9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %ino9.i, align 4
  %nodes.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4.i, i32 0, i32 1
  %11 = ptrtoint ptr %nodes.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4.i, ptr %nodes.i, align 4
  tail call void @jffs2_add_ino_cache(ptr noundef %c, ptr noundef nonnull %call4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp10.i = icmp eq i32 %1, 1
  br i1 %cmp10.i, label %if.then11.i, label %if.end8.i.if.end17_crit_edge

if.end8.i.if.end17_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %pino_nlink.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4.i, i32 0, i32 8
  %12 = ptrtoint ptr %pino_nlink.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %pino_nlink.i, align 4
  br label %if.end17

jffs2_scan_make_ino_cache.exit:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #15
  br label %cleanup

if.end17:                                         ; preds = %if.then11.i, %if.end8.i.if.end17_crit_edge, %if.then12.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %ic.0 = phi ptr [ %call11, %if.end.if.end17_crit_edge ], [ %call4.i, %if.end8.i.if.end17_crit_edge ], [ %call4.i, %if.then11.i ], [ %call.i, %if.then12.if.end17_crit_edge ]
  %totlen18 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %13 = ptrtoint ptr %totlen18 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %totlen18, align 1
  %add20 = add i32 %14, 3
  %and21 = and i32 %add20, -4
  %call22 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %ofs, i32 noundef %and21, ptr noundef nonnull %ic.0) #11
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 5
  %15 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %version, align 1
  %17 = load i32, ptr @pseudo_random, align 4
  %add27 = add i32 %17, %16
  store i32 %add27, ptr @pseudo_random, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %sub = sub i32 %ofs, %19
  %call28 = tail call i32 @jffs2_sum_add_inode_mem(ptr noundef %s, ptr noundef %ri, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %jffs2_scan_make_ino_cache.exit, %do.end5
  %retval.0 = phi i32 [ %call10, %do.end5 ], [ 0, %if.end17 ], [ -12, %jffs2_scan_make_ino_cache.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_scan_dirent_node(ptr noundef %c, ptr noundef %jeb, ptr noundef %rd, i32 noundef %ofs, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %rd, i32 noundef 32) #17
  %node_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 11
  %0 = ptrtoint ptr %node_crc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp.not = icmp eq i32 %call, %1
  br i1 %cmp.not, label %if.end10, label %do.end3

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef %ofs, i32 noundef %1, i32 noundef %call) #15
  %totlen = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 2
  %2 = ptrtoint ptr %totlen to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %totlen, align 1
  %add = add i32 %3, 3
  %and = and i32 %add, -4
  %call8 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %and) #11
  br label %cleanup

if.end10:                                         ; preds = %entry
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 5
  %4 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %version, align 1
  %6 = load i32, ptr @pseudo_random, align 4
  %add12 = add i32 %6, %5
  store i32 %add12, ptr @pseudo_random, align 4
  %name = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 13
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 8
  %7 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nsize, align 1
  %conv = zext i8 %8 to i32
  %call13 = tail call i32 @strnlen(ptr noundef %name, i32 noundef %conv) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %conv)
  %cmp16 = icmp ult i32 %call13, %conv
  br i1 %cmp16, label %do.end21, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %ofs, i32 noundef %call13) #15
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end10.if.end24_crit_edge
  %add25 = add i32 %call13, 1
  %call26 = tail call ptr @jffs2_alloc_full_dirent(i32 noundef %add25) #11
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %name30 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call26, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %name30, ptr %name, i32 %call13)
  %arrayidx = getelementptr %struct.jffs2_full_dirent, ptr %call26, i32 0, i32 6, i32 %call13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call36 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %name30, i32 noundef %call13) #17
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 12
  %11 = ptrtoint ptr %name_crc to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %name_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %12)
  %cmp38.not = icmp eq i32 %call36, %12
  br i1 %cmp38.not, label %if.end59, label %do.end43

do.end43:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef %ofs, i32 noundef %12, i32 noundef %call36) #15
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %call26) #11
  %totlen51 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 2
  %13 = ptrtoint ptr %totlen51 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %totlen51, align 1
  %add53 = add i32 %14, 3
  %and54 = and i32 %add53, -4
  %call55 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %and54) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end29
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 4
  %15 = ptrtoint ptr %pino to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %pino, align 1
  %call.i = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %16) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end59.if.end64_crit_edge

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end.i:                                         ; preds = %if.end59
  %highest_ino.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 1
  %17 = ptrtoint ptr %highest_ino.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %highest_ino.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.i = icmp ult i32 %18, %16
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %highest_ino.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %highest_ino.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %call4.i = tail call ptr @jffs2_alloc_inode_cache() #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then63, label %if.end8.i

if.end8.i:                                        ; preds = %if.end3.i
  %20 = call ptr @memset(ptr %call4.i, i32 0, i32 28)
  %ino9.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4.i, i32 0, i32 5
  %21 = ptrtoint ptr %ino9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %ino9.i, align 4
  %nodes.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4.i, i32 0, i32 1
  %22 = ptrtoint ptr %nodes.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4.i, ptr %nodes.i, align 4
  tail call void @jffs2_add_ino_cache(ptr noundef %c, ptr noundef nonnull %call4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp10.i = icmp eq i32 %16, 1
  br i1 %cmp10.i, label %if.then11.i, label %if.end8.i.if.end64_crit_edge

if.end8.i.if.end64_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %pino_nlink.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call4.i, i32 0, i32 8
  %23 = ptrtoint ptr %pino_nlink.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %pino_nlink.i, align 4
  br label %if.end64

if.then63:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #15
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %call26) #11
  br label %cleanup

if.end64:                                         ; preds = %if.then11.i, %if.end8.i.if.end64_crit_edge, %if.end59.if.end64_crit_edge
  %retval.0.i.ph = phi ptr [ %call4.i, %if.end8.i.if.end64_crit_edge ], [ %call4.i, %if.then11.i ], [ %call.i, %if.end59.if.end64_crit_edge ]
  %ino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 6
  %24 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ino, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool66.not = icmp eq i32 %25, 0
  %cond = select i1 %tobool66.not, i32 3, i32 2
  %or = or i32 %cond, %ofs
  %totlen67 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 2
  %26 = ptrtoint ptr %totlen67 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %totlen67, align 1
  %add69 = add i32 %27, 3
  %and70 = and i32 %add69, -4
  %call71 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %or, i32 noundef %and70, ptr noundef nonnull %retval.0.i.ph) #11
  %28 = ptrtoint ptr %call26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call71, ptr %call26, align 4
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call26, i32 0, i32 1
  %29 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %next, align 4
  %30 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %version, align 1
  %version74 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call26, i32 0, i32 2
  %32 = ptrtoint ptr %version74 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %version74, align 4
  %33 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %ino, align 1
  %ino77 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call26, i32 0, i32 3
  %35 = ptrtoint ptr %ino77 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ino77, align 4
  %call80 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name30, i32 noundef %call13) #17
  %nhash = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call26, i32 0, i32 4
  %36 = ptrtoint ptr %nhash to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call80, ptr %nhash, align 4
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 9
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type, align 1
  %type81 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call26, i32 0, i32 5
  %39 = ptrtoint ptr %type81 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %type81, align 4
  tail call void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef nonnull %call26, ptr noundef nonnull %retval.0.i.ph) #11
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %sub = sub i32 %ofs, %41
  %call82 = tail call i32 @jffs2_sum_add_dirent_mem(ptr noundef %s, ptr noundef %rd, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then63, %do.end43, %if.end24.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ 0, %if.end64 ], [ -12, %if.then63 ], [ %call8, %do.end3 ], [ -12, %if.end24.cleanup_crit_edge ], [ %call55, %do.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_scan_xattr_node(ptr noundef %c, ptr noundef %jeb, ptr noundef %rx, i32 noundef %ofs, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %rx, i32 noundef 28) #17
  %node_crc = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 10
  %0 = ptrtoint ptr %node_crc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp.not = icmp eq i32 %call, %1
  br i1 %cmp.not, label %if.end10, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %7, ptr noundef nonnull @.str.71, i32 noundef %ofs, i32 noundef %1, i32 noundef %call) #15
  %totlen6 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 2
  %8 = ptrtoint ptr %totlen6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %totlen6, align 1
  %call8 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %9) #11
  br label %cleanup

if.end10:                                         ; preds = %entry
  %version13 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 5
  %10 = ptrtoint ptr %version13 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %version13, align 1
  %name_len = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 7
  %12 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name_len, align 1
  %conv = zext i8 %13 to i32
  %value_len = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 8
  %14 = ptrtoint ptr %value_len to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %value_len, align 1
  %conv16 = zext i16 %15 to i32
  %add17 = add nuw nsw i32 %conv, 36
  %add18 = add nuw nsw i32 %add17, %conv16
  %and = and i32 %add18, 131068
  %totlen19 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 2
  %16 = ptrtoint ptr %totlen19 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %totlen19, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp21.not = icmp eq i32 %and, %17
  br i1 %cmp21.not, label %if.end40, label %do.end26

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %18 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i121 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i121 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task29, align 8
  %pid.i122 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i122 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i122, align 8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %23, ptr noundef nonnull @.str.71, i32 noundef %ofs, i32 noundef %17, i32 noundef %and) #15
  %24 = ptrtoint ptr %totlen19 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %totlen19, align 1
  %call36 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %25) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end10
  %xid11 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 4
  %26 = ptrtoint ptr %xid11 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %xid11, align 1
  %call41 = tail call ptr @jffs2_setup_xattr_datum(ptr noundef %c, i32 noundef %27, i32 noundef %11) #11
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %version46 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call41, i32 0, i32 8
  %29 = ptrtoint ptr %version46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %version46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %11)
  %cmp47 = icmp ugt i32 %30, %11
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %ofs, 2
  %call50 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %or, i32 noundef %and, ptr noundef null) #11
  %node = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call41, i32 0, i32 1
  %31 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %node, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %call50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call50, align 4
  %36 = load ptr, ptr %node, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call50, ptr %36, align 4
  br label %if.end68

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %version46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %11, ptr %version46, align 4
  %xprefix = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 6
  %39 = ptrtoint ptr %xprefix to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %xprefix, align 1
  %conv55 = zext i8 %40 to i16
  %xprefix56 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call41, i32 0, i32 4
  %41 = ptrtoint ptr %xprefix56 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv55, ptr %xprefix56, align 2
  %42 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %name_len, align 1
  %conv58 = zext i8 %43 to i32
  %name_len59 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call41, i32 0, i32 12
  %44 = ptrtoint ptr %name_len59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv58, ptr %name_len59, align 4
  %45 = ptrtoint ptr %value_len to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %value_len, align 1
  %conv62 = zext i16 %46 to i32
  %value_len63 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call41, i32 0, i32 14
  %47 = ptrtoint ptr %value_len63 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv62, ptr %value_len63, align 4
  %data_crc = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 9
  %48 = ptrtoint ptr %data_crc to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %data_crc, align 1
  %data_crc65 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call41, i32 0, i32 9
  %50 = ptrtoint ptr %data_crc65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %data_crc65, align 4
  %or66 = or i32 %ofs, 2
  %call67 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %or66, i32 noundef %and, ptr noundef %call41) #11
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then49
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %sub = sub i32 %ofs, %52
  %call69 = tail call i32 @jffs2_sum_add_xattr_mem(ptr noundef %s, ptr noundef %rx, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then43, %do.end26, %do.end
  %retval.0 = phi i32 [ %28, %if.then43 ], [ 0, %if.end68 ], [ %call8, %do.end ], [ %call36, %do.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_scan_xref_node(ptr noundef %c, ptr noundef %jeb, ptr noundef %rr, i32 noundef %ofs, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %rr, i32 noundef 24) #17
  %node_crc = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 7
  %0 = ptrtoint ptr %node_crc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp.not = icmp eq i32 %call, %1
  br i1 %cmp.not, label %if.end9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %7, ptr noundef nonnull @.str.75, i32 noundef %ofs, i32 noundef %1, i32 noundef %call) #15
  %totlen = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 2
  %8 = ptrtoint ptr %totlen to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %totlen, align 1
  %add = add i32 %9, 3
  %and = and i32 %add, -4
  %call7 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %and) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %totlen10 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 2
  %10 = ptrtoint ptr %totlen10 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %totlen10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %11)
  %cmp12.not = icmp eq i32 %11, 28
  br i1 %cmp12.not, label %if.end30, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i89 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i89 to ptr
  %task19 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task19, align 8
  %pid.i90 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid.i90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid.i90, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %17, ptr noundef nonnull @.str.75, i32 noundef %ofs, i32 noundef %11, i32 noundef 28) #15
  %18 = ptrtoint ptr %totlen10 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %totlen10, align 1
  %call26 = tail call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %19) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end9
  %call31 = tail call ptr @jffs2_alloc_xattr_ref() #11
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %ino = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 4
  %20 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %ino, align 1
  %22 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call31, i32 0, i32 6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %22, align 4
  %xid = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 5
  %24 = ptrtoint ptr %xid to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %xid, align 1
  %26 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call31, i32 0, i32 7
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %26, align 4
  %xseqno = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 6
  %28 = ptrtoint ptr %xseqno to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %xseqno, align 1
  %xseqno38 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call31, i32 0, i32 5
  %30 = ptrtoint ptr %xseqno38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %xseqno38, align 4
  %highest_xseqno = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 63
  %31 = ptrtoint ptr %highest_xseqno to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %highest_xseqno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %32)
  %cmp40 = icmp ugt i32 %29, %32
  br i1 %cmp40, label %if.then41, label %if.end34.if.end45_crit_edge

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %and43 = and i32 %29, -2
  %33 = ptrtoint ptr %highest_xseqno to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and43, ptr %highest_xseqno, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end34.if.end45_crit_edge
  %xref_temp = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 68
  %34 = ptrtoint ptr %xref_temp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xref_temp, align 4
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call31, i32 0, i32 8
  %36 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %next, align 4
  store ptr %call31, ptr %xref_temp, align 4
  %or = or i32 %ofs, 2
  %37 = ptrtoint ptr %totlen10 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %totlen10, align 1
  %add49 = add i32 %38, 3
  %and50 = and i32 %add49, -4
  %call51 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %or, i32 noundef %and50, ptr noundef nonnull %call31) #11
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset, align 4
  %sub = sub i32 %ofs, %40
  %call52 = tail call i32 @jffs2_sum_add_xref_mem(ptr noundef %s, ptr noundef %rr, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end30.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ 0, %if.end45 ], [ %call7, %do.end ], [ %call26, %do.end16 ], [ -12, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_link_node_ref(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_add_padding_mem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_sum_disable_collecting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_add_inode_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_full_dirent(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dirent(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_fd_to_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_add_dirent_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_setup_xattr_datum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_add_xattr_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_xattr_ref() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_add_xref_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/scan.c", i32 137, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_scan_medium._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_scan_medium._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/scan.c", i32 237, i32 4}
!8 = !{ptr @jffs2_scan_medium._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_scan_medium._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/scan.c", i32 266, i32 4}
!12 = !{ptr @jffs2_scan_medium._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @jffs2_scan_medium._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jffs2/scan.c", i32 267, i32 4}
!16 = !{ptr @jffs2_scan_medium._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @jffs2_scan_medium._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jffs2/scan.c", i32 976, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @jffs2_scan_make_ino_cache._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @jffs2_scan_make_ino_cache._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @pseudo_random, !24, !"pseudo_random", i1 false, i1 false}
!24 = !{!"../fs/jffs2/scan.c", i32 37, i32 17}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jffs2/scan.c", i32 625, i32 4}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jffs2_scan_eraseblock._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @jffs2_scan_eraseblock._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/jffs2/scan.c", i32 630, i32 4}
!32 = !{ptr @jffs2_scan_eraseblock._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @jffs2_scan_eraseblock._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/scan.c", i32 675, i32 6}
!36 = !{ptr @jffs2_scan_eraseblock._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @jffs2_scan_eraseblock._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jffs2/scan.c", i32 723, i32 4}
!40 = !{ptr @jffs2_scan_eraseblock._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @jffs2_scan_eraseblock._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/jffs2/scan.c", i32 738, i32 4}
!44 = !{ptr @jffs2_scan_eraseblock._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @jffs2_scan_eraseblock._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/jffs2/scan.c", i32 739, i32 4}
!48 = !{ptr @jffs2_scan_eraseblock._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @jffs2_scan_eraseblock._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/jffs2/scan.c", i32 747, i32 4}
!52 = !{ptr @jffs2_scan_eraseblock._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @jffs2_scan_eraseblock._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @jffs2_scan_eraseblock._entry.34, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @jffs2_scan_eraseblock._entry_ptr.36, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/jffs2/scan.c", i32 763, i32 4}
!59 = !{ptr @jffs2_scan_eraseblock._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @jffs2_scan_eraseblock._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @jffs2_scan_eraseblock._entry.40, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @jffs2_scan_eraseblock._entry_ptr.41, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/jffs2/scan.c", i32 778, i32 4}
!65 = !{ptr @jffs2_scan_eraseblock._entry.42, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @jffs2_scan_eraseblock._entry_ptr.44, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/jffs2/scan.c", i32 780, i32 4}
!69 = !{ptr @jffs2_scan_eraseblock._entry.45, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @jffs2_scan_eraseblock._entry_ptr.47, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.49, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/jffs2/scan.c", i32 872, i32 5}
!73 = !{ptr @jffs2_scan_eraseblock._entry.48, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @jffs2_scan_eraseblock._entry_ptr.50, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/jffs2/scan.c", i32 879, i32 5}
!77 = !{ptr @jffs2_scan_eraseblock._entry.51, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @jffs2_scan_eraseblock._entry_ptr.53, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.55, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/jffs2/scan.c", i32 902, i32 5}
!81 = !{ptr @jffs2_scan_eraseblock._entry.54, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @jffs2_scan_eraseblock._entry_ptr.56, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.58, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/jffs2/scan.c", i32 913, i32 5}
!85 = !{ptr @jffs2_scan_eraseblock._entry.57, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @jffs2_scan_eraseblock._entry_ptr.59, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.60, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/jffs2/scan.c", i32 1009, i32 3}
!89 = !{ptr @.str.61, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @jffs2_scan_inode_node._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @jffs2_scan_inode_node._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.62, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/jffs2/scan.c", i32 1059, i32 3}
!94 = !{ptr @.str.63, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @jffs2_scan_dirent_node._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @jffs2_scan_dirent_node._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.65, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/jffs2/scan.c", i32 1072, i32 3}
!99 = !{ptr @jffs2_scan_dirent_node._entry.64, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @jffs2_scan_dirent_node._entry_ptr.66, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.68, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/jffs2/scan.c", i32 1084, i32 3}
!103 = !{ptr @jffs2_scan_dirent_node._entry.67, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @jffs2_scan_dirent_node._entry_ptr.69, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.70, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/jffs2/scan.c", i32 338, i32 3}
!107 = !{ptr @.str.71, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @jffs2_scan_xattr_node._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @jffs2_scan_xattr_node._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.73, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/jffs2/scan.c", i32 351, i32 3}
!112 = !{ptr @jffs2_scan_xattr_node._entry.72, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @jffs2_scan_xattr_node._entry_ptr.74, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.75, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/jffs2/scan.c", i32 394, i32 3}
!116 = !{ptr @jffs2_scan_xref_node._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @jffs2_scan_xref_node._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.77, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/jffs2/scan.c", i32 402, i32 3}
!120 = !{ptr @jffs2_scan_xref_node._entry.76, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @jffs2_scan_xref_node._entry_ptr.78, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2154465745, i64 2154466225, i64 2154465782, i64 2154465838, i64 2154465872, i64 2154465896, i64 2154465937, i64 2154465958, i64 2154465986, i64 2154466020}
