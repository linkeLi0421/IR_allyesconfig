; ModuleID = '/llk/IR_all_yes/fs/jffs2/wbuf.c_pt.bc'
source_filename = "../fs/jffs2/wbuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_unknown_node = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.jffs2_inodirty = type { i32, ptr }
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
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.76 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.76 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.jffs2_xattr_datum = type { ptr, ptr, i8, i8, i16, %struct.list_head, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.82 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.84 = type { ptr }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jffs2_node_frag = type { %struct.rb_node, ptr, i32, i32 }
%struct.jffs2_full_dirent = type { %union.anon.77, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.77 = type { ptr }
%struct.kvec = type { ptr, i32 }
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
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

@jffs2_flash_writev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012jffs2: %s(): Non-contiguous write to %08lx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jffs2_flash_writev\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/jffs2/wbuf.c\00", [16 x i8] zeroinitializer }, align 32
@jffs2_flash_writev._entry_ptr = internal global ptr @jffs2_flash_writev._entry, section ".printk_index", align 4
@jffs2_flash_writev._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012jffs2: wbuf was previously %08x-%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@jffs2_flash_writev._entry_ptr.5 = internal global ptr @jffs2_flash_writev._entry.3, section ".printk_index", align 4
@jffs2_flash_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014jffs2: mtd->read(0x%zx bytes from 0x%llx) returned ECC error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jffs2_flash_read\00", [47 x i8] zeroinitializer }, align 32
@jffs2_flash_read._entry_ptr = internal global ptr @jffs2_flash_read._entry, section ".printk_index", align 4
@jffs2_check_oob_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013jffs2: cannot read OOB for EB at %08x, requested %zd bytes, read %zd bytes, error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_check_oob_empty\00", [42 x i8] zeroinitializer }, align 32
@jffs2_check_oob_empty._entry_ptr = internal global ptr @jffs2_check_oob_empty._entry, section ".printk_index", align 4
@jffs2_check_nand_cleanmarker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jffs2_check_nand_cleanmarker\00", [35 x i8] zeroinitializer }, align 32
@jffs2_check_nand_cleanmarker._entry_ptr = internal global ptr @jffs2_check_nand_cleanmarker._entry, section ".printk_index", align 4
@oob_cleanmarker = internal constant { %struct.jffs2_unknown_node, [20 x i8] } { %struct.jffs2_unknown_node { %struct.jint16_t { i16 6533 }, %struct.jint16_t { i16 8195 }, %struct.jint32_t { i32 8 }, %struct.jint32_t zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@jffs2_write_nand_cleanmarker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013jffs2: cannot write OOB for EB at %08x, requested %zd bytes, read %zd bytes, error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jffs2_write_nand_cleanmarker\00", [35 x i8] zeroinitializer }, align 32
@jffs2_write_nand_cleanmarker._entry_ptr = internal global ptr @jffs2_write_nand_cleanmarker._entry, section ".printk_index", align 4
@jffs2_write_nand_badblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014jffs2: marking eraseblock at %08x as bad\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jffs2_write_nand_badblock\00", [38 x i8] zeroinitializer }, align 32
@jffs2_write_nand_badblock._entry_ptr = internal global ptr @jffs2_write_nand_badblock._entry, section ".printk_index", align 4
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@jffs2_nand_flash_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013jffs2: inconsistent device description\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jffs2_nand_flash_setup\00", [41 x i8] zeroinitializer }, align 32
@jffs2_nand_flash_setup._entry_ptr = internal global ptr @jffs2_nand_flash_setup._entry, section ".printk_index", align 4
@jffs2_nand_flash_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&c->wbuf_sem\00", [19 x i8] zeroinitializer }, align 32
@jffs2_nand_flash_setup.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&c->wbuf_dwork)->work)\00", [53 x i8] zeroinitializer }, align 32
@jffs2_nand_flash_setup.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&c->wbuf_dwork)->timer\00", [39 x i8] zeroinitializer }, align 32
@jffs2_dataflash_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_dataflash_setup.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_dataflash_setup.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_dataflash_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014jffs2: flash size adjusted to %dKiB\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_dataflash_setup\00", [42 x i8] zeroinitializer }, align 32
@jffs2_dataflash_setup._entry_ptr = internal global ptr @jffs2_dataflash_setup._entry, section ".printk_index", align 4
@jffs2_dataflash_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016jffs2: write-buffering enabled buffer (%d) erasesize (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@jffs2_dataflash_setup._entry_ptr.28 = internal global ptr @jffs2_dataflash_setup._entry.26, section ".printk_index", align 4
@jffs2_nor_wbuf_flash_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_nor_wbuf_flash_setup.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_nor_wbuf_flash_setup.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_ubivol_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_ubivol_setup.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_ubivol_setup.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jffs2_ubivol_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.33, ptr @.str.2, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jffs2_ubivol_setup\00", [45 x i8] zeroinitializer }, align 32
@jffs2_ubivol_setup._entry_ptr = internal global ptr @jffs2_ubivol_setup._entry, section ".printk_index", align 4
@inodirty_nomem = internal global { %struct.jffs2_inodirty, [24 x i8] } zeroinitializer, align 32
@__jffs2_flush_wbuf._entry = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 592, ptr null, ptr null }, align 1
@.str.34 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\012jffs2: jffs2_flush_wbuf() called with alloc_sem not locked!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__jffs2_flush_wbuf\00", [45 x i8] zeroinitializer }, align 32
@__jffs2_flush_wbuf._entry_ptr = internal global ptr @__jffs2_flush_wbuf._entry, section ".printk_index", align 4
@__jffs2_flush_wbuf._entry.36 = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 642, ptr null, ptr null }, align 1
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014jffs2: jffs2_flush_wbuf(): Write failed with %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__jffs2_flush_wbuf._entry_ptr.38 = internal global ptr @__jffs2_flush_wbuf._entry.36, section ".printk_index", align 4
@__jffs2_flush_wbuf._entry.39 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 646, ptr null, ptr null }, align 1
@.str.40 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014jffs2: jffs2_flush_wbuf(): Write was short: %zd instead of %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__jffs2_flush_wbuf._entry_ptr.41 = internal global ptr @__jffs2_flush_wbuf._entry.39, section ".printk_index", align 4
@__jffs2_flush_wbuf._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 669, ptr null, ptr null }, align 1
@.str.43 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\012jffs2: jffs2_flush_wbuf(): Accounting error. wbuf at 0x%08x has 0x%03x bytes, 0x%03x left.\0A\00", [34 x i8] zeroinitializer }, align 32
@__jffs2_flush_wbuf._entry_ptr.44 = internal global ptr @__jffs2_flush_wbuf._entry.42, section ".printk_index", align 4
@__jffs2_flush_wbuf._entry.45 = internal constant %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 671, ptr null, ptr null }, align 1
@.str.46 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\012jffs2: jffs2_flush_wbuf(): But free_size for block at 0x%08x is only 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@__jffs2_flush_wbuf._entry_ptr.47 = internal global ptr @__jffs2_flush_wbuf._entry.45, section ".printk_index", align 4
@jffs2_verify_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014jffs2: %s(): Read back of page at %08x failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jffs2_verify_write\00", [45 x i8] zeroinitializer }, align 32
@jffs2_verify_write._entry_ptr = internal global ptr @jffs2_verify_write._entry, section ".printk_index", align 4
@jffs2_verify_write._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014jffs2: %s(): Read back of page at %08x gave short read: %zd not %d\0A\00", [58 x i8] zeroinitializer }, align 32
@jffs2_verify_write._entry_ptr.52 = internal global ptr @jffs2_verify_write._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"corrected\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"correction failed\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OK or unused\00", [19 x i8] zeroinitializer }, align 32
@jffs2_verify_write._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014jffs2: Write verify error (ECC %s) at %08x. Wrote:\0A\00", [42 x i8] zeroinitializer }, align 32
@jffs2_verify_write._entry_ptr.58 = internal global ptr @jffs2_verify_write._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@jffs2_verify_write._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.49, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014jffs2: Read back:\0A\00", [43 x i8] zeroinitializer }, align 32
@jffs2_verify_write._entry_ptr.63 = internal global ptr @jffs2_verify_write._entry.61, section ".printk_index", align 4
@jffs2_wbuf_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\012jffs2: Malloc failure in wbuf recovery. Data loss ensues.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jffs2_wbuf_recover\00", [45 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr = internal global ptr @jffs2_wbuf_recover._entry, section ".printk_index", align 4
@jffs2_wbuf_recover._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\012jffs2: Old data are already lost in wbuf recovery. Data loss ensues.\0A\00", [56 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr.68 = internal global ptr @jffs2_wbuf_recover._entry.66, section ".printk_index", align 4
@jffs2_wbuf_recover._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014jffs2: Failed to allocate space for wbuf recovery. Data loss ensues.\0A\00", [56 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr.71 = internal global ptr @jffs2_wbuf_recover._entry.69, section ".printk_index", align 4
@jffs2_wbuf_recover._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014jffs2: Failed to allocate node refs for wbuf recovery. Data loss ensues.\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr.74 = internal global ptr @jffs2_wbuf_recover._entry.72, section ".printk_index", align 4
@jffs2_wbuf_recover._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\012jffs2: Recovery of wbuf failed due to a second write error\0A\00", [34 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr.77 = internal global ptr @jffs2_wbuf_recover._entry.75, section ".printk_index", align 4
@jffs2_wbuf_recover._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.65, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015jffs2: Recovery of wbuf succeeded to %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr.80 = internal global ptr @jffs2_wbuf_recover._entry.78, section ".printk_index", align 4
@jffs2_wbuf_recover._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.65, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013jffs2: error: (%d) %s: Failed to iget() ino #%u, err %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr.83 = internal global ptr @jffs2_wbuf_recover._entry.81, section ".printk_index", align 4
@jffs2_wbuf_recover._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.65, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013jffs2: error: (%d) %s: Inode #%u is in strange state %d!\0A\00", [36 x i8] zeroinitializer }, align 32
@jffs2_wbuf_recover._entry_ptr.86 = internal global ptr @jffs2_wbuf_recover._entry.84, section ".printk_index", align 4
@jffs2_refile_wbuf_blocks.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 6533]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 57345, i64 57346]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 839, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 842, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 971, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1048, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1090, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"oob_cleanmarker\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1022, i32 40 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1115, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1141, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1193, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1202, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1203, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1241, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1242, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1264, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1280, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1299, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1300, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1333, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1334, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1342, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"inodirty_nomem\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 46, i32 30 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 592, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 642, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 645, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 668, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 670, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 239, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 243, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 251, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 253, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 255, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 257, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 259, i32 17 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 259, i32 31 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 262, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 342, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 357, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 391, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 401, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 434, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 442, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 508, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 522, i32 5 }
@___asan_gen_.348 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.349 = private constant [19 x i8] c"../fs/jffs2/wbuf.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 111, i32 13 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__jffs2_flush_wbuf._entry, ptr @__jffs2_flush_wbuf._entry.36, ptr @__jffs2_flush_wbuf._entry.39, ptr @__jffs2_flush_wbuf._entry.42, ptr @__jffs2_flush_wbuf._entry.45, ptr @__jffs2_flush_wbuf._entry_ptr, ptr @__jffs2_flush_wbuf._entry_ptr.38, ptr @__jffs2_flush_wbuf._entry_ptr.41, ptr @__jffs2_flush_wbuf._entry_ptr.44, ptr @__jffs2_flush_wbuf._entry_ptr.47, ptr @jffs2_check_nand_cleanmarker._entry, ptr @jffs2_check_nand_cleanmarker._entry_ptr, ptr @jffs2_check_oob_empty._entry, ptr @jffs2_check_oob_empty._entry_ptr, ptr @jffs2_dataflash_setup._entry, ptr @jffs2_dataflash_setup._entry.26, ptr @jffs2_dataflash_setup._entry_ptr, ptr @jffs2_dataflash_setup._entry_ptr.28, ptr @jffs2_flash_read._entry, ptr @jffs2_flash_read._entry_ptr, ptr @jffs2_flash_writev._entry, ptr @jffs2_flash_writev._entry.3, ptr @jffs2_flash_writev._entry_ptr, ptr @jffs2_flash_writev._entry_ptr.5, ptr @jffs2_nand_flash_setup._entry, ptr @jffs2_nand_flash_setup._entry_ptr, ptr @jffs2_ubivol_setup._entry, ptr @jffs2_ubivol_setup._entry_ptr, ptr @jffs2_verify_write._entry, ptr @jffs2_verify_write._entry.50, ptr @jffs2_verify_write._entry.56, ptr @jffs2_verify_write._entry.61, ptr @jffs2_verify_write._entry_ptr, ptr @jffs2_verify_write._entry_ptr.52, ptr @jffs2_verify_write._entry_ptr.58, ptr @jffs2_verify_write._entry_ptr.63, ptr @jffs2_wbuf_recover._entry, ptr @jffs2_wbuf_recover._entry.66, ptr @jffs2_wbuf_recover._entry.69, ptr @jffs2_wbuf_recover._entry.72, ptr @jffs2_wbuf_recover._entry.75, ptr @jffs2_wbuf_recover._entry.78, ptr @jffs2_wbuf_recover._entry.81, ptr @jffs2_wbuf_recover._entry.84, ptr @jffs2_wbuf_recover._entry_ptr, ptr @jffs2_wbuf_recover._entry_ptr.68, ptr @jffs2_wbuf_recover._entry_ptr.71, ptr @jffs2_wbuf_recover._entry_ptr.74, ptr @jffs2_wbuf_recover._entry_ptr.77, ptr @jffs2_wbuf_recover._entry_ptr.80, ptr @jffs2_wbuf_recover._entry_ptr.83, ptr @jffs2_wbuf_recover._entry_ptr.86, ptr @jffs2_write_nand_badblock._entry, ptr @jffs2_write_nand_badblock._entry_ptr, ptr @jffs2_write_nand_cleanmarker._entry, ptr @jffs2_write_nand_cleanmarker._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @oob_cleanmarker, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @jffs2_nand_flash_setup.__key, ptr @.str.17, ptr @jffs2_nand_flash_setup.__key.18, ptr @.str.19, ptr @jffs2_nand_flash_setup.__key.20, ptr @.str.21, ptr @jffs2_dataflash_setup.__key, ptr @jffs2_dataflash_setup.__key.22, ptr @jffs2_dataflash_setup.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @jffs2_nor_wbuf_flash_setup.__key, ptr @jffs2_nor_wbuf_flash_setup.__key.29, ptr @jffs2_nor_wbuf_flash_setup.__key.30, ptr @jffs2_ubivol_setup.__key, ptr @jffs2_ubivol_setup.__key.31, ptr @jffs2_ubivol_setup.__key.32, ptr @.str.33, ptr @inodirty_nomem, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @jffs2_refile_wbuf_blocks.n], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_flash_writev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_flash_writev._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_flash_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_check_oob_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_check_nand_cleanmarker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oob_cleanmarker to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_nand_cleanmarker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_nand_badblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_nand_flash_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_nand_flash_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_nand_flash_setup.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_nand_flash_setup.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_dataflash_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_dataflash_setup.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_dataflash_setup.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_dataflash_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_dataflash_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_nor_wbuf_flash_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_nor_wbuf_flash_setup.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_nor_wbuf_flash_setup.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_ubivol_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_ubivol_setup.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_ubivol_setup.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_ubivol_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inodirty_nomem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_verify_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_verify_write._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_verify_write._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_verify_write._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_wbuf_recover._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_refile_wbuf_blocks.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_flush_wbuf_gc(ptr noundef %c, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #10
  %wbuf_inodes.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 55
  %2 = ptrtoint ptr %wbuf_inodes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wbuf_inodes.i, align 4
  %cmp.i = icmp eq ptr %3, @inodirty_nomem
  br i1 %cmp.i, label %if.end.if.end7_crit_edge, label %if.end.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %tobool.not.i = icmp ne ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %tobool1.not.i = icmp eq i32 %ino, 0
  %or.cond.i = and i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.if.end7_crit_edge, label %while.cond.preheader.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

while.cond.preheader.i:                           ; preds = %if.end.i
  %tobool4.not14.i = icmp eq ptr %3, null
  br i1 %tobool4.not14.i, label %while.cond.preheader.i.cleanup.sink.split_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %this.015.i = phi ptr [ %7, %if.end8.i.while.body.i_crit_edge ], [ %3, %while.cond.preheader.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %this.015.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %this.015.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ino)
  %cmp6.i = icmp eq i32 %5, %ino
  br i1 %cmp6.i, label %while.body.i.if.end7_crit_edge, label %if.end8.i

while.body.i.if.end7_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end8.i:                                        ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.jffs2_inodirty, ptr %this.015.i, i32 0, i32 1
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.end8.i.cleanup.sink.split_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7:                                          ; preds = %while.body.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %8 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wbuf_ofs, align 4
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %10 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unchecked_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %while.cond.preheader, label %do.end12

while.cond.preheader:                             ; preds = %if.end7
  %wbuf_len = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %12 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %while.cond.preheader.cleanup.sink.split_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end12:                                         ; preds = %if.end7
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @down_write(ptr noundef %wbuf_sem) #10
  %call13 = tail call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end12.do.end41.sink.split_crit_edge, label %do.end12.do.end41.sink.split.sink.split_crit_edge

do.end12.do.end41.sink.split.sink.split_crit_edge: ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.sink.split.sink.split

do.end12.do.end41.sink.split_crit_edge:           ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.sink.split

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %14 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wbuf_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp = icmp eq i32 %9, %15
  br i1 %cmp, label %while.body, label %land.rhs.cleanup.sink.split_crit_edge

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

while.body:                                       ; preds = %land.rhs
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #10
  %call25 = tail call i32 @jffs2_garbage_collect_pass(ptr noundef %c) #10
  %tobool26.not = icmp eq i32 %call25, 0
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #10
  br i1 %tobool26.not, label %while.body.land.rhs_crit_edge, label %if.then27

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.then27:                                        ; preds = %while.body
  %wbuf_sem29 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @down_write(ptr noundef %wbuf_sem29) #10
  %call30 = tail call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then27.do.end41.sink.split_crit_edge, label %if.then27.do.end41.sink.split.sink.split_crit_edge

if.then27.do.end41.sink.split.sink.split_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.sink.split.sink.split

if.then27.do.end41.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.sink.split

do.end41.sink.split.sink.split:                   ; preds = %if.then27.do.end41.sink.split.sink.split_crit_edge, %do.end12.do.end41.sink.split.sink.split_crit_edge
  %wbuf_sem.sink.ph = phi ptr [ %wbuf_sem, %do.end12.do.end41.sink.split.sink.split_crit_edge ], [ %wbuf_sem29, %if.then27.do.end41.sink.split.sink.split_crit_edge ]
  %call33 = tail call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 2)
  br label %do.end41.sink.split

do.end41.sink.split:                              ; preds = %do.end41.sink.split.sink.split, %if.then27.do.end41.sink.split_crit_edge, %do.end12.do.end41.sink.split_crit_edge
  %wbuf_sem.sink = phi ptr [ %wbuf_sem, %do.end12.do.end41.sink.split_crit_edge ], [ %wbuf_sem29, %if.then27.do.end41.sink.split_crit_edge ], [ %wbuf_sem.sink.ph, %do.end41.sink.split.sink.split ]
  %ret.3.ph = phi i32 [ 0, %do.end12.do.end41.sink.split_crit_edge ], [ 0, %if.then27.do.end41.sink.split_crit_edge ], [ %call33, %do.end41.sink.split.sink.split ]
  tail call void @up_write(ptr noundef %wbuf_sem.sink) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end41.sink.split, %land.rhs.cleanup.sink.split_crit_edge, %while.cond.preheader.cleanup.sink.split_crit_edge, %if.end8.i.cleanup.sink.split_crit_edge, %while.cond.preheader.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %while.cond.preheader.i.cleanup.sink.split_crit_edge ], [ 0, %while.cond.preheader.cleanup.sink.split_crit_edge ], [ %ret.3.ph, %do.end41.sink.split ], [ 0, %land.rhs.cleanup.sink.split_crit_edge ], [ 0, %if.end8.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef %pad) unnamed_addr #0 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !172
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %1 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wbuf, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 7
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %alloc_sem) #10
  br i1 %call, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 593, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

if.end9:                                          ; preds = %if.end
  %wbuf_len = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %3 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %blocks, align 4
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %7 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wbuf_ofs, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %9 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %8, %10
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %6, i32 %div
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %11 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nextblock, align 4
  %allocated_refs = getelementptr inbounds %struct.jffs2_eraseblock, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %allocated_refs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %allocated_refs, align 4
  %add = add i32 %14, 1
  %call12 = tail call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %tobool16.not = icmp eq i32 %pad, 0
  br i1 %tobool16.not, label %if.end15.if.end42_crit_edge, label %if.then17

if.end15.if.end42_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then17:                                        ; preds = %if.end15
  %15 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wbuf_len, align 4
  %add19 = add i32 %16, 3
  %and = and i32 %add19, -4
  store i32 %and, ptr %wbuf_len, align 4
  %17 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wbuf, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %and
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %19 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wbuf_pagesize, align 4
  %sub = sub i32 %20, %and
  %21 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %22 = load i32, ptr %wbuf_len, align 4
  %add25 = add i32 %22, 12
  %23 = load i32, ptr %wbuf_pagesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %23)
  %cmp27 = icmp ult i32 %add25, %23
  br i1 %cmp27, label %if.then28, label %if.then17.if.end42_crit_edge

if.then17.if.end42_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then28:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wbuf, align 4
  %add.ptr31 = getelementptr i8, ptr %25, i32 %22
  %26 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 6533, ptr %add.ptr31, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_unknown_node, ptr %add.ptr31, i32 0, i32 1
  %27 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 8196, ptr %nodetype, align 1
  %totlen = getelementptr inbounds %struct.jffs2_unknown_node, ptr %add.ptr31, i32 0, i32 2
  %28 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wbuf_pagesize, align 4
  %30 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wbuf_len, align 4
  %sub37 = sub i32 %29, %31
  %32 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %sub37, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_unknown_node, ptr %add.ptr31, i32 0, i32 3
  %call40 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr31, i32 noundef 8) #14
  %33 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %call40, ptr %hdr_crc, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then28, %if.then17.if.end42_crit_edge, %if.end15.if.end42_crit_edge
  %34 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %c, align 4
  %36 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wbuf_ofs, align 4
  %conv = zext i32 %37 to i64
  %wbuf_pagesize44 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %38 = ptrtoint ptr %wbuf_pagesize44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wbuf_pagesize44, align 4
  %40 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wbuf, align 4
  %call46 = call i32 @mtd_write(ptr noundef %35, i64 noundef %conv, i32 noundef %39, ptr noundef nonnull %retlen, ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else, label %do.end51

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call46) #13
  br label %wfail

if.else:                                          ; preds = %if.end42
  %42 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retlen, align 4
  %44 = ptrtoint ptr %wbuf_pagesize44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wbuf_pagesize44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp55.not = icmp eq i32 %43, %45
  br i1 %cmp55.not, label %if.else64, label %do.end60

do.end60:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %43, i32 noundef %45) #13
  br label %wfail

if.else64:                                        ; preds = %if.else
  %46 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wbuf, align 4
  %48 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wbuf_ofs, align 4
  %call67 = call fastcc i32 @jffs2_verify_write(ptr noundef %c, ptr noundef %47, i32 noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end72, label %if.else64.wfail_crit_edge

if.else64.wfail_crit_edge:                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  br label %wfail

wfail:                                            ; preds = %if.else64.wfail_crit_edge, %do.end60, %do.end51
  %ret.0 = phi i32 [ %call46, %do.end51 ], [ -5, %do.end60 ], [ %call67, %if.else64.wfail_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #10
  %50 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %retlen.i, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #10
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %len.i, align 4, !annotation !172
  %52 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blocks, align 4
  %54 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wbuf_ofs, align 4
  %56 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sector_size, align 4
  %div.i = udiv i32 %55, %57
  %arrayidx.i = getelementptr %struct.jffs2_eraseblock, ptr %53, i32 %div.i
  %erase_completion_lock.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #10
  %58 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wbuf_ofs, align 4
  %60 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %c, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %erasesize.i, align 8
  %rem.i = urem i32 %59, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %..i = zext i1 %tobool.not.i to i32
  call fastcc void @jffs2_block_refile(ptr noundef %c, ptr noundef %arrayidx.i, i32 noundef %..i) #10
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #10
  %last_node.i = getelementptr %struct.jffs2_eraseblock, ptr %53, i32 %div.i, i32 10
  %64 = ptrtoint ptr %last_node.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %last_node.i, align 4
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flash_offset.i, align 4
  %and.i = and i32 %67, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %do.end13.i, label %do.body7.i, !prof !174

do.body7.i:                                       ; preds = %wfail
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 294, 0\0A.popsection", ""() #10, !srcloc !175
  unreachable

do.end13.i:                                       ; preds = %wfail
  %first_node.i = getelementptr %struct.jffs2_eraseblock, ptr %53, i32 %div.i, i32 9
  %68 = ptrtoint ptr %first_node.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %first_node.i, align 4
  %tobool14.not795.i = icmp eq ptr %69, null
  br i1 %tobool14.not795.i, label %do.end13.i.do.end30.i_crit_edge, label %do.end13.i.for.body.i_crit_edge

do.end13.i.for.body.i_crit_edge:                  ; preds = %do.end13.i
  br label %for.body.i

do.end13.i.do.end30.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

for.body.i:                                       ; preds = %if.then23.i.for.body.i_crit_edge, %do.end13.i.for.body.i_crit_edge
  %raw.0796.i = phi ptr [ %retval.0.i740.i, %if.then23.i.for.body.i_crit_edge ], [ %69, %do.end13.i.for.body.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.0796.i, i32 1
  %flash_offset.i.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.0796.i, i32 1, i32 1
  %70 = ptrtoint ptr %flash_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flash_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i678.i = icmp eq i32 %71, -1
  br i1 %cmp.i678.i, label %if.then.i679.i, label %for.body.i.ref_next.exit.i_crit_edge

for.body.i.ref_next.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ref_next.exit.i

if.then.i679.i:                                   ; preds = %for.body.i
  %72 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %ref_next.exit.thread.i, label %if.then.i679.i.ref_next.exit.i_crit_edge

if.then.i679.i.ref_next.exit.i_crit_edge:         ; preds = %if.then.i679.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ref_next.exit.i

ref_next.exit.i:                                  ; preds = %if.then.i679.i.ref_next.exit.i_crit_edge, %for.body.i.ref_next.exit.i_crit_edge
  %ref.addr.0.i.i = phi ptr [ %73, %if.then.i679.i.ref_next.exit.i_crit_edge ], [ %incdec.ptr.i.i, %for.body.i.ref_next.exit.i_crit_edge ]
  %flash_offset3.i.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %flash_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flash_offset3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %75)
  %cmp4.i.i = icmp eq i32 %75, -2
  %.ref.addr.0.i.i = select i1 %cmp4.i.i, ptr null, ptr %ref.addr.0.i.i
  %flash_offset15.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0796.i, i32 0, i32 1
  %76 = ptrtoint ptr %flash_offset15.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flash_offset15.i, align 4
  %and16.i = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 1
  br i1 %cmp17.i, label %ref_next.exit.i.if.then23.i_crit_edge, label %lor.lhs.false.i

ref_next.exit.i.if.then23.i_crit_edge:            ; preds = %ref_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

ref_next.exit.thread.i:                           ; preds = %if.then.i679.i
  %flash_offset15736.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0796.i, i32 0, i32 1
  %78 = ptrtoint ptr %flash_offset15736.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flash_offset15736.i, align 4
  %and16737.i = and i32 %79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and16737.i)
  %cmp17738.i = icmp eq i32 %and16737.i, 1
  br i1 %cmp17738.i, label %ref_next.exit.thread.i.do.end30.i_crit_edge, label %ref_next.exit.thread.i.if.end31.i_crit_edge

ref_next.exit.thread.i.if.end31.i_crit_edge:      ; preds = %ref_next.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

ref_next.exit.thread.i.do.end30.i_crit_edge:      ; preds = %ref_next.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

lor.lhs.false.i:                                  ; preds = %ref_next.exit.i
  %tobool18.not.i = icmp eq ptr %.ref.addr.0.i.i, null
  br i1 %tobool18.not.i, label %lor.lhs.false.i.if.end31.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %flash_offset19.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %.ref.addr.0.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %flash_offset19.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flash_offset19.i, align 4
  %and20.i = and i32 %81, -4
  %82 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wbuf_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and20.i, i32 %83)
  %cmp22.not.i = icmp ugt i32 %and20.i, %83
  br i1 %cmp22.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true.i.if.then23.i_crit_edge

land.lhs.true.i.if.then23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then23.i:                                      ; preds = %land.lhs.true.i.if.then23.i_crit_edge, %ref_next.exit.i.if.then23.i_crit_edge
  %retval.0.i740.i = phi ptr [ %ref.addr.0.i.i, %land.lhs.true.i.if.then23.i_crit_edge ], [ %.ref.addr.0.i.i, %ref_next.exit.i.if.then23.i_crit_edge ]
  %tobool14.not.i = icmp eq ptr %retval.0.i740.i, null
  br i1 %tobool14.not.i, label %if.then23.i.do.end30.i_crit_edge, label %if.then23.i.for.body.i_crit_edge

if.then23.i.for.body.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then23.i.do.end30.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then23.i.do.end30.i_crit_edge, %ref_next.exit.thread.i.do.end30.i_crit_edge, %do.end13.i.do.end30.i_crit_edge
  %84 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %wbuf_len, align 4
  br label %jffs2_wbuf_recover.exit

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %lor.lhs.false.i.if.end31.i_crit_edge, %ref_next.exit.thread.i.if.end31.i_crit_edge
  %flash_offset.i.i334 = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.0796.i, i32 1, i32 1
  %flash_offset32.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0796.i, i32 0, i32 1
  %85 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flash_offset32.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %ref_next.exit691.i.while.cond.i_crit_edge, %if.end31.i
  %nr_refile.0.i = phi i32 [ 1, %if.end31.i ], [ %inc.i, %ref_next.exit691.i.while.cond.i_crit_edge ]
  %raw.1.i = phi ptr [ %raw.0796.i, %if.end31.i ], [ %retval.0.i690.i, %ref_next.exit691.i.while.cond.i_crit_edge ]
  %incdec.ptr.i680.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.1.i, i32 1
  %flash_offset.i681.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.1.i, i32 1, i32 1
  %87 = ptrtoint ptr %flash_offset.i681.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flash_offset.i681.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp.i682.i = icmp eq i32 %88, -1
  br i1 %cmp.i682.i, label %if.then.i684.i, label %while.cond.i.if.end2.i689.i_crit_edge

while.cond.i.if.end2.i689.i_crit_edge:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i689.i

if.then.i684.i:                                   ; preds = %while.cond.i
  %89 = ptrtoint ptr %incdec.ptr.i680.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %incdec.ptr.i680.i, align 4
  %tobool.not.i683.i = icmp eq ptr %90, null
  br i1 %tobool.not.i683.i, label %if.then.i684.i.ref_next.exit691.i_crit_edge, label %if.then.i684.i.if.end2.i689.i_crit_edge

if.then.i684.i.if.end2.i689.i_crit_edge:          ; preds = %if.then.i684.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i689.i

if.then.i684.i.ref_next.exit691.i_crit_edge:      ; preds = %if.then.i684.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ref_next.exit691.i

if.end2.i689.i:                                   ; preds = %if.then.i684.i.if.end2.i689.i_crit_edge, %while.cond.i.if.end2.i689.i_crit_edge
  %ref.addr.0.i685.i = phi ptr [ %90, %if.then.i684.i.if.end2.i689.i_crit_edge ], [ %incdec.ptr.i680.i, %while.cond.i.if.end2.i689.i_crit_edge ]
  %flash_offset3.i686.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i685.i, i32 0, i32 1
  %91 = ptrtoint ptr %flash_offset3.i686.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flash_offset3.i686.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %92)
  %cmp4.i687.i = icmp eq i32 %92, -2
  %.ref.addr.0.i688.i = select i1 %cmp4.i687.i, ptr null, ptr %ref.addr.0.i685.i
  br label %ref_next.exit691.i

ref_next.exit691.i:                               ; preds = %if.end2.i689.i, %if.then.i684.i.ref_next.exit691.i_crit_edge
  %retval.0.i690.i = phi ptr [ null, %if.then.i684.i.ref_next.exit691.i_crit_edge ], [ %.ref.addr.0.i688.i, %if.end2.i689.i ]
  %cmp39.not.i = icmp eq ptr %retval.0.i690.i, %65
  %inc.i = add i32 %nr_refile.0.i, 1
  br i1 %cmp39.not.i, label %while.end.i, label %ref_next.exit691.i.while.cond.i_crit_edge

ref_next.exit691.i.while.cond.i_crit_edge:        ; preds = %ref_next.exit691.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %ref_next.exit691.i
  %and33.i = and i32 %86, -4
  %and36.i = and i32 %67, -4
  %93 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wbuf_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and33.i, i32 %94)
  %cmp42.i = icmp ult i32 %and33.i, %94
  br i1 %cmp42.i, label %if.end8.i.i, label %while.end.i.if.end105.i_crit_edge

while.end.i.if.end105.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.end8.i.i:                                      ; preds = %while.end.i
  %sub.i = sub i32 %and36.i, %and33.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i, i32 noundef 3264) #15
  %tobool45.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool45.not.i, label %do.end49.i, label %if.end52.i

do.end49.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #13
  br label %read_failed.i

if.end52.i:                                       ; preds = %if.end8.i.i
  %95 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %c, align 4
  %conv.i = zext i32 %and33.i to i64
  %97 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wbuf_ofs, align 4
  %sub55.i = sub i32 %98, %and33.i
  %call56.i = call i32 @mtd_read(ptr noundef %96, i64 noundef %conv.i, i32 noundef %sub55.i, ptr noundef nonnull %retlen.i, ptr noundef nonnull %call9.i.i) #10
  %99 = zext i32 %call56.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call56.i, label %if.end52.i.do.end78.i_crit_edge [
    i32 -117, label %if.end52.i.land.lhs.true62.i_crit_edge
    i32 -74, label %if.end52.i.land.lhs.true62.i_crit_edge457
    i32 0, label %if.end52.i.lor.lhs.false70.i_crit_edge
  ]

if.end52.i.lor.lhs.false70.i_crit_edge:           ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false70.i

if.end52.i.land.lhs.true62.i_crit_edge457:        ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true62.i

if.end52.i.land.lhs.true62.i_crit_edge:           ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true62.i

if.end52.i.do.end78.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78.i

land.lhs.true62.i:                                ; preds = %if.end52.i.land.lhs.true62.i_crit_edge, %if.end52.i.land.lhs.true62.i_crit_edge457
  %100 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %retlen.i, align 4
  %102 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %wbuf_ofs, align 4
  %sub64.i = sub i32 %103, %and33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %sub64.i)
  %cmp65.i = icmp eq i32 %101, %sub64.i
  br i1 %cmp65.i, label %land.lhs.true62.i.lor.lhs.false70.i_crit_edge, label %land.lhs.true62.i.do.end78.i_crit_edge

land.lhs.true62.i.do.end78.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78.i

land.lhs.true62.i.lor.lhs.false70.i_crit_edge:    ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false70.i

lor.lhs.false70.i:                                ; preds = %land.lhs.true62.i.lor.lhs.false70.i_crit_edge, %if.end52.i.lor.lhs.false70.i_crit_edge
  %104 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %retlen.i, align 4
  %106 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %wbuf_ofs, align 4
  %sub72.i = sub i32 %107, %and33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %sub72.i)
  %cmp73.not.i = icmp eq i32 %105, %sub72.i
  br i1 %cmp73.not.i, label %if.else99.i, label %lor.lhs.false70.i.do.end78.i_crit_edge

lor.lhs.false70.i.do.end78.i_crit_edge:           ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78.i

do.end78.i:                                       ; preds = %lor.lhs.false70.i.do.end78.i_crit_edge, %land.lhs.true62.i.do.end78.i_crit_edge, %if.end52.i.do.end78.i_crit_edge
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %read_failed.i

read_failed.i:                                    ; preds = %do.end78.i, %do.end49.i
  %108 = ptrtoint ptr %flash_offset.i.i334 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flash_offset.i.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp.i694.i = icmp eq i32 %109, -1
  br i1 %cmp.i694.i, label %if.then.i696.i, label %read_failed.i.if.end2.i701.i_crit_edge

read_failed.i.if.end2.i701.i_crit_edge:           ; preds = %read_failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i701.i

if.then.i696.i:                                   ; preds = %read_failed.i
  %110 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i695.i = icmp eq ptr %111, null
  br i1 %tobool.not.i695.i, label %if.then.i696.i.if.then93.critedge.i_crit_edge, label %if.then.i696.i.if.end2.i701.i_crit_edge

if.then.i696.i.if.end2.i701.i_crit_edge:          ; preds = %if.then.i696.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i701.i

if.then.i696.i.if.then93.critedge.i_crit_edge:    ; preds = %if.then.i696.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93.critedge.i

if.end2.i701.i:                                   ; preds = %if.then.i696.i.if.end2.i701.i_crit_edge, %read_failed.i.if.end2.i701.i_crit_edge
  %ref.addr.0.i697.i = phi ptr [ %111, %if.then.i696.i.if.end2.i701.i_crit_edge ], [ %incdec.ptr.i.i, %read_failed.i.if.end2.i701.i_crit_edge ]
  %flash_offset3.i698.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i697.i, i32 0, i32 1
  %112 = ptrtoint ptr %flash_offset3.i698.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flash_offset3.i698.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %113)
  %cmp4.i699.i = icmp eq i32 %113, -2
  %tobool83.not798.i = icmp eq ptr %ref.addr.0.i697.i, null
  %or.cond895.i = select i1 %cmp4.i699.i, i1 true, i1 %tobool83.not798.i
  br i1 %or.cond895.i, label %if.end2.i701.i.if.then93.critedge.i_crit_edge, label %if.end2.i701.i.land.rhs.i_crit_edge

if.end2.i701.i.land.rhs.i_crit_edge:              ; preds = %if.end2.i701.i
  br label %land.rhs.i

if.end2.i701.i.if.then93.critedge.i_crit_edge:    ; preds = %if.end2.i701.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93.critedge.i

land.rhs.i:                                       ; preds = %if.end2.i713.i.land.rhs.i_crit_edge, %if.end2.i701.i.land.rhs.i_crit_edge
  %nr_refile.1800.in.i = phi i32 [ %nr_refile.1800.i, %if.end2.i713.i.land.rhs.i_crit_edge ], [ %nr_refile.0.i, %if.end2.i701.i.land.rhs.i_crit_edge ]
  %first_raw.1799.i = phi ptr [ %ref.addr.0.i709.i, %if.end2.i713.i.land.rhs.i_crit_edge ], [ %ref.addr.0.i697.i, %if.end2.i701.i.land.rhs.i_crit_edge ]
  %nr_refile.1800.i = add i32 %nr_refile.1800.in.i, -1
  %flash_offset84.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %first_raw.1799.i, i32 0, i32 1
  %114 = ptrtoint ptr %flash_offset84.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flash_offset84.i, align 4
  %and85.i = and i32 %115, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and85.i)
  %cmp86.i = icmp eq i32 %and85.i, 1
  br i1 %cmp86.i, label %while.body88.i, label %if.end95.i

while.body88.i:                                   ; preds = %land.rhs.i
  %incdec.ptr.i704.i = getelementptr %struct.jffs2_raw_node_ref, ptr %first_raw.1799.i, i32 1
  %flash_offset.i705.i = getelementptr %struct.jffs2_raw_node_ref, ptr %first_raw.1799.i, i32 1, i32 1
  %116 = ptrtoint ptr %flash_offset.i705.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flash_offset.i705.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %cmp.i706.i = icmp eq i32 %117, -1
  br i1 %cmp.i706.i, label %if.then.i708.i, label %while.body88.i.if.end2.i713.i_crit_edge

while.body88.i.if.end2.i713.i_crit_edge:          ; preds = %while.body88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i713.i

if.then.i708.i:                                   ; preds = %while.body88.i
  %118 = ptrtoint ptr %incdec.ptr.i704.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %incdec.ptr.i704.i, align 4
  %tobool.not.i707.i = icmp eq ptr %119, null
  br i1 %tobool.not.i707.i, label %if.then.i708.i.if.then93.critedge.i_crit_edge, label %if.then.i708.i.if.end2.i713.i_crit_edge

if.then.i708.i.if.end2.i713.i_crit_edge:          ; preds = %if.then.i708.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i713.i

if.then.i708.i.if.then93.critedge.i_crit_edge:    ; preds = %if.then.i708.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93.critedge.i

if.end2.i713.i:                                   ; preds = %if.then.i708.i.if.end2.i713.i_crit_edge, %while.body88.i.if.end2.i713.i_crit_edge
  %ref.addr.0.i709.i = phi ptr [ %119, %if.then.i708.i.if.end2.i713.i_crit_edge ], [ %incdec.ptr.i704.i, %while.body88.i.if.end2.i713.i_crit_edge ]
  %flash_offset3.i710.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i709.i, i32 0, i32 1
  %120 = ptrtoint ptr %flash_offset3.i710.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flash_offset3.i710.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %121)
  %cmp4.i711.i = icmp eq i32 %121, -2
  %tobool83.not.i = icmp eq ptr %ref.addr.0.i709.i, null
  %or.cond896.i = select i1 %cmp4.i711.i, i1 true, i1 %tobool83.not.i
  br i1 %or.cond896.i, label %if.end2.i713.i.if.then93.critedge.i_crit_edge, label %if.end2.i713.i.land.rhs.i_crit_edge

if.end2.i713.i.land.rhs.i_crit_edge:              ; preds = %if.end2.i713.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

if.end2.i713.i.if.then93.critedge.i_crit_edge:    ; preds = %if.end2.i713.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93.critedge.i

if.then93.critedge.i:                             ; preds = %if.end2.i713.i.if.then93.critedge.i_crit_edge, %if.then.i708.i.if.then93.critedge.i_crit_edge, %if.end2.i701.i.if.then93.critedge.i_crit_edge, %if.then.i696.i.if.then93.critedge.i_crit_edge
  %122 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %wbuf_len, align 4
  br label %jffs2_wbuf_recover.exit

if.end95.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %and97.i = and i32 %115, -4
  br label %if.end105.i

if.else99.i:                                      ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %105
  %123 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wbuf, align 4
  %sub103.i = sub i32 %and36.i, %107
  %125 = call ptr @memcpy(ptr %add.ptr.i, ptr %124, i32 %sub103.i)
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else99.i, %if.end95.i, %while.end.i.if.end105.i_crit_edge
  %start.0.i = phi i32 [ %and97.i, %if.end95.i ], [ %and33.i, %if.else99.i ], [ %and33.i, %while.end.i.if.end105.i_crit_edge ]
  %buf.1.i = phi ptr [ null, %if.end95.i ], [ %call9.i.i, %if.else99.i ], [ null, %while.end.i.if.end105.i_crit_edge ]
  %nr_refile.2.i = phi i32 [ %nr_refile.1800.i, %if.end95.i ], [ %nr_refile.0.i, %if.else99.i ], [ %nr_refile.0.i, %while.end.i.if.end105.i_crit_edge ]
  %first_raw.2.i = phi ptr [ %first_raw.1799.i, %if.end95.i ], [ %raw.0796.i, %if.else99.i ], [ %raw.0796.i, %while.end.i.if.end105.i_crit_edge ]
  %sub106.i = sub i32 %and36.i, %start.0.i
  %call107.i = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %sub106.i, ptr noundef nonnull %len.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.end115.i, label %do.end112.i

do.end112.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #13
  call void @kfree(ptr noundef %buf.1.i) #10
  br label %jffs2_wbuf_recover.exit

if.end115.i:                                      ; preds = %if.end105.i
  %summary.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %126 = ptrtoint ptr %summary.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %summary.i, align 4
  call void @jffs2_sum_disable_collecting(ptr noundef %127) #10
  %128 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %nextblock, align 4
  %call116.i = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %129, i32 noundef %nr_refile.2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %if.end124.i, label %do.end121.i

do.end121.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  %call123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  call void @kfree(ptr noundef %buf.1.i) #10
  br label %jffs2_wbuf_recover.exit

if.end124.i:                                      ; preds = %if.end115.i
  %130 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %nextblock, align 4
  %offset.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %offset.i, align 4
  %134 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sector_size, align 4
  %add.i = add i32 %135, %133
  %free_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %131, i32 0, i32 7
  %136 = ptrtoint ptr %free_size.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %free_size.i, align 4
  %sub128.i = sub i32 %add.i, %137
  %138 = ptrtoint ptr %wbuf_pagesize44 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wbuf_pagesize44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub106.i, i32 %139)
  %cmp130.not.i = icmp ult i32 %sub106.i, %139
  %tobool180.not.i = icmp eq ptr %buf.1.i, null
  br i1 %cmp130.not.i, label %if.else179.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.end124.i
  br i1 %tobool180.not.i, label %cond.false.i, label %if.then132.i.cond.end.i_crit_edge

if.then132.i.cond.end.i_crit_edge:                ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wbuf, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then132.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %141, %cond.false.i ], [ %buf.1.i, %if.then132.i.cond.end.i_crit_edge ]
  %rem138.i = urem i32 %sub106.i, %139
  %sub139.i = sub i32 %sub106.i, %rem138.i
  %142 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %c, align 4
  %conv144.i = zext i32 %sub128.i to i64
  %call145.i = call i32 @mtd_write(ptr noundef %143, i64 noundef %conv144.i, i32 noundef %sub139.i, ptr noundef nonnull %retlen.i, ptr noundef %cond.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %tobool146.not.i = icmp eq i32 %call145.i, 0
  br i1 %tobool146.not.i, label %lor.lhs.false147.i, label %cond.end.i.do.end156.i_crit_edge

cond.end.i.do.end156.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i

lor.lhs.false147.i:                               ; preds = %cond.end.i
  %144 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %sub139.i)
  %cmp148.not.i = icmp eq i32 %145, %sub139.i
  br i1 %cmp148.not.i, label %lor.lhs.false150.i, label %lor.lhs.false147.i.do.end156.i_crit_edge

lor.lhs.false147.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i

lor.lhs.false150.i:                               ; preds = %lor.lhs.false147.i
  %call151.i = call fastcc i32 @jffs2_verify_write(ptr noundef %c, ptr noundef %cond.i, i32 noundef %sub128.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %do.end167.i, label %lor.lhs.false150.i.do.end156.i_crit_edge

lor.lhs.false150.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i

do.end156.i:                                      ; preds = %lor.lhs.false150.i.do.end156.i_crit_edge, %lor.lhs.false147.i.do.end156.i_crit_edge, %cond.end.i.do.end156.i_crit_edge
  %call158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #13
  call void @kfree(ptr noundef %buf.1.i) #10
  %146 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool159.not.i = icmp eq i32 %147, 0
  br i1 %tobool159.not.i, label %do.end156.i.jffs2_wbuf_recover.exit_crit_edge, label %if.then160.i

do.end156.i.jffs2_wbuf_recover.exit_crit_edge:    ; preds = %do.end156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_wbuf_recover.exit

if.then160.i:                                     ; preds = %do.end156.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %sub128.i, 1
  %call161.i = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx.i, ptr noundef nonnull %first_raw.2.i) #10
  %call162.i = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or.i, i32 noundef %call161.i, ptr noundef null) #10
  br label %jffs2_wbuf_recover.exit

do.end167.i:                                      ; preds = %lor.lhs.false150.i
  call void @__sanitizer_cov_trace_pc() #12
  %call169.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %sub128.i) #13
  %148 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %rem138.i, ptr %wbuf_len, align 4
  %add173.i = add i32 %sub139.i, %sub128.i
  %149 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add173.i, ptr %wbuf_ofs, align 4
  %150 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wbuf, align 4
  %add.ptr176.i = getelementptr i8, ptr %cond.i, i32 %sub139.i
  %152 = call ptr @memmove(ptr %151, ptr %add.ptr176.i, i32 %rem138.i)
  br label %if.end195.i

if.else179.i:                                     ; preds = %if.end124.i
  %153 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wbuf, align 4
  br i1 %tobool180.not.i, label %if.else184.i, label %if.then181.i

if.then181.i:                                     ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = call ptr @memcpy(ptr %154, ptr %buf.1.i, i32 %sub106.i)
  br label %if.end191.i

if.else184.i:                                     ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %wbuf_ofs, align 4
  %sub188.i = sub i32 %start.0.i, %157
  %add.ptr189.i = getelementptr i8, ptr %154, i32 %sub188.i
  %158 = call ptr @memmove(ptr %154, ptr %add.ptr189.i, i32 %sub106.i)
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.else184.i, %if.then181.i
  %159 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %sub128.i, ptr %wbuf_ofs, align 4
  %160 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %sub106.i, ptr %wbuf_len, align 4
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.end191.i, %do.end167.i
  %161 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %blocks, align 4
  %163 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sector_size, align 4
  %div198.i = udiv i32 %sub128.i, %164
  %arrayidx199.i = getelementptr %struct.jffs2_eraseblock, ptr %162, i32 %div198.i
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #10
  %165 = ptrtoint ptr %last_node.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %last_node.i, align 4
  %cmp203.not802.i = icmp eq ptr %first_raw.2.i, %166
  br i1 %cmp203.not802.i, label %if.end195.i.for.end444.i_crit_edge, label %for.body205.lr.ph.i

if.end195.i.for.end444.i_crit_edge:               ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end444.i

for.body205.lr.ph.i:                              ; preds = %if.end195.i
  %dirty_size.i = getelementptr %struct.jffs2_eraseblock, ptr %53, i32 %div.i, i32 5
  %used_size.i = getelementptr %struct.jffs2_eraseblock, ptr %53, i32 %div.i, i32 4
  %dirty_size413.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %used_size415.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  br label %for.body205.i

for.body205.i:                                    ; preds = %ref_next.exit733.i.for.body205.i_crit_edge, %for.body205.lr.ph.i
  %raw.2804.i = phi ptr [ %first_raw.2.i, %for.body205.lr.ph.i ], [ %retval.0.i732.i, %ref_next.exit733.i.for.body205.i_crit_edge ]
  %ofs.0803.i = phi i32 [ %sub128.i, %for.body205.lr.ph.i ], [ %add441.i, %ref_next.exit733.i.for.body205.i_crit_edge ]
  %call206.i = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx.i, ptr noundef %raw.2804.i) #10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body205.i
  %raw.addr.0.i.i = phi ptr [ %raw.2804.i, %for.body205.i ], [ %168, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %167 = ptrtoint ptr %raw.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %raw.addr.0.i.i, align 4
  %tobool.not.i716.i = icmp eq ptr %168, null
  br i1 %tobool.not.i716.i, label %jffs2_raw_ref_to_ic.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

jffs2_raw_ref_to_ic.exit.i:                       ; preds = %while.cond.i.i
  %tobool211.not.i = icmp eq ptr %raw.addr.0.i.i, null
  br i1 %tobool211.not.i, label %jffs2_raw_ref_to_ic.exit.i.if.end376.i_crit_edge, label %land.lhs.true212.i

jffs2_raw_ref_to_ic.exit.i.if.end376.i_crit_edge: ; preds = %jffs2_raw_ref_to_ic.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

land.lhs.true212.i:                               ; preds = %jffs2_raw_ref_to_ic.exit.i
  %class.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %raw.addr.0.i.i, i32 0, i32 2
  %169 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %class.i, align 4
  %171 = zext i8 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %170, label %land.lhs.true212.i.if.end376.i_crit_edge [
    i8 1, label %if.then216.i
    i8 2, label %if.then244.i
    i8 0, label %if.then274.i
  ]

land.lhs.true212.i.if.end376.i_crit_edge:         ; preds = %land.lhs.true212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

if.then216.i:                                     ; preds = %land.lhs.true212.i
  %node.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %raw.addr.0.i.i, i32 0, i32 1
  %172 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %node.i, align 4
  %cmp218.not.i = icmp eq ptr %173, %raw.2804.i
  br i1 %cmp218.not.i, label %if.then216.i.if.end376.sink.split.i_crit_edge, label %do.body227.i, !prof !174

if.then216.i.if.end376.sink.split.i_crit_edge:    ; preds = %if.then216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.sink.split.i

do.body227.i:                                     ; preds = %if.then216.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 478, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

if.then244.i:                                     ; preds = %land.lhs.true212.i
  %node246.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %raw.addr.0.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %node246.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %node246.i, align 4
  %cmp247.not.i = icmp eq ptr %175, %raw.2804.i
  br i1 %cmp247.not.i, label %if.then244.i.if.end376.sink.split.i_crit_edge, label %do.body256.i, !prof !174

if.then244.i.if.end376.sink.split.i_crit_edge:    ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.sink.split.i

do.body256.i:                                     ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 484, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

if.then274.i:                                     ; preds = %land.lhs.true212.i
  %nodes.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %raw.addr.0.i.i, i32 0, i32 1
  br label %while.cond275.i

while.cond275.i:                                  ; preds = %while.body281.i.while.cond275.i_crit_edge, %if.then274.i
  %p.0.i = phi ptr [ %nodes.i, %if.then274.i ], [ %177, %while.body281.i.while.cond275.i_crit_edge ]
  %176 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %p.0.i, align 4
  %tobool276.not.i = icmp eq ptr %177, null
  %cmp278.not.i = icmp eq ptr %177, %raw.addr.0.i.i
  %or.cond.i = or i1 %tobool276.not.i, %cmp278.not.i
  br i1 %or.cond.i, label %while.cond275.i.while.end289.i_crit_edge, label %while.body281.i

while.cond275.i.while.end289.i_crit_edge:         ; preds = %while.cond275.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end289.i

while.body281.i:                                  ; preds = %while.cond275.i
  %cmp282.i = icmp eq ptr %177, %raw.2804.i
  br i1 %cmp282.i, label %if.then284.i, label %while.body281.i.while.cond275.i_crit_edge

while.body281.i.while.cond275.i_crit_edge:        ; preds = %while.body281.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond275.i

if.then284.i:                                     ; preds = %while.body281.i
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %raw.2804.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %raw.2804.i, align 4
  %180 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %p.0.i, align 4
  store ptr null, ptr %raw.2804.i, align 4
  br label %while.end289.i

while.end289.i:                                   ; preds = %if.then284.i, %while.cond275.i.while.end289.i_crit_edge
  %state.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %raw.addr.0.i.i, i32 0, i32 4
  %181 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %182)
  %cmp291.i = icmp eq i16 %182, 2
  br i1 %cmp291.i, label %land.lhs.true293.i, label %if.else332.i

land.lhs.true293.i:                               ; preds = %while.end289.i
  %flash_offset294.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.2804.i, i32 0, i32 1
  %183 = ptrtoint ptr %flash_offset294.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %flash_offset294.i, align 4
  %and295.i = and i32 %184, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and295.i)
  %cmp296.i = icmp eq i32 %and295.i, 1
  br i1 %cmp296.i, label %land.lhs.true293.i.if.end376.i_crit_edge, label %if.then298.i

land.lhs.true293.i.if.end376.i_crit_edge:         ; preds = %land.lhs.true293.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

if.then298.i:                                     ; preds = %land.lhs.true293.i
  %ino.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %raw.addr.0.i.i, i32 0, i32 5
  %185 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ino.i, align 4
  %pino_nlink.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %raw.addr.0.i.i, i32 0, i32 8
  %187 = ptrtoint ptr %pino_nlink.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %pino_nlink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool299.not.i = icmp eq i32 %188, 0
  %lnot.ext301.i = zext i1 %tobool299.not.i to i32
  %call302.i = call ptr @jffs2_gc_fetch_inode(ptr noundef %c, i32 noundef %186, i32 noundef %lnot.ext301.i) #10
  %cmp.i717.i = icmp ugt ptr %call302.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i717.i, label %do.end307.i, label %if.end320.i

do.end307.i:                                      ; preds = %if.then298.i
  call void @__sanitizer_cov_trace_pc() #12
  %ino.i.le = getelementptr inbounds %struct.jffs2_inode_cache, ptr %raw.addr.0.i.i, i32 0, i32 5
  %189 = call i32 @llvm.read_register.i32(metadata !162) #10
  %and.i.i = and i32 %189, -16384
  %190 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %192, i32 0, i32 68
  %193 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pid.i.i, align 8
  %195 = ptrtoint ptr %ino.i.le to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ino.i.le, align 4
  %197 = ptrtoint ptr %call302.i to i32
  %call313.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %194, ptr noundef nonnull @.str.65, i32 noundef %196, i32 noundef %197) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 510, 0\0A.popsection", ""() #10, !srcloc !178
  unreachable

if.end320.i:                                      ; preds = %if.then298.i
  br i1 %tobool180.not.i, label %cond.false323.i, label %if.end320.i.cond.end325.i_crit_edge

if.end320.i.cond.end325.i_crit_edge:              ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end325.i

cond.false323.i:                                  ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wbuf, align 4
  br label %cond.end325.i

cond.end325.i:                                    ; preds = %cond.false323.i, %if.end320.i.cond.end325.i_crit_edge
  %cond326.i = phi ptr [ %199, %cond.false323.i ], [ %buf.1.i, %if.end320.i.cond.end325.i_crit_edge ]
  %200 = ptrtoint ptr %flash_offset294.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %flash_offset294.i, align 4
  %and328.i = and i32 %201, -4
  %sub329.i = sub i32 %and328.i, %start.0.i
  %add.ptr330.i = getelementptr i8, ptr %cond326.i, i32 %sub329.i
  %202 = ptrtoint ptr %add.ptr330.i to i32
  call void @__asan_loadN_noabort(i32 %202, i32 2)
  %203 = load i16, ptr %add.ptr330.i, align 1
  %204 = zext i16 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %203, label %do.body8.i.i [
    i16 6533, label %cond.end325.i.do.end13.i.i_crit_edge
    i16 0, label %cond.end325.i.do.end13.i.i_crit_edge458
  ]

cond.end325.i.do.end13.i.i_crit_edge458:          ; preds = %cond.end325.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i.i

cond.end325.i.do.end13.i.i_crit_edge:             ; preds = %cond.end325.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i.i

do.body8.i.i:                                     ; preds = %cond.end325.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

do.end13.i.i:                                     ; preds = %cond.end325.i.do.end13.i.i_crit_edge, %cond.end325.i.do.end13.i.i_crit_edge458
  %nodetype.i.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %add.ptr330.i, i32 0, i32 1
  %205 = ptrtoint ptr %nodetype.i.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %206 = load i16, ptr %nodetype.i.i, align 1
  %207 = zext i16 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %206, label %do.end13.i.i.if.end376.i_crit_edge [
    i16 -8190, label %sw.bb.i.i
    i16 -8191, label %sw.bb77.i.i
  ]

do.end13.i.i.if.end376.i_crit_edge:               ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

sw.bb.i.i:                                        ; preds = %do.end13.i.i
  %metadata.i.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %call302.i, i32 0, i32 3
  %208 = ptrtoint ptr %metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %metadata.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %209, null
  br i1 %tobool16.not.i.i, label %sw.bb.i.i.if.end25.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.i.i.if.end25.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %cmp19.i.i = icmp eq ptr %211, %raw.2804.i
  br i1 %cmp19.i.i, label %land.lhs.true.i.i.if.end376.i_crit_edge, label %land.lhs.true.i.i.if.end25.i.i_crit_edge

land.lhs.true.i.i.if.end25.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i

land.lhs.true.i.i.if.end376.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

if.end25.i.i:                                     ; preds = %land.lhs.true.i.i.if.end25.i.i_crit_edge, %sw.bb.i.i.if.end25.i.i_crit_edge
  %fragtree.i.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %call302.i, i32 0, i32 2
  %offset.i.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %add.ptr330.i, i32 0, i32 13
  %212 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %offset.i.i, align 1
  %call.i.i = call ptr @jffs2_lookup_node_frag(ptr noundef %fragtree.i.i, i32 noundef %213) #10
  %tobool27.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool27.not.i.i, label %do.body37.i.i, label %if.end25.i.i.while.cond.i718.i_crit_edge, !prof !180

if.end25.i.i.while.cond.i718.i_crit_edge:         ; preds = %if.end25.i.i
  br label %while.cond.i718.i

do.body37.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !181
  unreachable

while.cond.i718.i:                                ; preds = %while.body.i.i.while.cond.i718.i_crit_edge, %if.end25.i.i.while.cond.i718.i_crit_edge
  %frag.0.i.i = phi ptr [ %call52.i.i, %while.body.i.i.while.cond.i718.i_crit_edge ], [ %call.i.i, %if.end25.i.i.while.cond.i718.i_crit_edge ]
  %node46.i.i = getelementptr inbounds %struct.jffs2_node_frag, ptr %frag.0.i.i, i32 0, i32 1
  %214 = ptrtoint ptr %node46.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %node46.i.i, align 4
  %tobool47.not.i.i = icmp eq ptr %215, null
  br i1 %tobool47.not.i.i, label %while.cond.i718.i.while.body.i.i_crit_edge, label %lor.rhs.i.i

while.cond.i718.i.while.body.i.i_crit_edge:       ; preds = %while.cond.i718.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i718.i
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %cmp50.not.i.i = icmp eq ptr %217, %raw.2804.i
  br i1 %cmp50.not.i.i, label %lor.rhs.i.i.if.end376.i_crit_edge, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

lor.rhs.i.i.if.end376.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %while.cond.i718.i.while.body.i.i_crit_edge
  %call52.i.i = call ptr @rb_next(ptr noundef nonnull %frag.0.i.i) #10
  %tobool55.not.i.i = icmp eq ptr %call52.i.i, null
  br i1 %tobool55.not.i.i, label %do.body65.i.i, label %while.body.i.i.while.cond.i718.i_crit_edge, !prof !180

while.body.i.i.while.cond.i718.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i718.i

do.body65.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #10, !srcloc !182
  unreachable

sw.bb77.i.i:                                      ; preds = %do.end13.i.i
  %dents.i.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %call302.i, i32 0, i32 4
  %218 = ptrtoint ptr %dents.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %fd.04.i.i = load ptr, ptr %dents.i.i, align 4
  %tobool78.not5.i.i = icmp eq ptr %fd.04.i.i, null
  br i1 %tobool78.not5.i.i, label %sw.bb77.i.i.do.body84.i.i_crit_edge, label %sw.bb77.i.i.for.body.i.i_crit_edge

sw.bb77.i.i.for.body.i.i_crit_edge:               ; preds = %sw.bb77.i.i
  br label %for.body.i.i

sw.bb77.i.i.do.body84.i.i_crit_edge:              ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body84.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb77.i.i.for.body.i.i_crit_edge
  %fd.06.i.i = phi ptr [ %fd.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %fd.04.i.i, %sw.bb77.i.i.for.body.i.i_crit_edge ]
  %219 = ptrtoint ptr %fd.06.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %fd.06.i.i, align 4
  %cmp79.i.i = icmp eq ptr %220, %raw.2804.i
  br i1 %cmp79.i.i, label %for.body.i.i.if.end376.i_crit_edge, label %for.inc.i.i

for.body.i.i.if.end376.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.06.i.i, i32 0, i32 1
  %221 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %fd.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool78.not.i.i = icmp eq ptr %fd.0.i.i, null
  br i1 %tobool78.not.i.i, label %for.inc.i.i.do.body84.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.do.body84.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body84.i.i

do.body84.i.i:                                    ; preds = %for.inc.i.i.do.body84.i.i_crit_edge, %sw.bb77.i.i.do.body84.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #10, !srcloc !183
  unreachable

if.else332.i:                                     ; preds = %while.end289.i
  %.off.i = add i16 %182, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 3
  br i1 %switch.i, label %if.else332.i.if.end376.i_crit_edge, label %do.end357.critedge.i

if.else332.i.if.end376.i_crit_edge:               ; preds = %if.else332.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end376.i

do.end357.critedge.i:                             ; preds = %if.else332.i
  call void @__sanitizer_cov_trace_pc() #12
  %222 = call i32 @llvm.read_register.i32(metadata !162) #10
  %and.i720.i = and i32 %222, -16384
  %223 = inttoptr i32 %and.i720.i to ptr
  %task360.i = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %task360.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %task360.i, align 8
  %pid.i721.i = getelementptr inbounds %struct.task_struct, ptr %225, i32 0, i32 68
  %226 = ptrtoint ptr %pid.i721.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pid.i721.i, align 8
  %ino362.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %raw.addr.0.i.i, i32 0, i32 5
  %228 = ptrtoint ptr %ino362.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ino362.i, align 4
  %conv364.i = zext i16 %182 to i32
  %call365.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %227, ptr noundef nonnull @.str.65, i32 noundef %229, i32 noundef %conv364.i) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 523, 0\0A.popsection", ""() #10, !srcloc !184
  unreachable

if.end376.sink.split.i:                           ; preds = %if.then244.i.if.end376.sink.split.i_crit_edge, %if.then216.i.if.end376.sink.split.i_crit_edge
  %adjust_ref.1.ph.i = phi ptr [ %node.i, %if.then216.i.if.end376.sink.split.i_crit_edge ], [ %node246.i, %if.then244.i.if.end376.sink.split.i_crit_edge ]
  %230 = ptrtoint ptr %raw.2804.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %raw.2804.i, align 4
  br label %if.end376.i

if.end376.i:                                      ; preds = %if.end376.sink.split.i, %if.else332.i.if.end376.i_crit_edge, %for.body.i.i.if.end376.i_crit_edge, %lor.rhs.i.i.if.end376.i_crit_edge, %land.lhs.true.i.i.if.end376.i_crit_edge, %do.end13.i.i.if.end376.i_crit_edge, %land.lhs.true293.i.if.end376.i_crit_edge, %land.lhs.true212.i.if.end376.i_crit_edge, %jffs2_raw_ref_to_ic.exit.i.if.end376.i_crit_edge
  %ic.0.i = phi ptr [ null, %jffs2_raw_ref_to_ic.exit.i.if.end376.i_crit_edge ], [ %raw.addr.0.i.i, %if.else332.i.if.end376.i_crit_edge ], [ %raw.addr.0.i.i, %do.end13.i.i.if.end376.i_crit_edge ], [ %raw.addr.0.i.i, %land.lhs.true.i.i.if.end376.i_crit_edge ], [ %raw.addr.0.i.i, %land.lhs.true293.i.if.end376.i_crit_edge ], [ %raw.addr.0.i.i, %land.lhs.true212.i.if.end376.i_crit_edge ], [ null, %if.end376.sink.split.i ], [ %raw.addr.0.i.i, %lor.rhs.i.i.if.end376.i_crit_edge ], [ %raw.addr.0.i.i, %for.body.i.i.if.end376.i_crit_edge ]
  %adjust_ref.1.i = phi ptr [ null, %jffs2_raw_ref_to_ic.exit.i.if.end376.i_crit_edge ], [ null, %if.else332.i.if.end376.i_crit_edge ], [ null, %do.end13.i.i.if.end376.i_crit_edge ], [ %209, %land.lhs.true.i.i.if.end376.i_crit_edge ], [ null, %land.lhs.true293.i.if.end376.i_crit_edge ], [ null, %land.lhs.true212.i.if.end376.i_crit_edge ], [ %adjust_ref.1.ph.i, %if.end376.sink.split.i ], [ %215, %lor.rhs.i.i.if.end376.i_crit_edge ], [ %fd.06.i.i, %for.body.i.i.if.end376.i_crit_edge ]
  %f.1.i = phi ptr [ null, %jffs2_raw_ref_to_ic.exit.i.if.end376.i_crit_edge ], [ null, %if.else332.i.if.end376.i_crit_edge ], [ %call302.i, %do.end13.i.i.if.end376.i_crit_edge ], [ %call302.i, %land.lhs.true.i.i.if.end376.i_crit_edge ], [ null, %land.lhs.true293.i.if.end376.i_crit_edge ], [ null, %land.lhs.true212.i.if.end376.i_crit_edge ], [ null, %if.end376.sink.split.i ], [ %call302.i, %lor.rhs.i.i.if.end376.i_crit_edge ], [ %call302.i, %for.body.i.i.if.end376.i_crit_edge ]
  %flash_offset377.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.2804.i, i32 0, i32 1
  %231 = ptrtoint ptr %flash_offset377.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %flash_offset377.i, align 4
  %and378.i = and i32 %232, 3
  %or379.i = or i32 %and378.i, %ofs.0803.i
  %call380.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %arrayidx199.i, i32 noundef %or379.i, i32 noundef %call206.i, ptr noundef %ic.0.i) #10
  %tobool381.not.i = icmp eq ptr %adjust_ref.1.i, null
  br i1 %tobool381.not.i, label %if.end376.i.if.end402.i_crit_edge, label %do.body383.i

if.end376.i.if.end402.i_crit_edge:                ; preds = %if.end376.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402.i

do.body383.i:                                     ; preds = %if.end376.i
  %233 = ptrtoint ptr %adjust_ref.1.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %adjust_ref.1.i, align 4
  %cmp384.not.i = icmp eq ptr %234, %raw.2804.i
  br i1 %cmp384.not.i, label %do.end401.i, label %do.body393.i, !prof !174

do.body393.i:                                     ; preds = %do.body383.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 530, 0\0A.popsection", ""() #10, !srcloc !185
  unreachable

do.end401.i:                                      ; preds = %do.body383.i
  call void @__sanitizer_cov_trace_pc() #12
  %235 = ptrtoint ptr %adjust_ref.1.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call380.i, ptr %adjust_ref.1.i, align 4
  br label %if.end402.i

if.end402.i:                                      ; preds = %do.end401.i, %if.end376.i.if.end402.i_crit_edge
  %tobool403.not.i = icmp eq ptr %f.1.i, null
  br i1 %tobool403.not.i, label %if.end402.i.if.end405.i_crit_edge, label %if.then404.i

if.end402.i.if.end405.i_crit_edge:                ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end405.i

if.then404.i:                                     ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @jffs2_gc_release_inode(ptr noundef %c, ptr noundef nonnull %f.1.i) #10
  br label %if.end405.i

if.end405.i:                                      ; preds = %if.then404.i, %if.end402.i.if.end405.i_crit_edge
  %236 = ptrtoint ptr %flash_offset377.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %flash_offset377.i, align 4
  %and407.i = and i32 %237, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and407.i)
  %cmp408.i = icmp eq i32 %and407.i, 1
  br i1 %cmp408.i, label %if.end405.i.if.end440.i_crit_edge, label %if.then410.i

if.end405.i.if.end440.i_crit_edge:                ; preds = %if.end405.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end440.i

if.then410.i:                                     ; preds = %if.end405.i
  %238 = ptrtoint ptr %dirty_size.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %dirty_size.i, align 4
  %add411.i = add i32 %239, %call206.i
  store i32 %add411.i, ptr %dirty_size.i, align 4
  %240 = ptrtoint ptr %used_size.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %used_size.i, align 4
  %sub412.i = sub i32 %241, %call206.i
  store i32 %sub412.i, ptr %used_size.i, align 4
  %242 = ptrtoint ptr %dirty_size413.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %dirty_size413.i, align 4
  %add414.i = add i32 %243, %call206.i
  store i32 %add414.i, ptr %dirty_size413.i, align 4
  %244 = ptrtoint ptr %used_size415.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %used_size415.i, align 4
  %sub416.i = sub i32 %245, %call206.i
  store i32 %sub416.i, ptr %used_size415.i, align 4
  %246 = ptrtoint ptr %flash_offset377.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flash_offset377.i, align 4
  %and418.i = and i32 %247, -4
  %or419.i = or i32 %and418.i, 1
  store i32 %or419.i, ptr %flash_offset377.i, align 4
  %248 = ptrtoint ptr %raw.2804.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %raw.2804.i, align 4
  %tobool423.not.i = icmp eq ptr %249, null
  br i1 %tobool423.not.i, label %if.then410.i.if.end440.i_crit_edge, label %do.body431.i, !prof !174

if.then410.i.if.end440.i_crit_edge:               ; preds = %if.then410.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end440.i

do.body431.i:                                     ; preds = %if.then410.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 542, 0\0A.popsection", ""() #10, !srcloc !186
  unreachable

if.end440.i:                                      ; preds = %if.then410.i.if.end440.i_crit_edge, %if.end405.i.if.end440.i_crit_edge
  %add441.i = add i32 %call206.i, %ofs.0803.i
  %incdec.ptr.i722.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.2804.i, i32 1
  %flash_offset.i723.i = getelementptr %struct.jffs2_raw_node_ref, ptr %raw.2804.i, i32 1, i32 1
  %250 = ptrtoint ptr %flash_offset.i723.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %flash_offset.i723.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %251)
  %cmp.i724.i = icmp eq i32 %251, -1
  br i1 %cmp.i724.i, label %if.then.i726.i, label %if.end440.i.if.end2.i731.i_crit_edge

if.end440.i.if.end2.i731.i_crit_edge:             ; preds = %if.end440.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i731.i

if.then.i726.i:                                   ; preds = %if.end440.i
  %252 = ptrtoint ptr %incdec.ptr.i722.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %incdec.ptr.i722.i, align 4
  %tobool.not.i725.i = icmp eq ptr %253, null
  br i1 %tobool.not.i725.i, label %if.then.i726.i.ref_next.exit733.i_crit_edge, label %if.then.i726.i.if.end2.i731.i_crit_edge

if.then.i726.i.if.end2.i731.i_crit_edge:          ; preds = %if.then.i726.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i731.i

if.then.i726.i.ref_next.exit733.i_crit_edge:      ; preds = %if.then.i726.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ref_next.exit733.i

if.end2.i731.i:                                   ; preds = %if.then.i726.i.if.end2.i731.i_crit_edge, %if.end440.i.if.end2.i731.i_crit_edge
  %ref.addr.0.i727.i = phi ptr [ %253, %if.then.i726.i.if.end2.i731.i_crit_edge ], [ %incdec.ptr.i722.i, %if.end440.i.if.end2.i731.i_crit_edge ]
  %flash_offset3.i728.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i727.i, i32 0, i32 1
  %254 = ptrtoint ptr %flash_offset3.i728.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %flash_offset3.i728.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %255)
  %cmp4.i729.i = icmp eq i32 %255, -2
  %.ref.addr.0.i730.i = select i1 %cmp4.i729.i, ptr null, ptr %ref.addr.0.i727.i
  br label %ref_next.exit733.i

ref_next.exit733.i:                               ; preds = %if.end2.i731.i, %if.then.i726.i.ref_next.exit733.i_crit_edge
  %retval.0.i732.i = phi ptr [ null, %if.then.i726.i.ref_next.exit733.i_crit_edge ], [ %.ref.addr.0.i730.i, %if.end2.i731.i ]
  %256 = ptrtoint ptr %last_node.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %last_node.i, align 4
  %cmp203.not.i = icmp eq ptr %retval.0.i732.i, %257
  br i1 %cmp203.not.i, label %ref_next.exit733.i.for.end444.i_crit_edge, label %ref_next.exit733.i.for.body205.i_crit_edge

ref_next.exit733.i.for.body205.i_crit_edge:       ; preds = %ref_next.exit733.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body205.i

ref_next.exit733.i.for.end444.i_crit_edge:        ; preds = %ref_next.exit733.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end444.i

for.end444.i:                                     ; preds = %ref_next.exit733.i.for.end444.i_crit_edge, %if.end195.i.for.end444.i_crit_edge
  call void @kfree(ptr noundef %buf.1.i) #10
  %258 = ptrtoint ptr %first_node.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %first_node.i, align 4
  %cmp446.i = icmp eq ptr %first_raw.2.i, %259
  br i1 %cmp446.i, label %do.end451.i, label %for.end444.i.if.end453.i_crit_edge

for.end444.i.if.end453.i_crit_edge:               ; preds = %for.end444.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end453.i

do.end451.i:                                      ; preds = %for.end444.i
  %erase_pending_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i) #10
  br i1 %call.i.i.i, label %if.end.i.i734.i, label %do.end451.i.__list_del_entry.exit.i.i_crit_edge

do.end451.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %do.end451.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i734.i:                                  ; preds = %do.end451.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %260 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %prev.i.i.i, align 4
  %262 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %261, ptr %prev1.i.i.i.i, align 4
  %265 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %265)
  store volatile ptr %263, ptr %261, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i734.i, %do.end451.i.__list_del_entry.exit.i.i_crit_edge
  %266 = ptrtoint ptr %erase_pending_list.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %erase_pending_list.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %erase_pending_list.i, ptr noundef %267) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %arrayidx.i, ptr %prev1.i.i2.i.i, align 4
  %269 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %267, ptr %arrayidx.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %270 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %erase_pending_list.i, ptr %prev3.i.i.i.i, align 4
  %271 = ptrtoint ptr %erase_pending_list.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store volatile ptr %arrayidx.i, ptr %erase_pending_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %nr_erasing_blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %272 = ptrtoint ptr %nr_erasing_blocks.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %nr_erasing_blocks.i, align 4
  %inc452.i = add i32 %273, 1
  store i32 %inc452.i, ptr %nr_erasing_blocks.i, align 4
  call void @jffs2_garbage_collect_trigger(ptr noundef %c) #10
  br label %if.end453.i

if.end453.i:                                      ; preds = %list_move.exit.i, %for.end444.i.if.end453.i_crit_edge
  call void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef %c, ptr noundef %arrayidx.i) #10
  call void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef %c, ptr noundef %arrayidx199.i) #10
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #10
  br label %jffs2_wbuf_recover.exit

jffs2_wbuf_recover.exit:                          ; preds = %if.end453.i, %if.then160.i, %do.end156.i.jffs2_wbuf_recover.exit_crit_edge, %do.end121.i, %do.end112.i, %if.then93.critedge.i, %do.end30.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #10
  br label %cleanup

if.end72:                                         ; preds = %if.else64
  br i1 %tobool16.not, label %if.else114, label %if.then74

if.then74:                                        ; preds = %if.end72
  %274 = ptrtoint ptr %wbuf_pagesize44 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %wbuf_pagesize44, align 4
  %276 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %wbuf_len, align 4
  %sub77 = sub i32 %275, %277
  %free_size = getelementptr %struct.jffs2_eraseblock, ptr %6, i32 %div, i32 7
  %278 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %free_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %sub77)
  %cmp81 = icmp ult i32 %279, %sub77
  br i1 %cmp81, label %do.end86, label %if.end103

do.end86:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %280 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %wbuf_ofs, align 4
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %281, i32 noundef %277, i32 noundef %sub77) #13
  %offset = getelementptr %struct.jffs2_eraseblock, ptr %6, i32 %div, i32 2
  %282 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %offset, align 4
  %284 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %free_size, align 4
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %283, i32 noundef %285) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 672, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

if.end103:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #10
  %286 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %wbuf_ofs, align 4
  %288 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %wbuf_len, align 4
  %add106 = add i32 %289, %287
  %or = or i32 %add106, 1
  %call107 = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %arrayidx, i32 noundef %or, i32 noundef %sub77, ptr noundef null) #10
  %dirty_size = getelementptr %struct.jffs2_eraseblock, ptr %6, i32 %div, i32 5
  %290 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %dirty_size, align 4
  %sub108 = sub i32 %291, %sub77
  store i32 %sub108, ptr %dirty_size, align 4
  %dirty_size109 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %292 = ptrtoint ptr %dirty_size109 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %dirty_size109, align 4
  %sub110 = sub i32 %293, %sub77
  store i32 %sub110, ptr %dirty_size109, align 4
  %wasted_size = getelementptr %struct.jffs2_eraseblock, ptr %6, i32 %div, i32 6
  %294 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %wasted_size, align 4
  %add111 = add i32 %295, %sub77
  store i32 %add111, ptr %wasted_size, align 4
  %wasted_size112 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %296 = ptrtoint ptr %wasted_size112 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %wasted_size112, align 4
  %add113 = add i32 %297, %sub77
  store i32 %add113, ptr %wasted_size112, align 4
  br label %if.end116

if.else114:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %erase_completion_lock115 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock115) #10
  br label %if.end116

if.end116:                                        ; preds = %if.else114, %if.end103
  %erasable_pending_wbuf_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 35
  %298 = ptrtoint ptr %erasable_pending_wbuf_list.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load volatile ptr, ptr %erasable_pending_wbuf_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %299, %erasable_pending_wbuf_list.i
  br i1 %cmp.i.not.i, label %if.end116.jffs2_refile_wbuf_blocks.exit_crit_edge, label %for.cond.preheader.i

if.end116.jffs2_refile_wbuf_blocks.exit_crit_edge: ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_refile_wbuf_blocks.exit

for.cond.preheader.i:                             ; preds = %if.end116
  %erase_pending_list.i194 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %prev.i33.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38, i32 1
  %nr_erasing_blocks.i195 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %erasable_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34
  %prev.i36.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34, i32 1
  br label %for.body.i197

for.body.i197:                                    ; preds = %if.end17.i.for.body.i197_crit_edge, %for.cond.preheader.i
  %this.043.i = phi ptr [ %299, %for.cond.preheader.i ], [ %next.044.i, %if.end17.i.for.body.i197_crit_edge ]
  %300 = ptrtoint ptr %this.043.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %next.044.i = load ptr, ptr %this.043.i, align 4
  %call.i.i.i196 = call zeroext i1 @__list_del_entry_valid(ptr noundef %this.043.i) #10
  br i1 %call.i.i.i196, label %if.end.i.i.i200, label %for.body.i197.list_del.exit.i_crit_edge

for.body.i197.list_del.exit.i_crit_edge:          ; preds = %for.body.i197
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i200:                                  ; preds = %for.body.i197
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i198 = getelementptr inbounds %struct.list_head, ptr %this.043.i, i32 0, i32 1
  %301 = ptrtoint ptr %prev.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %prev.i.i.i198, align 4
  %303 = ptrtoint ptr %this.043.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %this.043.i, align 4
  %prev1.i.i.i.i199 = getelementptr inbounds %struct.list_head, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %prev1.i.i.i.i199 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %302, ptr %prev1.i.i.i.i199, align 4
  %306 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %306)
  store volatile ptr %304, ptr %302, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i200, %for.body.i197.list_del.exit.i_crit_edge
  %307 = ptrtoint ptr %this.043.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr inttoptr (i32 256 to ptr), ptr %this.043.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %this.043.i, i32 0, i32 1
  %308 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %309 = load volatile i32, ptr @jiffies, align 128
  %310 = load i32, ptr @jffs2_refile_wbuf_blocks.n, align 4
  %inc.i201 = add i32 %310, 1
  store i32 %inc.i201, ptr @jffs2_refile_wbuf_blocks.n, align 4
  %add.i202 = add i32 %310, %309
  %and.i203 = and i32 %add.i202, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i203)
  %tobool7.not.i = icmp eq i32 %and.i203, 0
  br i1 %tobool7.not.i, label %do.end15.i, label %do.end11.i

do.end11.i:                                       ; preds = %list_del.exit.i
  %311 = ptrtoint ptr %prev.i33.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %prev.i33.i, align 4
  %call.i.i34.i = call zeroext i1 @__list_add_valid(ptr noundef %this.043.i, ptr noundef %312, ptr noundef %erase_pending_list.i194) #10
  br i1 %call.i.i34.i, label %if.end.i.i35.i, label %do.end11.i.list_add_tail.exit.i_crit_edge

do.end11.i.list_add_tail.exit.i_crit_edge:        ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i35.i:                                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %313 = ptrtoint ptr %prev.i33.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %this.043.i, ptr %prev.i33.i, align 4
  %314 = ptrtoint ptr %this.043.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %erase_pending_list.i194, ptr %this.043.i, align 4
  %315 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %312, ptr %prev.i.i, align 4
  %316 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %316)
  store volatile ptr %this.043.i, ptr %312, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i35.i, %do.end11.i.list_add_tail.exit.i_crit_edge
  %317 = ptrtoint ptr %nr_erasing_blocks.i195 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %nr_erasing_blocks.i195, align 4
  %inc12.i = add i32 %318, 1
  store i32 %inc12.i, ptr %nr_erasing_blocks.i195, align 4
  call void @jffs2_garbage_collect_trigger(ptr noundef %c) #10
  br label %if.end17.i

do.end15.i:                                       ; preds = %list_del.exit.i
  %319 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %prev.i36.i, align 4
  %call.i.i37.i = call zeroext i1 @__list_add_valid(ptr noundef %this.043.i, ptr noundef %320, ptr noundef %erasable_list.i) #10
  br i1 %call.i.i37.i, label %if.end.i.i39.i, label %do.end15.i.if.end17.i_crit_edge

do.end15.i.if.end17.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.end.i.i39.i:                                   ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %321 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %this.043.i, ptr %prev.i36.i, align 4
  %322 = ptrtoint ptr %this.043.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %erasable_list.i, ptr %this.043.i, align 4
  %323 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %320, ptr %prev.i.i, align 4
  %324 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile ptr %this.043.i, ptr %320, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i.i39.i, %do.end15.i.if.end17.i_crit_edge, %list_add_tail.exit.i
  %cmp.i31.not.i = icmp eq ptr %next.044.i, %erasable_pending_wbuf_list.i
  br i1 %cmp.i31.not.i, label %if.end17.i.jffs2_refile_wbuf_blocks.exit_crit_edge, label %if.end17.i.for.body.i197_crit_edge

if.end17.i.for.body.i197_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i197

if.end17.i.jffs2_refile_wbuf_blocks.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_refile_wbuf_blocks.exit

jffs2_refile_wbuf_blocks.exit:                    ; preds = %if.end17.i.jffs2_refile_wbuf_blocks.exit_crit_edge, %if.end116.jffs2_refile_wbuf_blocks.exit_crit_edge
  %wbuf_inodes.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 55
  %325 = ptrtoint ptr %wbuf_inodes.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %wbuf_inodes.i, align 4
  %cmp.not.i204 = icmp eq ptr %326, @inodirty_nomem
  %tobool.not7.i = icmp eq ptr %326, null
  %or.cond.i205 = or i1 %cmp.not.i204, %tobool.not7.i
  br i1 %or.cond.i205, label %jffs2_refile_wbuf_blocks.exit.jffs2_clear_wbuf_ino_list.exit_crit_edge, label %jffs2_refile_wbuf_blocks.exit.while.body.i_crit_edge

jffs2_refile_wbuf_blocks.exit.while.body.i_crit_edge: ; preds = %jffs2_refile_wbuf_blocks.exit
  br label %while.body.i

jffs2_refile_wbuf_blocks.exit.jffs2_clear_wbuf_ino_list.exit_crit_edge: ; preds = %jffs2_refile_wbuf_blocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_clear_wbuf_ino_list.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %jffs2_refile_wbuf_blocks.exit.while.body.i_crit_edge
  %this.08.i = phi ptr [ %328, %while.body.i.while.body.i_crit_edge ], [ %326, %jffs2_refile_wbuf_blocks.exit.while.body.i_crit_edge ]
  %next1.i = getelementptr inbounds %struct.jffs2_inodirty, ptr %this.08.i, i32 0, i32 1
  %327 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %next1.i, align 4
  call void @kfree(ptr noundef nonnull %this.08.i) #10
  %tobool.not.i206 = icmp eq ptr %328, null
  br i1 %tobool.not.i206, label %while.body.i.jffs2_clear_wbuf_ino_list.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.jffs2_clear_wbuf_ino_list.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_clear_wbuf_ino_list.exit

jffs2_clear_wbuf_ino_list.exit:                   ; preds = %while.body.i.jffs2_clear_wbuf_ino_list.exit_crit_edge, %jffs2_refile_wbuf_blocks.exit.jffs2_clear_wbuf_ino_list.exit_crit_edge
  %329 = ptrtoint ptr %wbuf_inodes.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr null, ptr %wbuf_inodes.i, align 4
  %erase_completion_lock117 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock117) #10
  %330 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %wbuf, align 4
  %332 = ptrtoint ptr %wbuf_pagesize44 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %wbuf_pagesize44, align 4
  %334 = call ptr @memset(ptr %331, i32 255, i32 %333)
  %335 = load i32, ptr %wbuf_pagesize44, align 4
  %336 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %wbuf_ofs, align 4
  %add122 = add i32 %337, %335
  store i32 %add122, ptr %wbuf_ofs, align 4
  %338 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 0, ptr %wbuf_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %jffs2_clear_wbuf_ino_list.exit, %jffs2_wbuf_recover.exit, %if.end11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %jffs2_wbuf_recover.exit ], [ 0, %jffs2_clear_wbuf_ino_list.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_garbage_collect_pass(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_flush_wbuf_pad(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @down_write(ptr noundef %wbuf_sem) #10
  %call = tail call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 1)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ]
  tail call void @up_write(ptr noundef %wbuf_sem) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_flash_writev(ptr noundef %c, ptr noundef %invecs, i32 noundef %count, i64 noundef %to, ptr noundef %retlen, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %wbuf_retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wbuf_retlen) #10
  %0 = ptrtoint ptr %wbuf_retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wbuf_retlen, align 4, !annotation !172
  %conv = trunc i64 %to to i32
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %1 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wbuf, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @jffs2_flash_direct_writev(ptr noundef %c, ptr noundef %invecs, i32 noundef %count, i64 noundef %to, ptr noundef %retlen) #10
  br label %cleanup172

if.end:                                           ; preds = %entry
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @down_write(ptr noundef %wbuf_sem) #10
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %3 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wbuf_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp2 = icmp eq i32 %4, -1
  br i1 %cmp2, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %5 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wbuf_pagesize, align 4
  %7 = urem i32 %conv, %6
  %mul = sub i32 %conv, %7
  %8 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %wbuf_ofs, align 4
  %wbuf_len = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %9 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %wbuf_len, align 4
  %10 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wbuf, align 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 %6)
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %if.end.if.end12_crit_edge
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %13 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sector_size, align 4
  %15 = urem i32 %conv, %14
  %mul16 = sub i32 %conv, %15
  %16 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wbuf_ofs, align 4
  %18 = urem i32 %17, %14
  %mul21 = sub i32 %17, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16, i32 %mul21)
  %cmp22.not = icmp eq i32 %mul16, %mul21
  br i1 %cmp22.not, label %if.end12.if.end42_crit_edge, label %if.then24

if.end12.if.end42_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then24:                                        ; preds = %if.end12
  %wbuf_len25 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %19 = ptrtoint ptr %wbuf_len25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wbuf_len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.then24.if.end31_crit_edge, label %do.end

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end:                                           ; preds = %if.then24
  %call27 = tail call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end.if.end31_crit_edge, label %do.end.outerr_crit_edge

do.end.outerr_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %outerr

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31:                                         ; preds = %do.end.if.end31_crit_edge, %if.then24.if.end31_crit_edge
  %wbuf_pagesize33 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %21 = ptrtoint ptr %wbuf_pagesize33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wbuf_pagesize33, align 4
  %23 = urem i32 %conv, %22
  %mul36 = sub i32 %conv, %23
  %24 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul36, ptr %wbuf_ofs, align 4
  %25 = ptrtoint ptr %wbuf_len25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %wbuf_len25, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end31, %if.end12.if.end42_crit_edge
  %26 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wbuf_ofs, align 4
  %wbuf_len44 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %28 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wbuf_len44, align 4
  %add = add i32 %27, 3
  %add45 = add i32 %add, %29
  %and = and i32 %add45, -4
  %conv46 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv46, i64 %to)
  %cmp47.not = icmp eq i64 %conv46, %to
  br i1 %cmp47.not, label %if.end74, label %do.end52

do.end52:                                         ; preds = %if.end42
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv) #13
  %30 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wbuf_len44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool56.not = icmp eq i32 %31, 0
  br i1 %tobool56.not, label %do.end52.do.body68_crit_edge, label %do.end60

do.end52.do.body68_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body68

do.end60:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wbuf_ofs, align 4
  %add65 = add i32 %33, %31
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %33, i32 noundef %add65) #13
  br label %do.body68

do.body68:                                        ; preds = %do.end60, %do.end52.do.body68_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 844, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

if.end74:                                         ; preds = %if.end42
  %wbuf_pagesize77 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %34 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wbuf_pagesize77, align 4
  %rem78 = urem i32 %conv, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %rem78)
  %cmp79.not = icmp eq i32 %29, %rem78
  br i1 %cmp79.not, label %if.end74.if.end96_crit_edge, label %if.then81

if.end74.if.end96_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then81:                                        ; preds = %if.end74
  %36 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rem78, ptr %wbuf_len44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem78)
  %tobool87.not = icmp eq i32 %rem78, 0
  br i1 %tobool87.not, label %if.then88, label %if.then81.if.end96_crit_edge

if.then81.if.end96_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then88:                                        ; preds = %if.then81
  %37 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %wbuf_len44, align 4
  %call91 = tail call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then88.if.end96_crit_edge, label %if.then88.outerr_crit_edge

if.then88.outerr_crit_edge:                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %outerr

if.then88.if.end96_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.end96:                                         ; preds = %if.then88.if.end96_crit_edge, %if.then81.if.end96_crit_edge, %if.end74.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp97320.not = icmp eq i32 %count, 0
  br i1 %cmp97320.not, label %if.end96.for.end_crit_edge, label %if.end96.for.body_crit_edge

if.end96.for.body_crit_edge:                      ; preds = %if.end96
  br label %for.body

if.end96.for.end_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end96.for.body_crit_edge
  %invec.0323 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end96.for.body_crit_edge ]
  %outvec_to.0322 = phi i32 [ %add150, %for.inc.for.body_crit_edge ], [ %conv, %if.end96.for.body_crit_edge ]
  %donelen.0321 = phi i32 [ %add151, %for.inc.for.body_crit_edge ], [ 0, %if.end96.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvec, ptr %invecs, i32 %invec.0323
  %iov_len = getelementptr %struct.kvec, ptr %invecs, i32 %invec.0323, i32 1
  %38 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iov_len, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.lhs.true.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %42 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wbuf_len44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool1.not.i = icmp eq i32 %43, 0
  br i1 %tobool1.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %44 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wbuf_pagesize77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %39)
  %cmp.not.i = icmp ugt i32 %45, %39
  br i1 %cmp.not.i, label %land.lhs.true2.i.if.end.i_crit_edge, label %land.lhs.true2.i.jffs2_fill_wbuf.exit_crit_edge

land.lhs.true2.i.jffs2_fill_wbuf.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_fill_wbuf.exit

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %46 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wbuf_pagesize77, align 4
  %48 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wbuf_len44, align 4
  %sub.i = sub i32 %47, %49
  %50 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %39) #10
  %51 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wbuf, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 %49
  %53 = call ptr @memcpy(ptr %add.ptr.i, ptr %41, i32 %50)
  %54 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wbuf_len44, align 4
  %add.i = add i32 %55, %50
  store i32 %add.i, ptr %wbuf_len44, align 4
  br label %jffs2_fill_wbuf.exit

jffs2_fill_wbuf.exit:                             ; preds = %if.end.i, %land.lhs.true2.i.jffs2_fill_wbuf.exit_crit_edge
  %retval.0.i = phi i32 [ %50, %if.end.i ], [ 0, %land.lhs.true2.i.jffs2_fill_wbuf.exit_crit_edge ]
  %56 = ptrtoint ptr %wbuf_retlen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i, ptr %wbuf_retlen, align 4
  %57 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wbuf_len44, align 4
  %59 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wbuf_pagesize77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp103 = icmp eq i32 %58, %60
  br i1 %cmp103, label %if.then105, label %jffs2_fill_wbuf.exit.if.end110_crit_edge

jffs2_fill_wbuf.exit.if.end110_crit_edge:         ; preds = %jffs2_fill_wbuf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then105:                                       ; preds = %jffs2_fill_wbuf.exit
  %call106 = call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then105.if.end110_crit_edge, label %if.then105.outerr_crit_edge

if.then105.outerr_crit_edge:                      ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %outerr

if.then105.if.end110_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.end110:                                        ; preds = %if.then105.if.end110_crit_edge, %jffs2_fill_wbuf.exit.if.end110_crit_edge
  %61 = ptrtoint ptr %wbuf_retlen to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wbuf_retlen, align 4
  %sub = sub i32 %39, %62
  %add111 = add i32 %62, %outvec_to.0322
  %add112 = add i32 %62, %donelen.0321
  %add.ptr = getelementptr i8, ptr %41, i32 %62
  %63 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wbuf_pagesize77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %64)
  %cmp114.not = icmp ult i32 %sub, %64
  br i1 %cmp114.not, label %if.end110.if.end138_crit_edge, label %if.then116

if.end110.if.end138_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then116:                                       ; preds = %if.end110
  %65 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %c, align 4
  %conv117 = zext i32 %add111 to i64
  %67 = urem i32 %sub, %64
  %mul121 = sub i32 %sub, %67
  %call122 = call i32 @mtd_write(ptr noundef %66, i64 noundef %conv117, i32 noundef %mul121, ptr noundef nonnull %wbuf_retlen, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then116.outfile_crit_edge, label %lor.lhs.false

if.then116.outfile_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %outfile

lor.lhs.false:                                    ; preds = %if.then116
  %68 = ptrtoint ptr %wbuf_retlen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wbuf_retlen, align 4
  %70 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wbuf_pagesize77, align 4
  %72 = urem i32 %sub, %71
  %mul128 = sub i32 %sub, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %mul128)
  %cmp129.not = icmp eq i32 %69, %mul128
  br i1 %cmp129.not, label %if.end132, label %lor.lhs.false.outfile_crit_edge

lor.lhs.false.outfile_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %outfile

if.end132:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %sub133 = sub i32 %sub, %69
  %add134 = add i32 %69, %add111
  %73 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add134, ptr %wbuf_ofs, align 4
  %add136 = add i32 %69, %add112
  %add.ptr137 = getelementptr i8, ptr %add.ptr, i32 %69
  br label %if.end138

if.end138:                                        ; preds = %if.end132, %if.end110.if.end138_crit_edge
  %donelen.1 = phi i32 [ %add136, %if.end132 ], [ %add112, %if.end110.if.end138_crit_edge ]
  %outvec_to.1 = phi i32 [ %add134, %if.end132 ], [ %add111, %if.end110.if.end138_crit_edge ]
  %vlen.0 = phi i32 [ %sub133, %if.end132 ], [ %sub, %if.end110.if.end138_crit_edge ]
  %v.0 = phi ptr [ %add.ptr137, %if.end132 ], [ %add.ptr, %if.end110.if.end138_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen.0)
  %tobool.not.i289 = icmp eq i32 %vlen.0, 0
  br i1 %tobool.not.i289, label %if.end138.if.end.i302_crit_edge, label %land.lhs.true.i292

if.end138.if.end.i302_crit_edge:                  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i302

land.lhs.true.i292:                               ; preds = %if.end138
  %74 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wbuf_len44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool1.not.i291 = icmp eq i32 %75, 0
  br i1 %tobool1.not.i291, label %land.lhs.true2.i295, label %land.lhs.true.i292.if.end.i302_crit_edge

land.lhs.true.i292.if.end.i302_crit_edge:         ; preds = %land.lhs.true.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i302

land.lhs.true2.i295:                              ; preds = %land.lhs.true.i292
  %76 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wbuf_pagesize77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %vlen.0)
  %cmp.not.i294 = icmp ugt i32 %77, %vlen.0
  br i1 %cmp.not.i294, label %land.lhs.true2.i295.if.end.i302_crit_edge, label %land.lhs.true2.i295.jffs2_fill_wbuf.exit304_crit_edge

land.lhs.true2.i295.jffs2_fill_wbuf.exit304_crit_edge: ; preds = %land.lhs.true2.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_fill_wbuf.exit304

land.lhs.true2.i295.if.end.i302_crit_edge:        ; preds = %land.lhs.true2.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i302

if.end.i302:                                      ; preds = %land.lhs.true2.i295.if.end.i302_crit_edge, %land.lhs.true.i292.if.end.i302_crit_edge, %if.end138.if.end.i302_crit_edge
  %78 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wbuf_pagesize77, align 4
  %80 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wbuf_len44, align 4
  %sub.i298 = sub i32 %79, %81
  %82 = call i32 @llvm.umin.i32(i32 %sub.i298, i32 %vlen.0) #10
  %83 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wbuf, align 4
  %add.ptr.i300 = getelementptr i8, ptr %84, i32 %81
  %85 = call ptr @memcpy(ptr %add.ptr.i300, ptr %v.0, i32 %82)
  %86 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wbuf_len44, align 4
  %add.i301 = add i32 %87, %82
  store i32 %add.i301, ptr %wbuf_len44, align 4
  br label %jffs2_fill_wbuf.exit304

jffs2_fill_wbuf.exit304:                          ; preds = %if.end.i302, %land.lhs.true2.i295.jffs2_fill_wbuf.exit304_crit_edge
  %retval.0.i303 = phi i32 [ %82, %if.end.i302 ], [ 0, %land.lhs.true2.i295.jffs2_fill_wbuf.exit304_crit_edge ]
  %88 = ptrtoint ptr %wbuf_retlen to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i303, ptr %wbuf_retlen, align 4
  %89 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %wbuf_len44, align 4
  %91 = ptrtoint ptr %wbuf_pagesize77 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %wbuf_pagesize77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp142 = icmp eq i32 %90, %92
  br i1 %cmp142, label %if.then144, label %jffs2_fill_wbuf.exit304.for.inc_crit_edge

jffs2_fill_wbuf.exit304.for.inc_crit_edge:        ; preds = %jffs2_fill_wbuf.exit304
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then144:                                       ; preds = %jffs2_fill_wbuf.exit304
  %call145 = call fastcc i32 @__jffs2_flush_wbuf(ptr noundef %c, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then144.for.inc_crit_edge, label %if.then144.outerr_crit_edge

if.then144.outerr_crit_edge:                      ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %outerr

if.then144.for.inc_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then144.for.inc_crit_edge, %jffs2_fill_wbuf.exit304.for.inc_crit_edge
  %93 = ptrtoint ptr %wbuf_retlen to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wbuf_retlen, align 4
  %add150 = add i32 %94, %outvec_to.1
  %add151 = add i32 %94, %donelen.1
  %inc = add nuw i32 %invec.0323, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end96.for.end_crit_edge
  %donelen.0.lcssa = phi i32 [ 0, %if.end96.for.end_crit_edge ], [ %add151, %for.inc.for.end_crit_edge ]
  %95 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %donelen.0.lcssa, ptr %retlen, align 4
  %call154 = call i32 @jffs2_sum_add_kvec(ptr noundef %c, ptr noundef %invecs, i32 noundef %count, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %cleanup.cont160, label %for.end.cleanup172_crit_edge

for.end.cleanup172_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup172

cleanup.cont160:                                  ; preds = %for.end
  %96 = ptrtoint ptr %wbuf_len44 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wbuf_len44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool162.not = icmp eq i32 %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %tobool163.not = icmp eq i32 %ino, 0
  %or.cond = or i1 %tobool163.not, %tobool162.not
  br i1 %or.cond, label %cleanup.cont160.if.end165_crit_edge, label %if.then164

cleanup.cont160.if.end165_crit_edge:              ; preds = %cleanup.cont160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then164:                                       ; preds = %cleanup.cont160
  %os_priv.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 72
  %98 = ptrtoint ptr %os_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %os_priv.i.i, align 4
  %s_flags.i.i.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_flags.i.i.i, align 4
  %and.i.i.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i.i, label %if.then164.jffs2_dirty_trigger.exit.i_crit_edge

if.then164.jffs2_dirty_trigger.exit.i_crit_edge:  ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  br label %jffs2_dirty_trigger.exit.i

if.else.i.i.i:                                    ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %102 = load i32, ptr @dirty_writeback_interval, align 4
  %mul.i.i = mul i32 %102, 10
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %mul.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %103 = load ptr, ptr @system_long_wq, align 4
  %wbuf_dwork.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %103, ptr noundef %wbuf_dwork.i.i, i32 noundef %call2.i.i.i) #10
  br label %jffs2_dirty_trigger.exit.i

jffs2_dirty_trigger.exit.i:                       ; preds = %if.else.i.i.i, %if.then164.jffs2_dirty_trigger.exit.i_crit_edge
  %wbuf_inodes.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 55
  %104 = ptrtoint ptr %wbuf_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wbuf_inodes.i.i, align 4
  %cmp.i.i = icmp eq ptr %105, @inodirty_nomem
  br i1 %cmp.i.i, label %jffs2_dirty_trigger.exit.i.if.end165_crit_edge, label %while.cond.preheader.i.i

jffs2_dirty_trigger.exit.i.if.end165_crit_edge:   ; preds = %jffs2_dirty_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

while.cond.preheader.i.i:                         ; preds = %jffs2_dirty_trigger.exit.i
  %tobool4.not14.i.i = icmp eq ptr %105, null
  br i1 %tobool4.not14.i.i, label %while.cond.preheader.i.i.if.end.i305_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.if.end.i305_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i305

while.body.i.i:                                   ; preds = %if.end8.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %this.015.i.i = phi ptr [ %109, %if.end8.i.i.while.body.i.i_crit_edge ], [ %105, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %this.015.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %this.015.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %ino)
  %cmp6.i.i = icmp eq i32 %107, %ino
  br i1 %cmp6.i.i, label %while.body.i.i.if.end165_crit_edge, label %if.end8.i.i

while.body.i.i.if.end165_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.end8.i.i:                                      ; preds = %while.body.i.i
  %next.i.i = getelementptr inbounds %struct.jffs2_inodirty, ptr %this.015.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %next.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %109, null
  br i1 %tobool4.not.i.i, label %if.end8.i.i.if.end.i305_crit_edge, label %if.end8.i.i.while.body.i.i_crit_edge

if.end8.i.i.while.body.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end8.i.i.if.end.i305_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i305

if.end.i305:                                      ; preds = %if.end8.i.i.if.end.i305_crit_edge, %while.cond.preheader.i.i.if.end.i305_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3264, i32 noundef 8) #16
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i305
  %111 = ptrtoint ptr %wbuf_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wbuf_inodes.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %112, @inodirty_nomem
  %tobool.not7.i.i = icmp eq ptr %112, null
  %or.cond.i19.i = or i1 %cmp.not.i.i, %tobool.not7.i.i
  br i1 %or.cond.i19.i, label %do.end.i.cleanup.sink.split.i_crit_edge, label %do.end.i.while.body.i21.i_crit_edge

do.end.i.while.body.i21.i_crit_edge:              ; preds = %do.end.i
  br label %while.body.i21.i

do.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

while.body.i21.i:                                 ; preds = %while.body.i21.i.while.body.i21.i_crit_edge, %do.end.i.while.body.i21.i_crit_edge
  %this.08.i.i = phi ptr [ %114, %while.body.i21.i.while.body.i21.i_crit_edge ], [ %112, %do.end.i.while.body.i21.i_crit_edge ]
  %next1.i.i = getelementptr inbounds %struct.jffs2_inodirty, ptr %this.08.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %next1.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %next1.i.i, align 4
  call void @kfree(ptr noundef nonnull %this.08.i.i) #10
  %tobool.not.i20.i = icmp eq ptr %114, null
  br i1 %tobool.not.i20.i, label %while.body.i21.i.cleanup.sink.split.i_crit_edge, label %while.body.i21.i.while.body.i21.i_crit_edge

while.body.i21.i.while.body.i21.i_crit_edge:      ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i21.i

while.body.i21.i.cleanup.sink.split.i_crit_edge:  ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %ino, ptr %call7.i.i, align 8
  %116 = ptrtoint ptr %wbuf_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wbuf_inodes.i.i, align 4
  %next.i = getelementptr inbounds %struct.jffs2_inodirty, ptr %call7.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %next.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end4.i, %while.body.i21.i.cleanup.sink.split.i_crit_edge, %do.end.i.cleanup.sink.split.i_crit_edge
  %call7.i.sink.i = phi ptr [ %call7.i.i, %if.end4.i ], [ @inodirty_nomem, %do.end.i.cleanup.sink.split.i_crit_edge ], [ @inodirty_nomem, %while.body.i21.i.cleanup.sink.split.i_crit_edge ]
  %119 = ptrtoint ptr %wbuf_inodes.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call7.i.sink.i, ptr %wbuf_inodes.i.i, align 4
  br label %if.end165

if.end165:                                        ; preds = %cleanup.sink.split.i, %while.body.i.i.if.end165_crit_edge, %jffs2_dirty_trigger.exit.i.if.end165_crit_edge, %cleanup.cont160.if.end165_crit_edge
  call void @up_write(ptr noundef %wbuf_sem) #10
  br label %cleanup172

outfile:                                          ; preds = %lor.lhs.false.outfile_crit_edge, %if.then116.outfile_crit_edge
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #10
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %120 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %blocks, align 4
  %122 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sector_size, align 4
  %div168 = udiv i32 %add111, %123
  %arrayidx169 = getelementptr %struct.jffs2_eraseblock, ptr %121, i32 %div168
  call fastcc void @jffs2_block_refile(ptr noundef %c, ptr noundef %arrayidx169, i32 noundef 1)
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #10
  br label %outerr

outerr:                                           ; preds = %outfile, %if.then144.outerr_crit_edge, %if.then105.outerr_crit_edge, %if.then88.outerr_crit_edge, %do.end.outerr_crit_edge
  %ret.8 = phi i32 [ %call27, %do.end.outerr_crit_edge ], [ %call122, %outfile ], [ %call91, %if.then88.outerr_crit_edge ], [ %call106, %if.then105.outerr_crit_edge ], [ %call145, %if.then144.outerr_crit_edge ]
  %124 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %retlen, align 4
  call void @up_write(ptr noundef %wbuf_sem) #10
  br label %cleanup172

cleanup172:                                       ; preds = %outerr, %if.end165, %for.end.cleanup172_crit_edge, %if.then
  %retval.1 = phi i32 [ %ret.8, %outerr ], [ 0, %if.end165 ], [ %call154, %for.end.cleanup172_crit_edge ], [ %call, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wbuf_retlen) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_direct_writev(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_add_kvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jffs2_block_refile(ptr noundef %c, ptr noundef %jeb, i32 noundef %allow_empty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %0 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nextblock, align 4
  %cmp = icmp eq ptr %1, %jeb
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %nextblock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nextblock, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %jeb) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %jeb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jeb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %9 = ptrtoint ptr %jeb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %jeb, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %if.then
  %first_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 9
  %11 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %first_node, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %do.body7, label %do.end4

do.end4:                                          ; preds = %if.end
  %bad_used_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 42
  %13 = ptrtoint ptr %bad_used_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bad_used_list, align 4
  %call.i.i59 = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %bad_used_list, ptr noundef %14) #10
  br i1 %call.i.i59, label %if.end.i.i60, label %do.end4.if.end21_crit_edge

do.end4.if.end21_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end.i.i60:                                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %jeb, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %jeb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %jeb, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bad_used_list, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %bad_used_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %jeb, ptr %bad_used_list, align 4
  br label %if.end21

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allow_empty)
  %cmp8 = icmp eq i32 %allow_empty, 0
  br i1 %cmp8, label %do.body12, label %do.end19, !prof !180

do.body12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/wbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 155, 0\0A.popsection", ""() #10, !srcloc !189
  unreachable

do.end19:                                         ; preds = %do.body7
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %19 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %erase_pending_list, align 4
  %call.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %erase_pending_list, ptr noundef %20) #10
  br i1 %call.i.i61, label %if.end.i.i64, label %do.end19.list_add.exit65_crit_edge

do.end19.list_add.exit65_crit_edge:               ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit65

if.end.i.i64:                                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i62 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i62 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %jeb, ptr %prev1.i.i62, align 4
  %22 = ptrtoint ptr %jeb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %jeb, align 4
  %prev3.i.i63 = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i63 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %erase_pending_list, ptr %prev3.i.i63, align 4
  %24 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %jeb, ptr %erase_pending_list, align 4
  br label %list_add.exit65

list_add.exit65:                                  ; preds = %if.end.i.i64, %do.end19.list_add.exit65_crit_edge
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %25 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_erasing_blocks, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %nr_erasing_blocks, align 4
  tail call void @jffs2_garbage_collect_trigger(ptr noundef %c) #10
  br label %if.end21

if.end21:                                         ; preds = %list_add.exit65, %if.end.i.i60, %do.end4.if.end21_crit_edge
  %call = tail call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %jeb, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %27 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free_size, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %31 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sector_size, align 4
  %add = sub i32 %30, %28
  %sub = add i32 %add, %32
  %or = or i32 %sub, 1
  %call24 = tail call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %jeb, i32 noundef %or, i32 noundef %28, ptr noundef null) #10
  %wasted_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %33 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wasted_size, align 4
  %add25 = add i32 %34, %28
  store i32 %add25, ptr %wasted_size, align 4
  %wasted_size26 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %35 = ptrtoint ptr %wasted_size26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wasted_size26, align 4
  %add27 = add i32 %36, %28
  store i32 %add27, ptr %wasted_size26, align 4
  %dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %37 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dirty_size, align 4
  %sub28 = sub i32 %38, %28
  store i32 %sub28, ptr %dirty_size, align 4
  %dirty_size29 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %39 = ptrtoint ptr %dirty_size29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dirty_size29, align 4
  %sub30 = sub i32 %40, %28
  store i32 %sub30, ptr %dirty_size29, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.end21.if.end31_crit_edge
  tail call void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef %c, ptr noundef %jeb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_flash_write(ptr noundef %c, i64 noundef %ofs, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %vecs = alloca [1 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vecs) #10
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @jffs2_flash_direct_write(ptr noundef %c, i64 noundef %ofs, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.kvec, ptr %vecs, i32 0, i32 1
  %3 = ptrtoint ptr %vecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf, ptr %vecs, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %2, align 4
  %call2 = call i32 @jffs2_flash_writev(ptr noundef %c, ptr noundef nonnull %vecs, i32 noundef 1, i64 noundef %ofs, ptr noundef %retlen, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vecs) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_direct_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %ofs, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 4
  %call = tail call i32 @mtd_read(ptr noundef %3, i64 noundef %ofs, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @down_read(ptr noundef %wbuf_sem) #10
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %call2 = tail call i32 @mtd_read(ptr noundef %5, i64 noundef %ofs, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) #10
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call2, label %if.end.if.end11_crit_edge [
    i32 -74, label %if.end.land.lhs.true_crit_edge
    i32 -117, label %if.end.land.lhs.true_crit_edge138
  ]

if.end.land.lhs.true_crit_edge138:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge138
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call2)
  %cmp3 = icmp ne i32 %call2, -74
  %7 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %len)
  %cmp5 = icmp ne i32 %8, %len
  %brmerge = select i1 %cmp5, i1 true, i1 %cmp3
  %call2.mux = select i1 %cmp5, i32 %call2, i32 0
  br i1 %brmerge, label %land.lhs.true.if.end11_crit_edge, label %do.end

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %len, i64 noundef %ofs) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ret.0 = phi i32 [ %call2.mux, %land.lhs.true.if.end11_crit_edge ], [ %call2, %if.end.if.end11_crit_edge ], [ 0, %do.end ]
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %9 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wbuf_pagesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end11.exit_crit_edge, label %lor.lhs.false12

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

lor.lhs.false12:                                  ; preds = %if.end11
  %wbuf_len = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 54
  %11 = ptrtoint ptr %wbuf_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %lor.lhs.false12.exit_crit_edge, label %if.end15

lor.lhs.false12.exit_crit_edge:                   ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end15:                                         ; preds = %lor.lhs.false12
  %conv = trunc i64 %ofs to i32
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %13 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sector_size, align 4
  %15 = urem i32 %conv, %14
  %mul = sub i32 %conv, %15
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %16 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wbuf_ofs, align 4
  %18 = urem i32 %17, %14
  %mul20 = sub i32 %17, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul20)
  %cmp21.not = icmp eq i32 %mul, %mul20
  br i1 %cmp21.not, label %if.end24, label %if.end15.exit_crit_edge

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end24:                                         ; preds = %if.end15
  %conv26 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv26, i64 %ofs)
  %cmp27.not = icmp sgt i64 %conv26, %ofs
  br i1 %cmp27.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end24
  %sub = sub i64 %ofs, %conv26
  %conv33 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv33)
  %cmp34 = icmp sgt i64 %sub, %conv33
  br i1 %cmp34, label %if.then29.exit_crit_edge, label %if.end37

if.then29.exit_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end37:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %sub40 = sub i64 %conv33, %sub
  %conv41 = zext i32 %len to i64
  %extract.t126 = trunc i64 %sub to i32
  %19 = tail call i64 @llvm.smin.i64(i64 %sub40, i64 %conv41)
  br label %if.end65

if.else:                                          ; preds = %if.end24
  %sub49 = sub i64 %conv26, %ofs
  %conv50 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub49, i64 %conv50)
  %cmp51 = icmp sgt i64 %sub49, %conv50
  br i1 %cmp51, label %if.else.exit_crit_edge, label %if.end54

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end54:                                         ; preds = %if.else
  %sub56 = sub i64 %conv50, %sub49
  %conv58 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub56, i64 %conv58)
  %cmp59 = icmp sgt i64 %sub56, %conv58
  %extract.t124 = trunc i64 %sub49 to i32
  br i1 %cmp59, label %if.end54.if.then68_crit_edge, label %if.end54.if.end65_crit_edge

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end54.if.then68_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.end65:                                         ; preds = %if.end54.if.end65_crit_edge, %if.end37
  %orbf.0.off0 = phi i32 [ 0, %if.end37 ], [ %extract.t124, %if.end54.if.end65_crit_edge ]
  %owbf.0.off0 = phi i32 [ %extract.t126, %if.end37 ], [ 0, %if.end54.if.end65_crit_edge ]
  %lwbf.0 = phi i64 [ %19, %if.end37 ], [ %sub56, %if.end54.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lwbf.0)
  %cmp66 = icmp sgt i64 %lwbf.0, 0
  %extract.t = trunc i64 %lwbf.0 to i32
  br i1 %cmp66, label %if.end65.if.then68_crit_edge, label %if.end65.exit_crit_edge

if.end65.exit_crit_edge:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end65.if.then68_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.then68:                                        ; preds = %if.end65.if.then68_crit_edge, %if.end54.if.then68_crit_edge
  %lwbf.0136.off0 = phi i32 [ %extract.t, %if.end65.if.then68_crit_edge ], [ %12, %if.end54.if.then68_crit_edge ]
  %owbf.0.off0135 = phi i32 [ %owbf.0.off0, %if.end65.if.then68_crit_edge ], [ 0, %if.end54.if.then68_crit_edge ]
  %orbf.0.off0134 = phi i32 [ %orbf.0.off0, %if.end65.if.then68_crit_edge ], [ %extract.t124, %if.end54.if.then68_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %orbf.0.off0134
  %20 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wbuf, align 4
  %add.ptr71 = getelementptr i8, ptr %21, i32 %owbf.0.off0135
  %22 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr71, i32 %lwbf.0136.off0)
  br label %exit

exit:                                             ; preds = %if.then68, %if.end65.exit_crit_edge, %if.else.exit_crit_edge, %if.then29.exit_crit_edge, %if.end15.exit_crit_edge, %lor.lhs.false12.exit_crit_edge, %if.end11.exit_crit_edge
  tail call void @up_read(ptr noundef %wbuf_sem) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  %retval.0 = phi i32 [ %ret.0, %exit ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_check_oob_empty(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %jeb, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %oobavail = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 59
  %0 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobavail, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 8)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %9 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ops, align 4
  %mul = shl i32 %1, 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %5, align 4
  %oobbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 58
  %12 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oobbuf, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %9, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %6, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %4, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %7, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %3, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %8, align 4
  %20 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %c, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %conv = zext i32 %23 to i64
  %call = call i32 @mtd_read_oob(ptr noundef %21, i64 noundef %conv, ptr noundef nonnull %ops) #10
  %24 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call, label %lor.lhs.false16.critedge [
    i32 -117, label %entry.lor.lhs.false_crit_edge
    i32 0, label %entry.lor.lhs.false_crit_edge63
  ]

entry.lor.lhs.false_crit_edge63:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge63
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %6, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp8.not = icmp eq i32 %26, %28
  br i1 %cmp8.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2260.not = icmp eq i32 %26, 0
  br i1 %cmp2260.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool24.not = icmp ne i32 %mode, 0
  br label %for.body

do.end:                                           ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %30, i32 noundef %28, i32 noundef %26, i32 noundef %call) #13
  %31 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call, label %do.end.cleanup_crit_edge [
    i32 -117, label %do.end.if.then19_crit_edge
    i32 0, label %do.end.if.then19_crit_edge64
  ]

do.end.if.then19_crit_edge64:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

do.end.if.then19_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false16.critedge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %6, align 4
  %call14.c = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %call) #13
  br label %cleanup

if.then19:                                        ; preds = %do.end.if.then19_crit_edge, %do.end.if.then19_crit_edge64
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.061, i32 %2)
  %cmp26 = icmp slt i32 %i.061, %2
  %or.cond = select i1 %tobool24.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end29

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end29:                                         ; preds = %for.body
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 4
  %arrayidx = getelementptr i8, ptr %39, i32 %i.061
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp32.not = icmp eq i8 %41, -1
  br i1 %cmp32.not, label %if.end29.for.inc_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end29.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then19, %lor.lhs.false16.critedge, %do.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then19 ], [ %call, %lor.lhs.false16.critedge ], [ %call, %do.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %if.end29.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_check_nand_cleanmarker(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %jeb) local_unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %oobavail = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 59
  %7 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobavail, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 8)
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ops, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %2, align 4
  %oobbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 58
  %12 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oobbuf, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %6, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %3, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %1, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %4, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %0, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %5, align 4
  %20 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %c, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %conv = zext i32 %23 to i64
  %call = call i32 @mtd_read_oob(ptr noundef %21, i64 noundef %conv, ptr noundef nonnull %ops) #10
  %24 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call, label %lor.lhs.false14.critedge [
    i32 -117, label %entry.lor.lhs.false_crit_edge
    i32 0, label %entry.lor.lhs.false_crit_edge40
  ]

entry.lor.lhs.false_crit_edge40:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge40
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp6.not = icmp eq i32 %26, %28
  br i1 %cmp6.not, label %if.end18, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %30, i32 noundef %28, i32 noundef %26, i32 noundef %call) #13
  %31 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call, label %do.end.cleanup_crit_edge [
    i32 -117, label %do.end.if.then17_crit_edge
    i32 0, label %do.end.if.then17_crit_edge41
  ]

do.end.if.then17_crit_edge41:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false14.critedge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %call12.c = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %call) #13
  br label %cleanup

if.then17:                                        ; preds = %do.end.if.then17_crit_edge, %do.end.if.then17_crit_edge41
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oobbuf, align 4
  %bcmp = call i32 @bcmp(ptr nonnull @oob_cleanmarker, ptr %39, i32 %9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21 = icmp ne i32 %bcmp, 0
  %lnot.ext = zext i1 %tobool21 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %lor.lhs.false14.critedge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end18 ], [ -5, %if.then17 ], [ %call, %lor.lhs.false14.critedge ], [ %call, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_write_nand_cleanmarker(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %jeb) local_unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %oobavail = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 59
  %7 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobavail, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 8)
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ops, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %2, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @oob_cleanmarker, ptr %6, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %3, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %1, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %4, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %0, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %5, align 4
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %conv = zext i32 %21 to i64
  %call = call i32 @mtd_write_oob(ptr noundef %19, i64 noundef %conv, ptr noundef nonnull %ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.not = icmp eq i32 %23, %25
  br i1 %cmp3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %spec.store.select = phi i32 [ %call, %entry.do.end_crit_edge ], [ -5, %lor.lhs.false.do.end_crit_edge ]
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_write_nand_badblock(ptr nocapture noundef readonly %c, ptr nocapture noundef %jeb, i32 noundef %bad_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bad_count = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 1
  %0 = ptrtoint ptr %bad_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bad_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %bad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp slt i32 %inc, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %bad_offset) #13
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 4
  %conv = zext i32 %bad_offset to i64
  %call1 = tail call i32 @mtd_block_markbad(ptr noundef %3, i64 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %.call1 = select i1 %tobool.not, i32 1, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %.call1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_dirty_trigger(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %os_priv = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 72
  %0 = ptrtoint ptr %os_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %os_priv, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %4 = load i32, ptr @dirty_writeback_interval, align 4
  %mul = mul i32 %4, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %5 = load ptr, ptr @system_long_wq, align 4
  %wbuf_dwork = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %wbuf_dwork, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_nand_flash_setup(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %4 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cleanmarker_size, align 4
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobavail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.end, label %do.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  br label %return

do.end5:                                          ; preds = %if.end
  %oobavail8 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 59
  %7 = ptrtoint ptr %oobavail8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %oobavail8, align 4
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @__init_rwsem(ptr noundef %wbuf_sem, ptr noundef nonnull @.str.17, ptr noundef nonnull @jffs2_nand_flash_setup.__key) #10
  %wbuf_dwork = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57
  tail call void @__init_work(ptr noundef %wbuf_dwork, i32 noundef 0) #10
  %8 = ptrtoint ptr %wbuf_dwork to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %wbuf_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @jffs2_nand_flash_setup.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry19 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1
  %9 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @delayed_wbuf_sync, ptr %func, align 4
  %timer = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @jffs2_nand_flash_setup.__key.20) #10
  %12 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writesize, align 4
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %16 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %wbuf_pagesize, align 4
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %17 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %wbuf_ofs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #15
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %18 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i, ptr %wbuf, align 4
  %tobool31.not = icmp eq ptr %call9.i, null
  br i1 %tobool31.not, label %do.end5.return_crit_edge, label %if.end33

do.end5.return_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end33:                                         ; preds = %do.end5
  %19 = ptrtoint ptr %oobavail8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oobavail8, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !180

kmalloc_array.exit.thread:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %oobbuf112 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 58
  %23 = ptrtoint ptr %oobbuf112 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %oobbuf112, align 4
  br label %if.then38

if.end7.i:                                        ; preds = %if.end33
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #15
  %oobbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 58
  %25 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i, ptr %oobbuf, align 4
  %tobool37.not = icmp eq ptr %call8.i, null
  br i1 %tobool37.not, label %if.end7.i.if.then38_crit_edge, label %if.end8.i101

if.end7.i.if.then38_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then38:                                        ; preds = %if.end7.i.if.then38_crit_edge, %kmalloc_array.exit.thread
  %26 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %27) #10
  br label %return

if.end8.i101:                                     ; preds = %if.end7.i
  %28 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wbuf_pagesize, align 4
  %call9.i100 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #15
  %wbuf_verify = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 51
  %30 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i100, ptr %wbuf_verify, align 4
  %tobool44.not = icmp eq ptr %call9.i100, null
  br i1 %tobool44.not, label %if.then45, label %if.end8.i101.return_crit_edge

if.end8.i101.return_crit_edge:                    ; preds = %if.end8.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then45:                                        ; preds = %if.end8.i101
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %oobbuf, align 4
  tail call void @kfree(ptr noundef %32) #10
  %33 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %34) #10
  br label %return

return:                                           ; preds = %if.then45, %if.end8.i101.return_crit_edge, %if.then38, %do.end5.return_crit_edge, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then45 ], [ -12, %if.then38 ], [ 0, %entry.return_crit_edge ], [ -12, %do.end5.return_crit_edge ], [ 0, %if.end8.i101.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_wbuf_sync(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %os_priv = getelementptr i8, ptr %work, i32 720
  %0 = ptrtoint ptr %os_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %os_priv, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %work, i32 -808
  %call2 = tail call i32 @jffs2_flush_wbuf_gc(ptr noundef %add.ptr.i, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_nand_flash_cleanup(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf_verify = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 51
  %0 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf_verify, align 4
  tail call void @kfree(ptr noundef %1) #10
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %2 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %3) #10
  %oobbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 58
  %4 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oobbuf, align 4
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_dataflash_setup(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %0 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cleanmarker_size, align 4
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @__init_rwsem(ptr noundef %wbuf_sem, ptr noundef nonnull @.str.17, ptr noundef nonnull @jffs2_dataflash_setup.__key) #10
  %wbuf_dwork = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57
  tail call void @__init_work(ptr noundef %wbuf_dwork, i32 noundef 0) #10
  %1 = ptrtoint ptr %wbuf_dwork to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %wbuf_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @jffs2_dataflash_setup.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1
  %2 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @delayed_wbuf_sync, ptr %func, align 4
  %timer = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @jffs2_dataflash_setup.__key.23) #10
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erasesize, align 8
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %9 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %wbuf_pagesize, align 4
  %10 = load i32, ptr %erasesize, align 8
  %mul = shl i32 %10, 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %storemerge = phi i32 [ %mul, %entry ], [ %mul21, %while.cond.while.cond_crit_edge ]
  %cmp = icmp ult i32 %storemerge, 8192
  %mul21 = shl nuw nsw i32 %storemerge, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %11 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %sector_size, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size, align 8
  %conv = trunc i64 %13 to i32
  %flash_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 9
  %14 = ptrtoint ptr %flash_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %flash_size, align 4
  %rem = urem i32 %conv, %storemerge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp25.not = icmp eq i32 %rem, 0
  br i1 %cmp25.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul30 = sub i32 %conv, %rem
  %15 = ptrtoint ptr %flash_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul30, ptr %flash_size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %mul30) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %16 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %wbuf_ofs, align 4
  %17 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wbuf_pagesize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #15
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %19 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i, ptr %wbuf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end8.i111

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end8.i111:                                     ; preds = %if.end
  %20 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wbuf_pagesize, align 4
  %call9.i110 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #15
  %wbuf_verify = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 51
  %22 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i110, ptr %wbuf_verify, align 4
  %tobool43.not = icmp eq ptr %call9.i110, null
  br i1 %tobool43.not, label %if.then44, label %do.end48

if.then44:                                        ; preds = %if.end8.i111
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %24) #10
  br label %return

do.end48:                                         ; preds = %if.end8.i111
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wbuf_pagesize, align 4
  %27 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sector_size, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %26, i32 noundef %28) #13
  br label %return

return:                                           ; preds = %do.end48, %if.then44, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end48 ], [ -12, %if.then44 ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_dataflash_cleanup(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf_verify = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 51
  %0 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf_verify, align 4
  tail call void @kfree(ptr noundef %1) #10
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %2 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_nor_wbuf_flash_setup(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 16)
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %5 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cleanmarker_size, align 4
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @__init_rwsem(ptr noundef %wbuf_sem, ptr noundef nonnull @.str.17, ptr noundef nonnull @jffs2_nor_wbuf_flash_setup.__key) #10
  %wbuf_dwork = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57
  tail call void @__init_work(ptr noundef %wbuf_dwork, i32 noundef 0) #10
  %6 = ptrtoint ptr %wbuf_dwork to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %wbuf_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @jffs2_nor_wbuf_flash_setup.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1
  %7 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @delayed_wbuf_sync, ptr %func, align 4
  %timer = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @jffs2_nor_wbuf_flash_setup.__key.30) #10
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c, align 4
  %writesize18 = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %writesize18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize18, align 4
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %14 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %wbuf_pagesize, align 4
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %15 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %wbuf_ofs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #15
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %16 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i, ptr %wbuf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end8.i74

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end8.i74:                                      ; preds = %entry
  %17 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wbuf_pagesize, align 4
  %call9.i73 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #15
  %wbuf_verify = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 51
  %19 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i73, ptr %wbuf_verify, align 4
  %tobool24.not = icmp eq ptr %call9.i73, null
  br i1 %tobool24.not, label %if.then25, label %if.end8.i74.return_crit_edge

if.end8.i74.return_crit_edge:                     ; preds = %if.end8.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then25:                                        ; preds = %if.end8.i74
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %21) #10
  br label %return

return:                                           ; preds = %if.then25, %if.end8.i74.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then25 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end8.i74.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_nor_wbuf_flash_cleanup(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf_verify = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 51
  %0 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf_verify, align 4
  tail call void @kfree(ptr noundef %1) #10
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %2 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_ubivol_setup(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %0 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cleanmarker_size, align 4
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  %wbuf_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 56
  tail call void @__init_rwsem(ptr noundef %wbuf_sem, ptr noundef nonnull @.str.17, ptr noundef nonnull @jffs2_ubivol_setup.__key) #10
  %wbuf_dwork = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57
  tail call void @__init_work(ptr noundef %wbuf_dwork, i32 noundef 0) #10
  %5 = ptrtoint ptr %wbuf_dwork to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %wbuf_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @jffs2_ubivol_setup.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1
  %6 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @delayed_wbuf_sync, ptr %func, align 4
  %timer = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 57, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @jffs2_ubivol_setup.__key.32) #10
  %9 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c, align 4
  %writesize18 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %writesize18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize18, align 4
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %13 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %wbuf_pagesize, align 4
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %14 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %wbuf_ofs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #15
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %15 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %wbuf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end24

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end24:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wbuf_pagesize, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %18 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sector_size, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %17, i32 noundef %19) #13
  br label %return

return:                                           ; preds = %do.end24, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end24 ], [ 0, %entry.return_crit_edge ], [ -12, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_ubivol_cleanup(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_prealloc_raw_node_refs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_verify_write(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %buf, i32 noundef %ofs) unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !172
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %conv = zext i32 %ofs to i64
  %wbuf_pagesize = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %3 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wbuf_pagesize, align 4
  %wbuf_verify = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 51
  %5 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wbuf_verify, align 4
  %call = call i32 @mtd_read(ptr noundef %2, i64 noundef %conv, i32 noundef %4, ptr noundef nonnull %retlen, ptr noundef %6) #10
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call, label %do.end [
    i32 0, label %entry.if.else_crit_edge
    i32 -117, label %entry.if.else_crit_edge71
    i32 -74, label %entry.if.else_crit_edge72
  ]

entry.if.else_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.if.else_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wbuf_ofs = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %8 = ptrtoint ptr %wbuf_ofs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wbuf_ofs, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %9, i32 noundef %call) #13
  br label %cleanup

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge71, %entry.if.else_crit_edge72
  %10 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retlen, align 4
  %12 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wbuf_pagesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp7.not = icmp eq i32 %11, %13
  br i1 %cmp7.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %ofs, i32 noundef %11, i32 noundef %13) #13
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %14 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wbuf_verify, align 4
  %bcmp = call i32 @bcmp(ptr %buf, ptr %15, i32 %11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool20.not = icmp eq i32 %bcmp, 0
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call)
  %switch.selectcmp = icmp eq i32 %call, -74
  %switch.select = select i1 %switch.selectcmp, ptr @.str.54, ptr @.str.55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call)
  %switch.selectcmp69 = icmp eq i32 %call, -117
  %switch.select70 = select i1 %switch.selectcmp69, ptr @.str.53, ptr %switch.select
  %wbuf_ofs37 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 53
  %16 = ptrtoint ptr %wbuf_ofs37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wbuf_ofs37, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull %switch.select70, i32 noundef %17) #13
  %wbuf = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %18 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wbuf, align 4
  %20 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wbuf_pagesize, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %19, i32 noundef %21, i1 noundef zeroext false) #10
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #13
  %22 = ptrtoint ptr %wbuf_verify to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wbuf_verify, align 4
  %24 = ptrtoint ptr %wbuf_pagesize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wbuf_pagesize, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %23, i32 noundef %25, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end16.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -5, %do.end12 ], [ -5, %if.end22 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_link_node_ref(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space_gc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_sum_disable_collecting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_add_physical_node_ref(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jffs2_ref_totlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_gc_fetch_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_gc_release_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_garbage_collect_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_lookup_node_frag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !68, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !111, !113, !115, !116, !117, !119, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/wbuf.c", i32 839, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_flash_writev._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_flash_writev._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/wbuf.c", i32 842, i32 4}
!8 = !{ptr @jffs2_flash_writev._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_flash_writev._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/wbuf.c", i32 971, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @jffs2_flash_read._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @jffs2_flash_read._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/jffs2/wbuf.c", i32 1048, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @jffs2_check_oob_empty._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @jffs2_check_oob_empty._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jffs2/wbuf.c", i32 1090, i32 3}
!22 = !{ptr @jffs2_check_nand_cleanmarker._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @jffs2_check_nand_cleanmarker._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jffs2/wbuf.c", i32 1115, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @jffs2_write_nand_cleanmarker._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @jffs2_write_nand_cleanmarker._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jffs2/wbuf.c", i32 1141, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jffs2_write_nand_badblock._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @jffs2_write_nand_badblock._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/wbuf.c", i32 1193, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jffs2_nand_flash_setup._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @jffs2_nand_flash_setup._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @jffs2_nand_flash_setup.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../fs/jffs2/wbuf.c", i32 1202, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @jffs2_nand_flash_setup.__key.18, !43, !"__key", i1 false, i1 false}
!43 = !{!"../fs/jffs2/wbuf.c", i32 1203, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @jffs2_nand_flash_setup.__key.20, !43, !"__key", i1 false, i1 false}
!46 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @jffs2_dataflash_setup.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../fs/jffs2/wbuf.c", i32 1241, i32 2}
!49 = !{ptr @jffs2_dataflash_setup.__key.22, !50, !"__key", i1 false, i1 false}
!50 = !{!"../fs/jffs2/wbuf.c", i32 1242, i32 2}
!51 = !{ptr @jffs2_dataflash_setup.__key.23, !50, !"__key", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jffs2/wbuf.c", i32 1264, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @jffs2_dataflash_setup._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @jffs2_dataflash_setup._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/jffs2/wbuf.c", i32 1280, i32 2}
!59 = !{ptr @jffs2_dataflash_setup._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @jffs2_dataflash_setup._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @jffs2_nor_wbuf_flash_setup.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../fs/jffs2/wbuf.c", i32 1299, i32 2}
!63 = !{ptr @jffs2_nor_wbuf_flash_setup.__key.29, !64, !"__key", i1 false, i1 false}
!64 = !{!"../fs/jffs2/wbuf.c", i32 1300, i32 2}
!65 = !{ptr @jffs2_nor_wbuf_flash_setup.__key.30, !64, !"__key", i1 false, i1 false}
!66 = !{ptr @jffs2_ubivol_setup.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../fs/jffs2/wbuf.c", i32 1333, i32 2}
!68 = !{ptr @jffs2_ubivol_setup.__key.31, !69, !"__key", i1 false, i1 false}
!69 = !{!"../fs/jffs2/wbuf.c", i32 1334, i32 2}
!70 = !{ptr @jffs2_ubivol_setup.__key.32, !69, !"__key", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/jffs2/wbuf.c", i32 1342, i32 2}
!73 = !{ptr @jffs2_ubivol_setup._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @jffs2_ubivol_setup._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @inodirty_nomem, !76, !"inodirty_nomem", i1 false, i1 false}
!76 = !{!"../fs/jffs2/wbuf.c", i32 46, i32 30}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/jffs2/wbuf.c", i32 592, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__jffs2_flush_wbuf._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @__jffs2_flush_wbuf._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/jffs2/wbuf.c", i32 642, i32 3}
!84 = !{ptr @__jffs2_flush_wbuf._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @__jffs2_flush_wbuf._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/jffs2/wbuf.c", i32 645, i32 3}
!88 = !{ptr @__jffs2_flush_wbuf._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @__jffs2_flush_wbuf._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/jffs2/wbuf.c", i32 668, i32 4}
!92 = !{ptr @__jffs2_flush_wbuf._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @__jffs2_flush_wbuf._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/jffs2/wbuf.c", i32 670, i32 4}
!96 = !{ptr @__jffs2_flush_wbuf._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @__jffs2_flush_wbuf._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/jffs2/wbuf.c", i32 239, i32 3}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @jffs2_verify_write._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @jffs2_verify_write._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/jffs2/wbuf.c", i32 243, i32 3}
!105 = !{ptr @jffs2_verify_write._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @jffs2_verify_write._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/jffs2/wbuf.c", i32 251, i32 12}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/jffs2/wbuf.c", i32 253, i32 12}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/jffs2/wbuf.c", i32 255, i32 12}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/jffs2/wbuf.c", i32 257, i32 2}
!115 = !{ptr @jffs2_verify_write._entry.56, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @jffs2_verify_write._entry_ptr.58, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/jffs2/wbuf.c", i32 259, i32 17}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/jffs2/wbuf.c", i32 259, i32 31}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/jffs2/wbuf.c", i32 262, i32 2}
!123 = !{ptr @jffs2_verify_write._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @jffs2_verify_write._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/jffs2/wbuf.c", i32 342, i32 4}
!127 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @jffs2_wbuf_recover._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @jffs2_wbuf_recover._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/jffs2/wbuf.c", i32 357, i32 4}
!132 = !{ptr @jffs2_wbuf_recover._entry.66, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @jffs2_wbuf_recover._entry_ptr.68, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/jffs2/wbuf.c", i32 391, i32 3}
!136 = !{ptr @jffs2_wbuf_recover._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @jffs2_wbuf_recover._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/jffs2/wbuf.c", i32 401, i32 3}
!140 = !{ptr @jffs2_wbuf_recover._entry.72, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @jffs2_wbuf_recover._entry_ptr.74, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/jffs2/wbuf.c", i32 434, i32 4}
!144 = !{ptr @jffs2_wbuf_recover._entry.75, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @jffs2_wbuf_recover._entry_ptr.77, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/jffs2/wbuf.c", i32 442, i32 3}
!148 = !{ptr @jffs2_wbuf_recover._entry.78, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @jffs2_wbuf_recover._entry_ptr.80, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/jffs2/wbuf.c", i32 508, i32 6}
!152 = !{ptr @jffs2_wbuf_recover._entry.81, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @jffs2_wbuf_recover._entry_ptr.83, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/jffs2/wbuf.c", i32 522, i32 5}
!156 = !{ptr @jffs2_wbuf_recover._entry.84, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @jffs2_wbuf_recover._entry_ptr.86, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @jffs2_refile_wbuf_blocks.n, !159, !"n", i1 false, i1 false}
!159 = !{!"../fs/jffs2/wbuf.c", i32 111, i32 13}
!160 = !{ptr @oob_cleanmarker, !161, !"oob_cleanmarker", i1 false, i1 false}
!161 = !{!"../fs/jffs2/wbuf.c", i32 1022, i32 40}
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
!172 = !{!"auto-init"}
!173 = !{i64 2155132355, i64 2155132835, i64 2155132392, i64 2155132448, i64 2155132482, i64 2155132506, i64 2155132547, i64 2155132568, i64 2155132596, i64 2155132630}
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !{i64 2155076841, i64 2155077321, i64 2155076878, i64 2155076934, i64 2155076968, i64 2155076992, i64 2155077033, i64 2155077054, i64 2155077082, i64 2155077116}
!176 = !{i64 2155106782, i64 2155107262, i64 2155106819, i64 2155106875, i64 2155106909, i64 2155106933, i64 2155106974, i64 2155106995, i64 2155107023, i64 2155107057}
!177 = !{i64 2155112443, i64 2155112923, i64 2155112480, i64 2155112536, i64 2155112570, i64 2155112594, i64 2155112635, i64 2155112656, i64 2155112684, i64 2155112718}
!178 = !{i64 2155116196, i64 2155116676, i64 2155116233, i64 2155116289, i64 2155116323, i64 2155116347, i64 2155116388, i64 2155116409, i64 2155116437, i64 2155116471}
!179 = !{i64 2155054801, i64 2155055281, i64 2155054838, i64 2155054894, i64 2155054928, i64 2155054952, i64 2155054993, i64 2155055014, i64 2155055042, i64 2155055076}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{i64 2155058129, i64 2155058609, i64 2155058166, i64 2155058222, i64 2155058256, i64 2155058280, i64 2155058321, i64 2155058342, i64 2155058370, i64 2155058404}
!182 = !{i64 2155061208, i64 2155061688, i64 2155061245, i64 2155061301, i64 2155061335, i64 2155061359, i64 2155061400, i64 2155061421, i64 2155061449, i64 2155061483}
!183 = !{i64 2155066005, i64 2155066485, i64 2155066042, i64 2155066098, i64 2155066132, i64 2155066156, i64 2155066197, i64 2155066218, i64 2155066246, i64 2155066280}
!184 = !{i64 2155119988, i64 2155120468, i64 2155120025, i64 2155120081, i64 2155120115, i64 2155120139, i64 2155120180, i64 2155120201, i64 2155120229, i64 2155120263}
!185 = !{i64 2155121598, i64 2155122078, i64 2155121635, i64 2155121691, i64 2155121725, i64 2155121749, i64 2155121790, i64 2155121811, i64 2155121839, i64 2155121873}
!186 = !{i64 2155123257, i64 2155123737, i64 2155123294, i64 2155123350, i64 2155123384, i64 2155123408, i64 2155123449, i64 2155123470, i64 2155123498, i64 2155123532}
!187 = !{i64 2155145239, i64 2155145719, i64 2155145276, i64 2155145332, i64 2155145366, i64 2155145390, i64 2155145431, i64 2155145452, i64 2155145480, i64 2155145514}
!188 = !{i64 2155166157, i64 2155166637, i64 2155166194, i64 2155166250, i64 2155166284, i64 2155166308, i64 2155166349, i64 2155166370, i64 2155166398, i64 2155166432}
!189 = !{i64 2155048405, i64 2155048885, i64 2155048442, i64 2155048498, i64 2155048532, i64 2155048556, i64 2155048597, i64 2155048618, i64 2155048646, i64 2155048680}
