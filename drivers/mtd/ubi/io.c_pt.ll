; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/io.c_pt.bc'
source_filename = "../drivers/mtd/ubi/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.71 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.71 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }

@ubi_io_read.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubi_io_read\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mtd/ubi/io.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBI DBG io (pid %d): read %d bytes from PEB %d:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ubi_io_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@ubi_io_read._entry_ptr = internal global ptr @ubi_io_read._entry, section ".printk_index", align 4
@ubi_io_read._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_read._entry_ptr.6 = internal global ptr @ubi_io_read._entry.5, section ".printk_index", align 4
@ubi_io_read._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_read._entry_ptr.8 = internal global ptr @ubi_io_read._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (ECC error)\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fixable bit-flip detected at PEB %d\00", [60 x i8] zeroinitializer }, align 32
@ubi_io_read._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_read._entry_ptr.13 = internal global ptr @ubi_io_read._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"error %d%s while reading %d bytes from PEB %d:%d, read only %zd bytes, retry\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"error %d%s while reading %d bytes from PEB %d:%d, read %zd bytes\00", [63 x i8] zeroinitializer }, align 32
@ubi_io_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_read._entry_ptr.17 = internal global ptr @ubi_io_read._entry.16, section ".printk_index", align 4
@ubi_io_read._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_read._entry_ptr.19 = internal global ptr @ubi_io_read._entry.18, section ".printk_index", align 4
@ubi_io_read.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): bit-flip (emulated)\0A\00", [53 x i8] zeroinitializer }, align 32
@ubi_io_write.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubi_io_write\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBI DBG io (pid %d): write %d bytes to PEB %d:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@ubi_io_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_write._entry_ptr = internal global ptr @ubi_io_write._entry, section ".printk_index", align 4
@ubi_io_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_write._entry_ptr.24 = internal global ptr @ubi_io_write._entry.23, section ".printk_index", align 4
@ubi_io_write._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_write._entry_ptr.26 = internal global ptr @ubi_io_write._entry.25, section ".printk_index", align 4
@ubi_io_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_write._entry_ptr.28 = internal global ptr @ubi_io_write._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read-only mode\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot write %d bytes to PEB %d:%d (emulated)\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"error %d while writing %d bytes to PEB %d:%d, written %zd bytes\00", [32 x i8] zeroinitializer }, align 32
@ubi_io_write._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_write._entry_ptr.33 = internal global ptr @ubi_io_write._entry.32, section ".printk_index", align 4
@ubi_io_sync_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.34, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_io_sync_erase\00", [46 x i8] zeroinitializer }, align 32
@ubi_io_sync_erase._entry_ptr = internal global ptr @ubi_io_sync_erase._entry, section ".printk_index", align 4
@ubi_io_is_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.35, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubi_io_is_bad\00", [18 x i8] zeroinitializer }, align 32
@ubi_io_is_bad._entry_ptr = internal global ptr @ubi_io_is_bad._entry, section ".printk_index", align 4
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error %d while checking if PEB %d is bad\00", [55 x i8] zeroinitializer }, align 32
@ubi_io_is_bad.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBI DBG io (pid %d): PEB %d is bad\0A\00", [60 x i8] zeroinitializer }, align 32
@ubi_io_mark_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.38, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubi_io_mark_bad\00", [16 x i8] zeroinitializer }, align 32
@ubi_io_mark_bad._entry_ptr = internal global ptr @ubi_io_mark_bad._entry, section ".printk_index", align 4
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot mark PEB %d bad, error %d\00", [63 x i8] zeroinitializer }, align 32
@ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubi_io_read_ec_hdr\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBI DBG io (pid %d): read EC header from PEB %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_io_read_ec_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.40, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_read_ec_hdr._entry_ptr = internal global ptr @ubi_io_read_ec_hdr._entry, section ".printk_index", align 4
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no EC header found at PEB %d, only 0xFF bytes\00", [50 x i8] zeroinitializer }, align 32
@ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"UBI DBG bld (pid %d): no EC header found at PEB %d, only 0xFF bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"bad magic number at PEB %d: %08x instead of %08x\00", [47 x i8] zeroinitializer }, align 32
@ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.45, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBI DBG bld (pid %d): bad magic number at PEB %d: %08x instead of %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bad EC header CRC at PEB %d, calculated %#08x, read %#08x\00", [38 x i8] zeroinitializer }, align 32
@ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.47, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"UBI DBG bld (pid %d): bad EC header CRC at PEB %d, calculated %#08x, read %#08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"validation failed for PEB %d\00", [35 x i8] zeroinitializer }, align 32
@ubi_io_write_ec_hdr.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubi_io_write_ec_hdr\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"UBI DBG io (pid %d): write EC header to PEB %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ubi_io_write_ec_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_write_ec_hdr._entry_ptr = internal global ptr @ubi_io_write_ec_hdr._entry, section ".printk_index", align 4
@ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubi_io_read_vid_hdr\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBI DBG io (pid %d): read VID header from PEB %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ubi_io_read_vid_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.51, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_read_vid_hdr._entry_ptr = internal global ptr @ubi_io_read_vid_hdr._entry, section ".printk_index", align 4
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"no VID header found at PEB %d, only 0xFF bytes\00", [49 x i8] zeroinitializer }, align 32
@ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.54, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"UBI DBG bld (pid %d): no VID header found at PEB %d, only 0xFF bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.45, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bad CRC at PEB %d, calculated %#08x, read %#08x\00", [48 x i8] zeroinitializer }, align 32
@ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.56, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"UBI DBG bld (pid %d): bad CRC at PEB %d, calculated %#08x, read %#08x\0A\00", [57 x i8] zeroinitializer }, align 32
@ubi_io_write_vid_hdr.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubi_io_write_vid_hdr\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBI DBG io (pid %d): write VID header to PEB %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_io_write_vid_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.57, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_io_write_vid_hdr._entry_ptr = internal global ptr @ubi_io_write_vid_hdr._entry, section ".printk_index", align 4
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot allocate memory to check for 0xFFs\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"err %d while reading %d bytes from PEB %d:%d, read %zd bytes\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"flash region at PEB %d:%d, length %d does not contain all 0xFF bytes\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"self-check failed for PEB %d\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hex dump of the %d-%d region\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@nor_erase_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.65, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nor_erase_prepare\00", [46 x i8] zeroinitializer }, align 32
@nor_erase_prepare._entry_ptr = internal global ptr @nor_erase_prepare._entry, section ".printk_index", align 4
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot invalidate PEB %d, write returned %d\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"run torture test for PEB %d\00", [36 x i8] zeroinitializer }, align 32
@torture_peb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"torture_peb\00", [20 x i8] zeroinitializer }, align 32
@torture_peb._entry_ptr = internal global ptr @torture_peb._entry, section ".printk_index", align 4
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"erased PEB %d, but a non-0xFF byte found\00", [55 x i8] zeroinitializer }, align 32
@patterns = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\A5Z\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pattern %x checking failed for PEB %d\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PEB %d passed torture test, do not mark it as bad\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"read problems on freshly erased PEB %d, must be bad\00", [44 x i8] zeroinitializer }, align 32
@do_sync_erase.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_sync_erase\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBI DBG io (pid %d): erase PEB %d\0A\00", [61 x i8] zeroinitializer }, align 32
@do_sync_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.73, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_sync_erase._entry_ptr = internal global ptr @do_sync_erase._entry, section ".printk_index", align 4
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d while erasing PEB %d, retry\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot erase PEB %d, error %d\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot erase PEB %d (emulated)\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"node with incompatible UBI version found: this UBI version is %d, image version is %d\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad VID header offset %d, expected %d\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad data offset %d, expected %d\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad erase counter %lld\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad EC header\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad copy_flag\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"negative values\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad vol_id\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad compat\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad vol_type\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad data_pad\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad data_size\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zero used_ebs\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zero data_size\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"too high lnum\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"non-zero data CRC\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"non-zero data_size\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zero data_size of copy\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad used_ebs\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad VID header\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad magic %#08x, must be %#08x\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad CRC, calculated %#08x, read %#08x\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bad VID header magic %#08x at PEB %d, must be %#08x\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bad VID header CRC at PEB %d, calculated %#08x, read %#08x\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot allocate memory to check writes\00", [57 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"self-check failed for PEB %d:%d, len %d\00", [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data differ at position %d\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hex dump of the original buffer from %d to %d\00", [50 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hex dump of the read buffer from %d to %d\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 4294967222]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 120, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 122, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 123, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 124, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 156, i32 45 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 156, i32 62 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 167, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 169, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 174, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 180, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 190, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 194, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 197, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 229, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 231, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 232, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 233, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 234, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 237, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 264, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 273, i32 16 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 278, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 527, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 576, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 583, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 586, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 606, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 618, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 700, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 701, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 732, i32 19 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 734, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 747, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 751, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 761, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 765, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 777, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 809, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 810, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 974, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 975, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 989, i32 19 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 991, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1014, i32 18 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1018, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1058, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1059, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1368, i32 16 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1374, i32 16 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1381, i32 16 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1390, i32 15 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1391, i32 15 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1392, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 484, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 502, i32 15 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 367, i32 15 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 369, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 384, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant [9 x i8] c"patterns\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 352, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 404, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 412, i32 15 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 422, i32 16 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 312, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 313, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 329, i32 18 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 334, i32 16 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 344, i32 16 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 641, i32 16 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 647, i32 16 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 653, i32 16 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 659, i32 16 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 666, i32 15 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 854, i32 16 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 860, i32 16 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 865, i32 16 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 870, i32 16 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 882, i32 16 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 887, i32 16 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 892, i32 16 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 904, i32 17 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 908, i32 17 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 917, i32 17 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 923, i32 18 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 927, i32 18 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 932, i32 18 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 937, i32 17 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 945, i32 15 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1126, i32 16 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1173, i32 16 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1209, i32 16 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1263, i32 16 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1304, i32 16 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1320, i32 16 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1322, i32 16 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1324, i32 16 }
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.451 = private constant [24 x i8] c"../drivers/mtd/ubi/io.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1328, i32 16 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @do_sync_erase._entry, ptr @do_sync_erase._entry_ptr, ptr @nor_erase_prepare._entry, ptr @nor_erase_prepare._entry_ptr, ptr @torture_peb._entry, ptr @torture_peb._entry_ptr, ptr @ubi_io_is_bad._entry, ptr @ubi_io_is_bad._entry_ptr, ptr @ubi_io_mark_bad._entry, ptr @ubi_io_mark_bad._entry_ptr, ptr @ubi_io_read._entry, ptr @ubi_io_read._entry.12, ptr @ubi_io_read._entry.16, ptr @ubi_io_read._entry.18, ptr @ubi_io_read._entry.5, ptr @ubi_io_read._entry.7, ptr @ubi_io_read._entry_ptr, ptr @ubi_io_read._entry_ptr.13, ptr @ubi_io_read._entry_ptr.17, ptr @ubi_io_read._entry_ptr.19, ptr @ubi_io_read._entry_ptr.6, ptr @ubi_io_read._entry_ptr.8, ptr @ubi_io_read_ec_hdr._entry, ptr @ubi_io_read_ec_hdr._entry_ptr, ptr @ubi_io_read_vid_hdr._entry, ptr @ubi_io_read_vid_hdr._entry_ptr, ptr @ubi_io_sync_erase._entry, ptr @ubi_io_sync_erase._entry_ptr, ptr @ubi_io_write._entry, ptr @ubi_io_write._entry.23, ptr @ubi_io_write._entry.25, ptr @ubi_io_write._entry.27, ptr @ubi_io_write._entry.32, ptr @ubi_io_write._entry_ptr, ptr @ubi_io_write._entry_ptr.24, ptr @ubi_io_write._entry_ptr.26, ptr @ubi_io_write._entry_ptr.28, ptr @ubi_io_write._entry_ptr.33, ptr @ubi_io_write_ec_hdr._entry, ptr @ubi_io_write_ec_hdr._entry_ptr, ptr @ubi_io_write_vid_hdr._entry, ptr @ubi_io_write_vid_hdr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @patterns, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_sync_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_is_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_mark_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read_ec_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write_ec_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read_vid_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write_vid_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_erase_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_peb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patterns to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sync_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %buf, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read) #9
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read, align 4, !annotation !254
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %do.body4.do.end17_crit_edge, !prof !256

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs:                                         ; preds = %do.body4
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %7 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %pnum)
  %cmp5.not = icmp sgt i32 %8, %pnum
  br i1 %cmp5.not, label %land.rhs.do.body26_crit_edge, label %land.rhs.do.end17_crit_edge, !prof !256

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs.do.body26_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.body4.do.end17_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i228 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i228 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid21, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 122, i32 noundef %14) #12
  tail call void @dump_stack() #12
  br label %do.body26

do.body26:                                        ; preds = %do.end17, %land.rhs.do.body26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp27 = icmp sgt i32 %offset, -1
  br i1 %cmp27, label %land.rhs28, label %do.body26.do.end42_crit_edge, !prof !256

do.body26.do.end42_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

land.rhs28:                                       ; preds = %do.body26
  %add = add i32 %len, %offset
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %15 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp29 = icmp sgt i32 %add, %16
  br i1 %cmp29, label %land.rhs28.do.end42_crit_edge, label %land.rhs28.do.body51_crit_edge, !prof !257

land.rhs28.do.body51_crit_edge:                   ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

land.rhs28.do.end42_crit_edge:                    ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

do.end42:                                         ; preds = %land.rhs28.do.end42_crit_edge, %do.body26.do.end42_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i229 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i229 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task45, align 8
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid46, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef %22) #12
  tail call void @dump_stack() #12
  br label %do.body51

do.body51:                                        ; preds = %do.end42, %land.rhs28.do.body51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp52 = icmp slt i32 %len, 1
  br i1 %cmp52, label %do.end64, label %do.body51.do.end72_crit_edge, !prof !257

do.body51.do.end72_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

do.end64:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %23 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i230 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i230 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task67, align 8
  %pid68 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid68, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 124, i32 noundef %28) #12
  tail call void @dump_stack() #12
  br label %do.end72

do.end72:                                         ; preds = %do.end64, %do.body51.do.end72_crit_edge
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %29 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  %30 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %do.end72.if.end76_crit_edge, label %if.end.i

do.end72.if.end76_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.end.i:                                         ; preds = %do.end72
  %call1.i = tail call i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %pnum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end76_crit_edge, label %self_check_not_bad.exit

if.end.i.if.end76_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

self_check_not_bad.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  tail call void @dump_stack() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 0
  %spec.select.i = select i1 %cmp.i, i32 -22, i32 %call1.i
  br label %cleanup183

if.end76:                                         ; preds = %if.end.i.if.end76_crit_edge, %do.end72.if.end76_crit_edge
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 1
  %33 = xor i8 %32, -1
  store i8 %33, ptr %buf, align 1
  %conv78 = sext i32 %pnum to i64
  %peb_size79 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %34 = ptrtoint ptr %peb_size79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %peb_size79, align 4
  %conv80 = sext i32 %35 to i64
  %mul = mul nsw i64 %conv80, %conv78
  %conv81 = sext i32 %offset to i64
  %add82 = add nsw i64 %mul, %conv81
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %36 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mtd, align 4
  %call83261 = call i32 @mtd_read(ptr noundef %37, i64 noundef %add82, i32 noundef %len, ptr noundef nonnull %read, ptr noundef %buf) #9
  %38 = zext i32 %call83261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call83261, label %if.end114 [
    i32 0, label %if.end76.do.body136_crit_edge
    i32 -117, label %if.end76.if.then90_crit_edge
  ]

if.end76.if.then90_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.end76.do.body136_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

if.then90:                                        ; preds = %if.end114.2.if.then90_crit_edge, %if.end114.1.if.then90_crit_edge, %if.end114.if.then90_crit_edge, %if.end76.if.then90_crit_edge
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.11, i32 noundef %pnum) #9
  %39 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %read, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %len)
  %cmp92.not = icmp eq i32 %40, %len
  br i1 %cmp92.not, label %if.then90.cleanup183_crit_edge, label %do.end105, !prof !256

if.then90.cleanup183_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup183

do.end105:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i235 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i235 to ptr
  %task108 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task108 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task108, align 8
  %pid109 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid109 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid109, align 8
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef %46) #12
  call void @dump_stack() #12
  br label %cleanup183

if.end114:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call83261)
  %cmp.i232.not = icmp eq i32 %call83261, -74
  %cond = select i1 %cmp.i232.not, ptr @.str.9, ptr @.str.10
  %47 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %read, align 4
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.14, i32 noundef %call83261, ptr noundef nonnull %cond, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset, i32 noundef %48) #9
  call void @yield() #9
  %49 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mtd, align 4
  %call83 = call i32 @mtd_read(ptr noundef %50, i64 noundef %add82, i32 noundef %len, ptr noundef nonnull %read, ptr noundef %buf) #9
  %51 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call83, label %if.end114.1 [
    i32 0, label %if.end114.do.body136_crit_edge
    i32 -117, label %if.end114.if.then90_crit_edge
  ]

if.end114.if.then90_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.end114.do.body136_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

if.end118:                                        ; preds = %if.end114.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call83.2)
  %cmp.i232.3 = icmp ne i32 %call83.2, -74
  %cond.3 = select i1 %cmp.i232.3, ptr @.str.10, ptr @.str.9
  %52 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %read, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.15, i32 noundef %call83.2, ptr noundef nonnull %cond.3, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset, i32 noundef %53) #9
  call void @dump_stack() #12
  %54 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %read, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %len)
  %cmp119.not = icmp eq i32 %55, %len
  %brmerge = select i1 %cmp119.not, i1 true, i1 %cmp.i232.3
  br i1 %brmerge, label %if.end118.cleanup183_crit_edge, label %do.end127

if.end118.cleanup183_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup183

do.end127:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %56 = call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i238 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i238 to ptr
  %task130 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task130 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task130, align 8
  %pid131 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid131, align 8
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 190, i32 noundef %61) #12
  call void @dump_stack() #12
  br label %cleanup183

if.end114.1:                                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call83)
  %cmp.i232.1.not = icmp eq i32 %call83, -74
  %cond.1 = select i1 %cmp.i232.1.not, ptr @.str.9, ptr @.str.10
  %62 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %read, align 4
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.14, i32 noundef %call83, ptr noundef nonnull %cond.1, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset, i32 noundef %63) #9
  call void @yield() #9
  %64 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mtd, align 4
  %call83.1 = call i32 @mtd_read(ptr noundef %65, i64 noundef %add82, i32 noundef %len, ptr noundef nonnull %read, ptr noundef %buf) #9
  %66 = zext i32 %call83.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call83.1, label %if.end114.2 [
    i32 0, label %if.end114.1.do.body136_crit_edge
    i32 -117, label %if.end114.1.if.then90_crit_edge
  ]

if.end114.1.if.then90_crit_edge:                  ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.end114.1.do.body136_crit_edge:                 ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

if.end114.2:                                      ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call83.1)
  %cmp.i232.2.not = icmp eq i32 %call83.1, -74
  %cond.2 = select i1 %cmp.i232.2.not, ptr @.str.9, ptr @.str.10
  %67 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %read, align 4
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.14, i32 noundef %call83.1, ptr noundef nonnull %cond.2, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset, i32 noundef %68) #9
  call void @yield() #9
  %69 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mtd, align 4
  %call83.2 = call i32 @mtd_read(ptr noundef %70, i64 noundef %add82, i32 noundef %len, ptr noundef nonnull %read, ptr noundef %buf) #9
  %71 = zext i32 %call83.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call83.2, label %if.end118 [
    i32 0, label %if.end114.2.do.body136_crit_edge
    i32 -117, label %if.end114.2.if.then90_crit_edge
  ]

if.end114.2.if.then90_crit_edge:                  ; preds = %if.end114.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.end114.2.do.body136_crit_edge:                 ; preds = %if.end114.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

do.body136:                                       ; preds = %if.end114.2.do.body136_crit_edge, %if.end114.1.do.body136_crit_edge, %if.end114.do.body136_crit_edge, %if.end76.do.body136_crit_edge
  %72 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %read, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %len)
  %cmp137.not = icmp eq i32 %73, %len
  br i1 %cmp137.not, label %do.body136.do.end158_crit_edge, label %do.end150, !prof !256

do.body136.do.end158_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158

do.end150:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  %74 = call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i239 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i239 to ptr
  %task153 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task153 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task153, align 8
  %pid154 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 68
  %78 = ptrtoint ptr %pid154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pid154, align 8
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 194, i32 noundef %79) #12
  call void @dump_stack() #12
  br label %do.end158

do.end158:                                        ; preds = %do.end150, %do.body136.do.end158_crit_edge
  %80 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i = load i8, ptr %dbg.i.i, align 4
  %81 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i240 = icmp eq i8 %81, 0
  br i1 %tobool.not.i240, label %do.end158.cleanup183_crit_edge, label %ubi_dbg_is_bitflip.exit

do.end158.cleanup183_crit_edge:                   ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup183

ubi_dbg_is_bitflip.exit:                          ; preds = %do.end158
  %call.i = call i32 @prandom_u32() #9
  %rem.i = urem i32 %call.i, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i.not = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i.not, label %do.body162, label %ubi_dbg_is_bitflip.exit.cleanup183_crit_edge

ubi_dbg_is_bitflip.exit.cleanup183_crit_edge:     ; preds = %ubi_dbg_is_bitflip.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup183

do.body162:                                       ; preds = %ubi_dbg_is_bitflip.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read, %if.then174)) #9
          to label %cleanup183 [label %if.then174], !srcloc !255

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #11
  %82 = call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i242 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i242 to ptr
  %task176 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task176 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task176, align 8
  %pid177 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 68
  %86 = ptrtoint ptr %pid177 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pid177, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.20, i32 noundef %87) #9
  br label %cleanup183

cleanup183:                                       ; preds = %if.then174, %do.body162, %ubi_dbg_is_bitflip.exit.cleanup183_crit_edge, %do.end158.cleanup183_crit_edge, %do.end127, %if.end118.cleanup183_crit_edge, %do.end105, %if.then90.cleanup183_crit_edge, %self_check_not_bad.exit
  %retval.2 = phi i32 [ %spec.select.i, %self_check_not_bad.exit ], [ 0, %ubi_dbg_is_bitflip.exit.cleanup183_crit_edge ], [ 5, %if.then174 ], [ 5, %do.body162 ], [ %call83.2, %if.end118.cleanup183_crit_edge ], [ -5, %do.end127 ], [ 5, %do.end105 ], [ 5, %if.then90.cleanup183_crit_edge ], [ 0, %do.end158.cleanup183_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read) #9
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %buf, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %read.i = alloca i32, align 4
  %written = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written) #9
  %0 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %written, align 4, !annotation !254
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_write.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_write, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_write.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.22, i32 noundef %6, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %do.body4.do.end17_crit_edge, !prof !256

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs:                                         ; preds = %do.body4
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %7 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %pnum)
  %cmp5 = icmp sgt i32 %8, %pnum
  br i1 %cmp5, label %land.rhs.do.body26_crit_edge, label %land.rhs.do.end17_crit_edge, !prof !256

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs.do.body26_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.body4.do.end17_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i244 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i244 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid21, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef 231, i32 noundef %14) #12
  tail call void @dump_stack() #12
  br label %do.body26

do.body26:                                        ; preds = %do.end17, %land.rhs.do.body26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp27 = icmp sgt i32 %offset, -1
  br i1 %cmp27, label %land.rhs28, label %do.body26.do.end42_crit_edge, !prof !256

do.body26.do.end42_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

land.rhs28:                                       ; preds = %do.body26
  %add = add i32 %len, %offset
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %15 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp29.not = icmp sgt i32 %add, %16
  br i1 %cmp29.not, label %land.rhs28.do.end42_crit_edge, label %land.rhs28.do.body51_crit_edge, !prof !257

land.rhs28.do.body51_crit_edge:                   ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

land.rhs28.do.end42_crit_edge:                    ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

do.end42:                                         ; preds = %land.rhs28.do.end42_crit_edge, %do.body26.do.end42_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i245 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i245 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task45, align 8
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid46, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef 232, i32 noundef %22) #12
  tail call void @dump_stack() #12
  br label %do.body51

do.body51:                                        ; preds = %do.end42, %land.rhs28.do.body51_crit_edge
  %hdrs_min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 68
  %23 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hdrs_min_io_size, align 8
  %rem = srem i32 %offset, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp52.not = icmp eq i32 %rem, 0
  br i1 %cmp52.not, label %do.body51.do.body73_crit_edge, label %do.end64, !prof !256

do.body51.do.body73_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

do.end64:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i246 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i246 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task67, align 8
  %pid68 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid68, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef 233, i32 noundef %30) #12
  tail call void @dump_stack() #12
  br label %do.body73

do.body73:                                        ; preds = %do.end64, %do.body51.do.body73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp74 = icmp sgt i32 %len, 0
  br i1 %cmp74, label %land.rhs75, label %do.body73.do.end91_crit_edge, !prof !256

do.body73.do.end91_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

land.rhs75:                                       ; preds = %do.body73
  %31 = ptrtoint ptr %hdrs_min_io_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hdrs_min_io_size, align 8
  %rem77 = srem i32 %len, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem77)
  %cmp78.not = icmp eq i32 %rem77, 0
  br i1 %cmp78.not, label %land.rhs75.do.end99_crit_edge, label %land.rhs75.do.end91_crit_edge, !prof !256

land.rhs75.do.end91_crit_edge:                    ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

land.rhs75.do.end99_crit_edge:                    ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end99

do.end91:                                         ; preds = %land.rhs75.do.end91_crit_edge, %do.body73.do.end91_crit_edge
  %33 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i247 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i247 to ptr
  %task94 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task94, align 8
  %pid95 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid95, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef 234, i32 noundef %38) #12
  tail call void @dump_stack() #12
  br label %do.end99

do.end99:                                         ; preds = %do.end91, %land.rhs75.do.end99_crit_edge
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %39 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool100.not = icmp eq i32 %40, 0
  br i1 %tobool100.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end102:                                        ; preds = %do.end99
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %41 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  %42 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.end102.if.end106_crit_edge, label %if.end.i

if.end102.if.end106_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.end.i:                                         ; preds = %if.end102
  %call1.i = tail call i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %pnum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end106_crit_edge, label %self_check_not_bad.exit

if.end.i.if.end106_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

self_check_not_bad.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  tail call void @dump_stack() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 0
  %spec.select.i = select i1 %cmp.i, i32 -22, i32 %call1.i
  br label %cleanup

if.end106:                                        ; preds = %if.end.i.if.end106_crit_edge, %if.end102.if.end106_crit_edge
  %call107 = tail call i32 @ubi_self_check_all_ff(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end110:                                        ; preds = %if.end106
  %leb_start = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %43 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %leb_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %offset)
  %cmp111.not = icmp sgt i32 %44, %offset
  br i1 %cmp111.not, label %if.end110.if.end121_crit_edge, label %if.then112

if.end110.if.end121_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then112:                                       ; preds = %if.end110
  %call113 = tail call fastcc i32 @self_check_peb_ec_hdr(ptr noundef %ubi, i32 noundef %pnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.then112.cleanup_crit_edge

if.then112.cleanup_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end116:                                        ; preds = %if.then112
  %call117 = tail call fastcc i32 @self_check_peb_vid_hdr(ptr noundef %ubi, i32 noundef %pnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end116.if.end121_crit_edge, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end116.if.end121_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.end121:                                        ; preds = %if.end116.if.end121_crit_edge, %if.end110.if.end121_crit_edge
  %45 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %dbg.i.i, align 4
  %46 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i249 = icmp eq i8 %46, 0
  br i1 %tobool.not.i249, label %if.end121.if.end125_crit_edge, label %ubi_dbg_is_write_failure.exit

if.end121.if.end125_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

ubi_dbg_is_write_failure.exit:                    ; preds = %if.end121
  %call.i = tail call i32 @prandom_u32() #9
  %rem.i = urem i32 %call.i, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i.not = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i.not, label %if.then124, label %ubi_dbg_is_write_failure.exit.if.end125_crit_edge

ubi_dbg_is_write_failure.exit.if.end125_crit_edge: ; preds = %ubi_dbg_is_write_failure.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then124:                                       ; preds = %ubi_dbg_is_write_failure.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.30, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset) #9
  tail call void @dump_stack() #12
  br label %cleanup

if.end125:                                        ; preds = %ubi_dbg_is_write_failure.exit.if.end125_crit_edge, %if.end121.if.end125_crit_edge
  %conv = sext i32 %pnum to i64
  %peb_size126 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %47 = ptrtoint ptr %peb_size126 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %peb_size126, align 4
  %conv127 = sext i32 %48 to i64
  %mul = mul nsw i64 %conv127, %conv
  %conv128 = sext i32 %offset to i64
  %add129 = add nsw i64 %mul, %conv128
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %49 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mtd, align 4
  %call130 = call i32 @mtd_write(ptr noundef %50, i64 noundef %add129, i32 noundef %len, ptr noundef nonnull %written, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  %51 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %written, align 4
  br i1 %tobool131.not, label %do.body133, label %if.then132

if.then132:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.31, i32 noundef %call130, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset, i32 noundef %52) #9
  call void @dump_stack() #12
  call void @ubi_dump_flash(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len) #9
  br label %cleanup

do.body133:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %len)
  %cmp134.not = icmp eq i32 %52, %len
  br i1 %cmp134.not, label %do.body133.if.then158_crit_edge, label %do.end147, !prof !256

do.body133.if.then158_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

do.end147:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  %53 = call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i251 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i251 to ptr
  %task150 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task150 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task150, align 8
  %pid151 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 68
  %57 = ptrtoint ptr %pid151 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pid151, align 8
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef 278, i32 noundef %58) #12
  call void @dump_stack() #12
  br label %if.then158

if.then158:                                       ; preds = %do.end147, %do.body133.if.then158_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i) #9
  %59 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %read.i, align 4, !annotation !254
  %60 = ptrtoint ptr %peb_size126 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %peb_size126, align 4
  %conv1.i = sext i32 %61 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv
  %add.i = add nsw i64 %mul.i, %conv128
  %62 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i.i253 = load i8, ptr %dbg.i.i, align 4
  %63 = and i8 %bf.load.i.i253, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i254 = icmp eq i8 %63, 0
  br i1 %tobool.not.i254, label %if.then158.self_check_write.exit.thread_crit_edge, label %if.end.i255

if.then158.self_check_write.exit.thread_crit_edge: ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  br label %self_check_write.exit.thread

if.end.i255:                                      ; preds = %if.then158
  %call3.i = call noalias ptr @__vmalloc(i32 noundef %len, i32 noundef 3136) #13
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.102) #9
  br label %self_check_write.exit.thread

if.end6.i:                                        ; preds = %if.end.i255
  %64 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mtd, align 4
  %call7.i = call i32 @mtd_read(ptr noundef %65, i64 noundef %add.i, i32 noundef %len, ptr noundef nonnull %read.i, ptr noundef nonnull %call3.i) #9
  %66 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call7.i, label %self_check_write.exit [
    i32 0, label %if.end6.i.if.end12.i_crit_edge
    i32 -117, label %if.end6.i.if.end12.i_crit_edge281
  ]

if.end6.i.if.end12.i_crit_edge281:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end6.i.if.end12.i_crit_edge, %if.end6.i.if.end12.i_crit_edge281
  br i1 %cmp74, label %if.end12.i.for.body.i_crit_edge, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %i.076.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end12.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.076.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %call3.i, i32 %i.076.i
  %69 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp17.i = icmp eq i8 %68, %70
  br i1 %cmp17.i, label %for.inc.i, label %self_check_write.exit.thread264

self_check_write.exit.thread264:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.le = getelementptr i8, ptr %buf, i32 %i.076.i
  %arrayidx14.i.le = getelementptr i8, ptr %call3.i, i32 %i.076.i
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.103, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len) #9
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.104, i32 noundef %i.076.i) #9
  %sub.i = sub i32 %len, %i.076.i
  %71 = call i32 @llvm.smax.i32(i32 %sub.i, i32 128) #9
  %add23.i = add nuw i32 %71, %i.076.i
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.105, i32 noundef %i.076.i, i32 noundef %add23.i) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %arrayidx.i.le, i32 noundef %71, i1 noundef zeroext true) #9
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.106, i32 noundef %i.076.i, i32 noundef %add23.i) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %arrayidx14.i.le, i32 noundef %71, i1 noundef zeroext true) #9
  call void @dump_stack() #12
  call void @vfree(ptr noundef nonnull %call3.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #9
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  call void @vfree(ptr noundef nonnull %call3.i) #9
  br label %self_check_write.exit.thread

self_check_write.exit.thread:                     ; preds = %for.end.i, %if.then5.i, %if.then158.self_check_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #9
  %add163 = add i32 %len, %offset
  %72 = ptrtoint ptr %peb_size126 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %peb_size126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add163)
  %tobool165.not = icmp eq i32 %73, %add163
  br i1 %tobool165.not, label %self_check_write.exit.thread.cleanup_crit_edge, label %if.then166

self_check_write.exit.thread.cleanup_crit_edge:   ; preds = %self_check_write.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

self_check_write.exit:                            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call3.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #9
  br label %cleanup

if.then166:                                       ; preds = %self_check_write.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %73, %add163
  %call167 = call i32 @ubi_self_check_all_ff(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %add163, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.then166, %self_check_write.exit, %self_check_write.exit.thread.cleanup_crit_edge, %self_check_write.exit.thread264, %if.then132, %if.then124, %if.end116.cleanup_crit_edge, %if.then112.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %self_check_not_bad.exit, %if.then101
  %retval.0 = phi i32 [ -30, %if.then101 ], [ -5, %if.then124 ], [ %spec.select.i, %self_check_not_bad.exit ], [ %call107, %if.end106.cleanup_crit_edge ], [ %call113, %if.then112.cleanup_crit_edge ], [ %call117, %if.end116.cleanup_crit_edge ], [ %call7.i, %self_check_write.exit ], [ %call167, %if.then166 ], [ 0, %self_check_write.exit.thread.cleanup_crit_edge ], [ %call130, %if.then132 ], [ -22, %self_check_write.exit.thread264 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_self_check_all_ff(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read) #9
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read, align 4, !annotation !254
  %conv = sext i32 %pnum to i64
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %1 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %peb_size, align 4
  %conv1 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv1, %conv
  %conv2 = sext i32 %offset to i64
  %add = add nsw i64 %mul, %conv2
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %3 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %4 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call noalias ptr @__vmalloc(i32 noundef %len, i32 noundef 3136) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.59) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %5 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mtd, align 4
  %call7 = call i32 @mtd_read(ptr noundef %6, i64 noundef %add, i32 noundef %len, ptr noundef nonnull %read, ptr noundef nonnull %call3) #9
  %7 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call7, label %if.then11 [
    i32 0, label %if.end6.if.end12_crit_edge
    i32 -117, label %if.end6.if.end12_crit_edge50
  ]

if.end6.if.end12_crit_edge50:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.60, i32 noundef %call7, i32 noundef %len, i32 noundef %pnum, i32 noundef %offset, i32 noundef %9) #9
  br label %error

if.end12:                                         ; preds = %if.end6.if.end12_crit_edge, %if.end6.if.end12_crit_edge50
  %call13 = call i32 @ubi_check_pattern(ptr noundef nonnull %call3, i8 noundef zeroext -1, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.61, i32 noundef %pnum, i32 noundef %offset, i32 noundef %len) #9
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  %add17 = add i32 %len, %offset
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.63, i32 noundef %offset, i32 noundef %add17) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %call3, i32 noundef %len, i1 noundef zeroext true) #9
  br label %error

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @vfree(ptr noundef nonnull %call3) #9
  br label %cleanup

error:                                            ; preds = %if.then15, %if.then11
  %err.0 = phi i32 [ -22, %if.then15 ], [ %call7, %if.then11 ]
  call void @dump_stack() #12
  call void @vfree(ptr noundef nonnull %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end16, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end16 ], [ 0, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @self_check_peb_ec_hdr(ptr noundef %ubi, i32 noundef %pnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %2 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ec_hdr_alsize, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3392) #13
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end4

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end8.i.i
  %call5 = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef nonnull %call9.i.i, i32 noundef %pnum, i32 noundef 0, i32 noundef 64)
  %4 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %call5, label %if.end4.exit_crit_edge [
    i32 0, label %if.end4.if.end11_crit_edge
    i32 5, label %if.end4.if.end11_crit_edge42
    i32 -74, label %if.end4.if.end11_crit_edge43
  ]

if.end4.if.end11_crit_edge43:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end4.if.end11_crit_edge42:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end4.exit_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end11:                                         ; preds = %if.end4.if.end11_crit_edge, %if.end4.if.end11_crit_edge42, %if.end4.if.end11_crit_edge43
  %call12 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call9.i.i, i32 noundef 60) #14
  %hdr_crc13 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %hdr_crc13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdr_crc13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call12)
  %cmp14.not = icmp eq i32 %6, %call12
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.99, i32 noundef %call12, i32 noundef %6) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  br label %exit.sink.split

if.end16:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %dbg.i, align 4
  %8 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end16.exit_crit_edge, label %if.end.i

if.end16.exit_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end.i:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1430407459, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 1430407459
  br i1 %cmp.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.98, i32 noundef %10, i32 noundef 1430407459) #9
  br label %exit.sink.split

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @validate_ec_hdr(ptr noundef %ubi, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.exit_crit_edge, label %if.then6.i

if.end3.i.exit_crit_edge:                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %if.then6.i, %if.then2.i, %if.then15
  tail call void @ubi_dump_ec_hdr(ptr noundef nonnull %call9.i.i) #9
  tail call void @dump_stack() #12
  br label %exit

exit:                                             ; preds = %exit.sink.split, %if.end3.i.exit_crit_edge, %if.end16.exit_crit_edge, %if.end4.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.end16.exit_crit_edge ], [ 0, %if.end3.i.exit_crit_edge ], [ %call5, %if.end4.exit_crit_edge ], [ -22, %exit.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @self_check_peb_vid_hdr(ptr noundef %ubi, i32 noundef %pnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %3 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3136) #13
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end4

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end.i
  %5 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vid_hdr_alsize.i, align 4
  %7 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %6)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %9 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %10
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %vid_hdr_aloffset = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 75
  %12 = ptrtoint ptr %vid_hdr_aloffset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vid_hdr_aloffset, align 4
  %14 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call6 = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef nonnull %call9.i.i, i32 noundef %pnum, i32 noundef %13, i32 noundef %14)
  %15 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call6, label %if.end4.ubi_free_vid_buf.exit_crit_edge [
    i32 0, label %if.end4.if.end12_crit_edge
    i32 5, label %if.end4.if.end12_crit_edge49
    i32 -74, label %if.end4.if.end12_crit_edge50
  ]

if.end4.if.end12_crit_edge50:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.if.end12_crit_edge49:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.ubi_free_vid_buf.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubi_free_vid_buf.exit

if.end12:                                         ; preds = %if.end4.if.end12_crit_edge, %if.end4.if.end12_crit_edge49, %if.end4.if.end12_crit_edge50
  %call13 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr.i.i, i32 noundef 60) #14
  %hdr_crc14 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %hdr_crc14 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %hdr_crc14, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call13)
  %cmp15.not = icmp eq i32 %17, %call13
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.101, i32 noundef %pnum, i32 noundef %call13, i32 noundef %17) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %add.ptr.i.i) #9
  tail call void @dump_stack() #12
  br label %ubi_free_vid_buf.exit

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call fastcc i32 @self_check_vid_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef %add.ptr.i.i)
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.end17, %if.then16, %if.end4.ubi_free_vid_buf.exit_crit_edge
  %err.0 = phi i32 [ -22, %if.then16 ], [ %call18, %if.end17 ], [ %call6, %if.end4.ubi_free_vid_buf.exit_crit_edge ]
  %18 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %19) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ubi_free_vid_buf.exit, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.0, %ubi_free_vid_buf.exit ], [ -12, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_flash(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_sync_erase(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %torture) local_unnamed_addr #0 align 64 {
entry:
  %written.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  %ec_hdr.i = alloca %struct.ubi_ec_hdr, align 1
  %vidb.i = alloca %struct.ubi_vid_io_buf, align 4
  %vid_hdr.i = alloca %struct.ubi_vid_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %entry.do.end_crit_edge, !prof !256

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %entry
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %0 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pnum)
  %cmp1.not = icmp sgt i32 %1, %pnum
  br i1 %cmp1.not, label %land.rhs.do.end7_crit_edge, label %land.rhs.do.end_crit_edge, !prof !256

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs.do.end7_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, i32 noundef 527, i32 noundef %7) #12
  tail call void @dump_stack() #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %land.rhs.do.end7_crit_edge
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %8 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  %9 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end7.if.end11_crit_edge, label %if.end.i

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i:                                         ; preds = %do.end7
  %call1.i = tail call i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %pnum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11_crit_edge, label %self_check_not_bad.exit

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

self_check_not_bad.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  tail call void @dump_stack() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 0
  %spec.select.i = select i1 %cmp.i, i32 -22, i32 %call1.i
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.if.end11_crit_edge, %do.end7.if.end11_crit_edge
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %10 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %nor_flash = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %12 = ptrtoint ptr %nor_flash to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %nor_flash, align 4
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.end14.if.end22_crit_edge, label %land.lhs.true

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end14
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %14 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mtd, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp16 = icmp eq i32 %17, 1
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i) #9
  %18 = ptrtoint ptr %written.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %written.i, align 4, !annotation !254
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #9
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ec_hdr.i) #9
  %20 = call ptr @memset(ptr %ec_hdr.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vidb.i) #9
  %21 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %vidb.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vid_hdr.i) #9
  %22 = call ptr @memset(ptr %vid_hdr.i, i32 255, i32 64)
  %conv.i = sext i32 %pnum to i64
  %peb_size.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %23 = ptrtoint ptr %peb_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %peb_size.i, align 4
  %conv1.i = sext i32 %24 to i64
  %mul.i = mul nsw i64 %conv1.i, %conv.i
  %call.i = call i32 @ubi_io_read_ec_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef nonnull %ec_hdr.i, i32 noundef 0) #9
  %25 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call.i, label %if.then.i [
    i32 4, label %if.then17.if.end10.i_crit_edge
    i32 3, label %if.then17.if.end10.i_crit_edge74
    i32 1, label %if.then17.if.end10.i_crit_edge75
  ]

if.then17.if.end10.i_crit_edge75:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then17.if.end10.i_crit_edge74:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then17.if.end10.i_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i:                                        ; preds = %if.then17
  %26 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mtd, align 4
  %call8.i = call i32 @mtd_write(ptr noundef %27, i64 noundef %mul.i, i32 noundef 4, ptr noundef nonnull %written.i, ptr noundef nonnull %data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i55 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i55, label %if.then.i.if.end10.i_crit_edge, label %if.then.i.nor_erase_prepare.exit_crit_edge

if.then.i.nor_erase_prepare.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nor_erase_prepare.exit

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %if.then17.if.end10.i_crit_edge, %if.then17.if.end10.i_crit_edge74, %if.then17.if.end10.i_crit_edge75
  %vid_hdr_alsize.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %28 = ptrtoint ptr %vid_hdr_alsize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vid_hdr_alsize.i.i, align 4
  %30 = call ptr @memset(ptr %vid_hdr.i, i32 0, i32 %29)
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %vid_hdr.i, ptr %21, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %32 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %vid_hdr.i, i32 %33
  %34 = ptrtoint ptr %vidb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i.i, ptr %vidb.i, align 4
  %cmp12.not.i = icmp eq ptr %vid_hdr.i, %add.ptr.i.i
  br i1 %cmp12.not.i, label %if.end10.i.do.end23.i_crit_edge, label %do.end.i, !prof !256

if.end10.i.do.end23.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid.i, align 8
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i32 noundef 484, i32 noundef %40) #12
  call void @dump_stack() #12
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end.i, %if.end10.i.do.end23.i_crit_edge
  %call24.i = call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef nonnull %vidb.i, i32 noundef 0) #9
  %41 = zext i32 %call24.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call24.i, label %if.then33.i [
    i32 4, label %do.end23.i.nor_erase_prepare.exit.thread_crit_edge
    i32 3, label %do.end23.i.nor_erase_prepare.exit.thread_crit_edge76
    i32 1, label %do.end23.i.nor_erase_prepare.exit.thread_crit_edge77
  ]

do.end23.i.nor_erase_prepare.exit.thread_crit_edge77: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nor_erase_prepare.exit.thread

do.end23.i.nor_erase_prepare.exit.thread_crit_edge76: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nor_erase_prepare.exit.thread

do.end23.i.nor_erase_prepare.exit.thread_crit_edge: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nor_erase_prepare.exit.thread

if.then33.i:                                      ; preds = %do.end23.i
  %vid_hdr_aloffset.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 75
  %42 = ptrtoint ptr %vid_hdr_aloffset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vid_hdr_aloffset.i, align 4
  %conv34.i = sext i32 %43 to i64
  %add.i = add nsw i64 %mul.i, %conv34.i
  %44 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mtd, align 4
  %call36.i = call i32 @mtd_write(ptr noundef %45, i64 noundef %add.i, i32 noundef 4, ptr noundef nonnull %written.i, ptr noundef nonnull %data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then33.i.nor_erase_prepare.exit.thread_crit_edge, label %if.then33.i.nor_erase_prepare.exit_crit_edge

if.then33.i.nor_erase_prepare.exit_crit_edge:     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nor_erase_prepare.exit

if.then33.i.nor_erase_prepare.exit.thread_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nor_erase_prepare.exit.thread

nor_erase_prepare.exit.thread:                    ; preds = %if.then33.i.nor_erase_prepare.exit.thread_crit_edge, %do.end23.i.nor_erase_prepare.exit.thread_crit_edge, %do.end23.i.nor_erase_prepare.exit.thread_crit_edge76, %do.end23.i.nor_erase_prepare.exit.thread_crit_edge77
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vid_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vidb.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ec_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #9
  br label %if.end22

nor_erase_prepare.exit:                           ; preds = %if.then33.i.nor_erase_prepare.exit_crit_edge, %if.then.i.nor_erase_prepare.exit_crit_edge
  %err.0.i = phi i32 [ %call8.i, %if.then.i.nor_erase_prepare.exit_crit_edge ], [ %call36.i, %if.then33.i.nor_erase_prepare.exit_crit_edge ]
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.66, i32 noundef %pnum, i32 noundef %err.0.i) #9
  %46 = ptrtoint ptr %peb_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %peb_size.i, align 4
  call void @ubi_dump_flash(ptr noundef %ubi, i32 noundef %pnum, i32 noundef 0, i32 noundef %47) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vid_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vidb.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ec_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #9
  br label %cleanup

if.end22:                                         ; preds = %nor_erase_prepare.exit.thread, %land.lhs.true.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %torture)
  %tobool23.not = icmp eq i32 %torture, 0
  br i1 %tobool23.not, label %if.end22.if.end29_crit_edge, label %if.then24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then24:                                        ; preds = %if.end22
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.67, i32 noundef %pnum) #9
  %buf_mutex.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 81
  call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #9
  %peb_buf.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 80
  %peb_size.i57 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end39.i
  %inc.i = add nuw nsw i32 %i.0111.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then24
  %i.0111.i = phi i32 [ 0, %if.then24 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %call8.i58 = call fastcc i32 @do_sync_erase(ptr noundef %ubi, i32 noundef %pnum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i58)
  %tobool9.not.i = icmp eq i32 %call8.i58, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end11.i:                                       ; preds = %for.body.i
  %48 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %peb_buf.i, align 8
  %50 = ptrtoint ptr %peb_size.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %peb_size.i57, align 4
  %call12.i = call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %49, i32 noundef %pnum, i32 noundef 0, i32 noundef %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.out.i_crit_edge

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end15.i:                                       ; preds = %if.end11.i
  %52 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peb_buf.i, align 8
  %54 = ptrtoint ptr %peb_size.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %peb_size.i57, align 4
  %call18.i = call i32 @ubi_check_pattern(ptr noundef %53, i8 noundef zeroext -1, i32 noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.69, i32 noundef %pnum) #9
  br label %lor.lhs.false.thread.i

if.end21.i:                                       ; preds = %if.end15.i
  %56 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %peb_buf.i, align 8
  %arrayidx.i = getelementptr [3 x i8], ptr @patterns, i32 0, i32 %i.0111.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i, align 1
  %60 = ptrtoint ptr %peb_size.i57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %peb_size.i57, align 4
  %62 = zext i8 %59 to i32
  %63 = call ptr @memset(ptr %57, i32 %62, i32 %61)
  %64 = load ptr, ptr %peb_buf.i, align 8
  %65 = load i32, ptr %peb_size.i57, align 4
  %call26.i = call i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %64, i32 noundef %pnum, i32 noundef 0, i32 noundef %65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end21.i.out.i_crit_edge

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end29.i:                                       ; preds = %if.end21.i
  %66 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %peb_buf.i, align 8
  %neg.i = xor i8 %59, -1
  %68 = ptrtoint ptr %peb_size.i57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %peb_size.i57, align 4
  %70 = zext i8 %neg.i to i32
  %71 = call ptr @memset(ptr %67, i32 %70, i32 %69)
  %72 = load ptr, ptr %peb_buf.i, align 8
  %73 = load i32, ptr %peb_size.i57, align 4
  %call36.i59 = call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %72, i32 noundef %pnum, i32 noundef 0, i32 noundef %73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i59)
  %tobool37.not.i60 = icmp eq i32 %call36.i59, 0
  br i1 %tobool37.not.i60, label %if.end39.i, label %if.end29.i.out.i_crit_edge

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end39.i:                                       ; preds = %if.end29.i
  %74 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %peb_buf.i, align 8
  %76 = ptrtoint ptr %peb_size.i57 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %peb_size.i57, align 4
  %call43.i = call i32 @ubi_check_pattern(ptr noundef %75, i8 noundef zeroext %59, i32 noundef %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp eq i32 %call43.i, 0
  br i1 %cmp44.i, label %if.then46.i, label %for.cond.i

if.then46.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv48.i = zext i8 %59 to i32
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.70, i32 noundef %conv48.i, i32 noundef %pnum) #9
  br label %lor.lhs.false.thread.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.71, i32 noundef %pnum) #9
  br label %lor.lhs.false.thread.i

lor.lhs.false.thread.i:                           ; preds = %for.end.i, %if.then46.i, %if.then20.i
  %err.0.ph.i = phi i32 [ 3, %for.end.i ], [ -5, %if.then46.i ], [ -5, %if.then20.i ]
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #9
  br label %torture_peb.exit

out.i:                                            ; preds = %if.end29.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge, %if.end11.i.out.i_crit_edge, %for.body.i.out.i_crit_edge
  %err.0.i61 = phi i32 [ %call8.i58, %for.body.i.out.i_crit_edge ], [ %call12.i, %if.end11.i.out.i_crit_edge ], [ %call26.i, %if.end21.i.out.i_crit_edge ], [ %call36.i59, %if.end29.i.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #9
  %78 = zext i32 %err.0.i61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %err.0.i61, label %out.i.torture_peb.exit_crit_edge [
    i32 5, label %out.i.torture_peb.exit.thread_crit_edge
    i32 -74, label %out.i.torture_peb.exit.thread_crit_edge78
  ]

out.i.torture_peb.exit.thread_crit_edge78:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %torture_peb.exit.thread

out.i.torture_peb.exit.thread_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %torture_peb.exit.thread

out.i.torture_peb.exit_crit_edge:                 ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %torture_peb.exit

torture_peb.exit.thread:                          ; preds = %out.i.torture_peb.exit.thread_crit_edge, %out.i.torture_peb.exit.thread_crit_edge78
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.72, i32 noundef %pnum) #9
  br label %cleanup

torture_peb.exit:                                 ; preds = %out.i.torture_peb.exit_crit_edge, %lor.lhs.false.thread.i
  %err.1.i = phi i32 [ %err.0.ph.i, %lor.lhs.false.thread.i ], [ %err.0.i61, %out.i.torture_peb.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp26 = icmp slt i32 %err.1.i, 0
  br i1 %cmp26, label %torture_peb.exit.cleanup_crit_edge, label %torture_peb.exit.if.end29_crit_edge

torture_peb.exit.if.end29_crit_edge:              ; preds = %torture_peb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

torture_peb.exit.cleanup_crit_edge:               ; preds = %torture_peb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %torture_peb.exit.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %ret.0 = phi i32 [ %err.1.i, %torture_peb.exit.if.end29_crit_edge ], [ 0, %if.end22.if.end29_crit_edge ]
  %call30 = call fastcc i32 @do_sync_erase(ptr noundef %ubi, i32 noundef %pnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw i32 %ret.0, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %torture_peb.exit.cleanup_crit_edge, %torture_peb.exit.thread, %nor_erase_prepare.exit, %if.then13, %self_check_not_bad.exit
  %retval.0 = phi i32 [ -30, %if.then13 ], [ %add, %if.end33 ], [ %spec.select.i, %self_check_not_bad.exit ], [ -5, %nor_erase_prepare.exit ], [ %err.1.i, %torture_peb.exit.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ -5, %torture_peb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_sync_erase(ptr noundef %ubi, i32 noundef %pnum) unnamed_addr #0 align 64 {
entry:
  %ei = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ei) #9
  %0 = getelementptr inbounds %struct.erase_info, ptr %ei, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_sync_erase.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_sync_erase, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_sync_erase.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.74, i32 noundef %6, i32 noundef %pnum) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %do.body4.do.end17_crit_edge, !prof !256

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs:                                         ; preds = %do.body4
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %7 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %pnum)
  %cmp5.not = icmp sgt i32 %8, %pnum
  br i1 %cmp5.not, label %land.rhs.do.end25_crit_edge, label %land.rhs.do.end17_crit_edge, !prof !256

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs.do.end25_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.body4.do.end17_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i74 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i74 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid21, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.73, i32 noundef 313, i32 noundef %14) #12
  tail call void @dump_stack() #12
  br label %do.end25

do.end25:                                         ; preds = %do.end17, %land.rhs.do.end25_crit_edge
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %15 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool26.not = icmp eq i32 %16, 0
  br i1 %tobool26.not, label %retry.preheader, label %if.then27

retry.preheader:                                  ; preds = %do.end25
  %conv = sext i32 %pnum to i64
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %17 = getelementptr inbounds i8, ptr %ei, i32 16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %17, align 8
  %19 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %peb_size, align 4
  %conv2981 = sext i32 %20 to i64
  %mul82 = mul nsw i64 %conv2981, %conv
  %21 = ptrtoint ptr %ei to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %mul82, ptr %ei, align 8
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv2981, ptr %0, align 8
  %23 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mtd, align 4
  %call3283 = call i32 @mtd_erase(ptr noundef %24, ptr noundef nonnull %ei) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3283)
  %tobool33.not84 = icmp eq i32 %call3283, 0
  br i1 %tobool33.not84, label %retry.preheader.if.end39_crit_edge, label %if.then34.preheader

retry.preheader.if.end39_crit_edge:               ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then34.preheader:                              ; preds = %retry.preheader
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.75, i32 noundef %call3283, i32 noundef %pnum) #9
  call void @yield() #9
  %25 = getelementptr inbounds i8, ptr %ei, i32 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %25, align 8
  %27 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %peb_size, align 4
  %conv29 = sext i32 %28 to i64
  %mul = mul nsw i64 %conv29, %conv
  %29 = ptrtoint ptr %ei to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %mul, ptr %ei, align 8
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv29, ptr %0, align 8
  %31 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mtd, align 4
  %call32 = call i32 @mtd_erase(ptr noundef %32, ptr noundef nonnull %ei) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34.preheader.if.end39_crit_edge, label %if.then34.1

if.then34.preheader.if.end39_crit_edge:           ; preds = %if.then34.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.then34.1:                                      ; preds = %if.then34.preheader
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.75, i32 noundef %call32, i32 noundef %pnum) #9
  call void @yield() #9
  %33 = getelementptr inbounds i8, ptr %ei, i32 16
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %33, align 8
  %35 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %peb_size, align 4
  %conv29.1 = sext i32 %36 to i64
  %mul.1 = mul nsw i64 %conv29.1, %conv
  %37 = ptrtoint ptr %ei to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %mul.1, ptr %ei, align 8
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv29.1, ptr %0, align 8
  %39 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mtd, align 4
  %call32.1 = call i32 @mtd_erase(ptr noundef %40, ptr noundef nonnull %ei) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.1)
  %tobool33.not.1 = icmp eq i32 %call32.1, 0
  br i1 %tobool33.not.1, label %if.then34.1.if.end39_crit_edge, label %if.then34.2

if.then34.1.if.end39_crit_edge:                   ; preds = %if.then34.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then34.2:                                      ; preds = %if.then34.1
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.75, i32 noundef %call32.1, i32 noundef %pnum) #9
  call void @yield() #9
  %41 = getelementptr inbounds i8, ptr %ei, i32 16
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %41, align 8
  %43 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %peb_size, align 4
  %conv29.2 = sext i32 %44 to i64
  %mul.2 = mul nsw i64 %conv29.2, %conv
  %45 = ptrtoint ptr %ei to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %mul.2, ptr %ei, align 8
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv29.2, ptr %0, align 8
  %47 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mtd, align 4
  %call32.2 = call i32 @mtd_erase(ptr noundef %48, ptr noundef nonnull %ei) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.2)
  %tobool33.not.2 = icmp eq i32 %call32.2, 0
  br i1 %tobool33.not.2, label %if.then34.2.if.end39_crit_edge, label %if.end38

if.then34.2.if.end39_crit_edge:                   ; preds = %if.then34.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end38:                                         ; preds = %if.then34.2
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.76, i32 noundef %pnum, i32 noundef %call32.2) #9
  call void @dump_stack() #12
  br label %cleanup

if.end39:                                         ; preds = %if.then34.2.if.end39_crit_edge, %if.then34.1.if.end39_crit_edge, %if.then34.preheader.if.end39_crit_edge, %retry.preheader.if.end39_crit_edge
  %49 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %peb_size, align 4
  %call41 = call i32 @ubi_self_check_all_ff(ptr noundef %ubi, i32 noundef %pnum, i32 noundef 0, i32 noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %51 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %52 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.end44.cleanup_crit_edge, label %ubi_dbg_is_erase_failure.exit

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ubi_dbg_is_erase_failure.exit:                    ; preds = %if.end44
  %call.i = call i32 @prandom_u32() #9
  %rem.i = urem i32 %call.i, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i.not = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i.not, label %if.then47, label %ubi_dbg_is_erase_failure.exit.cleanup_crit_edge

ubi_dbg_is_erase_failure.exit.cleanup_crit_edge:  ; preds = %ubi_dbg_is_erase_failure.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %ubi_dbg_is_erase_failure.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.77, i32 noundef %pnum) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %ubi_dbg_is_erase_failure.exit.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end38, %if.then27
  %retval.0 = phi i32 [ -30, %if.then27 ], [ %call32.2, %if.end38 ], [ -5, %if.then47 ], [ %call41, %if.end39.cleanup_crit_edge ], [ 0, %ubi_dbg_is_erase_failure.exit.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ei) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %pnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %entry.do.end_crit_edge, !prof !256

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %entry
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %2 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pnum)
  %cmp2.not = icmp sgt i32 %3, %pnum
  br i1 %cmp2.not, label %land.rhs.do.end8_crit_edge, label %land.rhs.do.end_crit_edge, !prof !256

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs.do.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.35, i32 noundef 576, i32 noundef %9) #12
  tail call void @dump_stack() #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %land.rhs.do.end8_crit_edge
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %10 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool9.not, label %do.end8.cleanup_crit_edge, label %if.then10

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %do.end8
  %conv = sext i32 %pnum to i64
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %11 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %peb_size, align 4
  %conv11 = sext i32 %12 to i64
  %mul = mul nsw i64 %conv11, %conv
  %call12 = tail call i32 @mtd_block_isbad(ptr noundef %1, i64 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.36, i32 noundef %call12, i32 noundef %pnum) #9
  br label %cleanup

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool16.not = icmp eq i32 %call12, 0
  br i1 %tobool16.not, label %if.else.cleanup_crit_edge, label %do.body18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_is_bad.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_is_bad, %if.then28)) #9
          to label %cleanup [label %if.then28], !srcloc !255

if.then28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i49 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i49 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task30, align 8
  %pid31 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid31, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_is_bad.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.37, i32 noundef %18, i32 noundef %pnum) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body18, %if.else.cleanup_crit_edge, %if.then15, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %call12, %if.then28 ], [ %call12, %if.then15 ], [ 0, %do.end8.cleanup_crit_edge ], [ %call12, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_mark_bad(ptr noundef %ubi, i32 noundef %pnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %entry.do.end_crit_edge, !prof !256

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %entry
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %2 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pnum)
  %cmp2.not = icmp sgt i32 %3, %pnum
  br i1 %cmp2.not, label %land.rhs.do.end8_crit_edge, label %land.rhs.do.end_crit_edge, !prof !256

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs.do.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, i32 noundef 606, i32 noundef %9) #12
  tail call void @dump_stack() #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %land.rhs.do.end8_crit_edge
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %10 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %12 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool12.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %conv = sext i32 %pnum to i64
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %13 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %peb_size, align 4
  %conv15 = sext i32 %14 to i64
  %mul = mul nsw i64 %conv15, %conv
  %call16 = tail call i32 @mtd_block_markbad(ptr noundef %1, i64 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.then18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.39, i32 noundef %pnum, i32 noundef %call16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ -30, %if.then10 ], [ 0, %if.end11.cleanup_crit_edge ], [ %call16, %if.then18 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_read_ec_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef %ec_hdr, i32 noundef %verbose) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_ec_hdr, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.41, i32 noundef %5, i32 noundef %pnum) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %do.body4.do.end17_crit_edge, !prof !256

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs:                                         ; preds = %do.body4
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %6 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pnum)
  %cmp5 = icmp sgt i32 %7, %pnum
  br i1 %cmp5, label %land.rhs.do.end25_crit_edge, label %land.rhs.do.end17_crit_edge, !prof !256

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs.do.end25_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.body4.do.end17_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i181 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i181 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid21, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.40, i32 noundef 701, i32 noundef %13) #12
  tail call void @dump_stack() #12
  br label %do.end25

do.end25:                                         ; preds = %do.end17, %land.rhs.do.end25_crit_edge
  %call26 = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %ec_hdr, i32 noundef %pnum, i32 noundef 0, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %14 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %call26, label %do.end25.cleanup_crit_edge [
    i32 5, label %do.end25.if.end34_crit_edge
    i32 0, label %do.end25.if.end34_crit_edge191
    i32 -74, label %do.end25.if.end34_crit_edge192
  ]

do.end25.if.end34_crit_edge192:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end25.if.end34_crit_edge191:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end25.if.end34_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %do.end25.if.end34_crit_edge, %do.end25.if.end34_crit_edge191, %do.end25.if.end34_crit_edge192
  %15 = ptrtoint ptr %ec_hdr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %ec_hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1430407459, i32 %16)
  %cmp36.not = icmp eq i32 %16, 1430407459
  br i1 %cmp36.not, label %if.end92, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call26)
  %cmp.i182.not = icmp eq i32 %call26, -74
  br i1 %cmp.i182.not, label %if.then37.cleanup_crit_edge, label %if.end41

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %call42 = tail call i32 @ubi_check_pattern(ptr noundef %ec_hdr, i8 noundef zeroext -1, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool70.not = icmp eq i32 %verbose, 0
  br i1 %tobool43.not, label %if.end69, label %if.then44

if.then44:                                        ; preds = %if.end41
  br i1 %tobool70.not, label %if.then44.do.body48_crit_edge, label %if.then46

if.then44.do.body48_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.42, i32 noundef %pnum) #9
  br label %do.body48

do.body48:                                        ; preds = %if.then46, %if.then44.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_ec_hdr, %if.then60)) #9
          to label %do.end66 [label %if.then60], !srcloc !255

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i184 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i184 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task62, align 8
  %pid63 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid63, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.43, i32 noundef %22, i32 noundef %pnum) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %do.body48
  %. = select i1 %tobool27.not, i32 1, i32 2
  br label %cleanup

if.end69:                                         ; preds = %if.end41
  br i1 %tobool70.not, label %if.end69.do.body73_crit_edge, label %if.then71

if.end69.do.body73_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.44, i32 noundef %pnum, i32 noundef %16, i32 noundef 1430407459) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %ec_hdr) #9
  br label %do.body73

do.body73:                                        ; preds = %if.then71, %if.end69.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_ec_hdr, %if.then85)) #9
          to label %cleanup [label %if.then85], !srcloc !255

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %23 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i185 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i185 to ptr
  %task87 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task87, align 8
  %pid88 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid88, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.45, i32 noundef %28, i32 noundef %pnum, i32 noundef %16, i32 noundef 1430407459) #9
  br label %cleanup

if.end92:                                         ; preds = %if.end34
  %call93 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %ec_hdr, i32 noundef 60) #14
  %hdr_crc94 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 8
  %29 = ptrtoint ptr %hdr_crc94 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %hdr_crc94, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %call93)
  %cmp95.not = icmp eq i32 %30, %call93
  br i1 %cmp95.not, label %if.end122, label %if.then96

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool97.not = icmp eq i32 %verbose, 0
  br i1 %tobool97.not, label %if.then96.do.body100_crit_edge, label %if.then98

if.then96.do.body100_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body100

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.46, i32 noundef %pnum, i32 noundef %call93, i32 noundef %30) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %ec_hdr) #9
  br label %do.body100

do.body100:                                       ; preds = %if.then98, %if.then96.do.body100_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_ec_hdr, %if.then112)) #9
          to label %do.end118 [label %if.then112], !srcloc !255

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i186 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i186 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task114, align 8
  %pid115 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid115, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.47, i32 noundef %36, i32 noundef %pnum, i32 noundef %call93, i32 noundef %30) #9
  br label %do.end118

do.end118:                                        ; preds = %if.then112, %do.body100
  %.171 = select i1 %tobool27.not, i32 3, i32 4
  br label %cleanup

if.end122:                                        ; preds = %if.end92
  %call123 = tail call fastcc i32 @validate_ec_hdr(ptr noundef %ubi, ptr noundef %ec_hdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.then125

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.48, i32 noundef %pnum) #9
  br label %cleanup

if.end126:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %tobool27.not, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.then125, %do.end118, %if.then85, %do.body73, %do.end66, %if.then37.cleanup_crit_edge, %do.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then125 ], [ %cond, %if.end126 ], [ 4, %if.then37.cleanup_crit_edge ], [ %., %do.end66 ], [ 3, %if.then85 ], [ %.171, %do.end118 ], [ 3, %do.body73 ], [ %call26, %do.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_check_pattern(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_ec_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_ec_hdr(ptr noundef %ubi, ptr noundef %ec_hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ec1 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 3
  %0 = ptrtoint ptr %ec1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %ec1, align 1
  %vid_hdr_offset2 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 4
  %2 = ptrtoint ptr %vid_hdr_offset2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %vid_hdr_offset2, align 1
  %data_offset = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 5
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %data_offset, align 1
  %version = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef %conv) #9
  br label %bad

if.end:                                           ; preds = %entry
  %vid_hdr_offset6 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 74
  %8 = ptrtoint ptr %vid_hdr_offset6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vid_hdr_offset6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp7.not = icmp eq i32 %3, %9
  br i1 %cmp7.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.79, i32 noundef %3, i32 noundef %9) #9
  br label %bad

if.end11:                                         ; preds = %if.end
  %leb_start12 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %10 = ptrtoint ptr %leb_start12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_start12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp13.not = icmp eq i32 %5, %11
  br i1 %cmp13.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.80, i32 noundef %5, i32 noundef %11) #9
  br label %bad

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %1)
  %12 = icmp ugt i64 %1, 2147483647
  br i1 %12, label %if.then22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.81, i64 noundef %1) #9
  br label %bad

bad:                                              ; preds = %if.then22, %if.then15, %if.then9, %if.then
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.82) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %ec_hdr) #9
  tail call void @dump_stack() #12
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %bad ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_write_ec_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef %ec_hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_write_ec_hdr.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_write_ec_hdr, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_write_ec_hdr.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.50, i32 noundef %5, i32 noundef %pnum) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %do.body4.do.end17_crit_edge, !prof !256

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs:                                         ; preds = %do.body4
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %6 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pnum)
  %cmp5.not = icmp sgt i32 %7, %pnum
  br i1 %cmp5.not, label %land.rhs.do.end25_crit_edge, label %land.rhs.do.end17_crit_edge, !prof !256

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.rhs.do.end25_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.body4.do.end17_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i60 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i60 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid21, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef 810, i32 noundef %13) #12
  tail call void @dump_stack() #12
  br label %do.end25

do.end25:                                         ; preds = %do.end17, %land.rhs.do.end25_crit_edge
  %14 = ptrtoint ptr %ec_hdr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1430407459, ptr %ec_hdr, align 1
  %version = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 1
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %version, align 1
  %vid_hdr_offset = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 74
  %16 = ptrtoint ptr %vid_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vid_hdr_offset, align 8
  %vid_hdr_offset26 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 4
  %18 = ptrtoint ptr %vid_hdr_offset26 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %vid_hdr_offset26, align 1
  %leb_start = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %19 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %leb_start, align 4
  %data_offset = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 5
  %21 = ptrtoint ptr %data_offset to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %data_offset, align 1
  %image_seq = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 8
  %22 = ptrtoint ptr %image_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %image_seq, align 8
  %image_seq27 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 6
  %24 = ptrtoint ptr %image_seq27 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %image_seq27, align 1
  %call28 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %ec_hdr, i32 noundef 60) #14
  %hdr_crc = getelementptr inbounds %struct.ubi_ec_hdr, ptr %ec_hdr, i32 0, i32 8
  %25 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %call28, ptr %hdr_crc, align 1
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %26 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  %27 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %do.end25.if.end32_crit_edge, label %if.end3.i

do.end25.if.end32_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end3.i:                                        ; preds = %do.end25
  %call4.i = tail call fastcc i32 @validate_ec_hdr(ptr noundef %ubi, ptr noundef %ec_hdr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end32_crit_edge, label %self_check_ec_hdr.exit

if.end3.i.if.end32_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

self_check_ec_hdr.exit:                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %ec_hdr) #9
  tail call void @dump_stack() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end3.i.if.end32_crit_edge, %do.end25.if.end32_crit_edge
  %call33 = tail call i32 @ubi_dbg_power_cut(ptr noundef %ubi, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %28 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ec_hdr_alsize, align 8
  %call37 = tail call i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %ec_hdr, i32 noundef %pnum, i32 noundef 0, i32 noundef %29)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end32.cleanup_crit_edge, %self_check_ec_hdr.exit
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ -22, %self_check_ec_hdr.exit ], [ -30, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_dbg_power_cut(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr nocapture noundef readonly %vidb, i32 noundef %verbose) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vidb, align 4
  %buffer = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %vidb, i32 0, i32 1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_vid_hdr, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.52, i32 noundef %9, i32 noundef %pnum) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %do.body5.do.end18_crit_edge, !prof !256

do.body5.do.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.rhs:                                         ; preds = %do.body5
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %10 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pnum)
  %cmp6 = icmp sgt i32 %11, %pnum
  br i1 %cmp6, label %land.rhs.do.end26_crit_edge, label %land.rhs.do.end18_crit_edge, !prof !256

land.rhs.do.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.rhs.do.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end18:                                         ; preds = %land.rhs.do.end18_crit_edge, %do.body5.do.end18_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i185 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i185 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task21, align 8
  %pid22 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid22, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.51, i32 noundef 975, i32 noundef %17) #12
  tail call void @dump_stack() #12
  br label %do.end26

do.end26:                                         ; preds = %do.end18, %land.rhs.do.end26_crit_edge
  %vid_hdr_aloffset = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 75
  %18 = ptrtoint ptr %vid_hdr_aloffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vid_hdr_aloffset, align 4
  %vid_hdr_shift = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %20 = ptrtoint ptr %vid_hdr_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vid_hdr_shift, align 8
  %add = add i32 %21, 64
  %call27 = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %3, i32 noundef %pnum, i32 noundef %19, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %22 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %call27, label %do.end26.cleanup_crit_edge [
    i32 5, label %do.end26.if.end34_crit_edge
    i32 0, label %do.end26.if.end34_crit_edge195
    i32 -74, label %do.end26.if.end34_crit_edge196
  ]

do.end26.if.end34_crit_edge196:                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end26.if.end34_crit_edge195:                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end26.if.end34_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %do.end26.if.end34_crit_edge, %do.end26.if.end34_crit_edge195, %do.end26.if.end34_crit_edge196
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1430407457, i32 %24)
  %cmp36.not = icmp eq i32 %24, 1430407457
  br i1 %cmp36.not, label %if.end92, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call27)
  %cmp.i186.not = icmp eq i32 %call27, -74
  br i1 %cmp.i186.not, label %if.then37.cleanup_crit_edge, label %if.end41

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %call42 = tail call i32 @ubi_check_pattern(ptr noundef %1, i8 noundef zeroext -1, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool70.not = icmp eq i32 %verbose, 0
  br i1 %tobool43.not, label %if.end69, label %if.then44

if.then44:                                        ; preds = %if.end41
  br i1 %tobool70.not, label %if.then44.do.body48_crit_edge, label %if.then46

if.then44.do.body48_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.53, i32 noundef %pnum) #9
  br label %do.body48

do.body48:                                        ; preds = %if.then46, %if.then44.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_vid_hdr, %if.then60)) #9
          to label %do.end66 [label %if.then60], !srcloc !255

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i188 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i188 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task62, align 8
  %pid63 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid63, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.54, i32 noundef %30, i32 noundef %pnum) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %do.body48
  %. = select i1 %tobool28.not, i32 1, i32 2
  br label %cleanup

if.end69:                                         ; preds = %if.end41
  br i1 %tobool70.not, label %if.end69.do.body73_crit_edge, label %if.then71

if.end69.do.body73_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.44, i32 noundef %pnum, i32 noundef %24, i32 noundef 1430407457) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %1) #9
  br label %do.body73

do.body73:                                        ; preds = %if.then71, %if.end69.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_vid_hdr, %if.then85)) #9
          to label %cleanup [label %if.then85], !srcloc !255

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i189 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i189 to ptr
  %task87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task87, align 8
  %pid88 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid88, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.45, i32 noundef %36, i32 noundef %pnum, i32 noundef %24, i32 noundef 1430407457) #9
  br label %cleanup

if.end92:                                         ; preds = %if.end34
  %call93 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %1, i32 noundef 60) #14
  %hdr_crc94 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %hdr_crc94 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %hdr_crc94, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call93)
  %cmp95.not = icmp eq i32 %38, %call93
  br i1 %cmp95.not, label %if.end122, label %if.then96

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool97.not = icmp eq i32 %verbose, 0
  br i1 %tobool97.not, label %if.then96.do.body100_crit_edge, label %if.then98

if.then96.do.body100_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body100

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.55, i32 noundef %pnum, i32 noundef %call93, i32 noundef %38) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %1) #9
  br label %do.body100

do.body100:                                       ; preds = %if.then98, %if.then96.do.body100_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_read_vid_hdr, %if.then112)) #9
          to label %do.end118 [label %if.then112], !srcloc !255

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %39 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i190 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i190 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task114, align 8
  %pid115 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid115 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid115, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.56, i32 noundef %44, i32 noundef %pnum, i32 noundef %call93, i32 noundef %38) #9
  br label %do.end118

do.end118:                                        ; preds = %if.then112, %do.body100
  %.175 = select i1 %tobool28.not, i32 3, i32 4
  br label %cleanup

if.end122:                                        ; preds = %if.end92
  %call123 = tail call fastcc i32 @validate_vid_hdr(ptr noundef %ubi, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.then125

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.48, i32 noundef %pnum) #9
  br label %cleanup

if.end126:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %tobool28.not, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.then125, %do.end118, %if.then85, %do.body73, %do.end66, %if.then37.cleanup_crit_edge, %do.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then125 ], [ %cond, %if.end126 ], [ 4, %if.then37.cleanup_crit_edge ], [ %., %do.end66 ], [ 3, %if.then85 ], [ %.175, %do.end118 ], [ 3, %do.body73 ], [ %call27, %do.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vid_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_vid_hdr(ptr noundef %ubi, ptr noundef %vid_hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_type1 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 2
  %0 = ptrtoint ptr %vol_type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vol_type1, align 1
  %copy_flag2 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 3
  %2 = ptrtoint ptr %copy_flag2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %copy_flag2, align 1
  %vol_id4 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 5
  %4 = ptrtoint ptr %vol_id4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %vol_id4, align 1
  %lnum5 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 6
  %6 = ptrtoint ptr %lnum5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %lnum5, align 1
  %compat6 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 4
  %8 = ptrtoint ptr %compat6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %compat6, align 1
  %data_size8 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 8
  %10 = ptrtoint ptr %data_size8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data_size8, align 1
  %used_ebs9 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 9
  %12 = ptrtoint ptr %used_ebs9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %used_ebs9, align 1
  %data_pad10 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 10
  %14 = ptrtoint ptr %data_pad10 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %data_pad10, align 1
  %data_crc11 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 11
  %16 = ptrtoint ptr %data_crc11 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %data_crc11, align 1
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %18 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %leb_size, align 8
  %sub = sub i32 %19, %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch = icmp ult i8 %3, 2
  br i1 %switch, label %if.end, label %entry.bad_crit_edge

entry.bad_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15 = icmp slt i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17 = icmp slt i32 %7, 0
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp slt i32 %11, 0
  %or.cond191 = select i1 %or.cond, i1 true, i1 %cmp20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23 = icmp slt i32 %13, 0
  %or.cond192 = select i1 %or.cond191, i1 true, i1 %cmp23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp26 = icmp slt i32 %15, 0
  %or.cond193 = select i1 %or.cond192, i1 true, i1 %cmp26
  br i1 %or.cond193, label %if.end.bad_crit_edge, label %if.end29

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end29:                                         ; preds = %if.end
  %20 = add nsw i32 %5, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479423, i32 %20)
  %21 = icmp ult i32 %20, 2147479423
  br i1 %21, label %if.end29.bad_crit_edge, label %if.end36

if.end29.bad_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479550, i32 %5)
  %cmp37 = icmp ugt i32 %5, 2147479550
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp40.not = icmp eq i8 %9, 0
  %or.cond195 = select i1 %cmp37, i1 true, i1 %cmp40.not
  br i1 %or.cond195, label %if.end43, label %if.end36.bad_crit_edge

if.end36.bad_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end43:                                         ; preds = %if.end36
  %.fr = freeze i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479551, i32 %.fr)
  %cmp44 = icmp ult i32 %.fr, 2147479551
  br i1 %cmp44, label %if.end43.if.end59_crit_edge, label %switch.early.test

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

switch.early.test:                                ; preds = %if.end43
  %22 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %9, label %switch.early.test.bad_crit_edge [
    i8 5, label %switch.early.test.if.end59_crit_edge
    i8 4, label %switch.early.test.if.end59_crit_edge201
    i8 2, label %switch.early.test.if.end59_crit_edge202
    i8 1, label %switch.early.test.if.end59_crit_edge203
  ]

switch.early.test.if.end59_crit_edge203:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

switch.early.test.if.end59_crit_edge202:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

switch.early.test.if.end59_crit_edge201:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

switch.early.test.if.end59_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

switch.early.test.bad_crit_edge:                  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end59:                                         ; preds = %switch.early.test.if.end59_crit_edge, %switch.early.test.if.end59_crit_edge201, %switch.early.test.if.end59_crit_edge202, %switch.early.test.if.end59_crit_edge203, %if.end43.if.end59_crit_edge
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch200 = icmp ult i8 %.off, 2
  br i1 %switch200, label %if.end66, label %if.end59.bad_crit_edge

if.end59.bad_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end66:                                         ; preds = %if.end59
  %div = sdiv i32 %19, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div)
  %cmp68.not = icmp slt i32 %15, %div
  br i1 %cmp68.not, label %if.end71, label %if.end66.bad_crit_edge

if.end66.bad_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %19)
  %cmp73 = icmp sgt i32 %11, %19
  br i1 %cmp73, label %if.end71.bad_crit_edge, label %if.end76

if.end71.bad_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp77 = icmp eq i8 %1, 2
  br i1 %cmp77, label %if.then79, label %if.else102

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp80 = icmp eq i32 %13, 0
  br i1 %cmp80, label %if.then79.bad_crit_edge, label %if.end83

if.then79.bad_crit_edge:                          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end83:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp84 = icmp eq i32 %11, 0
  br i1 %cmp84, label %if.end83.bad_crit_edge, label %if.end87

if.end83.bad_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end87:                                         ; preds = %if.end83
  %sub88 = add nsw i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub88)
  %cmp89 = icmp ult i32 %7, %sub88
  br i1 %cmp89, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp92.not = icmp eq i32 %11, %sub
  br i1 %cmp92.not, label %if.then91.cleanup_crit_edge, label %if.then91.bad_crit_edge

if.then91.bad_crit_edge:                          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub88)
  %cmp97 = icmp ugt i32 %7, %sub88
  br i1 %cmp97, label %if.else.bad_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.bad_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.else102:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp103 = icmp eq i8 %3, 0
  br i1 %cmp103, label %if.then105, label %if.else114

if.then105:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp106.not = icmp eq i32 %17, 0
  br i1 %cmp106.not, label %if.end109, label %if.then105.bad_crit_edge

if.then105.bad_crit_edge:                         ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end109:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp110.not = icmp eq i32 %11, 0
  br i1 %cmp110.not, label %if.end109.if.end119_crit_edge, label %if.end109.bad_crit_edge

if.end109.bad_crit_edge:                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end109.if.end119_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.else114:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp115 = icmp eq i32 %11, 0
  br i1 %cmp115, label %if.else114.bad_crit_edge, label %if.else114.if.end119_crit_edge

if.else114.if.end119_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.else114.bad_crit_edge:                         ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end119:                                        ; preds = %if.else114.if.end119_crit_edge, %if.end109.if.end119_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp120.not = icmp eq i32 %13, 0
  br i1 %cmp120.not, label %if.end119.cleanup_crit_edge, label %if.end119.bad_crit_edge

if.end119.bad_crit_edge:                          ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bad:                                              ; preds = %if.end119.bad_crit_edge, %if.else114.bad_crit_edge, %if.end109.bad_crit_edge, %if.then105.bad_crit_edge, %if.else.bad_crit_edge, %if.then91.bad_crit_edge, %if.end83.bad_crit_edge, %if.then79.bad_crit_edge, %if.end71.bad_crit_edge, %if.end66.bad_crit_edge, %if.end59.bad_crit_edge, %switch.early.test.bad_crit_edge, %if.end36.bad_crit_edge, %if.end29.bad_crit_edge, %if.end.bad_crit_edge, %entry.bad_crit_edge
  %.str.96.sink = phi ptr [ @.str.83, %entry.bad_crit_edge ], [ @.str.84, %if.end.bad_crit_edge ], [ @.str.85, %if.end29.bad_crit_edge ], [ @.str.86, %if.end36.bad_crit_edge ], [ @.str.86, %switch.early.test.bad_crit_edge ], [ @.str.87, %if.end59.bad_crit_edge ], [ @.str.88, %if.end66.bad_crit_edge ], [ @.str.89, %if.end71.bad_crit_edge ], [ @.str.90, %if.then79.bad_crit_edge ], [ @.str.91, %if.end83.bad_crit_edge ], [ @.str.89, %if.then91.bad_crit_edge ], [ @.str.92, %if.else.bad_crit_edge ], [ @.str.93, %if.then105.bad_crit_edge ], [ @.str.94, %if.end109.bad_crit_edge ], [ @.str.95, %if.else114.bad_crit_edge ], [ @.str.96, %if.end119.bad_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull %.str.96.sink) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.97) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %vid_hdr) #9
  tail call void @dump_stack() #12
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end119.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then91.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %bad ], [ 0, %if.end119.cleanup_crit_edge ], [ 0, %if.then91.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_io_write_vid_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr nocapture noundef readonly %vidb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vidb, align 4
  %buffer = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %vidb, i32 0, i32 1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_io_write_vid_hdr.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_io_write_vid_hdr, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_io_write_vid_hdr.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.58, i32 noundef %9, i32 noundef %pnum) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pnum)
  %cmp = icmp sgt i32 %pnum, -1
  br i1 %cmp, label %land.rhs, label %do.body5.do.end18_crit_edge, !prof !256

do.body5.do.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.rhs:                                         ; preds = %do.body5
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %10 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pnum)
  %cmp6.not = icmp sgt i32 %11, %pnum
  br i1 %cmp6.not, label %land.rhs.do.end26_crit_edge, label %land.rhs.do.end18_crit_edge, !prof !256

land.rhs.do.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.rhs.do.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end18:                                         ; preds = %land.rhs.do.end18_crit_edge, %do.body5.do.end18_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !244) #9
  %and.i64 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i64 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task21, align 8
  %pid22 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid22, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57, i32 noundef 1059, i32 noundef %17) #12
  tail call void @dump_stack() #12
  br label %do.end26

do.end26:                                         ; preds = %do.end18, %land.rhs.do.end26_crit_edge
  %call27 = tail call fastcc i32 @self_check_peb_ec_hdr(ptr noundef %ubi, i32 noundef %pnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.end26.cleanup_crit_edge

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %do.end26
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1430407457, ptr %1, align 1
  %version = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %version, align 1
  %call31 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %1, i32 noundef 60) #14
  %hdr_crc = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %call31, ptr %hdr_crc, align 1
  %call32 = tail call fastcc i32 @self_check_vid_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %call36 = tail call i32 @ubi_dbg_power_cut(ptr noundef %ubi, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %vid_hdr_aloffset = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 75
  %21 = ptrtoint ptr %vid_hdr_aloffset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vid_hdr_aloffset, align 4
  %vid_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %23 = ptrtoint ptr %vid_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vid_hdr_alsize, align 4
  %call40 = tail call i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %3, i32 noundef %pnum, i32 noundef %22, i32 noundef %24)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ %call27, %do.end26.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ -30, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @self_check_vid_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef %vid_hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vid_hdr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %vid_hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1430407457, i32 %3)
  %cmp.not = icmp eq i32 %3, 1430407457
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.100, i32 noundef %3, i32 noundef %pnum, i32 noundef 1430407457) #9
  br label %fail

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @validate_vid_hdr(ptr noundef %ubi, ptr noundef %vid_hdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  br label %fail

fail:                                             ; preds = %if.then6, %if.then2
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.62, i32 noundef %pnum) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %vid_hdr) #9
  tail call void @dump_stack() #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %fail ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !91, !93, !94, !96, !98, !99, !101, !103, !104, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !127, !129, !131, !132, !134, !135, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !157, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !176, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242}
!llvm.named.register.sp = !{!244}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/io.c", i32 120, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubi_io_read.__UNIQUE_ID_ddebug230, !1, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/io.c", i32 122, i32 2}
!8 = !{ptr @ubi_io_read._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ubi_io_read._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @ubi_io_read._entry.5, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/mtd/ubi/io.c", i32 123, i32 2}
!12 = !{ptr @ubi_io_read._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @ubi_io_read._entry.7, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/mtd/ubi/io.c", i32 124, i32 2}
!15 = !{ptr @ubi_io_read._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/ubi/io.c", i32 156, i32 45}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/ubi/io.c", i32 156, i32 62}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/ubi/io.c", i32 167, i32 17}
!22 = !{ptr @ubi_io_read._entry.12, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/mtd/ubi/io.c", i32 169, i32 4}
!24 = !{ptr @ubi_io_read._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/ubi/io.c", i32 174, i32 18}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/ubi/io.c", i32 180, i32 16}
!29 = !{ptr @ubi_io_read._entry.16, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/mtd/ubi/io.c", i32 190, i32 4}
!31 = !{ptr @ubi_io_read._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ubi_io_read._entry.18, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/mtd/ubi/io.c", i32 194, i32 3}
!34 = !{ptr @ubi_io_read._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/ubi/io.c", i32 197, i32 4}
!37 = !{ptr @ubi_io_read.__UNIQUE_ID_ddebug231, !36, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/ubi/io.c", i32 229, i32 2}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ubi_io_write.__UNIQUE_ID_ddebug232, !39, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!42 = !{ptr @ubi_io_write._entry, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/io.c", i32 231, i32 2}
!44 = !{ptr @ubi_io_write._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ubi_io_write._entry.23, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/mtd/ubi/io.c", i32 232, i32 2}
!47 = !{ptr @ubi_io_write._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ubi_io_write._entry.25, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/mtd/ubi/io.c", i32 233, i32 2}
!50 = !{ptr @ubi_io_write._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ubi_io_write._entry.27, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/mtd/ubi/io.c", i32 234, i32 2}
!53 = !{ptr @ubi_io_write._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/ubi/io.c", i32 237, i32 16}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/ubi/io.c", i32 264, i32 16}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/ubi/io.c", i32 273, i32 16}
!60 = !{ptr @ubi_io_write._entry.32, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/mtd/ubi/io.c", i32 278, i32 3}
!62 = !{ptr @ubi_io_write._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/io.c", i32 527, i32 2}
!65 = !{ptr @ubi_io_sync_erase._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ubi_io_sync_erase._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/ubi/io.c", i32 576, i32 2}
!69 = !{ptr @ubi_io_is_bad._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ubi_io_is_bad._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/ubi/io.c", i32 583, i32 17}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/ubi/io.c", i32 586, i32 4}
!75 = !{ptr @ubi_io_is_bad.__UNIQUE_ID_ddebug234, !74, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/ubi/io.c", i32 606, i32 2}
!78 = !{ptr @ubi_io_mark_bad._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ubi_io_mark_bad._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/ubi/io.c", i32 618, i32 16}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/ubi/io.c", i32 700, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug235, !83, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!86 = !{ptr @ubi_io_read_ec_hdr._entry, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/mtd/ubi/io.c", i32 701, i32 2}
!88 = !{ptr @ubi_io_read_ec_hdr._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/ubi/io.c", i32 732, i32 19}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/ubi/io.c", i32 734, i32 4}
!93 = !{ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug236, !92, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/ubi/io.c", i32 747, i32 18}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/ubi/io.c", i32 751, i32 3}
!98 = !{ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug237, !97, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ubi/io.c", i32 761, i32 18}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/ubi/io.c", i32 765, i32 3}
!103 = !{ptr @ubi_io_read_ec_hdr.__UNIQUE_ID_ddebug238, !102, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/ubi/io.c", i32 777, i32 16}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/ubi/io.c", i32 809, i32 2}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ubi_io_write_ec_hdr.__UNIQUE_ID_ddebug239, !107, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!110 = !{ptr @ubi_io_write_ec_hdr._entry, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/mtd/ubi/io.c", i32 810, i32 2}
!112 = !{ptr @ubi_io_write_ec_hdr._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/ubi/io.c", i32 974, i32 2}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug240, !114, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!117 = !{ptr @ubi_io_read_vid_hdr._entry, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/mtd/ubi/io.c", i32 975, i32 2}
!119 = !{ptr @ubi_io_read_vid_hdr._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/ubi/io.c", i32 989, i32 19}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/ubi/io.c", i32 991, i32 4}
!124 = !{ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug241, !123, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!125 = !{ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug242, !126, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!126 = !{!"../drivers/mtd/ubi/io.c", i32 1004, i32 3}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/ubi/io.c", i32 1014, i32 18}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/ubi/io.c", i32 1018, i32 3}
!131 = !{ptr @ubi_io_read_vid_hdr.__UNIQUE_ID_ddebug243, !130, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/ubi/io.c", i32 1058, i32 2}
!134 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ubi_io_write_vid_hdr.__UNIQUE_ID_ddebug244, !133, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!136 = !{ptr @ubi_io_write_vid_hdr._entry, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/mtd/ubi/io.c", i32 1059, i32 2}
!138 = !{ptr @ubi_io_write_vid_hdr._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/ubi/io.c", i32 1368, i32 16}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/ubi/io.c", i32 1374, i32 16}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/ubi/io.c", i32 1381, i32 16}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/ubi/io.c", i32 1390, i32 15}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/ubi/io.c", i32 1391, i32 15}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mtd/ubi/io.c", i32 1392, i32 17}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/ubi/io.c", i32 484, i32 2}
!153 = !{ptr @nor_erase_prepare._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @nor_erase_prepare._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mtd/ubi/io.c", i32 502, i32 15}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/ubi/io.c", i32 367, i32 15}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mtd/ubi/io.c", i32 369, i32 2}
!161 = !{ptr @torture_peb._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @torture_peb._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mtd/ubi/io.c", i32 384, i32 17}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/ubi/io.c", i32 404, i32 17}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mtd/ubi/io.c", i32 412, i32 15}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/ubi/io.c", i32 422, i32 16}
!171 = !{ptr @patterns, !172, !"patterns", i1 false, i1 false}
!172 = !{!"../drivers/mtd/ubi/io.c", i32 352, i32 16}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mtd/ubi/io.c", i32 312, i32 2}
!175 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @do_sync_erase.__UNIQUE_ID_ddebug233, !174, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!177 = !{ptr @do_sync_erase._entry, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/mtd/ubi/io.c", i32 313, i32 2}
!179 = !{ptr @do_sync_erase._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mtd/ubi/io.c", i32 329, i32 18}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/ubi/io.c", i32 334, i32 16}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/ubi/io.c", i32 344, i32 16}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/ubi/io.c", i32 641, i32 16}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mtd/ubi/io.c", i32 647, i32 16}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/ubi/io.c", i32 653, i32 16}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/ubi/io.c", i32 659, i32 16}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/ubi/io.c", i32 666, i32 15}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mtd/ubi/io.c", i32 854, i32 16}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mtd/ubi/io.c", i32 860, i32 16}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mtd/ubi/io.c", i32 865, i32 16}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mtd/ubi/io.c", i32 870, i32 16}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/ubi/io.c", i32 882, i32 16}
!206 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/ubi/io.c", i32 887, i32 16}
!208 = !{ptr @.str.89, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/ubi/io.c", i32 892, i32 16}
!210 = !{ptr @.str.90, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mtd/ubi/io.c", i32 904, i32 17}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/ubi/io.c", i32 908, i32 17}
!214 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mtd/ubi/io.c", i32 917, i32 17}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mtd/ubi/io.c", i32 923, i32 18}
!218 = !{ptr @.str.94, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mtd/ubi/io.c", i32 927, i32 18}
!220 = !{ptr @.str.95, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/mtd/ubi/io.c", i32 932, i32 18}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mtd/ubi/io.c", i32 937, i32 17}
!224 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mtd/ubi/io.c", i32 945, i32 15}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mtd/ubi/io.c", i32 1126, i32 16}
!228 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mtd/ubi/io.c", i32 1173, i32 16}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/ubi/io.c", i32 1209, i32 16}
!232 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mtd/ubi/io.c", i32 1263, i32 16}
!234 = !{ptr @.str.102, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mtd/ubi/io.c", i32 1304, i32 16}
!236 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mtd/ubi/io.c", i32 1320, i32 16}
!238 = !{ptr @.str.104, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/mtd/ubi/io.c", i32 1322, i32 16}
!240 = !{ptr @.str.105, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/mtd/ubi/io.c", i32 1324, i32 16}
!242 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mtd/ubi/io.c", i32 1328, i32 16}
!244 = !{!"sp"}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{!"auto-init"}
!255 = !{i64 2148257861, i64 2148257866, i64 2148257879, i64 2148257923, i64 2148257957, i64 2148257978}
!256 = !{!"branch_weights", i32 2000, i32 1}
!257 = !{!"branch_weights", i32 1, i32 2000}
