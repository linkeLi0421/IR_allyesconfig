; ModuleID = '/llk/IR_all_yes/fs/jffs2/readinode.c_pt.bc'
source_filename = "../fs/jffs2/readinode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
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
%struct.jffs2_readinode_info = type { %struct.rb_root, ptr, i32, i32, i32, ptr, ptr }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.jffs2_unknown_node = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jffs2_raw_dirent = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [2 x i8], %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.jffs2_full_dirent = type { %union.anon.75, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.75 = type { ptr }
%struct.jffs2_tmp_dnode_info = type { %struct.rb_node, ptr, i32, i32, i32, i32, i16 }
%struct.jffs2_full_dnode = type { ptr, i32, i32, i32 }
%struct.jffs2_node_frag = type { %struct.rb_node, ptr, i32, i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/jffs2/readinode.c\00", [43 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013jffs2: error: (%d) %s: Eep. Trying to read_inode #%u when it's already in state %d!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jffs2_do_read_inode\00", [44 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode._entry_ptr = internal global ptr @jffs2_do_read_inode._entry, section ".printk_index", align 4
@jffs2_do_read_inode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013jffs2: error: (%d) %s: cannot allocate inocache for root inode\0A\00", [62 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode._entry_ptr.5 = internal global ptr @jffs2_do_read_inode._entry.3, section ".printk_index", align 4
@jffs2_do_read_inode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013jffs2: error: (%d) %s: requested to read a nonexistent ino %u\0A\00", [63 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode._entry_ptr.8 = internal global ptr @jffs2_do_read_inode._entry.6, section ".printk_index", align 4
@jffs2_do_crccheck_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"&f->sem\00", [24 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013jffs2: error: (%d) %s: cannot read nodes for ino %u, returned error is %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jffs2_do_read_inode_internal\00", [35 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr = internal global ptr @jffs2_do_read_inode_internal._entry, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013jffs2: error: (%d) %s: Failed to build final fragtree for inode #%u: error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.14 = internal global ptr @jffs2_do_read_inode_internal._entry.12, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014jffs2: warning: (%d) %s: no data nodes found for ino #%u\0A\00", [36 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.17 = internal global ptr @jffs2_do_read_inode_internal._entry.15, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015jffs2: notice: (%d) %s: but it has children so we fake some modes for it\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.20 = internal global ptr @jffs2_do_read_inode_internal._entry.18, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013jffs2: error: (%d) %s: failed to read from flash: error %d, %zd of %zd bytes read\0A\00", [43 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.23 = internal global ptr @jffs2_do_read_inode_internal._entry.21, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013jffs2: error: (%d) %s: CRC failed for read_inode of inode %u at physical location 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.26 = internal global ptr @jffs2_do_read_inode_internal._entry.24, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\014jffs2: warning: (%d) %s: Truncating ino #%u to %d bytes failed because it only had %d bytes to start with!\0A\00", [50 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.29 = internal global ptr @jffs2_do_read_inode_internal._entry.27, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013jffs2: error: (%d) %s: can't allocate %u bytes of memory for the symlink target path cache\0A\00", [34 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.32 = internal global ptr @jffs2_do_read_inode_internal._entry.30, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.11, ptr @.str, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013jffs2: error: (%d) %s: Argh. Special inode #%u with mode 0%o had metadata node\0A\00", [46 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.35 = internal global ptr @jffs2_do_read_inode_internal._entry.33, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.11, ptr @.str, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013jffs2: error: (%d) %s: Argh. Special inode #%u with mode 0%o has no fragments\0A\00", [47 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.38 = internal global ptr @jffs2_do_read_inode_internal._entry.36, section ".printk_index", align 4
@jffs2_do_read_inode_internal._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.11, ptr @.str, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013jffs2: error: (%d) %s: Argh. Special inode #%u with mode 0x%x had more than one node\0A\00", [40 x i8] zeroinitializer }, align 32
@jffs2_do_read_inode_internal._entry_ptr.41 = internal global ptr @jffs2_do_read_inode_internal._entry.39, section ".printk_index", align 4
@jffs2_get_inode_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014jffs2: warning: (%d) %s: Eep. No valid nodes for ino #%u.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_get_inode_nodes\00", [42 x i8] zeroinitializer }, align 32
@jffs2_get_inode_nodes._entry_ptr = internal global ptr @jffs2_get_inode_nodes._entry, section ".printk_index", align 4
@jffs2_get_inode_nodes._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013jffs2: error: (%d) %s: can not read %d bytes from 0x%08x, error code: %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@jffs2_get_inode_nodes._entry_ptr.46 = internal global ptr @jffs2_get_inode_nodes._entry.44, section ".printk_index", align 4
@jffs2_get_inode_nodes._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013jffs2: error: (%d) %s: short read at %#08x: %zu instead of %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@jffs2_get_inode_nodes._entry_ptr.49 = internal global ptr @jffs2_get_inode_nodes._entry.47, section ".printk_index", align 4
@jffs2_get_inode_nodes._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015jffs2: notice: (%d) %s: Node header CRC failed at %#08x. {%04x,%04x,%08x,%08x}\0A\00", [46 x i8] zeroinitializer }, align 32
@jffs2_get_inode_nodes._entry_ptr.52 = internal global ptr @jffs2_get_inode_nodes._entry.50, section ".printk_index", align 4
@jffs2_get_inode_nodes._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015jffs2: notice: (%d) %s: Wrong magic bitmask 0x%04x in node header at %#08x.\0A\00", [49 x i8] zeroinitializer }, align 32
@jffs2_get_inode_nodes._entry_ptr.55 = internal global ptr @jffs2_get_inode_nodes._entry.53, section ".printk_index", align 4
@read_direntry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\015jffs2: notice: (%d) %s: header CRC failed on dirent node at %#08x: read %#08x, calculated %#08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_direntry\00", [18 x i8] zeroinitializer }, align 32
@read_direntry._entry_ptr = internal global ptr @read_direntry._entry, section ".printk_index", align 4
@read_direntry._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013jffs2: error: (%d) %s: illegal nsize in node at %#08x: nsize %#02x, totlen %#04x\0A\00", [44 x i8] zeroinitializer }, align 32
@read_direntry._entry_ptr.60 = internal global ptr @read_direntry._entry.58, section ".printk_index", align 4
@read_direntry._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013jffs2: error: (%d) %s: short read: wanted %d bytes, got %zd\0A\00", [33 x i8] zeroinitializer }, align 32
@read_direntry._entry_ptr.63 = internal global ptr @read_direntry._entry.61, section ".printk_index", align 4
@read_direntry._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013jffs2: error: (%d) %s: read remainder of name: error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@read_direntry._entry_ptr.66 = internal global ptr @read_direntry._entry.64, section ".printk_index", align 4
@read_direntry._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\015jffs2: notice: (%d) %s: name CRC failed on dirent node at%#08x: read %#08x,calculated %#08x\0A\00", [33 x i8] zeroinitializer }, align 32
@read_direntry._entry_ptr.69 = internal global ptr @read_direntry._entry.67, section ".printk_index", align 4
@read_more._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.70, ptr @.str, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_more\00", [22 x i8] zeroinitializer }, align 32
@read_more._entry_ptr = internal global ptr @read_more._entry, section ".printk_index", align 4
@read_more._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.70, ptr @.str, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@read_more._entry_ptr.72 = internal global ptr @read_more._entry.71, section ".printk_index", align 4
@read_dnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\015jffs2: notice: (%d) %s: node CRC failed on dnode at %#08x: read %#08x, calculated %#08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read_dnode\00", [21 x i8] zeroinitializer }, align 32
@read_dnode._entry_ptr = internal global ptr @read_dnode._entry, section ".printk_index", align 4
@read_dnode._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013jffs2: error: (%d) %s: failed to allocate tn (%zu bytes).\0A\00", [35 x i8] zeroinitializer }, align 32
@read_dnode._entry_ptr.77 = internal global ptr @read_dnode._entry.75, section ".printk_index", align 4
@read_dnode._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014jffs2: warning: (%d) %s: inode node header CRC is corrupted at %#08x\0A\00", [56 x i8] zeroinitializer }, align 32
@read_dnode._entry_ptr.80 = internal global ptr @read_dnode._entry.78, section ".printk_index", align 4
@read_dnode._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015jffs2: notice: (%d) %s: wrong data CRC in data node at 0x%08x: read %#08x, calculated %#08x.\0A\00", [32 x i8] zeroinitializer }, align 32
@read_dnode._entry_ptr.83 = internal global ptr @read_dnode._entry.81, section ".printk_index", align 4
@read_dnode._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.74, ptr @.str, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013jffs2: error: (%d) %s: alloc fn failed\0A\00", [54 x i8] zeroinitializer }, align 32
@read_dnode._entry_ptr.86 = internal global ptr @read_dnode._entry.84, section ".printk_index", align 4
@check_tn_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013jffs2: error: (%d) %s: check_node_data() returned error: %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_tn_node\00", [18 x i8] zeroinitializer }, align 32
@check_tn_node._entry_ptr = internal global ptr @check_tn_node._entry, section ".printk_index", align 4
@check_node_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014jffs2: warning: (%d) %s: MTD point returned len too short: %zu instead of %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_node_data\00", [16 x i8] zeroinitializer }, align 32
@check_node_data._entry_ptr = internal global ptr @check_node_data._entry, section ".printk_index", align 4
@check_node_data._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014jffs2: warning: (%d) %s: MTD point failed: error code %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@check_node_data._entry_ptr.93 = internal global ptr @check_node_data._entry.91, section ".printk_index", align 4
@check_node_data._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.90, ptr @.str, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_node_data._entry_ptr.95 = internal global ptr @check_node_data._entry.94, section ".printk_index", align 4
@check_node_data._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.90, ptr @.str, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013jffs2: error: (%d) %s: short read at %#08x: %zd instead of %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@check_node_data._entry_ptr.98 = internal global ptr @check_node_data._entry.96, section ".printk_index", align 4
@check_node_data._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.90, ptr @.str, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_node_data._entry_ptr.100 = internal global ptr @check_node_data._entry.99, section ".printk_index", align 4
@read_unknown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013jffs2: error: (%d) %s: REF_UNCHECKED but unknown node at %#08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_unknown\00", [19 x i8] zeroinitializer }, align 32
@read_unknown._entry_ptr = internal global ptr @read_unknown._entry, section ".printk_index", align 4
@read_unknown._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013jffs2: error: (%d) %s: Node is {%04x,%04x,%08x,%08x}. Please report this error.\0A\00", [45 x i8] zeroinitializer }, align 32
@read_unknown._entry_ptr.105 = internal global ptr @read_unknown._entry.103, section ".printk_index", align 4
@read_unknown._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013jffs2: error: (%d) %s: unknown INCOMPAT nodetype %#04X at %#08x\0A\00", [61 x i8] zeroinitializer }, align 32
@read_unknown._entry_ptr.108 = internal global ptr @read_unknown._entry.106, section ".printk_index", align 4
@read_unknown._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013jffs2: error: (%d) %s: unknown ROCOMPAT nodetype %#04X at %#08x\0A\00", [61 x i8] zeroinitializer }, align 32
@read_unknown._entry_ptr.111 = internal global ptr @read_unknown._entry.109, section ".printk_index", align 4
@read_unknown._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015jffs2: notice: (%d) %s: unknown RWCOMPAT_COPY nodetype %#04X at %#08x\0A\00", [55 x i8] zeroinitializer }, align 32
@read_unknown._entry_ptr.114 = internal global ptr @read_unknown._entry.112, section ".printk_index", align 4
@read_unknown._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.102, ptr @.str, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\015jffs2: notice: (%d) %s: unknown RWCOMPAT_DELETE nodetype %#04X at %#08x\0A\00", [53 x i8] zeroinitializer }, align 32
@read_unknown._entry_ptr.117 = internal global ptr @read_unknown._entry.115, section ".printk_index", align 4
@jffs2_build_inode_fragtree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013jffs2: error: (%d) %s: Add node to tree failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jffs2_build_inode_fragtree\00", [37 x i8] zeroinitializer }, align 32
@jffs2_build_inode_fragtree._entry_ptr = internal global ptr @jffs2_build_inode_fragtree._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 16, i64 57345, i64 57346]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.122 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1351, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1359, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1374, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1385, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1401, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1163, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1171, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1202, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1208, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1223, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1231, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1250, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1273, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1299, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1304, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1310, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1004, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1047, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1052, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1061, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1072, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 598, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 611, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 665, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 671, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 683, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 961, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 967, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 727, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 735, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 748, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 803, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 834, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 165, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 69, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 73, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 87, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 92, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 108, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 892, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 894, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 906, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 913, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 919, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 924, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.414 = private constant [24 x i8] c"../fs/jffs2/readinode.c\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 522, i32 6 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @check_node_data._entry, ptr @check_node_data._entry.91, ptr @check_node_data._entry.94, ptr @check_node_data._entry.96, ptr @check_node_data._entry.99, ptr @check_node_data._entry_ptr, ptr @check_node_data._entry_ptr.100, ptr @check_node_data._entry_ptr.93, ptr @check_node_data._entry_ptr.95, ptr @check_node_data._entry_ptr.98, ptr @check_tn_node._entry, ptr @check_tn_node._entry_ptr, ptr @jffs2_build_inode_fragtree._entry, ptr @jffs2_build_inode_fragtree._entry_ptr, ptr @jffs2_do_read_inode._entry, ptr @jffs2_do_read_inode._entry.3, ptr @jffs2_do_read_inode._entry.6, ptr @jffs2_do_read_inode._entry_ptr, ptr @jffs2_do_read_inode._entry_ptr.5, ptr @jffs2_do_read_inode._entry_ptr.8, ptr @jffs2_do_read_inode_internal._entry, ptr @jffs2_do_read_inode_internal._entry.12, ptr @jffs2_do_read_inode_internal._entry.15, ptr @jffs2_do_read_inode_internal._entry.18, ptr @jffs2_do_read_inode_internal._entry.21, ptr @jffs2_do_read_inode_internal._entry.24, ptr @jffs2_do_read_inode_internal._entry.27, ptr @jffs2_do_read_inode_internal._entry.30, ptr @jffs2_do_read_inode_internal._entry.33, ptr @jffs2_do_read_inode_internal._entry.36, ptr @jffs2_do_read_inode_internal._entry.39, ptr @jffs2_do_read_inode_internal._entry_ptr, ptr @jffs2_do_read_inode_internal._entry_ptr.14, ptr @jffs2_do_read_inode_internal._entry_ptr.17, ptr @jffs2_do_read_inode_internal._entry_ptr.20, ptr @jffs2_do_read_inode_internal._entry_ptr.23, ptr @jffs2_do_read_inode_internal._entry_ptr.26, ptr @jffs2_do_read_inode_internal._entry_ptr.29, ptr @jffs2_do_read_inode_internal._entry_ptr.32, ptr @jffs2_do_read_inode_internal._entry_ptr.35, ptr @jffs2_do_read_inode_internal._entry_ptr.38, ptr @jffs2_do_read_inode_internal._entry_ptr.41, ptr @jffs2_get_inode_nodes._entry, ptr @jffs2_get_inode_nodes._entry.44, ptr @jffs2_get_inode_nodes._entry.47, ptr @jffs2_get_inode_nodes._entry.50, ptr @jffs2_get_inode_nodes._entry.53, ptr @jffs2_get_inode_nodes._entry_ptr, ptr @jffs2_get_inode_nodes._entry_ptr.46, ptr @jffs2_get_inode_nodes._entry_ptr.49, ptr @jffs2_get_inode_nodes._entry_ptr.52, ptr @jffs2_get_inode_nodes._entry_ptr.55, ptr @read_direntry._entry, ptr @read_direntry._entry.58, ptr @read_direntry._entry.61, ptr @read_direntry._entry.64, ptr @read_direntry._entry.67, ptr @read_direntry._entry_ptr, ptr @read_direntry._entry_ptr.60, ptr @read_direntry._entry_ptr.63, ptr @read_direntry._entry_ptr.66, ptr @read_direntry._entry_ptr.69, ptr @read_dnode._entry, ptr @read_dnode._entry.75, ptr @read_dnode._entry.78, ptr @read_dnode._entry.81, ptr @read_dnode._entry.84, ptr @read_dnode._entry_ptr, ptr @read_dnode._entry_ptr.77, ptr @read_dnode._entry_ptr.80, ptr @read_dnode._entry_ptr.83, ptr @read_dnode._entry_ptr.86, ptr @read_more._entry, ptr @read_more._entry.71, ptr @read_more._entry_ptr, ptr @read_more._entry_ptr.72, ptr @read_unknown._entry, ptr @read_unknown._entry.103, ptr @read_unknown._entry.106, ptr @read_unknown._entry.109, ptr @read_unknown._entry.112, ptr @read_unknown._entry.115, ptr @read_unknown._entry_ptr, ptr @read_unknown._entry_ptr.105, ptr @read_unknown._entry_ptr.108, ptr @read_unknown._entry_ptr.111, ptr @read_unknown._entry_ptr.114, ptr @read_unknown._entry_ptr.117, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @jffs2_do_crccheck_inode.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.97, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_crccheck_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_read_inode_internal._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_get_inode_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_get_inode_nodes._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_get_inode_nodes._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_get_inode_nodes._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_get_inode_nodes._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_direntry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_direntry._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_direntry._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_direntry._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_direntry._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_more._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_more._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dnode._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dnode._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dnode._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dnode._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_tn_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_node_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_node_data._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_node_data._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_node_data._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_node_data._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_unknown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_unknown._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_unknown._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_unknown._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_unknown._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_unknown._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_build_inode_fragtree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_read_inode(ptr noundef %c, ptr noundef %f, i32 noundef %ino, ptr noundef %latest_node) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inocache_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 48
  call void @_raw_spin_lock(ptr noundef %inocache_lock) #9
  %call190 = call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %ino) #9
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %inocache to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call190, ptr %inocache, align 8
  %tobool.not191 = icmp eq ptr %call190, null
  br i1 %tobool.not191, label %entry.if.end98_crit_edge, label %if.then.lr.ph

entry.if.end98_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then.lr.ph:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %inocache_wq = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 45
  %5 = getelementptr inbounds i8, ptr %__wait, i32 4
  br label %if.then

if.then:                                          ; preds = %__here.if.then_crit_edge, %if.then.lr.ph
  %call192 = phi ptr [ %call190, %if.then.lr.ph ], [ %call, %__here.if.then_crit_edge ]
  %state = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call192, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %do.body92 [
    i16 0, label %if.then.sw.bb_crit_edge
    i16 3, label %if.then.sw.bb_crit_edge223
    i16 1, label %if.then.sw.bb5_crit_edge
    i16 4, label %if.then.sw.bb5_crit_edge224
    i16 5, label %if.then.do.end82_crit_edge
    i16 2, label %if.then.do.end82_crit_edge225
  ]

if.then.do.end82_crit_edge225:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

if.then.do.end82_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

if.then.sw.bb5_crit_edge224:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.then.sw.bb5_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.then.sw.bb_crit_edge223:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge223
  %state.le = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call192, i32 0, i32 4
  %9 = ptrtoint ptr %state.le to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5, ptr %state.le, align 2
  br label %if.end98

sw.bb5:                                           ; preds = %if.then.sw.bb5_crit_edge, %if.then.sw.bb5_crit_edge224
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #9
  %10 = call ptr @memset(ptr %5, i32 255, i32 16)
  %11 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %__wait, align 4
  %12 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %1, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @default_wake_function, ptr %2, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %3, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %4, align 4
  call void @add_wait_queue(ptr noundef %inocache_wq, ptr noundef nonnull %__wait) #9
  br label %__here

__here:                                           ; preds = %sw.bb5
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@jffs2_do_read_inode, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 2, ptr %23, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !198
  call void @_raw_spin_unlock(ptr noundef %inocache_lock) #9
  call void @schedule() #9
  call void @remove_wait_queue(ptr noundef %inocache_wq, ptr noundef nonnull %__wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #9
  call void @_raw_spin_lock(ptr noundef %inocache_lock) #9
  %call = call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %ino) #9
  %25 = ptrtoint ptr %inocache to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %inocache, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %__here.if.end98_crit_edge, label %__here.if.then_crit_edge

__here.if.then_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

__here.if.end98_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end82:                                         ; preds = %if.then.do.end82_crit_edge, %if.then.do.end82_crit_edge225
  %26 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i171 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i171 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task85, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i, align 8
  %conv89 = zext i16 %7 to i32
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %31, ptr noundef nonnull @.str.2, i32 noundef %ino, i32 noundef %conv89) #12
  %32 = ptrtoint ptr %inocache to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %inocache, align 8
  br label %if.end98

do.body92:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1365, 0\0A.popsection", ""() #9, !srcloc !199
  unreachable

if.end98:                                         ; preds = %do.end82, %__here.if.end98_crit_edge, %sw.bb, %entry.if.end98_crit_edge
  call void @_raw_spin_unlock(ptr noundef %inocache_lock) #9
  %33 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inocache, align 8
  %tobool101.not = icmp eq ptr %34, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ino)
  %cmp = icmp eq i32 %ino, 1
  %or.cond = and i1 %cmp, %tobool101.not
  br i1 %or.cond, label %if.then103, label %if.end98.if.end128_crit_edge

if.end98.if.end128_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then103:                                       ; preds = %if.end98
  %call104 = call ptr @jffs2_alloc_inode_cache() #9
  %35 = ptrtoint ptr %inocache to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call104, ptr %inocache, align 8
  %tobool107.not = icmp eq ptr %call104, null
  br i1 %tobool107.not, label %do.end111, label %if.end117

do.end111:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i172 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i172 to ptr
  %task114 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task114 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task114, align 8
  %pid.i173 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid.i173 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid.i173, align 8
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %41, ptr noundef nonnull @.str.2) #12
  br label %return

if.end117:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %42 = call ptr @memset(ptr %call104, i32 0, i32 28)
  %43 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %inocache, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %pino_nlink, align 4
  %46 = load ptr, ptr %inocache, align 8
  %ino122 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %ino122 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %ino122, align 4
  %48 = load ptr, ptr %inocache, align 8
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %nodes, align 4
  %50 = load ptr, ptr %inocache, align 8
  %state126 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %state126 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 5, ptr %state126, align 2
  %52 = load ptr, ptr %inocache, align 8
  call void @jffs2_add_ino_cache(ptr noundef %c, ptr noundef %52) #9
  %53 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load ptr, ptr %inocache, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.end117, %if.end98.if.end128_crit_edge
  %54 = phi ptr [ %.pr, %if.end117 ], [ %34, %if.end98.if.end128_crit_edge ]
  %tobool130.not = icmp eq ptr %54, null
  br i1 %tobool130.not, label %do.end134, label %if.end140

do.end134:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %55 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i174 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i174 to ptr
  %task137 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task137 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task137, align 8
  %pid.i175 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid.i175 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid.i175, align 8
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %60, ptr noundef nonnull @.str.2, i32 noundef %ino) #12
  br label %return

if.end140:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %call141 = call fastcc i32 @jffs2_do_read_inode_internal(ptr noundef %c, ptr noundef %f, ptr noundef %latest_node)
  br label %return

return:                                           ; preds = %if.end140, %do.end134, %do.end111
  %retval.0 = phi i32 [ %call141, %if.end140 ], [ -2, %do.end134 ], [ -12, %do.end111 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_get_ino_cache(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_inode_cache() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_ino_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_do_read_inode_internal(ptr noundef %c, ptr noundef %f, ptr noundef %latest_node) unnamed_addr #0 align 64 {
entry:
  %ver_root.i = alloca %struct.rb_root, align 4
  %retlen.i.i = alloca i32, align 4
  %read.addr.i.i = alloca i32, align 4
  %retlen.i = alloca i32, align 4
  %rii = alloca %struct.jffs2_readinode_info, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rii) #9
  %0 = getelementptr inbounds %struct.jffs2_readinode_info, ptr %rii, i32 0, i32 1
  %1 = getelementptr inbounds %struct.jffs2_readinode_info, ptr %rii, i32 0, i32 2
  %2 = getelementptr inbounds %struct.jffs2_readinode_info, ptr %rii, i32 0, i32 3
  %3 = getelementptr inbounds %struct.jffs2_readinode_info, ptr %rii, i32 0, i32 4
  %4 = getelementptr inbounds %struct.jffs2_readinode_info, ptr %rii, i32 0, i32 5
  %5 = getelementptr inbounds %struct.jffs2_readinode_info, ptr %rii, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #9
  %6 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %retlen, align 4, !annotation !200
  %7 = call ptr @memset(ptr %rii, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #9
  %8 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %retlen.i, align 4, !annotation !200
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %3, align 4
  %wbuf_pagesize.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %10 = ptrtoint ptr %wbuf_pagesize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wbuf_pagesize.i, align 4
  %add.i = add i32 %11, 68
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %jffs2_get_inode_nodes.exit.thread459, label %if.end.i411

jffs2_get_inode_nodes.exit.thread459:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br label %do.end

if.end.i411:                                      ; preds = %entry
  %erase_completion_lock.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #9
  %inocache.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %12 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inocache.i, align 8
  %nodes.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nodes.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end.i411
  %ref.addr.0.i.i = phi ptr [ %15, %if.end.i411 ], [ %17, %while.body.i.i.while.cond.i.i_crit_edge ]
  %tobool.not.i.i412 = icmp eq ptr %ref.addr.0.i.i, null
  br i1 %tobool.not.i.i412, label %while.cond.i.i.land.lhs.true.i_crit_edge, label %land.rhs.i.i

while.cond.i.i.land.lhs.true.i_crit_edge:         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %16 = ptrtoint ptr %ref.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ref.addr.0.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.land.lhs.true.i_crit_edge, label %while.body.i.i

land.rhs.i.i.land.lhs.true.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %flash_offset.i.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flash_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flash_offset.i.i, align 4
  %and.i.i = and i32 %19, 3
  %cmp.i222.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i222.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.lr.ph.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

land.lhs.true.i:                                  ; preds = %land.rhs.i.i.land.lhs.true.i_crit_edge, %while.cond.i.i.land.lhs.true.i_crit_edge
  %ino.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ino.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.jffs2_get_inode_nodes.exit.thread_crit_edge, label %do.end.i

land.lhs.true.i.jffs2_get_inode_nodes.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_get_inode_nodes.exit.thread

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i223.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i223.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid.i.i, align 8
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %27, ptr noundef nonnull @.str.43, i32 noundef %21) #12
  br label %jffs2_get_inode_nodes.exit.thread

while.body.lr.ph.i:                               ; preds = %while.body.i.i
  %wbuf.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %hdr_crc.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %call9.i.i, i32 0, i32 3
  %nodetype.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %call9.i.i, i32 0, i32 1
  %totlen.i = getelementptr inbounds %struct.jffs2_unknown_node, ptr %call9.i.i, i32 0, i32 2
  %node_crc.i263.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 20
  %csize39.i.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 14
  %offset.i.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 13
  %isize.i.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 9
  %add.ptr.i276.i = getelementptr i8, ptr %call9.i.i, i32 68
  %data_crc.i.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 19
  %blocks.i278.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %sector_size.i279.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %used_size121.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %unchecked_size123.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %version.i286.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 5
  %compr.i.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 16
  %dsize.i.i = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call9.i.i, i32 0, i32 15
  %node_crc.i.i = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i.i, i32 0, i32 11
  %ino.i.i = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i.i, i32 0, i32 6
  %type.i.i = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i.i, i32 0, i32 9
  %mctime.i.i = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i.i, i32 0, i32 7
  %name118.i.i = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i.i, i32 0, i32 13
  %name_crc.i.i = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call9.i.i, i32 0, i32 12
  %flags.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cont.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %valid_ref.0427.i = phi ptr [ %ref.addr.0.i.i, %while.body.lr.ph.i ], [ %retval.0.i233.i, %cont.i.while.body.i_crit_edge ]
  %28 = ptrtoint ptr %valid_ref.0427.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %valid_ref.0427.i, align 4
  br label %while.cond.i226.i

while.cond.i226.i:                                ; preds = %while.body.i232.i.while.cond.i226.i_crit_edge, %while.body.i
  %ref.addr.0.i224.i = phi ptr [ %29, %while.body.i ], [ %31, %while.body.i232.i.while.cond.i226.i_crit_edge ]
  %tobool.not.i225.i = icmp eq ptr %ref.addr.0.i224.i, null
  br i1 %tobool.not.i225.i, label %while.cond.i226.i.jffs2_first_valid_node.exit234.i_crit_edge, label %land.rhs.i228.i

while.cond.i226.i.jffs2_first_valid_node.exit234.i_crit_edge: ; preds = %while.cond.i226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_first_valid_node.exit234.i

land.rhs.i228.i:                                  ; preds = %while.cond.i226.i
  %30 = ptrtoint ptr %ref.addr.0.i224.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ref.addr.0.i224.i, align 4
  %tobool1.not.i227.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i227.i, label %land.rhs.i228.i.jffs2_first_valid_node.exit234.i_crit_edge, label %while.body.i232.i

land.rhs.i228.i.jffs2_first_valid_node.exit234.i_crit_edge: ; preds = %land.rhs.i228.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_first_valid_node.exit234.i

while.body.i232.i:                                ; preds = %land.rhs.i228.i
  %flash_offset.i229.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.addr.0.i224.i, i32 0, i32 1
  %32 = ptrtoint ptr %flash_offset.i229.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flash_offset.i229.i, align 4
  %and.i230.i = and i32 %33, 3
  %cmp.i231.i = icmp eq i32 %and.i230.i, 1
  br i1 %cmp.i231.i, label %while.body.i232.i.while.cond.i226.i_crit_edge, label %while.body.i232.i.jffs2_first_valid_node.exit234.i_crit_edge

while.body.i232.i.jffs2_first_valid_node.exit234.i_crit_edge: ; preds = %while.body.i232.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_first_valid_node.exit234.i

while.body.i232.i.while.cond.i226.i_crit_edge:    ; preds = %while.body.i232.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i226.i

jffs2_first_valid_node.exit234.i:                 ; preds = %while.body.i232.i.jffs2_first_valid_node.exit234.i_crit_edge, %land.rhs.i228.i.jffs2_first_valid_node.exit234.i_crit_edge, %while.cond.i226.i.jffs2_first_valid_node.exit234.i_crit_edge
  %retval.0.i233.i = phi ptr [ %ref.addr.0.i224.i, %while.body.i232.i.jffs2_first_valid_node.exit234.i_crit_edge ], [ null, %while.cond.i226.i.jffs2_first_valid_node.exit234.i_crit_edge ], [ null, %land.rhs.i228.i.jffs2_first_valid_node.exit234.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #9
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 0) #9
  %call.i.i = call i32 @__cond_resched() #9
  %34 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wbuf.i, align 4
  %cmp17.not.i = icmp eq ptr %35, null
  br i1 %cmp17.not.i, label %jffs2_first_valid_node.exit234.i.if.end30.i_crit_edge, label %if.then18.i

jffs2_first_valid_node.exit234.i.if.end30.i_crit_edge: ; preds = %jffs2_first_valid_node.exit234.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then18.i:                                      ; preds = %jffs2_first_valid_node.exit234.i
  call void @__sanitizer_cov_trace_pc() #11
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %valid_ref.0427.i, i32 0, i32 1
  %36 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flash_offset.i, align 4
  %38 = add i32 %37, 40
  %add19.i = and i32 %38, -4
  %39 = ptrtoint ptr %wbuf_pagesize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wbuf_pagesize.i, align 4
  %rem21.i = urem i32 %add19.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21.i)
  %tobool22.not.i = icmp eq i32 %rem21.i, 0
  %sub.i = sub i32 %40, %rem21.i
  %add25.i = select i1 %tobool22.not.i, i32 0, i32 %sub.i
  %and28.i = and i32 %37, -4
  %end.0.i = sub i32 %add19.i, %and28.i
  %sub29.i = add i32 %end.0.i, %add25.i
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then18.i, %jffs2_first_valid_node.exit234.i.if.end30.i_crit_edge
  %len.0.i = phi i32 [ 40, %jffs2_first_valid_node.exit234.i.if.end30.i_crit_edge ], [ %sub29.i, %if.then18.i ]
  %flash_offset32.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %valid_ref.0427.i, i32 0, i32 1
  %41 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flash_offset32.i, align 4
  %and33.i = and i32 %42, -4
  %conv.i = zext i32 %and33.i to i64
  %call34.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i, i32 noundef %len.0.i, ptr noundef nonnull %retlen.i, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end47.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i235.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i235.i to ptr
  %task42.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task42.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task42.i, align 8
  %pid.i236.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid.i236.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid.i236.i, align 8
  %49 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flash_offset32.i, align 4
  %and45.i = and i32 %50, -4
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %48, ptr noundef nonnull @.str.43, i32 noundef %len.0.i, i32 noundef %and45.i, i32 noundef %call34.i) #12
  br label %free_out.i

if.end47.i:                                       ; preds = %if.end30.i
  %51 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %len.0.i)
  %cmp48.i = icmp ult i32 %52, %len.0.i
  br i1 %cmp48.i, label %do.end53.i, label %if.end61.i

do.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i237.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i237.i to ptr
  %task56.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task56.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task56.i, align 8
  %pid.i238.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 68
  %57 = ptrtoint ptr %pid.i238.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pid.i238.i, align 8
  %59 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flash_offset32.i, align 4
  %and59.i = and i32 %60, -4
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %58, ptr noundef nonnull @.str.43, i32 noundef %and59.i, i32 noundef %52, i32 noundef %len.0.i) #12
  br label %free_out.i

if.end61.i:                                       ; preds = %if.end47.i
  %61 = ptrtoint ptr %hdr_crc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hdr_crc.i, align 8
  %call62.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %call62.i)
  %cmp63.not.i = icmp eq i32 %62, %call62.i
  br i1 %cmp63.not.i, label %if.end82.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i239.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i239.i to ptr
  %task71.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task71.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task71.i, align 8
  %pid.i240.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid.i240.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid.i240.i, align 8
  %69 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flash_offset32.i, align 4
  %and74.i = and i32 %70, -4
  %71 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %call9.i.i, align 128
  %conv75.i = zext i16 %72 to i32
  %73 = ptrtoint ptr %nodetype.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %nodetype.i, align 2
  %conv77.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %totlen.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %totlen.i, align 4
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %68, ptr noundef nonnull @.str.43, i32 noundef %and74.i, i32 noundef %conv75.i, i32 noundef %conv77.i, i32 noundef %76, i32 noundef %62) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  br label %cont.i

if.end82.i:                                       ; preds = %if.end61.i
  %77 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 6533, i16 %78)
  %cmp86.not.i = icmp eq i16 %78, 6533
  br i1 %cmp86.not.i, label %if.end102.i, label %do.end91.i

do.end91.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i241.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i241.i to ptr
  %task94.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task94.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task94.i, align 8
  %pid.i242.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %pid.i242.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid.i242.i, align 8
  %conv98.i = zext i16 %78 to i32
  %85 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flash_offset32.i, align 4
  %and100.i = and i32 %86, -4
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %84, ptr noundef nonnull @.str.43, i32 noundef %conv98.i, i32 noundef %and100.i) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  br label %cont.i

if.end102.i:                                      ; preds = %if.end82.i
  %87 = ptrtoint ptr %nodetype.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %nodetype.i, align 2
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %88, label %sw.default.i [
    i16 -8191, label %sw.bb.i
    i16 -8190, label %sw.bb112.i
  ]

sw.bb.i:                                          ; preds = %if.end102.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.addr.i.i) #9
  %90 = ptrtoint ptr %read.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %52, ptr %read.addr.i.i, align 4
  %91 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flash_offset32.i, align 4
  %and.i244.i = and i32 %92, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i244.i)
  %cmp.i245.i = icmp eq i32 %and.i244.i, 1
  br i1 %cmp.i245.i, label %do.body2.i.i, label %do.end7.i.i, !prof !201

do.body2.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 594, 0\0A.popsection", ""() #9, !srcloc !202
  unreachable

do.end7.i.i:                                      ; preds = %sw.bb.i
  %call.i246.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef 32) #14
  %93 = ptrtoint ptr %node_crc.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %node_crc.i.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i246.i, i32 %94)
  %cmp8.not.i.i = icmp eq i32 %call.i246.i, %94
  br i1 %cmp8.not.i.i, label %if.end26.i.i413, label %do.end18.i.i, !prof !203

do.end18.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i.i, align 8
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 68
  %99 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pid.i.i.i, align 8
  %and22.i.i = and i32 %92, -4
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %100, ptr noundef nonnull @.str.57, i32 noundef %and22.i.i, i32 noundef %94, i32 noundef %call.i246.i) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  br label %read_direntry.exit.thread.i

if.end26.i.i413:                                  ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244.i)
  %cmp29.i.i = icmp eq i32 %and.i244.i, 0
  br i1 %cmp29.i.i, label %if.then30.i.i, label %if.end26.i.i413.if.end74.i.i_crit_edge

if.end26.i.i413.if.end74.i.i_crit_edge:           ; preds = %if.end26.i.i413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i.i

if.then30.i.i:                                    ; preds = %if.end26.i.i413
  %101 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %isize.i.i, align 4
  %conv.i.i = zext i8 %102 to i32
  %add31.i.i = add nuw nsw i32 %conv.i.i, 43
  %and32.i.i = and i32 %add31.i.i, 508
  %103 = ptrtoint ptr %totlen.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %totlen.i, align 4
  %add34.i.i = add i32 %104, 3
  %and35.i.i = and i32 %add34.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and32.i.i, i32 %and35.i.i)
  %cmp36.not.i.i = icmp eq i32 %and32.i.i, %and35.i.i
  br i1 %cmp36.not.i.i, label %if.end59.i.i, label %do.end47.i.i, !prof !203

do.end47.i.i:                                     ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i332.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i332.i.i to ptr
  %task50.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task50.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task50.i.i, align 8
  %pid.i333.i.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 68
  %109 = ptrtoint ptr %pid.i333.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pid.i333.i.i, align 8
  %and53.i.i = and i32 %92, -4
  %call58.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %110, ptr noundef nonnull @.str.57, i32 noundef %and53.i.i, i32 noundef %conv.i.i, i32 noundef %104) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  br label %read_direntry.exit.thread.i

if.end59.i.i:                                     ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %blocks.i278.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %blocks.i278.i, align 4
  %113 = ptrtoint ptr %sector_size.i279.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sector_size.i279.i, align 4
  %div.i.i = udiv i32 %92, %114
  %arrayidx.i.i = getelementptr %struct.jffs2_eraseblock, ptr %112, i32 %div.i.i
  %call61.i.i = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %valid_ref.0427.i) #9
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #9
  %used_size.i.i = getelementptr %struct.jffs2_eraseblock, ptr %112, i32 %div.i.i, i32 4
  %115 = ptrtoint ptr %used_size.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %used_size.i.i, align 4
  %add62.i.i = add i32 %116, %call61.i.i
  store i32 %add62.i.i, ptr %used_size.i.i, align 4
  %unchecked_size.i.i = getelementptr %struct.jffs2_eraseblock, ptr %112, i32 %div.i.i, i32 3
  %117 = ptrtoint ptr %unchecked_size.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %unchecked_size.i.i, align 4
  %sub.i.i = sub i32 %118, %call61.i.i
  store i32 %sub.i.i, ptr %unchecked_size.i.i, align 4
  %119 = ptrtoint ptr %used_size121.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %used_size121.i.i, align 4
  %add64.i.i = add i32 %120, %call61.i.i
  store i32 %add64.i.i, ptr %used_size121.i.i, align 4
  %121 = ptrtoint ptr %unchecked_size123.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %unchecked_size123.i.i, align 4
  %sub66.i.i = sub i32 %122, %call61.i.i
  store i32 %sub66.i.i, ptr %unchecked_size123.i.i, align 4
  %123 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flash_offset32.i, align 4
  %and68.i.i = and i32 %124, -4
  %125 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ino.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool70.not.i.i = icmp eq i32 %126, 0
  %cond.i.i = select i1 %tobool70.not.i.i, i32 3, i32 2
  %or.i.i = or i32 %cond.i.i, %and68.i.i
  %127 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or.i.i, ptr %flash_offset32.i, align 4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #9
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.end59.i.i, %if.end26.i.i413.if.end74.i.i_crit_edge
  %128 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %isize.i.i, align 4
  %conv76.i.i = zext i8 %129 to i32
  %add77.i.i = add nuw nsw i32 %conv76.i.i, 1
  %call78.i.i = call ptr @jffs2_alloc_full_dirent(i32 noundef %add77.i.i) #9
  %tobool79.not.i.i = icmp eq ptr %call78.i.i, null
  br i1 %tobool79.not.i.i, label %if.end74.i.i.read_direntry.exit.i_crit_edge, label %if.end89.i.i, !prof !201

if.end74.i.i.read_direntry.exit.i_crit_edge:      ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_direntry.exit.i

if.end89.i.i:                                     ; preds = %if.end74.i.i
  %130 = ptrtoint ptr %call78.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %valid_ref.0427.i, ptr %call78.i.i, align 4
  %131 = ptrtoint ptr %version.i286.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %version.i286.i, align 16
  %version91.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %version91.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %version91.i.i, align 4
  %134 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ino.i.i, align 4
  %ino94.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 3
  %136 = ptrtoint ptr %ino94.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %ino94.i.i, align 4
  %137 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %type.i.i, align 1
  %type95.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 5
  %139 = ptrtoint ptr %type95.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %type95.i.i, align 4
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %141)
  %cmp97.i.i = icmp ugt i32 %132, %141
  br i1 %cmp97.i.i, label %if.then99.i.i, label %if.end89.i.i.if.end102.i.i_crit_edge

if.end89.i.i.if.end102.i.i_crit_edge:             ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i.i

if.then99.i.i:                                    ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %132, ptr %1, align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.then99.i.i, %if.end89.i.i.if.end102.i.i_crit_edge
  %143 = ptrtoint ptr %version91.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %version91.i.i, align 4
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp104.i.i = icmp ugt i32 %144, %146
  br i1 %cmp104.i.i, label %land.lhs.true.i.i, label %if.end102.i.i.if.end113.i.i_crit_edge

if.end102.i.i.if.end113.i.i_crit_edge:            ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i.i

land.lhs.true.i.i:                                ; preds = %if.end102.i.i
  %147 = ptrtoint ptr %mctime.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mctime.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool107.not.i.i = icmp eq i32 %148, 0
  br i1 %tobool107.not.i.i, label %land.lhs.true.i.i.if.end113.i.i_crit_edge, label %if.then108.i.i

land.lhs.true.i.i.if.end113.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i.i

if.then108.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %144, ptr %3, align 4
  %150 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %148, ptr %2, align 4
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %if.then108.i.i, %land.lhs.true.i.i.if.end113.i.i_crit_edge, %if.end102.i.i.if.end113.i.i_crit_edge
  %151 = ptrtoint ptr %read.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %read.addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %152)
  %cmp114.i.i = icmp ugt i32 %152, 40
  br i1 %cmp114.i.i, label %if.then116.i.i, label %if.end113.i.i.if.end127.i.i_crit_edge

if.end113.i.i.if.end127.i.i_crit_edge:            ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127.i.i

if.then116.i.i:                                   ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 6
  %153 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %isize.i.i, align 4
  %conv121.i.i = zext i8 %154 to i32
  %sub122.i.i = add i32 %152, -40
  %155 = call i32 @llvm.umin.i32(i32 %sub122.i.i, i32 %conv121.i.i) #9
  %156 = call ptr @memcpy(ptr %name.i.i, ptr %name118.i.i, i32 %155)
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.then116.i.i, %if.end113.i.i.if.end127.i.i_crit_edge
  %157 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %isize.i.i, align 4
  %conv129.i.i = zext i8 %158 to i32
  %add130.i.i = add nuw nsw i32 %conv129.i.i, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %add130.i.i, i32 %152)
  %cmp131.i.i = icmp ugt i32 %add130.i.i, %152
  br i1 %cmp131.i.i, label %if.then133.i.i, label %if.end127.i.i.if.end227.i.i_crit_edge

if.end127.i.i.if.end227.i.i_crit_edge:            ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227.i.i

if.then133.i.i:                                   ; preds = %if.end127.i.i
  %sub134.i.i = add i32 %152, -40
  %159 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flash_offset32.i, align 4
  %and136.i.i = and i32 %160, -4
  %add137.i.i = add i32 %and136.i.i, %152
  %conv138.i.i = zext i32 %add137.i.i to i64
  %sub141.i.i = sub i32 %conv129.i.i, %sub134.i.i
  %name142.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 6
  %arrayidx143.i.i = getelementptr %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 6, i32 %sub134.i.i
  %call144.i.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv138.i.i, i32 noundef %sub141.i.i, ptr noundef nonnull %read.addr.i.i, ptr noundef %arrayidx143.i.i) #9
  %161 = ptrtoint ptr %read.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %read.addr.i.i, align 4
  %163 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %isize.i.i, align 4
  %conv146.i.i = zext i8 %164 to i32
  %sub147.i.i = sub i32 %conv146.i.i, %sub134.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %sub147.i.i)
  %cmp148.not.i.i = icmp eq i32 %162, %sub147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i.i)
  %tobool179.not.i.i = icmp eq i32 %call144.i.i, 0
  br i1 %cmp148.not.i.i, label %if.end178.i.i, label %land.lhs.true156.i.i, !prof !203

land.lhs.true156.i.i:                             ; preds = %if.then133.i.i
  br i1 %tobool179.not.i.i, label %if.then166.i.i, label %land.lhs.true156.i.i.do.end189.i.i_crit_edge, !prof !203

land.lhs.true156.i.i.do.end189.i.i_crit_edge:     ; preds = %land.lhs.true156.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end189.i.i

if.then166.i.i:                                   ; preds = %land.lhs.true156.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @jffs2_free_full_dirent(ptr noundef nonnull %call78.i.i) #9
  %165 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i334.i.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i334.i.i to ptr
  %task172.i.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task172.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task172.i.i, align 8
  %pid.i335.i.i = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 68
  %169 = ptrtoint ptr %pid.i335.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pid.i335.i.i, align 8
  %171 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %isize.i.i, align 4
  %conv175.i.i = zext i8 %172 to i32
  %sub176.i.i = sub i32 %conv175.i.i, %sub134.i.i
  %173 = ptrtoint ptr %read.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %read.addr.i.i, align 4
  %call177.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %170, ptr noundef nonnull @.str.57, i32 noundef %sub176.i.i, i32 noundef %174) #12
  br label %read_direntry.exit.i

if.end178.i.i:                                    ; preds = %if.then133.i.i
  br i1 %tobool179.not.i.i, label %if.end195.i.i, label %if.end178.i.i.do.end189.i.i_crit_edge, !prof !203

if.end178.i.i.do.end189.i.i_crit_edge:            ; preds = %if.end178.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end189.i.i

do.end189.i.i:                                    ; preds = %if.end178.i.i.do.end189.i.i_crit_edge, %land.lhs.true156.i.i.do.end189.i.i_crit_edge
  %175 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i336.i.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i336.i.i to ptr
  %task192.i.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %task192.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task192.i.i, align 8
  %pid.i337.i.i = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 68
  %179 = ptrtoint ptr %pid.i337.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %pid.i337.i.i, align 8
  %call194.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %180, ptr noundef nonnull @.str.57, i32 noundef %call144.i.i) #12
  call void @jffs2_free_full_dirent(ptr noundef nonnull %call78.i.i) #9
  br label %read_direntry.exit.i

if.end195.i.i:                                    ; preds = %if.end178.i.i
  %call199.i.i = call i32 @crc32_le(i32 noundef 0, ptr noundef %name142.i.i, i32 noundef %conv146.i.i) #14
  %181 = ptrtoint ptr %name_crc.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %name_crc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call199.i.i, i32 %182)
  %cmp201.not.i.i = icmp eq i32 %call199.i.i, %182
  br i1 %cmp201.not.i.i, label %if.end195.i.i.if.end227.i.i_crit_edge, label %do.end212.i.i, !prof !203

if.end195.i.i.if.end227.i.i_crit_edge:            ; preds = %if.end195.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227.i.i

do.end212.i.i:                                    ; preds = %if.end195.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %183 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i338.i.i = and i32 %183, -16384
  %184 = inttoptr i32 %and.i338.i.i to ptr
  %task215.i.i = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %task215.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %task215.i.i, align 8
  %pid.i339.i.i = getelementptr inbounds %struct.task_struct, ptr %186, i32 0, i32 68
  %187 = ptrtoint ptr %pid.i339.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %pid.i339.i.i, align 8
  %189 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flash_offset32.i, align 4
  %and218.i.i = and i32 %190, -4
  %191 = ptrtoint ptr %node_crc.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %node_crc.i.i, align 32
  %call221.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %188, ptr noundef nonnull @.str.57, i32 noundef %and218.i.i, i32 noundef %192, i32 noundef %call199.i.i) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  call void @jffs2_free_full_dirent(ptr noundef nonnull %call78.i.i) #9
  br label %read_direntry.exit.thread.i

if.end227.i.i:                                    ; preds = %if.end195.i.i.if.end227.i.i_crit_edge, %if.end127.i.i.if.end227.i.i_crit_edge
  %name228.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 6
  %193 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %isize.i.i, align 4
  %conv231.i.i = zext i8 %194 to i32
  %call232.i.i = call i32 @full_name_hash(ptr noundef null, ptr noundef %name228.i.i, i32 noundef %conv231.i.i) #14
  %nhash.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 4
  %195 = ptrtoint ptr %nhash.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %call232.i.i, ptr %nhash.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 1
  %196 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %next.i.i, align 4
  %197 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %isize.i.i, align 4
  %idxprom.i.i = zext i8 %198 to i32
  %arrayidx235.i.i = getelementptr %struct.jffs2_full_dirent, ptr %call78.i.i, i32 0, i32 6, i32 %idxprom.i.i
  %199 = ptrtoint ptr %arrayidx235.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %arrayidx235.i.i, align 1
  call void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef nonnull %call78.i.i, ptr noundef %4) #9
  br label %read_direntry.exit.thread.i

read_direntry.exit.thread.i:                      ; preds = %if.end227.i.i, %do.end212.i.i, %do.end47.i.i, %do.end18.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.addr.i.i) #9
  br label %cont.i

read_direntry.exit.i:                             ; preds = %do.end189.i.i, %if.then166.i.i, %if.end74.i.i.read_direntry.exit.i_crit_edge
  %retval.3.i.i = phi i32 [ -5, %if.then166.i.i ], [ -5, %do.end189.i.i ], [ -12, %if.end74.i.i.read_direntry.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.addr.i.i) #9
  br label %free_out.i

sw.bb112.i:                                       ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %len.0.i)
  %cmp113.i = icmp ult i32 %len.0.i, 68
  br i1 %cmp113.i, label %if.then115.i, label %sw.bb112.i.if.end126.i_crit_edge

sw.bb112.i.if.end126.i_crit_edge:                 ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

if.then115.i:                                     ; preds = %sw.bb112.i
  %sub.i247.i = sub nuw nsw i32 68, %len.0.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i.i) #9
  %200 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %retlen.i.i, align 4, !annotation !200
  %201 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %wbuf.i, align 4
  %cmp.not.i.i = icmp eq ptr %202, null
  br i1 %cmp.not.i.i, label %if.then115.i.if.end5.i.i_crit_edge, label %if.then.i249.i

if.then115.i.if.end5.i.i_crit_edge:               ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then.i249.i:                                   ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #11
  %203 = ptrtoint ptr %wbuf_pagesize.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %wbuf_pagesize.i, align 4
  %rem1.i.i = urem i32 %sub.i247.i, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i)
  %tobool.not.i248.i = icmp eq i32 %rem1.i.i, 0
  %sub4.i.i = sub i32 %204, %rem1.i.i
  %add.i.i = select i1 %tobool.not.i248.i, i32 0, i32 %sub4.i.i
  %to_read.0.i.i = add i32 %add.i.i, %sub.i247.i
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then.i249.i, %if.then115.i.if.end5.i.i_crit_edge
  %to_read.1.i.i = phi i32 [ %to_read.0.i.i, %if.then.i249.i ], [ %sub.i247.i, %if.then115.i.if.end5.i.i_crit_edge ]
  %205 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %flash_offset32.i, align 4
  %and.i251.i = and i32 %206, -4
  %add6.i.i = add i32 %and.i251.i, %len.0.i
  %conv.i252.i = zext i32 %add6.i.i to i64
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %len.0.i
  %call.i253.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i252.i, i32 noundef %to_read.1.i.i, ptr noundef nonnull %retlen.i.i, ptr noundef %add.ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253.i)
  %tobool7.not.i.i = icmp eq i32 %call.i253.i, 0
  br i1 %tobool7.not.i.i, label %if.end13.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %207 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i.i254.i = and i32 %207, -16384
  %208 = inttoptr i32 %and.i.i254.i to ptr
  %task.i255.i = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %task.i255.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %task.i255.i, align 8
  %pid.i.i256.i = getelementptr inbounds %struct.task_struct, ptr %210, i32 0, i32 68
  %211 = ptrtoint ptr %pid.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pid.i.i256.i, align 8
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %212, ptr noundef nonnull @.str.70, i32 noundef %to_read.1.i.i, i32 noundef %add6.i.i, i32 noundef %call.i253.i) #12
  br label %read_more.exit.thread.i

if.end13.i.i:                                     ; preds = %if.end5.i.i
  %213 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %retlen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %to_read.1.i.i)
  %cmp14.i.i = icmp ult i32 %214, %to_read.1.i.i
  br i1 %cmp14.i.i, label %do.end19.i.i, label %read_more.exit.i

do.end19.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %215 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i1.i.i = and i32 %215, -16384
  %216 = inttoptr i32 %and.i1.i.i to ptr
  %task22.i.i = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %task22.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %task22.i.i, align 8
  %pid.i2.i.i = getelementptr inbounds %struct.task_struct, ptr %218, i32 0, i32 68
  %219 = ptrtoint ptr %pid.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pid.i2.i.i, align 8
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %220, ptr noundef nonnull @.str.70, i32 noundef %add6.i.i, i32 noundef %214, i32 noundef %to_read.1.i.i) #12
  br label %read_more.exit.thread.i

read_more.exit.thread.i:                          ; preds = %do.end19.i.i, %do.end.i.i
  %retval.0.i257.ph.i = phi i32 [ -5, %do.end19.i.i ], [ %call.i253.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #9
  br label %free_out.i

read_more.exit.i:                                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add26.i.i = add i32 %to_read.1.i.i, %len.0.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #9
  br label %if.end126.i

if.end126.i:                                      ; preds = %read_more.exit.i, %sw.bb112.i.if.end126.i_crit_edge
  %len.2.i = phi i32 [ %add26.i.i, %read_more.exit.i ], [ %len.0.i, %sw.bb112.i.if.end126.i_crit_edge ]
  %221 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flash_offset32.i, align 4
  %and.i259.i = and i32 %222, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i259.i)
  %cmp.i260.i = icmp eq i32 %and.i259.i, 1
  br i1 %cmp.i260.i, label %do.body2.i261.i, label %do.end7.i265.i, !prof !201

do.body2.i261.i:                                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 723, 0\0A.popsection", ""() #9, !srcloc !204
  unreachable

do.end7.i265.i:                                   ; preds = %if.end126.i
  %call.i262.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef 60) #14
  %223 = ptrtoint ptr %node_crc.i263.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %node_crc.i263.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i262.i, i32 %224)
  %cmp8.not.i264.i = icmp eq i32 %call.i262.i, %224
  br i1 %cmp8.not.i264.i, label %if.end26.i272.i, label %do.end18.i271.i, !prof !203

do.end18.i271.i:                                  ; preds = %do.end7.i265.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i.i266.i = and i32 %225, -16384
  %226 = inttoptr i32 %and.i.i266.i to ptr
  %task.i267.i = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %task.i267.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %task.i267.i, align 8
  %pid.i.i268.i = getelementptr inbounds %struct.task_struct, ptr %228, i32 0, i32 68
  %229 = ptrtoint ptr %pid.i.i268.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pid.i.i268.i, align 8
  %and22.i269.i = and i32 %222, -4
  %call25.i270.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %230, ptr noundef nonnull @.str.74, i32 noundef %and22.i269.i, i32 noundef %224, i32 noundef %call.i262.i) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  br label %cont.i

if.end26.i272.i:                                  ; preds = %do.end7.i265.i
  %call27.i.i = call ptr @jffs2_alloc_tmp_dnode_info() #9
  %tobool28.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool28.not.i.i, label %read_dnode.exit.thread333.i, label %if.end38.i.i

read_dnode.exit.thread333.i:                      ; preds = %if.end26.i272.i
  call void @__sanitizer_cov_trace_pc() #11
  %231 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i266.i.i = and i32 %231, -16384
  %232 = inttoptr i32 %and.i266.i.i to ptr
  %task35.i.i = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %task35.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %task35.i.i, align 8
  %pid.i267.i.i = getelementptr inbounds %struct.task_struct, ptr %234, i32 0, i32 68
  %235 = ptrtoint ptr %pid.i267.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %pid.i267.i.i, align 8
  %call37.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %236, ptr noundef nonnull @.str.74, i32 noundef 36) #12
  br label %free_out.i

if.end38.i.i:                                     ; preds = %if.end26.i272.i
  %partial_crc.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %call27.i.i, i32 0, i32 4
  %237 = ptrtoint ptr %partial_crc.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %partial_crc.i.i, align 4
  %238 = ptrtoint ptr %csize39.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %csize39.i.i, align 16
  %240 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flash_offset32.i, align 4
  %and42.i.i = and i32 %241, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %cmp43.i.i = icmp eq i32 %and42.i.i, 0
  br i1 %cmp43.i.i, label %if.then44.i.i, label %if.end38.i.i.if.end131.i.i_crit_edge

if.end38.i.i.if.end131.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131.i.i

if.then44.i.i:                                    ; preds = %if.end38.i.i
  %242 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %offset.i.i, align 4
  %244 = ptrtoint ptr %isize.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %isize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %245)
  %cmp47.i.i = icmp ugt i32 %243, %245
  br i1 %cmp47.i.i, label %if.then44.i.i.do.end71.i.i_crit_edge, label %lor.lhs.false.i.i, !prof !201

if.then44.i.i.do.end71.i.i_crit_edge:             ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71.i.i

lor.lhs.false.i.i:                                ; preds = %if.then44.i.i
  %add56.i.i = add i32 %239, 71
  %246 = ptrtoint ptr %totlen.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %totlen.i, align 4
  %add59.i.i = add i32 %247, 3
  %248 = xor i32 %add59.i.i, %add56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %248)
  %cmp61.not.i.i = icmp ult i32 %248, 4
  br i1 %cmp61.not.i.i, label %if.end79.i.i, label %lor.lhs.false.i.i.do.end71.i.i_crit_edge, !prof !203

lor.lhs.false.i.i.do.end71.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71.i.i

do.end71.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end71.i.i_crit_edge, %if.then44.i.i.do.end71.i.i_crit_edge
  %249 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i268.i.i = and i32 %249, -16384
  %250 = inttoptr i32 %and.i268.i.i to ptr
  %task74.i.i = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 2
  %251 = ptrtoint ptr %task74.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %task74.i.i, align 8
  %pid.i269.i.i = getelementptr inbounds %struct.task_struct, ptr %252, i32 0, i32 68
  %253 = ptrtoint ptr %pid.i269.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %pid.i269.i.i, align 8
  %and77.i.i = and i32 %241, -4
  %call78.i274.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %254, ptr noundef nonnull @.str.74, i32 noundef %and77.i.i) #12
  br label %read_dnode.exit.thread337.i

if.end79.i.i:                                     ; preds = %lor.lhs.false.i.i
  %255 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %wbuf.i, align 4
  %cmp80.not.i.i = icmp eq ptr %256, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp81.not.i.i = icmp eq i32 %239, 0
  %or.cond.i.i = select i1 %cmp80.not.i.i, i1 true, i1 %cmp81.not.i.i
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then82.i.i

if.then82.i.i:                                    ; preds = %if.end79.i.i
  %sub.i277.i = add i32 %len.2.i, -68
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i277.i, i32 %239)
  %cmp84.i.i = icmp ult i32 %sub.i277.i, %239
  %257 = call i32 @llvm.umin.i32(i32 %sub.i277.i, i32 %239) #9
  %call85.i.i = call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr.i276.i, i32 noundef %257) #14
  %258 = ptrtoint ptr %partial_crc.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %call85.i.i, ptr %partial_crc.i.i, align 4
  br i1 %cmp84.i.i, label %if.then82.i.i.if.end131.i.i_crit_edge, label %land.lhs.true89.i.i

if.then82.i.i.if.end131.i.i_crit_edge:            ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131.i.i

land.lhs.true89.i.i:                              ; preds = %if.then82.i.i
  %259 = ptrtoint ptr %data_crc.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %data_crc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call85.i.i, i32 %260)
  %cmp92.not.i.i = icmp eq i32 %call85.i.i, %260
  br i1 %cmp92.not.i.i, label %land.lhs.true89.i.i.if.end131.i.i_crit_edge, label %cleanup.i.i, !prof !203

land.lhs.true89.i.i.if.end131.i.i_crit_edge:      ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %261 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i270.i.i = and i32 %261, -16384
  %262 = inttoptr i32 %and.i270.i.i to ptr
  %task105.i.i = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %task105.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %task105.i.i, align 8
  %pid.i271.i.i = getelementptr inbounds %struct.task_struct, ptr %264, i32 0, i32 68
  %265 = ptrtoint ptr %pid.i271.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %pid.i271.i.i, align 8
  %267 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %flash_offset32.i, align 4
  %and108.i.i = and i32 %268, -4
  %call112.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %266, ptr noundef nonnull @.str.74, i32 noundef %and108.i.i, i32 noundef %call85.i.i, i32 noundef %260) #12
  br label %read_dnode.exit.thread337.i

if.else.i.i:                                      ; preds = %if.end79.i.i
  br i1 %cmp81.not.i.i, label %if.then115.i.i, label %if.else.i.i.if.end131.i.i_crit_edge

if.else.i.i.if.end131.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131.i.i

if.then115.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %269 = ptrtoint ptr %blocks.i278.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %blocks.i278.i, align 4
  %271 = ptrtoint ptr %sector_size.i279.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %sector_size.i279.i, align 4
  %div.i280.i = udiv i32 %241, %272
  %arrayidx.i281.i = getelementptr %struct.jffs2_eraseblock, ptr %270, i32 %div.i280.i
  %call118.i.i = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx.i281.i, ptr noundef nonnull %valid_ref.0427.i) #9
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #9
  %used_size.i283.i = getelementptr %struct.jffs2_eraseblock, ptr %270, i32 %div.i280.i, i32 4
  %273 = ptrtoint ptr %used_size.i283.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %used_size.i283.i, align 4
  %add119.i.i = add i32 %274, %call118.i.i
  store i32 %add119.i.i, ptr %used_size.i283.i, align 4
  %unchecked_size.i284.i = getelementptr %struct.jffs2_eraseblock, ptr %270, i32 %div.i280.i, i32 3
  %275 = ptrtoint ptr %unchecked_size.i284.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %unchecked_size.i284.i, align 4
  %sub120.i.i = sub i32 %276, %call118.i.i
  store i32 %sub120.i.i, ptr %unchecked_size.i284.i, align 4
  %277 = ptrtoint ptr %used_size121.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %used_size121.i.i, align 4
  %add122.i.i = add i32 %278, %call118.i.i
  store i32 %add122.i.i, ptr %used_size121.i.i, align 4
  %279 = ptrtoint ptr %unchecked_size123.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %unchecked_size123.i.i, align 4
  %sub124.i.i = sub i32 %280, %call118.i.i
  store i32 %sub124.i.i, ptr %unchecked_size123.i.i, align 4
  %281 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %flash_offset32.i, align 4
  %or.i285.i = or i32 %282, 3
  store i32 %or.i285.i, ptr %flash_offset32.i, align 4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #9
  br label %if.end131.i.i

if.end131.i.i:                                    ; preds = %if.then115.i.i, %if.else.i.i.if.end131.i.i_crit_edge, %land.lhs.true89.i.i.if.end131.i.i_crit_edge, %if.then82.i.i.if.end131.i.i_crit_edge, %if.end38.i.i.if.end131.i.i_crit_edge
  %call132.i.i = call ptr @jffs2_alloc_full_dnode() #9
  %fn.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %call27.i.i, i32 0, i32 1
  %283 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call132.i.i, ptr %fn.i.i, align 4
  %tobool134.not.i.i = icmp eq ptr %call132.i.i, null
  br i1 %tobool134.not.i.i, label %read_dnode.exit.i, label %if.end144.i.i

if.end144.i.i:                                    ; preds = %if.end131.i.i
  %284 = ptrtoint ptr %version.i286.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %version.i286.i, align 16
  %version146.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %call27.i.i, i32 0, i32 2
  %286 = ptrtoint ptr %version146.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %version146.i.i, align 4
  %287 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %offset.i.i, align 4
  %ofs.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %call132.i.i, i32 0, i32 1
  %289 = ptrtoint ptr %ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %ofs.i.i, align 4
  %290 = ptrtoint ptr %data_crc.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %data_crc.i.i, align 4
  %data_crc152.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %call27.i.i, i32 0, i32 3
  %292 = ptrtoint ptr %data_crc152.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %data_crc152.i.i, align 4
  %csize153.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %call27.i.i, i32 0, i32 5
  %293 = ptrtoint ptr %csize153.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %239, ptr %csize153.i.i, align 4
  %294 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %fn.i.i, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %valid_ref.0427.i, ptr %295, align 4
  %overlapped.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %call27.i.i, i32 0, i32 6
  %297 = ptrtoint ptr %overlapped.i.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %overlapped.i.i, align 4
  %298 = load i32, ptr %version146.i.i, align 4
  %299 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %300)
  %cmp156.i.i = icmp ugt i32 %298, %300
  br i1 %cmp156.i.i, label %if.then157.i.i, label %if.end144.i.i.if.end160.i.i_crit_edge

if.end144.i.i.if.end160.i.i_crit_edge:            ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.i.i

if.then157.i.i:                                   ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %301 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %298, ptr %1, align 4
  br label %if.end160.i.i

if.end160.i.i:                                    ; preds = %if.then157.i.i, %if.end144.i.i.if.end160.i.i_crit_edge
  %302 = ptrtoint ptr %compr.i.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %compr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %303)
  %cmp161.i.i = icmp eq i8 %303, 1
  br i1 %cmp161.i.i, label %land.lhs.true163.i.i, label %if.end160.i.i.if.else170.i.i_crit_edge

if.end160.i.i.if.else170.i.i_crit_edge:           ; preds = %if.end160.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else170.i.i

land.lhs.true163.i.i:                             ; preds = %if.end160.i.i
  %304 = ptrtoint ptr %dsize.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %dsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool165.not.i.i = icmp ne i32 %305, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool167.not.i.i = icmp eq i32 %239, 0
  %or.cond265.i.i = select i1 %tobool165.not.i.i, i1 true, i1 %tobool167.not.i.i
  br i1 %or.cond265.i.i, label %land.lhs.true163.i.i.if.else170.i.i_crit_edge, label %land.lhs.true163.i.i.if.end175.i.i_crit_edge

land.lhs.true163.i.i.if.end175.i.i_crit_edge:     ; preds = %land.lhs.true163.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175.i.i

land.lhs.true163.i.i.if.else170.i.i_crit_edge:    ; preds = %land.lhs.true163.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else170.i.i

if.else170.i.i:                                   ; preds = %land.lhs.true163.i.i.if.else170.i.i_crit_edge, %if.end160.i.i.if.else170.i.i_crit_edge
  %306 = ptrtoint ptr %dsize.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %dsize.i.i, align 4
  br label %if.end175.i.i

if.end175.i.i:                                    ; preds = %if.else170.i.i, %land.lhs.true163.i.i.if.end175.i.i_crit_edge
  %.sink.i.i = phi i32 [ %307, %if.else170.i.i ], [ %239, %land.lhs.true163.i.i.if.end175.i.i_crit_edge ]
  %308 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %fn.i.i, align 4
  %size174.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %309, i32 0, i32 2
  %310 = ptrtoint ptr %size174.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %.sink.i.i, ptr %size174.i.i, align 4
  %311 = load ptr, ptr %fn.i.i, align 4
  %ofs.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %ofs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %ofs.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %311, i32 0, i32 2
  %314 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %size.i.i.i, align 4
  %add.i.i.i = add i32 %315, %313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %tobool.not.i.i288.i = icmp eq i32 %315, 0
  br i1 %tobool.not.i.i288.i, label %if.then.i.i.i, label %if.end15.i.i.i

if.then.i.i.i:                                    ; preds = %if.end175.i.i
  %316 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %0, align 4
  %tobool4.not.i.i.i = icmp eq ptr %317, null
  br i1 %tobool4.not.i.i.i, label %if.then.i.i.i.if.end12.i.i.i_crit_edge, label %if.then5.i.i.i

if.then.i.i.i.if.end12.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  %version.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %317, i32 0, i32 2
  %318 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %version.i.i.i, align 4
  %320 = ptrtoint ptr %version146.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %version146.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %319, i32 %321)
  %cmp.i.i289.i = icmp ult i32 %319, %321
  br i1 %cmp.i.i289.i, label %if.then8.i.i.i, label %if.else.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %fn.i.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %317, i32 0, i32 1
  %322 = ptrtoint ptr %fn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %fn.i.i.i.i, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %325) #9
  %326 = ptrtoint ptr %fn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %fn.i.i.i.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %327) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %317) #9
  br label %if.end12.i.i.i

if.else.i.i.i:                                    ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %328 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %311, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %329) #9
  %330 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %fn.i.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %331) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %call27.i.i) #9
  br label %cont.i

if.end12.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.then.i.i.i.if.end12.i.i.i_crit_edge
  %332 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %call27.i.i, ptr %0, align 4
  br label %cont.i

if.end15.i.i.i:                                   ; preds = %if.end175.i.i
  %333 = ptrtoint ptr %rii to i32
  call void @__asan_load4_noabort(i32 %333)
  %next.015.i.i.i.i = load ptr, ptr %rii, align 4
  %tobool.not16.i.i.i.i = icmp eq ptr %next.015.i.i.i.i, null
  br i1 %tobool.not16.i.i.i.i, label %if.end15.i.i.i.while.end162.i.i.i_crit_edge, label %if.end15.i.i.i.while.body.i.i.i.i_crit_edge

if.end15.i.i.i.while.body.i.i.i.i_crit_edge:      ; preds = %if.end15.i.i.i
  br label %while.body.i.i.i.i

if.end15.i.i.i.while.end162.i.i.i_crit_edge:      ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end162.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end15.i.i.i.while.body.i.i.i.i_crit_edge
  %next.017.i.i.i.i = phi ptr [ %next.0.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %next.015.i.i.i.i, %if.end15.i.i.i.while.body.i.i.i.i_crit_edge ]
  %fn.i2.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %next.017.i.i.i.i, i32 0, i32 1
  %334 = ptrtoint ptr %fn.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %fn.i2.i.i.i, align 4
  %ofs.i.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %ofs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %ofs.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %337, i32 %313)
  %cmp.i.i.i.i = icmp ult i32 %337, %313
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %next.017.i.i.i.i, i32 0, i32 1
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %next.017.i.i.i.i, i32 0, i32 2
  %next.1.in.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %rb_right.i.i.i.i, ptr %rb_left.i.i.i.i
  %338 = ptrtoint ptr %next.1.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %next.0.i.i.i.i = load ptr, ptr %next.1.in.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %next.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.i.while.cond.i.i.i_crit_edge, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i.i

while.body.i.i.i.i.while.cond.i.i.i_crit_edge:    ; preds = %while.body.i.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %while.body.i.i.i.i.while.cond.i.i.i_crit_edge
  %this.0.i.i.i = phi ptr [ %call21.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %next.017.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i_crit_edge ]
  %overlapped.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.0.i.i.i, i32 0, i32 6
  %339 = ptrtoint ptr %overlapped.i.i.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %overlapped.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %340)
  %tobool20.not.i.i.i = icmp eq i16 %340, 0
  br i1 %tobool20.not.i.i.i, label %while.cond.i.i.i.while.body31.i.i.i.preheader_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.while.body31.i.i.i.preheader_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body31.i.i.i.preheader

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %call21.i.i.i = call ptr @rb_prev(ptr noundef nonnull %this.0.i.i.i) #9
  %tobool23.not.i.i.i = icmp eq ptr %call21.i.i.i, null
  br i1 %tobool23.not.i.i.i, label %if.then24.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

if.then24.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %overlapped.i.i.i.le = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.0.i.i.i, i32 0, i32 6
  %341 = ptrtoint ptr %overlapped.i.i.i.le to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 0, ptr %overlapped.i.i.i.le, align 4
  br label %while.body31.i.i.i.preheader

while.body31.i.i.i.preheader:                     ; preds = %if.then24.i.i.i, %while.cond.i.i.i.while.body31.i.i.i.preheader_crit_edge
  br label %while.body31.i.i.i

while.body31.i.i.i:                               ; preds = %while.cond29.backedge.i.i.i.while.body31.i.i.i_crit_edge, %while.body31.i.i.i.preheader
  %this.227.i.i.i = phi ptr [ %this.2.be.i.i.i, %while.cond29.backedge.i.i.i.while.body31.i.i.i_crit_edge ], [ %this.0.i.i.i, %while.body31.i.i.i.preheader ]
  %fn32.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.227.i.i.i, i32 0, i32 1
  %342 = ptrtoint ptr %fn32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %fn32.i.i.i, align 4
  %ofs33.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %ofs33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %ofs33.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %345, i32 %add.i.i.i)
  %cmp34.i.i.i = icmp ugt i32 %345, %add.i.i.i
  br i1 %cmp34.i.i.i, label %while.body31.i.i.i.while.end129.i.i.i_crit_edge, label %if.end36.i.i.i

while.body31.i.i.i.while.end129.i.i.i_crit_edge:  ; preds = %while.body31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end129.i.i.i

if.end36.i.i.i:                                   ; preds = %while.body31.i.i.i
  %version38.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.227.i.i.i, i32 0, i32 2
  %346 = ptrtoint ptr %version38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %version38.i.i.i, align 4
  %348 = ptrtoint ptr %version146.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %version146.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %347, i32 %349)
  %cmp40.i.i.i = icmp eq i32 %347, %349
  br i1 %cmp40.i.i.i, label %if.then41.i.i.i, label %if.end51.i.i.i

if.then41.i.i.i:                                  ; preds = %if.end36.i.i.i
  %call42.i.i.i = call fastcc i32 @check_tn_node(ptr noundef %c, ptr noundef nonnull %this.227.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %call42.i.i.i, 0
  br i1 %tobool43.not.i.i.i, label %if.then44.i.i.i, label %if.else46.i.i.i

if.then44.i.i.i:                                  ; preds = %if.then41.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %350 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %fn.i.i, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %353) #9
  %354 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %fn.i.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %355) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef %call27.i.i) #9
  br label %cont.i

if.else46.i.i.i:                                  ; preds = %if.then41.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %fn32.i.i.i.le742 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.227.i.i.i, i32 0, i32 1
  call void @rb_replace_node(ptr noundef nonnull %this.227.i.i.i, ptr noundef %call27.i.i, ptr noundef nonnull %rii) #9
  %356 = ptrtoint ptr %fn32.i.i.i.le742 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %fn32.i.i.i.le742, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %357, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %359) #9
  %360 = ptrtoint ptr %fn32.i.i.i.le742 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %fn32.i.i.i.le742, align 4
  call void @jffs2_free_full_dnode(ptr noundef %361) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %this.227.i.i.i) #9
  br label %cont.i

if.end51.i.i.i:                                   ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %347, i32 %349)
  %cmp54.i.i.i = icmp ult i32 %347, %349
  br i1 %cmp54.i.i.i, label %land.lhs.true.i.i.i, label %if.end51.i.i.i.if.end97.i.i.i_crit_edge

if.end51.i.i.i.if.end97.i.i.i_crit_edge:          ; preds = %if.end51.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end51.i.i.i
  %362 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %fn.i.i, align 4
  %ofs58.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %ofs58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %ofs58.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %345, i32 %365)
  %cmp59.not.i.i.i = icmp ult i32 %345, %365
  br i1 %cmp59.not.i.i.i, label %land.lhs.true.i.i.i.if.end97.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true.i.i.i.if.end97.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %size64.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %343, i32 0, i32 2
  %366 = ptrtoint ptr %size64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %size64.i.i.i, align 4
  %add65.i.i.i = add i32 %367, %345
  call void @__sanitizer_cov_trace_cmp4(i32 %add65.i.i.i, i32 %add.i.i.i)
  %cmp66.not.i.i.i = icmp ugt i32 %add65.i.i.i, %add.i.i.i
  br i1 %cmp66.not.i.i.i, label %land.lhs.true60.i.i.i.if.end97.i.i.i_crit_edge, label %if.then67.i.i.i

land.lhs.true60.i.i.i.if.end97.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i.i.i

if.then67.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  %call68.i.i.i = call fastcc i32 @check_tn_node(ptr noundef %c, ptr noundef %call27.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i.i)
  %tobool69.not.i.i.i = icmp eq i32 %call68.i.i.i, 0
  br i1 %tobool69.not.i.i.i, label %if.then67.i.i.i.land.rhs.i.i.i_crit_edge, label %if.then70.i.i.i

if.then67.i.i.i.land.rhs.i.i.i_crit_edge:         ; preds = %if.then67.i.i.i
  br label %land.rhs.i.i.i

if.then70.i.i.i:                                  ; preds = %if.then67.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %368 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %fn.i.i, align 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %369, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %371) #9
  %372 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %fn.i.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %373) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef %call27.i.i) #9
  br label %cont.i

land.rhs.i.i.i:                                   ; preds = %if.end94.i.i.i.land.rhs.i.i.i_crit_edge, %if.then67.i.i.i.land.rhs.i.i.i_crit_edge
  %this.322.i.i.i = phi ptr [ %call84.i.i.i, %if.end94.i.i.i.land.rhs.i.i.i_crit_edge ], [ %this.227.i.i.i, %if.then67.i.i.i.land.rhs.i.i.i_crit_edge ]
  %fn75.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.322.i.i.i, i32 0, i32 1
  %374 = ptrtoint ptr %fn75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %fn75.i.i.i, align 4
  %ofs76.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %ofs76.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %ofs76.i.i.i, align 4
  %size78.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %375, i32 0, i32 2
  %378 = ptrtoint ptr %size78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %size78.i.i.i, align 4
  %add79.i.i.i = add i32 %379, %377
  call void @__sanitizer_cov_trace_cmp4(i32 %add79.i.i.i, i32 %add.i.i.i)
  %cmp80.not.i.i.i = icmp ugt i32 %add79.i.i.i, %add.i.i.i
  br i1 %cmp80.not.i.i.i, label %land.rhs.i.i.i.while.cond29.backedge.i.i.i_crit_edge, label %while.body81.i.i.i

land.rhs.i.i.i.while.cond29.backedge.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond29.backedge.i.i.i

while.body81.i.i.i:                               ; preds = %land.rhs.i.i.i
  %call84.i.i.i = call ptr @rb_next(ptr noundef nonnull %this.322.i.i.i) #9
  %version87.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.322.i.i.i, i32 0, i32 2
  %380 = ptrtoint ptr %version87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %version87.i.i.i, align 4
  %382 = ptrtoint ptr %version146.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %version146.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %381, i32 %383)
  %cmp89.i.i.i = icmp ult i32 %381, %383
  br i1 %cmp89.i.i.i, label %if.then90.i.i.i, label %while.body81.i.i.i.if.end94.i.i.i_crit_edge

while.body81.i.i.i.if.end94.i.i.i_crit_edge:      ; preds = %while.body81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i.i.i

if.then90.i.i.i:                                  ; preds = %while.body81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rb_erase(ptr noundef nonnull %this.322.i.i.i, ptr noundef nonnull %rii) #9
  %384 = ptrtoint ptr %fn75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %fn75.i.i.i, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %385, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %387) #9
  %388 = ptrtoint ptr %fn75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %fn75.i.i.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %389) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %this.322.i.i.i) #9
  br label %if.end94.i.i.i

if.end94.i.i.i:                                   ; preds = %if.then90.i.i.i, %while.body81.i.i.i.if.end94.i.i.i_crit_edge
  %tobool74.not.i.i.i = icmp eq ptr %call84.i.i.i, null
  br i1 %tobool74.not.i.i.i, label %if.end94.i.i.i.while.end129.i.i.i_crit_edge, label %if.end94.i.i.i.land.rhs.i.i.i_crit_edge

if.end94.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %if.end94.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

if.end94.i.i.i.while.end129.i.i.i_crit_edge:      ; preds = %if.end94.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end129.i.i.i

while.cond29.backedge.i.i.i:                      ; preds = %if.end123.i.i.i, %land.rhs.i.i.i.while.cond29.backedge.i.i.i_crit_edge
  %this.2.be.i.i.i = phi ptr [ %call126.i.i.i, %if.end123.i.i.i ], [ %this.322.i.i.i, %land.rhs.i.i.i.while.cond29.backedge.i.i.i_crit_edge ]
  %tobool30.not.i.i.i = icmp eq ptr %this.2.be.i.i.i, null
  br i1 %tobool30.not.i.i.i, label %while.cond29.backedge.i.i.i.while.end129.i.i.i_crit_edge, label %while.cond29.backedge.i.i.i.while.body31.i.i.i_crit_edge

while.cond29.backedge.i.i.i.while.body31.i.i.i_crit_edge: ; preds = %while.cond29.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body31.i.i.i

while.cond29.backedge.i.i.i.while.end129.i.i.i_crit_edge: ; preds = %while.cond29.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end129.i.i.i

if.end97.i.i.i:                                   ; preds = %land.lhs.true60.i.i.i.if.end97.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end97.i.i.i_crit_edge, %if.end51.i.i.i.if.end97.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %347, i32 %349)
  %cmp100.i.i.i = icmp ugt i32 %347, %349
  br i1 %cmp100.i.i.i, label %land.lhs.true101.i.i.i, label %if.end97.i.i.i.if.end123.i.i.i_crit_edge

if.end97.i.i.i.if.end123.i.i.i_crit_edge:         ; preds = %if.end97.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i.i.i

land.lhs.true101.i.i.i:                           ; preds = %if.end97.i.i.i
  %390 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %fn.i.i, align 4
  %ofs105.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %391, i32 0, i32 1
  %392 = ptrtoint ptr %ofs105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %ofs105.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %345, i32 %393)
  %cmp106.not.i.i.i = icmp ugt i32 %345, %393
  br i1 %cmp106.not.i.i.i, label %land.lhs.true101.i.i.i.if.end123.i.i.i_crit_edge, label %land.lhs.true107.i.i.i

land.lhs.true101.i.i.i.if.end123.i.i.i_crit_edge: ; preds = %land.lhs.true101.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i.i.i

land.lhs.true107.i.i.i:                           ; preds = %land.lhs.true101.i.i.i
  %size111.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %343, i32 0, i32 2
  %394 = ptrtoint ptr %size111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %size111.i.i.i, align 4
  %add112.i.i.i = add i32 %395, %345
  call void @__sanitizer_cov_trace_cmp4(i32 %add112.i.i.i, i32 %add.i.i.i)
  %cmp113.not.i.i.i = icmp ult i32 %add112.i.i.i, %add.i.i.i
  br i1 %cmp113.not.i.i.i, label %land.lhs.true107.i.i.i.if.end123.i.i.i_crit_edge, label %if.then114.i.i.i

land.lhs.true107.i.i.i.if.end123.i.i.i_crit_edge: ; preds = %land.lhs.true107.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i.i.i

if.then114.i.i.i:                                 ; preds = %land.lhs.true107.i.i.i
  %call115.i.i.i = call fastcc i32 @check_tn_node(ptr noundef %c, ptr noundef nonnull %this.227.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i.i.i)
  %tobool116.not.i.i.i = icmp eq i32 %call115.i.i.i, 0
  br i1 %tobool116.not.i.i.i, label %if.then117.i.i.i, label %if.end119.i.i.i

if.then117.i.i.i:                                 ; preds = %if.then114.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %396 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %fn.i.i, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %399) #9
  %400 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %fn.i.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %401) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef %call27.i.i) #9
  br label %cont.i

if.end119.i.i.i:                                  ; preds = %if.then114.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %fn32.i.i.i.le = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.227.i.i.i, i32 0, i32 1
  call void @rb_erase(ptr noundef nonnull %this.227.i.i.i, ptr noundef nonnull %rii) #9
  %402 = ptrtoint ptr %fn32.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %fn32.i.i.i.le, align 4
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %403, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %405) #9
  %406 = ptrtoint ptr %fn32.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %fn32.i.i.i.le, align 4
  call void @jffs2_free_full_dnode(ptr noundef %407) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %this.227.i.i.i) #9
  br label %while.end129.i.i.i

if.end123.i.i.i:                                  ; preds = %land.lhs.true107.i.i.i.if.end123.i.i.i_crit_edge, %land.lhs.true101.i.i.i.if.end123.i.i.i_crit_edge, %if.end97.i.i.i.if.end123.i.i.i_crit_edge
  %call126.i.i.i = call ptr @rb_next(ptr noundef nonnull %this.227.i.i.i) #9
  br label %while.cond29.backedge.i.i.i

while.end129.i.i.i:                               ; preds = %if.end119.i.i.i, %while.cond29.backedge.i.i.i.while.end129.i.i.i_crit_edge, %if.end94.i.i.i.while.end129.i.i.i_crit_edge, %while.body31.i.i.i.while.end129.i.i.i_crit_edge
  %408 = ptrtoint ptr %rii to i32
  call void @__asan_load4_noabort(i32 %408)
  %.pr.i.i.i = load ptr, ptr %rii, align 4
  %tobool132.not29.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %tobool132.not29.i.i.i, label %while.end129.i.i.i.while.end162.i.i.i_crit_edge, label %while.body133.lr.ph.i.i.i

while.end129.i.i.i.while.end162.i.i.i_crit_edge:  ; preds = %while.end129.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end162.i.i.i

while.body133.lr.ph.i.i.i:                        ; preds = %while.end129.i.i.i
  %409 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %fn.i.i, align 4
  %ofs138.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %410, i32 0, i32 1
  %411 = ptrtoint ptr %ofs138.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %ofs138.i.i.i, align 4
  %size151.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %410, i32 0, i32 2
  br label %while.body133.i.i.i

while.body133.i.i.i:                              ; preds = %if.end161.i.i.i.while.body133.i.i.i_crit_edge, %while.body133.lr.ph.i.i.i
  %413 = phi ptr [ %.pr.i.i.i, %while.body133.lr.ph.i.i.i ], [ %423, %if.end161.i.i.i.while.body133.i.i.i_crit_edge ]
  %fn139.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %fn139.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %fn139.i.i.i, align 4
  %ofs140.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %ofs140.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %ofs140.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %412, i32 %417)
  %cmp141.i.i.i = icmp ugt i32 %412, %417
  br i1 %cmp141.i.i.i, label %if.then142.i.i.i, label %if.else144.i.i.i

if.then142.i.i.i:                                 ; preds = %while.body133.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 1
  br label %if.end161.i.i.i

if.else144.i.i.i:                                 ; preds = %while.body133.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %412, i32 %417)
  %cmp149.i.i.i = icmp ult i32 %412, %417
  br i1 %cmp149.i.i.i, label %if.else144.i.i.i.if.then155.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.else144.i.i.i.if.then155.i.i.i_crit_edge:      ; preds = %if.else144.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.else144.i.i.i
  %418 = ptrtoint ptr %size151.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %size151.i.i.i, align 4
  %size153.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %415, i32 0, i32 2
  %420 = ptrtoint ptr %size153.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %size153.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %419, i32 %421)
  %cmp154.i.i.i = icmp ult i32 %419, %421
  br i1 %cmp154.i.i.i, label %lor.lhs.false.i.i.i.if.then155.i.i.i_crit_edge, label %if.else157.i.i.i

lor.lhs.false.i.i.i.if.then155.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155.i.i.i

if.then155.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.if.then155.i.i.i_crit_edge, %if.else144.i.i.i.if.then155.i.i.i_crit_edge
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 2
  br label %if.end161.i.i.i

if.else157.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right159.i.i.i = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 1
  br label %if.end161.i.i.i

if.end161.i.i.i:                                  ; preds = %if.else157.i.i.i, %if.then155.i.i.i, %if.then142.i.i.i
  %link.1.i.i.i = phi ptr [ %rb_right.i.i.i, %if.then142.i.i.i ], [ %rb_left.i.i.i, %if.then155.i.i.i ], [ %rb_right159.i.i.i, %if.else157.i.i.i ]
  %422 = ptrtoint ptr %link.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %link.1.i.i.i, align 4
  %tobool132.not.i.i.i = icmp eq ptr %423, null
  br i1 %tobool132.not.i.i.i, label %while.cond131.while.end162_crit_edge.i.i.i, label %if.end161.i.i.i.while.body133.i.i.i_crit_edge

if.end161.i.i.i.while.body133.i.i.i_crit_edge:    ; preds = %if.end161.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body133.i.i.i

while.cond131.while.end162_crit_edge.i.i.i:       ; preds = %if.end161.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i.i = ptrtoint ptr %413 to i32
  br label %while.end162.i.i.i

while.end162.i.i.i:                               ; preds = %while.cond131.while.end162_crit_edge.i.i.i, %while.end129.i.i.i.while.end162.i.i.i_crit_edge, %if.end15.i.i.i.while.end162.i.i.i_crit_edge
  %insert_point.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond131.while.end162_crit_edge.i.i.i ], [ 0, %while.end129.i.i.i.while.end162.i.i.i_crit_edge ], [ 0, %if.end15.i.i.i.while.end162.i.i.i_crit_edge ]
  %link.0.lcssa.i.i.i = phi ptr [ %link.1.i.i.i, %while.cond131.while.end162_crit_edge.i.i.i ], [ %rii, %while.end129.i.i.i.while.end162.i.i.i_crit_edge ], [ %rii, %if.end15.i.i.i.while.end162.i.i.i_crit_edge ]
  %424 = ptrtoint ptr %call27.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %insert_point.0.lcssa.i.i.i, ptr %call27.i.i, align 4
  %rb_right.i8.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call27.i.i, i32 0, i32 1
  %425 = ptrtoint ptr %rb_right.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr null, ptr %rb_right.i8.i.i.i, align 4
  %rb_left.i9.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call27.i.i, i32 0, i32 2
  %426 = ptrtoint ptr %rb_left.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr null, ptr %rb_left.i9.i.i.i, align 4
  %427 = ptrtoint ptr %link.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %call27.i.i, ptr %link.0.lcssa.i.i.i, align 4
  call void @rb_insert_color(ptr noundef %call27.i.i, ptr noundef nonnull %rii) #9
  %call169.i.i.i = call ptr @rb_prev(ptr noundef %call27.i.i) #9
  %tobool172.not.i.i.i = icmp eq ptr %call169.i.i.i, null
  br i1 %tobool172.not.i.i.i, label %while.end162.i.i.i.if.end202.i.i.i_crit_edge, label %while.end162.i.i.i.while.cond174.i.i.i_crit_edge

while.end162.i.i.i.while.cond174.i.i.i_crit_edge: ; preds = %while.end162.i.i.i
  br label %while.cond174.i.i.i

while.end162.i.i.i.if.end202.i.i.i_crit_edge:     ; preds = %while.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.i.i.i

while.cond174.i.i.i:                              ; preds = %if.end191.i.i.i.while.cond174.i.i.i_crit_edge, %while.end162.i.i.i.while.cond174.i.i.i_crit_edge
  %this.4.i.i.i = phi ptr [ %call194.i.i.i, %if.end191.i.i.i.while.cond174.i.i.i_crit_edge ], [ %call169.i.i.i, %while.end162.i.i.i.while.cond174.i.i.i_crit_edge ]
  %fn176.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.4.i.i.i, i32 0, i32 1
  %428 = ptrtoint ptr %fn176.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %fn176.i.i.i, align 4
  %ofs177.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %429, i32 0, i32 1
  %430 = ptrtoint ptr %ofs177.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %ofs177.i.i.i, align 4
  %size179.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %429, i32 0, i32 2
  %432 = ptrtoint ptr %size179.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %size179.i.i.i, align 4
  %add180.i.i.i = add i32 %433, %431
  %434 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %fn.i.i, align 4
  %ofs182.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %435, i32 0, i32 1
  %436 = ptrtoint ptr %ofs182.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %ofs182.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add180.i.i.i, i32 %437)
  %cmp183.i.i.i = icmp ugt i32 %add180.i.i.i, %437
  br i1 %cmp183.i.i.i, label %while.cond174.i.i.i.if.end202.sink.split.i.i.i_crit_edge, label %if.end187.i.i.i

while.cond174.i.i.i.if.end202.sink.split.i.i.i_crit_edge: ; preds = %while.cond174.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.sink.split.i.i.i

if.end187.i.i.i:                                  ; preds = %while.cond174.i.i.i
  %overlapped188.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.4.i.i.i, i32 0, i32 6
  %438 = ptrtoint ptr %overlapped188.i.i.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %overlapped188.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %439)
  %tobool189.not.i.i.i = icmp eq i16 %439, 0
  br i1 %tobool189.not.i.i.i, label %if.end187.i.i.i.if.end202.i.i.i_crit_edge, label %if.end191.i.i.i

if.end187.i.i.i.if.end202.i.i.i_crit_edge:        ; preds = %if.end187.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.i.i.i

if.end191.i.i.i:                                  ; preds = %if.end187.i.i.i
  %call194.i.i.i = call ptr @rb_prev(ptr noundef nonnull %this.4.i.i.i) #9
  %tobool197.not.i.i.i = icmp eq ptr %call194.i.i.i, null
  br i1 %tobool197.not.i.i.i, label %if.end191.i.i.i.if.end202.sink.split.i.i.i_crit_edge, label %if.end191.i.i.i.while.cond174.i.i.i_crit_edge

if.end191.i.i.i.while.cond174.i.i.i_crit_edge:    ; preds = %if.end191.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond174.i.i.i

if.end191.i.i.i.if.end202.sink.split.i.i.i_crit_edge: ; preds = %if.end191.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.sink.split.i.i.i

if.end202.sink.split.i.i.i:                       ; preds = %if.end191.i.i.i.if.end202.sink.split.i.i.i_crit_edge, %while.cond174.i.i.i.if.end202.sink.split.i.i.i_crit_edge
  %tn.sink.i.i.i = phi ptr [ %call27.i.i, %while.cond174.i.i.i.if.end202.sink.split.i.i.i_crit_edge ], [ %this.4.i.i.i, %if.end191.i.i.i.if.end202.sink.split.i.i.i_crit_edge ]
  %.sink.i.i.i = phi i16 [ 1, %while.cond174.i.i.i.if.end202.sink.split.i.i.i_crit_edge ], [ 0, %if.end191.i.i.i.if.end202.sink.split.i.i.i_crit_edge ]
  %overlapped186.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn.sink.i.i.i, i32 0, i32 6
  %440 = ptrtoint ptr %overlapped186.i.i.i to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 %.sink.i.i.i, ptr %overlapped186.i.i.i, align 4
  br label %if.end202.i.i.i

if.end202.i.i.i:                                  ; preds = %if.end202.sink.split.i.i.i, %if.end187.i.i.i.if.end202.i.i.i_crit_edge, %while.end162.i.i.i.if.end202.i.i.i_crit_edge
  %call205.i.i.i = call ptr @rb_next(ptr noundef %call27.i.i) #9
  %tobool209.not32.i.i.i = icmp eq ptr %call205.i.i.i, null
  br i1 %tobool209.not32.i.i.i, label %if.end202.i.i.i.cont.i_crit_edge, label %if.end202.i.i.i.land.rhs210.i.i.i_crit_edge

if.end202.i.i.i.land.rhs210.i.i.i_crit_edge:      ; preds = %if.end202.i.i.i
  br label %land.rhs210.i.i.i

if.end202.i.i.i.cont.i_crit_edge:                 ; preds = %if.end202.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cont.i

land.rhs210.i.i.i:                                ; preds = %while.body215.i.i.i.land.rhs210.i.i.i_crit_edge, %if.end202.i.i.i.land.rhs210.i.i.i_crit_edge
  %this.533.i.i.i = phi ptr [ %call220.i.i.i, %while.body215.i.i.i.land.rhs210.i.i.i_crit_edge ], [ %call205.i.i.i, %if.end202.i.i.i.land.rhs210.i.i.i_crit_edge ]
  %fn211.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.533.i.i.i, i32 0, i32 1
  %441 = ptrtoint ptr %fn211.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %fn211.i.i.i, align 4
  %ofs212.i.i.i = getelementptr inbounds %struct.jffs2_full_dnode, ptr %442, i32 0, i32 1
  %443 = ptrtoint ptr %ofs212.i.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %ofs212.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %444, i32 %add.i.i.i)
  %cmp213.i.i.i = icmp ult i32 %444, %add.i.i.i
  br i1 %cmp213.i.i.i, label %while.body215.i.i.i, label %land.rhs210.i.i.i.cont.i_crit_edge

land.rhs210.i.i.i.cont.i_crit_edge:               ; preds = %land.rhs210.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cont.i

while.body215.i.i.i:                              ; preds = %land.rhs210.i.i.i
  %overlapped216.i.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.533.i.i.i, i32 0, i32 6
  %445 = ptrtoint ptr %overlapped216.i.i.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 1, ptr %overlapped216.i.i.i, align 4
  %call220.i.i.i = call ptr @rb_next(ptr noundef nonnull %this.533.i.i.i) #9
  %tobool209.not.i.i.i = icmp eq ptr %call220.i.i.i, null
  br i1 %tobool209.not.i.i.i, label %while.body215.i.i.i.cont.i_crit_edge, label %while.body215.i.i.i.land.rhs210.i.i.i_crit_edge

while.body215.i.i.i.land.rhs210.i.i.i_crit_edge:  ; preds = %while.body215.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs210.i.i.i

while.body215.i.i.i.cont.i_crit_edge:             ; preds = %while.body215.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cont.i

read_dnode.exit.thread337.i:                      ; preds = %cleanup.i.i, %do.end71.i.i
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %call27.i.i) #9
  br label %cont.i

read_dnode.exit.i:                                ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %446 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i272.i.i = and i32 %446, -16384
  %447 = inttoptr i32 %and.i272.i.i to ptr
  %task141.i.i = getelementptr inbounds %struct.thread_info, ptr %447, i32 0, i32 2
  %448 = ptrtoint ptr %task141.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %task141.i.i, align 8
  %pid.i273.i.i = getelementptr inbounds %struct.task_struct, ptr %449, i32 0, i32 68
  %450 = ptrtoint ptr %pid.i273.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %pid.i273.i.i, align 8
  %call143.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %451, ptr noundef nonnull @.str.74) #12
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %call27.i.i) #9
  br label %free_out.i

sw.default.i:                                     ; preds = %if.end102.i
  %452 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %flash_offset32.i, align 4
  %and.i292.i = and i32 %453, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i292.i)
  %cmp.i293.i = icmp eq i32 %and.i292.i, 0
  br i1 %cmp.i293.i, label %do.end.i299.i, label %if.end.i300.i

do.end.i299.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  %454 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i.i294.i = and i32 %454, -16384
  %455 = inttoptr i32 %and.i.i294.i to ptr
  %task.i295.i = getelementptr inbounds %struct.thread_info, ptr %455, i32 0, i32 2
  %456 = ptrtoint ptr %task.i295.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %task.i295.i, align 8
  %pid.i.i296.i = getelementptr inbounds %struct.task_struct, ptr %457, i32 0, i32 68
  %458 = ptrtoint ptr %pid.i.i296.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %pid.i.i296.i, align 8
  %and3.i.i = and i32 %453, -4
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %459, ptr noundef nonnull @.str.102, i32 noundef %and3.i.i) #12
  %460 = ptrtoint ptr %task.i295.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %task.i295.i, align 8
  %pid.i1.i.i = getelementptr inbounds %struct.task_struct, ptr %461, i32 0, i32 68
  %462 = ptrtoint ptr %pid.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %pid.i1.i.i, align 8
  %464 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %call9.i.i, align 128
  %conv.i297.i = zext i16 %465 to i32
  %466 = ptrtoint ptr %nodetype.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %nodetype.i, align 2
  %conv12.i.i = zext i16 %467 to i32
  %468 = ptrtoint ptr %totlen.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %totlen.i, align 4
  %470 = ptrtoint ptr %hdr_crc.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %hdr_crc.i, align 8
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %463, ptr noundef nonnull @.str.102, i32 noundef %conv.i297.i, i32 noundef %conv12.i.i, i32 noundef %469, i32 noundef %471) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  br label %cont.i

if.end.i300.i:                                    ; preds = %sw.default.i
  %472 = or i16 %88, 8192
  %473 = ptrtoint ptr %nodetype.i to i32
  call void @__asan_store2_noabort(i32 %473)
  store i16 %472, ptr %nodetype.i, align 2
  %474 = lshr i16 %88, 14
  %475 = zext i16 %474 to i32
  %476 = zext i32 %475 to i64
  call void @__sanitizer_cov_trace_switch(i64 %476, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %475, label %if.end.unreachabledefault.i.i [
    i32 3, label %do.end26.i.i
    i32 2, label %do.end43.i.i
    i32 1, label %do.end68.i.i
    i32 0, label %do.end81.i.i
  ]

do.end26.i.i:                                     ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #11
  %477 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i2.i.i = and i32 %477, -16384
  %478 = inttoptr i32 %and.i2.i.i to ptr
  %task29.i.i = getelementptr inbounds %struct.thread_info, ptr %478, i32 0, i32 2
  %479 = ptrtoint ptr %task29.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %task29.i.i, align 8
  %pid.i3.i.i = getelementptr inbounds %struct.task_struct, ptr %480, i32 0, i32 68
  %481 = ptrtoint ptr %pid.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %pid.i3.i.i, align 8
  %conv33.i.i = zext i16 %472 to i32
  %483 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %flash_offset32.i, align 4
  %and35.i301.i = and i32 %484, -4
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %482, ptr noundef nonnull @.str.102, i32 noundef %conv33.i.i, i32 noundef %and35.i301.i) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 909, 0\0A.popsection", ""() #9, !srcloc !205
  unreachable

do.end43.i.i:                                     ; preds = %if.end.i300.i
  %485 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i4.i.i = and i32 %485, -16384
  %486 = inttoptr i32 %and.i4.i.i to ptr
  %task46.i.i = getelementptr inbounds %struct.thread_info, ptr %486, i32 0, i32 2
  %487 = ptrtoint ptr %task46.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %task46.i.i, align 8
  %pid.i5.i.i = getelementptr inbounds %struct.task_struct, ptr %488, i32 0, i32 68
  %489 = ptrtoint ptr %pid.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %pid.i5.i.i, align 8
  %conv50.i.i = zext i16 %472 to i32
  %491 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %flash_offset32.i, align 4
  %and52.i.i = and i32 %492, -4
  %call53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %490, ptr noundef nonnull @.str.102, i32 noundef %conv50.i.i, i32 noundef %and52.i.i) #12
  %493 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %flags.i.i, align 4
  %and55.i.i = and i32 %494, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool.not.i302.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool.not.i302.i, label %do.body60.i.i, label %do.end43.i.i.cont.i_crit_edge, !prof !201

do.end43.i.i.cont.i_crit_edge:                    ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cont.i

do.body60.i.i:                                    ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 915, 0\0A.popsection", ""() #9, !srcloc !206
  unreachable

do.end68.i.i:                                     ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #11
  %495 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i6.i.i = and i32 %495, -16384
  %496 = inttoptr i32 %and.i6.i.i to ptr
  %task71.i.i = getelementptr inbounds %struct.thread_info, ptr %496, i32 0, i32 2
  %497 = ptrtoint ptr %task71.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %task71.i.i, align 8
  %pid.i7.i.i = getelementptr inbounds %struct.task_struct, ptr %498, i32 0, i32 68
  %499 = ptrtoint ptr %pid.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %pid.i7.i.i, align 8
  %conv75.i.i = zext i16 %472 to i32
  %501 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %flash_offset32.i, align 4
  %and77.i303.i = and i32 %502, -4
  %call78.i304.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %500, ptr noundef nonnull @.str.102, i32 noundef %conv75.i.i, i32 noundef %and77.i303.i) #12
  br label %cont.i

do.end81.i.i:                                     ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #11
  %503 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i8.i.i = and i32 %503, -16384
  %504 = inttoptr i32 %and.i8.i.i to ptr
  %task84.i.i = getelementptr inbounds %struct.thread_info, ptr %504, i32 0, i32 2
  %505 = ptrtoint ptr %task84.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %task84.i.i, align 8
  %pid.i9.i.i = getelementptr inbounds %struct.task_struct, ptr %506, i32 0, i32 68
  %507 = ptrtoint ptr %pid.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %pid.i9.i.i, align 8
  %conv88.i.i = zext i16 %472 to i32
  %509 = ptrtoint ptr %flash_offset32.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %flash_offset32.i, align 4
  %and90.i.i = and i32 %510, -4
  %call91.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %508, ptr noundef nonnull @.str.102, i32 noundef %conv88.i.i, i32 noundef %and90.i.i) #12
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %valid_ref.0427.i) #9
  br label %cont.i

if.end.unreachabledefault.i.i:                    ; preds = %if.end.i300.i
  unreachable

cont.i:                                           ; preds = %do.end81.i.i, %do.end68.i.i, %do.end43.i.i.cont.i_crit_edge, %do.end.i299.i, %read_dnode.exit.thread337.i, %while.body215.i.i.i.cont.i_crit_edge, %land.rhs210.i.i.i.cont.i_crit_edge, %if.end202.i.i.i.cont.i_crit_edge, %if.then117.i.i.i, %if.then70.i.i.i, %if.else46.i.i.i, %if.then44.i.i.i, %if.end12.i.i.i, %if.else.i.i.i, %do.end18.i271.i, %read_direntry.exit.thread.i, %do.end91.i, %do.end68.i
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #9
  %tobool12.not.i = icmp eq ptr %retval.0.i233.i, null
  br i1 %tobool12.not.i, label %cont.i.jffs2_get_inode_nodes.exit.thread_crit_edge, label %cont.i.while.body.i_crit_edge

cont.i.while.body.i_crit_edge:                    ; preds = %cont.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cont.i.jffs2_get_inode_nodes.exit.thread_crit_edge: ; preds = %cont.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_get_inode_nodes.exit.thread

jffs2_get_inode_nodes.exit.thread:                ; preds = %cont.i.jffs2_get_inode_nodes.exit.thread_crit_edge, %do.end.i, %land.lhs.true.i.jffs2_get_inode_nodes.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  %511 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %1, align 4
  %highest_version149.i = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %513 = ptrtoint ptr %highest_version149.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %512, ptr %highest_version149.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver_root.i) #9
  %514 = ptrtoint ptr %ver_root.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 0, ptr %ver_root.i, align 4
  %515 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %0, align 4
  %tobool.not.i414 = icmp eq ptr %516, null
  br i1 %tobool.not.i414, label %jffs2_get_inode_nodes.exit.thread.if.end.i416_crit_edge, label %if.then.i415

jffs2_get_inode_nodes.exit.thread.if.end.i416_crit_edge: ; preds = %jffs2_get_inode_nodes.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i416

free_out.i:                                       ; preds = %read_dnode.exit.i, %read_dnode.exit.thread333.i, %read_more.exit.thread.i, %read_direntry.exit.i, %do.end53.i, %do.end39.i
  %err.0.i = phi i32 [ %call34.i, %do.end39.i ], [ -5, %do.end53.i ], [ -12, %read_dnode.exit.i ], [ %retval.3.i.i, %read_direntry.exit.i ], [ %retval.0.i257.ph.i, %read_more.exit.thread.i ], [ -12, %read_dnode.exit.thread333.i ]
  %call.i305.i = call ptr @rb_first_postorder(ptr noundef nonnull %rii) #9
  %tobool2.not23.i.i = icmp eq ptr %call.i305.i, null
  br i1 %tobool2.not23.i.i, label %free_out.i.jffs2_free_tmp_dnode_info_list.exit.i_crit_edge, label %free_out.i.land.rhs.i308.i_crit_edge

free_out.i.land.rhs.i308.i_crit_edge:             ; preds = %free_out.i
  br label %land.rhs.i308.i

free_out.i.jffs2_free_tmp_dnode_info_list.exit.i_crit_edge: ; preds = %free_out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_free_tmp_dnode_info_list.exit.i

land.rhs.i308.i:                                  ; preds = %land.rhs.i308.i.land.rhs.i308.i_crit_edge, %free_out.i.land.rhs.i308.i_crit_edge
  %tn.024.i.i = phi ptr [ %call4.i306.i, %land.rhs.i308.i.land.rhs.i308.i_crit_edge ], [ %call.i305.i, %free_out.i.land.rhs.i308.i_crit_edge ]
  %call4.i306.i = call ptr @rb_next_postorder(ptr noundef nonnull %tn.024.i.i) #9
  %fn.i307.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn.024.i.i, i32 0, i32 1
  %517 = ptrtoint ptr %fn.i307.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %fn.i307.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %518) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %tn.024.i.i) #9
  %tobool2.not.i.i = icmp eq ptr %call4.i306.i, null
  br i1 %tobool2.not.i.i, label %land.rhs.i308.i.jffs2_free_tmp_dnode_info_list.exit.i_crit_edge, label %land.rhs.i308.i.land.rhs.i308.i_crit_edge

land.rhs.i308.i.land.rhs.i308.i_crit_edge:        ; preds = %land.rhs.i308.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i308.i

land.rhs.i308.i.jffs2_free_tmp_dnode_info_list.exit.i_crit_edge: ; preds = %land.rhs.i308.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_free_tmp_dnode_info_list.exit.i

jffs2_free_tmp_dnode_info_list.exit.i:            ; preds = %land.rhs.i308.i.jffs2_free_tmp_dnode_info_list.exit.i_crit_edge, %free_out.i.jffs2_free_tmp_dnode_info_list.exit.i_crit_edge
  %519 = ptrtoint ptr %rii to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr null, ptr %rii, align 4
  %520 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %4, align 4
  %tobool.not4.i.i = icmp eq ptr %521, null
  br i1 %tobool.not4.i.i, label %jffs2_free_tmp_dnode_info_list.exit.i.jffs2_get_inode_nodes.exit_crit_edge, label %jffs2_free_tmp_dnode_info_list.exit.i.while.body.i310.i_crit_edge

jffs2_free_tmp_dnode_info_list.exit.i.while.body.i310.i_crit_edge: ; preds = %jffs2_free_tmp_dnode_info_list.exit.i
  br label %while.body.i310.i

jffs2_free_tmp_dnode_info_list.exit.i.jffs2_get_inode_nodes.exit_crit_edge: ; preds = %jffs2_free_tmp_dnode_info_list.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_get_inode_nodes.exit

while.body.i310.i:                                ; preds = %while.body.i310.i.while.body.i310.i_crit_edge, %jffs2_free_tmp_dnode_info_list.exit.i.while.body.i310.i_crit_edge
  %fd.addr.05.i.i = phi ptr [ %523, %while.body.i310.i.while.body.i310.i_crit_edge ], [ %521, %jffs2_free_tmp_dnode_info_list.exit.i.while.body.i310.i_crit_edge ]
  %next1.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.addr.05.i.i, i32 0, i32 1
  %522 = ptrtoint ptr %next1.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %next1.i.i, align 4
  call void @jffs2_free_full_dirent(ptr noundef nonnull %fd.addr.05.i.i) #9
  %tobool.not.i309.i = icmp eq ptr %523, null
  br i1 %tobool.not.i309.i, label %while.body.i310.i.jffs2_get_inode_nodes.exit_crit_edge, label %while.body.i310.i.while.body.i310.i_crit_edge

while.body.i310.i.while.body.i310.i_crit_edge:    ; preds = %while.body.i310.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i310.i

while.body.i310.i.jffs2_get_inode_nodes.exit_crit_edge: ; preds = %while.body.i310.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_get_inode_nodes.exit

jffs2_get_inode_nodes.exit:                       ; preds = %while.body.i310.i.jffs2_get_inode_nodes.exit_crit_edge, %jffs2_free_tmp_dnode_info_list.exit.i.jffs2_get_inode_nodes.exit_crit_edge
  %524 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %524)
  store ptr null, ptr %4, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  br label %do.end

do.end:                                           ; preds = %jffs2_get_inode_nodes.exit, %jffs2_get_inode_nodes.exit.thread459
  %retval.0.i462 = phi i32 [ -12, %jffs2_get_inode_nodes.exit.thread459 ], [ %err.0.i, %jffs2_get_inode_nodes.exit ]
  %525 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i = and i32 %525, -16384
  %526 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %526, i32 0, i32 2
  %527 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %528, i32 0, i32 68
  %529 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %pid.i, align 8
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %531 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %inocache, align 8
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %532, i32 0, i32 5
  %533 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %ino, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %530, ptr noundef nonnull @.str.11, i32 noundef %534, i32 noundef %retval.0.i462) #12
  %535 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %inocache, align 8
  %state = getelementptr inbounds %struct.jffs2_inode_cache, ptr %536, i32 0, i32 4
  %537 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %537)
  %538 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %538)
  %cmp = icmp eq i16 %538, 5
  br i1 %cmp, label %if.then7, label %do.end.cleanup308_crit_edge

do.end.cleanup308_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef %536, i32 noundef 3) #9
  br label %cleanup308

if.then.i415:                                     ; preds = %jffs2_get_inode_nodes.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %version.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %516, i32 0, i32 2
  %539 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %version.i, align 4
  %fn.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %516, i32 0, i32 1
  %541 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %fn.i, align 4
  %543 = ptrtoint ptr %542 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %542, align 4
  %545 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr %544, ptr %5, align 4
  br label %if.end.i416

if.end.i416:                                      ; preds = %if.then.i415, %jffs2_get_inode_nodes.exit.thread.if.end.i416_crit_edge
  %high_ver.0.i = phi i32 [ %540, %if.then.i415 ], [ 0, %jffs2_get_inode_nodes.exit.thread.if.end.i416_crit_edge ]
  %call.i = call ptr @rb_last(ptr noundef nonnull %rii) #9
  br label %while.cond.outer.i.outer

while.cond.outer.i.outer:                         ; preds = %cleanup.i.while.cond.outer.i.outer_crit_edge, %if.end.i416
  %high_ver.1.ph.i.ph = phi i32 [ %high_ver.0.i, %if.end.i416 ], [ %high_ver.5.i, %cleanup.i.while.cond.outer.i.outer_crit_edge ]
  %pen.0.ph.i.ph = phi ptr [ %call.i, %if.end.i416 ], [ %call6177.i, %cleanup.i.while.cond.outer.i.outer_crit_edge ]
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end19.i.while.cond.outer.i_crit_edge, %while.cond.outer.i.outer
  %pen.0.ph.i = phi ptr [ %call6177.i, %if.end19.i.while.cond.outer.i_crit_edge ], [ %pen.0.ph.i.ph, %while.cond.outer.i.outer ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then14.i.while.cond.i_crit_edge, %while.cond.outer.i
  %pen.0.i = phi ptr [ %call6.i, %if.then14.i.while.cond.i_crit_edge ], [ %pen.0.ph.i, %while.cond.outer.i ]
  %tobool4.not.i = icmp eq ptr %pen.0.i, null
  br i1 %tobool4.not.i, label %jffs2_build_inode_fragtree.exit.thread, label %while.body.i419

jffs2_build_inode_fragtree.exit.thread:           ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver_root.i) #9
  %546 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %0, align 4
  %tobool39.not = icmp eq ptr %547, null
  br i1 %tobool39.not, label %jffs2_build_inode_fragtree.exit.thread.if.end52_crit_edge, label %if.then40

jffs2_build_inode_fragtree.exit.thread.if.end52_crit_edge: ; preds = %jffs2_build_inode_fragtree.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

while.body.i419:                                  ; preds = %while.cond.i
  %call6.i = call ptr @rb_prev(ptr noundef nonnull %pen.0.i) #9
  %548 = ptrtoint ptr %pen.0.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %pen.0.i, align 4
  %and.i.i417 = and i32 %549, -4
  %550 = inttoptr i32 %and.i.i417 to ptr
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %pen.0.i, i32 0, i32 1
  %551 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %rb_right.i.i, align 4
  %tobool.not.i.i418 = icmp eq ptr %552, null
  br i1 %tobool.not.i.i418, label %do.end8.i.i, label %do.body3.i.i, !prof !203

do.body3.i.i:                                     ; preds = %while.body.i419
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #9, !srcloc !207
  unreachable

do.end8.i.i:                                      ; preds = %while.body.i419
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i417)
  %tobool9.not.i.i = icmp eq i32 %and.i.i417, 0
  br i1 %tobool9.not.i.i, label %do.end8.i.i.if.end16.i.i_crit_edge, label %if.else.i.i422

do.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.else.i.i422:                                   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %550, i32 0, i32 2
  %553 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %rb_left.i.i, align 4
  %cmp.i.i420 = icmp eq ptr %554, %pen.0.i
  %rb_right14.i.i = getelementptr inbounds %struct.rb_node, ptr %550, i32 0, i32 1
  %spec.select.i.i421 = select i1 %cmp.i.i420, ptr %rb_left.i.i, ptr %rb_right14.i.i
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else.i.i422, %do.end8.i.i.if.end16.i.i_crit_edge
  %link.0.i.i = phi ptr [ %rii, %do.end8.i.i.if.end16.i.i_crit_edge ], [ %spec.select.i.i421, %if.else.i.i422 ]
  %rb_left17.i.i = getelementptr inbounds %struct.rb_node, ptr %pen.0.i, i32 0, i32 2
  %555 = ptrtoint ptr %rb_left17.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %rb_left17.i.i, align 4
  %557 = ptrtoint ptr %link.0.i.i to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr %556, ptr %link.0.i.i, align 4
  %558 = load ptr, ptr %rb_left17.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %558, null
  br i1 %tobool19.not.i.i, label %if.end16.i.i.eat_last.exit.i_crit_edge, label %if.then20.i.i

if.end16.i.i.eat_last.exit.i_crit_edge:           ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eat_last.exit.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %559 = ptrtoint ptr %pen.0.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %pen.0.i, align 4
  %561 = ptrtoint ptr %558 to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %560, ptr %558, align 4
  br label %eat_last.exit.i

eat_last.exit.i:                                  ; preds = %if.then20.i.i, %if.end16.i.i.eat_last.exit.i_crit_edge
  %562 = ptrtoint ptr %ver_root.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %ver_root.i, align 4
  %tobool.not12.i.i = icmp eq ptr %563, null
  br i1 %tobool.not12.i.i, label %eat_last.exit.i.ver_insert.exit.i_crit_edge, label %while.body.lr.ph.i.i

eat_last.exit.i.ver_insert.exit.i_crit_edge:      ; preds = %eat_last.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ver_insert.exit.i

while.body.lr.ph.i.i:                             ; preds = %eat_last.exit.i
  %version.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %pen.0.i, i32 0, i32 2
  %564 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %version.i.i, align 4
  br label %while.body.i.i423

while.body.i.i423:                                ; preds = %while.body.i.i423.while.body.i.i423_crit_edge, %while.body.lr.ph.i.i
  %566 = phi ptr [ %563, %while.body.lr.ph.i.i ], [ %570, %while.body.i.i423.while.body.i.i423_crit_edge ]
  %version1.i.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %566, i32 0, i32 2
  %567 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %version1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %565, i32 %568)
  %cmp.i116.i = icmp ugt i32 %565, %568
  %rb_left.i117.i = getelementptr inbounds %struct.rb_node, ptr %566, i32 0, i32 2
  %rb_right.i118.i = getelementptr inbounds %struct.rb_node, ptr %566, i32 0, i32 1
  %link.1.i.i = select i1 %cmp.i116.i, ptr %rb_left.i117.i, ptr %rb_right.i118.i
  %569 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i119.i = icmp eq ptr %570, null
  br i1 %tobool.not.i119.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i423.while.body.i.i423_crit_edge

while.body.i.i423.while.body.i.i423_crit_edge:    ; preds = %while.body.i.i423
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i423

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i423
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i = ptrtoint ptr %566 to i32
  br label %ver_insert.exit.i

ver_insert.exit.i:                                ; preds = %while.cond.while.end_crit_edge.i.i, %eat_last.exit.i.ver_insert.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %eat_last.exit.i.ver_insert.exit.i_crit_edge ]
  %link.0.lcssa.i.i = phi ptr [ %link.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %ver_root.i, %eat_last.exit.i.ver_insert.exit.i_crit_edge ]
  %571 = ptrtoint ptr %pen.0.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %parent.0.lcssa.i.i, ptr %pen.0.i, align 4
  %572 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %572)
  store ptr null, ptr %rb_right.i.i, align 4
  %573 = ptrtoint ptr %rb_left17.i.i to i32
  call void @__asan_store4_noabort(i32 %573)
  store ptr null, ptr %rb_left17.i.i, align 4
  %574 = ptrtoint ptr %link.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %pen.0.i, ptr %link.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %pen.0.i, ptr noundef nonnull %ver_root.i) #9
  %overlapped.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %pen.0.i, i32 0, i32 6
  %575 = ptrtoint ptr %overlapped.i to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %overlapped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %576)
  %tobool11.not.i = icmp eq i16 %576, 0
  br i1 %tobool11.not.i, label %ver_insert.exit.i.if.end19.i_crit_edge, label %if.then14.i, !prof !203

ver_insert.exit.i.if.end19.i_crit_edge:           ; preds = %ver_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then14.i:                                      ; preds = %ver_insert.exit.i
  %tobool15.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then14.i.while.cond.i_crit_edge

if.then14.i.while.cond.i_crit_edge:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end17.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %overlapped.i.le = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %pen.0.i, i32 0, i32 6
  %577 = ptrtoint ptr %overlapped.i.le to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 0, ptr %overlapped.i.le, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end17.i, %ver_insert.exit.i.if.end19.i_crit_edge
  %call6177.i = phi ptr [ null, %if.end17.i ], [ %call6.i, %ver_insert.exit.i.if.end19.i_crit_edge ]
  %call21.i = call ptr @rb_last(ptr noundef nonnull %ver_root.i) #9
  %tobool25.not168.i = icmp eq ptr %call21.i, null
  br i1 %tobool25.not168.i, label %if.end19.i.while.cond.outer.i_crit_edge, label %if.end19.i.while.body26.i_crit_edge

if.end19.i.while.body26.i_crit_edge:              ; preds = %if.end19.i
  br label %while.body26.i

if.end19.i.while.cond.outer.i_crit_edge:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.i

while.body26.i:                                   ; preds = %cleanup.i.while.body26.i_crit_edge, %if.end19.i.while.body26.i_crit_edge
  %this.0170.i = phi ptr [ %call29.i, %cleanup.i.while.body26.i_crit_edge ], [ %call21.i, %if.end19.i.while.body26.i_crit_edge ]
  %high_ver.2169.i = phi i32 [ %high_ver.5.i, %cleanup.i.while.body26.i_crit_edge ], [ %high_ver.1.ph.i.ph, %if.end19.i.while.body26.i_crit_edge ]
  %call29.i = call ptr @rb_prev(ptr noundef nonnull %this.0170.i) #9
  %578 = ptrtoint ptr %this.0170.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %this.0170.i, align 4
  %and.i120.i = and i32 %579, -4
  %580 = inttoptr i32 %and.i120.i to ptr
  %rb_right.i121.i = getelementptr inbounds %struct.rb_node, ptr %this.0170.i, i32 0, i32 1
  %581 = ptrtoint ptr %rb_right.i121.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %rb_right.i121.i, align 4
  %tobool.not.i122.i = icmp eq ptr %582, null
  br i1 %tobool.not.i122.i, label %do.end8.i125.i, label %do.body3.i123.i, !prof !203

do.body3.i123.i:                                  ; preds = %while.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #9, !srcloc !207
  unreachable

do.end8.i125.i:                                   ; preds = %while.body26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120.i)
  %tobool9.not.i124.i = icmp eq i32 %and.i120.i, 0
  br i1 %tobool9.not.i124.i, label %do.end8.i125.i.if.end16.i134.i_crit_edge, label %if.else.i130.i

do.end8.i125.i.if.end16.i134.i_crit_edge:         ; preds = %do.end8.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i134.i

if.else.i130.i:                                   ; preds = %do.end8.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i126.i = getelementptr inbounds %struct.rb_node, ptr %580, i32 0, i32 2
  %583 = ptrtoint ptr %rb_left.i126.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %rb_left.i126.i, align 4
  %cmp.i127.i = icmp eq ptr %584, %this.0170.i
  %rb_right14.i128.i = getelementptr inbounds %struct.rb_node, ptr %580, i32 0, i32 1
  %spec.select.i129.i = select i1 %cmp.i127.i, ptr %rb_left.i126.i, ptr %rb_right14.i128.i
  br label %if.end16.i134.i

if.end16.i134.i:                                  ; preds = %if.else.i130.i, %do.end8.i125.i.if.end16.i134.i_crit_edge
  %link.0.i131.i = phi ptr [ %ver_root.i, %do.end8.i125.i.if.end16.i134.i_crit_edge ], [ %spec.select.i129.i, %if.else.i130.i ]
  %rb_left17.i132.i = getelementptr inbounds %struct.rb_node, ptr %this.0170.i, i32 0, i32 2
  %585 = ptrtoint ptr %rb_left17.i132.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %rb_left17.i132.i, align 4
  %587 = ptrtoint ptr %link.0.i131.i to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %586, ptr %link.0.i131.i, align 4
  %588 = load ptr, ptr %rb_left17.i132.i, align 4
  %tobool19.not.i133.i = icmp eq ptr %588, null
  br i1 %tobool19.not.i133.i, label %if.end16.i134.i.eat_last.exit136.i_crit_edge, label %if.then20.i135.i

if.end16.i134.i.eat_last.exit136.i_crit_edge:     ; preds = %if.end16.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eat_last.exit136.i

if.then20.i135.i:                                 ; preds = %if.end16.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  %589 = ptrtoint ptr %this.0170.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %this.0170.i, align 4
  %591 = ptrtoint ptr %588 to i32
  call void @__asan_store4_noabort(i32 %591)
  store i32 %590, ptr %588, align 4
  br label %eat_last.exit136.i

eat_last.exit136.i:                               ; preds = %if.then20.i135.i, %if.end16.i134.i.eat_last.exit136.i_crit_edge
  %call33.i = call fastcc i32 @check_tn_node(ptr noundef %c, ptr noundef nonnull %this.0170.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %eat_last.exit136.i
  call void @__sanitizer_cov_trace_pc() #11
  %fn.i.i424 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.0170.i, i32 0, i32 1
  %592 = ptrtoint ptr %fn.i.i424 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %fn.i.i424, align 4
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %593, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %595) #9
  %596 = ptrtoint ptr %fn.i.i424 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %fn.i.i424, align 4
  call void @jffs2_free_full_dnode(ptr noundef %597) #9
  br label %cleanup.i

if.else.i:                                        ; preds = %eat_last.exit136.i
  %version37.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.0170.i, i32 0, i32 2
  %598 = ptrtoint ptr %version37.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %version37.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %599, i32 %high_ver.2169.i)
  %cmp.i425 = icmp ugt i32 %599, %high_ver.2169.i
  br i1 %cmp.i425, label %if.then38.i, label %if.else.i.if.end43.i_crit_edge

if.else.i.if.end43.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %fn40.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.0170.i, i32 0, i32 1
  %600 = ptrtoint ptr %fn40.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %fn40.i, align 4
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %601, align 4
  %604 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %604)
  store ptr %603, ptr %5, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.else.i.if.end43.i_crit_edge
  %high_ver.3.i = phi i32 [ %599, %if.then38.i ], [ %high_ver.2169.i, %if.else.i.if.end43.i_crit_edge ]
  %fn45.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.0170.i, i32 0, i32 1
  %605 = ptrtoint ptr %fn45.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %fn45.i, align 4
  %call46.i426 = call i32 @jffs2_add_full_dnode_to_inode(ptr noundef %c, ptr noundef %f, ptr noundef %606) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i426)
  %tobool47.not.i = icmp eq i32 %call46.i426, 0
  br i1 %tobool47.not.i, label %if.end43.i.cleanup.i_crit_edge, label %do.end.i429

if.end43.i.cleanup.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

do.end.i429:                                      ; preds = %if.end43.i
  %607 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i137.i = and i32 %607, -16384
  %608 = inttoptr i32 %and.i137.i to ptr
  %task.i427 = getelementptr inbounds %struct.thread_info, ptr %608, i32 0, i32 2
  %609 = ptrtoint ptr %task.i427 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %task.i427, align 8
  %pid.i.i428 = getelementptr inbounds %struct.task_struct, ptr %610, i32 0, i32 68
  %611 = ptrtoint ptr %pid.i.i428 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %pid.i.i428, align 8
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %612, ptr noundef nonnull @.str.119, i32 noundef %call46.i426) #12
  br label %while.cond53.i

while.cond53.i:                                   ; preds = %while.cond53.i.backedge, %do.end.i429
  %this.1.i = phi ptr [ %this.0170.i, %do.end.i429 ], [ %call57.i, %while.cond53.i.backedge ]
  %call57.i = call ptr @rb_prev(ptr noundef nonnull %this.1.i) #9
  %call60.i430 = call fastcc i32 @check_tn_node(ptr noundef %c, ptr noundef nonnull %this.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i430)
  %tobool61.not.i = icmp eq i32 %call60.i430, 0
  br i1 %tobool61.not.i, label %while.cond53.i.if.end65.i_crit_edge, label %if.then62.i

while.cond53.i.if.end65.i_crit_edge:              ; preds = %while.cond53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then62.i:                                      ; preds = %while.cond53.i
  call void @__sanitizer_cov_trace_pc() #11
  %fn63.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.1.i, i32 0, i32 1
  %613 = ptrtoint ptr %fn63.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %fn63.i, align 4
  %615 = ptrtoint ptr %614 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %614, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %616) #9
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then62.i, %while.cond53.i.if.end65.i_crit_edge
  %fn66.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %this.1.i, i32 0, i32 1
  %617 = ptrtoint ptr %fn66.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %fn66.i, align 4
  call void @jffs2_free_full_dnode(ptr noundef %618) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %this.1.i) #9
  %tobool67.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool67.not.i, label %jffs2_build_inode_fragtree.exit, label %if.end69.i

if.end69.i:                                       ; preds = %if.end65.i
  %619 = ptrtoint ptr %call57.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %call57.i, align 4
  %and.i138.i = and i32 %620, -4
  %621 = inttoptr i32 %and.i138.i to ptr
  %rb_right.i139.i = getelementptr inbounds %struct.rb_node, ptr %call57.i, i32 0, i32 1
  %622 = ptrtoint ptr %rb_right.i139.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %rb_right.i139.i, align 4
  %tobool.not.i140.i = icmp eq ptr %623, null
  br i1 %tobool.not.i140.i, label %do.end8.i143.i, label %do.body3.i141.i, !prof !203

do.body3.i141.i:                                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #9, !srcloc !207
  unreachable

do.end8.i143.i:                                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138.i)
  %tobool9.not.i142.i = icmp eq i32 %and.i138.i, 0
  br i1 %tobool9.not.i142.i, label %do.end8.i143.i.if.end16.i152.i_crit_edge, label %if.else.i148.i

do.end8.i143.i.if.end16.i152.i_crit_edge:         ; preds = %do.end8.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i152.i

if.else.i148.i:                                   ; preds = %do.end8.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i144.i = getelementptr inbounds %struct.rb_node, ptr %621, i32 0, i32 2
  %624 = ptrtoint ptr %rb_left.i144.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %rb_left.i144.i, align 4
  %cmp.i145.i = icmp eq ptr %625, %call57.i
  %rb_right14.i146.i = getelementptr inbounds %struct.rb_node, ptr %621, i32 0, i32 1
  %spec.select.i147.i = select i1 %cmp.i145.i, ptr %rb_left.i144.i, ptr %rb_right14.i146.i
  br label %if.end16.i152.i

if.end16.i152.i:                                  ; preds = %if.else.i148.i, %do.end8.i143.i.if.end16.i152.i_crit_edge
  %link.0.i149.i = phi ptr [ %ver_root.i, %do.end8.i143.i.if.end16.i152.i_crit_edge ], [ %spec.select.i147.i, %if.else.i148.i ]
  %rb_left17.i150.i = getelementptr inbounds %struct.rb_node, ptr %call57.i, i32 0, i32 2
  %626 = ptrtoint ptr %rb_left17.i150.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %rb_left17.i150.i, align 4
  %628 = ptrtoint ptr %link.0.i149.i to i32
  call void @__asan_store4_noabort(i32 %628)
  store ptr %627, ptr %link.0.i149.i, align 4
  %629 = load ptr, ptr %rb_left17.i150.i, align 4
  %tobool19.not.i151.i = icmp eq ptr %629, null
  br i1 %tobool19.not.i151.i, label %if.end16.i152.i.while.cond53.i.backedge_crit_edge, label %if.then20.i153.i

if.end16.i152.i.while.cond53.i.backedge_crit_edge: ; preds = %if.end16.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond53.i.backedge

if.then20.i153.i:                                 ; preds = %if.end16.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  %630 = ptrtoint ptr %call57.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %call57.i, align 4
  %632 = ptrtoint ptr %629 to i32
  call void @__asan_store4_noabort(i32 %632)
  store i32 %631, ptr %629, align 4
  br label %while.cond53.i.backedge

while.cond53.i.backedge:                          ; preds = %if.then20.i153.i, %if.end16.i152.i.while.cond53.i.backedge_crit_edge
  br label %while.cond53.i

cleanup.i:                                        ; preds = %if.end43.i.cleanup.i_crit_edge, %if.then35.i
  %high_ver.5.i = phi i32 [ %high_ver.2169.i, %if.then35.i ], [ %high_ver.3.i, %if.end43.i.cleanup.i_crit_edge ]
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %this.0170.i) #9
  %tobool25.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool25.not.i, label %cleanup.i.while.cond.outer.i.outer_crit_edge, label %cleanup.i.while.body26.i_crit_edge

cleanup.i.while.body26.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body26.i

cleanup.i.while.cond.outer.i.outer_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.i.outer

jffs2_build_inode_fragtree.exit:                  ; preds = %if.end65.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver_root.i) #9
  %633 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i431 = and i32 %633, -16384
  %634 = inttoptr i32 %and.i431 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %634, i32 0, i32 2
  %635 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %task18, align 8
  %pid.i432 = getelementptr inbounds %struct.task_struct, ptr %636, i32 0, i32 68
  %637 = ptrtoint ptr %pid.i432 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %pid.i432, align 8
  %639 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %inocache.i, align 8
  %ino21 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %640, i32 0, i32 5
  %641 = ptrtoint ptr %ino21 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %ino21, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %638, ptr noundef nonnull @.str.11, i32 noundef %642, i32 noundef %call46.i426) #12
  %643 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %inocache.i, align 8
  %state24 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %644, i32 0, i32 4
  %645 = ptrtoint ptr %state24 to i32
  call void @__asan_load2_noabort(i32 %645)
  %646 = load i16, ptr %state24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %646)
  %cmp26 = icmp eq i16 %646, 5
  br i1 %cmp26, label %if.then28, label %jffs2_build_inode_fragtree.exit.if.end30_crit_edge

jffs2_build_inode_fragtree.exit.if.end30_crit_edge: ; preds = %jffs2_build_inode_fragtree.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %jffs2_build_inode_fragtree.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef %644, i32 noundef 3) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %jffs2_build_inode_fragtree.exit.if.end30_crit_edge
  %call.i433 = call ptr @rb_first_postorder(ptr noundef nonnull %rii) #9
  %tobool2.not23.i = icmp eq ptr %call.i433, null
  br i1 %tobool2.not23.i, label %if.end30.jffs2_free_tmp_dnode_info_list.exit_crit_edge, label %if.end30.land.rhs.i_crit_edge

if.end30.land.rhs.i_crit_edge:                    ; preds = %if.end30
  br label %land.rhs.i

if.end30.jffs2_free_tmp_dnode_info_list.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_free_tmp_dnode_info_list.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end30.land.rhs.i_crit_edge
  %tn.024.i = phi ptr [ %call4.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i433, %if.end30.land.rhs.i_crit_edge ]
  %call4.i = call ptr @rb_next_postorder(ptr noundef nonnull %tn.024.i) #9
  %fn.i434 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn.024.i, i32 0, i32 1
  %647 = ptrtoint ptr %fn.i434 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %fn.i434, align 4
  call void @jffs2_free_full_dnode(ptr noundef %648) #9
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %tn.024.i) #9
  %tobool2.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool2.not.i, label %land.rhs.i.jffs2_free_tmp_dnode_info_list.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.rhs.i.jffs2_free_tmp_dnode_info_list.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jffs2_free_tmp_dnode_info_list.exit

jffs2_free_tmp_dnode_info_list.exit:              ; preds = %land.rhs.i.jffs2_free_tmp_dnode_info_list.exit_crit_edge, %if.end30.jffs2_free_tmp_dnode_info_list.exit_crit_edge
  %649 = ptrtoint ptr %rii to i32
  call void @__asan_store4_noabort(i32 %649)
  store ptr null, ptr %rii, align 4
  %650 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %0, align 4
  %tobool31.not = icmp eq ptr %651, null
  br i1 %tobool31.not, label %jffs2_free_tmp_dnode_info_list.exit.cleanup308_crit_edge, label %if.then32

jffs2_free_tmp_dnode_info_list.exit.cleanup308_crit_edge: ; preds = %jffs2_free_tmp_dnode_info_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

if.then32:                                        ; preds = %jffs2_free_tmp_dnode_info_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  %fn = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %651, i32 0, i32 1
  %652 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %fn, align 4
  call void @jffs2_free_full_dnode(ptr noundef %653) #9
  %654 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %0, align 4
  call void @jffs2_free_tmp_dnode_info(ptr noundef %655) #9
  %656 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %656)
  store ptr null, ptr %0, align 4
  br label %cleanup308

if.then40:                                        ; preds = %jffs2_build_inode_fragtree.exit.thread
  %fn42 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %547, i32 0, i32 1
  %657 = ptrtoint ptr %fn42 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %fn42, align 4
  %659 = ptrtoint ptr %658 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %658, align 4
  %661 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %5, align 4
  %cmp43 = icmp eq ptr %660, %662
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %metadata = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  %663 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %663)
  store ptr %658, ptr %metadata, align 4
  br label %if.end50

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %660) #9
  %664 = ptrtoint ptr %fn42 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %fn42, align 4
  call void @jffs2_free_full_dnode(ptr noundef %665) #9
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then45
  call void @jffs2_free_tmp_dnode_info(ptr noundef nonnull %547) #9
  %666 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %666)
  store ptr null, ptr %0, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %jffs2_build_inode_fragtree.exit.thread.if.end52_crit_edge
  %667 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %4, align 4
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 4
  %669 = ptrtoint ptr %dents to i32
  call void @__asan_store4_noabort(i32 %669)
  store ptr %668, ptr %dents, align 8
  %670 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %5, align 4
  %tobool54.not = icmp eq ptr %671, null
  br i1 %tobool54.not, label %if.then58, label %if.end111, !prof !201

if.then58:                                        ; preds = %if.end52
  %672 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %inocache.i, align 8
  %ino60 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %673, i32 0, i32 5
  %674 = ptrtoint ptr %ino60 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %ino60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %675)
  %cmp61.not = icmp eq i32 %675, 1
  br i1 %cmp61.not, label %if.then58.if.end94_crit_edge, label %do.end66

if.then58.if.end94_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.end66:                                         ; preds = %if.then58
  %676 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i436 = and i32 %676, -16384
  %677 = inttoptr i32 %and.i436 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %677, i32 0, i32 2
  %678 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %task69, align 8
  %pid.i437 = getelementptr inbounds %struct.task_struct, ptr %679, i32 0, i32 68
  %680 = ptrtoint ptr %pid.i437 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %pid.i437, align 8
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %681, ptr noundef nonnull @.str.11, i32 noundef %675) #12
  %682 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %4, align 4
  %tobool75.not = icmp eq ptr %683, null
  br i1 %tobool75.not, label %if.then76, label %do.end88

if.then76:                                        ; preds = %do.end66
  %684 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %inocache.i, align 8
  %state78 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %685, i32 0, i32 4
  %686 = ptrtoint ptr %state78 to i32
  call void @__asan_load2_noabort(i32 %686)
  %687 = load i16, ptr %state78, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %687)
  %cmp80 = icmp eq i16 %687, 5
  br i1 %cmp80, label %if.then82, label %if.then76.cleanup308_crit_edge

if.then76.cleanup308_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

if.then82:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef %685, i32 noundef 3) #9
  br label %cleanup308

do.end88:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  %688 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %task69, align 8
  %pid.i438 = getelementptr inbounds %struct.task_struct, ptr %689, i32 0, i32 68
  %690 = ptrtoint ptr %pid.i438 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %pid.i438, align 8
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %691, ptr noundef nonnull @.str.11) #12
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %if.then58.if.end94_crit_edge
  %mode = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 6
  %692 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %692, i32 4)
  store i32 16877, ptr %mode, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 5
  %693 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %693, i32 4)
  store i32 0, ptr %version, align 1
  %uid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 7
  %694 = call ptr @memset(ptr %uid, i32 0, i32 20)
  %695 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %inocache.i, align 8
  %state104 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %696, i32 0, i32 4
  %697 = ptrtoint ptr %state104 to i32
  call void @__asan_load2_noabort(i32 %697)
  %698 = load i16, ptr %state104, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %698)
  %cmp106 = icmp eq i16 %698, 5
  br i1 %cmp106, label %if.then108, label %if.end94.cleanup308_crit_edge

if.end94.cleanup308_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

if.then108:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef %696, i32 noundef 2) #9
  br label %cleanup308

if.end111:                                        ; preds = %if.end52
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %671, i32 0, i32 1
  %699 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %flash_offset, align 4
  %and = and i32 %700, -4
  %conv113 = zext i32 %and to i64
  %call114 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv113, i32 noundef 68, ptr noundef nonnull %retlen, ptr noundef %latest_node) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %lor.lhs.false, label %if.end111.do.end121_crit_edge

if.end111.do.end121_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121

lor.lhs.false:                                    ; preds = %if.end111
  %701 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %702)
  %cmp116.not = icmp eq i32 %702, 68
  br i1 %cmp116.not, label %if.end128, label %lor.lhs.false.do.end121_crit_edge

lor.lhs.false.do.end121_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121

do.end121:                                        ; preds = %lor.lhs.false.do.end121_crit_edge, %if.end111.do.end121_crit_edge
  %spec.select = phi i32 [ %call114, %if.end111.do.end121_crit_edge ], [ -5, %lor.lhs.false.do.end121_crit_edge ]
  %703 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i439 = and i32 %703, -16384
  %704 = inttoptr i32 %and.i439 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %704, i32 0, i32 2
  %705 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %task124, align 8
  %pid.i440 = getelementptr inbounds %struct.task_struct, ptr %706, i32 0, i32 68
  %707 = ptrtoint ptr %pid.i440 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %pid.i440, align 8
  %709 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %retlen, align 4
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %708, ptr noundef nonnull @.str.11, i32 noundef %call114, i32 noundef %710, i32 noundef 68) #12
  br label %cleanup308

if.end128:                                        ; preds = %lor.lhs.false
  %call129 = call i32 @crc32_le(i32 noundef 0, ptr noundef %latest_node, i32 noundef 60) #14
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 20
  %711 = ptrtoint ptr %node_crc to i32
  call void @__asan_loadN_noabort(i32 %711, i32 4)
  %712 = load i32, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call129, i32 %712)
  %cmp131.not = icmp eq i32 %call129, %712
  br i1 %cmp131.not, label %if.end147, label %do.end136

do.end136:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %713 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i441 = and i32 %713, -16384
  %714 = inttoptr i32 %and.i441 to ptr
  %task139 = getelementptr inbounds %struct.thread_info, ptr %714, i32 0, i32 2
  %715 = ptrtoint ptr %task139 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %task139, align 8
  %pid.i442 = getelementptr inbounds %struct.task_struct, ptr %716, i32 0, i32 68
  %717 = ptrtoint ptr %pid.i442 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %pid.i442, align 8
  %719 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %inocache.i, align 8
  %ino142 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %720, i32 0, i32 5
  %721 = ptrtoint ptr %ino142 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %ino142, align 4
  %723 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %5, align 4
  %flash_offset144 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %724, i32 0, i32 1
  %725 = ptrtoint ptr %flash_offset144 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %flash_offset144, align 4
  %and145 = and i32 %726, -4
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %718, ptr noundef nonnull @.str.11, i32 noundef %722, i32 noundef %and145) #12
  br label %cleanup308

if.end147:                                        ; preds = %if.end128
  %mode148 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 6
  %727 = ptrtoint ptr %mode148 to i32
  call void @__asan_loadN_noabort(i32 %727, i32 4)
  %728 = load i32, ptr %mode148, align 1
  %and150 = and i32 %728, 61440
  %729 = add nsw i32 %and150, -8192
  %730 = call i32 @llvm.fshl.i32(i32 %729, i32 %729, i32 19)
  %731 = zext i32 %730 to i64
  call void @__sanitizer_cov_trace_switch(i64 %731, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %730, label %if.end147.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb161
    i32 4, label %sw.bb186
    i32 2, label %if.end147.sw.bb240_crit_edge
    i32 0, label %if.end147.sw.bb240_crit_edge1007
  ]

if.end147.sw.bb240_crit_edge1007:                 ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb240

if.end147.sw.bb240_crit_edge:                     ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb240

if.end147.sw.epilog_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end147
  %732 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %3, align 4
  %version151 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 5
  %734 = ptrtoint ptr %version151 to i32
  call void @__asan_loadN_noabort(i32 %734, i32 4)
  %735 = load i32, ptr %version151, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %733, i32 %735)
  %cmp153 = icmp ugt i32 %733, %735
  br i1 %cmp153, label %if.then155, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then155:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %ctime156 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 12
  %mtime157 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 11
  %736 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %2, align 4
  %738 = ptrtoint ptr %mtime157 to i32
  call void @__asan_storeN_noabort(i32 %738, i32 4)
  store i32 %737, ptr %mtime157, align 1
  %739 = ptrtoint ptr %ctime156 to i32
  call void @__asan_storeN_noabort(i32 %739, i32 4)
  store i32 %737, ptr %ctime156, align 1
  br label %sw.epilog

sw.bb161:                                         ; preds = %if.end147
  %fragtree = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  %isize162 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 9
  %740 = ptrtoint ptr %isize162 to i32
  call void @__asan_loadN_noabort(i32 %740, i32 4)
  %741 = load i32, ptr %isize162, align 1
  %call164 = call i32 @jffs2_truncate_fragtree(ptr noundef %c, ptr noundef %fragtree, i32 noundef %741) #9
  %742 = ptrtoint ptr %isize162 to i32
  call void @__asan_loadN_noabort(i32 %742, i32 4)
  %743 = load i32, ptr %isize162, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call164, i32 %743)
  %cmp167.not = icmp eq i32 %call164, %743
  br i1 %cmp167.not, label %sw.bb161.sw.epilog_crit_edge, label %do.end172

sw.bb161.sw.epilog_crit_edge:                     ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end172:                                        ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  %744 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i443 = and i32 %744, -16384
  %745 = inttoptr i32 %and.i443 to ptr
  %task175 = getelementptr inbounds %struct.thread_info, ptr %745, i32 0, i32 2
  %746 = ptrtoint ptr %task175 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %task175, align 8
  %pid.i444 = getelementptr inbounds %struct.task_struct, ptr %747, i32 0, i32 68
  %748 = ptrtoint ptr %pid.i444 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load i32, ptr %pid.i444, align 8
  %750 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %inocache.i, align 8
  %ino178 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %751, i32 0, i32 5
  %752 = ptrtoint ptr %ino178 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %ino178, align 4
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %749, ptr noundef nonnull @.str.11, i32 noundef %753, i32 noundef %743, i32 noundef %call164) #12
  %754 = ptrtoint ptr %isize162 to i32
  call void @__asan_storeN_noabort(i32 %754, i32 4)
  store i32 %call164, ptr %isize162, align 1
  br label %sw.epilog

sw.bb186:                                         ; preds = %if.end147
  %isize187 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 9
  %755 = ptrtoint ptr %isize187 to i32
  call void @__asan_loadN_noabort(i32 %755, i32 4)
  %756 = load i32, ptr %isize187, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %756)
  %tobool189.not = icmp eq i32 %756, 0
  br i1 %tobool189.not, label %if.then190, label %sw.bb186.if.end192_crit_edge

sw.bb186.if.end192_crit_edge:                     ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then190:                                       ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #11
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 15
  %757 = ptrtoint ptr %dsize to i32
  call void @__asan_loadN_noabort(i32 %757, i32 4)
  %758 = load i32, ptr %dsize, align 1
  %759 = ptrtoint ptr %isize187 to i32
  call void @__asan_storeN_noabort(i32 %759, i32 4)
  store i32 %758, ptr %isize187, align 1
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %sw.bb186.if.end192_crit_edge
  %760 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %inocache.i, align 8
  %state194 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %761, i32 0, i32 4
  %762 = ptrtoint ptr %state194 to i32
  call void @__asan_load2_noabort(i32 %762)
  %763 = load i16, ptr %state194, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %763)
  %cmp196.not = icmp eq i16 %763, 1
  br i1 %cmp196.not, label %if.end192.sw.bb240_crit_edge, label %if.then198

if.end192.sw.bb240_crit_edge:                     ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb240

if.then198:                                       ; preds = %if.end192
  %csize199 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 14
  %764 = ptrtoint ptr %csize199 to i32
  call void @__asan_loadN_noabort(i32 %764, i32 4)
  %765 = load i32, ptr %csize199, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %765)
  %cmp201 = icmp ugt i32 %765, 254
  br i1 %cmp201, label %if.then198.cleanup308_crit_edge, label %if.end8.i

if.then198.cleanup308_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

if.end8.i:                                        ; preds = %if.then198
  %add = add nuw nsw i32 %765, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %target = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 5
  %766 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %766)
  store ptr %call9.i, ptr %target, align 4
  %tobool207.not = icmp eq ptr %call9.i, null
  br i1 %tobool207.not, label %do.end211, label %if.end217

do.end211:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %767 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i445 = and i32 %767, -16384
  %768 = inttoptr i32 %and.i445 to ptr
  %task214 = getelementptr inbounds %struct.thread_info, ptr %768, i32 0, i32 2
  %769 = ptrtoint ptr %task214 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %task214, align 8
  %pid.i446 = getelementptr inbounds %struct.task_struct, ptr %770, i32 0, i32 68
  %771 = ptrtoint ptr %pid.i446 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %pid.i446, align 8
  %call216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %772, ptr noundef nonnull @.str.11, i32 noundef %765) #12
  br label %cleanup308

if.end217:                                        ; preds = %if.end8.i
  %773 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %5, align 4
  %flash_offset219 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %774, i32 0, i32 1
  %775 = ptrtoint ptr %flash_offset219 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %flash_offset219, align 4
  %777 = add i32 %776, 68
  %add221 = and i32 %777, -4
  %conv222 = zext i32 %add221 to i64
  %call224 = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv222, i32 noundef %765, ptr noundef nonnull %retlen, ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %lor.lhs.false226, label %if.end217.if.then229_crit_edge

if.end217.if.then229_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then229

lor.lhs.false226:                                 ; preds = %if.end217
  %778 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %779, i32 %765)
  %cmp227.not = icmp eq i32 %779, %765
  br i1 %cmp227.not, label %cleanup, label %lor.lhs.false226.if.then229_crit_edge

lor.lhs.false226.if.then229_crit_edge:            ; preds = %lor.lhs.false226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then229

if.then229:                                       ; preds = %lor.lhs.false226.if.then229_crit_edge, %if.end217.if.then229_crit_edge
  %780 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %781, i32 %765)
  %cmp230.not = icmp eq i32 %781, %765
  %spec.select407 = select i1 %cmp230.not, i32 %call224, i32 -5
  %782 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %target, align 4
  call void @kfree(ptr noundef %783) #9
  %784 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %784)
  store ptr null, ptr %target, align 4
  br label %cleanup308

cleanup:                                          ; preds = %lor.lhs.false226
  call void @__sanitizer_cov_trace_pc() #11
  %785 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %target, align 4
  %arrayidx = getelementptr i8, ptr %786, i32 %765
  %787 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %787)
  store i8 0, ptr %arrayidx, align 1
  br label %sw.bb240

sw.bb240:                                         ; preds = %cleanup, %if.end192.sw.bb240_crit_edge, %if.end147.sw.bb240_crit_edge, %if.end147.sw.bb240_crit_edge1007
  %metadata241 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  %788 = ptrtoint ptr %metadata241 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %metadata241, align 4
  %tobool242.not = icmp eq ptr %789, null
  br i1 %tobool242.not, label %if.end256, label %do.end246

do.end246:                                        ; preds = %sw.bb240
  call void @__sanitizer_cov_trace_pc() #11
  %790 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i447 = and i32 %790, -16384
  %791 = inttoptr i32 %and.i447 to ptr
  %task249 = getelementptr inbounds %struct.thread_info, ptr %791, i32 0, i32 2
  %792 = ptrtoint ptr %task249 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %task249, align 8
  %pid.i448 = getelementptr inbounds %struct.task_struct, ptr %793, i32 0, i32 68
  %794 = ptrtoint ptr %pid.i448 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %pid.i448, align 8
  %796 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %inocache.i, align 8
  %ino252 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %797, i32 0, i32 5
  %798 = ptrtoint ptr %ino252 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load i32, ptr %ino252, align 4
  %800 = ptrtoint ptr %mode148 to i32
  call void @__asan_loadN_noabort(i32 %800, i32 4)
  %801 = load i32, ptr %mode148, align 1
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %795, ptr noundef nonnull @.str.11, i32 noundef %799, i32 noundef %801) #12
  br label %cleanup308

if.end256:                                        ; preds = %sw.bb240
  %fragtree257 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  %call.i449 = call ptr @rb_first(ptr noundef %fragtree257) #9
  %tobool259.not = icmp eq ptr %call.i449, null
  br i1 %tobool259.not, label %do.end263, label %if.end273

do.end263:                                        ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #11
  %802 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i450 = and i32 %802, -16384
  %803 = inttoptr i32 %and.i450 to ptr
  %task266 = getelementptr inbounds %struct.thread_info, ptr %803, i32 0, i32 2
  %804 = ptrtoint ptr %task266 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %task266, align 8
  %pid.i451 = getelementptr inbounds %struct.task_struct, ptr %805, i32 0, i32 68
  %806 = ptrtoint ptr %pid.i451 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load i32, ptr %pid.i451, align 8
  %808 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %inocache.i, align 8
  %ino269 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %809, i32 0, i32 5
  %810 = ptrtoint ptr %ino269 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load i32, ptr %ino269, align 4
  %812 = ptrtoint ptr %mode148 to i32
  call void @__asan_loadN_noabort(i32 %812, i32 4)
  %813 = load i32, ptr %mode148, align 1
  %call272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %807, ptr noundef nonnull @.str.11, i32 noundef %811, i32 noundef %813) #12
  br label %cleanup308

if.end273:                                        ; preds = %if.end256
  %call.i452 = call ptr @rb_first(ptr noundef %fragtree257) #9
  %call276 = call ptr @rb_next(ptr noundef %call.i452) #9
  %tobool278.not = icmp eq ptr %call276, null
  br i1 %tobool278.not, label %if.end292, label %do.end282

do.end282:                                        ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  %814 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i453 = and i32 %814, -16384
  %815 = inttoptr i32 %and.i453 to ptr
  %task285 = getelementptr inbounds %struct.thread_info, ptr %815, i32 0, i32 2
  %816 = ptrtoint ptr %task285 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %task285, align 8
  %pid.i454 = getelementptr inbounds %struct.task_struct, ptr %817, i32 0, i32 68
  %818 = ptrtoint ptr %pid.i454 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %pid.i454, align 8
  %820 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %inocache.i, align 8
  %ino288 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %821, i32 0, i32 5
  %822 = ptrtoint ptr %ino288 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %ino288, align 4
  %824 = ptrtoint ptr %mode148 to i32
  call void @__asan_loadN_noabort(i32 %824, i32 4)
  %825 = load i32, ptr %mode148, align 1
  %call291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %819, ptr noundef nonnull @.str.11, i32 noundef %823, i32 noundef %825) #12
  br label %cleanup308

if.end292:                                        ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  %call.i455 = call ptr @rb_first(ptr noundef %fragtree257) #9
  %node = getelementptr inbounds %struct.jffs2_node_frag, ptr %call.i455, i32 0, i32 1
  %826 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %node, align 4
  %828 = ptrtoint ptr %metadata241 to i32
  call void @__asan_store4_noabort(i32 %828)
  store ptr %827, ptr %metadata241, align 4
  %call.i456 = call ptr @rb_first(ptr noundef %fragtree257) #9
  call void @jffs2_free_node_frag(ptr noundef %call.i456) #9
  %829 = ptrtoint ptr %fragtree257 to i32
  call void @__asan_store4_noabort(i32 %829)
  store ptr null, ptr %fragtree257, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end292, %do.end172, %sw.bb161.sw.epilog_crit_edge, %if.then155, %sw.bb.sw.epilog_crit_edge, %if.end147.sw.epilog_crit_edge
  %830 = ptrtoint ptr %inocache.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %inocache.i, align 8
  %state301 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %831, i32 0, i32 4
  %832 = ptrtoint ptr %state301 to i32
  call void @__asan_load2_noabort(i32 %832)
  %833 = load i16, ptr %state301, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %833)
  %cmp303 = icmp eq i16 %833, 5
  br i1 %cmp303, label %if.then305, label %sw.epilog.cleanup308_crit_edge

sw.epilog.cleanup308_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup308

if.then305:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef %831, i32 noundef 2) #9
  br label %cleanup308

cleanup308:                                       ; preds = %if.then305, %sw.epilog.cleanup308_crit_edge, %do.end282, %do.end263, %do.end246, %if.then229, %do.end211, %if.then198.cleanup308_crit_edge, %do.end136, %do.end121, %if.then108, %if.end94.cleanup308_crit_edge, %if.then82, %if.then76.cleanup308_crit_edge, %if.then32, %jffs2_free_tmp_dnode_info_list.exit.cleanup308_crit_edge, %if.then7, %do.end.cleanup308_crit_edge
  %retval.1 = phi i32 [ %spec.select, %do.end121 ], [ -5, %do.end136 ], [ -5, %do.end246 ], [ -5, %do.end282 ], [ -5, %do.end263 ], [ %retval.0.i462, %if.then7 ], [ %retval.0.i462, %do.end.cleanup308_crit_edge ], [ %call46.i426, %if.then32 ], [ %call46.i426, %jffs2_free_tmp_dnode_info_list.exit.cleanup308_crit_edge ], [ -5, %if.then82 ], [ -5, %if.then76.cleanup308_crit_edge ], [ 0, %if.then108 ], [ 0, %if.end94.cleanup308_crit_edge ], [ 0, %if.then305 ], [ 0, %sw.epilog.cleanup308_crit_edge ], [ -36, %if.then198.cleanup308_crit_edge ], [ -12, %do.end211 ], [ %spec.select407, %if.then229 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rii) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_crccheck_inode(ptr noundef %c, ptr noundef %ic) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca %struct.jffs2_raw_inode, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %n) #9
  %0 = call ptr @memset(ptr %n, i32 255, i32 68)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 904) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @jffs2_do_crccheck_inode.__key) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull %call7.i.i, i32 noundef 0) #9
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %inocache to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ic, ptr %inocache, align 8
  %call2 = call fastcc i32 @jffs2_do_read_inode_internal(ptr noundef %c, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %n)
  call void @mutex_unlock(ptr noundef nonnull %call7.i.i) #9
  call void @jffs2_do_clear_inode(ptr noundef %c, ptr noundef nonnull %call7.i.i)
  call void @jffs2_xattr_do_crccheck_inode(ptr noundef %c, ptr noundef %ic) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %n) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_do_clear_inode(ptr noundef %c, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inocache, align 8
  tail call void @jffs2_xattr_delete_inode(ptr noundef %c, ptr noundef %1) #9
  tail call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #9
  %2 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inocache, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pino_nlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %state = getelementptr inbounds %struct.jffs2_inode_cache, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.not = icmp eq i16 %7, 1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef nonnull %3, i32 noundef 6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %metadata = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %metadata, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.end.thread:                                    ; preds = %entry
  %metadata68 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  %10 = ptrtoint ptr %metadata68 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %metadata68, align 4
  %tobool9.not69 = icmp eq ptr %11, null
  br i1 %tobool9.not69, label %if.end16.thread, label %if.end.thread.if.end14.thread_crit_edge

if.end.thread.if.end14.thread_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.thread

if.end16.thread:                                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %fragtree73 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  br label %19

if.then10:                                        ; preds = %if.end
  br i1 %tobool3.not, label %if.end14, label %if.then10.if.end14.thread_crit_edge

if.then10.if.end14.thread_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.thread

if.end14.thread:                                  ; preds = %if.then10.if.end14.thread_crit_edge, %if.end.thread.if.end14.thread_crit_edge
  %metadata7072.ph = phi ptr [ %metadata68, %if.end.thread.if.end14.thread_crit_edge ], [ %metadata, %if.then10.if.end14.thread_crit_edge ]
  %12 = ptrtoint ptr %metadata7072.ph to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %metadata7072.ph, align 4
  tail call void @jffs2_free_full_dnode(ptr noundef %13) #9
  %fragtree7578 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  br label %19

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %15) #9
  %16 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %metadata, align 4
  tail call void @jffs2_free_full_dnode(ptr noundef %17) #9
  %fragtree75 = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  br label %18

if.end16:                                         ; preds = %if.end
  %fragtree = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 2
  br i1 %tobool3.not, label %if.end16._crit_edge, label %if.end16._crit_edge81

if.end16._crit_edge81:                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %19

if.end16._crit_edge:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %18

18:                                               ; preds = %if.end16._crit_edge, %if.end14
  %fragtree76 = phi ptr [ %fragtree75, %if.end14 ], [ %fragtree, %if.end16._crit_edge ]
  br label %19

19:                                               ; preds = %18, %if.end16._crit_edge81, %if.end14.thread, %if.end16.thread
  %fragtree74 = phi ptr [ %fragtree76, %18 ], [ %fragtree, %if.end16._crit_edge81 ], [ %fragtree73, %if.end16.thread ], [ %fragtree7578, %if.end14.thread ]
  %20 = phi ptr [ %c, %18 ], [ null, %if.end16._crit_edge81 ], [ null, %if.end16.thread ], [ null, %if.end14.thread ]
  tail call void @jffs2_kill_fragtree(ptr noundef %fragtree74, ptr noundef %20) #9
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 4
  %21 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dents, align 8
  %tobool18.not79 = icmp eq ptr %22, null
  br i1 %tobool18.not79, label %.while.end_crit_edge, label %.while.body_crit_edge

.while.body_crit_edge:                            ; preds = %19
  br label %while.body

.while.end_crit_edge:                             ; preds = %19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %.while.body_crit_edge
  %fds.080 = phi ptr [ %24, %while.body.while.body_crit_edge ], [ %22, %.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fds.080, i32 0, i32 1
  %23 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next, align 4
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %fds.080) #9
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %.while.end_crit_edge
  %25 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inocache, align 8
  %tobool20.not = icmp eq ptr %26, null
  br i1 %tobool20.not, label %while.end.if.end36_crit_edge, label %land.lhs.true21

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true21:                                  ; preds = %while.end
  %state23 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %state23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %state23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp25.not = icmp eq i16 %28, 1
  br i1 %cmp25.not, label %land.lhs.true21.if.end36_crit_edge, label %if.then27

land.lhs.true21.if.end36_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %land.lhs.true21
  tail call void @jffs2_set_inocache_state(ptr noundef %c, ptr noundef nonnull %26, i32 noundef 3) #9
  %29 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %inocache, align 8
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nodes, align 4
  %cmp31 = icmp eq ptr %32, %30
  br i1 %cmp31, label %if.then33, label %if.then27.if.end36_crit_edge

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @jffs2_del_ino_cache(ptr noundef %c, ptr noundef %30) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then27.if.end36_crit_edge, %land.lhs.true21.if.end36_crit_edge, %while.end.if.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef %f) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_xattr_do_crccheck_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_xattr_delete_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_set_inocache_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_kill_fragtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dirent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_del_ino_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_tmp_dnode_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_truncate_fragtree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_node_frag(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jffs2_ref_totlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_full_dirent(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_fd_to_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_tmp_dnode_info() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_full_dnode() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_tn_node(ptr noundef %c, ptr nocapture noundef readonly %tn) unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca ptr, align 4
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fn = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn, i32 0, i32 1
  %0 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flash_offset, align 4
  %and = and i32 %5, 3
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %do.body2
    i32 0, label %if.end14
  ], !prof !208

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #9, !srcloc !209
  unreachable

if.end14:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #9
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %buffer.i, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #9
  %8 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %retlen.i, align 4, !annotation !200
  %csize.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn, i32 0, i32 5
  %9 = ptrtoint ptr %csize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %csize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !201

do.body2.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/readinode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 40, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end7.i:                                        ; preds = %if.end14
  %11 = add i32 %5, 68
  %add.i = and i32 %11, -4
  %wbuf.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 52
  %12 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wbuf.i, align 4
  %cmp9.not.i = icmp eq ptr %13, null
  br i1 %cmp9.not.i, label %do.end7.i.if.end27.i_crit_edge, label %if.then10.i

do.end7.i.if.end27.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then10.i:                                      ; preds = %do.end7.i
  %wbuf_pagesize.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 50
  %14 = ptrtoint ptr %wbuf_pagesize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wbuf_pagesize.i, align 4
  %rem.i = urem i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool11.not.i = icmp eq i32 %rem.i, 0
  %sub.i = sub i32 %15, %rem.i
  %spec.select.i = select i1 %tobool11.not.i, i32 0, i32 %sub.i, !prof !201
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %spec.select.i)
  %cmp22.not.i = icmp ugt i32 %10, %spec.select.i
  %add25.i = add i32 %spec.select.i, %add.i
  %sub26.i = sub i32 %10, %spec.select.i
  br i1 %cmp22.not.i, label %if.then10.i.if.end27.i_crit_edge, label %if.then10.i.if.else.thread63_crit_edge

if.then10.i.if.else.thread63_crit_edge:           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.thread63

if.then10.i.if.end27.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then10.i.if.end27.i_crit_edge, %do.end7.i.if.end27.i_crit_edge
  %len.1.i = phi i32 [ %sub26.i, %if.then10.i.if.end27.i_crit_edge ], [ %10, %do.end7.i.if.end27.i_crit_edge ]
  %ofs.1.i = phi i32 [ %add25.i, %if.then10.i.if.end27.i_crit_edge ], [ %add.i, %do.end7.i.if.end27.i_crit_edge ]
  %16 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c, align 4
  %conv.i = zext i32 %ofs.1.i to i64
  %call.i = call i32 @mtd_point(ptr noundef %17, i64 noundef %conv.i, i32 noundef %len.1.i, ptr noundef nonnull %retlen.i, ptr noundef nonnull %buffer.i, ptr noundef null) #9
  %18 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call.i, label %do.end51.i [
    i32 0, label %land.lhs.true.i
    i32 -95, label %if.end27.i.if.end8.i.i_crit_edge
  ]

if.end27.i.if.end8.i.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %19 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %len.1.i)
  %cmp30.i = icmp ult i32 %20, %len.1.i
  br i1 %cmp30.i, label %do.end35.i, label %if.else104.i

do.end35.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid.i.i, align 8
  %27 = ptrtoint ptr %csize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %csize.i, align 4
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %26, ptr noundef nonnull @.str.90, i32 noundef %20, i32 noundef %28) #12
  %29 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %c, align 4
  %31 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retlen.i, align 4
  %call43.i = call i32 @mtd_unpoint(ptr noundef %30, i64 noundef %conv.i, i32 noundef %32) #9
  br label %if.end8.i.i

do.end51.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i212.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i212.i to ptr
  %task54.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task54.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task54.i, align 8
  %pid.i213.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid.i213.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid.i213.i, align 8
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %38, ptr noundef nonnull @.str.90, i32 noundef %call.i) #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end51.i, %do.end35.i, %if.end27.i.if.end8.i.i_crit_edge
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %len.1.i, i32 noundef 3264) #13
  %39 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i.i, ptr %buffer.i, align 4
  %tobool64.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool64.not.i, label %check_node_data.exit.thread53, label %if.end74.i, !prof !201

check_node_data.exit.thread53:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #9
  br label %do.end25

if.end74.i:                                       ; preds = %if.end8.i.i
  %call76.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i, i32 noundef %len.1.i, ptr noundef nonnull %retlen.i, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end87.i, label %check_node_data.exit

if.end87.i:                                       ; preds = %if.end74.i
  %40 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %len.1.i)
  %cmp88.not.i = icmp eq i32 %41, %len.1.i
  br i1 %cmp88.not.i, label %if.then103.i, label %check_node_data.exit.thread57

check_node_data.exit.thread57:                    ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i216.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i216.i to ptr
  %task96.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task96.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task96.i, align 8
  %pid.i217.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid.i217.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid.i217.i, align 8
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %47, ptr noundef nonnull @.str.90, i32 noundef %ofs.1.i, i32 noundef %41, i32 noundef %len.1.i) #12
  %48 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %49) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #9
  br label %do.end25

if.then103.i:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %partial_crc227.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn, i32 0, i32 4
  %50 = ptrtoint ptr %partial_crc227.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %partial_crc227.i, align 4
  %52 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer.i, align 4
  %call101228.i = call i32 @crc32_le(i32 noundef %51, ptr noundef %53, i32 noundef %len.1.i) #14
  call void @kfree(ptr noundef %53) #9
  br label %if.end108.i

if.else104.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %partial_crc.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn, i32 0, i32 4
  %54 = ptrtoint ptr %partial_crc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %partial_crc.i, align 4
  %56 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer.i, align 4
  %call101.i = call i32 @crc32_le(i32 noundef %55, ptr noundef %57, i32 noundef %len.1.i) #14
  %58 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %c, align 4
  %call107.i = call i32 @mtd_unpoint(ptr noundef %59, i64 noundef %conv.i, i32 noundef %len.1.i) #9
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.else104.i, %if.then103.i
  %call101229.i = phi i32 [ %call101.i, %if.else104.i ], [ %call101228.i, %if.then103.i ]
  %data_crc.i = getelementptr inbounds %struct.jffs2_tmp_dnode_info, ptr %tn, i32 0, i32 3
  %60 = ptrtoint ptr %data_crc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_crc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call101229.i, i32 %61)
  %cmp109.not.i = icmp eq i32 %call101229.i, %61
  br i1 %cmp109.not.i, label %if.end108.i.if.else.thread63_crit_edge, label %if.else

if.end108.i.if.else.thread63_crit_edge:           ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.thread63

if.else.thread63:                                 ; preds = %if.end108.i.if.else.thread63_crit_edge, %if.then10.i.if.else.thread63_crit_edge
  %blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %62 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %blocks.i, align 4
  %64 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flash_offset, align 4
  %sector_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %66 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sector_size.i, align 4
  %div.i = udiv i32 %65, %67
  %arrayidx.i = getelementptr %struct.jffs2_eraseblock, ptr %63, i32 %div.i
  %call125.i = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx.i, ptr noundef %3) #9
  %68 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flash_offset, align 4
  %or.i = or i32 %69, 2
  store i32 %or.i, ptr %flash_offset, align 4
  %erase_completion_lock.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #9
  %used_size.i = getelementptr %struct.jffs2_eraseblock, ptr %63, i32 %div.i, i32 4
  %70 = ptrtoint ptr %used_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %used_size.i, align 4
  %add127.i = add i32 %71, %call125.i
  store i32 %add127.i, ptr %used_size.i, align 4
  %unchecked_size.i = getelementptr %struct.jffs2_eraseblock, ptr %63, i32 %div.i, i32 3
  %72 = ptrtoint ptr %unchecked_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %unchecked_size.i, align 4
  %sub128.i = sub i32 %73, %call125.i
  store i32 %sub128.i, ptr %unchecked_size.i, align 4
  %used_size129.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %74 = ptrtoint ptr %used_size129.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %used_size129.i, align 4
  %add130.i = add i32 %75, %call125.i
  store i32 %add130.i, ptr %used_size129.i, align 4
  %unchecked_size131.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %76 = ptrtoint ptr %unchecked_size131.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %unchecked_size131.i, align 4
  %sub132.i = sub i32 %77, %call125.i
  store i32 %sub132.i, ptr %unchecked_size131.i, align 4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #9
  br label %cleanup

check_node_data.exit:                             ; preds = %if.end74.i
  %78 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i214.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i214.i to ptr
  %task84.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task84.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task84.i, align 8
  %pid.i215.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid.i215.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid.i215.i, align 8
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %83, ptr noundef nonnull @.str.90, i32 noundef %len.1.i, i32 noundef %ofs.1.i, i32 noundef %call76.i) #12
  %84 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %85) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp15 = icmp slt i32 %call76.i, 0
  br i1 %cmp15, label %check_node_data.exit.do.end25_crit_edge, label %check_node_data.exit.if.then37_crit_edge, !prof !201

check_node_data.exit.if.then37_crit_edge:         ; preds = %check_node_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

check_node_data.exit.do.end25_crit_edge:          ; preds = %check_node_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end25:                                         ; preds = %check_node_data.exit.do.end25_crit_edge, %check_node_data.exit.thread57, %check_node_data.exit.thread53
  %retval.0.i56 = phi i32 [ -12, %check_node_data.exit.thread53 ], [ %call76.i, %check_node_data.exit.do.end25_crit_edge ], [ -5, %check_node_data.exit.thread57 ]
  %86 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 68
  %90 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pid.i, align 8
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %91, ptr noundef nonnull @.str.88, i32 noundef %retval.0.i56) #12
  br label %cleanup

if.else:                                          ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = call i32 @llvm.read_register.i32(metadata !188) #9
  %and.i218.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i218.i to ptr
  %task117.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task117.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task117.i, align 8
  %pid.i219.i = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 68
  %96 = ptrtoint ptr %pid.i219.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pid.i219.i, align 8
  %98 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flash_offset, align 4
  %and120.i = and i32 %99, -4
  %call122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %97, ptr noundef nonnull @.str.90, i32 noundef %and120.i, i32 noundef %61, i32 noundef %call101229.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #9
  br label %if.then37

if.then37:                                        ; preds = %if.else, %check_node_data.exit.if.then37_crit_edge
  %retval.0.i5262 = phi i32 [ 1, %if.else ], [ %call76.i, %check_node_data.exit.if.then37_crit_edge ]
  %100 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fn, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %103) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.end25, %if.else.thread63, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i5262, %if.then37 ], [ %retval.0.i56, %do.end25 ], [ 0, %if.else.thread63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_point(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unpoint(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_add_full_dnode_to_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187}
!llvm.named.register.sp = !{!188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/jffs2/readinode.c", i32 1351, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/jffs2/readinode.c", i32 1359, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jffs2_do_read_inode._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @jffs2_do_read_inode._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jffs2/readinode.c", i32 1374, i32 4}
!10 = !{ptr @jffs2_do_read_inode._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @jffs2_do_read_inode._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jffs2/readinode.c", i32 1385, i32 3}
!14 = !{ptr @jffs2_do_read_inode._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @jffs2_do_read_inode._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @jffs2_do_crccheck_inode.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/jffs2/readinode.c", i32 1401, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jffs2/readinode.c", i32 1163, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @jffs2_do_read_inode_internal._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @jffs2_do_read_inode_internal._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jffs2/readinode.c", i32 1171, i32 3}
!26 = !{ptr @jffs2_do_read_inode_internal._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/jffs2/readinode.c", i32 1202, i32 4}
!30 = !{ptr @jffs2_do_read_inode_internal._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/jffs2/readinode.c", i32 1208, i32 4}
!34 = !{ptr @jffs2_do_read_inode_internal._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/jffs2/readinode.c", i32 1223, i32 3}
!38 = !{ptr @jffs2_do_read_inode_internal._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/jffs2/readinode.c", i32 1231, i32 3}
!42 = !{ptr @jffs2_do_read_inode_internal._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/jffs2/readinode.c", i32 1250, i32 4}
!46 = !{ptr @jffs2_do_read_inode_internal._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/jffs2/readinode.c", i32 1273, i32 5}
!50 = !{ptr @jffs2_do_read_inode_internal._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jffs2/readinode.c", i32 1299, i32 4}
!54 = !{ptr @jffs2_do_read_inode_internal._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/jffs2/readinode.c", i32 1304, i32 4}
!58 = !{ptr @jffs2_do_read_inode_internal._entry.36, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.38, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/jffs2/readinode.c", i32 1310, i32 4}
!62 = !{ptr @jffs2_do_read_inode_internal._entry.39, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @jffs2_do_read_inode_internal._entry_ptr.41, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.42, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/jffs2/readinode.c", i32 1004, i32 3}
!66 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @jffs2_get_inode_nodes._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @jffs2_get_inode_nodes._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.45, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/jffs2/readinode.c", i32 1047, i32 4}
!71 = !{ptr @jffs2_get_inode_nodes._entry.44, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @jffs2_get_inode_nodes._entry_ptr.46, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.48, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/jffs2/readinode.c", i32 1052, i32 4}
!75 = !{ptr @jffs2_get_inode_nodes._entry.47, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @jffs2_get_inode_nodes._entry_ptr.49, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/jffs2/readinode.c", i32 1061, i32 4}
!79 = !{ptr @jffs2_get_inode_nodes._entry.50, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @jffs2_get_inode_nodes._entry_ptr.52, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/jffs2/readinode.c", i32 1072, i32 4}
!83 = !{ptr @jffs2_get_inode_nodes._entry.53, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @jffs2_get_inode_nodes._entry_ptr.55, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/jffs2/readinode.c", i32 598, i32 3}
!87 = !{ptr @.str.57, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @read_direntry._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @read_direntry._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.59, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/jffs2/readinode.c", i32 611, i32 4}
!92 = !{ptr @read_direntry._entry.58, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @read_direntry._entry_ptr.60, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.62, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/jffs2/readinode.c", i32 665, i32 4}
!96 = !{ptr @read_direntry._entry.61, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @read_direntry._entry_ptr.63, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.65, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/jffs2/readinode.c", i32 671, i32 4}
!100 = !{ptr @read_direntry._entry.64, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @read_direntry._entry_ptr.66, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.68, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/jffs2/readinode.c", i32 683, i32 4}
!104 = !{ptr @read_direntry._entry.67, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @read_direntry._entry_ptr.69, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.70, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/jffs2/readinode.c", i32 961, i32 3}
!108 = !{ptr @read_more._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @read_more._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @read_more._entry.71, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../fs/jffs2/readinode.c", i32 967, i32 3}
!112 = !{ptr @read_more._entry_ptr.72, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.73, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/jffs2/readinode.c", i32 727, i32 3}
!115 = !{ptr @.str.74, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @read_dnode._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @read_dnode._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.76, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/jffs2/readinode.c", i32 735, i32 3}
!120 = !{ptr @read_dnode._entry.75, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @read_dnode._entry_ptr.77, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.79, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/jffs2/readinode.c", i32 748, i32 4}
!124 = !{ptr @read_dnode._entry.78, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @read_dnode._entry_ptr.80, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.82, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/jffs2/readinode.c", i32 803, i32 5}
!128 = !{ptr @read_dnode._entry.81, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @read_dnode._entry_ptr.83, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.85, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/jffs2/readinode.c", i32 834, i32 3}
!132 = !{ptr @read_dnode._entry.84, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @read_dnode._entry_ptr.86, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.87, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/jffs2/readinode.c", i32 165, i32 3}
!136 = !{ptr @.str.88, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @check_tn_node._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @check_tn_node._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/jffs2/readinode.c", i32 69, i32 3}
!141 = !{ptr @.str.90, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @check_node_data._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @check_node_data._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.92, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/jffs2/readinode.c", i32 73, i32 4}
!146 = !{ptr @check_node_data._entry.91, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @check_node_data._entry_ptr.93, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @check_node_data._entry.94, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../fs/jffs2/readinode.c", i32 87, i32 4}
!150 = !{ptr @check_node_data._entry_ptr.95, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.97, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/jffs2/readinode.c", i32 92, i32 4}
!153 = !{ptr @check_node_data._entry.96, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @check_node_data._entry_ptr.98, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @check_node_data._entry.99, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../fs/jffs2/readinode.c", i32 108, i32 3}
!157 = !{ptr @check_node_data._entry_ptr.100, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.101, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/jffs2/readinode.c", i32 892, i32 3}
!160 = !{ptr @.str.102, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @read_unknown._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @read_unknown._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.104, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/jffs2/readinode.c", i32 894, i32 3}
!165 = !{ptr @read_unknown._entry.103, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @read_unknown._entry_ptr.105, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.107, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/jffs2/readinode.c", i32 906, i32 3}
!169 = !{ptr @read_unknown._entry.106, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @read_unknown._entry_ptr.108, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.110, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/jffs2/readinode.c", i32 913, i32 3}
!173 = !{ptr @read_unknown._entry.109, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @read_unknown._entry_ptr.111, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.113, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/jffs2/readinode.c", i32 919, i32 3}
!177 = !{ptr @read_unknown._entry.112, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @read_unknown._entry_ptr.114, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.116, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/jffs2/readinode.c", i32 924, i32 3}
!181 = !{ptr @read_unknown._entry.115, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @read_unknown._entry_ptr.117, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.118, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/jffs2/readinode.c", i32 522, i32 6}
!185 = !{ptr @.str.119, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @jffs2_build_inode_fragtree._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @jffs2_build_inode_fragtree._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{!"sp"}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{i64 2154669388}
!199 = !{i64 2154672104, i64 2154672590, i64 2154672141, i64 2154672197, i64 2154672231, i64 2154672255, i64 2154672296, i64 2154672317, i64 2154672345, i64 2154672379}
!200 = !{!"auto-init"}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2154544829, i64 2154545314, i64 2154544866, i64 2154544922, i64 2154544956, i64 2154544980, i64 2154545021, i64 2154545042, i64 2154545070, i64 2154545104}
!203 = !{!"branch_weights", i32 2000, i32 1}
!204 = !{i64 2154562104, i64 2154562589, i64 2154562141, i64 2154562197, i64 2154562231, i64 2154562255, i64 2154562296, i64 2154562317, i64 2154562345, i64 2154562379}
!205 = !{i64 2154591660, i64 2154592145, i64 2154591697, i64 2154591753, i64 2154591787, i64 2154591811, i64 2154591852, i64 2154591873, i64 2154591901, i64 2154591935}
!206 = !{i64 2154595671, i64 2154596156, i64 2154595708, i64 2154595764, i64 2154595798, i64 2154595822, i64 2154595863, i64 2154595884, i64 2154595912, i64 2154595946}
!207 = !{i64 2154515569, i64 2154516054, i64 2154515606, i64 2154515662, i64 2154515696, i64 2154515720, i64 2154515761, i64 2154515782, i64 2154515810, i64 2154515844}
!208 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!209 = !{i64 2154467651, i64 2154468136, i64 2154467688, i64 2154467744, i64 2154467778, i64 2154467802, i64 2154467843, i64 2154467864, i64 2154467892, i64 2154467926}
!210 = !{i64 2154448802, i64 2154449286, i64 2154448839, i64 2154448895, i64 2154448929, i64 2154448953, i64 2154448994, i64 2154449015, i64 2154449043, i64 2154449077}
