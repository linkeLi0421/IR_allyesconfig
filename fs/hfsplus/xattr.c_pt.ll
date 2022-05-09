; ModuleID = '/llk/IR_all_yes/fs/hfsplus/xattr.c_pt.bc'
source_filename = "../fs/hfsplus/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.hfsplus_cat_entry = type { %struct.hfsplus_cat_file, [272 x i8] }
%struct.hfsplus_cat_file = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.84, i32, i32, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_perm = type { i32, i32, i8, i8, i16, i32 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { %struct.FInfo, %struct.FXInfo }
%struct.FInfo = type { i32, i32, i16, %struct.hfsp_point, i16 }
%struct.hfsp_point = type { i16, i16 }
%struct.FXInfo = type { i16, [8 x i8], i16, i32 }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfsplus_extent = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfsplus_cat_folder = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.81, i32, i32 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.DInfo, %struct.DXInfo }
%struct.DInfo = type { %struct.hfsp_rect, i16, %struct.hfsp_point, i16 }
%struct.hfsp_rect = type { i16, i16, i16, i16 }
%struct.DXInfo = type { %struct.hfsp_point, i32, i16, i16, i32 }
%struct.hfs_bnode_desc = type <{ i32, i32, i8, i8, i16, i16 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.17, %union.anon.61, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.hfsplus_attr_inline_data = type <{ i32, i32, [6 x i8], i16, [3802 x i8] }>
%struct.hfsplus_attr_key = type { i16, i16, i32, i32, %struct.hfsplus_attr_unistr }
%struct.hfsplus_attr_unistr = type { i16, [127 x i16] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }

@hfsplus_xattr_osx_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.40, i32 0, ptr null, ptr @hfsplus_osx_getxattr, ptr @hfsplus_osx_setxattr }, [40 x i8] zeroinitializer }, align 32
@hfsplus_xattr_user_handler = external dso_local constant %struct.xattr_handler, align 4
@hfsplus_xattr_trusted_handler = external dso_local constant %struct.xattr_handler, align 4
@hfsplus_xattr_security_handler = external dso_local constant %struct.xattr_handler, align 4
@hfsplus_xattr_handlers = dso_local global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @hfsplus_xattr_osx_handler, ptr @hfsplus_xattr_user_handler, ptr @hfsplus_xattr_trusted_handler, ptr @hfsplus_xattr_security_handler, ptr null], [44 x i8] zeroinitializer }, align 32
@__hfsplus_setxattr._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hfsplus: can't init xattr find struct\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__hfsplus_setxattr\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/hfsplus/xattr.c\00", [45 x i8] zeroinitializer }, align 32
@__hfsplus_setxattr._entry_ptr = internal global ptr @__hfsplus_setxattr._entry, section ".printk_index", align 4
@__hfsplus_setxattr._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, align 1
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfsplus: catalog searching failed\0A\00", [59 x i8] zeroinitializer }, align 32
@__hfsplus_setxattr._entry_ptr.5 = internal global ptr @__hfsplus_setxattr._entry.3, section ".printk_index", align 4
@__hfsplus_setxattr._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 291, ptr null, ptr null }, align 1
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013hfsplus: xattr exists yet\0A\00", [35 x i8] zeroinitializer }, align 32
@__hfsplus_setxattr._entry_ptr.8 = internal global ptr @__hfsplus_setxattr._entry.6, section ".printk_index", align 4
@__hfsplus_setxattr._entry.9 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 338, ptr null, ptr null }, align 1
@__hfsplus_setxattr._entry_ptr.10 = internal global ptr @__hfsplus_setxattr._entry.9, section ".printk_index", align 4
@__hfsplus_setxattr._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, align 1
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013hfsplus: cannot replace xattr\0A\00", [63 x i8] zeroinitializer }, align 32
@__hfsplus_setxattr._entry_ptr.13 = internal global ptr @__hfsplus_setxattr._entry.11, section ".printk_index", align 4
@__hfsplus_setxattr._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 383, ptr null, ptr null }, align 1
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013hfsplus: invalid catalog entry type\0A\00", [57 x i8] zeroinitializer }, align 32
@__hfsplus_setxattr._entry_ptr.16 = internal global ptr @__hfsplus_setxattr._entry.14, section ".printk_index", align 4
@__hfsplus_getxattr._entry = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 512, ptr null, ptr null }, align 1
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013hfsplus: can't allocate xattr entry\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__hfsplus_getxattr\00", [45 x i8] zeroinitializer }, align 32
@__hfsplus_getxattr._entry_ptr = internal global ptr @__hfsplus_getxattr._entry, section ".printk_index", align 4
@__hfsplus_getxattr._entry.19 = internal constant %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 518, ptr null, ptr null }, align 1
@__hfsplus_getxattr._entry_ptr.20 = internal global ptr @__hfsplus_getxattr._entry.19, section ".printk_index", align 4
@__hfsplus_getxattr._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 527, ptr null, ptr null }, align 1
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfsplus: xattr searching failed\0A\00", [61 x i8] zeroinitializer }, align 32
@__hfsplus_getxattr._entry_ptr.23 = internal global ptr @__hfsplus_getxattr._entry.21, section ".printk_index", align 4
@__hfsplus_getxattr._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 540, ptr null, ptr null }, align 1
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfsplus: invalid xattr record size\0A\00", [58 x i8] zeroinitializer }, align 32
@__hfsplus_getxattr._entry_ptr.26 = internal global ptr @__hfsplus_getxattr._entry.24, section ".printk_index", align 4
@__hfsplus_getxattr._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.2, i32 546, ptr null, ptr null }, align 1
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013hfsplus: only inline data xattr are supported\0A\00", [47 x i8] zeroinitializer }, align 32
@__hfsplus_getxattr._entry_ptr.29 = internal global ptr @__hfsplus_getxattr._entry.27, section ".printk_index", align 4
@__hfsplus_getxattr._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.18, ptr @.str.2, i32 550, ptr null, ptr null }, align 1
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013hfsplus: invalid xattr record\0A\00", [63 x i8] zeroinitializer }, align 32
@__hfsplus_getxattr._entry_ptr.32 = internal global ptr @__hfsplus_getxattr._entry.30, section ".printk_index", align 4
@hfsplus_listxattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.33, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfsplus_listxattr\00", [46 x i8] zeroinitializer }, align 32
@hfsplus_listxattr._entry_ptr = internal global ptr @hfsplus_listxattr._entry, section ".printk_index", align 4
@hfsplus_listxattr._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hfsplus: invalid xattr key length: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@hfsplus_listxattr._entry_ptr.36 = internal global ptr @hfsplus_listxattr._entry.34, section ".printk_index", align 4
@hfsplus_listxattr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfsplus: unicode conversion failed\0A\00", [58 x i8] zeroinitializer }, align 32
@hfsplus_listxattr._entry_ptr.39 = internal global ptr @hfsplus_listxattr._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"osx.\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"com.apple.FinderInfo\00", [43 x i8] zeroinitializer }, align 32
@hfsplus_create_attributes_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hfsplus: failed to load attributes file\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hfsplus_create_attributes_file\00", [33 x i8] zeroinitializer }, align 32
@hfsplus_create_attributes_file._entry_ptr = internal global ptr @hfsplus_create_attributes_file._entry, section ".printk_index", align 4
@hfsplus_create_attributes_file._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013hfsplus: failed to extend attributes file\0A\00", [51 x i8] zeroinitializer }, align 32
@hfsplus_create_attributes_file._entry_ptr.46 = internal global ptr @hfsplus_create_attributes_file._entry.44, section ".printk_index", align 4
@hfsplus_create_attributes_file._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfsplus_create_attributes_file._entry_ptr.48 = internal global ptr @hfsplus_create_attributes_file._entry.47, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"com.apple.system.Security\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hfsplus_getxattr_finder_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.51, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hfsplus_getxattr_finder_info\00", [35 x i8] zeroinitializer }, align 32
@hfsplus_getxattr_finder_info._entry_ptr = internal global ptr @hfsplus_getxattr_finder_info._entry, section ".printk_index", align 4
@hfsplus_listxattr_finder_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.52, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hfsplus_listxattr_finder_info\00", [34 x i8] zeroinitializer }, align 32
@hfsplus_listxattr_finder_info._entry_ptr = internal global ptr @hfsplus_listxattr_finder_info._entry, section ".printk_index", align 4
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"system.\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@hfsplus_removexattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.57, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hfsplus_removexattr\00", [44 x i8] zeroinitializer }, align 32
@hfsplus_removexattr._entry_ptr = internal global ptr @hfsplus_removexattr._entry, section ".printk_index", align 4
@hfsplus_removexattr._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.57, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfsplus_removexattr._entry_ptr.59 = internal global ptr @hfsplus_removexattr._entry.58, section ".printk_index", align 4
@hfsplus_removexattr._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.57, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfsplus_removexattr._entry_ptr.61 = internal global ptr @hfsplus_removexattr._entry.60, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"hfsplus_xattr_osx_handler\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 881, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"hfsplus_xattr_handlers\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 16, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 279, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 285, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 291, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 350, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 383, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 512, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 527, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 540, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 546, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 550, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 698, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 724, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 739, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 882, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 27, i32 24 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 171, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 196, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 239, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 717, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 36, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 454, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 620, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 601, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 44, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 45, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 46, i32 20 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 784, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 790, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private constant [22 x i8] c"../fs/hfsplus/xattr.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 829, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__hfsplus_getxattr._entry, ptr @__hfsplus_getxattr._entry.19, ptr @__hfsplus_getxattr._entry.21, ptr @__hfsplus_getxattr._entry.24, ptr @__hfsplus_getxattr._entry.27, ptr @__hfsplus_getxattr._entry.30, ptr @__hfsplus_getxattr._entry_ptr, ptr @__hfsplus_getxattr._entry_ptr.20, ptr @__hfsplus_getxattr._entry_ptr.23, ptr @__hfsplus_getxattr._entry_ptr.26, ptr @__hfsplus_getxattr._entry_ptr.29, ptr @__hfsplus_getxattr._entry_ptr.32, ptr @__hfsplus_setxattr._entry, ptr @__hfsplus_setxattr._entry.11, ptr @__hfsplus_setxattr._entry.14, ptr @__hfsplus_setxattr._entry.3, ptr @__hfsplus_setxattr._entry.6, ptr @__hfsplus_setxattr._entry.9, ptr @__hfsplus_setxattr._entry_ptr, ptr @__hfsplus_setxattr._entry_ptr.10, ptr @__hfsplus_setxattr._entry_ptr.13, ptr @__hfsplus_setxattr._entry_ptr.16, ptr @__hfsplus_setxattr._entry_ptr.5, ptr @__hfsplus_setxattr._entry_ptr.8, ptr @hfsplus_create_attributes_file._entry, ptr @hfsplus_create_attributes_file._entry.44, ptr @hfsplus_create_attributes_file._entry.47, ptr @hfsplus_create_attributes_file._entry_ptr, ptr @hfsplus_create_attributes_file._entry_ptr.46, ptr @hfsplus_create_attributes_file._entry_ptr.48, ptr @hfsplus_getxattr_finder_info._entry, ptr @hfsplus_getxattr_finder_info._entry_ptr, ptr @hfsplus_listxattr._entry, ptr @hfsplus_listxattr._entry.34, ptr @hfsplus_listxattr._entry.37, ptr @hfsplus_listxattr._entry_ptr, ptr @hfsplus_listxattr._entry_ptr.36, ptr @hfsplus_listxattr._entry_ptr.39, ptr @hfsplus_listxattr_finder_info._entry, ptr @hfsplus_listxattr_finder_info._entry_ptr, ptr @hfsplus_removexattr._entry, ptr @hfsplus_removexattr._entry.58, ptr @hfsplus_removexattr._entry.60, ptr @hfsplus_removexattr._entry_ptr, ptr @hfsplus_removexattr._entry_ptr.59, ptr @hfsplus_removexattr._entry_ptr.61, ptr @hfsplus_xattr_osx_handler, ptr @hfsplus_xattr_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_xattr_osx_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_xattr_handlers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_listxattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_listxattr._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_listxattr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_create_attributes_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_create_attributes_file._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_create_attributes_file._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_getxattr_finder_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_listxattr_finder_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_removexattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_removexattr._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_removexattr._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hfsplus_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %cat_fd.i = alloca %struct.hfs_find_data, align 4
  %cat_fd = alloca %struct.hfs_find_data, align 4
  %entry1 = alloca %union.hfsplus_cat_entry, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cat_fd) #12
  %0 = call ptr @memset(ptr %cat_fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #12
  %1 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 -32768, label %entry.lor.lhs.false_crit_edge
    i16 16384, label %entry.lor.lhs.false_crit_edge248
  ]

entry.lor.lhs.false_crit_edge248:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge248
  %flags8 = getelementptr i8, ptr %inode, i32 -84
  %6 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags8, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp10 = icmp eq ptr %value, null
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cat_fd.i) #12
  %8 = call ptr @memset(ptr %cat_fd.i, i32 255, i32 36)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  %attr_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %attr_tree.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attr_tree.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then12.hfsplus_removexattr.exit_crit_edge, label %if.end.i

if.then12.hfsplus_removexattr.exit_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %hfsplus_removexattr.exit

if.end.i:                                         ; preds = %if.then12
  %tobool.not.i.i = icmp eq ptr %name, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end4.i_crit_edge, label %strcmp_xattr_finder_info.exit.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

strcmp_xattr_finder_info.exit.i:                  ; preds = %if.end.i
  %call.i.i = tail call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull dereferenceable(21) @.str.41, i32 noundef 21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %strcmp_xattr_finder_info.exit.i.hfsplus_removexattr.exit_crit_edge, label %strcmp_xattr_finder_info.exit.i.if.end4.i_crit_edge

strcmp_xattr_finder_info.exit.i.if.end4.i_crit_edge: ; preds = %strcmp_xattr_finder_info.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

strcmp_xattr_finder_info.exit.i.hfsplus_removexattr.exit_crit_edge: ; preds = %strcmp_xattr_finder_info.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hfsplus_removexattr.exit

if.end4.i:                                        ; preds = %strcmp_xattr_finder_info.exit.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %cat_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %cat_tree.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cat_tree.i, align 4
  %call7.i = call i32 @hfsplus_find_init(ptr noundef %16, ptr noundef nonnull %cat_fd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %hfsplus_removexattr.exit

if.end11.i:                                       ; preds = %if.end4.i
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino.i, align 8
  %call13.i = call i32 @hfsplus_find_cat(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %cat_fd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end21.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %end_removexattr.i

if.end21.i:                                       ; preds = %if.end11.i
  %call22.i = call i32 @hfsplus_delete_attr(ptr noundef %inode, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.end_removexattr.i_crit_edge

if.end21.i.end_removexattr.i_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_removexattr.i

if.end25.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i, label %if.end25.i.strcmp_xattr_acl.exit.i_crit_edge, label %if.then.i119.i

if.end25.i.strcmp_xattr_acl.exit.i_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %strcmp_xattr_acl.exit.i

if.then.i119.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i118.i = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull dereferenceable(26) @.str.50, i32 noundef 26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %phi.cmp.i = icmp eq i32 %call.i118.i, 0
  br label %strcmp_xattr_acl.exit.i

strcmp_xattr_acl.exit.i:                          ; preds = %if.then.i119.i, %if.end25.i.strcmp_xattr_acl.exit.i_crit_edge
  %retval.0.i120.i = phi i1 [ %phi.cmp.i, %if.then.i119.i ], [ false, %if.end25.i.strcmp_xattr_acl.exit.i_crit_edge ]
  %call28.i = call i32 @hfsplus_attr_exists(ptr noundef %inode, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  %brmerge.i = select i1 %retval.0.i120.i, i1 true, i1 %tobool29.not.i
  br i1 %brmerge.i, label %if.end35.i, label %strcmp_xattr_acl.exit.i.end_removexattr.i_crit_edge

strcmp_xattr_acl.exit.i.end_removexattr.i_crit_edge: ; preds = %strcmp_xattr_acl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_removexattr.i

if.end35.i:                                       ; preds = %strcmp_xattr_acl.exit.i
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %cat_fd.i, i32 0, i32 3
  %21 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bnode.i, align 4
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %cat_fd.i, i32 0, i32 7
  %23 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entryoffset.i, align 4
  %call36.i = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %22, i32 noundef %24) #12
  %25 = zext i16 %call36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %call36.i, label %do.end82.i [
    i16 1, label %if.then38.i
    i16 2, label %if.then59.i
  ]

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bnode.i, align 4
  %28 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entryoffset.i, align 4
  %add.i = add i32 %29, 2
  %call41.i = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %27, i32 noundef %add.i) #12
  %30 = and i16 %call41.i, -9
  %spec.select.i = select i1 %retval.0.i120.i, i16 %30, i16 %call41.i
  %31 = and i16 %spec.select.i, -5
  %flags.1.i = select i1 %tobool29.not.i, i16 %31, i16 %spec.select.i
  %32 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bnode.i, align 4
  %34 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entryoffset.i, align 4
  %add55.i = add i32 %35, 2
  call void @hfsplus_bnode_write_u16(ptr noundef %33, i32 noundef %add55.i, i16 noundef zeroext %flags.1.i) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags8) #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #12
  br label %end_removexattr.i

if.then59.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bnode.i, align 4
  %38 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entryoffset.i, align 4
  %add62.i = add i32 %39, 2
  %call63.i = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %37, i32 noundef %add62.i) #12
  %40 = and i16 %call63.i, -9
  %spec.select115.i = select i1 %retval.0.i120.i, i16 %40, i16 %call63.i
  %41 = and i16 %spec.select115.i, -5
  %flags.3.i = select i1 %tobool29.not.i, i16 %41, i16 %spec.select115.i
  %42 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bnode.i, align 4
  %44 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %entryoffset.i, align 4
  %add78.i = add i32 %45, 2
  call void @hfsplus_bnode_write_u16(ptr noundef %43, i32 noundef %add78.i, i16 noundef zeroext %flags.3.i) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags8) #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #12
  br label %end_removexattr.i

do.end82.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %end_removexattr.i

end_removexattr.i:                                ; preds = %do.end82.i, %if.then59.i, %if.then38.i, %strcmp_xattr_acl.exit.i.end_removexattr.i_crit_edge, %if.end21.i.end_removexattr.i_crit_edge, %do.end18.i
  %err.0.i = phi i32 [ %call13.i, %do.end18.i ], [ %call22.i, %if.end21.i.end_removexattr.i_crit_edge ], [ 0, %if.then38.i ], [ 0, %if.then59.i ], [ -5, %do.end82.i ], [ 0, %strcmp_xattr_acl.exit.i.end_removexattr.i_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %cat_fd.i) #12
  br label %hfsplus_removexattr.exit

hfsplus_removexattr.exit:                         ; preds = %end_removexattr.i, %do.end.i, %strcmp_xattr_finder_info.exit.i.hfsplus_removexattr.exit_crit_edge, %if.then12.hfsplus_removexattr.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %do.end.i ], [ %err.0.i, %end_removexattr.i ], [ -95, %if.then12.hfsplus_removexattr.exit_crit_edge ], [ -95, %strcmp_xattr_finder_info.exit.i.hfsplus_removexattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cat_fd.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cat_tree, align 4
  %call16 = call i32 @hfsplus_find_init(ptr noundef %51, ptr noundef nonnull %cat_fd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %54 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_ino, align 8
  %call22 = call i32 @hfsplus_find_cat(ptr noundef %53, i32 noundef %55, ptr noundef nonnull %cat_fd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %end_setxattr

if.end30:                                         ; preds = %if.end20
  %tobool.not.i226 = icmp eq ptr %name, null
  br i1 %tobool.not.i226, label %if.end30.if.end72_crit_edge, label %strcmp_xattr_finder_info.exit

if.end30.if.end72_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

strcmp_xattr_finder_info.exit:                    ; preds = %if.end30
  %call.i = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull dereferenceable(21) @.str.41, i32 noundef 21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.then33, label %strcmp_xattr_finder_info.exit.if.end72_crit_edge

strcmp_xattr_finder_info.exit.if.end72_crit_edge: ; preds = %strcmp_xattr_finder_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then33:                                        ; preds = %strcmp_xattr_finder_info.exit
  %and34 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %end_setxattr

if.end42:                                         ; preds = %if.then33
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %cat_fd, i32 0, i32 3
  %56 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %cat_fd, i32 0, i32 7
  %58 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %57, ptr noundef nonnull %entry1, i32 noundef %59, i32 noundef 520) #12
  %60 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %entry1, align 2
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %61, label %if.end42.end_setxattr_crit_edge [
    i16 1, label %if.then46
    i16 2, label %if.then59
  ]

if.end42.end_setxattr_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_setxattr

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp48 = icmp eq i32 %size, 32
  br i1 %cmp48, label %if.then50, label %if.then46.end_setxattr_crit_edge

if.then46.end_setxattr_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_setxattr

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %63 = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 10
  %64 = call ptr @memcpy(ptr %63, ptr %value, i32 32)
  %65 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bnode, align 4
  %67 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_write(ptr noundef %66, ptr noundef nonnull %entry1, i32 noundef %68, i32 noundef 88) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags8) #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #12
  br label %end_setxattr

if.then59:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp61 = icmp eq i32 %size, 32
  br i1 %cmp61, label %if.then63, label %if.then59.end_setxattr_crit_edge

if.then59.end_setxattr_crit_edge:                 ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_setxattr

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %69 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10
  %70 = call ptr @memcpy(ptr %69, ptr %value, i32 32)
  %71 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bnode, align 4
  %73 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_write(ptr noundef %72, ptr noundef nonnull %entry1, i32 noundef %74, i32 noundef 248) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags8) #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #12
  br label %end_setxattr

if.end72:                                         ; preds = %strcmp_xattr_finder_info.exit.if.end72_crit_edge, %if.end30.if.end72_crit_edge
  %75 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i229 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 33
  %77 = ptrtoint ptr %s_fs_info.i229 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i229, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %attr_tree, align 8
  %tobool75.not = icmp eq ptr %80, null
  br i1 %tobool75.not, label %if.then76, label %if.end72.if.end84_crit_edge

if.end72.if.end84_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then76:                                        ; preds = %if.end72
  %call78 = call fastcc i32 @hfsplus_create_attributes_file(ptr noundef %76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then76.if.end84_crit_edge, label %if.then76.end_setxattr_crit_edge, !prof !121

if.then76.end_setxattr_crit_edge:                 ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_setxattr

if.then76.if.end84_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.end84:                                         ; preds = %if.then76.if.end84_crit_edge, %if.end72.if.end84_crit_edge
  %call85 = call i32 @hfsplus_attr_exists(ptr noundef %inode, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.else105, label %if.then87

if.then87:                                        ; preds = %if.end84
  %and88 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end96, label %do.end93

do.end93:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %end_setxattr

if.end96:                                         ; preds = %if.then87
  %call97 = call i32 @hfsplus_delete_attr(ptr noundef %inode, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.end_setxattr_crit_edge

if.end96.end_setxattr_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_setxattr

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @hfsplus_create_attr(ptr noundef %inode, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end100.if.end119_crit_edge, label %if.end100.end_setxattr_crit_edge

if.end100.end_setxattr_crit_edge:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_setxattr

if.end100.if.end119_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.else105:                                       ; preds = %if.end84
  %and106 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end114, label %do.end111

do.end111:                                        ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #14
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %end_setxattr

if.end114:                                        ; preds = %if.else105
  %call115 = call i32 @hfsplus_create_attr(ptr noundef %inode, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end114.if.end119_crit_edge, label %if.end114.end_setxattr_crit_edge

if.end114.end_setxattr_crit_edge:                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_setxattr

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.end119:                                        ; preds = %if.end114.if.end119_crit_edge, %if.end100.if.end119_crit_edge
  %bnode120 = getelementptr inbounds %struct.hfs_find_data, ptr %cat_fd, i32 0, i32 3
  %81 = ptrtoint ptr %bnode120 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bnode120, align 4
  %entryoffset121 = getelementptr inbounds %struct.hfs_find_data, ptr %cat_fd, i32 0, i32 7
  %83 = ptrtoint ptr %entryoffset121 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %entryoffset121, align 4
  %call122 = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %82, i32 noundef %84) #12
  %85 = zext i16 %call122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %call122, label %do.end167 [
    i16 1, label %if.then126
    i16 2, label %if.then146
  ]

if.then126:                                       ; preds = %if.end119
  %86 = ptrtoint ptr %bnode120 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bnode120, align 4
  %88 = ptrtoint ptr %entryoffset121 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %entryoffset121, align 4
  %add = add i32 %89, 2
  %call129 = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %87, i32 noundef %add) #12
  %90 = or i16 %call129, 4
  br i1 %tobool.not.i226, label %if.then126.strcmp_xattr_acl.exit.thread_crit_edge, label %strcmp_xattr_acl.exit

if.then126.strcmp_xattr_acl.exit.thread_crit_edge: ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  br label %strcmp_xattr_acl.exit.thread

strcmp_xattr_acl.exit:                            ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  %call.i231 = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull dereferenceable(26) @.str.50, i32 noundef 26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool133.not = icmp eq i32 %call.i231, 0
  %91 = or i16 %call129, 12
  %spec.select = select i1 %tobool133.not, i16 %91, i16 %90
  br label %strcmp_xattr_acl.exit.thread

strcmp_xattr_acl.exit.thread:                     ; preds = %strcmp_xattr_acl.exit, %if.then126.strcmp_xattr_acl.exit.thread_crit_edge
  %92 = phi i16 [ %90, %if.then126.strcmp_xattr_acl.exit.thread_crit_edge ], [ %spec.select, %strcmp_xattr_acl.exit ]
  %93 = ptrtoint ptr %bnode120 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bnode120, align 4
  %95 = ptrtoint ptr %entryoffset121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %entryoffset121, align 4
  %add141 = add i32 %96, 2
  call void @hfsplus_bnode_write_u16(ptr noundef %94, i32 noundef %add141, i16 noundef zeroext %92) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags8) #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #12
  br label %end_setxattr

if.then146:                                       ; preds = %if.end119
  %97 = ptrtoint ptr %bnode120 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bnode120, align 4
  %99 = ptrtoint ptr %entryoffset121 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %entryoffset121, align 4
  %add149 = add i32 %100, 2
  %call150 = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %98, i32 noundef %add149) #12
  %101 = or i16 %call150, 4
  br i1 %tobool.not.i226, label %if.then146.strcmp_xattr_acl.exit239.thread_crit_edge, label %strcmp_xattr_acl.exit239

if.then146.strcmp_xattr_acl.exit239.thread_crit_edge: ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  br label %strcmp_xattr_acl.exit239.thread

strcmp_xattr_acl.exit239:                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  %call.i236 = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull dereferenceable(26) @.str.50, i32 noundef 26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %tobool155.not = icmp eq i32 %call.i236, 0
  %102 = or i16 %call150, 12
  %spec.select247 = select i1 %tobool155.not, i16 %102, i16 %101
  br label %strcmp_xattr_acl.exit239.thread

strcmp_xattr_acl.exit239.thread:                  ; preds = %strcmp_xattr_acl.exit239, %if.then146.strcmp_xattr_acl.exit239.thread_crit_edge
  %103 = phi i16 [ %101, %if.then146.strcmp_xattr_acl.exit239.thread_crit_edge ], [ %spec.select247, %strcmp_xattr_acl.exit239 ]
  %104 = ptrtoint ptr %bnode120 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bnode120, align 4
  %106 = ptrtoint ptr %entryoffset121 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %entryoffset121, align 4
  %add163 = add i32 %107, 2
  call void @hfsplus_bnode_write_u16(ptr noundef %105, i32 noundef %add163, i16 noundef zeroext %103) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags8) #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #12
  br label %end_setxattr

do.end167:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %end_setxattr

end_setxattr:                                     ; preds = %do.end167, %strcmp_xattr_acl.exit239.thread, %strcmp_xattr_acl.exit.thread, %if.end114.end_setxattr_crit_edge, %do.end111, %if.end100.end_setxattr_crit_edge, %if.end96.end_setxattr_crit_edge, %do.end93, %if.then76.end_setxattr_crit_edge, %if.then63, %if.then59.end_setxattr_crit_edge, %if.then50, %if.then46.end_setxattr_crit_edge, %if.end42.end_setxattr_crit_edge, %do.end39, %do.end27
  %err.1 = phi i32 [ %call22, %do.end27 ], [ -95, %do.end93 ], [ %call97, %if.end96.end_setxattr_crit_edge ], [ %call101, %if.end100.end_setxattr_crit_edge ], [ 0, %strcmp_xattr_acl.exit.thread ], [ 0, %strcmp_xattr_acl.exit239.thread ], [ -5, %do.end167 ], [ -95, %do.end111 ], [ %call115, %if.end114.end_setxattr_crit_edge ], [ %call78, %if.then76.end_setxattr_crit_edge ], [ -95, %do.end39 ], [ 0, %if.then50 ], [ 0, %if.then63 ], [ -34, %if.then46.end_setxattr_crit_edge ], [ -34, %if.then59.end_setxattr_crit_edge ], [ -95, %if.end42.end_setxattr_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %cat_fd) #12
  br label %cleanup

cleanup:                                          ; preds = %end_setxattr, %do.end, %hfsplus_removexattr.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %hfsplus_removexattr.exit ], [ %call16, %do.end ], [ %err.1, %end_setxattr ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cat_fd) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_cat(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfsplus_create_attributes_file(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree_state = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 7
  br label %check_attr_tree_state_again

check_attr_tree_state_again:                      ; preds = %atomic_cmpxchg.exit.check_attr_tree_state_again_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %attr_tree_state, i32 noundef 4) #12
  %2 = ptrtoint ptr %attr_tree_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %attr_tree_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %do.body7 [
    i32 0, label %sw.bb
    i32 1, label %cleanup116.loopexit
    i32 2, label %cleanup116.loopexit230
    i32 3, label %check_attr_tree_state_again.cleanup116_crit_edge
  ]

check_attr_tree_state_again.cleanup116_crit_edge: ; preds = %check_attr_tree_state_again
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

sw.bb:                                            ; preds = %check_attr_tree_state_again
  %call.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_tree_state, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %attr_tree_state, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %sw.bb
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %attr_tree_state, ptr %attr_tree_state, i32 0, i32 1, ptr elementtype(i32) %attr_tree_state) #12, !srcloc !123
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !124
  %cmp.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp.not, label %sw.epilog, label %atomic_cmpxchg.exit.check_attr_tree_state_again_crit_edge

atomic_cmpxchg.exit.check_attr_tree_state_again_crit_edge: ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_attr_tree_state_again

do.body7:                                         ; preds = %check_attr_tree_state_again
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 166, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

sw.epilog:                                        ; preds = %atomic_cmpxchg.exit
  %call13 = tail call ptr @hfsplus_iget(ptr noundef %sb, i32 noundef 8) #12
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %do.body22

do.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup116

do.body22:                                        ; preds = %sw.epilog
  %call23 = tail call fastcc i64 @i_size_read(ptr noundef %call13)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call23)
  %cmp24.not = icmp eq i64 %call23, 0
  br i1 %cmp24.not, label %do.end35, label %do.body27, !prof !121

do.body27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

do.end35:                                         ; preds = %do.body22
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize, align 16
  %sect_count = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %sect_count to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sect_count, align 8
  %call37 = tail call i32 @hfsplus_calc_btree_clump_size(i32 noundef %8, i32 noundef 8192, i64 noundef %10, i32 noundef 8) #12
  %extents_lock = getelementptr i8, ptr %call13, i32 -188
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #12
  %alloc_blksz_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alloc_blksz_shift, align 8
  %shr = lshr i32 %call37, %12
  %clump_blocks = getelementptr i8, ptr %call13, i32 -336
  %13 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %clump_blocks, align 8
  tail call void @mutex_unlock(ptr noundef %extents_lock) #12
  %free_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_blocks, align 8
  %16 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clump_blocks, align 8
  %shl = shl i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %shl)
  %cmp40.not = icmp ugt i32 %15, %shl
  br i1 %cmp40.not, label %while.cond.preheader, label %end_attr_file_creation.thread198

while.cond.preheader:                             ; preds = %do.end35
  %alloc_blocks = getelementptr i8, ptr %call13, i32 -332
  %18 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alloc_blocks, align 4
  %20 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clump_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp45208 = icmp ult i32 %19, %21
  br i1 %cmp45208, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %i_size = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 14
  %phys_size = getelementptr i8, ptr %call13, i32 -8
  %fs_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 14
  %fs_blocks = getelementptr i8, ptr %call13, i32 -80
  br label %while.body

end_attr_file_creation.thread198:                 ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iput(ptr noundef %call13) #12
  br label %if.then110

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %while.body.lr.ph
  %call47 = tail call i32 @hfsplus_file_extend(ptr noundef %call13, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end61, label %do.end58, !prof !121

do.end58:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #15
  br label %end_attr_file_creation

if.end61:                                         ; preds = %while.body
  %22 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %alloc_blocks, align 4
  %conv63 = zext i32 %23 to i64
  %24 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alloc_blksz_shift, align 8
  %sh_prom = zext i32 %25 to i64
  %shl65 = shl i64 %conv63, %sh_prom
  %26 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shl65, ptr %i_size, align 8
  %27 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shl65, ptr %phys_size, align 8
  %28 = ptrtoint ptr %fs_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fs_shift, align 8
  %shl67 = shl i32 %23, %29
  %conv68 = zext i32 %shl67 to i64
  %30 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv68, ptr %fs_blocks, align 8
  tail call void @inode_set_bytes(ptr noundef %call13, i64 noundef %shl65) #12
  %31 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alloc_blocks, align 4
  %33 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clump_blocks, align 8
  %cmp45 = icmp ult i32 %32, %34
  br i1 %cmp45, label %if.end61.while.body_crit_edge, label %if.end61.while.end_crit_edge

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3392, i32 noundef 8192) #16
  %tobool72.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool72.not, label %end_attr_file_creation.thread, label %if.end74

end_attr_file_creation.thread:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iput(ptr noundef %call13) #12
  br label %if.else112

if.end74:                                         ; preds = %while.end
  %type.i = getelementptr inbounds %struct.hfs_bnode_desc, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %type.i, align 8
  %num_recs.i = getelementptr inbounds %struct.hfs_bnode_desc, ptr %call7.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %num_recs.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 3, ptr %num_recs.i, align 2
  %incdec.ptr.i = getelementptr i8, ptr %call7.i.i, i32 8190
  %38 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 14, ptr %incdec.ptr.i, align 2
  %node_size3.i = getelementptr i8, ptr %call7.i.i, i32 32
  %39 = ptrtoint ptr %node_size3.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 8192, ptr %node_size3.i, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %call13) #12
  %shr.i = lshr i64 %call.i, 13
  %conv188.i = trunc i64 %shr.i to i32
  %node_count.i = getelementptr i8, ptr %call7.i.i, i32 36
  %40 = ptrtoint ptr %node_count.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv188.i, ptr %node_count.i, align 4
  %sub190.i = add i32 %conv188.i, -1
  %free_nodes.i = getelementptr i8, ptr %call7.i.i, i32 40
  %41 = ptrtoint ptr %free_nodes.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub190.i, ptr %free_nodes.i, align 8
  %clump_size191.i = getelementptr i8, ptr %call7.i.i, i32 46
  %42 = ptrtoint ptr %clump_size191.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %call37, ptr %clump_size191.i, align 2
  %attributes.i = getelementptr i8, ptr %call7.i.i, i32 52
  %43 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %attributes.i, align 4
  %or192.i = or i32 %44, 6
  store i32 %or192.i, ptr %attributes.i, align 4
  %max_key_len.i = getelementptr i8, ptr %call7.i.i, i32 34
  %45 = ptrtoint ptr %max_key_len.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 266, ptr %max_key_len.i, align 2
  %incdec.ptr196.i = getelementptr i8, ptr %call7.i.i, i32 8188
  %46 = ptrtoint ptr %incdec.ptr196.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 120, ptr %incdec.ptr196.i, align 4
  %incdec.ptr200.i = getelementptr i8, ptr %call7.i.i, i32 8186
  %47 = ptrtoint ptr %incdec.ptr200.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 248, ptr %incdec.ptr200.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 63488, i32 %conv188.i)
  %cmp207.i = icmp ugt i32 %conv188.i, 63488
  br i1 %cmp207.i, label %if.then209.i, label %if.end74.if.end223.i_crit_edge

if.end74.if.end223.i_crit_edge:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end223.i

if.then209.i:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %leaf_tail.i = getelementptr i8, ptr %call7.i.i, i32 28
  %48 = ptrtoint ptr %leaf_tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %leaf_tail.i, align 4
  %add210.i = add i32 %49, 1
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add210.i, ptr %call7.i.i, align 8
  %add219.i = add i32 %conv188.i, 1887
  %div220.i = udiv i32 %add219.i, 65376
  %add.i.i = sub i32 %sub190.i, %div220.i
  %51 = ptrtoint ptr %free_nodes.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i.i, ptr %free_nodes.i, align 8
  br label %if.end223.i

if.end223.i:                                      ; preds = %if.then209.i, %if.end74.if.end223.i_crit_edge
  %add.ptr225.i = getelementptr i8, ptr %call7.i.i, i32 248
  %52 = ptrtoint ptr %free_nodes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %free_nodes.i, align 8
  %sub228.i = sub i32 %conv188.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub228.i)
  %tobool230.not.i = icmp ult i32 %sub228.i, 8
  br i1 %tobool230.not.i, label %if.end223.i.hfsplus_init_header_node.exit_crit_edge, label %if.then231.i

if.end223.i.hfsplus_init_header_node.exit_crit_edge: ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hfsplus_init_header_node.exit

if.then231.i:                                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #14
  %div2291.i = lshr i32 %sub228.i, 3
  %54 = call ptr @memset(ptr %add.ptr225.i, i32 255, i32 %div2291.i)
  %add.ptr232.i = getelementptr i8, ptr %add.ptr225.i, i32 %div2291.i
  %rem233.i = and i32 %sub228.i, 7
  br label %hfsplus_init_header_node.exit

hfsplus_init_header_node.exit:                    ; preds = %if.then231.i, %if.end223.i.hfsplus_init_header_node.exit_crit_edge
  %bmp.0.i = phi ptr [ %add.ptr232.i, %if.then231.i ], [ %add.ptr225.i, %if.end223.i.hfsplus_init_header_node.exit_crit_edge ]
  %used_nodes.0.i = phi i32 [ %rem233.i, %if.then231.i ], [ %sub228.i, %if.end223.i.hfsplus_init_header_node.exit_crit_edge ]
  %neg236.i = ashr i32 -256, %used_nodes.0.i
  %conv237.i = trunc i32 %neg236.i to i8
  %55 = ptrtoint ptr %bmp.0.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv237.i, ptr %bmp.0.i, align 1
  %incdec.ptr242.i = getelementptr i8, ptr %call7.i.i, i32 8184
  %56 = ptrtoint ptr %incdec.ptr242.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 8184, ptr %incdec.ptr242.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 9
  %57 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_mapping, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hfsplus_init_header_node.exit
  %cmp76 = phi i1 [ true, %hfsplus_init_header_node.exit ], [ false, %for.inc.for.body_crit_edge ]
  %written.0210 = phi i32 [ 0, %hfsplus_init_header_node.exit ], [ 4096, %for.inc.for.body_crit_edge ]
  %index.0209 = phi i32 [ 0, %hfsplus_init_header_node.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i189 = tail call ptr @read_cache_page(ptr noundef %58, i32 noundef %index.0209, ptr noundef null, ptr noundef null) #12
  %cmp.i190 = icmp ugt ptr %call.i189, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %cleanup, label %if.end82

if.end82:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %59 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %59, 512
  %60 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  %64 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i1.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %call.i.i191 = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i189, i32 noundef %or.i) #12
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %written.0210
  %70 = call ptr @memcpy(ptr %call.i.i191, ptr %add.ptr, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i191) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %71 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i1.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 213
  %75 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %76, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %77 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %call94 = tail call zeroext i1 @set_page_dirty(ptr noundef %call.i189) #12
  %81 = getelementptr inbounds %struct.page, ptr %call.i189, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %and.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !121

if.then.i.i:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i192 = add i32 %83, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %call.i189 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i192, %if.then.i.i ], [ %84, %if.end.i.i ]
  %85 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %86 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i.i.i = icmp eq i32 %87, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !131

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %88, ptr noundef nonnull @.str.49) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %89, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@hfsplus_create_attributes_file, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !136

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %85, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %85) #12
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %call.i189 to i32
  br label %failed_header_node_init

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.0209, 1
  br i1 %cmp76, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %flags.i = getelementptr i8, ptr %call13, i32 -84
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #12
  tail call void @__mark_inode_dirty(ptr noundef %call13, i32 noundef 7) #12
  %call95 = tail call ptr @hfsplus_btree_open(ptr noundef %sb, i32 noundef 8) #12
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 6
  %91 = ptrtoint ptr %attr_tree to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call95, ptr %attr_tree, align 8
  %tobool97.not = icmp eq ptr %call95, null
  br i1 %tobool97.not, label %do.end101, label %for.end.failed_header_node_init_crit_edge

for.end.failed_header_node_init_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_header_node_init

do.end101:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  br label %failed_header_node_init

failed_header_node_init:                          ; preds = %do.end101, %for.end.failed_header_node_init_crit_edge, %cleanup
  %err.3 = phi i32 [ %90, %cleanup ], [ 0, %for.end.failed_header_node_init_crit_edge ], [ 0, %do.end101 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %end_attr_file_creation

end_attr_file_creation:                           ; preds = %failed_header_node_init, %do.end58
  %err.4 = phi i32 [ %call47, %do.end58 ], [ %err.3, %failed_header_node_init ]
  tail call void @iput(ptr noundef %call13) #12
  %92 = zext i32 %err.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %err.4, label %end_attr_file_creation.if.else112_crit_edge [
    i32 0, label %if.then106
    i32 -28, label %end_attr_file_creation.if.then110_crit_edge
  ]

end_attr_file_creation.if.then110_crit_edge:      ; preds = %end_attr_file_creation
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then110

end_attr_file_creation.if.else112_crit_edge:      ; preds = %end_attr_file_creation
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else112

if.then106:                                       ; preds = %end_attr_file_creation
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i186 = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_tree_state, i32 noundef 4) #12
  %93 = ptrtoint ptr %attr_tree_state to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 2, ptr %attr_tree_state, align 4
  br label %cleanup116

if.then110:                                       ; preds = %end_attr_file_creation.if.then110_crit_edge, %end_attr_file_creation.thread198
  %call.i.i187 = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_tree_state, i32 noundef 4) #12
  %94 = ptrtoint ptr %attr_tree_state to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %attr_tree_state, align 4
  br label %cleanup116

if.else112:                                       ; preds = %end_attr_file_creation.if.else112_crit_edge, %end_attr_file_creation.thread
  %err.4197 = phi i32 [ -12, %end_attr_file_creation.thread ], [ %err.4, %end_attr_file_creation.if.else112_crit_edge ]
  %call.i.i188 = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_tree_state, i32 noundef 4) #12
  %95 = ptrtoint ptr %attr_tree_state to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 3, ptr %attr_tree_state, align 4
  br label %cleanup116

cleanup116.loopexit:                              ; preds = %check_attr_tree_state_again
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

cleanup116.loopexit230:                           ; preds = %check_attr_tree_state_again
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

cleanup116:                                       ; preds = %cleanup116.loopexit230, %cleanup116.loopexit, %if.else112, %if.then110, %if.then106, %do.end18, %check_attr_tree_state_again.cleanup116_crit_edge
  %retval.0 = phi i32 [ %6, %do.end18 ], [ -28, %if.then110 ], [ %err.4197, %if.else112 ], [ 0, %if.then106 ], [ -11, %cleanup116.loopexit ], [ 0, %cleanup116.loopexit230 ], [ -95, %check_attr_tree_state_again.cleanup116_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_attr_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_delete_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_create_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfsplus_bnode_read_u16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_write_u16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_find_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_setxattr(ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, ptr nocapture noundef readonly %prefix, i32 noundef %prefixlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 763) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call ptr @strcpy(ptr noundef nonnull %call7.i, ptr noundef %prefix) #17
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %prefixlen
  %call2 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %name) #17
  %call3 = tail call i32 @__hfsplus_setxattr(ptr noundef %inode, ptr noundef nonnull %call7.i, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hfsplus_getxattr(ptr noundef %inode, ptr noundef %name, ptr nocapture noundef writeonly %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %fd.i = alloca %struct.hfs_find_data, align 4
  %folder_finder_info.i = alloca [32 x i8], align 1
  %file_finder_info.i = alloca [32 x i8], align 1
  %fd = alloca %struct.hfs_find_data, align 4
  %xattr_record_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #12
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_record_type) #12
  %1 = ptrtoint ptr %xattr_record_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %xattr_record_type, align 4, !annotation !137
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 -32768, label %entry.lor.lhs.false_crit_edge
    i16 16384, label %entry.lor.lhs.false_crit_edge137
  ]

entry.lor.lhs.false_crit_edge137:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge137
  %flags = getelementptr i8, ptr %inode, i32 -84
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %if.end.if.end13_crit_edge, label %strcmp_xattr_finder_info.exit

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

strcmp_xattr_finder_info.exit:                    ; preds = %if.end
  %call.i = tail call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull dereferenceable(21) @.str.41, i32 noundef 21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.then11, label %strcmp_xattr_finder_info.exit.if.end13_crit_edge

strcmp_xattr_finder_info.exit.if.end13_crit_edge: ; preds = %strcmp_xattr_finder_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %strcmp_xattr_finder_info.exit
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #12
  %8 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %folder_finder_info.i) #12
  %9 = call ptr @memset(ptr %folder_finder_info.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %file_finder_info.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %size)
  %cmp7.i = icmp ugt i32 %size, 31
  %10 = call ptr @memset(ptr %file_finder_info.i, i32 255, i32 32)
  br i1 %cmp7.i, label %if.then.i132, label %end_getxattr_finder_info.i

if.then.i132:                                     ; preds = %if.then11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %cat_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %cat_tree.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cat_tree.i, align 4
  %call9.i = call i32 @hfsplus_find_init(ptr noundef %16, ptr noundef nonnull %fd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i131 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i131, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #14
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %hfsplus_getxattr_finder_info.exit

if.end.i:                                         ; preds = %if.then.i132
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino.i, align 8
  %call14.i = call i32 @hfsplus_find_cat(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %fd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end.i.if.then55.i_crit_edge

if.end.i.if.then55.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55.i

if.end17.i:                                       ; preds = %if.end.i
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 3
  %21 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bnode.i, align 4
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 7
  %23 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entryoffset.i, align 4
  %call18.i = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %22, i32 noundef %24) #12
  %25 = zext i16 %call18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %call18.i, label %if.end17.i.if.then55.i_crit_edge [
    i16 1, label %if.end17.i.if.then55.sink.split.i_crit_edge
    i16 2, label %if.then32.i
  ]

if.end17.i.if.then55.sink.split.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55.sink.split.i

if.end17.i.if.then55.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55.i

if.then32.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55.sink.split.i

end_getxattr_finder_info.i:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool45.not.i = icmp eq i32 %size, 0
  %spec.select.i = select i1 %tobool45.not.i, i32 32, i32 -34
  br label %hfsplus_getxattr_finder_info.exit

if.then55.sink.split.i:                           ; preds = %if.then32.i, %if.end17.i.if.then55.sink.split.i_crit_edge
  %file_finder_info.sink85.i = phi ptr [ %file_finder_info.i, %if.then32.i ], [ %folder_finder_info.i, %if.end17.i.if.then55.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bnode.i, align 4
  %28 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entryoffset.i, align 4
  %add36.i = add i32 %29, 48
  call void @hfsplus_bnode_read(ptr noundef %27, ptr noundef nonnull %file_finder_info.sink85.i, i32 noundef %add36.i, i32 noundef 32) #12
  %30 = call ptr @memcpy(ptr %value, ptr %file_finder_info.sink85.i, i32 32)
  br label %if.then55.i

if.then55.i:                                      ; preds = %if.then55.sink.split.i, %if.end17.i.if.then55.i_crit_edge, %if.end.i.if.then55.i_crit_edge
  %res.0.ph.i = phi i32 [ -95, %if.end17.i.if.then55.i_crit_edge ], [ %call14.i, %if.end.i.if.then55.i_crit_edge ], [ 32, %if.then55.sink.split.i ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd.i) #12
  br label %hfsplus_getxattr_finder_info.exit

hfsplus_getxattr_finder_info.exit:                ; preds = %if.then55.i, %end_getxattr_finder_info.i, %do.end.i
  %retval.0.i133 = phi i32 [ %call9.i, %do.end.i ], [ %res.0.ph.i, %if.then55.i ], [ %spec.select.i, %end_getxattr_finder_info.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %file_finder_info.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %folder_finder_info.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #12
  br label %cleanup

if.end13:                                         ; preds = %strcmp_xattr_finder_info.exit.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %attr_tree, align 8
  %tobool15.not = icmp eq ptr %36, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call ptr @hfsplus_alloc_attr_entry() #12
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i134 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i134, align 16
  %attr_tree25 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %attr_tree25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %attr_tree25, align 8
  %call26 = call i32 @hfsplus_find_init(ptr noundef %42, ptr noundef nonnull %fd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %failed_getxattr_init

if.end34:                                         ; preds = %if.end22
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %45 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_ino, align 8
  %call36 = call i32 @hfsplus_find_attr(ptr noundef %44, i32 noundef %46, ptr noundef %name, ptr noundef nonnull %fd) #12
  %47 = zext i32 %call36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call36, label %do.end44 [
    i32 0, label %if.end48
    i32 -2, label %if.end34.out_crit_edge
  ]

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end44:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %out

if.end48:                                         ; preds = %if.end34
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %48 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %50 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %49, ptr noundef nonnull %xattr_record_type, i32 noundef %51, i32 noundef 4) #12
  %52 = ptrtoint ptr %xattr_record_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xattr_record_type, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %53, label %do.end80 [
    i32 16, label %if.then51
    i32 32, label %if.end48.do.end74_crit_edge
    i32 48, label %if.end48.do.end74_crit_edge138
  ]

if.end48.do.end74_crit_edge138:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

if.end48.do.end74_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

if.then51:                                        ; preds = %if.end48
  %55 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bnode, align 4
  %57 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %entryoffset, align 4
  %add = add i32 %58, 14
  %call54 = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %56, i32 noundef %add) #12
  %conv55 = zext i16 %call54 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3802, i16 %call54)
  %cmp56 = icmp ugt i16 %call54, 3802
  br i1 %cmp56, label %do.end61, label %if.end83

do.end61:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %out

do.end74:                                         ; preds = %if.end48.do.end74_crit_edge, %if.end48.do.end74_crit_edge138
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %out

do.end80:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #15
  br label %out

if.end83:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool84.not = icmp eq i32 %size, 0
  br i1 %tobool84.not, label %if.end83.if.end90_crit_edge, label %if.then85

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bnode, align 4
  %61 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %entryoffset, align 4
  %add89 = add nuw nsw i32 %conv55, 16
  call void @hfsplus_bnode_read(ptr noundef %60, ptr noundef nonnull %call18, i32 noundef %62, i32 noundef %add89) #12
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end83.if.end90_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv55, i32 %size)
  %cmp92.not = icmp ugt i32 %conv55, %size
  br i1 %cmp92.not, label %if.else97, label %if.then94

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %raw_bytes = getelementptr inbounds %struct.hfsplus_attr_inline_data, ptr %call18, i32 0, i32 4
  %63 = call ptr @memcpy(ptr %value, ptr %raw_bytes, i32 %conv55)
  br label %out

if.else97:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select = select i1 %tobool84.not, i32 %conv55, i32 -34
  br label %out

out:                                              ; preds = %if.else97, %if.then94, %do.end80, %do.end74, %do.end61, %do.end44, %if.end34.out_crit_edge
  %res.0 = phi i32 [ %call36, %do.end44 ], [ -5, %do.end61 ], [ %conv55, %if.then94 ], [ %spec.select, %if.else97 ], [ -95, %do.end74 ], [ -5, %do.end80 ], [ -61, %if.end34.out_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #12
  br label %failed_getxattr_init

failed_getxattr_init:                             ; preds = %out, %do.end31
  %res.1 = phi i32 [ %call26, %do.end31 ], [ %res.0, %out ]
  call void @hfsplus_destroy_attr_entry(ptr noundef nonnull %call18) #12
  br label %cleanup

cleanup:                                          ; preds = %failed_getxattr_init, %do.end, %if.end13.cleanup_crit_edge, %hfsplus_getxattr_finder_info.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %failed_getxattr_init ], [ -12, %do.end ], [ %retval.0.i133, %hfsplus_getxattr_finder_info.exit ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_record_type) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_alloc_attr_entry() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_attr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_destroy_attr_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_getxattr(ptr noundef %inode, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %value, i32 noundef %size, ptr nocapture noundef readonly %prefix, i32 noundef %prefixlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 763) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call ptr @strcpy(ptr noundef nonnull %call7.i, ptr noundef %prefix) #17
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %prefixlen
  %call2 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %name) #17
  %call3 = tail call i32 @__hfsplus_getxattr(ptr noundef %inode, ptr noundef nonnull %call7.i, ptr noundef %value, i32 noundef %size)
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %fd.i = alloca %struct.hfs_find_data, align 4
  %folder_finder_info.i = alloca [32 x i8], align 1
  %file_finder_info.i = alloca [32 x i8], align 1
  %fd = alloca %struct.hfs_find_data, align 4
  %attr_key = alloca %struct.hfsplus_attr_key, align 1
  %xattr_name_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #12
  %2 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %attr_key) #12
  %3 = call ptr @memset(ptr %attr_key, i32 255, i32 268)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_name_len) #12
  %4 = ptrtoint ptr %xattr_name_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %xattr_name_len, align 4, !annotation !137
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 8
  %7 = and i16 %6, -4096
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %7, label %entry.cleanup_crit_edge [
    i16 -32768, label %entry.lor.lhs.false_crit_edge
    i16 16384, label %entry.lor.lhs.false_crit_edge197
  ]

entry.lor.lhs.false_crit_edge197:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge197
  %flags = getelementptr i8, ptr %1, i32 -84
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #12
  %11 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %folder_finder_info.i) #12
  %12 = call ptr @memset(ptr %folder_finder_info.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %file_finder_info.i) #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %13 = call ptr @memset(ptr %file_finder_info.i, i32 255, i32 32)
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %cat_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %cat_tree.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cat_tree.i, align 4
  %call2.i = call i32 @hfsplus_find_init(ptr noundef %19, ptr noundef nonnull %fd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %hfsplus_listxattr_finder_info.exit

if.end.i:                                         ; preds = %if.end
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino.i, align 8
  %call5.i = call i32 @hfsplus_find_cat(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %fd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.end_listxattr_finder_info.i_crit_edge

if.end.i.end_listxattr_finder_info.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr_finder_info.i

if.end8.i:                                        ; preds = %if.end.i
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 3
  %24 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bnode.i, align 4
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 7
  %26 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entryoffset.i, align 4
  %call9.i = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %25, i32 noundef %27) #12
  %28 = zext i16 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %call9.i, label %if.end8.i.end_listxattr_finder_info.i_crit_edge [
    i16 1, label %if.end8.i.if.end29.i_crit_edge
    i16 2, label %if.then19.i
  ]

if.end8.i.if.end29.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.end8.i.end_listxattr_finder_info.i_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr_finder_info.i

if.then19.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then19.i, %if.end8.i.if.end29.i_crit_edge
  %file_finder_info.sink90.i = phi ptr [ %file_finder_info.i, %if.then19.i ], [ %folder_finder_info.i, %if.end8.i.if.end29.i_crit_edge ]
  %29 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bnode.i, align 4
  %31 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entryoffset.i, align 4
  %add23.i = add i32 %32, 48
  call void @hfsplus_bnode_read(ptr noundef %30, ptr noundef nonnull %file_finder_info.sink90.i, i32 noundef %add23.i, i32 noundef 32) #12
  %call26.i = call i32 @_find_first_bit_be(ptr noundef nonnull %file_finder_info.sink90.i, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call26.i)
  %cmp31.i = icmp ugt i32 %call26.i, 255
  br i1 %cmp31.i, label %if.end29.i.end_listxattr_finder_info.i_crit_edge, label %name_len.exit.i

if.end29.i.end_listxattr_finder_info.i_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr_finder_info.i

name_len.exit.i:                                  ; preds = %if.end29.i
  %tobool36.not.i = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool37.not.i = icmp eq i32 %size, 0
  %or.cond.i = or i1 %tobool36.not.i, %tobool37.not.i
  br i1 %or.cond.i, label %name_len.exit.i.end_listxattr_finder_info.i_crit_edge, label %if.then46.i

name_len.exit.i.end_listxattr_finder_info.i_crit_edge: ; preds = %name_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr_finder_info.i

if.then46.i:                                      ; preds = %name_len.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %size)
  %cmp47.i = icmp ult i32 %size, 25
  br i1 %cmp47.i, label %if.then46.i.end_listxattr_finder_info.i_crit_edge, label %if.else50.i

if.then46.i.end_listxattr_finder_info.i_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr_finder_info.i

if.else50.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  %call51.i = call fastcc i32 @copy_name(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.41, i32 noundef 20) #12
  br label %end_listxattr_finder_info.i

end_listxattr_finder_info.i:                      ; preds = %if.else50.i, %if.then46.i.end_listxattr_finder_info.i_crit_edge, %name_len.exit.i.end_listxattr_finder_info.i_crit_edge, %if.end29.i.end_listxattr_finder_info.i_crit_edge, %if.end8.i.end_listxattr_finder_info.i_crit_edge, %if.end.i.end_listxattr_finder_info.i_crit_edge
  %res.0.i = phi i32 [ %call5.i, %if.end.i.end_listxattr_finder_info.i_crit_edge ], [ %call51.i, %if.else50.i ], [ -95, %if.end8.i.end_listxattr_finder_info.i_crit_edge ], [ 0, %if.end29.i.end_listxattr_finder_info.i_crit_edge ], [ -34, %if.then46.i.end_listxattr_finder_info.i_crit_edge ], [ 25, %name_len.exit.i.end_listxattr_finder_info.i_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd.i) #12
  br label %hfsplus_listxattr_finder_info.exit

hfsplus_listxattr_finder_info.exit:               ; preds = %end_listxattr_finder_info.i, %do.end.i
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ %res.0.i, %end_listxattr_finder_info.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %file_finder_info.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %folder_finder_info.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp10 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp10, label %hfsplus_listxattr_finder_info.exit.cleanup_crit_edge, label %if.else

hfsplus_listxattr_finder_info.exit.cleanup_crit_edge: ; preds = %hfsplus_listxattr_finder_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %hfsplus_listxattr_finder_info.exit
  %33 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attr_tree, align 8
  %tobool14.not = icmp eq ptr %38, null
  br i1 %tobool14.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp16 = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %cmp16, i32 -95, i32 %retval.0.i
  br label %cleanup

if.end19:                                         ; preds = %if.else
  %call23 = call i32 @hfsplus_find_init(ptr noundef nonnull %38, ptr noundef nonnull %fd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 767) #16
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end27.out_crit_edge, label %if.end31

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end31:                                         ; preds = %if.end27
  %40 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino, align 8
  %call33 = call i32 @hfsplus_find_attr(ptr noundef %41, i32 noundef %43, ptr noundef null, ptr noundef nonnull %fd) #12
  %44 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call33, label %if.end31.end_listxattr_crit_edge [
    i32 0, label %for.cond.preheader
    i32 -2, label %if.then38
  ]

if.end31.end_listxattr_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr

for.cond.preheader:                               ; preds = %if.end31
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %cnid = getelementptr inbounds %struct.hfsplus_attr_key, ptr %attr_key, i32 0, i32 2
  %key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %tobool79.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool81.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool79.not, %tobool81.not
  br label %for.cond

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp39 = icmp eq i32 %retval.0.i, 0
  %spec.select151 = select i1 %cmp39, i32 -61, i32 %retval.0.i
  br label %end_listxattr

for.cond:                                         ; preds = %if.end103.for.cond_crit_edge, %for.cond.preheader
  %res.0 = phi i32 [ %res.1, %if.end103.for.cond_crit_edge ], [ %retval.0.i, %for.cond.preheader ]
  %45 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bnode, align 4
  %47 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %keyoffset, align 4
  %call45 = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %46, i32 noundef %48) #12
  %conv46 = zext i16 %call45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call45)
  %cmp47 = icmp eq i16 %call45, 0
  br i1 %cmp47, label %for.cond.do.end56_crit_edge, label %lor.lhs.false49

for.cond.do.end56_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

lor.lhs.false49:                                  ; preds = %for.cond
  %49 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tree, align 4
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_key_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv46)
  %cmp51 = icmp ult i32 %52, %conv46
  br i1 %cmp51, label %lor.lhs.false49.do.end56_crit_edge, label %if.end60

lor.lhs.false49.do.end56_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

do.end56:                                         ; preds = %lor.lhs.false49.do.end56_crit_edge, %for.cond.do.end56_crit_edge
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv46) #15
  br label %end_listxattr

if.end60:                                         ; preds = %lor.lhs.false49
  %53 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bnode, align 4
  %55 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %keyoffset, align 4
  %add = add nuw nsw i32 %conv46, 2
  call void @hfsplus_bnode_read(ptr noundef %54, ptr noundef nonnull %attr_key, i32 noundef %56, i32 noundef %add) #12
  %57 = ptrtoint ptr %cnid to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %cnid, align 1
  %59 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp65.not = icmp eq i32 %58, %60
  br i1 %cmp65.not, label %if.end68, label %if.end60.end_listxattr_crit_edge

if.end60.end_listxattr_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr

if.end68:                                         ; preds = %if.end60
  %61 = ptrtoint ptr %xattr_name_len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 762, ptr %xattr_name_len, align 4
  %62 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb.i, align 4
  %64 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %key, align 4
  %key_name = getelementptr inbounds %struct.hfsplus_attr_key, ptr %65, i32 0, i32 4
  %call70 = call i32 @hfsplus_uni2asc(ptr noundef %63, ptr noundef %key_name, ptr noundef nonnull %call7.i, ptr noundef nonnull %xattr_name_len) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end78, label %do.end75

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #15
  br label %end_listxattr

if.end78:                                         ; preds = %if.end68
  %call.i = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(9) @.str.53, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %or.cond, label %if.end.i154, label %if.end.i160

if.end.i154:                                      ; preds = %if.end78
  br i1 %tobool1.not.i, label %can_list.exit, label %if.end.i154.if.then85_crit_edge

if.end.i154.if.then85_crit_edge:                  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

can_list.exit:                                    ; preds = %if.end.i154
  %call2.i155 = call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call2.i155, label %can_list.exit.if.then85_crit_edge, label %can_list.exit.if.end103_crit_edge

can_list.exit.if.end103_crit_edge:                ; preds = %can_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

can_list.exit.if.then85_crit_edge:                ; preds = %can_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.then85:                                        ; preds = %can_list.exit.if.then85_crit_edge, %if.end.i154.if.then85_crit_edge
  %66 = ptrtoint ptr %xattr_name_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xattr_name_len, align 4
  %add.i = add i32 %67, 1
  %call.i.i = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(8) @.str.54, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then85.name_len.exit_crit_edge, label %land.lhs.true.i.i

if.then85.name_len.exit_crit_edge:                ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %name_len.exit

land.lhs.true.i.i:                                ; preds = %if.then85
  %call1.i.i = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(6) @.str.55, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.name_len.exit_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.name_len.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %name_len.exit

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %call4.i.i = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(10) @.str.56, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true3.i.i.name_len.exit_crit_edge, label %land.lhs.true6.i.i

land.lhs.true3.i.i.name_len.exit_crit_edge:       ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %name_len.exit

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i.i = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(9) @.str.53, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  %add1.i = add i32 %67, 5
  %spec.select.i = select i1 %tobool8.not.i.i, i32 %add.i, i32 %add1.i
  br label %name_len.exit

name_len.exit:                                    ; preds = %land.lhs.true6.i.i, %land.lhs.true3.i.i.name_len.exit_crit_edge, %land.lhs.true.i.i.name_len.exit_crit_edge, %if.then85.name_len.exit_crit_edge
  %68 = phi i32 [ %add.i, %if.then85.name_len.exit_crit_edge ], [ %add.i, %land.lhs.true.i.i.name_len.exit_crit_edge ], [ %add.i, %land.lhs.true3.i.i.name_len.exit_crit_edge ], [ %spec.select.i, %land.lhs.true6.i.i ]
  %add87 = add i32 %68, %res.0
  br label %if.end103

if.end.i160:                                      ; preds = %if.end78
  br i1 %tobool1.not.i, label %can_list.exit165, label %if.end.i160.if.then92_crit_edge

if.end.i160.if.then92_crit_edge:                  ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then92

can_list.exit165:                                 ; preds = %if.end.i160
  %call2.i161 = call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call2.i161, label %can_list.exit165.if.then92_crit_edge, label %can_list.exit165.if.end103_crit_edge

can_list.exit165.if.end103_crit_edge:             ; preds = %can_list.exit165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

can_list.exit165.if.then92_crit_edge:             ; preds = %can_list.exit165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then92

if.then92:                                        ; preds = %can_list.exit165.if.then92_crit_edge, %if.end.i160.if.then92_crit_edge
  %69 = ptrtoint ptr %xattr_name_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %xattr_name_len, align 4
  %add.i166 = add i32 %70, 1
  %call.i.i167 = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(8) @.str.54, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %tobool.not.i.i168 = icmp eq i32 %call.i.i167, 0
  br i1 %tobool.not.i.i168, label %if.then92.name_len.exit180_crit_edge, label %land.lhs.true.i.i171

if.then92.name_len.exit180_crit_edge:             ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %name_len.exit180

land.lhs.true.i.i171:                             ; preds = %if.then92
  %call1.i.i169 = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(6) @.str.55, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i169)
  %tobool2.not.i.i170 = icmp eq i32 %call1.i.i169, 0
  br i1 %tobool2.not.i.i170, label %land.lhs.true.i.i171.name_len.exit180_crit_edge, label %land.lhs.true3.i.i174

land.lhs.true.i.i171.name_len.exit180_crit_edge:  ; preds = %land.lhs.true.i.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %name_len.exit180

land.lhs.true3.i.i174:                            ; preds = %land.lhs.true.i.i171
  %call4.i.i172 = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(10) @.str.56, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i172)
  %tobool5.not.i.i173 = icmp eq i32 %call4.i.i172, 0
  br i1 %tobool5.not.i.i173, label %land.lhs.true3.i.i174.name_len.exit180_crit_edge, label %land.lhs.true6.i.i179

land.lhs.true3.i.i174.name_len.exit180_crit_edge: ; preds = %land.lhs.true3.i.i174
  call void @__sanitizer_cov_trace_pc() #14
  br label %name_len.exit180

land.lhs.true6.i.i179:                            ; preds = %land.lhs.true3.i.i174
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i.i175 = call i32 @strncmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(9) @.str.53, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i175)
  %tobool8.not.i.i176 = icmp eq i32 %call7.i.i175, 0
  %add1.i177 = add i32 %70, 5
  %spec.select.i178 = select i1 %tobool8.not.i.i176, i32 %add.i166, i32 %add1.i177
  br label %name_len.exit180

name_len.exit180:                                 ; preds = %land.lhs.true6.i.i179, %land.lhs.true3.i.i174.name_len.exit180_crit_edge, %land.lhs.true.i.i171.name_len.exit180_crit_edge, %if.then92.name_len.exit180_crit_edge
  %71 = phi i32 [ %add.i166, %if.then92.name_len.exit180_crit_edge ], [ %add.i166, %land.lhs.true.i.i171.name_len.exit180_crit_edge ], [ %add.i166, %land.lhs.true3.i.i174.name_len.exit180_crit_edge ], [ %spec.select.i178, %land.lhs.true6.i.i179 ]
  %add94 = add i32 %71, %res.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add94, i32 %size)
  %cmp95 = icmp ugt i32 %add94, %size
  br i1 %cmp95, label %name_len.exit180.end_listxattr_crit_edge, label %if.else98

name_len.exit180.end_listxattr_crit_edge:         ; preds = %name_len.exit180
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr

if.else98:                                        ; preds = %name_len.exit180
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %buffer, i32 %res.0
  %call99 = call fastcc i32 @copy_name(ptr noundef %add.ptr, ptr noundef nonnull %call7.i, i32 noundef %70)
  %add100 = add i32 %call99, %res.0
  br label %if.end103

if.end103:                                        ; preds = %if.else98, %can_list.exit165.if.end103_crit_edge, %name_len.exit, %can_list.exit.if.end103_crit_edge
  %res.1 = phi i32 [ %add100, %if.else98 ], [ %res.0, %can_list.exit165.if.end103_crit_edge ], [ %add87, %name_len.exit ], [ %res.0, %can_list.exit.if.end103_crit_edge ]
  %call104 = call i32 @hfsplus_brec_goto(ptr noundef nonnull %fd, i32 noundef 1) #12
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end103.for.cond_crit_edge, label %if.end103.end_listxattr_crit_edge

if.end103.end_listxattr_crit_edge:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_listxattr

if.end103.for.cond_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

end_listxattr:                                    ; preds = %if.end103.end_listxattr_crit_edge, %name_len.exit180.end_listxattr_crit_edge, %do.end75, %if.end60.end_listxattr_crit_edge, %do.end56, %if.then38, %if.end31.end_listxattr_crit_edge
  %res.2 = phi i32 [ -5, %do.end56 ], [ -5, %do.end75 ], [ %spec.select151, %if.then38 ], [ %call33, %if.end31.end_listxattr_crit_edge ], [ -34, %name_len.exit180.end_listxattr_crit_edge ], [ %res.1, %if.end103.end_listxattr_crit_edge ], [ %res.0, %if.end60.end_listxattr_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %out

out:                                              ; preds = %end_listxattr, %if.end27.out_crit_edge
  %res.3 = phi i32 [ %res.2, %end_listxattr ], [ -12, %if.end27.out_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.then15, %hfsplus_listxattr_finder_info.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end ], [ %res.3, %out ], [ %spec.select, %if.then15 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ %retval.0.i, %hfsplus_listxattr_finder_info.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_name_len) #12
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %attr_key) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_uni2asc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @copy_name(ptr noundef %buffer, ptr nocapture noundef readonly %xattr_name, i32 noundef %name_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strncmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(8) @.str.54, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(6) @.str.55, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @strncmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(10) @.str.56, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.if.end_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %call7.i = tail call i32 @strncmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(9) @.str.53, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.if.end_crit_edge, label %if.then

land.lhs.true6.i.if.end_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1869838382, ptr %buffer, align 1
  %add1 = add i32 %name_len, 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6.i.if.end_crit_edge, %land.lhs.true3.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %add1, %if.then ], [ %name_len, %entry.if.end_crit_edge ], [ %name_len, %land.lhs.true.i.if.end_crit_edge ], [ %name_len, %land.lhs.true3.i.if.end_crit_edge ], [ %name_len, %land.lhs.true6.i.if.end_crit_edge ]
  %offset.0 = phi i32 [ 4, %if.then ], [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 0, %land.lhs.true3.i.if.end_crit_edge ], [ 0, %land.lhs.true6.i.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buffer, i32 %offset.0
  %call2 = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %xattr_name, i32 noundef %name_len)
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %name_len
  %1 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %add.ptr4, align 1
  %add5 = add i32 %len.0, 1
  ret i32 %add5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_goto(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_osx_getxattr(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr nocapture noundef writeonly %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.54, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %land.lhs.true.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.55, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.56, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.return_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.return_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %call7.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.53, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.return_crit_edge, label %if.end

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @__hfsplus_getxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size)
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true6.i.return_crit_edge, %land.lhs.true3.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.return_crit_edge ], [ -95, %land.lhs.true.i.return_crit_edge ], [ -95, %land.lhs.true3.i.return_crit_edge ], [ -95, %land.lhs.true6.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsplus_osx_setxattr(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.54, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %land.lhs.true.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.55, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.56, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.return_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.return_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %call7.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.53, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.return_crit_edge, label %if.end

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @__hfsplus_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true6.i.return_crit_edge, %land.lhs.true3.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.return_crit_edge ], [ -95, %land.lhs.true.i.return_crit_edge ], [ -95, %land.lhs.true3.i.return_crit_edge ], [ -95, %land.lhs.true6.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !138
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !139
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !131

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !140
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !142
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !143
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !144
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_calc_btree_clump_size(i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_file_extend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_btree_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !83, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !104, !105, !107, !108, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @hfsplus_xattr_handlers, !1, !"hfsplus_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/xattr.c", i32 16, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hfsplus/xattr.c", i32 279, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__hfsplus_setxattr._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @__hfsplus_setxattr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hfsplus/xattr.c", i32 285, i32 3}
!10 = !{ptr @__hfsplus_setxattr._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @__hfsplus_setxattr._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hfsplus/xattr.c", i32 291, i32 4}
!14 = !{ptr @__hfsplus_setxattr._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @__hfsplus_setxattr._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__hfsplus_setxattr._entry.9, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../fs/hfsplus/xattr.c", i32 338, i32 4}
!18 = !{ptr @__hfsplus_setxattr._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/hfsplus/xattr.c", i32 350, i32 4}
!21 = !{ptr @__hfsplus_setxattr._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @__hfsplus_setxattr._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/hfsplus/xattr.c", i32 383, i32 3}
!25 = !{ptr @__hfsplus_setxattr._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @__hfsplus_setxattr._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/hfsplus/xattr.c", i32 512, i32 3}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__hfsplus_getxattr._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @__hfsplus_getxattr._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__hfsplus_getxattr._entry.19, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../fs/hfsplus/xattr.c", i32 518, i32 3}
!34 = !{ptr @__hfsplus_getxattr._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/hfsplus/xattr.c", i32 527, i32 4}
!37 = !{ptr @__hfsplus_getxattr._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__hfsplus_getxattr._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/hfsplus/xattr.c", i32 540, i32 4}
!41 = !{ptr @__hfsplus_getxattr._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @__hfsplus_getxattr._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/hfsplus/xattr.c", i32 546, i32 3}
!45 = !{ptr @__hfsplus_getxattr._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @__hfsplus_getxattr._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/hfsplus/xattr.c", i32 550, i32 3}
!49 = !{ptr @__hfsplus_getxattr._entry.30, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @__hfsplus_getxattr._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/hfsplus/xattr.c", i32 698, i32 3}
!53 = !{ptr @hfsplus_listxattr._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hfsplus_listxattr._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/hfsplus/xattr.c", i32 724, i32 4}
!57 = !{ptr @hfsplus_listxattr._entry.34, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hfsplus_listxattr._entry_ptr.36, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/hfsplus/xattr.c", i32 739, i32 4}
!61 = !{ptr @hfsplus_listxattr._entry.37, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @hfsplus_listxattr._entry_ptr.39, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/hfsplus/xattr.c", i32 882, i32 12}
!65 = !{ptr @hfsplus_xattr_osx_handler, !66, !"hfsplus_xattr_osx_handler", i1 false, i1 false}
!66 = !{!"../fs/hfsplus/xattr.c", i32 881, i32 28}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/hfsplus/xattr.c", i32 27, i32 24}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/hfsplus/xattr.c", i32 171, i32 3}
!71 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hfsplus_create_attributes_file._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @hfsplus_create_attributes_file._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/hfsplus/xattr.c", i32 196, i32 4}
!76 = !{ptr @hfsplus_create_attributes_file._entry.44, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hfsplus_create_attributes_file._entry_ptr.46, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @hfsplus_create_attributes_file._entry.47, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/hfsplus/xattr.c", i32 239, i32 3}
!80 = !{ptr @hfsplus_create_attributes_file._entry_ptr.48, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/mm.h", i32 717, i32 2}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/hfsplus/xattr.c", i32 36, i32 24}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/hfsplus/xattr.c", i32 454, i32 4}
!87 = !{ptr @hfsplus_getxattr_finder_info._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @hfsplus_getxattr_finder_info._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/hfsplus/xattr.c", i32 620, i32 3}
!91 = !{ptr @hfsplus_listxattr_finder_info._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @hfsplus_listxattr_finder_info._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/hfsplus/xattr.c", i32 601, i32 29}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/hfsplus/xattr.c", i32 44, i32 20}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/hfsplus/xattr.c", i32 45, i32 20}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/hfsplus/xattr.c", i32 46, i32 20}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/hfsplus/xattr.c", i32 784, i32 3}
!103 = !{ptr @hfsplus_removexattr._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @hfsplus_removexattr._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @hfsplus_removexattr._entry.58, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../fs/hfsplus/xattr.c", i32 790, i32 3}
!107 = !{ptr @hfsplus_removexattr._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @hfsplus_removexattr._entry.60, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../fs/hfsplus/xattr.c", i32 829, i32 3}
!110 = !{ptr @hfsplus_removexattr._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2148793142}
!123 = !{i64 1176808, i64 1176832, i64 1176853, i64 1176870, i64 1176887}
!124 = !{i64 2148793368}
!125 = !{i64 2154479022, i64 2154479505, i64 2154479059, i64 2154479115, i64 2154479149, i64 2154479173, i64 2154479214, i64 2154479235, i64 2154479263, i64 2154479297}
!126 = !{i64 2154482320, i64 2154482803, i64 2154482357, i64 2154482413, i64 2154482447, i64 2154482471, i64 2154482512, i64 2154482533, i64 2154482561, i64 2154482595}
!127 = !{i64 2153727157}
!128 = !{i64 2152206591}
!129 = !{i64 2152206798}
!130 = !{i64 2153729928}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2153203101, i64 2153203584, i64 2153203138, i64 2153203194, i64 2153203228, i64 2153203252, i64 2153203293, i64 2153203314, i64 2153203342, i64 2153203376}
!133 = !{i64 2148779771}
!134 = !{i64 2148694480, i64 2148694512, i64 2148694541, i64 2148694575, i64 2148694606, i64 2148694629}
!135 = !{i64 2148780000}
!136 = !{i64 2148515893, i64 2148515898, i64 2148515911, i64 2148515955, i64 2148515989, i64 2148516010}
!137 = !{!"auto-init"}
!138 = !{i64 1095975, i64 1096036}
!139 = !{i64 1098707}
!140 = !{i64 1098992}
!141 = !{i64 2152534246}
!142 = !{i64 2152534088}
!143 = !{i64 2152534416}
!144 = !{i64 2150120110}
