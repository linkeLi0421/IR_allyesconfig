; ModuleID = '/llk/IR_all_yes/fs/jffs2/summary.c_pt.bc'
source_filename = "../fs/jffs2/summary.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.jffs2_summary = type { i32, i32, i32, ptr, ptr, ptr }
%struct.jffs2_sum_inode_mem = type <{ ptr, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t }>
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jffs2_sum_unknown_mem = type { ptr, %struct.jint16_t }
%struct.jffs2_sum_dirent_mem = type <{ ptr, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [0 x i8] }>
%struct.jffs2_raw_dirent = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [2 x i8], %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jffs2_sum_xattr_mem = type <{ ptr, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t }>
%struct.jffs2_raw_xattr = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jffs2_sum_xref_mem = type <{ ptr, %struct.jint16_t, %struct.jint32_t }>
%struct.jffs2_raw_xref = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.jffs2_unknown_node = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t }
%struct.kvec = type { ptr, i32 }
%struct.jffs2_raw_summary = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, [0 x %struct.jint32_t] }
%struct.jffs2_sum_inode_flash = type <{ %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t }>
%struct.jffs2_sum_dirent_flash = type <{ %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [0 x i8] }>
%struct.jffs2_full_dirent = type { %union.anon.75, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.75 = type { ptr }
%struct.jffs2_sum_xattr_flash = type <{ %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t }>
%struct.jffs2_xattr_datum = type { ptr, ptr, i8, i8, i16, %struct.list_head, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.jffs2_xattr_ref = type { ptr, ptr, i8, i8, i16, i32, %union.anon.76, %union.anon.77, ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.jffs2_sum_xref_flash = type <{ %struct.jint16_t, %struct.jint32_t }>
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.jffs2_sum_marker = type { %struct.jint32_t, %struct.jint32_t }

@jffs2_sum_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014jffs2: warning: (%d) %s: Can't allocate memory for summary information!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jffs2_sum_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/jffs2/summary.c\00", [45 x i8] zeroinitializer }, align 32
@jffs2_sum_init._entry_ptr = internal global ptr @jffs2_sum_init._entry, section ".printk_index", align 4
@jffs2_sum_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014jffs2: warning: (%d) %s: Can't allocate buffer for writing out summary information!\0A\00", [41 x i8] zeroinitializer }, align 32
@jffs2_sum_init._entry_ptr.5 = internal global ptr @jffs2_sum_init._entry.3, section ".printk_index", align 4
@jffs2_sum_add_kvec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014jffs2: warning: (%d) %s: MEMORY ALLOCATION ERROR!\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jffs2_sum_add_kvec\00", [45 x i8] zeroinitializer }, align 32
@jffs2_sum_add_kvec._entry_ptr = internal global ptr @jffs2_sum_add_kvec._entry, section ".printk_index", align 4
@jffs2_sum_scan_sumnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014jffs2: warning: (%d) %s: Free size 0x%x bytes in eraseblock @0x%08x with summary?\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jffs2_sum_scan_sumnode\00", [41 x i8] zeroinitializer }, align 32
@jffs2_sum_scan_sumnode._entry_ptr = internal global ptr @jffs2_sum_scan_sumnode._entry, section ".printk_index", align 4
@jffs2_sum_scan_sumnode._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014jffs2: warning: (%d) %s: Summary node crc error, skipping summary information.\0A\00", [46 x i8] zeroinitializer }, align 32
@jffs2_sum_scan_sumnode._entry_ptr.12 = internal global ptr @jffs2_sum_scan_sumnode._entry.10, section ".printk_index", align 4
@jffs2_sum_write_sumnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014jffs2: warning: (%d) %s: Empty summary info!!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jffs2_sum_write_sumnode\00", [40 x i8] zeroinitializer }, align 32
@jffs2_sum_write_sumnode._entry_ptr = internal global ptr @jffs2_sum_write_sumnode._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jffs2_sum_add_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014jffs2: warning: (%d) %s: UNKNOWN node type %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jffs2_sum_add_mem\00", [46 x i8] zeroinitializer }, align 32
@jffs2_sum_add_mem._entry_ptr = internal global ptr @jffs2_sum_add_mem._entry, section ".printk_index", align 4
@jffs2_sum_process_sum_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015jffs2: notice: (%d) %s: scan_make_ino_cache failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jffs2_sum_process_sum_data\00", [37 x i8] zeroinitializer }, align 32
@jffs2_sum_process_sum_data._entry_ptr = internal global ptr @jffs2_sum_process_sum_data._entry, section ".printk_index", align 4
@jffs2_sum_process_sum_data._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013jffs2: Dirent at %08x has zero at start of name. Aborting mount.\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_sum_process_sum_data._entry_ptr.21 = internal global ptr @jffs2_sum_process_sum_data._entry.19, section ".printk_index", align 4
@jffs2_sum_process_sum_data._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013jffs2: Dirent at %08x has zeroes in name. Truncating to %d chars\0A\00", [60 x i8] zeroinitializer }, align 32
@jffs2_sum_process_sum_data._entry_ptr.24 = internal global ptr @jffs2_sum_process_sum_data._entry.22, section ".printk_index", align 4
@jffs2_sum_process_sum_data._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015jffs2: notice: (%d) %s: allocation of xattr_datum failed\0A\00", [36 x i8] zeroinitializer }, align 32
@jffs2_sum_process_sum_data._entry_ptr.27 = internal global ptr @jffs2_sum_process_sum_data._entry.25, section ".printk_index", align 4
@jffs2_sum_process_sum_data._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014jffs2: warning: (%d) %s: Unsupported node type %x found in summary! Exiting...\0A\00", [46 x i8] zeroinitializer }, align 32
@jffs2_sum_process_sum_data._entry_ptr.30 = internal global ptr @jffs2_sum_process_sum_data._entry.28, section ".printk_index", align 4
@jffs2_sum_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014jffs2: warning: (%d) %s: Summary too big (%d data, %d pad) in eraseblock at %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jffs2_sum_write_data\00", [43 x i8] zeroinitializer }, align 32
@jffs2_sum_write_data._entry_ptr = internal global ptr @jffs2_sum_write_data._entry, section ".printk_index", align 4
@jffs2_sum_write_data._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014jffs2: warning: (%d) %s: Not enough space for summary, padsize = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@jffs2_sum_write_data._entry_ptr.35 = internal global ptr @jffs2_sum_write_data._entry.33, section ".printk_index", align 4
@jffs2_sum_write_data._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014jffs2: warning: (%d) %s: Write of %u bytes at 0x%08x failed. returned %d, retlen %zd\0A\00", [40 x i8] zeroinitializer }, align 32
@jffs2_sum_write_data._entry_ptr.38 = internal global ptr @jffs2_sum_write_data._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 57345, i64 57346, i64 57352, i64 57353]
@__sancov_gen_cov_switch_values.39 = internal global [9 x i64] [i64 7, i64 16, i64 8195, i64 8196, i64 8198, i64 57345, i64 57346, i64 57352, i64 57353]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 16, i64 57345, i64 57346, i64 57352, i64 57353]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967165]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 16, i64 57345, i64 57346, i64 57352, i64 57353]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 33, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 40, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 366, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 656, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 667, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 864, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 98, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 420, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 447, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 453, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 534, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 551, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 690, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 700, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [22 x i8] c"../fs/jffs2/summary.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 825, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @jffs2_sum_add_kvec._entry, ptr @jffs2_sum_add_kvec._entry_ptr, ptr @jffs2_sum_add_mem._entry, ptr @jffs2_sum_add_mem._entry_ptr, ptr @jffs2_sum_init._entry, ptr @jffs2_sum_init._entry.3, ptr @jffs2_sum_init._entry_ptr, ptr @jffs2_sum_init._entry_ptr.5, ptr @jffs2_sum_process_sum_data._entry, ptr @jffs2_sum_process_sum_data._entry.19, ptr @jffs2_sum_process_sum_data._entry.22, ptr @jffs2_sum_process_sum_data._entry.25, ptr @jffs2_sum_process_sum_data._entry.28, ptr @jffs2_sum_process_sum_data._entry_ptr, ptr @jffs2_sum_process_sum_data._entry_ptr.21, ptr @jffs2_sum_process_sum_data._entry_ptr.24, ptr @jffs2_sum_process_sum_data._entry_ptr.27, ptr @jffs2_sum_process_sum_data._entry_ptr.30, ptr @jffs2_sum_scan_sumnode._entry, ptr @jffs2_sum_scan_sumnode._entry.10, ptr @jffs2_sum_scan_sumnode._entry_ptr, ptr @jffs2_sum_scan_sumnode._entry_ptr.12, ptr @jffs2_sum_write_data._entry, ptr @jffs2_sum_write_data._entry.33, ptr @jffs2_sum_write_data._entry.36, ptr @jffs2_sum_write_data._entry_ptr, ptr @jffs2_sum_write_data._entry_ptr.35, ptr @jffs2_sum_write_data._entry_ptr.38, ptr @jffs2_sum_write_sumnode._entry, ptr @jffs2_sum_write_sumnode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_add_kvec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_scan_sumnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_scan_sumnode._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_write_sumnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_add_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_process_sum_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_process_sum_data._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_process_sum_data._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_process_sum_data._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_process_sum_data._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_write_data._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_sum_write_data._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_init(ptr nocapture noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %0 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sector_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #16
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %3 = ptrtoint ptr %summary to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %summary, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end8.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9, ptr noundef nonnull @.str.1) #17
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 65536)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #18
  %11 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %summary, align 4
  %sum_buf = getelementptr inbounds %struct.jffs2_summary, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %sum_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %sum_buf, align 4
  %14 = load ptr, ptr %summary, align 4
  %sum_buf9 = getelementptr inbounds %struct.jffs2_summary, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %sum_buf9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sum_buf9, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %do.end14, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end14:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i30 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i30 to ptr
  %task17 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task17, align 8
  %pid.i31 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid.i31, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %22, ptr noundef nonnull @.str.1) #17
  %23 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %summary, align 4
  tail call void @kfree(ptr noundef %24) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end8.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end14 ], [ -12, %do.end ], [ 0, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_sum_exit(ptr nocapture noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %0 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %summary, align 4
  %sum_list_head.i.i = getelementptr inbounds %struct.jffs2_summary, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sum_list_head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sum_list_head.i.i, align 4
  %tobool2.not13.i.i = icmp eq ptr %3, null
  br i1 %tobool2.not13.i.i, label %entry.jffs2_sum_disable_collecting.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.jffs2_sum_disable_collecting.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %4 = phi ptr [ %9, %while.body.i.i.while.body.i.i_crit_edge ], [ %3, %entry.while.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %sum_list_head.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sum_list_head.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %4) #13
  %8 = ptrtoint ptr %sum_list_head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sum_list_head.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %while.body.i.i.jffs2_sum_disable_collecting.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.jffs2_sum_disable_collecting.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit

jffs2_sum_disable_collecting.exit:                ; preds = %while.body.i.i.jffs2_sum_disable_collecting.exit_crit_edge, %entry.jffs2_sum_disable_collecting.exit_crit_edge
  %sum_list_tail.i.i = getelementptr inbounds %struct.jffs2_summary, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %sum_list_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sum_list_tail.i.i, align 4
  %sum_padded.i.i = getelementptr inbounds %struct.jffs2_summary, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %sum_padded.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sum_padded.i.i, align 4
  %sum_num.i.i = getelementptr inbounds %struct.jffs2_summary, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %sum_num.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sum_num.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %1, align 4
  %14 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %summary, align 4
  %sum_buf = getelementptr inbounds %struct.jffs2_summary, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %sum_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sum_buf, align 4
  tail call void @kfree(ptr noundef %17) #13
  %18 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %summary, align 4
  %sum_buf3 = getelementptr inbounds %struct.jffs2_summary, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %sum_buf3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sum_buf3, align 4
  %21 = load ptr, ptr %summary, align 4
  tail call void @kfree(ptr noundef %21) #13
  %22 = ptrtoint ptr %summary to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %summary, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_sum_disable_collecting(ptr nocapture noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sum_list_head.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %sum_list_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sum_list_head.i, align 4
  %tobool2.not13.i = icmp eq ptr %1, null
  br i1 %tobool2.not13.i, label %entry.jffs2_sum_clean_collected.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.jffs2_sum_clean_collected.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_clean_collected.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %sum_list_head.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %sum_list_head.i, align 4
  tail call void @kfree(ptr noundef nonnull %2) #13
  %6 = ptrtoint ptr %sum_list_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sum_list_head.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %while.body.i.jffs2_sum_clean_collected.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.jffs2_sum_clean_collected.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_clean_collected.exit

jffs2_sum_clean_collected.exit:                   ; preds = %while.body.i.jffs2_sum_clean_collected.exit_crit_edge, %entry.jffs2_sum_clean_collected.exit_crit_edge
  %sum_list_tail.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 4
  %8 = ptrtoint ptr %sum_list_tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sum_list_tail.i, align 4
  %sum_padded.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 2
  %9 = ptrtoint ptr %sum_padded.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sum_padded.i, align 4
  %sum_num.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 1
  %10 = ptrtoint ptr %sum_num.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sum_num.i, align 4
  %11 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %s, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @jffs2_sum_add_padding_mem(ptr nocapture noundef %s, i32 noundef %size) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sum_padded = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %sum_padded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sum_padded, align 4
  %add = add i32 %1, %size
  store i32 %add, ptr %sum_padded, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_add_inode_mem(ptr nocapture noundef %s, ptr nocapture noundef readonly %ri, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 22) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nodetype = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 1
  %nodetype1 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 1
  %1 = ptrtoint ptr %nodetype1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %nodetype1, align 1
  %3 = ptrtoint ptr %nodetype to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %nodetype, align 4
  %inode = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 2
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ino, align 1
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %inode, align 2
  %version = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 3
  %version2 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 5
  %7 = ptrtoint ptr %version2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %version2, align 1
  %9 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %version, align 2
  %offset = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %ofs, ptr %offset, align 2
  %totlen = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 5
  %totlen3 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %11 = ptrtoint ptr %totlen3 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %totlen3, align 1
  %13 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %totlen, align 2
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %call7.i, align 8
  %call4 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %s, ptr noundef nonnull %call7.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_sum_add_mem(ptr nocapture noundef %s, ptr noundef %item) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sum_list_head = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sum_list_head, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %item, ptr %sum_list_head, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sum_list_tail = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 4
  %3 = ptrtoint ptr %sum_list_tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sum_list_tail, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %item, ptr %4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %sum_list_tail to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %item, ptr %sum_list_tail, align 4
  %nodetype = getelementptr inbounds %struct.jffs2_sum_unknown_mem, ptr %item, i32 0, i32 1
  %7 = ptrtoint ptr %nodetype to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nodetype, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %do.end [
    i16 -8190, label %sw.bb
    i16 -8191, label %sw.bb7
    i16 -8184, label %sw.bb15
    i16 -8183, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s, align 4
  %add = add i32 %11, 18
  store i32 %add, ptr %s, align 4
  %sum_num = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 1
  %12 = ptrtoint ptr %sum_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sum_num, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %sum_num, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %nsize = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %item, i32 0, i32 7
  %14 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nsize, align 2
  %conv8 = zext i8 %15 to i32
  %add9 = add nuw nsw i32 %conv8, 24
  %16 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s, align 4
  %add11 = add i32 %add9, %17
  store i32 %add11, ptr %s, align 4
  %sum_num12 = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 1
  %18 = ptrtoint ptr %sum_num12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sum_num12, align 4
  %inc13 = add i32 %19, 1
  store i32 %inc13, ptr %sum_num12, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s, align 4
  %add17 = add i32 %21, 18
  store i32 %add17, ptr %s, align 4
  %sum_num18 = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 1
  %22 = ptrtoint ptr %sum_num18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sum_num18, align 4
  %inc19 = add i32 %23, 1
  store i32 %inc19, ptr %sum_num18, align 4
  br label %return

sw.bb21:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s, align 4
  %add23 = add i32 %25, 6
  store i32 %add23, ptr %s, align 4
  %sum_num24 = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 1
  %26 = ptrtoint ptr %sum_num24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sum_num24, align 4
  %inc25 = add i32 %27, 1
  store i32 %inc25, ptr %sum_num24, align 4
  br label %return

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %28 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i, align 8
  %conv31 = zext i16 %8 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %33, ptr noundef nonnull @.str.16, i32 noundef %conv31) #17
  br label %return

return:                                           ; preds = %do.end, %sw.bb21, %sw.bb15, %sw.bb7, %sw.bb
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %sw.bb21 ], [ 0, %sw.bb15 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_add_dirent_mem(ptr nocapture noundef %s, ptr nocapture noundef readonly %rd, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 8
  %0 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nsize, align 1
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 28
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nodetype = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 1
  %nodetype1 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 1
  %2 = ptrtoint ptr %nodetype1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %nodetype1, align 1
  %4 = ptrtoint ptr %nodetype to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %nodetype, align 4
  %totlen = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 2
  %totlen2 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 2
  %5 = ptrtoint ptr %totlen2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %totlen2, align 1
  %7 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %totlen, align 2
  %offset = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %ofs, ptr %offset, align 2
  %pino = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 4
  %pino3 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 4
  %9 = ptrtoint ptr %pino3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %pino3, align 1
  %11 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %pino, align 2
  %version = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 5
  %version4 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 5
  %12 = ptrtoint ptr %version4 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %version4, align 1
  %14 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %version, align 2
  %ino = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 6
  %ino5 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 6
  %15 = ptrtoint ptr %ino5 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %ino5, align 1
  %17 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %ino, align 2
  %18 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nsize, align 1
  %nsize7 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 7
  %20 = ptrtoint ptr %nsize7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %nsize7, align 2
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 9
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 1
  %type8 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 8
  %23 = ptrtoint ptr %type8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %type8, align 1
  %24 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %call9.i, align 128
  %name = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 9
  %name9 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 13
  %conv12 = zext i8 %19 to i32
  %25 = call ptr @memcpy(ptr %name, ptr %name9, i32 %conv12)
  %call13 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %s, ptr noundef nonnull %call9.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_add_xattr_mem(ptr nocapture noundef %s, ptr nocapture noundef readonly %rx, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 22) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nodetype = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i, i32 0, i32 1
  %nodetype1 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 1
  %1 = ptrtoint ptr %nodetype1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %nodetype1, align 1
  %3 = ptrtoint ptr %nodetype to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %nodetype, align 4
  %xid = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i, i32 0, i32 2
  %xid2 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 4
  %4 = ptrtoint ptr %xid2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %xid2, align 1
  %6 = ptrtoint ptr %xid to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %xid, align 2
  %version = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i, i32 0, i32 3
  %version3 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 5
  %7 = ptrtoint ptr %version3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %version3, align 1
  %9 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %version, align 2
  %offset = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %ofs, ptr %offset, align 2
  %totlen = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i, i32 0, i32 5
  %totlen4 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 2
  %11 = ptrtoint ptr %totlen4 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %totlen4, align 1
  %13 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %totlen, align 2
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %call7.i, align 8
  %call5 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %s, ptr noundef nonnull %call7.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_add_xref_mem(ptr nocapture noundef %s, ptr nocapture noundef readonly %rr, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 10) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nodetype = getelementptr inbounds %struct.jffs2_sum_xref_mem, ptr %call7.i, i32 0, i32 1
  %nodetype1 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 1
  %1 = ptrtoint ptr %nodetype1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %nodetype1, align 1
  %3 = ptrtoint ptr %nodetype to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %nodetype, align 4
  %offset = getelementptr inbounds %struct.jffs2_sum_xref_mem, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %ofs, ptr %offset, align 2
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call7.i, align 8
  %call2 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %s, ptr noundef nonnull %call7.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_sum_reset_collected(ptr nocapture noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sum_list_head.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %sum_list_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sum_list_head.i, align 4
  %tobool2.not13.i = icmp eq ptr %1, null
  br i1 %tobool2.not13.i, label %entry.jffs2_sum_clean_collected.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.jffs2_sum_clean_collected.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_clean_collected.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %sum_list_head.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %sum_list_head.i, align 4
  tail call void @kfree(ptr noundef nonnull %2) #13
  %6 = ptrtoint ptr %sum_list_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sum_list_head.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %while.body.i.jffs2_sum_clean_collected.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.jffs2_sum_clean_collected.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_clean_collected.exit

jffs2_sum_clean_collected.exit:                   ; preds = %while.body.i.jffs2_sum_clean_collected.exit_crit_edge, %entry.jffs2_sum_clean_collected.exit_crit_edge
  %sum_list_tail.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 4
  %8 = ptrtoint ptr %sum_list_tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sum_list_tail.i, align 4
  %sum_padded.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 2
  %9 = ptrtoint ptr %sum_padded.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sum_padded.i, align 4
  %sum_num.i = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 1
  %10 = ptrtoint ptr %sum_num.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sum_num.i, align 4
  %11 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %s, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @jffs2_sum_is_disabled(ptr nocapture noundef readonly %s) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @jffs2_sum_move_collected(ptr nocapture noundef readonly %c, ptr nocapture noundef %s) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %2 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %summary, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %3, align 4
  %sum_num = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %sum_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sum_num, align 4
  %7 = load ptr, ptr %summary, align 4
  %sum_num3 = getelementptr inbounds %struct.jffs2_summary, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sum_num3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %sum_num3, align 4
  %sum_padded = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 2
  %9 = ptrtoint ptr %sum_padded to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sum_padded, align 4
  %11 = load ptr, ptr %summary, align 4
  %sum_padded5 = getelementptr inbounds %struct.jffs2_summary, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %sum_padded5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %sum_padded5, align 4
  %sum_list_head = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 3
  %13 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sum_list_head, align 4
  %15 = load ptr, ptr %summary, align 4
  %sum_list_head7 = getelementptr inbounds %struct.jffs2_summary, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %sum_list_head7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %sum_list_head7, align 4
  %sum_list_tail = getelementptr inbounds %struct.jffs2_summary, ptr %s, i32 0, i32 4
  %17 = ptrtoint ptr %sum_list_tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sum_list_tail, align 4
  %19 = load ptr, ptr %summary, align 4
  %sum_list_tail9 = getelementptr inbounds %struct.jffs2_summary, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %sum_list_tail9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %sum_list_tail9, align 4
  store ptr null, ptr %sum_list_tail, align 4
  store ptr null, ptr %sum_list_head, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_add_kvec(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %invecs, i32 noundef %count, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %0 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %summary, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup115_crit_edge, label %if.end

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %invecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %invecs, align 4
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blocks, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %8 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %ofs, %9
  %offset = getelementptr %struct.jffs2_eraseblock, ptr %7, i32 %div, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %sub = sub i32 %ofs, %11
  %nodetype = getelementptr inbounds %struct.jffs2_unknown_node, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %nodetype to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %nodetype, align 1
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %13, label %do.body98 [
    i16 -8190, label %sw.bb
    i16 -8191, label %sw.bb11
    i16 -8184, label %sw.bb52
    i16 -8183, label %sw.bb72
    i16 8196, label %sw.bb87
    i16 8195, label %if.end.cleanup115_crit_edge
    i16 8198, label %if.end.cleanup115_crit_edge206
  ]

if.end.cleanup115_crit_edge206:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.end.cleanup115_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

sw.bb:                                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 22) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %sw.bb.do.end110_crit_edge, label %cleanup

sw.bb.do.end110_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

cleanup:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %nodetype4 = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %nodetype to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %nodetype, align 1
  %18 = ptrtoint ptr %nodetype4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %nodetype4, align 4
  %inode = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 2
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %ino, align 1
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %inode, align 2
  %version = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 3
  %version6 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %version6 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %version6, align 1
  %24 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %version, align 2
  %offset7 = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 4
  %25 = ptrtoint ptr %offset7 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %sub, ptr %offset7, align 2
  %totlen = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %call7.i, i32 0, i32 5
  %totlen8 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %totlen8 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %totlen8, align 1
  %28 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %totlen, align 2
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %call7.i, align 8
  %30 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %summary, align 4
  %call10 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %31, ptr noundef nonnull %call7.i)
  br label %cleanup115

sw.bb11:                                          ; preds = %if.end
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %5, i32 0, i32 8
  %32 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nsize, align 1
  %conv13 = zext i8 %33 to i32
  %add = add nuw nsw i32 %conv13, 28
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %sw.bb11.do.end110_crit_edge, label %if.end17

sw.bb11.do.end110_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

if.end17:                                         ; preds = %sw.bb11
  %nodetype18 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 1
  %34 = ptrtoint ptr %nodetype to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %nodetype, align 1
  %36 = ptrtoint ptr %nodetype18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %nodetype18, align 4
  %totlen20 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 2
  %totlen21 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %totlen21 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %totlen21, align 1
  %39 = ptrtoint ptr %totlen20 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %totlen20, align 2
  %offset22 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 3
  %40 = ptrtoint ptr %offset22 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %sub, ptr %offset22, align 2
  %pino = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 4
  %pino25 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %5, i32 0, i32 4
  %41 = ptrtoint ptr %pino25 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %pino25, align 1
  %43 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %pino, align 2
  %version26 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 5
  %version27 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %version27 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %version27, align 1
  %46 = ptrtoint ptr %version26 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %version26, align 2
  %ino28 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 6
  %ino29 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %ino29 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %ino29, align 1
  %49 = ptrtoint ptr %ino28 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %ino28, align 2
  %50 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nsize, align 1
  %nsize31 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 7
  %52 = ptrtoint ptr %nsize31 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %nsize31, align 2
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %5, i32 0, i32 9
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type, align 1
  %type32 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 8
  %55 = ptrtoint ptr %type32 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %type32, align 1
  %56 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %call9.i, align 128
  %57 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %count, label %do.body [
    i32 1, label %sw.bb34
    i32 2, label %sw.bb39
  ]

sw.bb34:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 9
  %name35 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %5, i32 0, i32 13
  %58 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nsize, align 1
  %conv38 = zext i8 %59 to i32
  %60 = call ptr @memcpy(ptr %name, ptr %name35, i32 %conv38)
  br label %cleanup51

sw.bb39:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %name40 = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %call9.i, i32 0, i32 9
  %arrayidx42 = getelementptr %struct.kvec, ptr %invecs, i32 1
  %61 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx42, align 4
  %63 = ptrtoint ptr %nsize to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nsize, align 1
  %conv45 = zext i8 %64 to i32
  %65 = call ptr @memcpy(ptr %name40, ptr %62, i32 %conv45)
  br label %cleanup51

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/summary.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #13, !srcloc !78
  unreachable

cleanup51:                                        ; preds = %sw.bb39, %sw.bb34
  %66 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %summary, align 4
  %call50 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %67, ptr noundef nonnull %call9.i)
  br label %cleanup115

sw.bb52:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i193 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 22) #16
  %tobool55.not = icmp eq ptr %call7.i193, null
  br i1 %tobool55.not, label %sw.bb52.do.end110_crit_edge, label %cleanup71

sw.bb52.do.end110_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

cleanup71:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #15
  %nodetype58 = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i193, i32 0, i32 1
  %69 = ptrtoint ptr %nodetype to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %nodetype, align 1
  %71 = ptrtoint ptr %nodetype58 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %nodetype58, align 4
  %xid = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i193, i32 0, i32 2
  %xid60 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %5, i32 0, i32 4
  %72 = ptrtoint ptr %xid60 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %xid60, align 1
  %74 = ptrtoint ptr %xid to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %xid, align 2
  %version61 = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i193, i32 0, i32 3
  %version62 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %5, i32 0, i32 5
  %75 = ptrtoint ptr %version62 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %version62, align 1
  %77 = ptrtoint ptr %version61 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %version61, align 2
  %totlen63 = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i193, i32 0, i32 5
  %totlen64 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %5, i32 0, i32 2
  %78 = ptrtoint ptr %totlen64 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %totlen64, align 1
  %80 = ptrtoint ptr %totlen63 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %totlen63, align 2
  %offset65 = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %call7.i193, i32 0, i32 4
  %81 = ptrtoint ptr %offset65 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %sub, ptr %offset65, align 2
  %82 = ptrtoint ptr %call7.i193 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %call7.i193, align 8
  %83 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %summary, align 4
  %call70 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %84, ptr noundef nonnull %call7.i193)
  br label %cleanup115

sw.bb72:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i200 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3264, i32 noundef 10) #16
  %tobool75.not = icmp eq ptr %call7.i200, null
  br i1 %tobool75.not, label %sw.bb72.do.end110_crit_edge, label %cleanup86

sw.bb72.do.end110_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

cleanup86:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  %nodetype78 = getelementptr inbounds %struct.jffs2_sum_xref_mem, ptr %call7.i200, i32 0, i32 1
  %86 = ptrtoint ptr %nodetype to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %nodetype, align 1
  %88 = ptrtoint ptr %nodetype78 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %nodetype78, align 4
  %offset80 = getelementptr inbounds %struct.jffs2_sum_xref_mem, ptr %call7.i200, i32 0, i32 2
  %89 = ptrtoint ptr %offset80 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %sub, ptr %offset80, align 2
  %90 = ptrtoint ptr %call7.i200 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %call7.i200, align 8
  %91 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %summary, align 4
  %call85 = tail call fastcc i32 @jffs2_sum_add_mem(ptr noundef %92, ptr noundef nonnull %call7.i200)
  br label %cleanup115

sw.bb87:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %totlen89 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %5, i32 0, i32 2
  %93 = ptrtoint ptr %totlen89 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %totlen89, align 1
  %sum_padded = getelementptr inbounds %struct.jffs2_summary, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %sum_padded to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sum_padded, align 4
  %add92 = add i32 %96, %94
  store i32 %add92, ptr %sum_padded, align 4
  br label %cleanup115

do.body98:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/summary.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #13, !srcloc !79
  unreachable

do.end110:                                        ; preds = %sw.bb72.do.end110_crit_edge, %sw.bb52.do.end110_crit_edge, %sw.bb11.do.end110_crit_edge, %sw.bb.do.end110_crit_edge
  %97 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 68
  %101 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pid.i, align 8
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %102, ptr noundef nonnull @.str.7) #17
  br label %cleanup115

cleanup115:                                       ; preds = %do.end110, %sw.bb87, %cleanup86, %cleanup71, %cleanup51, %cleanup, %if.end.cleanup115_crit_edge, %if.end.cleanup115_crit_edge206, %entry.cleanup115_crit_edge
  %retval.4 = phi i32 [ -12, %do.end110 ], [ %call85, %cleanup86 ], [ %call70, %cleanup71 ], [ %call50, %cleanup51 ], [ %call10, %cleanup ], [ 0, %entry.cleanup115_crit_edge ], [ 0, %if.end.cleanup115_crit_edge ], [ 0, %if.end.cleanup115_crit_edge206 ], [ 0, %sw.bb87 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_scan_sumnode(ptr noundef %c, ptr noundef %jeb, ptr noundef readonly %summary, i32 noundef %sumsize, ptr nocapture noundef %pseudo_random) local_unnamed_addr #0 align 64 {
entry:
  %crcnode = alloca %struct.jffs2_unknown_node, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %crcnode) #13
  %0 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %crcnode, i32 0, i32 1
  %1 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %crcnode, i32 0, i32 2
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %2 = getelementptr inbounds i8, ptr %crcnode, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 -1, ptr %2, align 2
  %4 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sector_size, align 4
  %sub = sub i32 %5, %sumsize
  %6 = ptrtoint ptr %crcnode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 6533, ptr %crcnode, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8198, ptr %0, align 2
  %totlen3 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %summary, i32 0, i32 2
  %8 = ptrtoint ptr %totlen3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %totlen3, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %1, align 2
  %call = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %crcnode, i32 noundef 8) #19
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_summary, ptr %summary, i32 0, i32 3
  %11 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %hdr_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call)
  %cmp.not = icmp eq i32 %12, %call
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sumsize)
  %cmp7.not = icmp eq i32 %9, %sumsize
  %or.cond = select i1 %cmp.not, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %if.end10, label %entry.do.end96_crit_edge

entry.do.end96_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end96

if.end10:                                         ; preds = %entry
  %call11 = call i32 @crc32_le(i32 noundef 0, ptr noundef %summary, i32 noundef 24) #19
  %node_crc = getelementptr inbounds %struct.jffs2_raw_summary, ptr %summary, i32 0, i32 8
  %13 = ptrtoint ptr %node_crc to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call11)
  %cmp13.not = icmp eq i32 %14, %call11
  br i1 %cmp13.not, label %if.end16, label %if.end10.do.end96_crit_edge

if.end10.do.end96_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end96

if.end16:                                         ; preds = %if.end10
  %sum = getelementptr inbounds %struct.jffs2_raw_summary, ptr %summary, i32 0, i32 9
  %sub17 = add i32 %sumsize, -32
  %call18 = call i32 @crc32_le(i32 noundef 0, ptr noundef %sum, i32 noundef %sub17) #19
  %sum_crc = getelementptr inbounds %struct.jffs2_raw_summary, ptr %summary, i32 0, i32 7
  %15 = ptrtoint ptr %sum_crc to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %sum_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call18)
  %cmp20.not = icmp eq i32 %16, %call18
  br i1 %cmp20.not, label %if.end23, label %if.end16.do.end96_crit_edge

if.end16.do.end96_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end96

if.end23:                                         ; preds = %if.end16
  %cln_mkr = getelementptr inbounds %struct.jffs2_raw_summary, ptr %summary, i32 0, i32 5
  %17 = ptrtoint ptr %cln_mkr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %cln_mkr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end23.if.end59_crit_edge, label %if.then25

if.end23.if.end59_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then25:                                        ; preds = %if.end23
  %call27 = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %jeb, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %if.then25
  %19 = ptrtoint ptr %cln_mkr to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %cln_mkr, align 1
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %21 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cleanmarker_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp33.not = icmp eq i32 %20, %22
  br i1 %cmp33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end30
  %add = add i32 %20, 3
  %and = and i32 %add, -4
  %call38 = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %and) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then34.if.end59_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34.if.end59_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.else:                                          ; preds = %if.end30
  %first_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 9
  %23 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %first_node, align 4
  %tobool42.not = icmp eq ptr %24, null
  br i1 %tobool42.not, label %if.else53, label %if.then43

if.then43:                                        ; preds = %if.else
  %add47 = add i32 %20, 3
  %and48 = and i32 %add47, -4
  %call49 = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %and48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then43.if.end59_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then43.if.end59_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %or = or i32 %26, 3
  %call56 = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %or, i32 noundef %20, ptr noundef null) #13
  br label %if.end59

if.end59:                                         ; preds = %if.else53, %if.then43.if.end59_crit_edge, %if.then34.if.end59_crit_edge, %if.end23.if.end59_crit_edge
  %sum_num.i = getelementptr inbounds %struct.jffs2_raw_summary, ptr %summary, i32 0, i32 4
  %27 = ptrtoint ptr %sum_num.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %sum_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp389.not.i = icmp eq i32 %28, 0
  br i1 %cmp389.not.i, label %if.end59.if.end66_crit_edge, label %for.body.lr.ph.i

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

for.body.lr.ph.i:                                 ; preds = %if.end59
  %xref_temp.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 68
  %free_size.i357.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %offset.i363.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sp.0391.i = phi ptr [ %sum, %for.body.lr.ph.i ], [ %add.ptr160.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0390.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 400, i32 noundef 0) #13
  %call.i.i = call i32 @__cond_resched() #13
  %call2.i = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %jeb, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.jffs2_sum_process_sum_data.exit_crit_edge

for.body.i.jffs2_sum_process_sum_data.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_process_sum_data.exit

if.end.i:                                         ; preds = %for.body.i
  %29 = ptrtoint ptr %sp.0391.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %sp.0391.i, align 1
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %30, label %sw.default.i [
    i16 -8190, label %sw.bb.i
    i16 -8191, label %sw.bb18.i
    i16 -8184, label %sw.bb92.i
    i16 -8183, label %sw.bb138.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %inode.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %sp.0391.i, i32 0, i32 1
  %32 = ptrtoint ptr %inode.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %inode.i, align 1
  %call5.i = call ptr @jffs2_scan_make_ino_cache(ptr noundef %c, i32 noundef %33) #13
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %cleanup.thread.i, label %if.end12.i

cleanup.thread.i:                                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid.i.i, align 8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %39, ptr noundef nonnull @.str.18) #17
  br label %if.then65

if.end12.i:                                       ; preds = %sw.bb.i
  %offset.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %sp.0391.i, i32 0, i32 3
  %40 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %offset.i, align 1
  %totlen.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %sp.0391.i, i32 0, i32 4
  %42 = ptrtoint ptr %totlen.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %totlen.i, align 1
  %add.i = add i32 %43, 3
  %and.i = and i32 %add.i, -4
  %and.i314.i = and i32 %41, -4
  %44 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sector_size, align 4
  %46 = ptrtoint ptr %free_size.i357.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %free_size.i357.i, align 4
  %sub.i.i = sub i32 %45, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i314.i, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %and.i314.i, %sub.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end12.i.cleanup.i_crit_edge

if.end12.i.cleanup.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub5.i.i = sub i32 %and.i314.i, %sub.i.i
  %call.i315.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %sub5.i.i) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i, %if.end12.i.cleanup.i_crit_edge
  %48 = ptrtoint ptr %offset.i363.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i363.i, align 4
  %add.i.i = add i32 %49, %41
  %call6.i.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %add.i.i, i32 noundef %and.i, ptr noundef nonnull %call5.i) #13
  %version.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %sp.0391.i, i32 0, i32 2
  %50 = ptrtoint ptr %version.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %version.i, align 1
  %52 = ptrtoint ptr %pseudo_random to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pseudo_random, align 4
  %add17.i = add i32 %53, %51
  store i32 %add17.i, ptr %pseudo_random, align 4
  br label %for.inc.i

sw.bb18.i:                                        ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 8
  %nsize.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 6
  %54 = ptrtoint ptr %nsize.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nsize.i, align 1
  %conv21.i = zext i8 %55 to i32
  %call22.i = call i32 @strnlen(ptr noundef %name.i, i32 noundef %conv21.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %do.end27.i, label %if.end34.i

do.end27.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %offset.i363.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset.i363.i, align 4
  %offset30.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 2
  %58 = ptrtoint ptr %offset30.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %offset30.i, align 1
  %add32.i = add i32 %59, %57
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %add32.i) #17
  br label %if.then65

if.end34.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call22.i, i32 %conv21.i)
  %cmp37.i = icmp slt i32 %call22.i, %conv21.i
  br i1 %cmp37.i, label %do.end42.i, label %if.end34.i.if.end49.i_crit_edge

if.end34.i.if.end49.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %offset.i363.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i363.i, align 4
  %offset45.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 2
  %62 = ptrtoint ptr %offset45.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %offset45.i, align 1
  %add47.i = add i32 %63, %61
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add47.i, i32 noundef %call22.i) #17
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end42.i, %if.end34.i.if.end49.i_crit_edge
  %add50.i = add i32 %call22.i, 1
  %call51.i = call ptr @jffs2_alloc_full_dirent(i32 noundef %add50.i) #13
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %if.end49.i.if.then65_crit_edge, label %if.end54.i

if.end49.i.if.then65_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.end54.i:                                       ; preds = %if.end49.i
  %name55.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call51.i, i32 0, i32 6
  %64 = call ptr @memcpy(ptr %name55.i, ptr %name.i, i32 %call22.i)
  %arrayidx.i = getelementptr %struct.jffs2_full_dirent, ptr %call51.i, i32 0, i32 6, i32 %call22.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx.i, align 1
  %pino.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 3
  %66 = ptrtoint ptr %pino.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %pino.i, align 1
  %call60.i = call ptr @jffs2_scan_make_ino_cache(ptr noundef %c, i32 noundef %67) #13
  %tobool61.not.i = icmp eq ptr %call60.i, null
  br i1 %tobool61.not.i, label %if.then62.i, label %if.end63.i

if.then62.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @jffs2_free_full_dirent(ptr noundef nonnull %call51.i) #13
  br label %if.then65

if.end63.i:                                       ; preds = %if.end54.i
  %offset64.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 2
  %68 = ptrtoint ptr %offset64.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %offset64.i, align 1
  %totlen67.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 1
  %70 = ptrtoint ptr %totlen67.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %totlen67.i, align 1
  %add69.i = add i32 %71, 3
  %and70.i = and i32 %add69.i, -4
  %and.i316.i = and i32 %69, -4
  %72 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sector_size, align 4
  %74 = ptrtoint ptr %free_size.i357.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %free_size.i357.i, align 4
  %sub.i319.i = sub i32 %73, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i316.i, i32 %sub.i319.i)
  %cmp.i320.i = icmp ugt i32 %and.i316.i, %sub.i319.i
  br i1 %cmp.i320.i, label %if.then.i323.i, label %if.end63.i.cleanup89.i_crit_edge

if.end63.i.cleanup89.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89.i

if.then.i323.i:                                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub5.i321.i = sub i32 %and.i316.i, %sub.i319.i
  %call.i322.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %sub5.i321.i) #13
  br label %cleanup89.i

cleanup89.i:                                      ; preds = %if.then.i323.i, %if.end63.i.cleanup89.i_crit_edge
  %76 = ptrtoint ptr %offset.i363.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset.i363.i, align 4
  %add.i325.i = add i32 %77, %69
  %call6.i326.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %add.i325.i, i32 noundef %and70.i, ptr noundef nonnull %call60.i) #13
  %78 = ptrtoint ptr %call51.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call6.i326.i, ptr %call51.i, align 4
  %next.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call51.i, i32 0, i32 1
  %79 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %next.i, align 4
  %version72.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 4
  %80 = ptrtoint ptr %version72.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %version72.i, align 1
  %version74.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call51.i, i32 0, i32 2
  %82 = ptrtoint ptr %version74.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %version74.i, align 4
  %ino75.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 5
  %83 = ptrtoint ptr %ino75.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %ino75.i, align 1
  %ino77.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call51.i, i32 0, i32 3
  %85 = ptrtoint ptr %ino77.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %ino77.i, align 4
  %call80.i = call i32 @full_name_hash(ptr noundef null, ptr noundef %name55.i, i32 noundef %call22.i) #19
  %nhash.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call51.i, i32 0, i32 4
  %86 = ptrtoint ptr %nhash.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call80.i, ptr %nhash.i, align 4
  %type.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %sp.0391.i, i32 0, i32 7
  %87 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %type.i, align 1
  %type81.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call51.i, i32 0, i32 5
  %89 = ptrtoint ptr %type81.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %type81.i, align 4
  call void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef nonnull %call51.i, ptr noundef nonnull %call60.i) #13
  %90 = ptrtoint ptr %version72.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %version72.i, align 1
  %92 = ptrtoint ptr %pseudo_random to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pseudo_random, align 4
  %add84.i = add i32 %93, %91
  store i32 %add84.i, ptr %pseudo_random, align 4
  %94 = ptrtoint ptr %nsize.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nsize.i, align 1
  %conv86.i = zext i8 %95 to i32
  %add87.i = add nuw nsw i32 %conv86.i, 24
  br label %for.inc.i

sw.bb92.i:                                        ; preds = %if.end.i
  %xid.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %sp.0391.i, i32 0, i32 1
  %96 = ptrtoint ptr %xid.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %xid.i, align 1
  %version95.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %sp.0391.i, i32 0, i32 2
  %98 = ptrtoint ptr %version95.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %version95.i, align 1
  %call97.i = call ptr @jffs2_setup_xattr_datum(ptr noundef %c, i32 noundef %97, i32 noundef %99) #13
  %cmp.i328.i = icmp ugt ptr %call97.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328.i, label %cleanup135.thread.i, label %if.end101.i

cleanup135.thread.i:                              ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %call97.i to i32
  br label %jffs2_sum_process_sum_data.exit

if.end101.i:                                      ; preds = %sw.bb92.i
  %version102.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call97.i, i32 0, i32 8
  %101 = ptrtoint ptr %version102.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %version102.i, align 4
  %103 = ptrtoint ptr %version95.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %version95.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp105.i = icmp ugt i32 %102, %104
  br i1 %cmp105.i, label %if.then107.i, label %if.else.i

if.then107.i:                                     ; preds = %if.end101.i
  %offset108.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %sp.0391.i, i32 0, i32 3
  %105 = ptrtoint ptr %offset108.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %offset108.i, align 1
  %totlen111.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %sp.0391.i, i32 0, i32 4
  %107 = ptrtoint ptr %totlen111.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %totlen111.i, align 1
  %add113.i = add i32 %108, 3
  %and114.i = and i32 %add113.i, -4
  %and.i329.i = and i32 %106, -4
  %109 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sector_size, align 4
  %111 = ptrtoint ptr %free_size.i357.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %free_size.i357.i, align 4
  %sub.i332.i = sub i32 %110, %112
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i329.i, i32 %sub.i332.i)
  %cmp.i333.i = icmp ugt i32 %and.i329.i, %sub.i332.i
  br i1 %cmp.i333.i, label %if.then.i336.i, label %if.then107.i.sum_link_node_ref.exit340.i_crit_edge

if.then107.i.sum_link_node_ref.exit340.i_crit_edge: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sum_link_node_ref.exit340.i

if.then.i336.i:                                   ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub5.i334.i = sub i32 %and.i329.i, %sub.i332.i
  %call.i335.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %sub5.i334.i) #13
  br label %sum_link_node_ref.exit340.i

sum_link_node_ref.exit340.i:                      ; preds = %if.then.i336.i, %if.then107.i.sum_link_node_ref.exit340.i_crit_edge
  %113 = ptrtoint ptr %offset.i363.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %offset.i363.i, align 4
  %add.i338.i = add i32 %114, %106
  %call6.i339.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %add.i338.i, i32 noundef %and114.i, ptr noundef null) #13
  %node.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call97.i, i32 0, i32 1
  %115 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %node.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %119 = ptrtoint ptr %call6.i339.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %call6.i339.i, align 4
  %120 = load ptr, ptr %node.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call6.i339.i, ptr %120, align 4
  br label %cleanup135.i

if.else.i:                                        ; preds = %if.end101.i
  %122 = ptrtoint ptr %version102.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %104, ptr %version102.i, align 4
  %offset122.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %sp.0391.i, i32 0, i32 3
  %123 = ptrtoint ptr %offset122.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %offset122.i, align 1
  %totlen125.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %sp.0391.i, i32 0, i32 4
  %125 = ptrtoint ptr %totlen125.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %totlen125.i, align 1
  %add127.i = add i32 %126, 3
  %and128.i = and i32 %add127.i, -4
  %and.i341.i = and i32 %124, -4
  %127 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sector_size, align 4
  %129 = ptrtoint ptr %free_size.i357.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %free_size.i357.i, align 4
  %sub.i344.i = sub i32 %128, %130
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i341.i, i32 %sub.i344.i)
  %cmp.i345.i = icmp ugt i32 %and.i341.i, %sub.i344.i
  br i1 %cmp.i345.i, label %if.then.i348.i, label %if.else.i.sum_link_node_ref.exit352.i_crit_edge

if.else.i.sum_link_node_ref.exit352.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sum_link_node_ref.exit352.i

if.then.i348.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub5.i346.i = sub i32 %and.i341.i, %sub.i344.i
  %call.i347.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %sub5.i346.i) #13
  br label %sum_link_node_ref.exit352.i

sum_link_node_ref.exit352.i:                      ; preds = %if.then.i348.i, %if.else.i.sum_link_node_ref.exit352.i_crit_edge
  %131 = ptrtoint ptr %offset.i363.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %offset.i363.i, align 4
  %add.i350.i = add i32 %132, %124
  %call6.i351.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %add.i350.i, i32 noundef %and128.i, ptr noundef %call97.i) #13
  br label %cleanup135.i

cleanup135.i:                                     ; preds = %sum_link_node_ref.exit352.i, %sum_link_node_ref.exit340.i
  %133 = ptrtoint ptr %xid.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %xid.i, align 1
  %135 = ptrtoint ptr %pseudo_random to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pseudo_random, align 4
  %add133.i = add i32 %136, %134
  store i32 %add133.i, ptr %pseudo_random, align 4
  br label %for.inc.i

sw.bb138.i:                                       ; preds = %if.end.i
  %call140.i = call ptr @jffs2_alloc_xattr_ref() #13
  %tobool141.not.i = icmp eq ptr %call140.i, null
  br i1 %tobool141.not.i, label %cleanup161.thread.i, label %if.end151.i

cleanup161.thread.i:                              ; preds = %sw.bb138.i
  call void @__sanitizer_cov_trace_pc() #15
  %137 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i353.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i353.i to ptr
  %task148.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task148.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task148.i, align 8
  %pid.i354.i = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 68
  %141 = ptrtoint ptr %pid.i354.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pid.i354.i, align 8
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %142, ptr noundef nonnull @.str.18) #17
  br label %if.then65

if.end151.i:                                      ; preds = %sw.bb138.i
  %143 = ptrtoint ptr %xref_temp.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %xref_temp.i, align 4
  %next152.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call140.i, i32 0, i32 8
  %145 = ptrtoint ptr %next152.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %next152.i, align 4
  store ptr %call140.i, ptr %xref_temp.i, align 4
  %offset154.i = getelementptr inbounds %struct.jffs2_sum_xref_flash, ptr %sp.0391.i, i32 0, i32 1
  %146 = ptrtoint ptr %offset154.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %offset154.i, align 1
  %and.i355.i = and i32 %147, -4
  %148 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sector_size, align 4
  %150 = ptrtoint ptr %free_size.i357.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %free_size.i357.i, align 4
  %sub.i358.i = sub i32 %149, %151
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i355.i, i32 %sub.i358.i)
  %cmp.i359.i = icmp ugt i32 %and.i355.i, %sub.i358.i
  br i1 %cmp.i359.i, label %if.then.i362.i, label %if.end151.i.cleanup161.i_crit_edge

if.end151.i.cleanup161.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup161.i

if.then.i362.i:                                   ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub5.i360.i = sub i32 %and.i355.i, %sub.i358.i
  %call.i361.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %sub5.i360.i) #13
  br label %cleanup161.i

cleanup161.i:                                     ; preds = %if.then.i362.i, %if.end151.i.cleanup161.i_crit_edge
  %152 = ptrtoint ptr %offset.i363.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %offset.i363.i, align 4
  %add.i364.i = add i32 %153, %147
  %call6.i365.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %add.i364.i, i32 noundef 28, ptr noundef nonnull %call140.i) #13
  %node158.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call140.i, i32 0, i32 1
  %154 = ptrtoint ptr %node158.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %node158.i, align 4
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flash_offset.i, align 4
  %158 = ptrtoint ptr %pseudo_random to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pseudo_random, align 4
  %add159.i = add i32 %159, %157
  store i32 %add159.i, ptr %pseudo_random, align 4
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end.i
  %conv.i = zext i16 %30 to i32
  %160 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i367.i = and i32 %160, -16384
  %161 = inttoptr i32 %and.i367.i to ptr
  %task172.i = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %task172.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %task172.i, align 8
  %pid.i368.i = getelementptr inbounds %struct.task_struct, ptr %163, i32 0, i32 68
  %164 = ptrtoint ptr %pid.i368.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %pid.i368.i, align 8
  %call175.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %165, ptr noundef nonnull @.str.18, i32 noundef %conv.i) #17
  %and177.i = and i32 %conv.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and177.i)
  %cmp178.i = icmp eq i32 %and177.i, 49152
  br i1 %cmp178.i, label %sw.default.i.if.then65_crit_edge, label %jffs2_sum_process_sum_data.exit.thread172

sw.default.i.if.then65_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

jffs2_sum_process_sum_data.exit.thread172:        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %wasted_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %166 = ptrtoint ptr %wasted_size.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %wasted_size.i, align 4
  %wasted_size182.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %168 = ptrtoint ptr %wasted_size182.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %wasted_size182.i, align 4
  %sub.i = sub i32 %169, %167
  store i32 %sub.i, ptr %wasted_size182.i, align 4
  %170 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sector_size, align 4
  %172 = ptrtoint ptr %free_size.i357.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %free_size.i357.i, align 4
  %sub183.i = sub i32 %171, %173
  %free_size184.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %174 = ptrtoint ptr %free_size184.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %free_size184.i, align 4
  %add185.i = add i32 %sub183.i, %175
  store i32 %add185.i, ptr %free_size184.i, align 4
  %used_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 4
  %176 = ptrtoint ptr %used_size.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %used_size.i, align 4
  %used_size186.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %178 = ptrtoint ptr %used_size186.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %used_size186.i, align 4
  %sub187.i = sub i32 %179, %177
  store i32 %sub187.i, ptr %used_size186.i, align 4
  %dirty_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %180 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dirty_size.i, align 4
  %dirty_size188.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %182 = ptrtoint ptr %dirty_size188.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %dirty_size188.i, align 4
  %sub189.i = sub i32 %183, %181
  store i32 %sub189.i, ptr %dirty_size188.i, align 4
  store i32 0, ptr %dirty_size.i, align 4
  store i32 0, ptr %used_size.i, align 4
  store i32 0, ptr %wasted_size.i, align 4
  %184 = load i32, ptr %sector_size, align 4
  store i32 %184, ptr %free_size.i357.i, align 4
  call void @jffs2_free_jeb_node_refs(ptr noundef %c, ptr noundef %jeb) #13
  br label %cleanup

for.inc.i:                                        ; preds = %cleanup161.i, %cleanup135.i, %cleanup89.i, %cleanup.i
  %.sink.i = phi i32 [ 6, %cleanup161.i ], [ 18, %cleanup135.i ], [ %add87.i, %cleanup89.i ], [ 18, %cleanup.i ]
  %add.ptr160.i = getelementptr i8, ptr %sp.0391.i, i32 %.sink.i
  %inc.i = add nuw i32 %i.0390.i, 1
  %185 = ptrtoint ptr %sum_num.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %sum_num.i, align 1
  %cmp.i = icmp ult i32 %inc.i, %186
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end66_crit_edge

for.inc.i.if.end66_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

jffs2_sum_process_sum_data.exit:                  ; preds = %cleanup135.thread.i, %for.body.i.jffs2_sum_process_sum_data.exit_crit_edge
  %retval.7.i = phi i32 [ %100, %cleanup135.thread.i ], [ %call2.i, %for.body.i.jffs2_sum_process_sum_data.exit_crit_edge ]
  %187 = zext i32 %retval.7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %retval.7.i, label %jffs2_sum_process_sum_data.exit.if.then65_crit_edge [
    i32 -131, label %jffs2_sum_process_sum_data.exit.cleanup_crit_edge
    i32 0, label %jffs2_sum_process_sum_data.exit.if.end66_crit_edge
  ]

jffs2_sum_process_sum_data.exit.if.end66_crit_edge: ; preds = %jffs2_sum_process_sum_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

jffs2_sum_process_sum_data.exit.cleanup_crit_edge: ; preds = %jffs2_sum_process_sum_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

jffs2_sum_process_sum_data.exit.if.then65_crit_edge: ; preds = %jffs2_sum_process_sum_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.then65:                                        ; preds = %jffs2_sum_process_sum_data.exit.if.then65_crit_edge, %sw.default.i.if.then65_crit_edge, %cleanup161.thread.i, %if.then62.i, %if.end49.i.if.then65_crit_edge, %do.end27.i, %cleanup.thread.i
  %retval.7.i168 = phi i32 [ %retval.7.i, %jffs2_sum_process_sum_data.exit.if.then65_crit_edge ], [ -12, %if.then62.i ], [ -5, %do.end27.i ], [ -12, %cleanup161.thread.i ], [ -12, %cleanup.thread.i ], [ -5, %sw.default.i.if.then65_crit_edge ], [ -12, %if.end49.i.if.then65_crit_edge ]
  br label %cleanup

if.end66:                                         ; preds = %jffs2_sum_process_sum_data.exit.if.end66_crit_edge, %for.inc.i.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %call67 = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %jeb, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %or71 = or i32 %sub, 3
  %and.i158 = and i32 %sub, -4
  %188 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %sector_size, align 4
  %free_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %190 = ptrtoint ptr %free_size.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %free_size.i, align 4
  %sub.i159 = sub i32 %189, %191
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i158, i32 %sub.i159)
  %cmp.i160 = icmp ugt i32 %and.i158, %sub.i159
  br i1 %cmp.i160, label %if.then.i, label %if.end70.sum_link_node_ref.exit_crit_edge

if.end70.sum_link_node_ref.exit_crit_edge:        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %sum_link_node_ref.exit

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %sub5.i = sub i32 %and.i158, %sub.i159
  %call.i = call i32 @jffs2_scan_dirty_space(ptr noundef %c, ptr noundef %jeb, i32 noundef %sub5.i) #13
  br label %sum_link_node_ref.exit

sum_link_node_ref.exit:                           ; preds = %if.then.i, %if.end70.sum_link_node_ref.exit_crit_edge
  %offset.i161 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %192 = ptrtoint ptr %offset.i161 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %offset.i161, align 4
  %add.i162 = add i32 %193, %or71
  %call6.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %add.i162, i32 noundef %sumsize, ptr noundef null) #13
  %194 = ptrtoint ptr %free_size.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %free_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool73.not = icmp eq i32 %195, 0
  br i1 %tobool73.not, label %sum_link_node_ref.exit.if.end92_crit_edge, label %do.end, !prof !80

sum_link_node_ref.exit.if.end92_crit_edge:        ; preds = %sum_link_node_ref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

do.end:                                           ; preds = %sum_link_node_ref.exit
  call void @__sanitizer_cov_trace_pc() #15
  %196 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i164 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i164 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 68
  %200 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pid.i, align 8
  %202 = ptrtoint ptr %offset.i161 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %offset.i161, align 4
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %201, ptr noundef nonnull @.str.9, i32 noundef %195, i32 noundef %203) #17
  %204 = ptrtoint ptr %free_size.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %free_size.i, align 4
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %206 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %wasted_size, align 4
  %add84 = add i32 %207, %205
  store i32 %add84, ptr %wasted_size, align 4
  %wasted_size86 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %208 = ptrtoint ptr %wasted_size86 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %wasted_size86, align 4
  %add87 = add i32 %209, %205
  store i32 %add87, ptr %wasted_size86, align 4
  %210 = load i32, ptr %free_size.i, align 4
  %free_size89 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %211 = ptrtoint ptr %free_size89 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %free_size89, align 4
  %sub90 = sub i32 %212, %210
  store i32 %sub90, ptr %free_size89, align 4
  store i32 0, ptr %free_size.i, align 4
  br label %if.end92

if.end92:                                         ; preds = %do.end, %sum_link_node_ref.exit.if.end92_crit_edge
  %call93 = call i32 @jffs2_scan_classify_jeb(ptr noundef %c, ptr noundef %jeb) #13
  br label %cleanup

do.end96:                                         ; preds = %if.end16.do.end96_crit_edge, %if.end10.do.end96_crit_edge, %entry.do.end96_crit_edge
  %213 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i165 = and i32 %213, -16384
  %214 = inttoptr i32 %and.i165 to ptr
  %task99 = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 2
  %215 = ptrtoint ptr %task99 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %task99, align 8
  %pid.i166 = getelementptr inbounds %struct.task_struct, ptr %216, i32 0, i32 68
  %217 = ptrtoint ptr %pid.i166 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %pid.i166, align 8
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %218, ptr noundef nonnull @.str.9) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end96, %if.end92, %if.end66.cleanup_crit_edge, %if.then65, %jffs2_sum_process_sum_data.exit.cleanup_crit_edge, %jffs2_sum_process_sum_data.exit.thread172, %if.then43.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.then25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end96 ], [ %retval.7.i168, %if.then65 ], [ %call93, %if.end92 ], [ %call27, %if.then25.cleanup_crit_edge ], [ %call38, %if.then34.cleanup_crit_edge ], [ %call49, %if.then43.cleanup_crit_edge ], [ 0, %jffs2_sum_process_sum_data.exit.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ 0, %jffs2_sum_process_sum_data.exit.thread172 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %crcnode) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_prealloc_raw_node_refs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_scan_dirty_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_link_node_ref(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_scan_classify_jeb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_sum_write_sumnode(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %isum.i = alloca %struct.jffs2_raw_summary, align 2
  %vecs.i = alloca [2 x %struct.kvec], align 4
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #13
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %0 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nextblock, align 4
  %call = tail call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %1, i32 noundef 1) #13
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %2 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %summary, align 4
  %sum_num = getelementptr inbounds %struct.jffs2_summary, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sum_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sum_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %sum_list_head = getelementptr inbounds %struct.jffs2_summary, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sum_list_head, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %13, ptr noundef nonnull @.str.14) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/summary.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 865, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_size, align 4
  %add14.neg = sub i32 -40, %15
  %sub = add i32 %add14.neg, %17
  %add16 = add i32 %17, -32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %isum.i) #13
  %18 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 4
  %22 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 5
  %23 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 6
  %24 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 7
  %25 = getelementptr inbounds %struct.jffs2_raw_summary, ptr %isum.i, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vecs.i) #13
  %26 = getelementptr inbounds %struct.kvec, ptr %vecs.i, i32 0, i32 1
  %27 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs.i, i32 0, i32 1
  %28 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs.i, i32 0, i32 1, i32 1
  %29 = call ptr @memset(ptr %26, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #13
  %30 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %retlen.i, align 4, !annotation !82
  %add.i = add i32 %add16, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 65536
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %31 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sum_list_head, align 4
  %tobool2.not13.i.i.i = icmp eq ptr %32, null
  br i1 %tobool2.not13.i.i.i, label %if.then.i.jffs2_sum_disable_collecting.exit.i_crit_edge, label %if.then.i.while.body.i.i.i_crit_edge

if.then.i.while.body.i.i.i_crit_edge:             ; preds = %if.then.i
  br label %while.body.i.i.i

if.then.i.jffs2_sum_disable_collecting.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then.i.while.body.i.i.i_crit_edge
  %33 = phi ptr [ %38, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %32, %if.then.i.while.body.i.i.i_crit_edge ]
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %sum_list_head, align 4
  tail call void @kfree(ptr noundef nonnull %33) #13
  %37 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sum_list_head, align 4
  %tobool2.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i.i.i, label %while.body.i.i.i.jffs2_sum_disable_collecting.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

while.body.i.i.i.jffs2_sum_disable_collecting.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit.i

jffs2_sum_disable_collecting.exit.i:              ; preds = %while.body.i.i.i.jffs2_sum_disable_collecting.exit.i_crit_edge, %if.then.i.jffs2_sum_disable_collecting.exit.i_crit_edge
  %sum_list_tail.i.i.i = getelementptr inbounds %struct.jffs2_summary, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %sum_list_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sum_list_tail.i.i.i, align 4
  %sum_padded.i.i.i = getelementptr inbounds %struct.jffs2_summary, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %sum_padded.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sum_padded.i.i.i, align 4
  %41 = ptrtoint ptr %sum_num to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %sum_num, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %3, align 4
  %43 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid.i.i, align 8
  %offset.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %48, ptr noundef nonnull @.str.32, i32 noundef %add16, i32 noundef %sub, i32 noundef %50) #17
  br label %jffs2_sum_write_data.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3.i = icmp slt i32 %sub, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end14.i

if.then4.i:                                       ; preds = %if.end.i
  %51 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sum_list_head, align 4
  %tobool2.not13.i.i2.i = icmp eq ptr %52, null
  br i1 %tobool2.not13.i.i2.i, label %if.then4.i.jffs2_sum_disable_collecting.exit8.i_crit_edge, label %if.then4.i.while.body.i.i4.i_crit_edge

if.then4.i.while.body.i.i4.i_crit_edge:           ; preds = %if.then4.i
  br label %while.body.i.i4.i

if.then4.i.jffs2_sum_disable_collecting.exit8.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit8.i

while.body.i.i4.i:                                ; preds = %while.body.i.i4.i.while.body.i.i4.i_crit_edge, %if.then4.i.while.body.i.i4.i_crit_edge
  %53 = phi ptr [ %58, %while.body.i.i4.i.while.body.i.i4.i_crit_edge ], [ %52, %if.then4.i.while.body.i.i4.i_crit_edge ]
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %sum_list_head, align 4
  tail call void @kfree(ptr noundef nonnull %53) #13
  %57 = ptrtoint ptr %sum_list_head to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sum_list_head, align 4
  %tobool2.not.i.i3.i = icmp eq ptr %58, null
  br i1 %tobool2.not.i.i3.i, label %while.body.i.i4.i.jffs2_sum_disable_collecting.exit8.i_crit_edge, label %while.body.i.i4.i.while.body.i.i4.i_crit_edge

while.body.i.i4.i.while.body.i.i4.i_crit_edge:    ; preds = %while.body.i.i4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i4.i

while.body.i.i4.i.jffs2_sum_disable_collecting.exit8.i_crit_edge: ; preds = %while.body.i.i4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit8.i

jffs2_sum_disable_collecting.exit8.i:             ; preds = %while.body.i.i4.i.jffs2_sum_disable_collecting.exit8.i_crit_edge, %if.then4.i.jffs2_sum_disable_collecting.exit8.i_crit_edge
  %sum_list_tail.i.i5.i = getelementptr inbounds %struct.jffs2_summary, ptr %3, i32 0, i32 4
  %59 = ptrtoint ptr %sum_list_tail.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %sum_list_tail.i.i5.i, align 4
  %sum_padded.i.i6.i = getelementptr inbounds %struct.jffs2_summary, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %sum_padded.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %sum_padded.i.i6.i, align 4
  %61 = ptrtoint ptr %sum_num to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %sum_num, align 4
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %3, align 4
  %63 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i9.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i9.i to ptr
  %task11.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task11.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task11.i, align 8
  %pid.i10.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid.i10.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid.i10.i, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %68, ptr noundef nonnull @.str.32, i32 noundef %sub) #17
  br label %jffs2_sum_write_data.exit

if.end14.i:                                       ; preds = %if.end.i
  %sum_buf.i = getelementptr inbounds %struct.jffs2_summary, ptr %3, i32 0, i32 5
  %69 = ptrtoint ptr %sum_buf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sum_buf.i, align 4
  %71 = call ptr @memset(ptr %70, i32 255, i32 %add16)
  %72 = call ptr @memset(ptr %20, i32 0, i32 24)
  %73 = ptrtoint ptr %isum.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 6533, ptr %isum.i, align 2
  %74 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 8198, ptr %18, align 2
  %75 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %17, ptr %19, align 2
  %call21.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %isum.i, i32 noundef 8) #19
  %76 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %call21.i, ptr %20, align 2
  %77 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %summary, align 4
  %sum_padded.i = getelementptr inbounds %struct.jffs2_summary, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %sum_padded.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sum_padded.i, align 4
  %81 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %23, align 2
  %cleanmarker_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %82 = ptrtoint ptr %cleanmarker_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cleanmarker_size.i, align 4
  %84 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %22, align 2
  %sum_num30.i = getelementptr inbounds %struct.jffs2_summary, ptr %78, i32 0, i32 1
  %85 = ptrtoint ptr %sum_num30.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sum_num30.i, align 4
  %87 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %21, align 2
  %sum_buf32.i = getelementptr inbounds %struct.jffs2_summary, ptr %78, i32 0, i32 5
  %88 = ptrtoint ptr %sum_buf32.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sum_buf32.i, align 4
  %90 = load i32, ptr %sum_num30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not36.i = icmp eq i32 %90, 0
  br i1 %tobool.not36.i, label %if.end14.i.bail_rwcompat.i_crit_edge, label %if.end14.i.while.body.i_crit_edge

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  br label %while.body.i

if.end14.i.bail_rwcompat.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail_rwcompat.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %if.end14.i.while.body.i_crit_edge
  %91 = phi ptr [ %172, %sw.epilog.i.while.body.i_crit_edge ], [ %78, %if.end14.i.while.body.i_crit_edge ]
  %wpage.037.i = phi ptr [ %add.ptr87.i, %sw.epilog.i.while.body.i_crit_edge ], [ %89, %if.end14.i.while.body.i_crit_edge ]
  %sum_list_head.i = getelementptr inbounds %struct.jffs2_summary, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %sum_list_head.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sum_list_head.i, align 4
  %nodetype36.i = getelementptr inbounds %struct.jffs2_sum_unknown_mem, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %nodetype36.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %nodetype36.i, align 4
  %96 = zext i16 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %95, label %sw.default.i [
    i16 -8190, label %sw.bb.i
    i16 -8191, label %sw.bb46.i
    i16 -8184, label %sw.bb67.i
    i16 -8183, label %sw.bb80.i
  ]

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %wpage.037.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 -8190, ptr %wpage.037.i, align 1
  %inode.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %wpage.037.i, i32 0, i32 1
  %inode40.i = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %93, i32 0, i32 2
  %98 = ptrtoint ptr %inode40.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %inode40.i, align 2
  %100 = ptrtoint ptr %inode.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %99, ptr %inode.i, align 1
  %version.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %wpage.037.i, i32 0, i32 2
  %version41.i = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %93, i32 0, i32 3
  %101 = ptrtoint ptr %version41.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %version41.i, align 2
  %103 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %102, ptr %version.i, align 1
  %offset42.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %wpage.037.i, i32 0, i32 3
  %offset43.i = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %93, i32 0, i32 4
  %104 = ptrtoint ptr %offset43.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %offset43.i, align 2
  %106 = ptrtoint ptr %offset42.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %offset42.i, align 1
  %totlen44.i = getelementptr inbounds %struct.jffs2_sum_inode_flash, ptr %wpage.037.i, i32 0, i32 4
  %totlen45.i = getelementptr inbounds %struct.jffs2_sum_inode_mem, ptr %93, i32 0, i32 5
  %107 = ptrtoint ptr %totlen45.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %totlen45.i, align 2
  %109 = ptrtoint ptr %totlen44.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %totlen44.i, align 1
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %wpage.037.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 -8191, ptr %wpage.037.i, align 1
  %totlen49.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 1
  %totlen50.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 2
  %111 = ptrtoint ptr %totlen50.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %totlen50.i, align 2
  %113 = ptrtoint ptr %totlen49.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %totlen49.i, align 1
  %offset51.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 2
  %offset52.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 3
  %114 = ptrtoint ptr %offset52.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %offset52.i, align 2
  %116 = ptrtoint ptr %offset51.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %115, ptr %offset51.i, align 1
  %pino.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 3
  %pino53.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 4
  %117 = ptrtoint ptr %pino53.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %pino53.i, align 2
  %119 = ptrtoint ptr %pino.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %118, ptr %pino.i, align 1
  %version54.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 4
  %version55.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 5
  %120 = ptrtoint ptr %version55.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %version55.i, align 2
  %122 = ptrtoint ptr %version54.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %121, ptr %version54.i, align 1
  %ino.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 5
  %ino56.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 6
  %123 = ptrtoint ptr %ino56.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %ino56.i, align 2
  %125 = ptrtoint ptr %ino.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %ino.i, align 1
  %nsize.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 7
  %126 = ptrtoint ptr %nsize.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %nsize.i, align 2
  %nsize57.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 6
  %128 = ptrtoint ptr %nsize57.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %nsize57.i, align 1
  %type.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 8
  %129 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %type.i, align 1
  %type58.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 7
  %131 = ptrtoint ptr %type58.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %type58.i, align 1
  %name.i = getelementptr inbounds %struct.jffs2_sum_dirent_flash, ptr %wpage.037.i, i32 0, i32 8
  %name59.i = getelementptr inbounds %struct.jffs2_sum_dirent_mem, ptr %93, i32 0, i32 9
  %132 = load i8, ptr %nsize.i, align 2
  %conv62.i = zext i8 %132 to i32
  %133 = call ptr @memcpy(ptr %name.i, ptr %name59.i, i32 %conv62.i)
  %134 = load i8, ptr %nsize.i, align 2
  %conv64.i = zext i8 %134 to i32
  %add65.i = add nuw nsw i32 %conv64.i, 24
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %135 = ptrtoint ptr %wpage.037.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 -8184, ptr %wpage.037.i, align 1
  %xid.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %wpage.037.i, i32 0, i32 1
  %xid72.i = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %93, i32 0, i32 2
  %136 = ptrtoint ptr %xid72.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %xid72.i, align 2
  %138 = ptrtoint ptr %xid.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %xid.i, align 1
  %version73.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %wpage.037.i, i32 0, i32 2
  %version74.i = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %93, i32 0, i32 3
  %139 = ptrtoint ptr %version74.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %version74.i, align 2
  %141 = ptrtoint ptr %version73.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 %140, ptr %version73.i, align 1
  %offset75.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %wpage.037.i, i32 0, i32 3
  %offset76.i = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %93, i32 0, i32 4
  %142 = ptrtoint ptr %offset76.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %offset76.i, align 2
  %144 = ptrtoint ptr %offset75.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 %143, ptr %offset75.i, align 1
  %totlen77.i = getelementptr inbounds %struct.jffs2_sum_xattr_flash, ptr %wpage.037.i, i32 0, i32 4
  %totlen78.i = getelementptr inbounds %struct.jffs2_sum_xattr_mem, ptr %93, i32 0, i32 5
  %145 = ptrtoint ptr %totlen78.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %totlen78.i, align 2
  %147 = ptrtoint ptr %totlen77.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 4)
  store i32 %146, ptr %totlen77.i, align 1
  br label %sw.epilog.i

sw.bb80.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %wpage.037.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 -8183, ptr %wpage.037.i, align 1
  %offset85.i = getelementptr inbounds %struct.jffs2_sum_xref_flash, ptr %wpage.037.i, i32 0, i32 1
  %offset86.i = getelementptr inbounds %struct.jffs2_sum_xref_mem, ptr %93, i32 0, i32 2
  %149 = ptrtoint ptr %offset86.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %offset86.i, align 2
  %151 = ptrtoint ptr %offset85.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 4)
  store i32 %150, ptr %offset85.i, align 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %while.body.i
  %sum_list_head.i.le = getelementptr inbounds %struct.jffs2_summary, ptr %91, i32 0, i32 3
  %sum_num34.le.i = getelementptr inbounds %struct.jffs2_summary, ptr %91, i32 0, i32 1
  %152 = and i16 %95, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %152)
  %cmp91.i = icmp eq i16 %152, 16384
  br i1 %cmp91.i, label %if.then93.i, label %do.body96.i

if.then93.i:                                      ; preds = %sw.default.i
  %tobool2.not13.i.i12.i = icmp eq ptr %93, null
  br i1 %tobool2.not13.i.i12.i, label %if.then93.i.jffs2_sum_disable_collecting.exit18.i_crit_edge, label %if.then93.i.while.body.i.i14.i_crit_edge

if.then93.i.while.body.i.i14.i_crit_edge:         ; preds = %if.then93.i
  br label %while.body.i.i14.i

if.then93.i.jffs2_sum_disable_collecting.exit18.i_crit_edge: ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit18.i

while.body.i.i14.i:                               ; preds = %while.body.i.i14.i.while.body.i.i14.i_crit_edge, %if.then93.i.while.body.i.i14.i_crit_edge
  %153 = phi ptr [ %158, %while.body.i.i14.i.while.body.i.i14.i_crit_edge ], [ %93, %if.then93.i.while.body.i.i14.i_crit_edge ]
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %156 = ptrtoint ptr %sum_list_head.i.le to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %sum_list_head.i.le, align 4
  call void @kfree(ptr noundef nonnull %153) #13
  %157 = ptrtoint ptr %sum_list_head.i.le to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sum_list_head.i.le, align 4
  %tobool2.not.i.i13.i = icmp eq ptr %158, null
  br i1 %tobool2.not.i.i13.i, label %while.body.i.i14.i.jffs2_sum_disable_collecting.exit18.i_crit_edge, label %while.body.i.i14.i.while.body.i.i14.i_crit_edge

while.body.i.i14.i.while.body.i.i14.i_crit_edge:  ; preds = %while.body.i.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i14.i

while.body.i.i14.i.jffs2_sum_disable_collecting.exit18.i_crit_edge: ; preds = %while.body.i.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_disable_collecting.exit18.i

jffs2_sum_disable_collecting.exit18.i:            ; preds = %while.body.i.i14.i.jffs2_sum_disable_collecting.exit18.i_crit_edge, %if.then93.i.jffs2_sum_disable_collecting.exit18.i_crit_edge
  %sum_list_tail.i.i15.i = getelementptr inbounds %struct.jffs2_summary, ptr %91, i32 0, i32 4
  %159 = ptrtoint ptr %sum_list_tail.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %sum_list_tail.i.i15.i, align 4
  %sum_padded.i.i16.i = getelementptr inbounds %struct.jffs2_summary, ptr %91, i32 0, i32 2
  %160 = ptrtoint ptr %sum_padded.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %sum_padded.i.i16.i, align 4
  %161 = ptrtoint ptr %sum_num34.le.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %sum_num34.le.i, align 4
  %162 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %91, align 4
  br label %bail_rwcompat.i

do.body96.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/summary.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 789, 0\0A.popsection", ""() #13, !srcloc !83
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb80.i, %sw.bb67.i, %sw.bb46.i, %sw.bb.i
  %.sink.i = phi i32 [ 6, %sw.bb80.i ], [ 18, %sw.bb67.i ], [ %add65.i, %sw.bb46.i ], [ 18, %sw.bb.i ]
  %add.ptr87.i = getelementptr i8, ptr %wpage.037.i, i32 %.sink.i
  %163 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %93, align 4
  %165 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %summary, align 4
  %sum_list_head104.i = getelementptr inbounds %struct.jffs2_summary, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %sum_list_head104.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %164, ptr %sum_list_head104.i, align 4
  call void @kfree(ptr noundef %93) #13
  %168 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %summary, align 4
  %sum_num106.i = getelementptr inbounds %struct.jffs2_summary, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %sum_num106.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sum_num106.i, align 4
  %dec.i = add i32 %171, -1
  store i32 %dec.i, ptr %sum_num106.i, align 4
  %172 = load ptr, ptr %summary, align 4
  %sum_num34.i = getelementptr inbounds %struct.jffs2_summary, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %sum_num34.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sum_num34.i, align 4
  %tobool.not.i = icmp eq i32 %174, 0
  br i1 %tobool.not.i, label %sw.epilog.i.bail_rwcompat.i_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

sw.epilog.i.bail_rwcompat.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bail_rwcompat.i

bail_rwcompat.i:                                  ; preds = %sw.epilog.i.bail_rwcompat.i_crit_edge, %jffs2_sum_disable_collecting.exit18.i, %if.end14.i.bail_rwcompat.i_crit_edge
  %wpage.031.i = phi ptr [ %wpage.037.i, %jffs2_sum_disable_collecting.exit18.i ], [ %89, %if.end14.i.bail_rwcompat.i_crit_edge ], [ %add.ptr87.i, %sw.epilog.i.bail_rwcompat.i_crit_edge ]
  %175 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %summary, align 4
  %sum_list_head.i.i19.i = getelementptr inbounds %struct.jffs2_summary, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %sum_list_head.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %sum_list_head.i.i19.i, align 4
  %tobool2.not13.i.i20.i = icmp eq ptr %178, null
  br i1 %tobool2.not13.i.i20.i, label %bail_rwcompat.i.jffs2_sum_reset_collected.exit.i_crit_edge, label %bail_rwcompat.i.while.body.i.i22.i_crit_edge

bail_rwcompat.i.while.body.i.i22.i_crit_edge:     ; preds = %bail_rwcompat.i
  br label %while.body.i.i22.i

bail_rwcompat.i.jffs2_sum_reset_collected.exit.i_crit_edge: ; preds = %bail_rwcompat.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_reset_collected.exit.i

while.body.i.i22.i:                               ; preds = %while.body.i.i22.i.while.body.i.i22.i_crit_edge, %bail_rwcompat.i.while.body.i.i22.i_crit_edge
  %179 = phi ptr [ %184, %while.body.i.i22.i.while.body.i.i22.i_crit_edge ], [ %178, %bail_rwcompat.i.while.body.i.i22.i_crit_edge ]
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %182 = ptrtoint ptr %sum_list_head.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %sum_list_head.i.i19.i, align 4
  call void @kfree(ptr noundef nonnull %179) #13
  %183 = ptrtoint ptr %sum_list_head.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sum_list_head.i.i19.i, align 4
  %tobool2.not.i.i21.i = icmp eq ptr %184, null
  br i1 %tobool2.not.i.i21.i, label %while.body.i.i22.i.jffs2_sum_reset_collected.exit.i_crit_edge, label %while.body.i.i22.i.while.body.i.i22.i_crit_edge

while.body.i.i22.i.while.body.i.i22.i_crit_edge:  ; preds = %while.body.i.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i22.i

while.body.i.i22.i.jffs2_sum_reset_collected.exit.i_crit_edge: ; preds = %while.body.i.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jffs2_sum_reset_collected.exit.i

jffs2_sum_reset_collected.exit.i:                 ; preds = %while.body.i.i22.i.jffs2_sum_reset_collected.exit.i_crit_edge, %bail_rwcompat.i.jffs2_sum_reset_collected.exit.i_crit_edge
  %sum_list_tail.i.i23.i = getelementptr inbounds %struct.jffs2_summary, ptr %176, i32 0, i32 4
  %185 = ptrtoint ptr %sum_list_tail.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %sum_list_tail.i.i23.i, align 4
  %sum_padded.i.i24.i = getelementptr inbounds %struct.jffs2_summary, ptr %176, i32 0, i32 2
  %186 = ptrtoint ptr %sum_padded.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %sum_padded.i.i24.i, align 4
  %sum_num.i.i25.i = getelementptr inbounds %struct.jffs2_summary, ptr %176, i32 0, i32 1
  %187 = ptrtoint ptr %sum_num.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %sum_num.i.i25.i, align 4
  %188 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %176, align 4
  %add.ptr108.i = getelementptr i8, ptr %wpage.031.i, i32 %sub
  %sector_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %189 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %sector_size.i, align 4
  %191 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %free_size, align 4
  %sub.i = sub i32 %190, %192
  %193 = ptrtoint ptr %add.ptr108.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 %sub.i, ptr %add.ptr108.i, align 1
  %magic112.i = getelementptr inbounds %struct.jffs2_sum_marker, ptr %add.ptr108.i, i32 0, i32 1
  %194 = ptrtoint ptr %magic112.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 42276997, ptr %magic112.i, align 1
  %195 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %summary, align 4
  %sum_buf118.i = getelementptr inbounds %struct.jffs2_summary, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %sum_buf118.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %sum_buf118.i, align 4
  %call119.i = call i32 @crc32_le(i32 noundef 0, ptr noundef %198, i32 noundef %add16) #19
  %199 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %call119.i, ptr %24, align 2
  %call122.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %isum.i, i32 noundef 24) #19
  %200 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 4)
  store i32 %call122.i, ptr %25, align 2
  %201 = ptrtoint ptr %vecs.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %isum.i, ptr %vecs.i, align 4
  %202 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 32, ptr %26, align 4
  %203 = ptrtoint ptr %sum_buf118.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sum_buf118.i, align 4
  %205 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %204, ptr %27, align 4
  %206 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %add16, ptr %28, align 4
  %offset130.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %1, i32 0, i32 2
  %207 = ptrtoint ptr %offset130.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %offset130.i, align 4
  %209 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %sector_size.i, align 4
  %add132.i = add i32 %210, %208
  %211 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %free_size, align 4
  %sub134.i = sub i32 %add132.i, %212
  %conv137.i = zext i32 %sub134.i to i64
  %call138.i = call i32 @jffs2_flash_writev(ptr noundef %c, ptr noundef nonnull %vecs.i, i32 noundef 2, i64 noundef %conv137.i, ptr noundef nonnull %retlen.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %tobool139.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool139.not.i, label %lor.lhs.false.i, label %jffs2_sum_reset_collected.exit.i.do.end145.i_crit_edge

jffs2_sum_reset_collected.exit.i.do.end145.i_crit_edge: ; preds = %jffs2_sum_reset_collected.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end145.i

lor.lhs.false.i:                                  ; preds = %jffs2_sum_reset_collected.exit.i
  %213 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %17)
  %cmp140.not.i = icmp eq i32 %214, %17
  br i1 %cmp140.not.i, label %if.end157.i, label %lor.lhs.false.i.do.end145.i_crit_edge

lor.lhs.false.i.do.end145.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end145.i

do.end145.i:                                      ; preds = %lor.lhs.false.i.do.end145.i_crit_edge, %jffs2_sum_reset_collected.exit.i.do.end145.i_crit_edge
  %215 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i26.i = and i32 %215, -16384
  %216 = inttoptr i32 %and.i26.i to ptr
  %task148.i = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %task148.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %task148.i, align 8
  %pid.i27.i = getelementptr inbounds %struct.task_struct, ptr %218, i32 0, i32 68
  %219 = ptrtoint ptr %pid.i27.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pid.i27.i, align 8
  %221 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %retlen.i, align 4
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %220, ptr noundef nonnull @.str.32, i32 noundef %17, i32 noundef %sub134.i, i32 noundef %call138.i, i32 noundef %222) #17
  %223 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool151.not.i = icmp eq i32 %224, 0
  br i1 %tobool151.not.i, label %do.end145.i.if.end155.i_crit_edge, label %if.then152.i

do.end145.i.if.end155.i_crit_edge:                ; preds = %do.end145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155.i

if.then152.i:                                     ; preds = %do.end145.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #13
  %or.i = or i32 %sub134.i, 1
  %call153.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %1, i32 noundef %or.i, i32 noundef %17, ptr noundef null) #13
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #13
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.then152.i, %do.end145.i.if.end155.i_crit_edge
  %225 = ptrtoint ptr %summary to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %summary, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 -1, ptr %226, align 4
  br label %jffs2_sum_write_data.exit

if.end157.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #13
  %or159.i = or i32 %sub134.i, 3
  %call160.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %1, i32 noundef %or159.i, i32 noundef %17, ptr noundef null) #13
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #13
  br label %jffs2_sum_write_data.exit

jffs2_sum_write_data.exit:                        ; preds = %if.end157.i, %if.end155.i, %jffs2_sum_disable_collecting.exit8.i, %jffs2_sum_disable_collecting.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vecs.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %isum.i) #13
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #13
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_scan_make_ino_cache(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_full_dirent(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dirent(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_fd_to_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_setup_xattr_datum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_xattr_ref() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_jeb_node_refs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_writev(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/summary.c", i32 33, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_sum_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_sum_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/summary.c", i32 40, i32 3}
!8 = !{ptr @jffs2_sum_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_sum_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/summary.c", i32 366, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @jffs2_sum_add_kvec._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @jffs2_sum_add_kvec._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/jffs2/summary.c", i32 656, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @jffs2_sum_scan_sumnode._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @jffs2_sum_scan_sumnode._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jffs2/summary.c", i32 667, i32 2}
!22 = !{ptr @jffs2_sum_scan_sumnode._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @jffs2_sum_scan_sumnode._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jffs2/summary.c", i32 864, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @jffs2_sum_write_sumnode._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @jffs2_sum_write_sumnode._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jffs2/summary.c", i32 98, i32 4}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jffs2_sum_add_mem._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @jffs2_sum_add_mem._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/summary.c", i32 420, i32 6}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jffs2_sum_process_sum_data._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @jffs2_sum_process_sum_data._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/jffs2/summary.c", i32 447, i32 6}
!41 = !{ptr @jffs2_sum_process_sum_data._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @jffs2_sum_process_sum_data._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/jffs2/summary.c", i32 453, i32 6}
!45 = !{ptr @jffs2_sum_process_sum_data._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @jffs2_sum_process_sum_data._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/jffs2/summary.c", i32 534, i32 6}
!49 = !{ptr @jffs2_sum_process_sum_data._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @jffs2_sum_process_sum_data._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/jffs2/summary.c", i32 551, i32 5}
!53 = !{ptr @jffs2_sum_process_sum_data._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @jffs2_sum_process_sum_data._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/jffs2/summary.c", i32 690, i32 3}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @jffs2_sum_write_data._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @jffs2_sum_write_data._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/jffs2/summary.c", i32 700, i32 3}
!62 = !{ptr @jffs2_sum_write_data._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @jffs2_sum_write_data._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/jffs2/summary.c", i32 825, i32 3}
!66 = !{ptr @jffs2_sum_write_data._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @jffs2_sum_write_data._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2154458356, i64 2154458839, i64 2154458393, i64 2154458449, i64 2154458483, i64 2154458507, i64 2154458548, i64 2154458569, i64 2154458597, i64 2154458631}
!79 = !{i64 2154464848, i64 2154465331, i64 2154464885, i64 2154464941, i64 2154464975, i64 2154464999, i64 2154465040, i64 2154465061, i64 2154465089, i64 2154465123}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2154526825, i64 2154527308, i64 2154526862, i64 2154526918, i64 2154526952, i64 2154526976, i64 2154527017, i64 2154527038, i64 2154527066, i64 2154527100}
!82 = !{!"auto-init"}
!83 = !{i64 2154517360, i64 2154517843, i64 2154517397, i64 2154517453, i64 2154517487, i64 2154517511, i64 2154517552, i64 2154517573, i64 2154517601, i64 2154517635}
