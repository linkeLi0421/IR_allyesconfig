; ModuleID = '/llk/IR_all_yes/fs/jffs2/xattr.c_pt.bc'
source_filename = "../fs/jffs2/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
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
%struct.jffs2_xattr_ref = type { ptr, ptr, i8, i8, i16, i32, %union.anon.76, %union.anon.77, ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.jffs2_xattr_datum = type { ptr, ptr, i8, i8, i16, %struct.list_head, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.jffs2_raw_xref = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
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
%struct.jffs2_raw_xattr = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.kvec = type { ptr, i32 }

@jffs2_init_xattr_subsystem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c->xattr_sem\00", [18 x i8] zeroinitializer }, align 32
@jffs2_build_xattr_subsystem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"\015jffs2: notice: (%d) %s: complete building xattr subsystem, %u of xdatum (%u unchecked, %u orphan) and %u of xref (%u dead, %u orphan) found.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"jffs2_build_xattr_subsystem\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jffs2/xattr.c\00", [47 x i8] zeroinitializer }, align 32
@jffs2_build_xattr_subsystem._entry_ptr = internal global ptr @jffs2_build_xattr_subsystem._entry, section ".printk_index", align 4
@jffs2_user_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@jffs2_security_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@jffs2_trusted_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@jffs2_xattr_handlers = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @jffs2_user_xattr_handler, ptr @jffs2_security_xattr_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @jffs2_trusted_xattr_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@do_jffs2_setxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014jffs2: warning: (%d) %s: jffs2_reserve_space()=%d, request=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_jffs2_setxattr\00", [46 x i8] zeroinitializer }, align 32
@do_jffs2_setxattr._entry_ptr = internal global ptr @do_jffs2_setxattr._entry, section ".printk_index", align 4
@do_jffs2_setxattr._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_jffs2_setxattr._entry_ptr.7 = internal global ptr @do_jffs2_setxattr._entry.6, section ".printk_index", align 4
@jffs2_garbage_collect_xattr_datum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014jffs2: warning: (%d) %s: jffs2_reserve_space_gc()=%d, request=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"jffs2_garbage_collect_xattr_datum\00", [62 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_xattr_datum._entry_ptr = internal global ptr @jffs2_garbage_collect_xattr_datum._entry, section ".printk_index", align 4
@jffs2_garbage_collect_xattr_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014jffs2: warning: (%d) %s: %s: jffs2_reserve_space_gc() = %d, request = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"jffs2_garbage_collect_xattr_ref\00", [32 x i8] zeroinitializer }, align 32
@jffs2_garbage_collect_xattr_ref._entry_ptr = internal global ptr @jffs2_garbage_collect_xattr_ref._entry, section ".printk_index", align 4
@verify_xattr_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014jffs2: warning: (%d) %s: jffs2_flash_read()=%d, req=%zu, read=%zu, at %#08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"verify_xattr_ref\00", [47 x i8] zeroinitializer }, align 32
@verify_xattr_ref._entry_ptr = internal global ptr @verify_xattr_ref._entry, section ".printk_index", align 4
@verify_xattr_ref._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013jffs2: error: (%d) %s: node CRC failed at %#08x, read=%#08x, calc=%#08x\0A\00", [53 x i8] zeroinitializer }, align 32
@verify_xattr_ref._entry_ptr.16 = internal global ptr @verify_xattr_ref._entry.14, section ".printk_index", align 4
@verify_xattr_ref._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\013jffs2: error: (%d) %s: inconsistent xref at %#08x, magic=%#04x/%#04x, nodetype=%#04x/%#04x, totlen=%u/%zu\0A\00", [51 x i8] zeroinitializer }, align 32
@verify_xattr_ref._entry_ptr.19 = internal global ptr @verify_xattr_ref._entry.17, section ".printk_index", align 4
@do_load_xattr_datum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014jffs2: warning: (%d) %s: jffs2_flash_read() returned %d, request=%d, readlen=%zu, at %#08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"do_load_xattr_datum\00", [44 x i8] zeroinitializer }, align 32
@do_load_xattr_datum._entry_ptr = internal global ptr @do_load_xattr_datum._entry, section ".printk_index", align 4
@do_load_xattr_datum._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\014jffs2: warning: (%d) %s: node CRC failed (JFFS2_NODETYPE_XATTR) at %#08x, read: 0x%08x calculated: 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@do_load_xattr_datum._entry_ptr.24 = internal global ptr @do_load_xattr_datum._entry.22, section ".printk_index", align 4
@reclaim_xattr_datum.index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reclaim_xattr_datum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\015jffs2: notice: (%d) %s: xdatum_mem_usage from %u byte to %u byte (%u byte reclaimed)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reclaim_xattr_datum\00", [44 x i8] zeroinitializer }, align 32
@reclaim_xattr_datum._entry_ptr = internal global ptr @reclaim_xattr_datum._entry, section ".printk_index", align 4
@save_xattr_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014jffs2: warning: (%d) %s: jffs2_flash_write() returned %d, request=%zu, retlen=%zu, at %#08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"save_xattr_ref\00", [17 x i8] zeroinitializer }, align 32
@save_xattr_ref._entry_ptr = internal global ptr @save_xattr_ref._entry, section ".printk_index", align 4
@save_xattr_datum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014jffs2: warning: (%d) %s: jffs2_flash_writev()=%d, req=%u, wrote=%zu, at %#08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"save_xattr_datum\00", [47 x i8] zeroinitializer }, align 32
@save_xattr_datum._entry_ptr = internal global ptr @save_xattr_datum._entry, section ".printk_index", align 4
@do_verify_xattr_datum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014jffs2: warning: (%d) %s: jffs2_flash_read()=%d, req=%zu, read=%zu at %#08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"do_verify_xattr_datum\00", [42 x i8] zeroinitializer }, align 32
@do_verify_xattr_datum._entry_ptr = internal global ptr @do_verify_xattr_datum._entry, section ".printk_index", align 4
@do_verify_xattr_datum._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.32, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_verify_xattr_datum._entry_ptr.34 = internal global ptr @do_verify_xattr_datum._entry.33, section ".printk_index", align 4
@do_verify_xattr_datum._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.3, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"\013jffs2: error: (%d) %s: inconsistent xdatum at %#08x, magic=%#04x/%#04x, nodetype=%#04x/%#04x, totlen=%u/%u, xid=%u/%u, version=%u/%u\0A\00", [56 x i8] zeroinitializer }, align 32
@do_verify_xattr_datum._entry_ptr.37 = internal global ptr @do_verify_xattr_datum._entry.35, section ".printk_index", align 4
@switch.table.jffs2_listxattr = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @jffs2_user_xattr_handler, ptr @jffs2_security_xattr_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @jffs2_trusted_xattr_handler], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 718, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 882, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"jffs2_xattr_handlers\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 918, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1112, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1183, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1241, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1274, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 461, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 468, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 475, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 224, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 233, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 107, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 128, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 533, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 319, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 150, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 156, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [20 x i8] c"../fs/jffs2/xattr.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 167, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [29 x i8] c"switch.table.jffs2_listxattr\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @do_jffs2_setxattr._entry, ptr @do_jffs2_setxattr._entry.6, ptr @do_jffs2_setxattr._entry_ptr, ptr @do_jffs2_setxattr._entry_ptr.7, ptr @do_load_xattr_datum._entry, ptr @do_load_xattr_datum._entry.22, ptr @do_load_xattr_datum._entry_ptr, ptr @do_load_xattr_datum._entry_ptr.24, ptr @do_verify_xattr_datum._entry, ptr @do_verify_xattr_datum._entry.33, ptr @do_verify_xattr_datum._entry.35, ptr @do_verify_xattr_datum._entry_ptr, ptr @do_verify_xattr_datum._entry_ptr.34, ptr @do_verify_xattr_datum._entry_ptr.37, ptr @jffs2_build_xattr_subsystem._entry, ptr @jffs2_build_xattr_subsystem._entry_ptr, ptr @jffs2_garbage_collect_xattr_datum._entry, ptr @jffs2_garbage_collect_xattr_datum._entry_ptr, ptr @jffs2_garbage_collect_xattr_ref._entry, ptr @jffs2_garbage_collect_xattr_ref._entry_ptr, ptr @reclaim_xattr_datum._entry, ptr @reclaim_xattr_datum._entry_ptr, ptr @save_xattr_datum._entry, ptr @save_xattr_datum._entry_ptr, ptr @save_xattr_ref._entry, ptr @save_xattr_ref._entry_ptr, ptr @verify_xattr_ref._entry, ptr @verify_xattr_ref._entry.14, ptr @verify_xattr_ref._entry.17, ptr @verify_xattr_ref._entry_ptr, ptr @verify_xattr_ref._entry_ptr.16, ptr @verify_xattr_ref._entry_ptr.19, ptr @jffs2_init_xattr_subsystem.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @jffs2_xattr_handlers, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @reclaim_xattr_datum.index, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.36, ptr @switch.table.jffs2_listxattr], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_init_xattr_subsystem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_build_xattr_subsystem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_xattr_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_jffs2_setxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_jffs2_setxattr._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_xattr_datum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_garbage_collect_xattr_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_xattr_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_xattr_ref._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_xattr_ref._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_load_xattr_datum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_load_xattr_datum._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_xattr_datum.index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_xattr_datum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_xattr_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_xattr_datum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_verify_xattr_datum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_verify_xattr_datum._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_verify_xattr_datum._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jffs2_listxattr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_xattr_delete_inode(ptr noundef %c, ptr noundef %ic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ic, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 8
  %0 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pino_nlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 69
  tail call void @down_write(ptr noundef %xattr_sem) #11
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 7
  %2 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xref, align 4
  %tobool1.not12 = icmp eq ptr %3, null
  br i1 %tobool1.not12, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %erase_completion_lock.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  %xref_dead_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 67
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ref.013 = phi ptr [ %3, %for.body.lr.ph ], [ %5, %for.body.for.body_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.013, i32 0, i32 8
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %6 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.013, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %xseqno.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.013, i32 0, i32 5
  %9 = ptrtoint ptr %xseqno.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xseqno.i, align 4
  %or.i = or i32 %10, 1
  store i32 %or.i, ptr %xseqno.i, align 4
  %11 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.013, i32 0, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %ino.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ino.i, align 4
  store i32 %15, ptr %11, align 4
  %xid.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %8, i32 0, i32 7
  %16 = ptrtoint ptr %xid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xid.i, align 4
  store i32 %17, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #11
  %18 = ptrtoint ptr %xref_dead_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xref_dead_list.i, align 4
  %20 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %next, align 4
  store ptr %ref.013, ptr %xref_dead_list.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #11
  tail call fastcc void @unrefer_xattr_datum(ptr noundef %c, ptr noundef %8) #11
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %21 = ptrtoint ptr %xref to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %xref, align 4
  tail call void @up_write(ptr noundef %xattr_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @delete_xattr_ref(ptr noundef %c, ptr noundef %ref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %xseqno = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 5
  %3 = ptrtoint ptr %xseqno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xseqno, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %xseqno, align 4
  %5 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ino, align 4
  store i32 %9, ptr %5, align 4
  %xid = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %2, i32 0, i32 7
  %10 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xid, align 4
  store i32 %11, ptr %0, align 4
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  %xref_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 67
  %12 = ptrtoint ptr %xref_dead_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xref_dead_list, align 4
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 8
  %14 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %next, align 4
  store ptr %ref, ptr %xref_dead_list, align 4
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  tail call fastcc void @unrefer_xattr_datum(ptr noundef %c, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_xattr_free_inode(ptr noundef %c, ptr nocapture noundef %ic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 69
  tail call void @down_write(ptr noundef %xattr_sem) #11
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 7
  %0 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xref, align 4
  %tobool.not11 = icmp eq ptr %1, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %xdatum_mem_usage.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 70
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %ref.012 = phi ptr [ %1, %for.body.lr.ph ], [ %3, %if.end.for.body_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.012, i32 0, i32 8
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %4 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.012, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %refcnt = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  %xname.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 11
  %8 = ptrtoint ptr %xname.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xname.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %name_len.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 12
  %10 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name_len.i, align 4
  %value_len.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 14
  %12 = ptrtoint ptr %value_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value_len.i, align 4
  %14 = ptrtoint ptr %xdatum_mem_usage.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xdatum_mem_usage.i, align 4
  %add.neg.i = xor i32 %11, -1
  %add1.neg.i = sub i32 %add.neg.i, %13
  %sub.i = add i32 %add1.neg.i, %15
  store i32 %sub.i, ptr %xdatum_mem_usage.i, align 4
  %16 = ptrtoint ptr %xname.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xname.i, align 4
  tail call void @kfree(ptr noundef %17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %xindex.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xindex.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.unload_xattr_datum.exit_crit_edge

if.end.i.unload_xattr_datum.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unload_xattr_datum.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %xindex.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xindex.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %unload_xattr_datum.exit

unload_xattr_datum.exit:                          ; preds = %if.end.i.i.i, %if.end.i.unload_xattr_datum.exit_crit_edge
  %24 = ptrtoint ptr %xindex.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %xindex.i, ptr %xindex.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %xindex.i, ptr %prev.i3.i.i, align 4
  %hashkey.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 10
  %26 = ptrtoint ptr %hashkey.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %hashkey.i, align 4
  %27 = ptrtoint ptr %xname.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %xname.i, align 4
  %xvalue.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %6, i32 0, i32 13
  %28 = ptrtoint ptr %xvalue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %xvalue.i, align 4
  tail call void @jffs2_free_xattr_datum(ptr noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %unload_xattr_datum.exit, %for.body.if.end_crit_edge
  tail call void @jffs2_free_xattr_ref(ptr noundef nonnull %ref.012) #11
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %29 = ptrtoint ptr %xref to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %xref, align 4
  tail call void @up_write(ptr noundef %xattr_sem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_xattr_datum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_xattr_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_xattr_do_crccheck_inode(ptr noundef %c, ptr nocapture noundef %ic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @check_xattr_ref_inode(ptr noundef %c, ptr noundef %ic)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_xattr_ref_inode(ptr noundef %c, ptr nocapture noundef %ic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !93

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 69
  tail call void @down_write(ptr noundef %xattr_sem) #11
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 7
  %3 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %3)
  %ref.0169173 = load ptr, ptr %xref, align 4
  %tobool4.not170174 = icmp eq ptr %ref.0169173, null
  br i1 %tobool4.not170174, label %if.end.for.end91_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end91_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end91

for.cond.loopexit:                                ; preds = %for.inc
  %4 = ptrtoint ptr %next28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %ref.0.pr = load ptr, ptr %next28, align 4
  %tobool4.not = icmp eq ptr %ref.0.pr, null
  br i1 %tobool4.not, label %for.cond.loopexit.for.end91_crit_edge, label %for.cond.loopexit.for.body.backedge_crit_edge

for.cond.loopexit.for.body.backedge_crit_edge:    ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.backedge

for.cond.loopexit.for.end91_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end91

for.body.backedge:                                ; preds = %retry.backedge.for.body.backedge_crit_edge, %for.cond.loopexit.for.body.backedge_crit_edge
  %ref.0172.be = phi ptr [ %ref.0.pr, %for.cond.loopexit.for.body.backedge_crit_edge ], [ %ref.0169, %retry.backedge.for.body.backedge_crit_edge ]
  %pref.0171.be = phi ptr [ %next28, %for.cond.loopexit.for.body.backedge_crit_edge ], [ %xref, %retry.backedge.for.body.backedge_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %if.end.for.body_crit_edge
  %ref.0172 = phi ptr [ %ref.0172.be, %for.body.backedge ], [ %ref.0169173, %if.end.for.body_crit_edge ]
  %pref.0171 = phi ptr [ %pref.0171.be, %for.body.backedge ], [ %xref, %if.end.for.body_crit_edge ]
  %5 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0172, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %xname = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xname, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.then6, label %for.body.if.end27_crit_edge

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then6:                                         ; preds = %for.body
  %call = tail call fastcc i32 @load_xattr_datum(ptr noundef %c, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp sgt i32 %call, 0
  br i1 %cmp7, label %if.then15, label %if.else, !prof !93

if.then15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0172, i32 0, i32 8
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then80, %if.then76.retry.backedge_crit_edge, %if.then52, %if.then15
  %next81.sink = phi ptr [ %next81, %if.then80 ], [ %next, %if.then15 ], [ %next53, %if.then52 ], [ %next28, %if.then76.retry.backedge_crit_edge ]
  %pcmp.0166.lcssa205.sink = phi ptr [ %pcmp.0166, %if.then80 ], [ %pref.0171, %if.then15 ], [ %pcmp.0166, %if.then52 ], [ %pref.0171, %if.then76.retry.backedge_crit_edge ]
  %cmp.0167.lcssa208.sink = phi ptr [ %cmp.0167, %if.then80 ], [ %ref.0172, %if.then15 ], [ %cmp.0167, %if.then52 ], [ %ref.0172, %if.then76.retry.backedge_crit_edge ]
  %10 = ptrtoint ptr %next81.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next81.sink, align 4
  %12 = ptrtoint ptr %pcmp.0166.lcssa205.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pcmp.0166.lcssa205.sink, align 4
  tail call fastcc void @delete_xattr_ref(ptr noundef %c, ptr noundef nonnull %cmp.0167.lcssa208.sink)
  %13 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %13)
  %ref.0169 = load ptr, ptr %xref, align 4
  %tobool4.not170 = icmp eq ptr %ref.0169, null
  br i1 %tobool4.not170, label %retry.backedge.for.end91_crit_edge, label %retry.backedge.for.body.backedge_crit_edge

retry.backedge.for.body.backedge_crit_edge:       ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.backedge

retry.backedge.for.end91_crit_edge:               ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end91

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.else.out_crit_edge, label %if.else.if.end27_crit_edge, !prof !93

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %next28 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0172, i32 0, i32 8
  %14 = ptrtoint ptr %next28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %cmp.0164 = load ptr, ptr %next28, align 4
  %tobool31.not165 = icmp eq ptr %cmp.0164, null
  br i1 %tobool31.not165, label %if.end27.for.end91_crit_edge, label %if.end27.for.body32_crit_edge

if.end27.for.body32_crit_edge:                    ; preds = %if.end27
  br label %for.body32

if.end27.for.end91_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end91

for.body32:                                       ; preds = %for.inc.for.body32_crit_edge, %if.end27.for.body32_crit_edge
  %cmp.0167 = phi ptr [ %cmp.0, %for.inc.for.body32_crit_edge ], [ %cmp.0164, %if.end27.for.body32_crit_edge ]
  %pcmp.0166 = phi ptr [ %next86, %for.inc.for.body32_crit_edge ], [ %next28, %if.end27.for.body32_crit_edge ]
  %15 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %cmp.0167, i32 0, i32 7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %xname33 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %xname33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xname33, align 4
  %tobool34.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %if.then35, label %for.body32.if.end66_crit_edge

for.body32.if.end66_crit_edge:                    ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then35:                                        ; preds = %for.body32
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %flags36 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags36 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags36, align 1
  %24 = or i8 %23, 2
  store i8 %24, ptr %flags36, align 1
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %15, align 4
  %call39 = tail call fastcc i32 @load_xattr_datum(ptr noundef %c, ptr noundef %26)
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %flags40 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags40 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags40, align 1
  %31 = and i8 %30, -3
  store i8 %31, ptr %flags40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp44 = icmp sgt i32 %call39, 0
  br i1 %cmp44, label %if.then52, label %if.else54, !prof !93

if.then52:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %next53 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %cmp.0167, i32 0, i32 8
  br label %retry.backedge

if.else54:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp55 = icmp slt i32 %call39, 0
  br i1 %cmp55, label %if.else54.out_crit_edge, label %if.else54.if.end66_crit_edge, !prof !93

if.else54.if.end66_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.else54.out_crit_edge:                          ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end66:                                         ; preds = %if.else54.if.end66_crit_edge, %for.body32.if.end66_crit_edge
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %xprefix = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %xprefix to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %xprefix, align 2
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %15, align 4
  %xprefix68 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %xprefix68 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %xprefix68, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %39)
  %cmp70 = icmp eq i16 %35, %39
  br i1 %cmp70, label %land.lhs.true, label %if.end66.for.inc_crit_edge

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end66
  %xname72 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %33, i32 0, i32 11
  %40 = ptrtoint ptr %xname72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xname72, align 4
  %xname73 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %37, i32 0, i32 11
  %42 = ptrtoint ptr %xname73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xname73, align 4
  %call74 = tail call i32 @strcmp(ptr noundef %41, ptr noundef %43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then76:                                        ; preds = %land.lhs.true
  %xseqno = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0172, i32 0, i32 5
  %44 = ptrtoint ptr %xseqno to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xseqno, align 4
  %xseqno77 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %cmp.0167, i32 0, i32 5
  %46 = ptrtoint ptr %xseqno77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xseqno77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp78 = icmp ugt i32 %45, %47
  br i1 %cmp78, label %if.then80, label %if.then76.retry.backedge_crit_edge

if.then76.retry.backedge_crit_edge:               ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.backedge

if.then80:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %next81 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %cmp.0167, i32 0, i32 8
  br label %retry.backedge

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end66.for.inc_crit_edge
  %next86 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %cmp.0167, i32 0, i32 8
  %48 = ptrtoint ptr %next86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %cmp.0 = load ptr, ptr %next86, align 4
  %tobool31.not = icmp eq ptr %cmp.0, null
  br i1 %tobool31.not, label %for.cond.loopexit, label %for.inc.for.body32_crit_edge

for.inc.for.body32_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32

for.end91:                                        ; preds = %if.end27.for.end91_crit_edge, %retry.backedge.for.end91_crit_edge, %for.cond.loopexit.for.end91_crit_edge, %if.end.for.end91_crit_edge
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags, align 1
  %51 = or i8 %50, 1
  store i8 %51, ptr %flags, align 1
  br label %out

out:                                              ; preds = %for.end91, %if.else54.out_crit_edge, %if.else.out_crit_edge
  %rc.4 = phi i32 [ 0, %for.end91 ], [ %call39, %if.else54.out_crit_edge ], [ %call, %if.else.out_crit_edge ]
  tail call void @up_write(ptr noundef %xattr_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.4, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_init_xattr_subsystem(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %i.014
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %i.014, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 57
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %xattr_unchecked = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 65
  %2 = ptrtoint ptr %xattr_unchecked to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %xattr_unchecked, ptr %xattr_unchecked, align 4
  %prev.i12 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 65, i32 1
  %3 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %xattr_unchecked, ptr %prev.i12, align 4
  %xattr_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 66
  %4 = ptrtoint ptr %xattr_dead_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %xattr_dead_list, ptr %xattr_dead_list, align 4
  %prev.i13 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xattr_dead_list, ptr %prev.i13, align 4
  %xref_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 67
  %6 = ptrtoint ptr %xref_dead_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xref_dead_list, align 4
  %xref_temp = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 68
  %7 = ptrtoint ptr %xref_temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xref_temp, align 4
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 69
  tail call void @__init_rwsem(ptr noundef %xattr_sem, ptr noundef nonnull @.str, ptr noundef nonnull @jffs2_init_xattr_subsystem.__key) #11
  %highest_xid = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 62
  %8 = ptrtoint ptr %highest_xid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %highest_xid, align 4
  %highest_xseqno = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 63
  %9 = ptrtoint ptr %highest_xseqno to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %highest_xseqno, align 4
  %xdatum_mem_usage = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 70
  %10 = ptrtoint ptr %xdatum_mem_usage to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %xdatum_mem_usage, align 4
  %xdatum_mem_threshold = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 71
  %11 = ptrtoint ptr %xdatum_mem_threshold to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32768, ptr %xdatum_mem_threshold, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_clear_xattr_subsystem(ptr noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xref_temp = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 68
  %0 = ptrtoint ptr %xref_temp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xref_temp, align 4
  %tobool.not126 = icmp eq ptr %1, null
  br i1 %tobool.not126, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ref.0127 = phi ptr [ %3, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0127, i32 0, i32 8
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  tail call void @jffs2_free_xattr_ref(ptr noundef nonnull %ref.0127) #11
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %xref_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 67
  %4 = ptrtoint ptr %xref_dead_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xref_dead_list, align 4
  %tobool2.not128 = icmp eq ptr %5, null
  br i1 %tobool2.not128, label %for.end.for.body8.preheader_crit_edge, label %for.end.for.body3_crit_edge

for.end.for.body3_crit_edge:                      ; preds = %for.end
  br label %for.body3

for.end.for.body8.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8.preheader

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.end.for.body3_crit_edge
  %ref.1129 = phi ptr [ %7, %for.body3.for.body3_crit_edge ], [ %5, %for.end.for.body3_crit_edge ]
  %next4 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.1129, i32 0, i32 8
  %6 = ptrtoint ptr %next4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next4, align 4
  tail call void @jffs2_free_xattr_ref(ptr noundef nonnull %ref.1129) #11
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %for.body3.for.body8.preheader_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.body3.for.body8.preheader_crit_edge:          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.body3.for.body8.preheader_crit_edge, %for.end.for.body8.preheader_crit_edge
  br label %for.body8

for.body8:                                        ; preds = %for.inc28.for.body8_crit_edge, %for.body8.preheader
  %i.0133 = phi i32 [ %inc, %for.inc28.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %arrayidx = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %i.0133
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp18.not130 = icmp eq ptr %9, %arrayidx
  br i1 %cmp18.not130, label %for.body8.for.inc28_crit_edge, label %for.body8.for.body19_crit_edge

for.body8.for.body19_crit_edge:                   ; preds = %for.body8
  br label %for.body19

for.body8.for.inc28_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc28

for.body19:                                       ; preds = %list_del.exit.for.body19_crit_edge, %for.body8.for.body19_crit_edge
  %.pn110.in131 = phi ptr [ %.pn110, %list_del.exit.for.body19_crit_edge ], [ %9, %for.body8.for.body19_crit_edge ]
  %xd.0 = getelementptr i8, ptr %.pn110.in131, i32 -12
  %10 = ptrtoint ptr %.pn110.in131 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn110 = load ptr, ptr %.pn110.in131, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn110.in131) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body19.list_del.exit_crit_edge

for.body19.list_del.exit_crit_edge:               ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn110.in131, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn110.in131 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn110.in131, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body19.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn110.in131 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn110.in131, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn110.in131, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %xname = getelementptr i8, ptr %.pn110.in131, i32 28
  %19 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xname, align 4
  tail call void @kfree(ptr noundef %20) #11
  tail call void @jffs2_free_xattr_datum(ptr noundef %xd.0) #11
  %cmp18.not = icmp eq ptr %.pn110, %arrayidx
  br i1 %cmp18.not, label %list_del.exit.for.inc28_crit_edge, label %list_del.exit.for.body19_crit_edge

list_del.exit.for.body19_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

list_del.exit.for.inc28_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc28

for.inc28:                                        ; preds = %list_del.exit.for.inc28_crit_edge, %for.body8.for.inc28_crit_edge
  %inc = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc, 57
  br i1 %exitcond.not, label %for.end29, label %for.inc28.for.body8_crit_edge

for.inc28.for.body8_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.end29:                                        ; preds = %for.inc28
  %xattr_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 66
  %21 = ptrtoint ptr %xattr_dead_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xattr_dead_list, align 4
  %cmp42.not134 = icmp eq ptr %22, %xattr_dead_list
  br i1 %cmp42.not134, label %for.end29.for.end52_crit_edge, label %for.end29.for.body44_crit_edge

for.end29.for.body44_crit_edge:                   ; preds = %for.end29
  br label %for.body44

for.end29.for.end52_crit_edge:                    ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52

for.body44:                                       ; preds = %list_del.exit119.for.body44_crit_edge, %for.end29.for.body44_crit_edge
  %.pn.in135 = phi ptr [ %.pn, %list_del.exit119.for.body44_crit_edge ], [ %22, %for.end29.for.body44_crit_edge ]
  %xd.1 = getelementptr i8, ptr %.pn.in135, i32 -12
  %23 = ptrtoint ptr %.pn.in135 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn.in135, align 4
  %call.i.i114 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in135) #11
  br i1 %call.i.i114, label %if.end.i.i117, label %for.body44.list_del.exit119_crit_edge

for.body44.list_del.exit119_crit_edge:            ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit119

if.end.i.i117:                                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i115 = getelementptr inbounds %struct.list_head, ptr %.pn.in135, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i115, align 4
  %26 = ptrtoint ptr %.pn.in135 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in135, align 4
  %prev1.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i116, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit119

list_del.exit119:                                 ; preds = %if.end.i.i117, %for.body44.list_del.exit119_crit_edge
  %30 = ptrtoint ptr %.pn.in135 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in135, align 4
  %prev.i118 = getelementptr inbounds %struct.list_head, ptr %.pn.in135, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i118, align 4
  tail call void @jffs2_free_xattr_datum(ptr noundef %xd.1) #11
  %cmp42.not = icmp eq ptr %.pn, %xattr_dead_list
  br i1 %cmp42.not, label %list_del.exit119.for.end52_crit_edge, label %list_del.exit119.for.body44_crit_edge

list_del.exit119.for.body44_crit_edge:            ; preds = %list_del.exit119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body44

list_del.exit119.for.end52_crit_edge:             ; preds = %list_del.exit119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52

for.end52:                                        ; preds = %list_del.exit119.for.end52_crit_edge, %for.end29.for.end52_crit_edge
  %xattr_unchecked = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 65
  %32 = ptrtoint ptr %xattr_unchecked to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xattr_unchecked, align 4
  %cmp65.not137 = icmp eq ptr %33, %xattr_unchecked
  br i1 %cmp65.not137, label %for.end52.for.end75_crit_edge, label %for.end52.for.body67_crit_edge

for.end52.for.body67_crit_edge:                   ; preds = %for.end52
  br label %for.body67

for.end52.for.end75_crit_edge:                    ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.body67:                                       ; preds = %list_del.exit125.for.body67_crit_edge, %for.end52.for.body67_crit_edge
  %.pn109.in138 = phi ptr [ %.pn109, %list_del.exit125.for.body67_crit_edge ], [ %33, %for.end52.for.body67_crit_edge ]
  %xd.2 = getelementptr i8, ptr %.pn109.in138, i32 -12
  %34 = ptrtoint ptr %.pn109.in138 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn109 = load ptr, ptr %.pn109.in138, align 4
  %call.i.i120 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn109.in138) #11
  br i1 %call.i.i120, label %if.end.i.i123, label %for.body67.list_del.exit125_crit_edge

for.body67.list_del.exit125_crit_edge:            ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit125

if.end.i.i123:                                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i121 = getelementptr inbounds %struct.list_head, ptr %.pn109.in138, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i121, align 4
  %37 = ptrtoint ptr %.pn109.in138 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn109.in138, align 4
  %prev1.i.i.i122 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i122, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit125

list_del.exit125:                                 ; preds = %if.end.i.i123, %for.body67.list_del.exit125_crit_edge
  %41 = ptrtoint ptr %.pn109.in138 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn109.in138, align 4
  %prev.i124 = getelementptr inbounds %struct.list_head, ptr %.pn109.in138, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i124, align 4
  tail call void @jffs2_free_xattr_datum(ptr noundef %xd.2) #11
  %cmp65.not = icmp eq ptr %.pn109, %xattr_unchecked
  br i1 %cmp65.not, label %list_del.exit125.for.end75_crit_edge, label %list_del.exit125.for.body67_crit_edge

list_del.exit125.for.body67_crit_edge:            ; preds = %list_del.exit125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body67

list_del.exit125.for.end75_crit_edge:             ; preds = %list_del.exit125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.end75:                                        ; preds = %list_del.exit125.for.end75_crit_edge, %for.end52.for.end75_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_build_xattr_subsystem(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %rr.i = alloca %struct.jffs2_raw_xref, align 2
  %readlen.i = alloca i32, align 4
  %xref_tmphash = alloca [128 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %xref_tmphash) #11
  %flags = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %for.body.preheader, !prof !93

for.body.preheader:                               ; preds = %entry
  %2 = call ptr @memset(ptr %xref_tmphash, i32 0, i32 512)
  %xref_temp = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 68
  %3 = ptrtoint ptr %xref_temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xref_temp, align 4
  %tobool11.not309 = icmp eq ptr %4, null
  br i1 %tobool11.not309, label %for.body.preheader.for.end76_crit_edge, label %for.body12.lr.ph

for.body.preheader.for.end76_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end76

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 785, 0\0A.popsection", ""() #11, !srcloc !94
  unreachable

for.body12.lr.ph:                                 ; preds = %for.body.preheader
  %5 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr.i, i32 0, i32 5
  %9 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr.i, i32 0, i32 6
  %10 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr.i, i32 0, i32 7
  %erase_completion_lock.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  %highest_xseqno.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 63
  %blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %sector_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %unchecked_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %used_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  br label %for.body12

for.body12:                                       ; preds = %cleanup.for.body12_crit_edge, %for.body12.lr.ph
  %ref.0310 = phi ptr [ %4, %for.body12.lr.ph ], [ %12, %cleanup.for.body12_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 8
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next, align 4
  %node = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 1
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 4
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flash_offset, align 4
  %and13 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 2
  br i1 %cmp14.not, label %for.body12.if.end41_crit_edge, label %if.then15

for.body12.if.end41_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then15:                                        ; preds = %for.body12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rr.i) #11
  %17 = call ptr @memset(ptr %rr.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readlen.i) #11
  %18 = ptrtoint ptr %readlen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %readlen.i, align 4, !annotation !95
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #11
  %19 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node, align 4
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flash_offset.i, align 4
  %and.i = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then15.complete.i_crit_edge

if.then15.complete.i_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete.i

if.end.i:                                         ; preds = %if.then15
  %and3.i = and i32 %22, -4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #11
  %conv.i = zext i32 %and3.i to i64
  %call.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i, i32 noundef 28, ptr noundef nonnull %readlen.i, ptr noundef nonnull %rr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %23 = ptrtoint ptr %readlen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %readlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %24)
  %cmp5.not.i = icmp eq i32 %24, 28
  br i1 %cmp5.not.i, label %if.end12.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %25 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid.i.i, align 8
  %31 = ptrtoint ptr %readlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %readlen.i, align 4
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %30, ptr noundef nonnull @.str.13, i32 noundef %call.i, i32 noundef 28, i32 noundef %32, i32 noundef %and3.i) #15
  br label %do.body18

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %call13.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rr.i, i32 noundef 24) #16
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %10, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %34)
  %cmp14.not.i = icmp eq i32 %call13.i, %34
  br i1 %cmp14.not.i, label %if.end27.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i145.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i145.i to ptr
  %task22.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task22.i, align 8
  %pid.i146.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid.i146.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid.i146.i, align 8
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %40, ptr noundef nonnull @.str.13, i32 noundef %and3.i, i32 noundef %34, i32 noundef %call13.i) #15
  br label %do.body18

if.end27.i:                                       ; preds = %if.end12.i
  %41 = ptrtoint ptr %rr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6533, i16 %42)
  %cmp29.not.i = icmp eq i16 %42, 6533
  br i1 %cmp29.not.i, label %lor.lhs.false31.i, label %if.end27.i.do.end44.i_crit_edge

if.end27.i.do.end44.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44.i

lor.lhs.false31.i:                                ; preds = %if.end27.i
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8183, i16 %44)
  %cmp34.not.i = icmp eq i16 %44, -8183
  br i1 %cmp34.not.i, label %lor.lhs.false36.i, label %lor.lhs.false31.i.do.end44.i_crit_edge

lor.lhs.false31.i.do.end44.i_crit_edge:           ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44.i

lor.lhs.false36.i:                                ; preds = %lor.lhs.false31.i
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %46)
  %cmp39.not.i = icmp eq i32 %46, 28
  br i1 %cmp39.not.i, label %if.end58.i, label %lor.lhs.false36.i.do.end44.i_crit_edge

lor.lhs.false36.i.do.end44.i_crit_edge:           ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44.i

do.end44.i:                                       ; preds = %lor.lhs.false36.i.do.end44.i_crit_edge, %lor.lhs.false31.i.do.end44.i_crit_edge, %if.end27.i.do.end44.i_crit_edge
  %47 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i147.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i147.i to ptr
  %task47.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task47.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task47.i, align 8
  %pid.i148.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 68
  %51 = ptrtoint ptr %pid.i148.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pid.i148.i, align 8
  %conv51.i = zext i16 %42 to i32
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %5, align 2
  %conv54.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %6, align 2
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %52, ptr noundef nonnull @.str.13, i32 noundef %and3.i, i32 noundef %conv51.i, i32 noundef 6533, i32 noundef %conv54.i, i32 noundef 57353, i32 noundef %56, i32 noundef 28) #15
  br label %do.body18

if.end58.i:                                       ; preds = %lor.lhs.false36.i
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %7, align 2
  %59 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 6
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %59, align 4
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %8, align 2
  %63 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 7
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %63, align 4
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %9, align 2
  %xseqno62.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 5
  %67 = ptrtoint ptr %xseqno62.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %xseqno62.i, align 4
  %68 = ptrtoint ptr %highest_xseqno.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %highest_xseqno.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %69)
  %cmp64.i = icmp ugt i32 %66, %69
  br i1 %cmp64.i, label %if.then66.i, label %if.end58.i.if.end70.i_crit_edge

if.end58.i.if.end70.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  %and68.i = and i32 %66, -2
  %70 = ptrtoint ptr %highest_xseqno.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and68.i, ptr %highest_xseqno.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end58.i.if.end70.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #11
  br label %complete.i

complete.i:                                       ; preds = %if.end70.i, %if.then15.complete.i_crit_edge
  %71 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %71)
  %raw.0149.i = load ptr, ptr %node, align 4
  %cmp73.not150.i = icmp eq ptr %raw.0149.i, %ref.0310
  br i1 %cmp73.not150.i, label %complete.i.verify_xattr_ref.exit_crit_edge, label %complete.i.for.body.i_crit_edge

complete.i.for.body.i_crit_edge:                  ; preds = %complete.i
  br label %for.body.i

complete.i.verify_xattr_ref.exit_crit_edge:       ; preds = %complete.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %verify_xattr_ref.exit

for.body.i:                                       ; preds = %if.end89.i.for.body.i_crit_edge, %complete.i.for.body.i_crit_edge
  %raw.0151.i = phi ptr [ %raw.0.i, %if.end89.i.for.body.i_crit_edge ], [ %raw.0149.i, %complete.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %blocks.i, align 4
  %flash_offset75.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0151.i, i32 0, i32 1
  %74 = ptrtoint ptr %flash_offset75.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flash_offset75.i, align 4
  %and76.i = and i32 %75, -4
  %76 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sector_size.i, align 4
  %div.i = udiv i32 %and76.i, %77
  %arrayidx.i = getelementptr %struct.jffs2_eraseblock, ptr %73, i32 %div.i
  %call77.i = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx.i, ptr noundef %raw.0151.i) #11
  %78 = ptrtoint ptr %flash_offset75.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flash_offset75.i, align 4
  %and80.i = and i32 %79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %cmp81.i = icmp eq i32 %and80.i, 0
  br i1 %cmp81.i, label %if.then83.i, label %for.body.i.if.end89.i_crit_edge

for.body.i.if.end89.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.then83.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %call77.i, 3
  %and78.i = and i32 %add.i, -4
  %80 = ptrtoint ptr %unchecked_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %unchecked_size.i, align 4
  %sub.i = sub i32 %81, %and78.i
  store i32 %sub.i, ptr %unchecked_size.i, align 4
  %82 = ptrtoint ptr %used_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %used_size.i, align 4
  %add84.i = add i32 %83, %and78.i
  store i32 %add84.i, ptr %used_size.i, align 4
  %unchecked_size85.i = getelementptr %struct.jffs2_eraseblock, ptr %73, i32 %div.i, i32 3
  %84 = ptrtoint ptr %unchecked_size85.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %unchecked_size85.i, align 4
  %sub86.i = sub i32 %85, %and78.i
  store i32 %sub86.i, ptr %unchecked_size85.i, align 4
  %used_size87.i = getelementptr %struct.jffs2_eraseblock, ptr %73, i32 %div.i, i32 4
  %86 = ptrtoint ptr %used_size87.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %used_size87.i, align 4
  %add88.i = add i32 %87, %and78.i
  store i32 %add88.i, ptr %used_size87.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then83.i, %for.body.i.if.end89.i_crit_edge
  %88 = ptrtoint ptr %flash_offset75.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flash_offset75.i, align 4
  %and91.i = and i32 %89, -4
  %90 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %node, align 4
  %cmp93.i = icmp eq ptr %91, %raw.0151.i
  %cond95.i = select i1 %cmp93.i, i32 2, i32 3
  %or.i = or i32 %cond95.i, %and91.i
  store i32 %or.i, ptr %flash_offset75.i, align 4
  %92 = ptrtoint ptr %raw.0151.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %raw.0.i = load ptr, ptr %raw.0151.i, align 4
  %cmp73.not.i = icmp eq ptr %raw.0.i, %ref.0310
  br i1 %cmp73.not.i, label %if.end89.i.verify_xattr_ref.exit_crit_edge, label %if.end89.i.for.body.i_crit_edge

if.end89.i.for.body.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end89.i.verify_xattr_ref.exit_crit_edge:       ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %verify_xattr_ref.exit

verify_xattr_ref.exit:                            ; preds = %if.end89.i.verify_xattr_ref.exit_crit_edge, %complete.i.verify_xattr_ref.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rr.i) #11
  br label %if.end41

do.body18:                                        ; preds = %do.end44.i, %do.end19.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rr.i) #11
  %93 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %node, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %cmp20.not = icmp eq ptr %96, %ref.0310
  br i1 %cmp20.not, label %do.end36, label %do.body28, !prof !96

do.body28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #11, !srcloc !97
  unreachable

do.end36:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %94, align 4
  %98 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %node, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %99) #11
  call void @jffs2_free_xattr_ref(ptr noundef nonnull %ref.0310) #11
  br label %cleanup

if.end41:                                         ; preds = %verify_xattr_ref.exit, %for.body12.if.end41_crit_edge
  %100 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 6
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %103 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 7
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %xor = xor i32 %105, %102
  %rem = and i32 %xor, 127
  %arrayidx42 = getelementptr [128 x ptr], ptr %xref_tmphash, i32 0, i32 %rem
  %106 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %106)
  %tmp.0305 = load ptr, ptr %arrayidx42, align 4
  %tobool44.not306 = icmp eq ptr %tmp.0305, null
  br i1 %tobool44.not306, label %if.end41.if.else70_crit_edge, label %if.end41.for.body45_crit_edge

if.end41.for.body45_crit_edge:                    ; preds = %if.end41
  br label %for.body45

if.end41.if.else70_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else70

for.body45:                                       ; preds = %for.inc50.for.body45_crit_edge, %if.end41.for.body45_crit_edge
  %tmp.0307 = phi ptr [ %tmp.0, %for.inc50.for.body45_crit_edge ], [ %tmp.0305, %if.end41.for.body45_crit_edge ]
  %107 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.0307, i32 0, i32 6
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %102)
  %cmp46 = icmp eq i32 %109, %102
  br i1 %cmp46, label %land.lhs.true, label %for.body45.for.inc50_crit_edge

for.body45.for.inc50_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc50

land.lhs.true:                                    ; preds = %for.body45
  %110 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.0307, i32 0, i32 7
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %105)
  %cmp47 = icmp eq i32 %112, %105
  br i1 %cmp47, label %if.then54.critedge, label %land.lhs.true.for.inc50_crit_edge

land.lhs.true.for.inc50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc50

for.inc50:                                        ; preds = %land.lhs.true.for.inc50_crit_edge, %for.body45.for.inc50_crit_edge
  %next51 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.0307, i32 0, i32 8
  %113 = ptrtoint ptr %next51 to i32
  call void @__asan_load4_noabort(i32 %113)
  %tmp.0 = load ptr, ptr %next51, align 4
  %tobool44.not = icmp eq ptr %tmp.0, null
  br i1 %tobool44.not, label %for.inc50.if.else70_crit_edge, label %for.inc50.for.body45_crit_edge

for.inc50.for.body45_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body45

for.inc50.if.else70_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else70

if.then54.critedge:                               ; preds = %land.lhs.true
  %114 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %node, align 4
  %xseqno = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0310, i32 0, i32 5
  %116 = ptrtoint ptr %xseqno to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %xseqno, align 4
  %xseqno56 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.0307, i32 0, i32 5
  %118 = ptrtoint ptr %xseqno56 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %xseqno56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp57 = icmp ugt i32 %117, %119
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.then54.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %xseqno56 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %117, ptr %xseqno56, align 4
  %node61 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.0307, i32 0, i32 1
  %121 = ptrtoint ptr %node61 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %node61, align 4
  %123 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %115, align 4
  br label %if.end69

if.else:                                          ; preds = %if.then54.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %node64 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.0307, i32 0, i32 1
  %124 = ptrtoint ptr %node64 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %node64, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %115, align 4
  %129 = load ptr, ptr %node64, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then58
  %.sink = phi ptr [ %129, %if.else ], [ %node61, %if.then58 ]
  %130 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %115, ptr %.sink, align 4
  call void @jffs2_free_xattr_ref(ptr noundef nonnull %ref.0310) #11
  br label %cleanup

if.else70:                                        ; preds = %for.inc50.if.else70_crit_edge, %if.end41.if.else70_crit_edge
  %131 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx42, align 4
  %133 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %next, align 4
  store ptr %ref.0310, ptr %arrayidx42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.end69, %do.end36
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %cleanup.for.end76_crit_edge, label %cleanup.for.body12_crit_edge

cleanup.for.body12_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

cleanup.for.end76_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end76

for.end76:                                        ; preds = %cleanup.for.end76_crit_edge, %for.body.preheader.for.end76_crit_edge
  %134 = ptrtoint ptr %xref_temp to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %xref_temp, align 4
  %xref_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 67
  br label %for.body80

for.cond115.preheader:                            ; preds = %for.inc112
  %erase_completion_lock.i277 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  %xattr_unchecked151 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 65
  br label %for.body117

for.body80:                                       ; preds = %for.inc112.for.body80_crit_edge, %for.end76
  %i.1329 = phi i32 [ 0, %for.end76 ], [ %inc113, %for.inc112.for.body80_crit_edge ]
  %xref_count.0328 = phi i32 [ 0, %for.end76 ], [ %xref_count.1.lcssa, %for.inc112.for.body80_crit_edge ]
  %xref_dead_count.0327 = phi i32 [ 0, %for.end76 ], [ %xref_dead_count.1.lcssa, %for.inc112.for.body80_crit_edge ]
  %xref_orphan_count.0326 = phi i32 [ 0, %for.end76 ], [ %xref_orphan_count.1.lcssa, %for.inc112.for.body80_crit_edge ]
  %arrayidx81 = getelementptr [128 x ptr], ptr %xref_tmphash, i32 0, i32 %i.1329
  %135 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx81, align 4
  %tobool83.not318 = icmp eq ptr %136, null
  br i1 %tobool83.not318, label %for.body80.for.inc112_crit_edge, label %for.body80.for.body84_crit_edge

for.body80.for.body84_crit_edge:                  ; preds = %for.body80
  br label %for.body84

for.body80.for.inc112_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc112

for.body84:                                       ; preds = %for.inc110.for.body84_crit_edge, %for.body80.for.body84_crit_edge
  %ref.1322 = phi ptr [ %138, %for.inc110.for.body84_crit_edge ], [ %136, %for.body80.for.body84_crit_edge ]
  %xref_count.1321 = phi i32 [ %inc85, %for.inc110.for.body84_crit_edge ], [ %xref_count.0328, %for.body80.for.body84_crit_edge ]
  %xref_dead_count.1320 = phi i32 [ %xref_dead_count.2, %for.inc110.for.body84_crit_edge ], [ %xref_dead_count.0327, %for.body80.for.body84_crit_edge ]
  %xref_orphan_count.1319 = phi i32 [ %xref_orphan_count.2, %for.inc110.for.body84_crit_edge ], [ %xref_orphan_count.0326, %for.body80.for.body84_crit_edge ]
  %inc85 = add i32 %xref_count.1321, 1
  %next86 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.1322, i32 0, i32 8
  %137 = ptrtoint ptr %next86 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %next86, align 4
  %xseqno.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.1322, i32 0, i32 5
  %139 = ptrtoint ptr %xseqno.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %xseqno.i, align 4
  %and.i267 = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267)
  %tobool88.not = icmp eq i32 %and.i267, 0
  br i1 %tobool88.not, label %if.end93, label %if.then89

if.then89:                                        ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %xref_dead_list to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %xref_dead_list, align 4
  %143 = ptrtoint ptr %next86 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %next86, align 4
  store ptr %ref.1322, ptr %xref_dead_list, align 4
  %inc92 = add i32 %xref_dead_count.1320, 1
  br label %for.inc110

if.end93:                                         ; preds = %for.body84
  %144 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.1322, i32 0, i32 7
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags, align 4
  %and.i268 = and i32 %148, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i269 = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i269, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 731, 0\0A.popsection", ""() #11, !srcloc !98
  unreachable

do.end9.i:                                        ; preds = %if.end93
  %rem.i = urem i32 %146, 57
  %arrayidx.i270 = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %rem.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i272.for.cond.i_crit_edge, %do.end9.i
  %.pn.in.i = phi ptr [ %arrayidx.i270, %do.end9.i ], [ %.pn.i, %for.body.i272.for.cond.i_crit_edge ]
  %149 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i271 = icmp eq ptr %.pn.i, %arrayidx.i270
  br i1 %cmp.not.i271, label %for.cond.i.jffs2_find_xattr_datum.exit_crit_edge, label %for.body.i272

for.cond.i.jffs2_find_xattr_datum.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %jffs2_find_xattr_datum.exit

for.body.i272:                                    ; preds = %for.cond.i
  %xid14.i = getelementptr i8, ptr %.pn.i, i32 12
  %150 = ptrtoint ptr %xid14.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %xid14.i, align 4
  %cmp15.i = icmp eq i32 %151, %146
  br i1 %cmp15.i, label %cleanup.split.loop.exit31.i, label %for.body.i272.for.cond.i_crit_edge

for.body.i272.for.cond.i_crit_edge:               ; preds = %for.body.i272
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

cleanup.split.loop.exit31.i:                      ; preds = %for.body.i272
  call void @__sanitizer_cov_trace_pc() #13
  %xd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  br label %jffs2_find_xattr_datum.exit

jffs2_find_xattr_datum.exit:                      ; preds = %cleanup.split.loop.exit31.i, %for.cond.i.jffs2_find_xattr_datum.exit_crit_edge
  %retval.0.i273 = phi ptr [ %xd.0.le.i, %cleanup.split.loop.exit31.i ], [ null, %for.cond.i.jffs2_find_xattr_datum.exit_crit_edge ]
  %152 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.1322, i32 0, i32 6
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %call95 = call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %154) #11
  %tobool96.not = icmp eq ptr %retval.0.i273, null
  %tobool97.not = icmp eq ptr %call95, null
  %or.cond = select i1 %tobool96.not, i1 true, i1 %tobool97.not
  br i1 %or.cond, label %jffs2_find_xattr_datum.exit.if.then100_crit_edge, label %lor.lhs.false98

jffs2_find_xattr_datum.exit.if.then100_crit_edge: ; preds = %jffs2_find_xattr_datum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then100

lor.lhs.false98:                                  ; preds = %jffs2_find_xattr_datum.exit
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call95, i32 0, i32 8
  %155 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pino_nlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool99.not = icmp eq i32 %156, 0
  br i1 %tobool99.not, label %lor.lhs.false98.if.then100_crit_edge, label %if.end107

lor.lhs.false98.if.then100_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then100

if.then100:                                       ; preds = %lor.lhs.false98.if.then100_crit_edge, %jffs2_find_xattr_datum.exit.if.then100_crit_edge
  %157 = ptrtoint ptr %xseqno.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %xseqno.i, align 4
  %or = or i32 %158, 1
  store i32 %or, ptr %xseqno.i, align 4
  %159 = ptrtoint ptr %xref_dead_list to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %xref_dead_list, align 4
  %161 = ptrtoint ptr %next86 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %next86, align 4
  store ptr %ref.1322, ptr %xref_dead_list, align 4
  %inc106 = add i32 %xref_orphan_count.1319, 1
  br label %for.inc110

if.end107:                                        ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #13
  %162 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %retval.0.i273, ptr %144, align 4
  %163 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call95, ptr %152, align 4
  %refcnt = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %retval.0.i273, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %164 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !99
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call95, i32 0, i32 7
  %165 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %xref, align 4
  %167 = ptrtoint ptr %next86 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %166, ptr %next86, align 4
  store ptr %ref.1322, ptr %xref, align 4
  br label %for.inc110

for.inc110:                                       ; preds = %if.end107, %if.then100, %if.then89
  %xref_orphan_count.2 = phi i32 [ %xref_orphan_count.1319, %if.then89 ], [ %xref_orphan_count.1319, %if.end107 ], [ %inc106, %if.then100 ]
  %xref_dead_count.2 = phi i32 [ %inc92, %if.then89 ], [ %xref_dead_count.1320, %if.end107 ], [ %xref_dead_count.1320, %if.then100 ]
  %tobool83.not = icmp eq ptr %138, null
  br i1 %tobool83.not, label %for.inc110.for.inc112_crit_edge, label %for.inc110.for.body84_crit_edge

for.inc110.for.body84_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body84

for.inc110.for.inc112_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc112

for.inc112:                                       ; preds = %for.inc110.for.inc112_crit_edge, %for.body80.for.inc112_crit_edge
  %xref_orphan_count.1.lcssa = phi i32 [ %xref_orphan_count.0326, %for.body80.for.inc112_crit_edge ], [ %xref_orphan_count.2, %for.inc110.for.inc112_crit_edge ]
  %xref_dead_count.1.lcssa = phi i32 [ %xref_dead_count.0327, %for.body80.for.inc112_crit_edge ], [ %xref_dead_count.2, %for.inc110.for.inc112_crit_edge ]
  %xref_count.1.lcssa = phi i32 [ %xref_count.0328, %for.body80.for.inc112_crit_edge ], [ %inc85, %for.inc110.for.inc112_crit_edge ]
  %inc113 = add nuw nsw i32 %i.1329, 1
  %exitcond.not = icmp eq i32 %inc113, 128
  br i1 %exitcond.not, label %for.cond115.preheader, label %for.inc112.for.body80_crit_edge

for.inc112.for.body80_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body80

for.body117:                                      ; preds = %for.inc161.for.body117_crit_edge, %for.cond115.preheader
  %i.2345 = phi i32 [ 0, %for.cond115.preheader ], [ %inc162, %for.inc161.for.body117_crit_edge ]
  %xdatum_count.0344 = phi i32 [ 0, %for.cond115.preheader ], [ %xdatum_count.1.lcssa, %for.inc161.for.body117_crit_edge ]
  %xdatum_unchecked_count.0343 = phi i32 [ 0, %for.cond115.preheader ], [ %xdatum_unchecked_count.1.lcssa, %for.inc161.for.body117_crit_edge ]
  %xdatum_orphan_count.0342 = phi i32 [ 0, %for.cond115.preheader ], [ %xdatum_orphan_count.1.lcssa, %for.inc161.for.body117_crit_edge ]
  %arrayidx118 = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %i.2345
  %168 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx118, align 4
  %cmp129.not332 = icmp eq ptr %169, %arrayidx118
  br i1 %cmp129.not332, label %for.body117.for.inc161_crit_edge, label %for.body117.for.body132_crit_edge

for.body117.for.body132_crit_edge:                ; preds = %for.body117
  br label %for.body132

for.body117.for.inc161_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc161

for.body132:                                      ; preds = %for.inc154.for.body132_crit_edge, %for.body117.for.body132_crit_edge
  %.pn.in336 = phi ptr [ %.pn338, %for.inc154.for.body132_crit_edge ], [ %169, %for.body117.for.body132_crit_edge ]
  %xdatum_count.1335 = phi i32 [ %inc133, %for.inc154.for.body132_crit_edge ], [ %xdatum_count.0344, %for.body117.for.body132_crit_edge ]
  %xdatum_unchecked_count.1334 = phi i32 [ %xdatum_unchecked_count.2, %for.inc154.for.body132_crit_edge ], [ %xdatum_unchecked_count.0343, %for.body117.for.body132_crit_edge ]
  %xdatum_orphan_count.1333 = phi i32 [ %xdatum_orphan_count.2, %for.inc154.for.body132_crit_edge ], [ %xdatum_orphan_count.0342, %for.body117.for.body132_crit_edge ]
  %xd.0337 = getelementptr i8, ptr %.pn.in336, i32 -12
  %170 = ptrtoint ptr %.pn.in336 to i32
  call void @__asan_load4_noabort(i32 %170)
  %.pn338 = load ptr, ptr %.pn.in336, align 4
  %inc133 = add i32 %xdatum_count.1335, 1
  %call.i.i274 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in336) #11
  br i1 %call.i.i274, label %if.end.i.i, label %for.body132.list_del_init.exit_crit_edge

for.body132.list_del_init.exit_crit_edge:         ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in336, i32 0, i32 1
  %171 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i.i, align 4
  %173 = ptrtoint ptr %.pn.in336 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %.pn.in336, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev1.i.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %172, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body132.list_del_init.exit_crit_edge
  %177 = ptrtoint ptr %.pn.in336 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %.pn.in336, ptr %.pn.in336, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in336, i32 0, i32 1
  %178 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %.pn.in336, ptr %prev.i3.i, align 4
  %refcnt135 = getelementptr i8, ptr %.pn.in336, i32 8
  %call.i.i266 = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt135, i32 noundef 4) #11
  %179 = ptrtoint ptr %refcnt135 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %refcnt135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool137.not = icmp eq i32 %180, 0
  br i1 %tobool137.not, label %if.then138, label %if.end145

if.then138:                                       ; preds = %list_del_init.exit
  %flags140 = getelementptr i8, ptr %.pn.in336, i32 -3
  %181 = ptrtoint ptr %flags140 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %flags140, align 1
  %183 = or i8 %182, 64
  store i8 %183, ptr %flags140, align 1
  %184 = ptrtoint ptr %xattr_unchecked151 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %xattr_unchecked151, align 4
  %call.i.i275 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in336, ptr noundef %xattr_unchecked151, ptr noundef %185) #11
  br i1 %call.i.i275, label %if.end.i.i276, label %if.then138.list_add.exit_crit_edge

if.then138.list_add.exit_crit_edge:               ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i276:                                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %.pn.in336, ptr %prev1.i.i, align 4
  %187 = ptrtoint ptr %.pn.in336 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %185, ptr %.pn.in336, align 4
  %188 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %xattr_unchecked151, ptr %prev.i3.i, align 4
  %189 = ptrtoint ptr %xattr_unchecked151 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %.pn.in336, ptr %xattr_unchecked151, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i276, %if.then138.list_add.exit_crit_edge
  %inc144 = add i32 %xdatum_orphan_count.1333, 1
  br label %for.inc154

if.end145:                                        ; preds = %list_del_init.exit
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i277) #11
  %node.i278 = getelementptr i8, ptr %.pn.in336, i32 -8
  br label %for.cond.i281

for.cond.i281:                                    ; preds = %for.body.i284.for.cond.i281_crit_edge, %if.end145
  %raw.0.in.i = phi ptr [ %node.i278, %if.end145 ], [ %raw.0.i279, %for.body.i284.for.cond.i281_crit_edge ]
  %190 = ptrtoint ptr %raw.0.in.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %raw.0.i279 = load ptr, ptr %raw.0.in.i, align 4
  %cmp.not.i280 = icmp eq ptr %raw.0.i279, %xd.0337
  br i1 %cmp.not.i280, label %is_xattr_datum_unchecked.exit.thread, label %for.body.i284

is_xattr_datum_unchecked.exit.thread:             ; preds = %for.cond.i281
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i277) #11
  br label %for.inc154

for.body.i284:                                    ; preds = %for.cond.i281
  %flash_offset.i282 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0.i279, i32 0, i32 1
  %191 = ptrtoint ptr %flash_offset.i282 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flash_offset.i282, align 4
  %and.i283 = and i32 %192, 3
  %cmp1.i = icmp eq i32 %and.i283, 0
  br i1 %cmp1.i, label %if.then148, label %for.body.i284.for.cond.i281_crit_edge

for.body.i284.for.cond.i281_crit_edge:            ; preds = %for.body.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i281

if.then148:                                       ; preds = %for.body.i284
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i277) #11
  %193 = ptrtoint ptr %xattr_unchecked151 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %xattr_unchecked151, align 4
  %call.i.i286 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in336, ptr noundef %xattr_unchecked151, ptr noundef %194) #11
  br i1 %call.i.i286, label %if.end.i.i289, label %if.then148.list_add.exit290_crit_edge

if.then148.list_add.exit290_crit_edge:            ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit290

if.end.i.i289:                                    ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i287 = getelementptr inbounds %struct.list_head, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %prev1.i.i287 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %.pn.in336, ptr %prev1.i.i287, align 4
  %196 = ptrtoint ptr %.pn.in336 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %194, ptr %.pn.in336, align 4
  %197 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %xattr_unchecked151, ptr %prev.i3.i, align 4
  %198 = ptrtoint ptr %xattr_unchecked151 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %.pn.in336, ptr %xattr_unchecked151, align 4
  br label %list_add.exit290

list_add.exit290:                                 ; preds = %if.end.i.i289, %if.then148.list_add.exit290_crit_edge
  %inc152 = add i32 %xdatum_unchecked_count.1334, 1
  br label %for.inc154

for.inc154:                                       ; preds = %list_add.exit290, %is_xattr_datum_unchecked.exit.thread, %list_add.exit
  %xdatum_orphan_count.2 = phi i32 [ %xdatum_orphan_count.1333, %list_add.exit290 ], [ %inc144, %list_add.exit ], [ %xdatum_orphan_count.1333, %is_xattr_datum_unchecked.exit.thread ]
  %xdatum_unchecked_count.2 = phi i32 [ %inc152, %list_add.exit290 ], [ %xdatum_unchecked_count.1334, %list_add.exit ], [ %xdatum_unchecked_count.1334, %is_xattr_datum_unchecked.exit.thread ]
  %cmp129.not = icmp eq ptr %.pn338, %arrayidx118
  br i1 %cmp129.not, label %for.inc154.for.inc161_crit_edge, label %for.inc154.for.body132_crit_edge

for.inc154.for.body132_crit_edge:                 ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body132

for.inc154.for.inc161_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc161

for.inc161:                                       ; preds = %for.inc154.for.inc161_crit_edge, %for.body117.for.inc161_crit_edge
  %xdatum_orphan_count.1.lcssa = phi i32 [ %xdatum_orphan_count.0342, %for.body117.for.inc161_crit_edge ], [ %xdatum_orphan_count.2, %for.inc154.for.inc161_crit_edge ]
  %xdatum_unchecked_count.1.lcssa = phi i32 [ %xdatum_unchecked_count.0343, %for.body117.for.inc161_crit_edge ], [ %xdatum_unchecked_count.2, %for.inc154.for.inc161_crit_edge ]
  %xdatum_count.1.lcssa = phi i32 [ %xdatum_count.0344, %for.body117.for.inc161_crit_edge ], [ %inc133, %for.inc154.for.inc161_crit_edge ]
  %inc162 = add nuw nsw i32 %i.2345, 1
  %exitcond349.not = icmp eq i32 %inc162, 57
  br i1 %exitcond349.not, label %do.end166, label %for.inc161.for.body117_crit_edge

for.inc161.for.body117_crit_edge:                 ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body117

do.end166:                                        ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #13
  %199 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i291 = and i32 %199, -16384
  %200 = inttoptr i32 %and.i291 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 68
  %203 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pid.i, align 8
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %204, ptr noundef nonnull @.str.2, i32 noundef %xdatum_count.1.lcssa, i32 noundef %xdatum_unchecked_count.1.lcssa, i32 noundef %xdatum_orphan_count.1.lcssa, i32 noundef %xref_count.1.lcssa, i32 noundef %xref_dead_count.1.lcssa, i32 noundef %xref_orphan_count.1.lcssa) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %xref_tmphash) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_get_ino_cache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_setup_xattr_datum(ptr noundef %c, i32 noundef %xid, i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 731, 0\0A.popsection", ""() #11, !srcloc !98
  unreachable

do.end9.i:                                        ; preds = %entry
  %rem.i = urem i32 %xid, 57
  %arrayidx.i = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %rem.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9.i
  %.pn.in.i = phi ptr [ %arrayidx.i, %do.end9.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %xid14.i = getelementptr i8, ptr %.pn.i, i32 12
  %3 = ptrtoint ptr %xid14.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xid14.i, align 4
  %cmp15.i = icmp eq i32 %4, %xid
  br i1 %cmp15.i, label %jffs2_find_xattr_datum.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

jffs2_find_xattr_datum.exit:                      ; preds = %for.body.i
  %xd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %xd.0.le.i, null
  br i1 %tobool.not, label %jffs2_find_xattr_datum.exit.if.then_crit_edge, label %jffs2_find_xattr_datum.exit.cleanup_crit_edge

jffs2_find_xattr_datum.exit.cleanup_crit_edge:    ; preds = %jffs2_find_xattr_datum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

jffs2_find_xattr_datum.exit.if.then_crit_edge:    ; preds = %jffs2_find_xattr_datum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %jffs2_find_xattr_datum.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call1 = tail call ptr @jffs2_alloc_xattr_datum() #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %xid5 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call1, i32 0, i32 7
  %5 = ptrtoint ptr %xid5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %xid, ptr %xid5, align 4
  %version6 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call1, i32 0, i32 8
  %6 = ptrtoint ptr %version6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %version, ptr %version6, align 4
  %highest_xid = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 62
  %7 = ptrtoint ptr %highest_xid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %highest_xid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %xid)
  %cmp = icmp ult i32 %8, %xid
  br i1 %cmp, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %highest_xid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xid, ptr %highest_xid, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %xindex = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call1, i32 0, i32 5
  %prev.i = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %rem.i, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xindex, ptr noundef %11, ptr noundef %arrayidx.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %xindex, ptr %prev.i, align 4
  %13 = ptrtoint ptr %xindex to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.i, ptr %xindex, align 4
  %prev3.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %xindex, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end11.cleanup_crit_edge, %if.then.cleanup_crit_edge, %jffs2_find_xattr_datum.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %xd.0.le.i, %jffs2_find_xattr_datum.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ], [ %call1, %if.end11.cleanup_crit_edge ], [ %call1, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_xattr_datum() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_listxattr(ptr noundef %dentry, ptr noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %inocache = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inocache, align 8
  %call1 = tail call fastcc i32 @check_xattr_ref_inode(ptr noundef %5, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %5, i32 0, i32 69
  tail call void @down_read(ptr noundef %xattr_sem) #11
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %8)
  %ref.0160174 = load ptr, ptr %xref, align 4
  %tobool6.not161175 = icmp eq ptr %ref.0160174, null
  br i1 %tobool6.not161175, label %if.end.if.then76_crit_edge, label %if.end.do.body.lr.ph_crit_edge

if.end.do.body.lr.ph_crit_edge:                   ; preds = %if.end
  br label %do.body.lr.ph

if.end.if.then76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

do.body.lr.ph:                                    ; preds = %retry4.backedge.do.body.lr.ph_crit_edge, %if.end.do.body.lr.ph_crit_edge
  %ref.0160178 = phi ptr [ %ref.0160, %retry4.backedge.do.body.lr.ph_crit_edge ], [ %ref.0160174, %if.end.do.body.lr.ph_crit_edge ]
  %tobool75.not177 = phi i1 [ false, %retry4.backedge.do.body.lr.ph_crit_edge ], [ true, %if.end.do.body.lr.ph_crit_edge ]
  %buffer.addr.0176 = phi ptr [ %buffer.addr.1162, %retry4.backedge.do.body.lr.ph_crit_edge ], [ %buffer, %if.end.do.body.lr.ph_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %ref.0167 = phi ptr [ %ref.0160178, %do.body.lr.ph ], [ %ref.0, %for.inc.do.body_crit_edge ]
  %len.0165 = phi i32 [ 0, %do.body.lr.ph ], [ %len.1, %for.inc.do.body_crit_edge ]
  %pref.0164 = phi ptr [ %xref, %do.body.lr.ph ], [ %next73, %for.inc.do.body_crit_edge ]
  %buffer.addr.1162 = phi ptr [ %buffer.addr.0176, %do.body.lr.ph ], [ %buffer.addr.3, %for.inc.do.body_crit_edge ]
  %9 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0167, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp.not = icmp eq ptr %11, %7
  br i1 %cmp.not, label %do.end20, label %do.body14, !prof !96

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 982, 0\0A.popsection", ""() #11, !srcloc !100
  unreachable

do.end20:                                         ; preds = %do.body
  %12 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0167, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %xname = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xname, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.then22, label %do.end20.if.end48_crit_edge

do.end20.if.end48_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then22:                                        ; preds = %do.end20
  br i1 %tobool75.not177, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_read(ptr noundef %xattr_sem) #11
  tail call void @down_write(ptr noundef %xattr_sem) #11
  br label %retry4.backedge

retry4.backedge:                                  ; preds = %if.then35, %if.then24
  %17 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %17)
  %ref.0160 = load ptr, ptr %xref, align 4
  %tobool6.not161 = icmp eq ptr %ref.0160, null
  br i1 %tobool6.not161, label %retry4.backedge.if.else78_crit_edge, label %retry4.backedge.do.body.lr.ph_crit_edge

retry4.backedge.do.body.lr.ph_crit_edge:          ; preds = %retry4.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.lr.ph

retry4.backedge.if.else78_crit_edge:              ; preds = %retry4.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

if.else:                                          ; preds = %if.then22
  %call27 = tail call fastcc i32 @load_xattr_datum(ptr noundef %5, ptr noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp sgt i32 %call27, 0
  br i1 %cmp28, label %if.then35, label %if.else36, !prof !93

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0167, i32 0, i32 8
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next, align 4
  %20 = ptrtoint ptr %pref.0164 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pref.0164, align 4
  tail call fastcc void @delete_xattr_ref(ptr noundef %5, ptr noundef nonnull %ref.0167)
  br label %retry4.backedge

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp37 = icmp slt i32 %call27, 0
  br i1 %cmp37, label %if.else36.if.else78_crit_edge, label %if.else36.if.end48_crit_edge, !prof !93

if.else36.if.end48_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.else36.if.else78_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

if.end48:                                         ; preds = %if.else36.if.end48_crit_edge, %do.end20.if.end48_crit_edge
  %xprefix = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %14, i32 0, i32 4
  %21 = ptrtoint ptr %xprefix to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %xprefix, align 2
  %switch.tableidx = add i16 %22, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %23 = icmp ult i16 %switch.tableidx, 5
  br i1 %23, label %switch.lookup, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

switch.lookup:                                    ; preds = %if.end48
  %24 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.jffs2_listxattr, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %list = getelementptr inbounds %struct.xattr_handler, ptr %switch.load, i32 0, i32 3
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %tobool51.not = icmp eq ptr %27, null
  br i1 %tobool51.not, label %switch.lookup.if.end55_crit_edge, label %land.lhs.true

switch.lookup.if.end55_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true:                                    ; preds = %switch.lookup
  %call53 = tail call zeroext i1 %27(ptr noundef %dentry) #11
  br i1 %call53, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %switch.lookup.if.end55_crit_edge
  %prefix56 = getelementptr inbounds %struct.xattr_handler, ptr %switch.load, i32 0, i32 1
  %28 = ptrtoint ptr %prefix56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prefix56, align 4
  %tobool57.not = icmp eq ptr %29, null
  br i1 %tobool57.not, label %cond.false, label %if.end55.cond.end_crit_edge

if.end55.cond.end_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %switch.load to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %switch.load, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end55.cond.end_crit_edge
  %cond = phi ptr [ %31, %cond.false ], [ %29, %if.end55.cond.end_crit_edge ]
  %call58 = tail call i32 @strlen(ptr noundef %cond) #14
  %name_len = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %14, i32 0, i32 12
  %32 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %name_len, align 4
  %add = add i32 %call58, 1
  %add59 = add i32 %add, %33
  %tobool60.not = icmp eq ptr %buffer.addr.1162, null
  br i1 %tobool60.not, label %cond.end.if.end71_crit_edge, label %if.then61

cond.end.if.end71_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then61:                                        ; preds = %cond.end
  %sub = sub i32 %size, %len.0165
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %sub)
  %cmp62 = icmp ugt i32 %add59, %sub
  br i1 %cmp62, label %if.then61.out_crit_edge, label %if.end65

if.then61.out_crit_edge:                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end65:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %34 = call ptr @memcpy(ptr %buffer.addr.1162, ptr %cond, i32 %call58)
  %add.ptr66 = getelementptr i8, ptr %buffer.addr.1162, i32 %call58
  %35 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xname, align 4
  %37 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %name_len, align 4
  %39 = call ptr @memcpy(ptr %add.ptr66, ptr %36, i32 %38)
  %40 = load i32, ptr %name_len, align 4
  %add.ptr70 = getelementptr i8, ptr %add.ptr66, i32 %40
  %incdec.ptr = getelementptr i8, ptr %add.ptr70, i32 1
  %41 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %add.ptr70, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.end65, %cond.end.if.end71_crit_edge
  %buffer.addr.2 = phi ptr [ %incdec.ptr, %if.end65 ], [ null, %cond.end.if.end71_crit_edge ]
  %add72 = add i32 %add59, %len.0165
  br label %for.inc

for.inc:                                          ; preds = %if.end71, %land.lhs.true.for.inc_crit_edge, %if.end48.for.inc_crit_edge
  %buffer.addr.3 = phi ptr [ %buffer.addr.2, %if.end71 ], [ %buffer.addr.1162, %land.lhs.true.for.inc_crit_edge ], [ %buffer.addr.1162, %if.end48.for.inc_crit_edge ]
  %len.1 = phi i32 [ %add72, %if.end71 ], [ %len.0165, %land.lhs.true.for.inc_crit_edge ], [ %len.0165, %if.end48.for.inc_crit_edge ]
  %next73 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0167, i32 0, i32 8
  %42 = ptrtoint ptr %next73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %ref.0 = load ptr, ptr %next73, align 4
  %tobool6.not = icmp eq ptr %ref.0, null
  br i1 %tobool6.not, label %for.inc.out_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then61.out_crit_edge
  %rc.0 = phi i32 [ -34, %if.then61.out_crit_edge ], [ %len.1, %for.inc.out_crit_edge ]
  br i1 %tobool75.not177, label %out.if.then76_crit_edge, label %out.if.else78_crit_edge

out.if.else78_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

out.if.then76_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

if.then76:                                        ; preds = %out.if.then76_crit_edge, %if.end.if.then76_crit_edge
  %rc.0201 = phi i32 [ %rc.0, %out.if.then76_crit_edge ], [ 0, %if.end.if.then76_crit_edge ]
  tail call void @up_read(ptr noundef %xattr_sem) #11
  br label %cleanup

if.else78:                                        ; preds = %out.if.else78_crit_edge, %if.else36.if.else78_crit_edge, %retry4.backedge.if.else78_crit_edge
  %rc.0143 = phi i32 [ %rc.0, %out.if.else78_crit_edge ], [ %call27, %if.else36.if.else78_crit_edge ], [ 0, %retry4.backedge.if.else78_crit_edge ]
  tail call void @up_write(ptr noundef %xattr_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else78, %if.then76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %rc.0143, %if.else78 ], [ %rc.0201, %if.then76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_xattr_datum(ptr noundef %c, ptr noundef %xd) unnamed_addr #0 align 64 {
entry:
  %readlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !96

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 272, 0\0A.popsection", ""() #11, !srcloc !101
  unreachable

do.end8:                                          ; preds = %entry
  %xname = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 11
  %2 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xname, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end11, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %and14 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %erase_completion_lock.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #11
  %node.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end17
  %raw.0.in.i = phi ptr [ %node.i, %if.end17 ], [ %raw.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %raw.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %raw.0.i = load ptr, ptr %raw.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %raw.0.i, %xd
  br i1 %cmp.not.i, label %if.end27.thread, label %for.body.i

if.end27.thread:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #11
  br label %if.then29

for.body.i:                                       ; preds = %for.cond.i
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flash_offset.i, align 4
  %and.i = and i32 %6, 3
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.end27, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.end27:                                         ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #11
  %call26 = tail call fastcc i32 @do_verify_xattr_datum(ptr noundef %c, ptr noundef %xd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end27.if.then29_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end27.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readlen.i) #11
  %7 = ptrtoint ptr %readlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %readlen.i, align 4, !annotation !95
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node.i, align 4
  %flash_offset.i41 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flash_offset.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flash_offset.i41, align 4
  %and.i42 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i42)
  %cmp.not.i43 = icmp eq i32 %and.i42, 2
  br i1 %cmp.not.i43, label %do.body8.i, label %do.body2.i, !prof !96

do.body2.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 212, 0\0A.popsection", ""() #11, !srcloc !102
  unreachable

do.body8.i:                                       ; preds = %if.then29
  %xindex.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5
  %12 = ptrtoint ptr %xindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %xindex.i, align 4
  %cmp.i144.not.i = icmp eq ptr %13, %xindex.i
  br i1 %cmp.i144.not.i, label %retry28.preheader.i, label %do.body19.i, !prof !96

retry28.preheader.i:                              ; preds = %do.body8.i
  %name_len.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 12
  %value_len.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 14
  %data_crc.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 9
  %xvalue.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 13
  %xdatum_mem_usage.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 70
  %xprefix.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 4
  %hashkey.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 10
  %prev3.i.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5, i32 1
  br label %retry28.i

do.body19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #11, !srcloc !103
  unreachable

retry28.i:                                        ; preds = %if.then90.i.retry28.i_crit_edge, %retry28.preheader.i
  %tobool89.not.i = phi i1 [ false, %if.then90.i.retry28.i_crit_edge ], [ true, %retry28.preheader.i ]
  %14 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %name_len.i, align 4
  %16 = ptrtoint ptr %value_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_len.i, align 4
  %add.i = add i32 %17, %15
  %add29.i = add i32 %add.i, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add29.i, i32 noundef 3264) #17
  %tobool31.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool31.not.i, label %retry28.i.do_load_xattr_datum.exit_crit_edge, label %if.end33.i

retry28.i.do_load_xattr_datum.exit_crit_edge:     ; preds = %retry28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_load_xattr_datum.exit

if.end33.i:                                       ; preds = %retry28.i
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node.i, align 4
  %flash_offset35.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flash_offset35.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flash_offset35.i, align 4
  %22 = add i32 %21, 32
  %add37.i = and i32 %22, -4
  %conv.i = zext i32 %add37.i to i64
  %call38.i = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv.i, i32 noundef %add29.i, ptr noundef nonnull %readlen.i, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %lor.lhs.false.i, label %if.end33.i.do.end45.i_crit_edge

if.end33.i.do.end45.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45.i

lor.lhs.false.i:                                  ; preds = %if.end33.i
  %23 = ptrtoint ptr %readlen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %readlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %24)
  %cmp40.not.i = icmp eq i32 %add29.i, %24
  br i1 %cmp40.not.i, label %if.end53.i, label %lor.lhs.false.i.do.end45.i_crit_edge

lor.lhs.false.i.do.end45.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45.i

do.end45.i:                                       ; preds = %lor.lhs.false.i.do.end45.i_crit_edge, %if.end33.i.do.end45.i_crit_edge
  %spec.select.i = phi i32 [ -5, %lor.lhs.false.i.do.end45.i_crit_edge ], [ %call38.i, %if.end33.i.do.end45.i_crit_edge ]
  %25 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid.i.i, align 8
  %31 = ptrtoint ptr %readlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %readlen.i, align 4
  %33 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %node.i, align 4
  %flash_offset49.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %flash_offset49.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flash_offset49.i, align 4
  %and50.i = and i32 %36, -4
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %30, ptr noundef nonnull @.str.21, i32 noundef %call38.i, i32 noundef %add29.i, i32 noundef %32, i32 noundef %and50.i) #15
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %do_load_xattr_datum.exit

if.end53.i:                                       ; preds = %lor.lhs.false.i
  %37 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %name_len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx.i, align 1
  %call55.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef %add29.i) #16
  %40 = ptrtoint ptr %data_crc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_crc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call55.i, i32 %41)
  %cmp56.not.i = icmp eq i32 %call55.i, %41
  br i1 %cmp56.not.i, label %if.end73.i, label %do.end61.i

do.end61.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i145.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i145.i to ptr
  %task64.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task64.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task64.i, align 8
  %pid.i146.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid.i146.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid.i146.i, align 8
  %48 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %node.i, align 4
  %flash_offset67.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %flash_offset67.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flash_offset67.i, align 4
  %and68.i = and i32 %51, -4
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %47, ptr noundef nonnull @.str.21, i32 noundef %and68.i, i32 noundef %41, i32 noundef %call55.i) #15
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags, align 1
  %54 = or i8 %53, -128
  store i8 %54, ptr %flags, align 1
  br label %do_load_xattr_datum.exit

if.end73.i:                                       ; preds = %if.end53.i
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %flags, align 1
  %57 = or i8 %56, 1
  store i8 %57, ptr %flags, align 1
  %58 = ptrtoint ptr %xname to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i.i, ptr %xname, align 4
  %59 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %name_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 1
  %add.ptr79.i = getelementptr i8, ptr %add.ptr.i, i32 %60
  %61 = ptrtoint ptr %xvalue.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr79.i, ptr %xvalue.i, align 4
  %62 = ptrtoint ptr %xdatum_mem_usage.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %xdatum_mem_usage.i, align 4
  %add80.i = add i32 %63, %add29.i
  store i32 %add80.i, ptr %xdatum_mem_usage.i, align 4
  %64 = ptrtoint ptr %xprefix.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %xprefix.i, align 2
  %conv81.i = zext i16 %65 to i32
  %66 = load ptr, ptr %xname, align 4
  %67 = load ptr, ptr %xvalue.i, align 4
  %68 = ptrtoint ptr %value_len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %value_len.i, align 4
  %call.i.i = call i32 @strlen(ptr noundef %66) #18
  %call1.i.i = call i32 @crc32_le(i32 noundef %conv81.i, ptr noundef %66, i32 noundef %call.i.i) #16
  %call2.i.i = call i32 @crc32_le(i32 noundef %conv81.i, ptr noundef %67, i32 noundef %69) #16
  %xor.i.i = xor i32 %call2.i.i, %call1.i.i
  %70 = ptrtoint ptr %hashkey.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %xor.i.i, ptr %hashkey.i, align 4
  %rem.i = urem i32 %xor.i.i, 57
  %arrayidx88.i = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %rem.i
  %71 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx88.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %xindex.i, ptr noundef %arrayidx88.i, ptr noundef %72) #11
  br i1 %call.i.i.i, label %if.end.i.i147.i, label %if.end73.i.list_add.exit.i_crit_edge

if.end73.i.list_add.exit.i_crit_edge:             ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i147.i:                                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %xindex.i, ptr %prev1.i.i.i, align 4
  %74 = ptrtoint ptr %xindex.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %xindex.i, align 4
  %75 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx88.i, ptr %prev3.i.i.i, align 4
  %76 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %xindex.i, ptr %arrayidx88.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i147.i, %if.end73.i.list_add.exit.i_crit_edge
  br i1 %tobool89.not.i, label %if.then90.i, label %list_add.exit.i.do_load_xattr_datum.exit_crit_edge

list_add.exit.i.do_load_xattr_datum.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_load_xattr_datum.exit

if.then90.i:                                      ; preds = %list_add.exit.i
  call fastcc void @reclaim_xattr_datum(ptr noundef %c) #11
  %77 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xname, align 4
  %tobool92.not.i = icmp eq ptr %78, null
  br i1 %tobool92.not.i, label %if.then90.i.retry28.i_crit_edge, label %if.then90.i.do_load_xattr_datum.exit_crit_edge

if.then90.i.do_load_xattr_datum.exit_crit_edge:   ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_load_xattr_datum.exit

if.then90.i.retry28.i_crit_edge:                  ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry28.i

do_load_xattr_datum.exit:                         ; preds = %if.then90.i.do_load_xattr_datum.exit_crit_edge, %list_add.exit.i.do_load_xattr_datum.exit_crit_edge, %do.end61.i, %do.end45.i, %retry28.i.do_load_xattr_datum.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %do.end45.i ], [ 1, %do.end61.i ], [ -12, %retry28.i.do_load_xattr_datum.exit_crit_edge ], [ 0, %if.then90.i.do_load_xattr_datum.exit_crit_edge ], [ 0, %list_add.exit.i.do_load_xattr_datum.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do_load_xattr_datum.exit, %if.end27.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ %call26, %if.end27.cleanup_crit_edge ], [ %retval.0.i, %do_load_xattr_datum.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_jffs2_getxattr(ptr nocapture noundef readonly %inode, i32 noundef %xprefix, ptr nocapture noundef readonly %xname, ptr noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %inocache = getelementptr i8, ptr %inode, i32 -8
  %4 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inocache, align 8
  %call = tail call fastcc i32 @check_xattr_ref_inode(ptr noundef %3, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 69
  tail call void @down_read(ptr noundef %xattr_sem) #11
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %6)
  %ref.0134141 = load ptr, ptr %xref, align 4
  %tobool5.not135142 = icmp eq ptr %ref.0134141, null
  br i1 %tobool5.not135142, label %if.end.if.then72_crit_edge, label %if.end.do.body.lr.ph_crit_edge

if.end.do.body.lr.ph_crit_edge:                   ; preds = %if.end
  br label %do.body.lr.ph

if.end.if.then72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

do.body.lr.ph:                                    ; preds = %retry3.backedge.do.body.lr.ph_crit_edge, %if.end.do.body.lr.ph_crit_edge
  %ref.0134144 = phi ptr [ %ref.0134, %retry3.backedge.do.body.lr.ph_crit_edge ], [ %ref.0134141, %if.end.do.body.lr.ph_crit_edge ]
  %tobool71.not143 = phi i1 [ false, %retry3.backedge.do.body.lr.ph_crit_edge ], [ true, %if.end.do.body.lr.ph_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %ref.0137 = phi ptr [ %ref.0134144, %do.body.lr.ph ], [ %ref.0, %for.inc.do.body_crit_edge ]
  %pref.0136 = phi ptr [ %xref, %do.body.lr.ph ], [ %next69, %for.inc.do.body_crit_edge ]
  %7 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0137, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp.not = icmp eq ptr %9, %5
  br i1 %cmp.not, label %do.end19, label %do.body13, !prof !96

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1048, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

do.end19:                                         ; preds = %do.body
  %10 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0137, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %xprefix20 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %xprefix20 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %xprefix20, align 2
  %conv = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %xprefix)
  %cmp21.not = icmp eq i32 %conv, %xprefix
  br i1 %cmp21.not, label %if.end24, label %do.end19.for.inc_crit_edge

do.end19.for.inc_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end24:                                         ; preds = %do.end19
  %xname25 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %12, i32 0, i32 11
  %15 = ptrtoint ptr %xname25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xname25, align 4
  %tobool26.not = icmp eq ptr %16, null
  br i1 %tobool26.not, label %if.then27, label %if.end24.if.end55_crit_edge

if.end24.if.end55_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then27:                                        ; preds = %if.end24
  br i1 %tobool71.not143, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_read(ptr noundef %xattr_sem) #11
  tail call void @down_write(ptr noundef %xattr_sem) #11
  br label %retry3.backedge

retry3.backedge:                                  ; preds = %if.then41, %if.then29
  %17 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %17)
  %ref.0134 = load ptr, ptr %xref, align 4
  %tobool5.not135 = icmp eq ptr %ref.0134, null
  br i1 %tobool5.not135, label %retry3.backedge.if.else74_crit_edge, label %retry3.backedge.do.body.lr.ph_crit_edge

retry3.backedge.do.body.lr.ph_crit_edge:          ; preds = %retry3.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.lr.ph

retry3.backedge.if.else74_crit_edge:              ; preds = %retry3.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

if.else:                                          ; preds = %if.then27
  %call32 = tail call fastcc i32 @load_xattr_datum(ptr noundef %3, ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then41, label %if.else42, !prof !93

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0137, i32 0, i32 8
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next, align 4
  %20 = ptrtoint ptr %pref.0136 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pref.0136, align 4
  tail call fastcc void @delete_xattr_ref(ptr noundef %3, ptr noundef nonnull %ref.0137)
  br label %retry3.backedge

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp43 = icmp slt i32 %call32, 0
  br i1 %cmp43, label %if.else42.if.else74_crit_edge, label %if.else42.if.end55_crit_edge, !prof !93

if.else42.if.end55_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.else42.if.else74_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

if.end55:                                         ; preds = %if.else42.if.end55_crit_edge, %if.end24.if.end55_crit_edge
  %21 = ptrtoint ptr %xname25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xname25, align 4
  %call57 = tail call i32 @strcmp(ptr noundef %xname, ptr noundef %22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end55.for.inc_crit_edge

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then59:                                        ; preds = %if.end55
  %value_len = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %12, i32 0, i32 14
  %23 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value_len, align 4
  %tobool60.not = icmp eq ptr %buffer, null
  br i1 %tobool60.not, label %if.then59.out_crit_edge, label %if.then61

if.then59.out_crit_edge:                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %size)
  %cmp62 = icmp ugt i32 %24, %size
  br i1 %cmp62, label %if.then61.out_crit_edge, label %if.else65

if.then61.out_crit_edge:                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else65:                                        ; preds = %if.then61
  %xvalue = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %12, i32 0, i32 13
  %25 = ptrtoint ptr %xvalue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xvalue, align 4
  %27 = call ptr @memcpy(ptr %buffer, ptr %26, i32 %24)
  br i1 %tobool71.not143, label %if.else65.if.then72_crit_edge, label %if.else65.if.else74_crit_edge

if.else65.if.else74_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

if.else65.if.then72_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

for.inc:                                          ; preds = %if.end55.for.inc_crit_edge, %do.end19.for.inc_crit_edge
  %next69 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0137, i32 0, i32 8
  %28 = ptrtoint ptr %next69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %ref.0 = load ptr, ptr %next69, align 4
  %tobool5.not = icmp eq ptr %ref.0, null
  br i1 %tobool5.not, label %for.inc.out_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then61.out_crit_edge, %if.then59.out_crit_edge
  %rc.0 = phi i32 [ %24, %if.then59.out_crit_edge ], [ -34, %if.then61.out_crit_edge ], [ -61, %for.inc.out_crit_edge ]
  br i1 %tobool71.not143, label %out.if.then72_crit_edge, label %out.if.else74_crit_edge

out.if.else74_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

out.if.then72_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

if.then72:                                        ; preds = %out.if.then72_crit_edge, %if.else65.if.then72_crit_edge, %if.end.if.then72_crit_edge
  %rc.0168 = phi i32 [ %rc.0, %out.if.then72_crit_edge ], [ %24, %if.else65.if.then72_crit_edge ], [ -61, %if.end.if.then72_crit_edge ]
  tail call void @up_read(ptr noundef %xattr_sem) #11
  br label %cleanup

if.else74:                                        ; preds = %out.if.else74_crit_edge, %if.else65.if.else74_crit_edge, %if.else42.if.else74_crit_edge, %retry3.backedge.if.else74_crit_edge
  %rc.0115 = phi i32 [ %rc.0, %out.if.else74_crit_edge ], [ %24, %if.else65.if.else74_crit_edge ], [ %call32, %if.else42.if.else74_crit_edge ], [ -61, %retry3.backedge.if.else74_crit_edge ]
  tail call void @up_write(ptr noundef %xattr_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else74, %if.then72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %rc.0115, %if.else74 ], [ %rc.0168, %if.then72 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_jffs2_setxattr(ptr nocapture noundef readonly %inode, i32 noundef %xprefix, ptr noundef %xname, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %inocache = getelementptr i8, ptr %inode, i32 -8
  %4 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inocache, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #11
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %length, align 4, !annotation !95
  %call = tail call fastcc i32 @check_xattr_ref_inode(ptr noundef %3, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strlen(ptr noundef %xname) #14
  %add5 = add i32 %size, 36
  %add6 = add i32 %add5, %call3
  %and = and i32 %add6, -4
  %call7 = call i32 @jffs2_reserve_space(ptr noundef %3, i32 noundef %and, ptr noundef nonnull %length, i32 noundef 0, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid.i, align 8
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %12, ptr noundef nonnull @.str.5, i32 noundef %call7, i32 noundef %and) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 69
  call void @down_write(ptr noundef %xattr_sem) #11
  %xref = getelementptr inbounds %struct.jffs2_inode_cache, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %13)
  %ref.0253266 = load ptr, ptr %xref, align 4
  %tobool16.not254267 = icmp eq ptr %ref.0253266, null
  br i1 %tobool16.not254267, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %if.end14.for.body_crit_edge
  %ref.0256 = phi ptr [ %ref.0256.be, %for.body.backedge ], [ %ref.0253266, %if.end14.for.body_crit_edge ]
  %pref.0255 = phi ptr [ %pref.0255.be, %for.body.backedge ], [ %xref, %if.end14.for.body_crit_edge ]
  %14 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0256, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %xprefix17 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %xprefix17 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xprefix17, align 2
  %conv = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %xprefix)
  %cmp.not = icmp eq i32 %conv, %xprefix
  br i1 %cmp.not, label %if.end20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %xname21 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %xname21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xname21, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end45_crit_edge

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then23:                                        ; preds = %if.end20
  %call24 = call fastcc i32 @load_xattr_datum(ptr noundef %3, ptr noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp sgt i32 %call24, 0
  br i1 %cmp25, label %if.then33, label %if.else, !prof !93

if.then33:                                        ; preds = %if.then23
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0256, i32 0, i32 8
  %21 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next, align 4
  %23 = ptrtoint ptr %pref.0255 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %pref.0255, align 4
  call fastcc void @delete_xattr_ref(ptr noundef %3, ptr noundef nonnull %ref.0256)
  %24 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %24)
  %ref.0253 = load ptr, ptr %xref, align 4
  %tobool16.not254 = icmp eq ptr %ref.0253, null
  br i1 %tobool16.not254, label %if.then33.for.end_crit_edge, label %if.then33.for.body.backedge_crit_edge

if.then33.for.body.backedge_crit_edge:            ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.backedge

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp34 = icmp slt i32 %call24, 0
  br i1 %cmp34, label %if.else.out_crit_edge, label %if.else.if.end45_crit_edge, !prof !93

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.end20.if.end45_crit_edge
  %25 = ptrtoint ptr %xname21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xname21, align 4
  %call47 = call i32 @strcmp(ptr noundef %26, ptr noundef %xname) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then49:                                        ; preds = %if.end45
  %and50 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then49.out_crit_edge

if.then49.out_crit_edge:                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end53:                                         ; preds = %if.then49
  %tobool54.not = icmp eq ptr %buffer, null
  br i1 %tobool54.not, label %if.then55, label %if.end53.found_crit_edge

if.end53.found_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.then55:                                        ; preds = %if.end53
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ino, align 4
  %29 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0256, i32 0, i32 6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  %xid = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %16, i32 0, i32 7
  %31 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xid, align 4
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %14, align 4
  %xseqno = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0256, i32 0, i32 5
  %34 = ptrtoint ptr %xseqno to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xseqno, align 4
  %or = or i32 %35, 1
  store i32 %or, ptr %xseqno, align 4
  %call56 = call fastcc i32 @save_xattr_ref(ptr noundef %3, ptr noundef nonnull %ref.0256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %if.else63

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %next59 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0256, i32 0, i32 8
  %36 = ptrtoint ptr %next59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next59, align 4
  %38 = ptrtoint ptr %pref.0255 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %pref.0255, align 4
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  %xref_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 67
  %39 = ptrtoint ptr %xref_dead_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xref_dead_list, align 4
  %41 = ptrtoint ptr %next59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %next59, align 4
  store ptr %ref.0256, ptr %xref_dead_list, align 4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  call fastcc void @unrefer_xattr_datum(ptr noundef %3, ptr noundef %16)
  br label %out

if.else63:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %5, ptr %29, align 4
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %16, ptr %14, align 4
  %44 = ptrtoint ptr %xseqno to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xseqno, align 4
  %and65 = and i32 %45, -2
  store i32 %and65, ptr %xseqno, align 4
  br label %out

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next69 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0256, i32 0, i32 8
  %46 = ptrtoint ptr %next69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %ref.0 = load ptr, ptr %next69, align 4
  %tobool16.not = icmp eq ptr %ref.0, null
  br i1 %tobool16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.then33.for.body.backedge_crit_edge
  %ref.0256.be = phi ptr [ %ref.0, %for.inc.for.body.backedge_crit_edge ], [ %ref.0253, %if.then33.for.body.backedge_crit_edge ]
  %pref.0255.be = phi ptr [ %next69, %for.inc.for.body.backedge_crit_edge ], [ %xref, %if.then33.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then33.for.end_crit_edge, %if.end14.for.end_crit_edge
  %pref.0.lcssa = phi ptr [ %xref, %if.end14.for.end_crit_edge ], [ %xref, %if.then33.for.end_crit_edge ], [ %next69, %for.inc.for.end_crit_edge ]
  %and71 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp ne i32 %and71, 0
  %tobool75.not = icmp eq ptr %buffer, null
  %or.cond = or i1 %tobool75.not, %tobool72.not
  br i1 %or.cond, label %for.end.out_crit_edge, label %for.end.found_crit_edge

for.end.found_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

found:                                            ; preds = %for.end.found_crit_edge, %if.end53.found_crit_edge
  %pref.0242 = phi ptr [ %pref.0.lcssa, %for.end.found_crit_edge ], [ %pref.0255, %if.end53.found_crit_edge ]
  %ref.0237 = phi ptr [ null, %for.end.found_crit_edge ], [ %ref.0256, %if.end53.found_crit_edge ]
  %tobool16.not232 = phi i1 [ true, %for.end.found_crit_edge ], [ false, %if.end53.found_crit_edge ]
  %call.i.i = call i32 @strlen(ptr noundef %xname) #18
  %call1.i.i = call i32 @crc32_le(i32 noundef %xprefix, ptr noundef %xname, i32 noundef %call.i.i) #16
  %call2.i.i = call i32 @crc32_le(i32 noundef %xprefix, ptr noundef nonnull %buffer, i32 noundef %size) #16
  %xor.i.i = xor i32 %call2.i.i, %call1.i.i
  %rem.i = urem i32 %xor.i.i, 57
  %arrayidx.i = getelementptr %struct.jffs2_sb_info, ptr %3, i32 0, i32 64, i32 %rem.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn144.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not145.i = icmp eq ptr %.pn144.i, %arrayidx.i
  br i1 %cmp.not145.i, label %found.for.end.i_crit_edge, label %found.for.body.i_crit_edge

found.for.body.i_crit_edge:                       ; preds = %found
  br label %for.body.i

found.for.end.i_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %found.for.body.i_crit_edge
  %.pn146.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn144.i, %found.for.body.i_crit_edge ]
  %hashkey3.i = getelementptr i8, ptr %.pn146.i, i32 24
  %48 = ptrtoint ptr %hashkey3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hashkey3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %xor.i.i)
  %cmp4.i = icmp eq i32 %49, %xor.i.i
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %xprefix5.i = getelementptr i8, ptr %.pn146.i, i32 -2
  %50 = ptrtoint ptr %xprefix5.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %xprefix5.i, align 2
  %conv.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %xprefix)
  %cmp6.i = icmp eq i32 %conv.i, %xprefix
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %value_len.i = getelementptr i8, ptr %.pn146.i, i32 40
  %52 = ptrtoint ptr %value_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %size)
  %cmp9.i = icmp eq i32 %53, %size
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %xname12.i = getelementptr i8, ptr %.pn146.i, i32 28
  %54 = ptrtoint ptr %xname12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xname12.i, align 4
  %call13.i = call i32 @strcmp(ptr noundef %55, ptr noundef %xname) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %land.lhs.true14.i, label %land.lhs.true11.i.for.inc.i_crit_edge

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %xvalue15.i = getelementptr i8, ptr %.pn146.i, i32 36
  %56 = ptrtoint ptr %xvalue15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xvalue15.i, align 4
  %bcmp.i = call i32 @bcmp(ptr %57, ptr %buffer, i32 %size) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.then.i, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  %xd.0.le.i = getelementptr i8, ptr %.pn146.i, i32 -12
  %refcnt.i = getelementptr i8, ptr %.pn146.i, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !99
  br label %create_xattr_datum.exit

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %59 = ptrtoint ptr %.pn146.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i = load ptr, ptr %.pn146.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %found.for.end.i_crit_edge
  %call24.i = call ptr @jffs2_alloc_xattr_datum() #11
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %for.end.i.if.then80_crit_edge, label %if.end28.i

for.end.i.if.then80_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then80

if.end28.i:                                       ; preds = %for.end.i
  %add.i = add i32 %call.i.i, %size
  %add29.i = add i32 %add.i, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add29.i, i32 noundef 3264) #17
  %tobool31.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end34.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @jffs2_free_xattr_datum(ptr noundef nonnull %call24.i) #11
  br label %if.then80

if.end34.i:                                       ; preds = %if.end28.i
  %call35.i = call ptr @strcpy(ptr noundef nonnull %call9.i.i, ptr noundef %xname) #18
  %add.ptr36.i = getelementptr i8, ptr %call9.i.i, i32 %call.i.i
  %add.ptr37.i = getelementptr i8, ptr %add.ptr36.i, i32 1
  %60 = call ptr @memcpy(ptr %add.ptr37.i, ptr %buffer, i32 %size)
  %refcnt38.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 6
  %call.i.i136.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt38.i, i32 noundef 4) #11
  %61 = ptrtoint ptr %refcnt38.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %refcnt38.i, align 4
  %highest_xid.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 62
  %62 = ptrtoint ptr %highest_xid.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %highest_xid.i, align 4
  %inc.i = add i32 %63, 1
  store i32 %inc.i, ptr %highest_xid.i, align 4
  %xid.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 7
  %64 = ptrtoint ptr %xid.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc.i, ptr %xid.i, align 4
  %flags.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 3
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags.i, align 1
  %67 = or i8 %66, 1
  store i8 %67, ptr %flags.i, align 1
  %conv41.i = trunc i32 %xprefix to i16
  %xprefix42.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 4
  %68 = ptrtoint ptr %xprefix42.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv41.i, ptr %xprefix42.i, align 2
  %hashkey43.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 10
  %69 = ptrtoint ptr %hashkey43.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %xor.i.i, ptr %hashkey43.i, align 4
  %xname44.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 11
  %70 = ptrtoint ptr %xname44.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call9.i.i, ptr %xname44.i, align 4
  %xvalue47.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 13
  %71 = ptrtoint ptr %xvalue47.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr37.i, ptr %xvalue47.i, align 4
  %name_len48.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 12
  %72 = ptrtoint ptr %name_len48.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call.i.i, ptr %name_len48.i, align 4
  %value_len49.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 14
  %73 = ptrtoint ptr %value_len49.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %size, ptr %value_len49.i, align 4
  %call54.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef %add29.i) #16
  %data_crc.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 9
  %74 = ptrtoint ptr %data_crc.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call54.i, ptr %data_crc.i, align 4
  %call55.i = call fastcc i32 @save_xattr_datum(ptr noundef %3, ptr noundef nonnull %call24.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end60.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %xname44.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %xname44.i, align 4
  call void @kfree(ptr noundef %76) #11
  call void @jffs2_free_xattr_datum(ptr noundef nonnull %call24.i) #11
  %77 = inttoptr i32 %call55.i to ptr
  br label %create_xattr_datum.exit

if.end60.i:                                       ; preds = %if.end34.i
  %xindex62.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 5
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i137.i = call zeroext i1 @__list_add_valid(ptr noundef %xindex62.i, ptr noundef %arrayidx.i, ptr noundef %79) #11
  br i1 %call.i.i137.i, label %if.end.i.i138.i, label %if.end60.i.list_add.exit.i_crit_edge

if.end60.i.list_add.exit.i_crit_edge:             ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i138.i:                                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %xindex62.i, ptr %prev1.i.i.i, align 4
  %81 = ptrtoint ptr %xindex62.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %xindex62.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %call24.i, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %arrayidx.i, ptr %prev3.i.i.i, align 4
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %xindex62.i, ptr %arrayidx.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i138.i, %if.end60.i.list_add.exit.i_crit_edge
  %84 = ptrtoint ptr %name_len48.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %name_len48.i, align 4
  %add66.i = add i32 %85, 1
  %86 = ptrtoint ptr %value_len49.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value_len49.i, align 4
  %add68.i = add i32 %add66.i, %87
  %xdatum_mem_usage.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 70
  %88 = ptrtoint ptr %xdatum_mem_usage.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %xdatum_mem_usage.i, align 4
  %add69.i = add i32 %add68.i, %89
  store i32 %add69.i, ptr %xdatum_mem_usage.i, align 4
  call fastcc void @reclaim_xattr_datum(ptr noundef %3) #11
  br label %create_xattr_datum.exit

create_xattr_datum.exit:                          ; preds = %list_add.exit.i, %if.then57.i, %if.then.i
  %retval.0.i = phi ptr [ %xd.0.le.i, %if.then.i ], [ %77, %if.then57.i ], [ %call24.i, %list_add.exit.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %create_xattr_datum.exit.if.then80_crit_edge, label %if.end82

create_xattr_datum.exit.if.then80_crit_edge:      ; preds = %create_xattr_datum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then80

if.then80:                                        ; preds = %create_xattr_datum.exit.if.then80_crit_edge, %if.then32.i, %for.end.i.if.then80_crit_edge
  %retval.0.i223 = phi ptr [ %retval.0.i, %create_xattr_datum.exit.if.then80_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then32.i ], [ inttoptr (i32 -12 to ptr), %for.end.i.if.then80_crit_edge ]
  %90 = ptrtoint ptr %retval.0.i223 to i32
  br label %out

if.end82:                                         ; preds = %create_xattr_datum.exit
  call void @up_write(ptr noundef %xattr_sem) #11
  call void @jffs2_complete_reservation(ptr noundef %3) #11
  %call84 = call i32 @jffs2_reserve_space(ptr noundef %3, i32 noundef 28, ptr noundef nonnull %length, i32 noundef 0, i32 noundef 6) #11
  call void @down_write(ptr noundef %xattr_sem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool86.not = icmp eq i32 %call84, 0
  br i1 %tobool86.not, label %if.end97, label %do.end90

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %91 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i214 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i214 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task93, align 8
  %pid.i215 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 68
  %95 = ptrtoint ptr %pid.i215 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pid.i215, align 8
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %96, ptr noundef nonnull @.str.5, i32 noundef %call84, i32 noundef 28) #15
  call fastcc void @unrefer_xattr_datum(ptr noundef %3, ptr noundef %retval.0.i)
  call void @up_write(ptr noundef %xattr_sem) #11
  br label %cleanup

if.end97:                                         ; preds = %if.end82
  br i1 %tobool16.not232, label %if.end97.if.end101_crit_edge, label %if.then99

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %next100 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0237, i32 0, i32 8
  %97 = ptrtoint ptr %next100 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %next100, align 4
  %99 = ptrtoint ptr %pref.0242 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %pref.0242, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end97.if.end101_crit_edge
  %call.i = call ptr @jffs2_alloc_xattr_ref() #11
  %tobool.not.i216 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i216, label %if.end101.if.then104_crit_edge, label %if.end.i

if.end101.if.then104_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

if.end.i:                                         ; preds = %if.end101
  %100 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call.i, i32 0, i32 6
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %5, ptr %100, align 4
  %102 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call.i, i32 0, i32 7
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %retval.0.i, ptr %102, align 4
  %call2.i = call fastcc i32 @save_xattr_ref(ptr noundef %3, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @jffs2_free_xattr_ref(ptr noundef nonnull %call.i) #11
  %104 = inttoptr i32 %call2.i to ptr
  br label %create_xattr_ref.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xref, align 4
  %next.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %call.i, i32 0, i32 8
  %107 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %next.i, align 4
  store ptr %call.i, ptr %xref, align 4
  br label %create_xattr_ref.exit

create_xattr_ref.exit:                            ; preds = %if.end6.i, %if.then4.i
  %retval.0.i217 = phi ptr [ %104, %if.then4.i ], [ %call.i, %if.end6.i ]
  %cmp.i218 = icmp ugt ptr %retval.0.i217, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %create_xattr_ref.exit.if.then104_crit_edge, label %if.else112

create_xattr_ref.exit.if.then104_crit_edge:       ; preds = %create_xattr_ref.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

if.then104:                                       ; preds = %create_xattr_ref.exit.if.then104_crit_edge, %if.end101.if.then104_crit_edge
  %retval.0.i217226 = phi ptr [ %retval.0.i217, %create_xattr_ref.exit.if.then104_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end101.if.then104_crit_edge ]
  br i1 %tobool16.not232, label %if.then104.if.end110_crit_edge, label %if.then106

if.then104.if.end110_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then106:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %xref to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %xref, align 4
  %next108 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0237, i32 0, i32 8
  %110 = ptrtoint ptr %next108 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %next108, align 4
  store ptr %ref.0237, ptr %xref, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.then104.if.end110_crit_edge
  %111 = ptrtoint ptr %retval.0.i217226 to i32
  call fastcc void @unrefer_xattr_datum(ptr noundef %3, ptr noundef %retval.0.i)
  br label %out

if.else112:                                       ; preds = %create_xattr_ref.exit
  br i1 %tobool16.not232, label %if.else112.out_crit_edge, label %if.then114

if.else112.out_crit_edge:                         ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then114:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #13
  %112 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0237, i32 0, i32 7
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %xseqno.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0237, i32 0, i32 5
  %115 = ptrtoint ptr %xseqno.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %xseqno.i, align 4
  %or.i = or i32 %116, 1
  store i32 %or.i, ptr %xseqno.i, align 4
  %117 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0237, i32 0, i32 6
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %ino.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ino.i, align 4
  store i32 %121, ptr %117, align 4
  %xid.i219 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %114, i32 0, i32 7
  %122 = ptrtoint ptr %xid.i219 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %xid.i219, align 4
  store i32 %123, ptr %112, align 4
  %erase_completion_lock.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock.i) #11
  %xref_dead_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 67
  %124 = ptrtoint ptr %xref_dead_list.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %xref_dead_list.i, align 4
  %next.i220 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref.0237, i32 0, i32 8
  %126 = ptrtoint ptr %next.i220 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %next.i220, align 4
  store ptr %ref.0237, ptr %xref_dead_list.i, align 4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock.i) #11
  call fastcc void @unrefer_xattr_datum(ptr noundef %3, ptr noundef %114) #11
  br label %out

out:                                              ; preds = %if.then114, %if.else112.out_crit_edge, %if.end110, %if.then80, %for.end.out_crit_edge, %if.else63, %if.then58, %if.then49.out_crit_edge, %if.else.out_crit_edge
  %rc.0 = phi i32 [ %90, %if.then80 ], [ %111, %if.end110 ], [ 0, %if.then114 ], [ 0, %if.else112.out_crit_edge ], [ %call56, %if.else63 ], [ 0, %if.then58 ], [ -17, %if.then49.out_crit_edge ], [ -61, %for.end.out_crit_edge ], [ %call24, %if.else.out_crit_edge ]
  call void @up_write(ptr noundef %xattr_sem) #11
  call void @jffs2_complete_reservation(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end90, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %rc.0, %out ], [ %call84, %do.end90 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @save_xattr_ref(ptr noundef %c, ptr noundef %ref) unnamed_addr #0 align 64 {
entry:
  %rr = alloca %struct.jffs2_raw_xref, align 2
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rr) #11
  %0 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 5
  %5 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 6
  %6 = getelementptr inbounds %struct.jffs2_raw_xref, ptr %rr, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %rr, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #11
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %length, align 4, !annotation !95
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %10 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nextblock, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %14 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sector_size, align 4
  %add = add i32 %15, %13
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_size, align 4
  %sub = sub i32 %add, %17
  %18 = ptrtoint ptr %rr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 6533, ptr %rr, align 2
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -8183, ptr %0, align 2
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 28, ptr %1, align 2
  %call = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rr, i32 noundef 8) #16
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %call, ptr %2, align 2
  %highest_xseqno = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 63
  %22 = ptrtoint ptr %highest_xseqno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %highest_xseqno, align 4
  %add7 = add i32 %23, 2
  store i32 %add7, ptr %highest_xseqno, align 4
  %xseqno.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 5
  %24 = ptrtoint ptr %xseqno.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xseqno.i, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %add7, 1
  %26 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %3, align 2
  %30 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %31 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 6
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %ino16 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %ino16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ino16, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %3, align 2
  %37 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 7
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %xid20 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %39, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi ptr [ %30, %if.then ], [ %xid20, %if.else ]
  %xseqno.0 = phi i32 [ %or, %if.then ], [ %add7, %if.else ]
  %40 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %40)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %storemerge, ptr %4, align 2
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %xseqno.0, ptr %5, align 2
  %call26 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rr, i32 noundef 24) #16
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %call26, ptr %6, align 2
  %conv = zext i32 %sub to i64
  %call27 = call i32 @jffs2_flash_write(ptr noundef %c, i64 noundef %conv, i32 noundef 28, ptr noundef nonnull %length, ptr noundef nonnull %rr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %45)
  %cmp.not = icmp eq i32 %45, 28
  br i1 %cmp.not, label %if.end40, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %spec.select = phi i32 [ %call27, %if.end.do.end_crit_edge ], [ -5, %lor.lhs.false.do.end_crit_edge ]
  %46 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i70 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i70 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid.i, align 8
  %52 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length, align 4
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %51, ptr noundef nonnull @.str.28, i32 noundef %call27, i32 noundef 28, i32 noundef %53, i32 noundef %sub) #15
  %54 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool35.not = icmp eq i32 %55, 0
  br i1 %tobool35.not, label %do.end.cleanup_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %xseqno.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %xseqno.0, ptr %xseqno.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end40, %do.end.cleanup.sink.split_crit_edge
  %.sink71 = phi i32 [ 2, %if.end40 ], [ 1, %do.end.cleanup.sink.split_crit_edge ]
  %.sink = phi ptr [ %ref, %if.end40 ], [ null, %do.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end40 ], [ %spec.select, %do.end.cleanup.sink.split_crit_edge ]
  %or37 = or i32 %sub, %.sink71
  %call38 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or37, i32 noundef 28, ptr noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unrefer_xattr_datum(ptr noundef %c, ptr noundef %xd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 6
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  %call = tail call i32 @_atomic_dec_and_lock(ptr noundef %refcnt, ptr noundef %erase_completion_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %entry
  %xname.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 11
  %0 = ptrtoint ptr %xname.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xname.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %name_len.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 12
  %2 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %name_len.i, align 4
  %value_len.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 14
  %4 = ptrtoint ptr %value_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_len.i, align 4
  %xdatum_mem_usage.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 70
  %6 = ptrtoint ptr %xdatum_mem_usage.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xdatum_mem_usage.i, align 4
  %add.neg.i = xor i32 %3, -1
  %add1.neg.i = sub i32 %add.neg.i, %5
  %sub.i = add i32 %add1.neg.i, %7
  store i32 %sub.i, ptr %xdatum_mem_usage.i, align 4
  %8 = ptrtoint ptr %xname.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xname.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %xindex.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xindex.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.unload_xattr_datum.exit_crit_edge

if.end.i.unload_xattr_datum.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unload_xattr_datum.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %xindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xindex.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %unload_xattr_datum.exit

unload_xattr_datum.exit:                          ; preds = %if.end.i.i.i, %if.end.i.unload_xattr_datum.exit_crit_edge
  %16 = ptrtoint ptr %xindex.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %xindex.i, ptr %xindex.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %xindex.i, ptr %prev.i3.i.i, align 4
  %hashkey.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 10
  %18 = ptrtoint ptr %hashkey.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hashkey.i, align 4
  %19 = ptrtoint ptr %xname.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %xname.i, align 4
  %xvalue.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 13
  %20 = ptrtoint ptr %xvalue.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %xvalue.i, align 4
  %flags = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 1
  %23 = or i8 %22, 64
  store i8 %23, ptr %flags, align 1
  %node = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 1
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node, align 4
  %cmp = icmp eq ptr %25, %xd
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %unload_xattr_datum.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool6.not = icmp sgt i8 %22, -1
  br i1 %tobool6.not, label %do.body11, label %do.end14, !prof !93

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 411, 0\0A.popsection", ""() #11, !srcloc !105
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @jffs2_free_xattr_datum(ptr noundef %xd) #11
  br label %if.end15

if.else:                                          ; preds = %unload_xattr_datum.exit
  %xattr_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 66
  %26 = ptrtoint ptr %xattr_dead_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xattr_dead_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xindex.i, ptr noundef %xattr_dead_list, ptr noundef %27) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %xindex.i, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %xindex.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %xindex.i, align 4
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %xattr_dead_list, ptr %prev.i3.i.i, align 4
  %31 = ptrtoint ptr %xattr_dead_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %xindex.i, ptr %xattr_dead_list, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i.i, %if.else.if.end15_crit_edge, %do.end14
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_complete_reservation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_garbage_collect_xattr_datum(ptr noundef %c, ptr noundef %xd, ptr noundef %raw) local_unnamed_addr #0 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #11
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !95
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 69
  tail call void @down_write(ptr noundef %xattr_sem) #11
  %node = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 1
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %cmp.not = icmp eq ptr %2, %raw
  br i1 %cmp.not, label %if.end, label %entry.if.then29_crit_edge

entry.if.then29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %tobool.not = icmp ult i8 %4, 64
  br i1 %tobool.not, label %if.end2, label %if.end.if.then29_crit_edge

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end2:                                          ; preds = %if.end
  %call = tail call fastcc i32 @load_xattr_datum(ptr noundef %c, ptr noundef %xd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end9, label %if.then6, !prof !96

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp sgt i32 %call, 0
  br i1 %cmp7, label %if.then6.if.then29_crit_edge, label %if.then6.if.end30_crit_edge

if.then6.if.end30_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then6.if.then29_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end9:                                          ; preds = %if.end2
  %name_len = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 12
  %5 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_len, align 4
  %value_len = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 14
  %7 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_len, align 4
  %add13 = add i32 %6, 36
  %add14 = add i32 %add13, %8
  %and15 = and i32 %add14, -4
  %call16 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %and15, ptr noundef nonnull %length, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %out, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %9 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid.i, align 8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %14, ptr noundef nonnull @.str.9, i32 noundef %call16, i32 noundef %and15) #15
  br label %if.end30

out:                                              ; preds = %if.end9
  %call23 = call fastcc i32 @save_xattr_datum(ptr noundef %c, ptr noundef %xd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool28.not = icmp eq i32 %call23, 0
  br i1 %tobool28.not, label %out.if.then29_crit_edge, label %out.if.end30_crit_edge

out.if.end30_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

out.if.then29_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %out.if.then29_crit_edge, %if.then6.if.then29_crit_edge, %if.end.if.then29_crit_edge, %entry.if.then29_crit_edge
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %raw) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %out.if.end30_crit_edge, %do.end, %if.then6.if.end30_crit_edge
  %rc.055 = phi i32 [ 0, %if.then29 ], [ %call23, %out.if.end30_crit_edge ], [ %call16, %do.end ], [ %call, %if.then6.if.end30_crit_edge ]
  call void @up_write(ptr noundef %xattr_sem) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #11
  ret i32 %rc.055
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space_gc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @save_xattr_datum(ptr noundef %c, ptr noundef %xd) unnamed_addr #0 align 64 {
entry:
  %rx = alloca %struct.jffs2_raw_xattr, align 2
  %vecs = alloca [2 x %struct.kvec], align 4
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rx) #11
  %0 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 3
  %3 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 4
  %4 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 5
  %5 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 6
  %6 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 7
  %7 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 8
  %8 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 9
  %9 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vecs) #11
  %10 = getelementptr inbounds %struct.kvec, ptr %vecs, i32 0, i32 1
  %11 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs, i32 0, i32 1
  %12 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #11
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %length, align 4, !annotation !95
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %14 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nextblock, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %18 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sector_size, align 4
  %add = add i32 %19, %17
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %15, i32 0, i32 7
  %20 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %free_size, align 4
  %sub = sub i32 %add, %21
  %xname = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 11
  %22 = ptrtoint ptr %xname to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xname, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %do.body5, label %do.body11, !prof !93

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #11, !srcloc !106
  unreachable

do.body11:                                        ; preds = %entry
  %flags = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %25)
  %tobool12.not = icmp ult i8 %25, 64
  br i1 %tobool12.not, label %do.end28, label %do.body20, !prof !96

do.body20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 294, 0\0A.popsection", ""() #11, !srcloc !107
  unreachable

do.end28:                                         ; preds = %do.body11
  %26 = ptrtoint ptr %vecs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rx, ptr %vecs, align 4
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %10, align 4
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %23, ptr %11, align 4
  %name_len = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 12
  %29 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %name_len, align 4
  %add33 = add i32 %30, 1
  %value_len = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 14
  %31 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value_len, align 4
  %add34 = add i32 %add33, %32
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add34, ptr %12, align 4
  %add41 = add i32 %add34, 32
  %34 = getelementptr inbounds i8, ptr %rx, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 24)
  %36 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 6533, ptr %rx, align 2
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -8184, ptr %0, align 2
  %add46 = add i32 %add34, 35
  %and47 = and i32 %add46, -4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %and47, ptr %1, align 2
  %call = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rx, i32 noundef 8) #16
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %call, ptr %2, align 2
  %xid52 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 7
  %40 = ptrtoint ptr %xid52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xid52, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %3, align 2
  %version55 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 8
  %43 = ptrtoint ptr %version55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %version55, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %version55, align 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %inc, ptr %4, align 2
  %xprefix = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 4
  %46 = ptrtoint ptr %xprefix to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %xprefix, align 2
  %conv56 = trunc i16 %47 to i8
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv56, ptr %5, align 2
  %conv59 = trunc i32 %30 to i8
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv59, ptr %6, align 1
  %conv65 = trunc i32 %32 to i16
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv65, ptr %7, align 2
  %call72 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %23, i32 noundef %add34) #16
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %call72, ptr %8, align 2
  %call75 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rx, i32 noundef 28) #16
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %call75, ptr %9, align 2
  %conv76 = zext i32 %sub to i64
  %call77 = call i32 @jffs2_flash_writev(ptr noundef %c, ptr noundef nonnull %vecs, i32 noundef 2, i64 noundef %conv76, ptr noundef nonnull %length, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %lor.lhs.false, label %do.end28.do.end83_crit_edge

do.end28.do.end83_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

lor.lhs.false:                                    ; preds = %do.end28
  %53 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %54)
  %cmp.not = icmp eq i32 %add41, %54
  br i1 %cmp.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false.do.end83_crit_edge

lor.lhs.false.do.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.end83:                                         ; preds = %lor.lhs.false.do.end83_crit_edge, %do.end28.do.end83_crit_edge
  %spec.select = phi i32 [ %call77, %do.end28.do.end83_crit_edge ], [ -5, %lor.lhs.false.do.end83_crit_edge ]
  %55 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid.i, align 8
  %61 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %60, ptr noundef nonnull @.str.30, i32 noundef %call77, i32 noundef %add41, i32 noundef %62, i32 noundef %sub) #15
  %63 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool88.not = icmp eq i32 %64, 0
  br i1 %tobool88.not, label %do.end83.cleanup_crit_edge, label %do.end83.cleanup.sink.split_crit_edge

do.end83.cleanup.sink.split_crit_edge:            ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end83.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge
  %.sink131 = phi i32 [ 1, %do.end83.cleanup.sink.split_crit_edge ], [ 2, %lor.lhs.false.cleanup.sink.split_crit_edge ]
  %.sink = phi ptr [ null, %do.end83.cleanup.sink.split_crit_edge ], [ %xd, %lor.lhs.false.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %spec.select, %do.end83.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ]
  %or = or i32 %sub, %.sink131
  %call92 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or, i32 noundef %and47, ptr noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end83.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end83.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vecs) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_garbage_collect_xattr_ref(ptr noundef %c, ptr noundef %ref, ptr noundef %raw) local_unnamed_addr #0 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #11
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !95
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 69
  tail call void @down_write(ptr noundef %xattr_sem) #11
  %node = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 1
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !93

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1262, 0\0A.popsection", ""() #11, !srcloc !108
  unreachable

do.end9:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %2, %raw
  br i1 %cmp.not, label %if.end12, label %do.end9.if.then36_crit_edge

do.end9.if.then36_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.end12:                                         ; preds = %do.end9
  %xseqno.i = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 5
  %3 = ptrtoint ptr %xseqno.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xseqno.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %land.lhs.true

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end12
  %5 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %raw, align 4
  %cmp14 = icmp eq ptr %6, %ref
  br i1 %cmp14, label %land.lhs.true.if.then36_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %gcblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 30
  %7 = ptrtoint ptr %gcblock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gcblock, align 4
  %call19 = tail call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %8, ptr noundef nonnull %raw) #11
  %call20 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %call19, ptr noundef nonnull %length, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %out, label %out.thread63

out.thread63:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %9 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i58 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i58 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid.i, align 8
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11, i32 noundef %call20, i32 noundef %call19) #15
  br label %if.end37

out:                                              ; preds = %if.end16
  %call30 = call fastcc i32 @save_xattr_ref(ptr noundef %c, ptr noundef %ref)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool35.not = icmp eq i32 %call30, 0
  br i1 %tobool35.not, label %out.if.then36_crit_edge, label %out.if.end37_crit_edge

out.if.end37_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

out.if.then36_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %out.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge, %do.end9.if.then36_crit_edge
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %raw) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %out.if.end37_crit_edge, %out.thread63
  %rc.061 = phi i32 [ 0, %if.then36 ], [ %call30, %out.if.end37_crit_edge ], [ %call20, %out.thread63 ]
  call void @up_write(ptr noundef %xattr_sem) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #11
  ret i32 %rc.061
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jffs2_ref_totlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_verify_xattr(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xattr_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 69
  tail call void @down_write(ptr noundef %xattr_sem) #11
  %xattr_unchecked = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 65
  %0 = ptrtoint ptr %xattr_unchecked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_unchecked, align 4
  %cmp.not88 = icmp eq ptr %1, %xattr_unchecked
  br i1 %cmp.not88, label %entry.for.end40_crit_edge, label %for.body.lr.ph

entry.for.end40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.body.lr.ph:                                   ; preds = %entry
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %used_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %xattr_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 66
  br label %for.body

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %for.body.lr.ph
  %.pn.in89 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn91, %for.inc34.for.body_crit_edge ]
  %xd.090 = getelementptr i8, ptr %.pn.in89, i32 -12
  %2 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn91 = load ptr, ptr %.pn.in89, align 4
  %call = tail call fastcc i32 @do_verify_xattr_datum(ptr noundef %c, ptr noundef %xd.090)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %for.body.for.inc34_crit_edge, label %if.end

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc34

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in89) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in89, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in89, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in89, ptr %.pn.in89, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in89, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in89, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  %node = getelementptr i8, ptr %.pn.in89, i32 -8
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %raw.083 = load ptr, ptr %node, align 4
  %cmp10.not84 = icmp eq ptr %raw.083, %xd.090
  br i1 %cmp10.not84, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body11_crit_edge

list_del_init.exit.for.body11_crit_edge:          ; preds = %list_del_init.exit
  br label %for.body11

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %list_del_init.exit.for.body11_crit_edge
  %raw.085 = phi ptr [ %raw.0, %for.inc.for.body11_crit_edge ], [ %raw.083, %list_del_init.exit.for.body11_crit_edge ]
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.085, i32 0, i32 1
  %12 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flash_offset, align 4
  %and = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12.not = icmp eq i32 %and, 0
  br i1 %cmp12.not, label %if.end14, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14:                                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %blocks, align 4
  %and16 = and i32 %13, -4
  %16 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %and16, %17
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %15, i32 %div
  %call17 = tail call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %raw.085) #11
  %add = add i32 %call17, 3
  %and18 = and i32 %add, -4
  %18 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unchecked_size, align 4
  %sub = sub i32 %19, %and18
  store i32 %sub, ptr %unchecked_size, align 4
  %20 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used_size, align 4
  %add19 = add i32 %21, %and18
  store i32 %add19, ptr %used_size, align 4
  %unchecked_size20 = getelementptr %struct.jffs2_eraseblock, ptr %15, i32 %div, i32 3
  %22 = ptrtoint ptr %unchecked_size20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %unchecked_size20, align 4
  %sub21 = sub i32 %23, %and18
  store i32 %sub21, ptr %unchecked_size20, align 4
  %used_size22 = getelementptr %struct.jffs2_eraseblock, ptr %15, i32 %div, i32 4
  %24 = ptrtoint ptr %used_size22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used_size22, align 4
  %add23 = add i32 %25, %and18
  store i32 %add23, ptr %used_size22, align 4
  %26 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flash_offset, align 4
  %and25 = and i32 %27, -4
  %28 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node, align 4
  %cmp27 = icmp eq ptr %29, %raw.085
  %cond = select i1 %cmp27, i32 2, i32 3
  %or = or i32 %cond, %and25
  store i32 %or, ptr %flash_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body11.for.inc_crit_edge
  %30 = ptrtoint ptr %raw.085 to i32
  call void @__asan_load4_noabort(i32 %30)
  %raw.0 = load ptr, ptr %raw.085, align 4
  %cmp10.not = icmp eq ptr %raw.0, %xd.090
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit.for.end_crit_edge
  %flags = getelementptr i8, ptr %.pn.in89, i32 -3
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 1
  %33 = and i8 %32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %for.end.if.end32_crit_edge, label %if.then30

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then30:                                        ; preds = %for.end
  %34 = ptrtoint ptr %xattr_dead_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xattr_dead_list, align 4
  %call.i.i81 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in89, ptr noundef %xattr_dead_list, ptr noundef %35) #11
  br i1 %call.i.i81, label %if.end.i.i82, label %if.then30.if.end32_crit_edge

if.then30.if.end32_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end.i.i82:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.pn.in89, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %.pn.in89, align 4
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %xattr_dead_list, ptr %prev.i3.i, align 4
  %39 = ptrtoint ptr %xattr_dead_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %.pn.in89, ptr %xattr_dead_list, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end.i.i82, %if.then30.if.end32_crit_edge, %for.end.if.end32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  br label %for.inc34

for.inc34:                                        ; preds = %if.end32, %for.body.for.inc34_crit_edge
  %cmp.not = icmp eq ptr %.pn91, %xattr_unchecked
  br i1 %cmp.not, label %for.inc34.for.end40_crit_edge, label %for.inc34.for.body_crit_edge

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc34.for.end40_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.end40:                                        ; preds = %for.inc34.for.end40_crit_edge, %entry.for.end40_crit_edge
  tail call void @up_write(ptr noundef %xattr_sem) #11
  %40 = ptrtoint ptr %xattr_unchecked to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %xattr_unchecked, align 4
  %cmp.i = icmp eq ptr %41, %xattr_unchecked
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_verify_xattr_datum(ptr noundef %c, ptr noundef %xd) unnamed_addr #0 align 64 {
entry:
  %rx = alloca %struct.jffs2_raw_xattr, align 2
  %readlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rx) #11
  %0 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 3
  %3 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 4
  %4 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 5
  %5 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 6
  %6 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 7
  %7 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 8
  %8 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 9
  %9 = getelementptr inbounds %struct.jffs2_raw_xattr, ptr %rx, i32 0, i32 10
  %10 = call ptr @memset(ptr %rx, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readlen) #11
  %11 = ptrtoint ptr %readlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %readlen, align 4, !annotation !95
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  %node = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 1
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flash_offset, align 4
  %and = and i32 %15, -4
  %and3 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and3)
  %cmp = icmp eq i32 %and3, 2
  br i1 %cmp, label %entry.complete_crit_edge, label %if.end

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  %conv = zext i32 %and to i64
  %call = call i32 @jffs2_flash_read(ptr noundef %c, i64 noundef %conv, i32 noundef 32, ptr noundef nonnull %readlen, ptr noundef nonnull %rx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %readlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %readlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp5.not = icmp eq i32 %17, 32
  br i1 %cmp5.not, label %if.end12, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %spec.select = phi i32 [ %call, %if.end.do.end_crit_edge ], [ -5, %lor.lhs.false.do.end_crit_edge ]
  %18 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 8
  %24 = ptrtoint ptr %readlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %readlen, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %23, ptr noundef nonnull @.str.32, i32 noundef %call, i32 noundef 32, i32 noundef %25, i32 noundef %and) #15
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %rx, i32 noundef 28) #16
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %9, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %27)
  %cmp14.not = icmp eq i32 %call13, %27
  br i1 %cmp14.not, label %if.end28, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %28 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i180 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i180 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task22, align 8
  %pid.i181 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i181 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i181, align 8
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %2, align 2
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %33, ptr noundef nonnull @.str.32, i32 noundef %and, i32 noundef %35, i32 noundef %call13) #15
  %flags = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 3
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags, align 1
  %38 = or i8 %37, -128
  store i8 %38, ptr %flags, align 1
  br label %cleanup

if.end28:                                         ; preds = %if.end12
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %6, align 1
  %conv29 = zext i8 %40 to i32
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %7, align 2
  %conv31 = zext i16 %42 to i32
  %add32 = add nuw nsw i32 %conv29, 36
  %add33 = add nuw nsw i32 %add32, %conv31
  %and34 = and i32 %add33, 131068
  %43 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6533, i16 %44)
  %cmp37.not = icmp eq i16 %44, 6533
  br i1 %cmp37.not, label %lor.lhs.false39, label %if.end28.do.end62_crit_edge

if.end28.do.end62_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

lor.lhs.false39:                                  ; preds = %if.end28
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8184, i16 %46)
  %cmp42.not = icmp eq i16 %46, -8184
  br i1 %cmp42.not, label %lor.lhs.false44, label %lor.lhs.false39.do.end62_crit_edge

lor.lhs.false39.do.end62_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %1, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %and34)
  %cmp47.not = icmp eq i32 %48, %and34
  br i1 %cmp47.not, label %lor.lhs.false49, label %lor.lhs.false44.do.end62_crit_edge

lor.lhs.false44.do.end62_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

lor.lhs.false49:                                  ; preds = %lor.lhs.false44
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %3, align 2
  %xid51 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 7
  %51 = ptrtoint ptr %xid51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xid51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp52.not = icmp eq i32 %50, %52
  br i1 %cmp52.not, label %lor.lhs.false54, label %lor.lhs.false49.do.end62_crit_edge

lor.lhs.false49.do.end62_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

lor.lhs.false54:                                  ; preds = %lor.lhs.false49
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %4, align 2
  %version56 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 8
  %55 = ptrtoint ptr %version56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %version56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp57.not = icmp eq i32 %54, %56
  br i1 %cmp57.not, label %if.end86, label %lor.lhs.false54.do.end62_crit_edge

lor.lhs.false54.do.end62_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

do.end62:                                         ; preds = %lor.lhs.false54.do.end62_crit_edge, %lor.lhs.false49.do.end62_crit_edge, %lor.lhs.false44.do.end62_crit_edge, %lor.lhs.false39.do.end62_crit_edge, %if.end28.do.end62_crit_edge
  %57 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i182 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i182 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task65, align 8
  %pid.i183 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid.i183 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid.i183, align 8
  %conv69 = zext i16 %44 to i32
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %0, align 2
  %conv72 = zext i16 %64 to i32
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %1, align 2
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %3, align 2
  %xid77 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 7
  %69 = ptrtoint ptr %xid77 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %xid77, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %4, align 2
  %version80 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 8
  %73 = ptrtoint ptr %version80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %version80, align 4
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %62, ptr noundef nonnull @.str.32, i32 noundef %and, i32 noundef %conv69, i32 noundef 6533, i32 noundef %conv72, i32 noundef 57352, i32 noundef %66, i32 noundef %and34, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74) #15
  %flags82 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 3
  %75 = ptrtoint ptr %flags82 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %flags82, align 1
  %77 = or i8 %76, -128
  store i8 %77, ptr %flags82, align 1
  br label %cleanup

if.end86:                                         ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %5, align 2
  %conv87 = zext i8 %79 to i16
  %xprefix88 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 4
  %80 = ptrtoint ptr %xprefix88 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv87, ptr %xprefix88, align 2
  %name_len91 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 12
  %81 = ptrtoint ptr %name_len91 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv29, ptr %name_len91, align 4
  %value_len95 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 14
  %82 = ptrtoint ptr %value_len95 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv31, ptr %value_len95, align 4
  %83 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %8, align 2
  %data_crc97 = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 9
  %85 = ptrtoint ptr %data_crc97 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %data_crc97, align 4
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #11
  br label %complete

complete:                                         ; preds = %if.end86, %entry.complete_crit_edge
  %86 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %86)
  %raw.0184 = load ptr, ptr %node, align 4
  %cmp100.not185 = icmp eq ptr %raw.0184, %xd
  br i1 %cmp100.not185, label %complete.for.end_crit_edge, label %for.body.lr.ph

complete.for.end_crit_edge:                       ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %complete
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %unchecked_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %used_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end117.for.body_crit_edge, %for.body.lr.ph
  %raw.0186 = phi ptr [ %raw.0184, %for.body.lr.ph ], [ %raw.0, %if.end117.for.body_crit_edge ]
  %87 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %blocks, align 4
  %flash_offset102 = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %raw.0186, i32 0, i32 1
  %89 = ptrtoint ptr %flash_offset102 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flash_offset102, align 4
  %and103 = and i32 %90, -4
  %91 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %and103, %92
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %88, i32 %div
  %call104 = call i32 @__jffs2_ref_totlen(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %raw.0186) #11
  %93 = ptrtoint ptr %flash_offset102 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flash_offset102, align 4
  %and108 = and i32 %94, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %cmp109 = icmp eq i32 %and108, 0
  br i1 %cmp109, label %if.then111, label %for.body.if.end117_crit_edge

for.body.if.end117_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then111:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add105 = add i32 %call104, 3
  %and106 = and i32 %add105, -4
  %95 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %unchecked_size, align 4
  %sub = sub i32 %96, %and106
  store i32 %sub, ptr %unchecked_size, align 4
  %97 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %used_size, align 4
  %add112 = add i32 %98, %and106
  store i32 %add112, ptr %used_size, align 4
  %unchecked_size113 = getelementptr %struct.jffs2_eraseblock, ptr %88, i32 %div, i32 3
  %99 = ptrtoint ptr %unchecked_size113 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %unchecked_size113, align 4
  %sub114 = sub i32 %100, %and106
  store i32 %sub114, ptr %unchecked_size113, align 4
  %used_size115 = getelementptr %struct.jffs2_eraseblock, ptr %88, i32 %div, i32 4
  %101 = ptrtoint ptr %used_size115 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %used_size115, align 4
  %add116 = add i32 %102, %and106
  store i32 %add116, ptr %used_size115, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %for.body.if.end117_crit_edge
  %103 = ptrtoint ptr %flash_offset102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flash_offset102, align 4
  %and119 = and i32 %104, -4
  %105 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %node, align 4
  %cmp121 = icmp eq ptr %106, %raw.0186
  %cond123 = select i1 %cmp121, i32 2, i32 3
  %or124 = or i32 %cond123, %and119
  store i32 %or124, ptr %flash_offset102, align 4
  %107 = ptrtoint ptr %raw.0186 to i32
  call void @__asan_load4_noabort(i32 %107)
  %raw.0 = load ptr, ptr %raw.0186, align 4
  %cmp100.not = icmp eq ptr %raw.0, %xd
  br i1 %cmp100.not, label %if.end117.for.end_crit_edge, label %if.end117.for.body_crit_edge

if.end117.for.body_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end117.for.end_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end117.for.end_crit_edge, %complete.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #11
  %xindex = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %xindex) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del_init.exit_crit_edge

for.end.list_del_init.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i, align 4
  %110 = ptrtoint ptr %xindex to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %xindex, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.end.list_del_init.exit_crit_edge
  %114 = ptrtoint ptr %xindex to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %xindex, ptr %xindex, align 4
  %prev.i3.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5, i32 1
  %115 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %xindex, ptr %prev.i3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %do.end62, %do.end19, %do.end
  %retval.0 = phi i32 [ 0, %list_del_init.exit ], [ %spec.select, %do.end ], [ 1, %do.end19 ], [ 1, %do.end62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readlen) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_release_xattr_datum(ptr nocapture noundef readnone %c, ptr noundef %xd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %node = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 1
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %cmp.not = icmp eq ptr %3, %xd
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %xindex = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5
  %call.i.i5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xindex) #11
  br i1 %call.i.i5, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %xindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xindex, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %xindex to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %xindex, align 4
  %prev.i = getelementptr inbounds %struct.jffs2_xattr_datum, ptr %xd, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @jffs2_free_xattr_datum(ptr noundef %xd) #11
  br label %return

return:                                           ; preds = %list_del.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_release_xattr_ref(ptr nocapture noundef %c, ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %cmp.not = icmp eq ptr %1, %ref
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %xref_dead_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 67
  %2 = ptrtoint ptr %xref_dead_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.018 = load ptr, ptr %xref_dead_list, align 4
  %tobool.not19 = icmp eq ptr %tmp.018, null
  br i1 %tobool.not19, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %cmp226 = icmp eq ptr %tmp.018, %ref
  br i1 %cmp226, label %for.body.preheader.if.then3_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.if.then3_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

for.body:                                         ; preds = %for.inc
  %cmp2 = icmp eq ptr %tmp.0, %ref
  br i1 %cmp2, label %if.then3.loopexit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then3.loopexit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %next5.le = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.02127, i32 0, i32 8
  br label %if.then3

if.then3:                                         ; preds = %if.then3.loopexit, %for.body.preheader.if.then3_crit_edge
  %ptmp.020.lcssa = phi ptr [ %xref_dead_list, %for.body.preheader.if.then3_crit_edge ], [ %next5.le, %if.then3.loopexit ]
  %next = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %ref, i32 0, i32 8
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %5 = ptrtoint ptr %ptmp.020.lcssa to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ptmp.020.lcssa, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %tmp.02127 = phi ptr [ %tmp.0, %for.body.for.inc_crit_edge ], [ %tmp.018, %for.body.preheader.for.inc_crit_edge ]
  %next5 = getelementptr inbounds %struct.jffs2_xattr_ref, ptr %tmp.02127, i32 0, i32 8
  %6 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %next5, align 4
  %tobool.not = icmp eq ptr %tmp.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3, %if.end.for.end_crit_edge
  tail call void @jffs2_free_xattr_ref(ptr noundef %ref) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reclaim_xattr_datum(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xdatum_mem_threshold = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 71
  %0 = ptrtoint ptr %xdatum_mem_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdatum_mem_threshold, align 4
  %xdatum_mem_usage = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 70
  %2 = ptrtoint ptr %xdatum_mem_usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xdatum_mem_usage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %3, 2
  %div = udiv i32 %mul, 5
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end
  %count.067 = phi i32 [ 0, %if.end ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = load i32, ptr @reclaim_xattr_datum.index, align 4
  %arrayidx = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %if.end25.for.cond8_crit_edge, %for.body
  %.pn.in = phi ptr [ %6, %for.body ], [ %.pn, %if.end25.for.cond8_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %8 = load i32, ptr @reclaim_xattr_datum.index, align 4
  %arrayidx11 = getelementptr %struct.jffs2_sb_info, ptr %c, i32 0, i32 64, i32 %8
  %cmp12.not = icmp eq ptr %.pn.in, %arrayidx11
  br i1 %cmp12.not, label %for.end, label %for.body13

for.body13:                                       ; preds = %for.cond8
  %flags = getelementptr i8, ptr %.pn.in, i32 -3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  %and17 = and i8 %10, -2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and17, ptr %flags, align 1
  br label %if.end25

if.else:                                          ; preds = %for.body13
  %and21 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.else
  %xname.i = getelementptr i8, ptr %.pn.in, i32 28
  %12 = ptrtoint ptr %xname.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xname.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then23.if.end.i_crit_edge, label %if.then.i

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %name_len.i = getelementptr i8, ptr %.pn.in, i32 32
  %14 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %name_len.i, align 4
  %value_len.i = getelementptr i8, ptr %.pn.in, i32 40
  %16 = ptrtoint ptr %value_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_len.i, align 4
  %18 = ptrtoint ptr %xdatum_mem_usage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xdatum_mem_usage, align 4
  %add.neg.i = xor i32 %15, -1
  %add1.neg.i = sub i32 %add.neg.i, %17
  %sub.i = add i32 %add1.neg.i, %19
  store i32 %sub.i, ptr %xdatum_mem_usage, align 4
  %20 = ptrtoint ptr %xname.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xname.i, align 4
  tail call void @kfree(ptr noundef %21) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then23.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.unload_xattr_datum.exit_crit_edge

if.end.i.unload_xattr_datum.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unload_xattr_datum.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in, i32 4
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %unload_xattr_datum.exit

unload_xattr_datum.exit:                          ; preds = %if.end.i.i.i, %if.end.i.unload_xattr_datum.exit_crit_edge
  %28 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in, i32 4
  %29 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.pn.in, ptr %prev.i3.i.i, align 4
  %hashkey.i = getelementptr i8, ptr %.pn.in, i32 24
  %30 = ptrtoint ptr %hashkey.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %hashkey.i, align 4
  %31 = ptrtoint ptr %xname.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %xname.i, align 4
  %xvalue.i = getelementptr i8, ptr %.pn.in, i32 36
  %32 = ptrtoint ptr %xvalue.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %xvalue.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %unload_xattr_datum.exit, %if.else.if.end25_crit_edge, %if.then14
  %33 = ptrtoint ptr %xdatum_mem_usage to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xdatum_mem_usage, align 4
  %cmp27.not = icmp ugt i32 %34, %div
  br i1 %cmp27.not, label %if.end25.for.cond8_crit_edge, label %if.end25.do.end_crit_edge

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end25.for.cond8_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond8

for.end:                                          ; preds = %for.cond8
  %add = add i32 %8, 1
  %rem = srem i32 %add, 57
  store i32 %rem, ptr @reclaim_xattr_datum.index, align 4
  %inc = add nuw nsw i32 %count.067, 1
  %exitcond.not = icmp eq i32 %inc, 57
  br i1 %exitcond.not, label %for.end.do.end_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %if.end25.do.end_crit_edge
  %35 = tail call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid.i, align 8
  %41 = ptrtoint ptr %xdatum_mem_usage to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xdatum_mem_usage, align 4
  %sub = sub i32 %3, %42
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %40, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %42, i32 noundef %sub) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_add_physical_node_ref(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_xattr_ref() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_writev(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @jffs2_init_xattr_subsystem.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/jffs2/xattr.c", i32 718, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/jffs2/xattr.c", i32 882, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @jffs2_build_xattr_subsystem._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @jffs2_build_xattr_subsystem._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @jffs2_xattr_handlers, !10, !"jffs2_xattr_handlers", i1 false, i1 false}
!10 = !{!"../fs/jffs2/xattr.c", i32 918, i32 29}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/jffs2/xattr.c", i32 1112, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @do_jffs2_setxattr._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @do_jffs2_setxattr._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @do_jffs2_setxattr._entry.6, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../fs/jffs2/xattr.c", i32 1183, i32 3}
!18 = !{ptr @do_jffs2_setxattr._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jffs2/xattr.c", i32 1241, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @jffs2_garbage_collect_xattr_datum._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @jffs2_garbage_collect_xattr_datum._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jffs2/xattr.c", i32 1274, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @jffs2_garbage_collect_xattr_ref._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @jffs2_garbage_collect_xattr_ref._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jffs2/xattr.c", i32 461, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @verify_xattr_ref._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @verify_xattr_ref._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/xattr.c", i32 468, i32 3}
!36 = !{ptr @verify_xattr_ref._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @verify_xattr_ref._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jffs2/xattr.c", i32 475, i32 3}
!40 = !{ptr @verify_xattr_ref._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @verify_xattr_ref._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/jffs2/xattr.c", i32 224, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @do_load_xattr_datum._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @do_load_xattr_datum._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/jffs2/xattr.c", i32 233, i32 3}
!49 = !{ptr @do_load_xattr_datum._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @do_load_xattr_datum._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @reclaim_xattr_datum.index, !52, !"index", i1 false, i1 false}
!52 = !{!"../fs/jffs2/xattr.c", i32 107, i32 13}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/jffs2/xattr.c", i32 128, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @reclaim_xattr_datum._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @reclaim_xattr_datum._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/jffs2/xattr.c", i32 533, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @save_xattr_ref._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @save_xattr_ref._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/jffs2/xattr.c", i32 319, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @save_xattr_datum._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @save_xattr_datum._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/jffs2/xattr.c", i32 150, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @do_verify_xattr_datum._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @do_verify_xattr_datum._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @do_verify_xattr_datum._entry.33, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../fs/jffs2/xattr.c", i32 156, i32 3}
!75 = !{ptr @do_verify_xattr_datum._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/jffs2/xattr.c", i32 167, i32 3}
!78 = !{ptr @do_verify_xattr_datum._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @do_verify_xattr_datum._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148335470}
!91 = !{i64 2148250203, i64 2148250235, i64 2148250264, i64 2148250298, i64 2148250329, i64 2148250352}
!92 = !{i64 2148335699}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2154539038, i64 2154539519, i64 2154539075, i64 2154539131, i64 2154539165, i64 2154539189, i64 2154539230, i64 2154539251, i64 2154539279, i64 2154539313}
!95 = !{!"auto-init"}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2154540715, i64 2154541196, i64 2154540752, i64 2154540808, i64 2154540842, i64 2154540866, i64 2154540907, i64 2154540928, i64 2154540956, i64 2154540990}
!98 = !{i64 2154515370, i64 2154515851, i64 2154515407, i64 2154515463, i64 2154515497, i64 2154515521, i64 2154515562, i64 2154515583, i64 2154515611, i64 2154515645}
!99 = !{i64 2148247018, i64 2148247044, i64 2148247073, i64 2148247107, i64 2148247138, i64 2148247161}
!100 = !{i64 2154557205, i64 2154557686, i64 2154557242, i64 2154557298, i64 2154557332, i64 2154557356, i64 2154557397, i64 2154557418, i64 2154557446, i64 2154557480}
!101 = !{i64 2154479951, i64 2154480432, i64 2154479988, i64 2154480044, i64 2154480078, i64 2154480102, i64 2154480143, i64 2154480164, i64 2154480192, i64 2154480226}
!102 = !{i64 2154469072, i64 2154469553, i64 2154469109, i64 2154469165, i64 2154469199, i64 2154469223, i64 2154469264, i64 2154469285, i64 2154469313, i64 2154469347}
!103 = !{i64 2154470667, i64 2154471148, i64 2154470704, i64 2154470760, i64 2154470794, i64 2154470818, i64 2154470859, i64 2154470880, i64 2154470908, i64 2154470942}
!104 = !{i64 2154560227, i64 2154560709, i64 2154560264, i64 2154560320, i64 2154560354, i64 2154560378, i64 2154560419, i64 2154560440, i64 2154560468, i64 2154560502}
!105 = !{i64 2154494038, i64 2154494519, i64 2154494075, i64 2154494131, i64 2154494165, i64 2154494189, i64 2154494230, i64 2154494251, i64 2154494279, i64 2154494313}
!106 = !{i64 2154481664, i64 2154482145, i64 2154481701, i64 2154481757, i64 2154481791, i64 2154481815, i64 2154481856, i64 2154481877, i64 2154481905, i64 2154481939}
!107 = !{i64 2154483287, i64 2154483768, i64 2154483324, i64 2154483380, i64 2154483414, i64 2154483438, i64 2154483479, i64 2154483500, i64 2154483528, i64 2154483562}
!108 = !{i64 2154572373, i64 2154572855, i64 2154572410, i64 2154572466, i64 2154572500, i64 2154572524, i64 2154572565, i64 2154572586, i64 2154572614, i64 2154572648}
