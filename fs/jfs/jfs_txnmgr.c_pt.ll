; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_txnmgr.c_pt.bc'
source_filename = "../fs/jfs/jfs_txnmgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.74 = type { i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.tblock = type { i16, i16, i16, i32, %struct.list_head, ptr, i16, i16, %struct.wait_queue_head, i32, %struct.list_head, i32, ptr, i32, i32, %struct.wait_queue_head, %union.anon.73, i32 }
%union.anon.73 = type { %struct.pxd_t }
%struct.pxd_t = type { i32, i32 }
%struct.tlock = type { i16, i16, i16, i16, ptr, ptr, [24 x i16] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.jfs_log = type { %struct.list_head, %struct.list_head, ptr, i32, i64, i32, i32, i32, ptr, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, ptr, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.uuid_t, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.linelock = type { i16, i8, i8, i16, i8, i8, [20 x %struct.lv] }
%struct.lv = type { i8, i8 }
%struct.xtlock = type { i16, i8, i8, i16, i8, i8, %struct.lv, %struct.lv, %struct.lv, %struct.lv, [8 x i32] }
%struct.xtheader = type { i64, i64, i8, i8, i16, i16, i16, %struct.pxd_t }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.commit = type { i16, i32, ptr, ptr, i32, ptr, %struct.lrd }
%struct.lrd = type { i32, i32, i16, i16, i32, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32, i16, i16, %struct.pxd_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.70 = type { ptr }
%struct.xdlistlock = type { i16, i8, i8, i16, i8, i8, %union.anon.93 }
%union.anon.93 = type { i64 }
%struct.xad = type { i8, [2 x i8], i8, i32, %struct.pxd_t }
%struct.maplock = type { i16, i8, i8, i16, i8, i8, %struct.pxd_t }
%struct.dxd_t = type { i8, [3 x i8], i32, %struct.pxd_t }

@__param_str_nTxBlock = internal constant [13 x i8] c"jfs.nTxBlock\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nTxBlock = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nTxBlock = internal constant %struct.kernel_param { ptr @__param_str_nTxBlock, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @nTxBlock } }, section "__param", align 4
@__UNIQUE_ID_nTxBlocktype246 = internal constant [26 x i8] c"jfs.parmtype=nTxBlock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nTxBlock247 = internal constant [59 x i8] c"jfs.parm=nTxBlock:Number of transaction blocks (max:65536)\00", section ".modinfo", align 1
@__param_str_nTxLock = internal constant [12 x i8] c"jfs.nTxLock\00", align 1
@nTxLock = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nTxLock = internal constant %struct.kernel_param { ptr @__param_str_nTxLock, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @nTxLock } }, section "__param", align 4
@__UNIQUE_ID_nTxLocktype248 = internal constant [25 x i8] c"jfs.parmtype=nTxLock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nTxLock249 = internal constant [57 x i8] c"jfs.parm=nTxLock:Number of transaction locks (max:65536)\00", section ".modinfo", align 1
@txInit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016JFS: nTxBlock = %d, nTxLock = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txInit\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/jfs/jfs_txnmgr.c\00", [44 x i8] zeroinitializer }, align 32
@txInit._entry_ptr = internal global ptr @txInit._entry, section ".printk_index", align 4
@TxLockLWM = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxLockHWM = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxLockVHWM = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxBlock = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@txInit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&TxBlock[k].gcwait\00", [45 x i8] zeroinitializer }, align 32
@txInit.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&TxBlock[k].waitor\00", [45 x i8] zeroinitializer }, align 32
@txInit.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@txInit.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@TxAnchor = internal global { %struct.anon.74, [52 x i8] } zeroinitializer, align 32
@txInit.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&TxAnchor.freewait\00", [45 x i8] zeroinitializer }, align 32
@stattx.0 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@stattx.1 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@stattx.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stattx.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxLock = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@txInit.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&TxAnchor.freelockwait\00", [41 x i8] zeroinitializer }, align 32
@txInit.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&TxAnchor.lowlockwait\00", [42 x i8] zeroinitializer }, align 32
@txInit.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&TxAnchor.LazyLock\00", [45 x i8] zeroinitializer }, align 32
@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@txBegin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016txBegin: flag = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"txBegin\00", [24 x i8] zeroinitializer }, align 32
@txBegin._entry_ptr = internal global ptr @txBegin._entry, section ".printk_index", align 4
@jfsTxnLock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.104, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@TxStat.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.6 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.7 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxStat.8 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@txBegin._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016txBegin: waiting for free tid\0A\00", [63 x i8] zeroinitializer }, align 32
@txBegin._entry_ptr.20 = internal global ptr @txBegin._entry.18, section ".printk_index", align 4
@txBegin._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txBegin._entry_ptr.22 = internal global ptr @txBegin._entry.21, section ".printk_index", align 4
@txBegin._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016txBegin: returning tid = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@txBegin._entry_ptr.25 = internal global ptr @txBegin._entry.23, section ".printk_index", align 4
@txEnd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016txEnd: tid = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"txEnd\00", [26 x i8] zeroinitializer }, align 32
@txEnd._entry_ptr = internal global ptr @txEnd._entry, section ".printk_index", align 4
@txEnd._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016txEnd called w/lazy tid: %d, tblk = 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@txEnd._entry_ptr.30 = internal global ptr @txEnd._entry.28, section ".printk_index", align 4
@txEnd._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016txEnd: tid: %d, tblk = 0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@txEnd._entry_ptr.33 = internal global ptr @txEnd._entry.31, section ".printk_index", align 4
@txEnd._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@txEnd._entry_ptr.36 = internal global ptr @txEnd._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tblk->next == 0\00", [16 x i8] zeroinitializer }, align 32
@txEnd._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016log barrier off: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@txEnd._entry_ptr.40 = internal global ptr @txEnd._entry.38, section ".printk_index", align 4
@txLock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016txLock: tid:%d ip:0x%p mp:0x%p lid:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txLock\00", [25 x i8] zeroinitializer }, align 32
@txLock._entry_ptr = internal global ptr @txLock._entry, section ".printk_index", align 4
@txLock._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.42, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txLock._entry_ptr.44 = internal global ptr @txLock._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"last\00", [27 x i8] zeroinitializer }, align 32
@txLock._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016locking mp = 0x%p, nohomeok = %d tid = %d tlck = 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@txLock._entry_ptr.48 = internal global ptr @txLock._entry.46, section ".printk_index", align 4
@txLock._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013UFO tlock:0x%p\0A\00", [46 x i8] zeroinitializer }, align 32
@txLock._entry_ptr.51 = internal global ptr @txLock._entry.49, section ".printk_index", align 4
@txLock._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013txLock: trying to lock locked page!\00", [58 x i8] zeroinitializer }, align 32
@txLock._entry_ptr.54 = internal global ptr @txLock._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ip: \00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp: \00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Locker's tblock: \00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tlock: \00", [24 x i8] zeroinitializer }, align 32
@txLock._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.42, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016txLock: in waitLock, tid = %d, xtid = %d, lid = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@txLock._entry_ptr.62 = internal global ptr @txLock._entry.60, section ".printk_index", align 4
@txLock._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.42, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016txLock: awakened     tid = %d, lid = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@txLock._entry_ptr.65 = internal global ptr @txLock._entry.63, section ".printk_index", align 4
@txCommit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016txCommit, tid = %d, flag = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"txCommit\00", [23 x i8] zeroinitializer }, align 32
@txCommit._entry_ptr = internal global ptr @txCommit._entry, section ".printk_index", align 4
@txCommit._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.67, ptr @.str.2, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txCommit._entry_ptr.69 = internal global ptr @txCommit._entry.68, section ".printk_index", align 4
@.str.70 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"(!(tblk->xflag & 0x0100)) || ((tblk->u.ip->i_nlink == 0) && !arch_test_bit(COMMIT_Nolink, &(JFS_IP(tblk->u.ip)->cflag)))\00", [39 x i8] zeroinitializer }, align 32
@txCommit._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016txCommit: tid = %d, returning %d\0A\00", [60 x i8] zeroinitializer }, align 32
@txCommit._entry_ptr.73 = internal global ptr @txCommit._entry.71, section ".printk_index", align 4
@txFreeMap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 2492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016txFreeMap: tblk:0x%p maplock:0x%p maptype:0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txFreeMap\00", [22 x i8] zeroinitializer }, align 32
@txFreeMap._entry_ptr = internal global ptr @txFreeMap._entry, section ".printk_index", align 4
@txFreeMap._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016freePMap: xaddr:0x%lx xlen:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@txFreeMap._entry_ptr.78 = internal global ptr @txFreeMap._entry.76, section ".printk_index", align 4
@txFreeMap._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txFreeMap._entry_ptr.80 = internal global ptr @txFreeMap._entry.79, section ".printk_index", align 4
@txFreeMap._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txFreeMap._entry_ptr.82 = internal global ptr @txFreeMap._entry.81, section ".printk_index", align 4
@txFreeMap._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.2, i32 2547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016freeWMap: xaddr:0x%lx xlen:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@txFreeMap._entry_ptr.85 = internal global ptr @txFreeMap._entry.83, section ".printk_index", align 4
@txFreeMap._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.2, i32 2555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txFreeMap._entry_ptr.87 = internal global ptr @txFreeMap._entry.86, section ".printk_index", align 4
@txFreeMap._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.2, i32 2565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txFreeMap._entry_ptr.89 = internal global ptr @txFreeMap._entry.88, section ".printk_index", align 4
@.str.90 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@jfs_commit_thread_waking = internal global { i1, [31 x i8] } zeroinitializer, align 32
@jfs_commit_thread_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.175, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @jfs_commit_thread_wait, i64 44), ptr getelementptr (i8, ptr @jfs_commit_thread_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@jfs_lazycommit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 2795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013jfs_lazycommit being killed w/pending transactions!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jfs_lazycommit\00", [17 x i8] zeroinitializer }, align 32
@jfs_lazycommit._entry_ptr = internal global ptr @jfs_lazycommit._entry, section ".printk_index", align 4
@jfs_lazycommit._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 2797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016jfs_lazycommit being killed\0A\00", [33 x i8] zeroinitializer }, align 32
@jfs_lazycommit._entry_ptr.95 = internal global ptr @jfs_lazycommit._entry.93, section ".printk_index", align 4
@jfs_tlocks_low = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@jfs_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 2979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016jfs_sync being killed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jfs_sync\00", [23 x i8] zeroinitializer }, align 32
@jfs_sync._entry_ptr = internal global ptr @jfs_sync._entry, section ".printk_index", align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [164 x i8], [60 x i8] } { [164 x i8] c"JFS TxAnchor\0A============\0Afreetid = %d\0Afreewait = %s\0Afreelock = %d\0Afreelockwait = %s\0Alowlockwait = %s\0AtlocksInUse = %d\0Ajfs_tlocks_low = %d\0Aunlock_queue is %sempty\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [327 x i8], [89 x i8] } { [327 x i8] c"JFS TxStats\0A===========\0Acalls to txBegin = %d\0AtxBegin blocked by sync barrier = %d\0AtxBegin blocked by tlocks low = %d\0AtxBegin blocked by no free tid = %d\0Acalls to txBeginAnon = %d\0AtxBeginAnon blocked by sync barrier = %d\0AtxBeginAnon blocked by tlocks low = %d\0Acalls to txLockAlloc = %d\0AtLockAlloc blocked by no free lock = %d\0A\00", [89 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jfsTxnLock\00", [21 x i8] zeroinitializer }, align 32
@txLockAlloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016txLockAlloc tlocks low\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txLockAlloc\00", [20 x i8] zeroinitializer }, align 32
@txLockAlloc._entry_ptr = internal global ptr @txLockAlloc._entry, section ".printk_index", align 4
@jfsSyncThread = external dso_local local_unnamed_addr global ptr, align 4
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@txRelease._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.111, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txRelease\00", [22 x i8] zeroinitializer }, align 32
@txRelease._entry_ptr = internal global ptr @txRelease._entry, section ".printk_index", align 4
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mp->xflag & COMMIT_PAGE\00", [40 x i8] zeroinitializer }, align 32
@txUnlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016txUnlock: tblk = 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"txUnlock\00", [23 x i8] zeroinitializer }, align 32
@txUnlock._entry_ptr = internal global ptr @txUnlock._entry, section ".printk_index", align 4
@txUnlock._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016unlocking lid = %d, tlck = 0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@txUnlock._entry_ptr.117 = internal global ptr @txUnlock._entry.115, section ".printk_index", align 4
@txUnlock._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.114, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txUnlock._entry_ptr.119 = internal global ptr @txUnlock._entry.118, section ".printk_index", align 4
@txUnlock._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.114, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txUnlock._entry_ptr.121 = internal global ptr @txUnlock._entry.120, section ".printk_index", align 4
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mp->nohomeok > 0\00", [47 x i8] zeroinitializer }, align 32
@txUnlock._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.114, ptr @.str.2, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txUnlock._entry_ptr.124 = internal global ptr @txUnlock._entry.123, section ".printk_index", align 4
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!(tlck->flag & tlckFREEPAGE)\00", [35 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@txLog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.127, ptr @.str.2, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"txLog\00", [26 x i8] zeroinitializer }, align 32
@txLog._entry_ptr = internal global ptr @txLog._entry, section ".printk_index", align 4
@xtLog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013xtLog: lwm > next\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xtLog\00", [26 x i8] zeroinitializer }, align 32
@xtLog._entry_ptr = internal global ptr @xtLog._entry, section ".printk_index", align 4
@xtLog._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016xtLog: alloc ip:0x%p mp:0x%p tlck:0x%p lwm:%d count:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@xtLog._entry_ptr.132 = internal global ptr @xtLog._entry.130, section ".printk_index", align 4
@xtLog._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.2, i32 1889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016xtLog: free ip:0x%p mp:0x%p count:%d lwm:2\0A\00", [50 x i8] zeroinitializer }, align 32
@xtLog._entry_ptr.135 = internal global ptr @xtLog._entry.133, section ".printk_index", align 4
@xtLog._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.129, ptr @.str.2, i32 2012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016xtLog: alloc ip:0x%p mp:0x%p count:%d lwm:%d next:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@xtLog._entry_ptr.138 = internal global ptr @xtLog._entry.136, section ".printk_index", align 4
@xtLog._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.129, ptr @.str.2, i32 2033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016xtLog: truncate ip:0x%p mp:0x%p count:%d hwm:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@xtLog._entry_ptr.141 = internal global ptr @xtLog._entry.139, section ".printk_index", align 4
@xtLog._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.129, ptr @.str.2, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016xtLog: free ip:0x%p mp:0x%p count:%d next:%d hwm:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@xtLog._entry_ptr.144 = internal global ptr @xtLog._entry.142, section ".printk_index", align 4
@diLog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013diLog: UFO type tlck:0x%p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"diLog\00", [26 x i8] zeroinitializer }, align 32
@diLog._entry_ptr = internal global ptr @diLog._entry, section ".printk_index", align 4
@mapLog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 2140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016mapLog: xaddr:0x%lx xlen:0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mapLog\00", [25 x i8] zeroinitializer }, align 32
@mapLog._entry_ptr = internal global ptr @mapLog._entry, section ".printk_index", align 4
@txForce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.149, ptr @.str.2, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"txForce\00", [24 x i8] zeroinitializer }, align 32
@txForce._entry_ptr = internal global ptr @txForce._entry, section ".printk_index", align 4
@txUpdateMap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.150, ptr @.str.2, i32 2318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txUpdateMap\00", [20 x i8] zeroinitializer }, align 32
@txUpdateMap._entry_ptr = internal global ptr @txUpdateMap._entry, section ".printk_index", align 4
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mp->xflag & 0x1000\00", [45 x i8] zeroinitializer }, align 32
@txUpdateMap._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.150, ptr @.str.2, i32 2366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txUpdateMap._entry_ptr.153 = internal global ptr @txUpdateMap._entry.152, section ".printk_index", align 4
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mp->lid == lid\00", [17 x i8] zeroinitializer }, align 32
@txUpdateMap._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.150, ptr @.str.2, i32 2369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txUpdateMap._entry_ptr.156 = internal global ptr @txUpdateMap._entry.155, section ".printk_index", align 4
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mp->nohomeok == 1\00", [46 x i8] zeroinitializer }, align 32
@txAllocPMap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 2447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016allocPMap: xaddr:0x%lx xlen:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txAllocPMap\00", [20 x i8] zeroinitializer }, align 32
@txAllocPMap._entry_ptr = internal global ptr @txAllocPMap._entry, section ".printk_index", align 4
@txAllocPMap._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 2455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txAllocPMap._entry_ptr.161 = internal global ptr @txAllocPMap._entry.160, section ".printk_index", align 4
@txAllocPMap._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 2466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@txAllocPMap._entry_ptr.163 = internal global ptr @txAllocPMap._entry.162, section ".printk_index", align 4
@txLockFree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016txLockFree jfs_tlocks_low no more\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txLockFree\00", [21 x i8] zeroinitializer }, align 32
@txLockFree._entry_ptr = internal global ptr @txLockFree._entry, section ".printk_index", align 4
@txLazyCommit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 2687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016jfs_lazycommit: tblk 0x%p not unlocked\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txLazyCommit\00", [19 x i8] zeroinitializer }, align 32
@txLazyCommit._entry_ptr = internal global ptr @txLazyCommit._entry, section ".printk_index", align 4
@txLazyCommit._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.2, i32 2691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016txLazyCommit: processing tblk 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@txLazyCommit._entry_ptr.170 = internal global ptr @txLazyCommit._entry.168, section ".printk_index", align 4
@txLazyCommit._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str.2, i32 2717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016txLazyCommit: done: tblk = 0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@txLazyCommit._entry_ptr.173 = internal global ptr @txLazyCommit._entry.171, section ".printk_index", align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"jfs_commit_thread_wait.lock\00", [36 x i8] zeroinitializer }, align 32
@LogSyncRelease._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.176, ptr @.str.2, i32 2824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LogSyncRelease\00", [17 x i8] zeroinitializer }, align 32
@LogSyncRelease._entry_ptr = internal global ptr @LogSyncRelease._entry, section ".printk_index", align 4
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mp->nohomeok\00", [19 x i8] zeroinitializer }, align 32
@LogSyncRelease._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.176, ptr @.str.2, i32 2825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@LogSyncRelease._entry_ptr.179 = internal global ptr @LogSyncRelease._entry.178, section ".printk_index", align 4
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 512, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.181 = internal global [7 x i64] [i64 5, i64 16, i64 512, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@___asan_gen_.184 = private unnamed_addr constant [9 x i8] c"nTxBlock\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 84, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [8 x i8] c"nTxLock\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 89, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 258, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [10 x i8] c"TxLockLWM\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 95, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [10 x i8] c"TxLockHWM\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 96, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant [11 x i8] c"TxLockVHWM\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 97, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant [8 x i8] c"TxBlock\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 94, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 277, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 278, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 281, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 282, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [9 x i8] c"TxAnchor\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 66, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 285, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [9 x i8] c"stattx.0\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [9 x i8] c"stattx.1\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [9 x i8] c"stattx.2\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [9 x i8] c"stattx.3\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"TxLock\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 98, i32 15 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 306, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 307, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 314, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 354, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [11 x i8] c"jfsTxnLock\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [9 x i8] c"TxStat.0\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [9 x i8] c"TxStat.1\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [9 x i8] c"TxStat.2\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [9 x i8] c"TxStat.3\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [9 x i8] c"TxStat.4\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [9 x i8] c"TxStat.5\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [9 x i8] c"TxStat.6\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [9 x i8] c"TxStat.7\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [9 x i8] c"TxStat.8\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 390, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 400, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 431, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 492, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 512, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 521, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 523, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 546, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 607, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 656, i32 5 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 699, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 801, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 819, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 820, i32 18 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 820, i32 28 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 822, i32 28 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 824, i32 28 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 827, i32 28 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 837, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 845, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1138, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1288, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1352, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2491, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2507, i32 6 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2517, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2528, i32 5 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2546, i32 5 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2554, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2564, i32 5 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2666, i32 23 }
@___asan_gen_.455 = private unnamed_addr constant [25 x i8] c"jfs_commit_thread_waking\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [23 x i8] c"jfs_commit_thread_wait\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2795, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2797, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [15 x i8] c"jfs_tlocks_low\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 68, i32 5 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2979, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2991, i32 45 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2991, i32 56 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2998, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 3015, i32 47 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 3015, i32 52 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 3024, i32 10 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 103, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 194, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 788, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 260, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1160, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 875, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 905, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 915, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 920, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 926, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 940, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 717, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1411, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1751, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1785, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1888, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2011, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2032, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2051, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 1492, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2138, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2238, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2318, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2366, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2369, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2446, i32 5 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2455, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2465, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 209, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2687, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2691, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2717, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 57, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 112, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2824, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.721 = private constant [23 x i8] c"../fs/jfs/jfs_txnmgr.c\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 2825, i32 2 }
@llvm.compiler.used = appending global [254 x ptr] [ptr @LogSyncRelease._entry, ptr @LogSyncRelease._entry.178, ptr @LogSyncRelease._entry_ptr, ptr @LogSyncRelease._entry_ptr.179, ptr @__UNIQUE_ID_nTxBlock247, ptr @__UNIQUE_ID_nTxBlocktype246, ptr @__UNIQUE_ID_nTxLock249, ptr @__UNIQUE_ID_nTxLocktype248, ptr @__param_nTxBlock, ptr @__param_nTxLock, ptr @diLog._entry, ptr @diLog._entry_ptr, ptr @jfs_lazycommit._entry, ptr @jfs_lazycommit._entry.93, ptr @jfs_lazycommit._entry_ptr, ptr @jfs_lazycommit._entry_ptr.95, ptr @jfs_sync._entry, ptr @jfs_sync._entry_ptr, ptr @mapLog._entry, ptr @mapLog._entry_ptr, ptr @txAllocPMap._entry, ptr @txAllocPMap._entry.160, ptr @txAllocPMap._entry.162, ptr @txAllocPMap._entry_ptr, ptr @txAllocPMap._entry_ptr.161, ptr @txAllocPMap._entry_ptr.163, ptr @txBegin._entry, ptr @txBegin._entry.18, ptr @txBegin._entry.21, ptr @txBegin._entry.23, ptr @txBegin._entry_ptr, ptr @txBegin._entry_ptr.20, ptr @txBegin._entry_ptr.22, ptr @txBegin._entry_ptr.25, ptr @txCommit._entry, ptr @txCommit._entry.68, ptr @txCommit._entry.71, ptr @txCommit._entry_ptr, ptr @txCommit._entry_ptr.69, ptr @txCommit._entry_ptr.73, ptr @txEnd._entry, ptr @txEnd._entry.28, ptr @txEnd._entry.31, ptr @txEnd._entry.34, ptr @txEnd._entry.38, ptr @txEnd._entry_ptr, ptr @txEnd._entry_ptr.30, ptr @txEnd._entry_ptr.33, ptr @txEnd._entry_ptr.36, ptr @txEnd._entry_ptr.40, ptr @txForce._entry, ptr @txForce._entry_ptr, ptr @txFreeMap._entry, ptr @txFreeMap._entry.76, ptr @txFreeMap._entry.79, ptr @txFreeMap._entry.81, ptr @txFreeMap._entry.83, ptr @txFreeMap._entry.86, ptr @txFreeMap._entry.88, ptr @txFreeMap._entry_ptr, ptr @txFreeMap._entry_ptr.78, ptr @txFreeMap._entry_ptr.80, ptr @txFreeMap._entry_ptr.82, ptr @txFreeMap._entry_ptr.85, ptr @txFreeMap._entry_ptr.87, ptr @txFreeMap._entry_ptr.89, ptr @txInit._entry, ptr @txInit._entry_ptr, ptr @txLazyCommit._entry, ptr @txLazyCommit._entry.168, ptr @txLazyCommit._entry.171, ptr @txLazyCommit._entry_ptr, ptr @txLazyCommit._entry_ptr.170, ptr @txLazyCommit._entry_ptr.173, ptr @txLock._entry, ptr @txLock._entry.43, ptr @txLock._entry.46, ptr @txLock._entry.49, ptr @txLock._entry.52, ptr @txLock._entry.60, ptr @txLock._entry.63, ptr @txLock._entry_ptr, ptr @txLock._entry_ptr.44, ptr @txLock._entry_ptr.48, ptr @txLock._entry_ptr.51, ptr @txLock._entry_ptr.54, ptr @txLock._entry_ptr.62, ptr @txLock._entry_ptr.65, ptr @txLockAlloc._entry, ptr @txLockAlloc._entry_ptr, ptr @txLockFree._entry, ptr @txLockFree._entry_ptr, ptr @txLog._entry, ptr @txLog._entry_ptr, ptr @txRelease._entry, ptr @txRelease._entry_ptr, ptr @txUnlock._entry, ptr @txUnlock._entry.115, ptr @txUnlock._entry.118, ptr @txUnlock._entry.120, ptr @txUnlock._entry.123, ptr @txUnlock._entry_ptr, ptr @txUnlock._entry_ptr.117, ptr @txUnlock._entry_ptr.119, ptr @txUnlock._entry_ptr.121, ptr @txUnlock._entry_ptr.124, ptr @txUpdateMap._entry, ptr @txUpdateMap._entry.152, ptr @txUpdateMap._entry.155, ptr @txUpdateMap._entry_ptr, ptr @txUpdateMap._entry_ptr.153, ptr @txUpdateMap._entry_ptr.156, ptr @xtLog._entry, ptr @xtLog._entry.130, ptr @xtLog._entry.133, ptr @xtLog._entry.136, ptr @xtLog._entry.139, ptr @xtLog._entry.142, ptr @xtLog._entry_ptr, ptr @xtLog._entry_ptr.132, ptr @xtLog._entry_ptr.135, ptr @xtLog._entry_ptr.138, ptr @xtLog._entry_ptr.141, ptr @xtLog._entry_ptr.144, ptr @nTxBlock, ptr @nTxLock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @TxLockLWM, ptr @TxLockHWM, ptr @TxLockVHWM, ptr @TxBlock, ptr @txInit.__key, ptr @.str.3, ptr @txInit.__key.4, ptr @.str.5, ptr @txInit.__key.6, ptr @txInit.__key.7, ptr @TxAnchor, ptr @txInit.__key.8, ptr @.str.9, ptr @stattx.0, ptr @stattx.1, ptr @stattx.2, ptr @stattx.3, ptr @TxLock, ptr @txInit.__key.10, ptr @.str.11, ptr @txInit.__key.12, ptr @.str.13, ptr @txInit.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @jfsTxnLock, ptr @TxStat.0, ptr @TxStat.1, ptr @TxStat.2, ptr @TxStat.3, ptr @TxStat.4, ptr @TxStat.5, ptr @TxStat.6, ptr @TxStat.7, ptr @TxStat.8, ptr @.str.19, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.84, ptr @.str.90, ptr @jfs_commit_thread_waking, ptr @jfs_commit_thread_wait, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @jfs_tlocks_low, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.122, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.180], section "llvm.metadata"
@0 = internal global [189 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nTxBlock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nTxLock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxLockLWM to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxLockHWM to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxLockVHWM to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxBlock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxAnchor to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stattx.0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stattx.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stattx.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stattx.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxLock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txInit.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txBegin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfsTxnLock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxStat.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txBegin._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txBegin._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txBegin._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txEnd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txEnd._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txEnd._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txEnd._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txEnd._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLock._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLock._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLock._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLock._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLock._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLock._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txCommit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txCommit._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txCommit._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txFreeMap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txFreeMap._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txFreeMap._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txFreeMap._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txFreeMap._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txFreeMap._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txFreeMap._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_commit_thread_waking to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_commit_thread_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_lazycommit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_lazycommit._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_tlocks_low to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 327, i32 416, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLockAlloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txRelease._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUnlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUnlock._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUnlock._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUnlock._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUnlock._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtLog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtLog._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtLog._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtLog._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtLog._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtLog._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diLog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapLog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txForce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUpdateMap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUpdateMap._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txUpdateMap._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txAllocPMap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txAllocPMap._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txAllocPMap._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLockFree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLazyCommit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLazyCommit._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txLazyCommit._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LogSyncRelease._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LogSyncRelease._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @txInit() local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #9
  %0 = call ptr @memset(ptr %si, i32 255, i32 64)
  %1 = load i32, ptr @nTxLock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @nTxBlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @si_meminfo(ptr noundef nonnull %si) #9
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2
  %3 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %totalram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %4)
  %cmp3 = icmp ugt i32 %4, 262144
  %shr = lshr i32 %4, 2
  %spec.select = select i1 %cmp3, i32 65536, i32 %shr
  br label %if.end12.sink.split

if.else6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %2)
  %cmp7 = icmp sgt i32 %2, 8192
  %shl = shl i32 %2, 3
  %spec.select119 = select i1 %cmp7, i32 65536, i32 %shl
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.else6, %if.then2
  %shr.sink = phi i32 [ %spec.select, %if.then2 ], [ %spec.select119, %if.else6 ]
  store i32 %shr.sink, ptr @nTxLock, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry.if.end12_crit_edge
  %5 = load i32, ptr @nTxBlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp13 = icmp eq i32 %5, -1
  br i1 %cmp13, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load i32, ptr @nTxLock, align 4
  %shr15 = ashr i32 %6, 3
  store i32 %shr15, ptr @nTxBlock, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %7 = phi i32 [ %shr15, %if.then14 ], [ %5, %if.end12.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp17 = icmp slt i32 %7, 16
  br i1 %cmp17, label %if.end16.if.end22.sink.split_crit_edge, label %if.end19

if.end16.if.end22.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split

if.end19:                                         ; preds = %if.end16
  %.pr = load i32, ptr @nTxBlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %.pr)
  %cmp20 = icmp sgt i32 %.pr, 65536
  br i1 %cmp20, label %if.end19.if.end22.sink.split_crit_edge, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end19.if.end22.sink.split_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.end19.if.end22.sink.split_crit_edge, %if.end16.if.end22.sink.split_crit_edge
  %.sink = phi i32 [ 16, %if.end16.if.end22.sink.split_crit_edge ], [ 65536, %if.end19.if.end22.sink.split_crit_edge ]
  store i32 %.sink, ptr @nTxBlock, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.end19.if.end22_crit_edge
  %8 = load i32, ptr @nTxLock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp23 = icmp slt i32 %8, 256
  br i1 %cmp23, label %if.end22.do.end.sink.split_crit_edge, label %if.end25

if.end22.do.end.sink.split_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.sink.split

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %cmp26 = icmp ugt i32 %8, 65536
  br i1 %cmp26, label %if.end25.do.end.sink.split_crit_edge, label %if.end25.do.end_crit_edge

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end25.do.end.sink.split_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.end25.do.end.sink.split_crit_edge, %if.end22.do.end.sink.split_crit_edge
  %.sink118 = phi i32 [ 256, %if.end22.do.end.sink.split_crit_edge ], [ 65536, %if.end25.do.end.sink.split_crit_edge ]
  store i32 %.sink118, ptr @nTxLock, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end25.do.end_crit_edge
  %9 = load i32, ptr @nTxBlock, align 4
  %10 = load i32, ptr @nTxLock, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %10) #12
  %11 = load i32, ptr @nTxLock, align 4
  %mul = shl i32 %11, 2
  %div = sdiv i32 %mul, 10
  store i32 %div, ptr @TxLockLWM, align 4
  %mul29 = mul i32 %11, 7
  %div30 = sdiv i32 %mul29, 10
  store i32 %div30, ptr @TxLockHWM, align 4
  %mul31 = shl i32 %11, 3
  %div32 = sdiv i32 %mul31, 10
  store i32 %div32, ptr @TxLockVHWM, align 4
  %12 = load i32, ptr @nTxBlock, align 4
  %mul33 = mul i32 %12, 172
  %call34 = call noalias ptr @vmalloc(i32 noundef %mul33) #13
  store ptr %call34, ptr @TxBlock, align 4
  %cmp35 = icmp eq ptr %call34, null
  br i1 %cmp35, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %13 = load i32, ptr @nTxBlock, align 4
  %sub111 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub111)
  %cmp38112 = icmp sgt i32 %sub111, 1
  br i1 %cmp38112, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %k.0113 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw nsw i32 %k.0113, 1
  %conv = trunc i32 %add to i16
  %14 = load ptr, ptr @TxBlock, align 4
  %next = getelementptr %struct.tblock, ptr %14, i32 %k.0113, i32 6
  %15 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %next, align 4
  %16 = load ptr, ptr @TxBlock, align 4
  %gcwait = getelementptr %struct.tblock, ptr %16, i32 %k.0113, i32 15
  call void @__init_waitqueue_head(ptr noundef %gcwait, ptr noundef nonnull @.str.3, ptr noundef nonnull @txInit.__key) #9
  %17 = load ptr, ptr @TxBlock, align 4
  %waitor = getelementptr %struct.tblock, ptr %17, i32 %k.0113, i32 8
  call void @__init_waitqueue_head(ptr noundef %waitor, ptr noundef nonnull @.str.5, ptr noundef nonnull @txInit.__key.4) #9
  %18 = load i32, ptr @nTxBlock, align 4
  %sub = add i32 %18, -1
  %cmp38 = icmp slt i32 %add, %sub
  br i1 %cmp38, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 1, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %19 = load ptr, ptr @TxBlock, align 4
  %next48 = getelementptr %struct.tblock, ptr %19, i32 %k.0.lcssa, i32 6
  %20 = ptrtoint ptr %next48 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %next48, align 4
  %21 = load ptr, ptr @TxBlock, align 4
  %gcwait51 = getelementptr %struct.tblock, ptr %21, i32 %k.0.lcssa, i32 15
  call void @__init_waitqueue_head(ptr noundef %gcwait51, ptr noundef nonnull @.str.3, ptr noundef nonnull @txInit.__key.6) #9
  %22 = load ptr, ptr @TxBlock, align 4
  %waitor56 = getelementptr %struct.tblock, ptr %22, i32 %k.0.lcssa, i32 8
  call void @__init_waitqueue_head(ptr noundef %waitor56, ptr noundef nonnull @.str.5, ptr noundef nonnull @txInit.__key.7) #9
  store i32 1, ptr @TxAnchor, align 4
  call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 2), ptr noundef nonnull @.str.9, ptr noundef nonnull @txInit.__key.8) #9
  store i16 1, ptr @stattx.0, align 4
  %23 = load i32, ptr @nTxLock, align 4
  %mul62 = shl i32 %23, 6
  %call63 = call noalias ptr @vmalloc(i32 noundef %mul62) #13
  store ptr %call63, ptr @TxLock, align 4
  %cmp64 = icmp eq ptr %call63, null
  br i1 %cmp64, label %if.then66, label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %for.end
  %24 = load i32, ptr @nTxLock, align 4
  %sub69114 = add i32 %24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub69114)
  %cmp70115 = icmp sgt i32 %sub69114, 1
  br i1 %cmp70115, label %for.cond68.preheader.for.body72_crit_edge, label %for.cond68.preheader.for.end79_crit_edge

for.cond68.preheader.for.end79_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79

for.cond68.preheader.for.body72_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body72

if.then66:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = load ptr, ptr @TxBlock, align 4
  call void @vfree(ptr noundef %25) #9
  br label %cleanup

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.cond68.preheader.for.body72_crit_edge
  %k.1116 = phi i32 [ %add73, %for.body72.for.body72_crit_edge ], [ 1, %for.cond68.preheader.for.body72_crit_edge ]
  %add73 = add nuw nsw i32 %k.1116, 1
  %conv74 = trunc i32 %add73 to i16
  %26 = load ptr, ptr @TxLock, align 4
  %arrayidx75 = getelementptr %struct.tlock, ptr %26, i32 %k.1116
  %27 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv74, ptr %arrayidx75, align 4
  %28 = load i32, ptr @nTxLock, align 4
  %sub69 = add i32 %28, -1
  %cmp70 = icmp slt i32 %add73, %sub69
  br i1 %cmp70, label %for.body72.for.body72_crit_edge, label %for.body72.for.end79_crit_edge

for.body72.for.end79_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72

for.end79:                                        ; preds = %for.body72.for.end79_crit_edge, %for.cond68.preheader.for.end79_crit_edge
  %k.1.lcssa = phi i32 [ 1, %for.cond68.preheader.for.end79_crit_edge ], [ %add73, %for.body72.for.end79_crit_edge ]
  %29 = load ptr, ptr @TxLock, align 4
  %arrayidx80 = getelementptr %struct.tlock, ptr %29, i32 %k.1.lcssa
  %30 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %arrayidx80, align 4
  call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3), ptr noundef nonnull @.str.11, ptr noundef nonnull @txInit.__key.10) #9
  call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4), ptr noundef nonnull @.str.13, ptr noundef nonnull @txInit.__key.12) #9
  store i32 1, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  store volatile ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), align 4
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9, i32 1), align 4
  call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6), ptr noundef nonnull @.str.15, ptr noundef nonnull @txInit.__key.14, i16 noundef signext 3) #9
  store volatile ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), align 4
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7, i32 1), align 4
  store i16 1, ptr @stattx.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end79, %if.then66, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then66 ], [ 0, %for.end79 ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txExit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @TxLock, align 4
  tail call void @vfree(ptr noundef %0) #9
  store ptr null, ptr @TxLock, align 4
  %1 = load ptr, ptr @TxBlock, align 4
  tail call void @vfree(ptr noundef %1) #9
  store ptr null, ptr @TxBlock, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @txBegin(ptr noundef %sb, i32 noundef %flag) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %flag) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %log5 = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %log5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log5, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %5 = load i32, ptr @TxStat.0, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @TxStat.0, align 4
  %and = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %flag7 = getelementptr inbounds %struct.jfs_log, ptr %4, i32 0, i32 7
  %syncwait = getelementptr inbounds %struct.jfs_log, ptr %4, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %cmp17 = icmp eq i32 %flag, 0
  br label %retry

retry:                                            ; preds = %retry.backedge, %do.end3
  br i1 %tobool.not, label %if.then6, label %retry.if.end23_crit_edge

retry.if.end23_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then6:                                         ; preds = %retry
  %6 = ptrtoint ptr %flag7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flag7, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then6.retry.backedge_crit_edge

if.then6.retry.backedge_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

lor.lhs.false:                                    ; preds = %if.then6
  %9 = ptrtoint ptr %flag7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flag7, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %if.end16, label %lor.lhs.false.retry.backedge_crit_edge

lor.lhs.false.retry.backedge_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

retry.backedge.sink.split:                        ; preds = %do.body48.retry.backedge.sink.split_crit_edge, %do.body28.retry.backedge.sink.split_crit_edge
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %retry.backedge

retry.backedge:                                   ; preds = %do.body48.retry.backedge_crit_edge, %do.body28.retry.backedge_crit_edge, %if.then18.retry.backedge_crit_edge, %retry.backedge.sink.split, %lor.lhs.false.retry.backedge_crit_edge, %if.then6.retry.backedge_crit_edge
  %TxStat.1.sink124 = phi ptr [ @TxStat.2, %if.then18.retry.backedge_crit_edge ], [ @TxStat.3, %do.body28.retry.backedge_crit_edge ], [ @TxStat.3, %do.body48.retry.backedge_crit_edge ], [ @TxStat.1, %lor.lhs.false.retry.backedge_crit_edge ], [ @TxStat.1, %if.then6.retry.backedge_crit_edge ], [ @TxStat.3, %retry.backedge.sink.split ]
  %syncwait.sink = phi ptr [ getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4), %if.then18.retry.backedge_crit_edge ], [ getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 2), %do.body28.retry.backedge_crit_edge ], [ getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 2), %do.body48.retry.backedge_crit_edge ], [ %syncwait, %lor.lhs.false.retry.backedge_crit_edge ], [ %syncwait, %if.then6.retry.backedge_crit_edge ], [ getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 2), %retry.backedge.sink.split ]
  %12 = ptrtoint ptr %TxStat.1.sink124 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %TxStat.1.sink124, align 4
  %inc14 = add i32 %13, 1
  store i32 %inc14, ptr %TxStat.1.sink124, align 4
  tail call fastcc void @TXN_SLEEP_DROP_LOCK(ptr noundef %syncwait.sink)
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  br label %retry

if.end16:                                         ; preds = %lor.lhs.false
  br i1 %cmp17, label %if.then18, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %15 = load i32, ptr @TxLockVHWM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp19 = icmp sgt i32 %14, %15
  br i1 %cmp19, label %if.then18.retry.backedge_crit_edge, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18.retry.backedge_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %if.end16.if.end23_crit_edge, %retry.if.end23_crit_edge
  %16 = load i32, ptr @TxAnchor, align 4
  %conv24 = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24)
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %do.body28, label %if.end41

do.body28:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %17 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp29 = icmp sgt i32 %17, 3
  br i1 %cmp29, label %do.body28.retry.backedge.sink.split_crit_edge, label %do.body28.retry.backedge_crit_edge

do.body28.retry.backedge_crit_edge:               ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

do.body28.retry.backedge.sink.split_crit_edge:    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge.sink.split

if.end41:                                         ; preds = %if.end23
  %18 = load ptr, ptr @TxBlock, align 4
  %next = getelementptr %struct.tblock, ptr %18, i32 %conv24, i32 6
  %19 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp43 = icmp eq i16 %20, 0
  %21 = and i1 %tobool.not, %cmp43
  br i1 %21, label %do.body48, label %if.end61

do.body48:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %22 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp49 = icmp sgt i32 %22, 3
  br i1 %cmp49, label %do.body48.retry.backedge.sink.split_crit_edge, label %do.body48.retry.backedge_crit_edge

do.body48.retry.backedge_crit_edge:               ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

do.body48.retry.backedge.sink.split_crit_edge:    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge.sink.split

if.end61:                                         ; preds = %if.end41
  %arrayidx = getelementptr %struct.tblock, ptr %18, i32 %conv24
  %conv63 = zext i16 %20 to i32
  store i32 %conv63, ptr @TxAnchor, align 4
  %lsn = getelementptr %struct.tblock, ptr %18, i32 %conv24, i32 3
  %23 = ptrtoint ptr %lsn to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %lsn, align 4
  %flag64 = getelementptr %struct.tblock, ptr %18, i32 %conv24, i32 1
  %24 = ptrtoint ptr %flag64 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flag64, align 2
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayidx, align 4
  %last = getelementptr %struct.tblock, ptr %18, i32 %conv24, i32 7
  %26 = ptrtoint ptr %last to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %last, align 2
  %27 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %next, align 4
  %sb66 = getelementptr %struct.tblock, ptr %18, i32 %conv24, i32 5
  %28 = ptrtoint ptr %sb66 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sb, ptr %sb66, align 4
  %logtid = getelementptr inbounds %struct.jfs_log, ptr %4, i32 0, i32 10
  %29 = ptrtoint ptr %logtid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %logtid, align 4
  %inc67 = add i32 %30, 1
  store i32 %inc67, ptr %logtid, align 4
  %logtid69 = getelementptr %struct.tblock, ptr %18, i32 %conv24, i32 9
  %31 = ptrtoint ptr %logtid69 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc67, ptr %logtid69, align 4
  %active = getelementptr inbounds %struct.jfs_log, ptr %4, i32 0, i32 16
  %32 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active, align 4
  %inc70 = add i32 %33, 1
  store i32 %inc70, ptr %active, align 4
  %34 = load i16, ptr @stattx.0, align 4
  %conv72 = zext i16 %34 to i32
  %35 = tail call i32 @llvm.umax.i32(i32 %conv24, i32 %conv72)
  %conv78 = trunc i32 %35 to i16
  store i16 %conv78, ptr @stattx.0, align 4
  %36 = load i32, ptr @stattx.2, align 4
  %inc79 = add i32 %36, 1
  store i32 %inc79, ptr @stattx.2, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %37 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp81 = icmp sgt i32 %37, 3
  br i1 %cmp81, label %do.end86, label %if.end61.do.end92_crit_edge

if.end61.do.end92_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

do.end86:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv24) #12
  br label %do.end92

do.end92:                                         ; preds = %do.end86, %if.end61.do.end92_crit_edge
  %conv = trunc i32 %16 to i16
  ret i16 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @TXN_SLEEP_DROP_LOCK(ptr noundef %event) #5 align 64 {
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !355) #9
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
  call void @add_wait_queue(ptr noundef %event, ptr noundef nonnull %wait) #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@TXN_SLEEP_DROP_LOCK, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 2, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !365
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  call void @io_schedule() #9
  call void @remove_wait_queue(ptr noundef %event, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txBeginAnon(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %log1 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %4 = load i32, ptr @TxStat.4, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @TxStat.4, align 4
  %flag = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 7
  %syncwait = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 17
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %retry.retry.backedge_crit_edge

retry.retry.backedge_crit_edge:                   ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

lor.lhs.false:                                    ; preds = %retry
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.retry.backedge_crit_edge

lor.lhs.false.retry.backedge_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end.retry.backedge_crit_edge, %lor.lhs.false.retry.backedge_crit_edge, %retry.retry.backedge_crit_edge
  %TxStat.5.sink14 = phi ptr [ @TxStat.6, %if.end.retry.backedge_crit_edge ], [ @TxStat.5, %lor.lhs.false.retry.backedge_crit_edge ], [ @TxStat.5, %retry.retry.backedge_crit_edge ]
  %syncwait.sink = phi ptr [ getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4), %if.end.retry.backedge_crit_edge ], [ %syncwait, %lor.lhs.false.retry.backedge_crit_edge ], [ %syncwait, %retry.retry.backedge_crit_edge ]
  %11 = ptrtoint ptr %TxStat.5.sink14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %TxStat.5.sink14, align 4
  %inc6 = add i32 %12, 1
  store i32 %inc6, ptr %TxStat.5.sink14, align 4
  tail call fastcc void @TXN_SLEEP_DROP_LOCK(ptr noundef %syncwait.sink)
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  br label %retry

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %14 = load i32, ptr @TxLockVHWM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp = icmp sgt i32 %13, %14
  br i1 %cmp, label %if.end.retry.backedge_crit_edge, label %if.end9

if.end.retry.backedge_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txEnd(i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.tblock, ptr %0, i32 %idxprom
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %idxprom) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %waitor = getelementptr %struct.tblock, ptr %0, i32 %idxprom, i32 8
  tail call void @__wake_up(ptr noundef %waitor, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %sb = getelementptr %struct.tblock, ptr %0, i32 %idxprom, i32 5
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %log5 = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %log5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log5, align 4
  %flag = getelementptr %struct.tblock, ptr %0, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flag, align 2
  %10 = and i16 %9, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %11 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp27 = icmp sgt i32 %11, 3
  br i1 %tobool.not, label %do.body26, label %do.body8

do.body8:                                         ; preds = %do.end3
  br i1 %cmp27, label %do.end14, label %do.body8.do.end20_crit_edge

do.body8.do.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %idxprom, ptr noundef %arrayidx) #12
  br label %do.end20

do.end20:                                         ; preds = %do.end14, %do.body8.do.end20_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %gclock = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %gclock) #9
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flag, align 2
  %14 = or i16 %13, 512
  store i16 %14, ptr %flag, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %gclock) #9
  br label %cleanup

do.body26:                                        ; preds = %do.end3
  br i1 %cmp27, label %do.end32, label %do.body26.do.body39_crit_edge

do.body26.do.body39_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %idxprom, ptr noundef %arrayidx) #12
  br label %do.body39

do.body39:                                        ; preds = %do.end32, %do.body26.do.body39_crit_edge
  %next = getelementptr %struct.tblock, ptr %0, i32 %idxprom, i32 6
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp41 = icmp eq i16 %16, 0
  br i1 %cmp41, label %do.end57, label %do.end46

do.end46:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 523, ptr noundef nonnull @.str.37) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 523, 0\0A.popsection", ""() #9, !srcloc !366
  unreachable

do.end57:                                         ; preds = %do.body39
  %17 = load i32, ptr @TxAnchor, align 4
  %conv58 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv58, ptr %next, align 4
  store i32 %idxprom, ptr @TxAnchor, align 4
  %active = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 16
  %19 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp61 = icmp eq i32 %dec, 0
  br i1 %cmp61, label %if.then63, label %do.end57.if.end83_crit_edge

do.end57.if.end83_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then63:                                        ; preds = %do.end57
  %flag64 = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flag64) #9
  %21 = ptrtoint ptr %flag64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flag64, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool67.not = icmp eq i32 %23, 0
  br i1 %tobool67.not, label %if.then63.if.end83_crit_edge, label %if.then68

if.then63.if.end83_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then68:                                        ; preds = %if.then63
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  tail call void @jfs_syncpt(ptr noundef %7, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %24 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp70 = icmp sgt i32 %24, 3
  br i1 %cmp70, label %do.end75, label %if.then68.do.end80_crit_edge

if.then68.do.end80_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

do.end75:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %lsn = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 25
  %25 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lsn, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %26) #12
  br label %do.end80

do.end80:                                         ; preds = %do.end75, %if.then68.do.end80_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flag64) #9
  %syncwait = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %syncwait, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %wakeup

if.end83:                                         ; preds = %if.then63.if.end83_crit_edge, %do.end57.if.end83_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  br label %wakeup

wakeup:                                           ; preds = %if.end83, %do.end80
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 2), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %wakeup, %do.end20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_syncpt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @txLock(i16 noundef zeroext %tid, ptr noundef %ip, ptr noundef %mp, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ip, i32 -848
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ip, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp ne i16 %2, 16384
  %and2 = and i32 %type, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.else_crit_edge, label %land.lhs.true3

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true3:                                   ; preds = %entry
  %3 = ptrtoint ptr %mp to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mp, align 8
  %5 = and i16 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.not = icmp eq i16 %5, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %xtlid = getelementptr i8, ptr %ip, i32 -404
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %entry.if.else_crit_edge
  %lid7 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %lid.0.in = phi ptr [ %lid7, %if.else ], [ %xtlid, %if.then ]
  %tobool150.not = phi i1 [ true, %if.else ], [ false, %if.then ]
  %6 = ptrtoint ptr %lid.0.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %lid.0 = load i16, ptr %lid.0.in, align 4
  %conv8 = zext i16 %lid.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lid.0)
  %cmp9 = icmp eq i16 %lid.0, 0
  br i1 %cmp9, label %allocateLock, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %7 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp13 = icmp sgt i32 %7, 3
  %conv17 = zext i16 %tid to i32
  br i1 %cmp13, label %do.end, label %do.body.do.end22_crit_edge

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv17, ptr noundef %ip, ptr noundef %mp, i32 noundef %conv8) #12
  br label %do.end22

do.end22:                                         ; preds = %do.end, %do.body.do.end22_crit_edge
  %8 = load ptr, ptr @TxLock, align 4
  %arrayidx = getelementptr %struct.tlock, ptr %8, i32 %conv8
  %tid23 = getelementptr %struct.tlock, ptr %8, i32 %conv8, i32 1
  %9 = ptrtoint ptr %tid23 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tid23, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %tid)
  %cmp26 = icmp eq i16 %10, %tid
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  br label %grantLock

if.end29:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp31 = icmp eq i16 %10, 0
  br i1 %cmp31, label %if.then33, label %waitLock

if.then33:                                        ; preds = %if.end29
  %11 = ptrtoint ptr %tid23 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %tid, ptr %tid23, align 2
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %12 = load ptr, ptr @TxBlock, align 4
  %atlhead = getelementptr i8, ptr %ip, i32 -746
  %13 = ptrtoint ptr %atlhead to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %atlhead, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %lid.0)
  %cmp39 = icmp eq i16 %14, %lid.0
  br i1 %cmp39, label %if.then41, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then33
  %15 = load ptr, ptr @TxLock, align 4
  br label %for.cond

if.then41:                                        ; preds = %if.then33
  %atltail = getelementptr i8, ptr %ip, i32 -744
  %16 = ptrtoint ptr %atltail to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %atltail, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %lid.0)
  %cmp44 = icmp eq i16 %17, %lid.0
  br i1 %cmp44, label %if.then46, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then46:                                        ; preds = %if.then41
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %anon_inode_list = getelementptr i8, ptr %ip, i32 -696
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %anon_inode_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then46.list_del_init.exit_crit_edge

if.then46.list_del_init.exit_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %ip, i32 -692
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %anon_inode_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then46.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %anon_inode_list, ptr %anon_inode_list, align 4
  %prev.i3.i = getelementptr i8, ptr %ip, i32 -692
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %anon_inode_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  br label %if.end47

if.end47:                                         ; preds = %list_del_init.exit, %if.then41.if.end47_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %atlhead to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %atlhead, align 2
  br label %if.end90

for.cond:                                         ; preds = %do.body58.for.cond_crit_edge, %for.cond.preheader
  %last.0 = phi i16 [ %30, %do.body58.for.cond_crit_edge ], [ %14, %for.cond.preheader ]
  %idxprom51 = zext i16 %last.0 to i32
  %arrayidx52 = getelementptr %struct.tlock, ptr %15, i32 %idxprom51
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %lid.0)
  %cmp56.not = icmp eq i16 %30, %lid.0
  br i1 %cmp56.not, label %for.end, label %do.body58

do.body58:                                        ; preds = %for.cond
  %tobool59.not = icmp eq i16 %last.0, 0
  br i1 %tobool59.not, label %do.end63, label %do.body58.for.cond_crit_edge

do.body58.for.cond_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 656, ptr noundef nonnull @.str.45) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 656, 0\0A.popsection", ""() #9, !srcloc !367
  unreachable

for.end:                                          ; preds = %for.cond
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx52, align 4
  %atltail82 = getelementptr i8, ptr %ip, i32 -744
  %34 = ptrtoint ptr %atltail82 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %atltail82, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %lid.0)
  %cmp85 = icmp eq i16 %35, %lid.0
  br i1 %cmp85, label %if.then87, label %for.end.if.end90_crit_edge

for.end.if.end90_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then87:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %atltail82 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %last.0, ptr %atltail82, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %for.end.if.end90_crit_edge, %if.end47
  %next91 = getelementptr %struct.tblock, ptr %12, i32 %conv17, i32 6
  %37 = ptrtoint ptr %next91 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next91, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool92.not = icmp eq i16 %38, 0
  br i1 %tobool92.not, label %if.end90.if.end100_crit_edge, label %if.then93

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %39 = load ptr, ptr @TxLock, align 4
  %last94 = getelementptr %struct.tblock, ptr %12, i32 %conv17, i32 7
  %40 = ptrtoint ptr %last94 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %last94, align 2
  %idxprom95 = zext i16 %41 to i32
  %arrayidx96 = getelementptr %struct.tlock, ptr %39, i32 %idxprom95
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %if.end90.if.end100_crit_edge
  %next91.sink = phi ptr [ %arrayidx96, %if.then93 ], [ %next91, %if.end90.if.end100_crit_edge ]
  %42 = ptrtoint ptr %next91.sink to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %lid.0, ptr %next91.sink, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %arrayidx, align 4
  %last102 = getelementptr %struct.tblock, ptr %12, i32 %conv17, i32 7
  %44 = ptrtoint ptr %last102 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %lid.0, ptr %last102, align 2
  br label %grantLock

allocateLock:                                     ; preds = %if.end
  %call104 = tail call fastcc zeroext i16 @txLockAlloc()
  %45 = load ptr, ptr @TxLock, align 4
  %idxprom105 = zext i16 %call104 to i32
  %arrayidx106 = getelementptr %struct.tlock, ptr %45, i32 %idxprom105
  %tid107 = getelementptr %struct.tlock, ptr %45, i32 %idxprom105, i32 1
  %46 = ptrtoint ptr %tid107 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %tid, ptr %tid107, align 2
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %47 = ptrtoint ptr %mp to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mp, align 8
  %49 = and i16 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool111.not = icmp eq i16 %49, 0
  %flag135 = getelementptr %struct.tlock, ptr %45, i32 %idxprom105, i32 2
  br i1 %tobool111.not, label %if.else134, label %if.then112

if.then112:                                       ; preds = %allocateLock
  %50 = ptrtoint ptr %flag135 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -32768, ptr %flag135, align 4
  tail call fastcc void @metapage_nohomeok(ptr noundef %mp)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %51 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp114 = icmp sgt i32 %51, 3
  br i1 %cmp114, label %do.end119, label %if.then112.do.end125_crit_edge

if.then112.do.end125_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end125

do.end119:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 14
  %52 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nohomeok, align 4
  %conv121 = zext i16 %tid to i32
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %mp, i32 noundef %53, i32 noundef %conv121, ptr noundef %arrayidx106) #12
  br label %do.end125

do.end125:                                        ; preds = %do.end119, %if.then112.do.end125_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tid)
  %cmp127 = icmp eq i16 %tid, 0
  br i1 %cmp127, label %land.lhs.true129, label %do.end125.if.end136_crit_edge

do.end125.if.end136_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

land.lhs.true129:                                 ; preds = %do.end125
  %lsn = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 3
  %54 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool130.not = icmp eq i32 %55, 0
  br i1 %tobool130.not, label %land.lhs.true129.if.end136_crit_edge, label %if.then131

land.lhs.true129.if.end136_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then131:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  %cflag = getelementptr i8, ptr %ip, i32 -768
  tail call void @_set_bit(i32 noundef 6, ptr noundef %cflag) #9
  br label %if.end136

if.else134:                                       ; preds = %allocateLock
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %flag135 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 16384, ptr %flag135, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else134, %if.then131, %land.lhs.true129.if.end136_crit_edge, %do.end125.if.end136_crit_edge
  %57 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ip, align 8
  %59 = and i16 %58, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %59)
  %cmp140 = icmp eq i16 %59, 16384
  br i1 %cmp140, label %if.then142, label %if.end136.if.end146_crit_edge

if.end136.if.end146_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then142:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  %flag143 = getelementptr %struct.tlock, ptr %45, i32 %idxprom105, i32 2
  %60 = ptrtoint ptr %flag143 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flag143, align 4
  %62 = or i16 %61, 64
  store i16 %62, ptr %flag143, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %if.end136.if.end146_crit_edge
  %type147 = getelementptr %struct.tlock, ptr %45, i32 %idxprom105, i32 3
  %63 = ptrtoint ptr %type147 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %type147, align 2
  %ip148 = getelementptr %struct.tlock, ptr %45, i32 %idxprom105, i32 5
  %64 = ptrtoint ptr %ip148 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ip, ptr %ip148, align 4
  %mp149 = getelementptr %struct.tlock, ptr %45, i32 %idxprom105, i32 4
  %65 = ptrtoint ptr %mp149 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %mp, ptr %mp149, align 4
  %lid154 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 2
  %xtlid152 = getelementptr i8, ptr %ip, i32 -404
  %lid154.sink = select i1 %tobool150.not, ptr %lid154, ptr %xtlid152
  %66 = ptrtoint ptr %lid154.sink to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %call104, ptr %lid154.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tid)
  %tobool156.not = icmp eq i16 %tid, 0
  br i1 %tobool156.not, label %if.else172, label %if.then157

if.then157:                                       ; preds = %if.end146
  %67 = load ptr, ptr @TxBlock, align 4
  %idxprom158 = zext i16 %tid to i32
  %next160 = getelementptr %struct.tblock, ptr %67, i32 %idxprom158, i32 6
  %68 = ptrtoint ptr %next160 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %next160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool161.not = icmp eq i16 %69, 0
  br i1 %tobool161.not, label %if.then157.if.end169_crit_edge, label %if.then162

if.then157.if.end169_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.then162:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %70 = load ptr, ptr @TxLock, align 4
  %last163 = getelementptr %struct.tblock, ptr %67, i32 %idxprom158, i32 7
  %71 = ptrtoint ptr %last163 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %last163, align 2
  %idxprom164 = zext i16 %72 to i32
  %arrayidx165 = getelementptr %struct.tlock, ptr %70, i32 %idxprom164
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %if.then157.if.end169_crit_edge
  %next160.sink = phi ptr [ %arrayidx165, %if.then162 ], [ %next160, %if.then157.if.end169_crit_edge ]
  %73 = ptrtoint ptr %next160.sink to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %call104, ptr %next160.sink, align 4
  %74 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %arrayidx106, align 4
  %last171 = getelementptr %struct.tblock, ptr %67, i32 %idxprom158, i32 7
  %75 = ptrtoint ptr %last171 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %call104, ptr %last171, align 2
  br label %if.end184

if.else172:                                       ; preds = %if.end146
  %atlhead173 = getelementptr i8, ptr %ip, i32 -746
  %76 = ptrtoint ptr %atlhead173 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %atlhead173, align 2
  %78 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %arrayidx106, align 4
  store i16 %call104, ptr %atlhead173, align 2
  %79 = load i16, ptr %arrayidx106, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp178 = icmp eq i16 %79, 0
  br i1 %cmp178, label %if.then180, label %if.else172.if.end184_crit_edge

if.else172.if.end184_crit_edge:                   ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then180:                                       ; preds = %if.else172
  %atltail181 = getelementptr i8, ptr %ip, i32 -744
  %80 = ptrtoint ptr %atltail181 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call104, ptr %atltail181, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %anon_inode_list182 = getelementptr i8, ptr %ip, i32 -696
  %81 = load ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8, i32 1), align 4
  %call.i.i425 = tail call zeroext i1 @__list_add_valid(ptr noundef %anon_inode_list182, ptr noundef %81, ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8)) #9
  br i1 %call.i.i425, label %if.end.i.i426, label %if.then180.list_add_tail.exit_crit_edge

if.then180.list_add_tail.exit_crit_edge:          ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i426:                                    ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %anon_inode_list182, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8, i32 1), align 4
  %82 = ptrtoint ptr %anon_inode_list182 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), ptr %anon_inode_list182, align 4
  %prev3.i.i = getelementptr i8, ptr %ip, i32 -692
  %83 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %81, ptr %prev3.i.i, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %anon_inode_list182, ptr %81, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i426, %if.then180.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  br label %if.end184

if.end184:                                        ; preds = %list_add_tail.exit, %if.else172.if.end184_crit_edge, %if.end169
  %lock = getelementptr %struct.tlock, ptr %45, i32 %idxprom105, i32 6
  %85 = ptrtoint ptr %lock to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %lock, align 2
  %flag186 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 3
  %86 = ptrtoint ptr %flag186 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 8192, ptr %flag186, align 2
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 1
  %87 = ptrtoint ptr %maxcnt to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 20, ptr %maxcnt, align 2
  %index = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %88 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %index, align 1
  %89 = trunc i32 %type to i16
  %trunc = and i16 %89, -512
  %90 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.body216 [
    i16 8192, label %sw.bb
    i16 16384, label %sw.bb188
    i16 -32768, label %sw.bb212
    i16 512, label %sw.bb214
  ]

sw.bb:                                            ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %l2linesize = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 5
  %91 = ptrtoint ptr %l2linesize to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 5, ptr %l2linesize, align 1
  br label %grantLock

sw.bb188:                                         ; preds = %if.end184
  %l2linesize189 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 5
  %92 = ptrtoint ptr %l2linesize189 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 4, ptr %l2linesize189, align 1
  %header = getelementptr inbounds %struct.xtlock, ptr %lock, i32 0, i32 6
  %93 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %header, align 4
  %length = getelementptr inbounds %struct.xtlock, ptr %lock, i32 0, i32 6, i32 1
  %94 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 2, ptr %length, align 1
  %and191 = and i32 %type, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.else195, label %sw.bb188.if.end206_crit_edge

sw.bb188.if.end206_crit_edge:                     ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

if.else195:                                       ; preds = %sw.bb188
  %95 = ptrtoint ptr %mp to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %mp, align 8
  %97 = and i16 %96, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool199.not = icmp eq i16 %97, 0
  br i1 %tobool199.not, label %if.else201, label %if.then200

if.then200:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 7
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 4
  br label %if.end202

if.else201:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #11
  %u = getelementptr i8, ptr %ip, i32 -400
  br label %if.end202

if.end202:                                        ; preds = %if.else201, %if.then200
  %p.0 = phi ptr [ %99, %if.then200 ], [ %u, %if.else201 ]
  %nextindex = getelementptr inbounds %struct.xtheader, ptr %p.0, i32 0, i32 4
  %100 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %nextindex, align 2
  %102 = lshr i16 %101, 8
  %conv203 = trunc i16 %102 to i8
  br label %if.end206

if.end206:                                        ; preds = %if.end202, %sw.bb188.if.end206_crit_edge
  %conv203.sink = phi i8 [ %conv203, %if.end202 ], [ 2, %sw.bb188.if.end206_crit_edge ]
  %lwm204 = getelementptr inbounds %struct.xtlock, ptr %lock, i32 0, i32 7
  %103 = ptrtoint ptr %lwm204 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv203.sink, ptr %lwm204, align 2
  %length208 = getelementptr inbounds %struct.xtlock, ptr %lock, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %length208 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %length208, align 1
  %twm = getelementptr inbounds %struct.xtlock, ptr %lock, i32 0, i32 9
  %105 = ptrtoint ptr %twm to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %twm, align 2
  %hwm = getelementptr inbounds %struct.xtlock, ptr %lock, i32 0, i32 8
  %106 = ptrtoint ptr %hwm to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %hwm, align 4
  %107 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 2, ptr %index, align 1
  br label %grantLock

sw.bb212:                                         ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %l2linesize213 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 5
  %108 = ptrtoint ptr %l2linesize213 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 7, ptr %l2linesize213, align 1
  br label %grantLock

sw.bb214:                                         ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %l2linesize215 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 5
  %109 = ptrtoint ptr %l2linesize215 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 4, ptr %l2linesize215, align 1
  br label %grantLock

do.body216:                                       ; preds = %if.end184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %110 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp217 = icmp sgt i32 %110, 0
  br i1 %cmp217, label %do.end222, label %do.body216.grantLock_crit_edge

do.body216.grantLock_crit_edge:                   ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #11
  br label %grantLock

do.end222:                                        ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #11
  %call224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %arrayidx106) #12
  br label %grantLock

grantLock:                                        ; preds = %do.end222, %do.body216.grantLock_crit_edge, %sw.bb214, %sw.bb212, %if.end206, %sw.bb, %if.end100, %if.then28
  %tlck.0 = phi ptr [ %arrayidx106, %do.end222 ], [ %arrayidx106, %do.body216.grantLock_crit_edge ], [ %arrayidx106, %sw.bb214 ], [ %arrayidx106, %sw.bb212 ], [ %arrayidx106, %if.end206 ], [ %arrayidx106, %sw.bb ], [ %arrayidx, %if.then28 ], [ %arrayidx, %if.end100 ]
  %type228 = getelementptr inbounds %struct.tlock, ptr %tlck.0, i32 0, i32 3
  %111 = ptrtoint ptr %type228 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %type228, align 2
  %113 = trunc i32 %type to i16
  %conv231 = or i16 %112, %113
  store i16 %conv231, ptr %type228, align 2
  br label %cleanup

waitLock:                                         ; preds = %if.end29
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp232.not = icmp eq i32 %115, 1
  br i1 %cmp232.not, label %if.end248, label %do.end237

do.end237:                                        ; preds = %waitLock
  call void @__sanitizer_cov_trace_pc() #11
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %ip, i32 noundef 784, i1 noundef zeroext false) #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.57, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %mp, i32 noundef 120, i1 noundef zeroext false) #9
  %116 = load ptr, ptr @TxBlock, align 4
  %arrayidx241 = getelementptr %struct.tblock, ptr %116, i32 %conv17
  tail call void @print_hex_dump(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %arrayidx241, i32 noundef 172, i1 noundef zeroext false) #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.59, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %arrayidx, i32 noundef 64, i1 noundef zeroext false) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 829, 0\0A.popsection", ""() #9, !srcloc !368
  unreachable

if.end248:                                        ; preds = %waitLock
  %117 = load i32, ptr @stattx.3, align 4
  %inc = add i32 %117, 1
  store i32 %inc, ptr @stattx.3, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  tail call void @release_metapage(ptr noundef %mp) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %118 = ptrtoint ptr %tid23 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %tid23, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %120 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %120)
  %cmp251 = icmp sgt i32 %120, 3
  %conv259 = zext i16 %119 to i32
  br i1 %cmp251, label %do.end256, label %if.end248.do.end264_crit_edge

if.end248.do.end264_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end264

do.end256:                                        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #11
  %call261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv17, i32 noundef %conv259, i32 noundef %conv8) #12
  br label %do.end264

do.end264:                                        ; preds = %do.end256, %if.end248.do.end264_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool266.not = icmp eq i16 %119, 0
  br i1 %tobool266.not, label %do.end264.if.else280_crit_edge, label %land.lhs.true267

do.end264.if.else280_crit_edge:                   ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else280

land.lhs.true267:                                 ; preds = %do.end264
  %mp268 = getelementptr %struct.tlock, ptr %8, i32 %conv8, i32 4
  %121 = ptrtoint ptr %mp268 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mp268, align 4
  %cmp269 = icmp eq ptr %122, %mp
  br i1 %cmp269, label %land.lhs.true271, label %land.lhs.true267.if.else280_crit_edge

land.lhs.true267.if.else280_crit_edge:            ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else280

land.lhs.true271:                                 ; preds = %land.lhs.true267
  %lid272 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 2
  %123 = ptrtoint ptr %lid272 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %lid272, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %124, i16 %lid.0)
  %cmp275 = icmp eq i16 %124, %lid.0
  br i1 %cmp275, label %if.then277, label %land.lhs.true271.if.else280_crit_edge

land.lhs.true271.if.else280_crit_edge:            ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else280

if.then277:                                       ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #11
  %125 = load ptr, ptr @TxBlock, align 4
  %waitor = getelementptr %struct.tblock, ptr %125, i32 %conv259, i32 8
  tail call fastcc void @TXN_SLEEP_DROP_LOCK(ptr noundef %waitor)
  br label %do.body282

if.else280:                                       ; preds = %land.lhs.true271.if.else280_crit_edge, %land.lhs.true267.if.else280_crit_edge, %do.end264.if.else280_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  br label %do.body282

do.body282:                                       ; preds = %if.else280, %if.then277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %126 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %cmp283 = icmp sgt i32 %126, 3
  br i1 %cmp283, label %do.end288, label %do.body282.cleanup_crit_edge

do.body282.cleanup_crit_edge:                     ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end288:                                        ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #11
  %call292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv17, i32 noundef %conv8) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end288, %do.body282.cleanup_crit_edge, %grantLock
  %retval.0 = phi ptr [ %tlck.0, %grantLock ], [ null, %do.end288 ], [ null, %do.body282.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @txLockAlloc() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @TxStat.7, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @TxStat.7, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load i32, ptr @TxStat.8, align 4
  %inc1 = add i32 %2, 1
  store i32 %inc1, ptr @TxStat.8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %conv31 = trunc i32 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv31)
  %tobool2.not32 = icmp eq i16 %conv31, 0
  br i1 %tobool2.not32, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  tail call fastcc void @TXN_SLEEP_DROP_LOCK(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3))
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %conv = trunc i32 %4 to i16
  %tobool2.not = icmp eq i16 %conv, 0
  br i1 %tobool2.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %.lcssa30 = phi i32 [ %3, %if.end.while.end_crit_edge ], [ %4, %while.body.while.end_crit_edge ]
  %5 = load ptr, ptr @TxLock, align 4
  %idxprom = and i32 %.lcssa30, 65535
  %arrayidx = getelementptr %struct.tlock, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv3 = zext i16 %7 to i32
  store i32 %conv3, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %8 = load i16, ptr @stattx.1, align 4
  %conv4 = zext i16 %8 to i32
  %9 = tail call i32 @llvm.umax.i32(i32 %idxprom, i32 %conv4)
  %conv9 = trunc i32 %9 to i16
  store i16 %conv9, ptr @stattx.1, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %inc10 = add i32 %10, 1
  store i32 %inc10, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %11 = load i32, ptr @TxLockHWM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc10, i32 %11)
  %cmp11 = icmp sgt i32 %inc10, %11
  br i1 %cmp11, label %land.lhs.true, label %while.end.if.end25_crit_edge

while.end.if.end25_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %while.end
  %12 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13 = icmp eq i32 %12, 0
  br i1 %cmp13, label %do.body, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %13 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp16 = icmp sgt i32 %13, 3
  br i1 %cmp16, label %do.end, label %do.body.do.end23_crit_edge

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #12
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  store i32 1, ptr @jfs_tlocks_low, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsSyncThread to i32))
  %14 = load ptr, ptr @jfsSyncThread, align 4
  %call24 = tail call i32 @wake_up_process(ptr noundef %14) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %land.lhs.true.if.end25_crit_edge, %while.end.if.end25_crit_edge
  %conv.le = trunc i32 %.lcssa30 to i16
  ret i16 %conv.le
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @metapage_nohomeok(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %page1 = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.107, i32 noundef 788) #9
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !369

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
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !369

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.108) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !370
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
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !371
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !372
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
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 14
  %13 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nohomeok, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then, label %lock_page.exit.if.end_crit_edge

lock_page.exit.if.end_crit_edge:                  ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lock_page.exit
  %flag = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #9
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %2, align 4
  %and.i.i7 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %tobool.not.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %tobool.not.i.i8, label %if.end.i.i11, label %if.then.i.i10, !prof !369

if.then.i.i10:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i9 = add i32 %16, -1
  br label %_compound_head.exit.i13

if.end.i.i11:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i13

_compound_head.exit.i13:                          ; preds = %if.end.i.i11, %if.then.i.i10
  %retval.0.i.i12 = phi i32 [ %sub.i.i9, %if.then.i.i10 ], [ %17, %if.end.i.i11 ]
  %18 = inttoptr i32 %retval.0.i.i12 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %20, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !373

if.then.i1.i:                                     ; preds = %_compound_head.exit.i13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.110) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !374
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i13
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !375
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@metapage_nohomeok, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !376

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %18, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  tail call void @wait_on_page_writeback(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %get_page.exit, %lock_page.exit.if.end_crit_edge
  tail call void @unlock_page(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_metapage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @txMaplock(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %call1 = tail call fastcc zeroext i16 @txLockAlloc()
  %0 = load ptr, ptr @TxLock, align 4
  %idxprom = zext i16 %call1 to i32
  %arrayidx = getelementptr %struct.tlock, ptr %0, i32 %idxprom
  %tid2 = getelementptr %struct.tlock, ptr %0, i32 %idxprom, i32 1
  %1 = ptrtoint ptr %tid2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %tid, ptr %tid2, align 2
  %flag = getelementptr %struct.tlock, ptr %0, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16384, ptr %flag, align 4
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ip, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp = icmp eq i16 %5, 16384
  %spec.store.select = select i1 %cmp, i16 16448, i16 16384
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.store.select, ptr %flag, align 4
  %ip7 = getelementptr %struct.tlock, ptr %0, i32 %idxprom, i32 5
  %7 = ptrtoint ptr %ip7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ip, ptr %ip7, align 4
  %mp = getelementptr %struct.tlock, ptr %0, i32 %idxprom, i32 4
  %8 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mp, align 4
  %conv8 = trunc i32 %type to i16
  %type9 = getelementptr %struct.tlock, ptr %0, i32 %idxprom, i32 3
  %9 = ptrtoint ptr %type9 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %type9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tid)
  %tobool.not = icmp eq i16 %tid, 0
  br i1 %tobool.not, label %if.else22, label %if.then10

if.then10:                                        ; preds = %entry
  %10 = load ptr, ptr @TxBlock, align 4
  %idxprom11 = zext i16 %tid to i32
  %next = getelementptr %struct.tblock, ptr %10, i32 %idxprom11, i32 6
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool13.not = icmp eq i16 %12, 0
  br i1 %tobool13.not, label %if.then10.if.end19_crit_edge, label %if.then14

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %13 = load ptr, ptr @TxLock, align 4
  %last = getelementptr %struct.tblock, ptr %10, i32 %idxprom11, i32 7
  %14 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last, align 2
  %idxprom15 = zext i16 %15 to i32
  %arrayidx16 = getelementptr %struct.tlock, ptr %13, i32 %idxprom15
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then10.if.end19_crit_edge
  %next.sink = phi ptr [ %arrayidx16, %if.then14 ], [ %next, %if.then10.if.end19_crit_edge ]
  %16 = ptrtoint ptr %next.sink to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call1, ptr %next.sink, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayidx, align 4
  %last21 = getelementptr %struct.tblock, ptr %10, i32 %idxprom11, i32 7
  %18 = ptrtoint ptr %last21 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call1, ptr %last21, align 2
  br label %if.end31

if.else22:                                        ; preds = %entry
  %atlhead = getelementptr i8, ptr %ip, i32 -746
  %19 = ptrtoint ptr %atlhead to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %atlhead, align 2
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx, align 4
  store i16 %call1, ptr %atlhead, align 2
  %22 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp27 = icmp eq i16 %22, 0
  br i1 %cmp27, label %if.then29, label %if.else22.if.end31_crit_edge

if.else22.if.end31_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.else22
  %atltail = getelementptr i8, ptr %ip, i32 -744
  %23 = ptrtoint ptr %atltail to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %call1, ptr %atltail, align 8
  %anon_inode_list = getelementptr i8, ptr %ip, i32 -696
  %24 = load ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %anon_inode_list, ptr noundef %24, ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8)) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.if.end31_crit_edge

if.then29.if.end31_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %anon_inode_list, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8, i32 1), align 4
  %25 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), ptr %anon_inode_list, align 4
  %prev3.i.i = getelementptr i8, ptr %ip, i32 -692
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %anon_inode_list, ptr %24, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end.i.i, %if.then29.if.end31_crit_edge, %if.else22.if.end31_crit_edge, %if.end19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %lock = getelementptr %struct.tlock, ptr %0, i32 %idxprom, i32 6
  %28 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %lock, align 4
  ret ptr %arrayidx
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @txLinelock(ptr nocapture noundef %tlock) local_unnamed_addr #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %call = tail call fastcc zeroext i16 @txLockAlloc()
  %0 = load ptr, ptr @TxLock, align 4
  %idxprom = zext i16 %call to i32
  %arrayidx = getelementptr %struct.tlock, ptr %0, i32 %idxprom
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %arrayidx, align 2
  %flag = getelementptr inbounds %struct.linelock, ptr %arrayidx, i32 0, i32 3
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 8192, ptr %flag, align 2
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %maxcnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 28, ptr %maxcnt, align 2
  %index = getelementptr inbounds %struct.linelock, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %index, align 1
  %5 = ptrtoint ptr %tlock to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tlock, align 2
  store i16 %6, ptr %arrayidx, align 2
  store i16 %call, ptr %tlock, align 2
  ret ptr %arrayidx
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @txCommit(i16 noundef zeroext %tid, i32 noundef %nip, ptr noundef %iplist, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %cd = alloca %struct.commit, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cd) #9
  %0 = call ptr @memset(ptr %cd, i32 255, i32 60)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %tid to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %flag) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = ptrtoint ptr %iplist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iplist, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log.i, align 4
  %tobool.not.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.not, label %do.end3.do.body161_crit_edge, label %if.end6

do.end3.do.body161_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body161

if.end6:                                          ; preds = %do.end3
  %sb8 = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 3
  %10 = ptrtoint ptr %sb8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %sb8, align 4
  %11 = ptrtoint ptr %cd to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %tid, ptr %cd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tid)
  %cmp11 = icmp eq i16 %tid, 0
  br i1 %cmp11, label %if.then13, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call zeroext i16 @txBegin(ptr noundef %5, i32 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end6.if.end15_crit_edge
  %tid.addr.0 = phi i16 [ %call14, %if.then13 ], [ %tid, %if.end6.if.end15_crit_edge ]
  %12 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %tid.addr.0 to i32
  %arrayidx16 = getelementptr %struct.tblock, ptr %12, i32 %idxprom
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %log18 = getelementptr inbounds %struct.jfs_sb_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %log18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log18, align 4
  %log19 = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 2
  %17 = ptrtoint ptr %log19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %log19, align 4
  %lrd20 = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6
  %logtid = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 9
  %18 = ptrtoint ptr %logtid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %logtid, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %lrd20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %lrd20, align 4
  %backchain = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %backchain, align 4
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx16, align 4
  %25 = trunc i32 %flag to i16
  %conv23 = or i16 %24, %25
  %and = and i32 %flag, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp24 = icmp eq i32 %and, 0
  %26 = or i16 %conv23, 2048
  %spec.select = select i1 %cmp24, i16 %26, i16 %conv23
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %spec.select, ptr %arrayidx16, align 4
  %iplist32 = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 5
  %28 = ptrtoint ptr %iplist32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %iplist, ptr %iplist32, align 4
  %nip33 = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 4
  %29 = ptrtoint ptr %nip33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %nip, ptr %nip33, align 4
  %next = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 6
  %last = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 7
  br label %for.cond

for.cond:                                         ; preds = %if.end76.for.cond_crit_edge, %if.end15
  %k.0 = phi i32 [ 0, %if.end15 ], [ %add, %if.end76.for.cond_crit_edge ]
  %30 = ptrtoint ptr %nip33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nip33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0, i32 %31)
  %cmp35 = icmp slt i32 %k.0, %31
  br i1 %cmp35, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  %add = add nuw nsw i32 %k.0, 1
  %32 = ptrtoint ptr %nip33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nip33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %33)
  %cmp41276 = icmp slt i32 %add, %33
  br i1 %cmp41276, label %for.body43.preheader, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body43.preheader:                             ; preds = %for.body
  %34 = ptrtoint ptr %iplist32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iplist32, align 4
  %arrayidx38 = getelementptr ptr, ptr %35, i32 %k.0
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx38, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  br label %for.body43

for.body43:                                       ; preds = %for.inc.for.body43_crit_edge, %for.body43.preheader
  %top.0278 = phi i32 [ %top.1, %for.inc.for.body43_crit_edge ], [ %39, %for.body43.preheader ]
  %n.0277 = phi i32 [ %inc, %for.inc.for.body43_crit_edge ], [ %add, %for.body43.preheader ]
  %40 = ptrtoint ptr %iplist32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iplist32, align 4
  %arrayidx45 = getelementptr ptr, ptr %41, i32 %n.0277
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx45, align 4
  %i_ino46 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %top.0278)
  %cmp47 = icmp ugt i32 %45, %top.0278
  br i1 %cmp47, label %if.then49, label %for.body43.for.inc_crit_edge

for.body43.for.inc_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then49:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx52 = getelementptr ptr, ptr %41, i32 %k.0
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx52, align 4
  %48 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %arrayidx45, align 4
  %49 = ptrtoint ptr %iplist32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iplist32, align 4
  %arrayidx56 = getelementptr ptr, ptr %50, i32 %k.0
  %51 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %43, ptr %arrayidx56, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %for.body43.for.inc_crit_edge
  %top.1 = phi i32 [ %45, %if.then49 ], [ %top.0278, %for.body43.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %n.0277, 1
  %52 = ptrtoint ptr %nip33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nip33, align 4
  %cmp41 = icmp slt i32 %inc, %53
  br i1 %cmp41, label %for.inc.for.body43_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body43_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %54 = ptrtoint ptr %iplist32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iplist32, align 4
  %arrayidx59 = getelementptr ptr, ptr %55, i32 %k.0
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx59, align 4
  %cflag = getelementptr i8, ptr %57, i32 -768
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %cflag) #9
  %atlhead = getelementptr i8, ptr %57, i32 -746
  %58 = ptrtoint ptr %atlhead to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %atlhead, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool62.not = icmp eq i16 %59, 0
  br i1 %tobool62.not, label %for.end.if.end76_crit_edge, label %if.then63

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then63:                                        ; preds = %for.end
  %60 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %next, align 4
  %62 = load ptr, ptr @TxLock, align 4
  %atltail = getelementptr i8, ptr %57, i32 -744
  %63 = ptrtoint ptr %atltail to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %atltail, align 8
  %idxprom64 = zext i16 %64 to i32
  %arrayidx65 = getelementptr %struct.tlock, ptr %62, i32 %idxprom64
  %65 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %61, ptr %arrayidx65, align 4
  %66 = ptrtoint ptr %atlhead to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %atlhead, align 2
  store i16 %67, ptr %next, align 4
  %68 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %last, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool69.not = icmp eq i16 %69, 0
  br i1 %tobool69.not, label %if.then70, label %if.then63.if.end73_crit_edge

if.then63.if.end73_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %atltail to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %atltail, align 8
  %72 = ptrtoint ptr %last to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %last, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.then63.if.end73_crit_edge
  %73 = ptrtoint ptr %atltail to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %atltail, align 8
  %74 = ptrtoint ptr %atlhead to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %atlhead, align 2
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %anon_inode_list = getelementptr i8, ptr %57, i32 -696
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %anon_inode_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end73.list_del_init.exit_crit_edge

if.end73.list_del_init.exit_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %57, i32 -692
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %77 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %anon_inode_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end73.list_del_init.exit_crit_edge
  %81 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %anon_inode_list, ptr %anon_inode_list, align 4
  %prev.i3.i = getelementptr i8, ptr %57, i32 -692
  %82 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %anon_inode_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  br label %if.end76

if.end76:                                         ; preds = %list_del_init.exit, %for.end.if.end76_crit_edge
  %call77 = tail call i32 @diWrite(i16 noundef zeroext %tid.addr.0, ptr noundef %57) #9
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.for.cond_crit_edge, label %if.then159

if.end76.for.cond_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end83:                                        ; preds = %for.cond
  %83 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %83)
  %lid.0140.i = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lid.0140.i)
  %tobool.not141.i = icmp eq i16 %lid.0140.i, 0
  br i1 %tobool.not141.i, label %for.end83.txLog.exit_crit_edge, label %for.body.lr.ph.i

for.end83.txLog.exit_crit_edge:                   ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLog.exit

for.body.lr.ph.i:                                 ; preds = %for.end83
  %aggregate4.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 4
  %log6.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 5
  %inode.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 5, i32 0, i32 1
  %type.i119.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 5, i32 0, i32 2
  %l2linesize.i120.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 5, i32 0, i32 3
  %type6.i121.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 2
  %pxd5.i123.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 5, i32 0, i32 4
  %addr2.i.i130.i = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 5, i32 0, i32 4, i32 1
  %sb.i132.i = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lid.0142.i = phi i16 [ %lid.0140.i, %for.body.lr.ph.i ], [ %lid.0.i, %for.inc.i.for.body.i_crit_edge ]
  %84 = load ptr, ptr @TxLock, align 4
  %idxprom.i = zext i16 %lid.0142.i to i32
  %arrayidx.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i
  %flag.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 2
  %85 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %flag.i, align 4
  %87 = or i16 %86, 2048
  store i16 %87, ptr %flag.i, align 4
  %ip3.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 5
  %88 = ptrtoint ptr %ip3.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ip3.i, align 4
  %i_sb.i244 = getelementptr inbounds %struct.inode, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %i_sb.i244 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i244, align 4
  %s_fs_info.i.i245 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 33
  %92 = ptrtoint ptr %s_fs_info.i.i245 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i.i245, align 16
  %aggregate.i = getelementptr inbounds %struct.jfs_sb_info, ptr %93, i32 0, i32 14
  %94 = ptrtoint ptr %aggregate.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %aggregate.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #9
  %97 = ptrtoint ptr %aggregate4.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %aggregate4.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 -848
  %98 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.i, align 8
  %100 = call i32 @llvm.bswap.i32(i32 %99) #9
  %101 = ptrtoint ptr %log6.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %log6.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %89, i32 0, i32 11
  %102 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_ino.i, align 8
  %104 = call i32 @llvm.bswap.i32(i32 %103) #9
  %105 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %inode.i, align 4
  %type.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 3
  %106 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %type.i, align 2
  %108 = and i16 %107, -512
  %109 = zext i16 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %108, label %do.body.i [
    i16 16384, label %sw.bb.i
    i16 8192, label %sw.bb10.i
    i16 -32768, label %sw.bb11.i
    i16 4096, label %sw.bb12.i
    i16 512, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %110 = ptrtoint ptr %ip3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ip3.i, align 4
  %mp2.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 4
  %112 = ptrtoint ptr %mp2.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mp2.i.i, align 4
  %114 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 512, ptr %type.i119.i, align 4
  %115 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1024, ptr %l2linesize.i120.i, align 2
  %116 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %type.i, align 2
  %118 = and i16 %117, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool.not.i.i = icmp eq i16 %118, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 4608, ptr %type.i119.i, align 4
  %u.i.i = getelementptr i8, ptr %111, i32 -400
  %120 = ptrtoint ptr %111 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %111, align 8
  %122 = and i16 %121, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %122)
  %cmp.i.i = icmp eq i16 %122, 16384
  %spec.store.select698.i.i = select i1 %cmp.i.i, i16 4616, i16 4608
  %123 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %spec.store.select698.i.i, ptr %type.i119.i, align 4
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.metapage, ptr %113, i32 0, i32 7
  %124 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %p.0.i.i = phi ptr [ %125, %if.else.i.i ], [ %u.i.i, %if.then.i.i ]
  %nextindex.i.i = getelementptr inbounds %struct.xtheader, ptr %p.0.i.i, i32 0, i32 4
  %126 = ptrtoint ptr %nextindex.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %nextindex.i.i, align 2
  %128 = call i16 @llvm.bswap.i16(i16 %127) #9
  %conv21.i.i = zext i16 %128 to i32
  %lock.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6
  %129 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %type.i, align 2
  %conv24.i.i = zext i16 %130 to i32
  %and25.i.i = and i32 %conv24.i.i, 161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end113.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end20.i.i
  %131 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 8, ptr %type6.i121.i, align 4
  %index.i.i = getelementptr inbounds %struct.metapage, ptr %113, i32 0, i32 8
  %132 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %index.i.i, align 8
  %134 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pxd5.i123.i, align 4
  %and.i.i.i = and i32 %135, -256
  %sum.shift.i.i.i = lshr i64 %133, 32
  %conv7.i.i.i = trunc i64 %sum.shift.i.i.i to i32
  %conv.i.i.i = and i32 %conv7.i.i.i, 255
  %or.i.i.i = or i32 %conv.i.i.i, %and.i.i.i
  store i32 %or.i.i.i, ptr %pxd5.i123.i, align 4
  %conv3.i.i.i = trunc i64 %133 to i32
  %136 = call i32 @llvm.bswap.i32(i32 %conv3.i.i.i) #9
  %137 = ptrtoint ptr %addr2.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %addr2.i.i130.i, align 4
  %logical_size.i.i = getelementptr inbounds %struct.metapage, ptr %113, i32 0, i32 12
  %138 = ptrtoint ptr %logical_size.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %logical_size.i.i, align 4
  %140 = ptrtoint ptr %sb.i132.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sb.i132.i, align 4
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv29.i.i = zext i8 %143 to i32
  %shr.i.i = lshr i32 %139, %conv29.i.i
  %and1.i.i.i = and i32 %shr.i.i, 16777215
  %144 = call i32 @llvm.bswap.i32(i32 %and1.i.i.i) #9
  %or.i650.i.i = or i32 %144, %conv.i.i.i
  %145 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %or.i650.i.i, ptr %pxd5.i123.i, align 4
  %call30.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %146 = call i32 @llvm.bswap.i32(i32 %call30.i.i) #9
  %147 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %backchain, align 4
  %lwm31.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 5
  %148 = ptrtoint ptr %lwm31.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %lwm31.i.i, align 2
  %conv32.i.i = zext i8 %149 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp33.i.i = icmp eq i8 %149, 0
  %spec.store.select.i.i = select i1 %cmp33.i.i, i32 256, i32 %conv32.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i.i, i32 %conv21.i.i)
  %cmp37.i.i = icmp eq i32 %spec.store.select.i.i, %conv21.i.i
  br i1 %cmp37.i.i, label %if.then27.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end40.i.i

if.then27.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end40.i.i:                                     ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i.i, i32 %conv21.i.i)
  %cmp41.i.i = icmp ugt i32 %spec.store.select.i.i, %conv21.i.i
  br i1 %cmp41.i.i, label %do.body.i.i, label %if.end52.i.i

do.body.i.i:                                      ; preds = %if.end40.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %150 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp44.i.i = icmp sgt i32 %150, 0
  br i1 %cmp44.i.i, label %do.end.i.i, label %do.body.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %cleanup.sink.split.i.i

if.end52.i.i:                                     ; preds = %if.end40.i.i
  %151 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %flag.i, align 4
  %153 = or i16 %152, 128
  store i16 %153, ptr %flag.i, align 4
  %flag56.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 2
  %154 = ptrtoint ptr %flag56.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 128, ptr %flag56.i.i, align 4
  %sub.i.i = sub nsw i32 %conv21.i.i, %spec.store.select.i.i
  %conv57.i.i = trunc i32 %sub.i.i to i8
  %count.i.i = getelementptr inbounds %struct.xdlistlock, ptr %lock.i.i, i32 0, i32 5
  %155 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv57.i.i, ptr %count.i.i, align 1
  %conv59.i.i = and i32 %sub.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv59.i.i)
  %cmp60.i.i = icmp ult i32 %conv59.i.i, 5
  br i1 %cmp60.i.i, label %land.lhs.true.i.i, label %if.end52.i.i.if.else84.i.i_crit_edge

if.end52.i.i.if.else84.i.i_crit_edge:             ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else84.i.i

land.lhs.true.i.i:                                ; preds = %if.end52.i.i
  %156 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %arrayidx16, align 4
  %158 = and i16 %157, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %tobool64.not.i.i = icmp eq i16 %158, 0
  br i1 %tobool64.not.i.i, label %land.lhs.true.i.i.if.else84.i.i_crit_edge, label %if.then65.i.i

land.lhs.true.i.i.if.else84.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else84.i.i

if.then65.i.i:                                    ; preds = %land.lhs.true.i.i
  %159 = ptrtoint ptr %flag56.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 64, ptr %flag56.i.i, align 4
  %pxdlock68.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 8
  %union64.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %160 = ptrtoint ptr %union64.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %pxdlock68.i.i, ptr %union64.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv57.i.i)
  %cmp71700.not.i.i = icmp eq i8 %conv57.i.i, 0
  br i1 %cmp71700.not.i.i, label %if.then65.i.i.do.body93.i.i_crit_edge, label %if.then65.i.i.for.body.i.i_crit_edge

if.then65.i.i.for.body.i.i_crit_edge:             ; preds = %if.then65.i.i
  br label %for.body.i.i

if.then65.i.i.do.body93.i.i_crit_edge:            ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then65.i.i.for.body.i.i_crit_edge
  %pxd66.0702.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %pxdlock68.i.i, %if.then65.i.i.for.body.i.i_crit_edge ]
  %i.0701.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then65.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.0701.i.i, %spec.store.select.i.i
  %arrayidx.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %add.i.i
  %loc.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %add.i.i, i32 4
  %161 = ptrtoint ptr %loc.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %loc.i.i, align 4
  %addr2.i652.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %add.i.i, i32 4, i32 1
  %163 = ptrtoint ptr %addr2.i652.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %addr2.i652.i.i, align 4
  %165 = ptrtoint ptr %pxd66.0702.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pxd66.0702.i.i, align 4
  %and.i653.i.i = and i32 %166, -256
  %sum.shift.i654.i.i = and i32 %162, 255
  %or.i657.i.i = or i32 %and.i653.i.i, %sum.shift.i654.i.i
  store i32 %or.i657.i.i, ptr %pxd66.0702.i.i, align 4
  %addr2.i659.i.i = getelementptr inbounds %struct.pxd_t, ptr %pxd66.0702.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %addr2.i659.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %164, ptr %addr2.i659.i.i, align 4
  %168 = load i32, ptr %loc.i.i, align 4
  %169 = and i32 %168, -256
  %or.i662.i.i = or i32 %169, %sum.shift.i654.i.i
  store i32 %or.i662.i.i, ptr %pxd66.0702.i.i, align 4
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i.i, align 8
  %172 = and i8 %171, -4
  store i8 %172, ptr %arrayidx.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.pxd_t, ptr %pxd66.0702.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.0701.i.i, 1
  %173 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %count.i.i, align 1
  %conv70.i.i = zext i8 %174 to i32
  %cmp71.i.i = icmp ult i32 %inc.i.i, %conv70.i.i
  br i1 %cmp71.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.do.body93.i.i_crit_edge

for.body.i.i.do.body93.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.else84.i.i:                                    ; preds = %land.lhs.true.i.i.if.else84.i.i_crit_edge, %if.end52.i.i.if.else84.i.i_crit_edge
  %175 = ptrtoint ptr %flag56.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 128, ptr %flag56.i.i, align 4
  %arrayidx86.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %spec.store.select.i.i
  %union6487.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %176 = ptrtoint ptr %union6487.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %arrayidx86.i.i, ptr %union6487.i.i, align 8
  %177 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx16, align 4
  %179 = and i16 %178, -2049
  store i16 %179, ptr %arrayidx16, align 4
  br label %do.body93.i.i

do.body93.i.i:                                    ; preds = %if.else84.i.i, %for.body.i.i.do.body93.i.i_crit_edge, %if.then65.i.i.do.body93.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %180 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %180)
  %cmp94.i.i = icmp sgt i32 %180, 3
  br i1 %cmp94.i.i, label %do.end99.i.i, label %do.body93.i.i.do.end107.i.i_crit_edge

do.body93.i.i.do.end107.i.i_crit_edge:            ; preds = %do.body93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107.i.i

do.end99.i.i:                                     ; preds = %do.body93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %ip3.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ip3.i, align 4
  %183 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %count.i.i, align 1
  %conv103.i.i = zext i8 %184 to i32
  %call104.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %182, ptr noundef %113, ptr noundef %arrayidx.i, i32 noundef %spec.store.select.i.i, i32 noundef %conv103.i.i) #12
  br label %do.end107.i.i

do.end107.i.i:                                    ; preds = %do.end99.i.i, %do.body93.i.i.do.end107.i.i_crit_edge
  %index108.i.i = getelementptr inbounds %struct.maplock, ptr %lock.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %index108.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %index108.i.i, align 1
  br label %cleanup.sink.split.i.i

if.end113.i.i:                                    ; preds = %if.end20.i.i
  %and116.i.i = and i32 %conv24.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i.i)
  %tobool117.not.i.i = icmp eq i32 %and116.i.i, 0
  br i1 %tobool117.not.i.i, label %if.end248.i.i, label %if.then118.i.i

if.then118.i.i:                                   ; preds = %if.end113.i.i
  %186 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx16, align 4
  %188 = and i16 %187, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool122.not.i.i = icmp eq i16 %188, 0
  br i1 %tobool122.not.i.i, label %if.then118.i.i.if.end142.i.i_crit_edge, label %if.then123.i.i

if.then118.i.i.if.end142.i.i_crit_edge:           ; preds = %if.then118.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142.i.i

if.then123.i.i:                                   ; preds = %if.then118.i.i
  %189 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -32768, ptr %type6.i121.i, align 4
  %index125.i.i = getelementptr inbounds %struct.metapage, ptr %113, i32 0, i32 8
  %190 = ptrtoint ptr %index125.i.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %index125.i.i, align 8
  %192 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %pxd5.i123.i, align 4
  %and.i663.i.i = and i32 %193, -256
  %sum.shift.i664.i.i = lshr i64 %191, 32
  %conv7.i665.i.i = trunc i64 %sum.shift.i664.i.i to i32
  %conv.i666.i.i = and i32 %conv7.i665.i.i, 255
  %or.i667.i.i = or i32 %conv.i666.i.i, %and.i663.i.i
  store i32 %or.i667.i.i, ptr %pxd5.i123.i, align 4
  %conv3.i668.i.i = trunc i64 %191 to i32
  %194 = call i32 @llvm.bswap.i32(i32 %conv3.i668.i.i) #9
  %195 = ptrtoint ptr %addr2.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %addr2.i.i130.i, align 4
  %logical_size126.i.i = getelementptr inbounds %struct.metapage, ptr %113, i32 0, i32 12
  %196 = ptrtoint ptr %logical_size126.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %logical_size126.i.i, align 4
  %198 = ptrtoint ptr %sb.i132.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sb.i132.i, align 4
  %s_blocksize_bits128.i.i = getelementptr inbounds %struct.super_block, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %s_blocksize_bits128.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %s_blocksize_bits128.i.i, align 4
  %conv129.i.i = zext i8 %201 to i32
  %shr130.i.i = lshr i32 %197, %conv129.i.i
  %and1.i671.i.i = and i32 %shr130.i.i, 16777215
  %202 = call i32 @llvm.bswap.i32(i32 %and1.i671.i.i) #9
  %or.i672.i.i = or i32 %202, %conv.i666.i.i
  %203 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %or.i672.i.i, ptr %pxd5.i123.i, align 4
  %call131.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %204 = call i32 @llvm.bswap.i32(i32 %call131.i.i) #9
  %205 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %backchain, align 4
  %206 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %type.i, align 2
  %208 = and i16 %207, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %208)
  %tobool136.not.i.i = icmp eq i16 %208, 0
  br i1 %tobool136.not.i.i, label %if.then123.i.i.if.end142.i.i_crit_edge, label %if.then137.i.i

if.then123.i.i.if.end142.i.i_crit_edge:           ; preds = %if.then123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142.i.i

if.then137.i.i:                                   ; preds = %if.then123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %209 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 8, ptr %type6.i121.i, align 4
  %call139.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %210 = call i32 @llvm.bswap.i32(i32 %call139.i.i) #9
  %211 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %backchain, align 4
  br label %if.end142.i.i

if.end142.i.i:                                    ; preds = %if.then137.i.i, %if.then123.i.i.if.end142.i.i_crit_edge, %if.then118.i.i.if.end142.i.i_crit_edge
  %212 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 2048, ptr %type6.i121.i, align 4
  %213 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 2048, ptr %type.i119.i, align 4
  %hwm147.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 6
  %214 = ptrtoint ptr %hwm147.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %hwm147.i.i, align 4
  %conv149.i.i = zext i8 %215 to i32
  %add151.i.i = add nsw i32 %conv149.i.i, -1
  %conv152.i.i = trunc i32 %add151.i.i to i16
  %216 = call i16 @llvm.bswap.i16(i16 %conv152.i.i) #9
  %217 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %l2linesize.i120.i, align 2
  %header.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %218 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 2, ptr %header.i.i, align 4
  %conv157.i.i = trunc i32 %add151.i.i to i8
  %length.i.i = getelementptr inbounds %struct.lv, ptr %header.i.i, i32 0, i32 1
  %219 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv157.i.i, ptr %length.i.i, align 1
  %index159.i.i = getelementptr inbounds %struct.xtlock, ptr %lock.i.i, i32 0, i32 2
  %220 = ptrtoint ptr %index159.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %index159.i.i, align 1
  %call160.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %221 = call i32 @llvm.bswap.i32(i32 %call160.i.i) #9
  %222 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %backchain, align 4
  %223 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %flag.i, align 4
  %225 = or i16 %224, 128
  store i16 %225, ptr %flag.i, align 4
  %count169.i.i = getelementptr inbounds %struct.xdlistlock, ptr %lock.i.i, i32 0, i32 5
  %226 = ptrtoint ptr %count169.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv157.i.i, ptr %count169.i.i, align 1
  %conv171.i.i = and i32 %add151.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv171.i.i)
  %cmp172.i.i = icmp ult i32 %conv171.i.i, 5
  br i1 %cmp172.i.i, label %land.lhs.true174.i.i, label %if.end142.i.i.if.else203.i.i_crit_edge

if.end142.i.i.if.else203.i.i_crit_edge:           ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else203.i.i

land.lhs.true174.i.i:                             ; preds = %if.end142.i.i
  %227 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %arrayidx16, align 4
  %229 = and i16 %228, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %229)
  %tobool178.not.i.i = icmp eq i16 %229, 0
  br i1 %tobool178.not.i.i, label %land.lhs.true174.i.i.if.else203.i.i_crit_edge, label %if.then179.i.i

land.lhs.true174.i.i.if.else203.i.i_crit_edge:    ; preds = %land.lhs.true174.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else203.i.i

if.then179.i.i:                                   ; preds = %land.lhs.true174.i.i
  %flag182.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 2
  %230 = ptrtoint ptr %flag182.i.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 4, ptr %flag182.i.i, align 4
  %pxdlock183.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 8
  %231 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %pxdlock183.i.i, ptr %header.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv157.i.i)
  %cmp188704.not.i.i = icmp eq i8 %conv157.i.i, 0
  br i1 %cmp188704.not.i.i, label %if.then179.i.i.do.body212.i.i_crit_edge, label %if.then179.i.i.for.body190.i.i_crit_edge

if.then179.i.i.for.body190.i.i_crit_edge:         ; preds = %if.then179.i.i
  br label %for.body190.i.i

if.then179.i.i.do.body212.i.i_crit_edge:          ; preds = %if.then179.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body212.i.i

for.body190.i.i:                                  ; preds = %for.body190.i.i.for.body190.i.i_crit_edge, %if.then179.i.i.for.body190.i.i_crit_edge
  %pxd181.0706.i.i = phi ptr [ %incdec.ptr199.i.i, %for.body190.i.i.for.body190.i.i_crit_edge ], [ %pxdlock183.i.i, %if.then179.i.i.for.body190.i.i_crit_edge ]
  %i180.0705.i.i = phi i32 [ %inc201.i.i, %for.body190.i.i.for.body190.i.i_crit_edge ], [ 0, %if.then179.i.i.for.body190.i.i_crit_edge ]
  %add191.i.i = add nuw nsw i32 %i180.0705.i.i, 2
  %loc193.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %add191.i.i, i32 4
  %232 = ptrtoint ptr %loc193.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %loc193.i.i, align 4
  %addr2.i675.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %add191.i.i, i32 4, i32 1
  %234 = ptrtoint ptr %addr2.i675.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %addr2.i675.i.i, align 4
  %236 = ptrtoint ptr %pxd181.0706.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %pxd181.0706.i.i, align 4
  %and.i678.i.i = and i32 %237, -256
  %sum.shift.i679.i.i = and i32 %233, 255
  %or.i682.i.i = or i32 %and.i678.i.i, %sum.shift.i679.i.i
  store i32 %or.i682.i.i, ptr %pxd181.0706.i.i, align 4
  %addr2.i684.i.i = getelementptr inbounds %struct.pxd_t, ptr %pxd181.0706.i.i, i32 0, i32 1
  %238 = ptrtoint ptr %addr2.i684.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %235, ptr %addr2.i684.i.i, align 4
  %239 = load i32, ptr %loc193.i.i, align 4
  %240 = and i32 %239, -256
  %or.i687.i.i = or i32 %240, %sum.shift.i679.i.i
  store i32 %or.i687.i.i, ptr %pxd181.0706.i.i, align 4
  %incdec.ptr199.i.i = getelementptr %struct.pxd_t, ptr %pxd181.0706.i.i, i32 1
  %inc201.i.i = add nuw nsw i32 %i180.0705.i.i, 1
  %241 = ptrtoint ptr %count169.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %count169.i.i, align 1
  %conv187.i.i = zext i8 %242 to i32
  %cmp188.i.i = icmp ult i32 %inc201.i.i, %conv187.i.i
  br i1 %cmp188.i.i, label %for.body190.i.i.for.body190.i.i_crit_edge, label %for.body190.i.i.do.body212.i.i_crit_edge

for.body190.i.i.do.body212.i.i_crit_edge:         ; preds = %for.body190.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body212.i.i

for.body190.i.i.for.body190.i.i_crit_edge:        ; preds = %for.body190.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body190.i.i

if.else203.i.i:                                   ; preds = %land.lhs.true174.i.i.if.else203.i.i_crit_edge, %if.end142.i.i.if.else203.i.i_crit_edge
  %flag204.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 2
  %243 = ptrtoint ptr %flag204.i.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 8, ptr %flag204.i.i, align 4
  %arrayidx205.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 2
  %244 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %arrayidx205.i.i, ptr %header.i.i, align 8
  %245 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %arrayidx16, align 4
  %247 = and i16 %246, -2049
  store i16 %247, ptr %arrayidx16, align 4
  br label %do.body212.i.i

do.body212.i.i:                                   ; preds = %if.else203.i.i, %for.body190.i.i.do.body212.i.i_crit_edge, %if.then179.i.i.do.body212.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %248 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %248)
  %cmp213.i.i = icmp sgt i32 %248, 3
  br i1 %cmp213.i.i, label %do.end218.i.i, label %do.body212.i.i.do.end226.i.i_crit_edge

do.body212.i.i.do.end226.i.i_crit_edge:           ; preds = %do.body212.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end226.i.i

do.end218.i.i:                                    ; preds = %do.body212.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %249 = ptrtoint ptr %ip3.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ip3.i, align 4
  %251 = ptrtoint ptr %count169.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %count169.i.i, align 1
  %conv222.i.i = zext i8 %252 to i32
  %call223.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %250, ptr noundef %113, i32 noundef %conv222.i.i) #12
  br label %do.end226.i.i

do.end226.i.i:                                    ; preds = %do.end218.i.i, %do.body212.i.i.do.end226.i.i_crit_edge
  %253 = ptrtoint ptr %index159.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 1, ptr %index159.i.i, align 1
  %254 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %arrayidx16, align 4
  %256 = and i16 %255, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %tobool231.not.i.i = icmp eq i16 %256, 0
  br i1 %tobool231.not.i.i, label %lor.lhs.false.i.i, label %do.end226.i.i.land.lhs.true237.i.i_crit_edge

do.end226.i.i.land.lhs.true237.i.i_crit_edge:     ; preds = %do.end226.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true237.i.i

lor.lhs.false.i.i:                                ; preds = %do.end226.i.i
  %257 = ptrtoint ptr %111 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %111, align 8
  %259 = and i16 %258, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %259)
  %cmp235.i.i = icmp eq i16 %259, 16384
  br i1 %cmp235.i.i, label %lor.lhs.false.i.i.land.lhs.true237.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.i.land.lhs.true237.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true237.i.i

land.lhs.true237.i.i:                             ; preds = %lor.lhs.false.i.i.land.lhs.true237.i.i_crit_edge, %do.end226.i.i.land.lhs.true237.i.i_crit_edge
  %260 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %type.i, align 2
  %262 = and i16 %261, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %262)
  %tobool241.not.i.i = icmp eq i16 %262, 0
  br i1 %tobool241.not.i.i, label %land.lhs.true237.i.i.cleanup.sink.split.i.i_crit_edge, label %land.lhs.true237.i.i.for.inc.i_crit_edge

land.lhs.true237.i.i.for.inc.i_crit_edge:         ; preds = %land.lhs.true237.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true237.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true237.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end248.i.i:                                    ; preds = %if.end113.i.i
  %and251.i.i = and i32 %conv24.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251.i.i)
  %tobool252.not.i.i = icmp eq i32 %and251.i.i, 0
  br i1 %tobool252.not.i.i, label %if.end248.i.i.for.inc.i_crit_edge, label %if.then253.i.i

if.end248.i.i.for.inc.i_crit_edge:                ; preds = %if.end248.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then253.i.i:                                   ; preds = %if.end248.i.i
  %263 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %arrayidx16, align 4
  %265 = and i16 %264, -2049
  store i16 %265, ptr %arrayidx16, align 4
  %lwm259.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 5
  %266 = ptrtoint ptr %lwm259.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %lwm259.i.i, align 2
  %conv261.i.i = zext i8 %267 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %cmp262.i.i = icmp eq i8 %267, 0
  %spec.store.select434.i.i = select i1 %cmp262.i.i, i32 256, i32 %conv261.i.i
  %hwm266.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 6
  %268 = ptrtoint ptr %hwm266.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %hwm266.i.i, align 4
  %conv268.i.i = zext i8 %269 to i32
  %twm269.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 7
  %270 = ptrtoint ptr %twm269.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %twm269.i.i, align 2
  %conv271.i.i = zext i8 %271 to i32
  %272 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 8, ptr %type6.i121.i, align 4
  %index273.i.i = getelementptr inbounds %struct.metapage, ptr %113, i32 0, i32 8
  %273 = ptrtoint ptr %index273.i.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %index273.i.i, align 8
  %275 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pxd5.i123.i, align 4
  %and.i688.i.i = and i32 %276, -256
  %sum.shift.i689.i.i = lshr i64 %274, 32
  %conv7.i690.i.i = trunc i64 %sum.shift.i689.i.i to i32
  %conv.i691.i.i = and i32 %conv7.i690.i.i, 255
  %or.i692.i.i = or i32 %conv.i691.i.i, %and.i688.i.i
  store i32 %or.i692.i.i, ptr %pxd5.i123.i, align 4
  %conv3.i693.i.i = trunc i64 %274 to i32
  %277 = call i32 @llvm.bswap.i32(i32 %conv3.i693.i.i) #9
  %278 = ptrtoint ptr %addr2.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %addr2.i.i130.i, align 4
  %logical_size274.i.i = getelementptr inbounds %struct.metapage, ptr %113, i32 0, i32 12
  %279 = ptrtoint ptr %logical_size274.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %logical_size274.i.i, align 4
  %281 = ptrtoint ptr %sb.i132.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %sb.i132.i, align 4
  %s_blocksize_bits276.i.i = getelementptr inbounds %struct.super_block, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %s_blocksize_bits276.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %s_blocksize_bits276.i.i, align 4
  %conv277.i.i = zext i8 %284 to i32
  %shr278.i.i = lshr i32 %280, %conv277.i.i
  %and1.i696.i.i = and i32 %shr278.i.i, 16777215
  %285 = call i32 @llvm.bswap.i32(i32 %and1.i696.i.i) #9
  %or.i697.i.i = or i32 %285, %conv.i691.i.i
  %286 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %or.i697.i.i, ptr %pxd5.i123.i, align 4
  %call279.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %287 = call i32 @llvm.bswap.i32(i32 %call279.i.i) #9
  %288 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %backchain, align 4
  %sub281.i.i = add nsw i32 %conv21.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub281.i.i, i32 %conv271.i.i)
  %cmp282.i.i = icmp eq i32 %sub281.i.i, %conv271.i.i
  br i1 %cmp282.i.i, label %if.then284.i.i, label %if.then253.i.i.if.end297.i.i_crit_edge

if.then253.i.i.if.end297.i.i_crit_edge:           ; preds = %if.then253.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end297.i.i

if.then284.i.i:                                   ; preds = %if.then253.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %289 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 2048, ptr %type6.i121.i, align 4
  %290 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 256, ptr %type.i119.i, align 4
  %291 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 256, ptr %l2linesize.i120.i, align 2
  %pxd293.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 12
  %292 = ptrtoint ptr %pxd293.i.i to i32
  call void @__asan_loadN_noabort(i32 %292, i32 8)
  %293 = load i64, ptr %pxd293.i.i, align 4
  %294 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_storeN_noabort(i32 %294, i32 8)
  store i64 %293, ptr %pxd5.i123.i, align 4
  %pxd254.sroa.0.0.copyload.i.i = load i32, ptr %pxd293.i.i, align 4
  %pxd254.sroa.5.0.pxd294.sroa_idx.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 14
  %295 = ptrtoint ptr %pxd254.sroa.5.0.pxd294.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %pxd254.sroa.5.0.copyload.i.i = load i32, ptr %pxd254.sroa.5.0.pxd294.sroa_idx.i.i, align 4
  %call295.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %296 = call i32 @llvm.bswap.i32(i32 %call295.i.i) #9
  %297 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %backchain, align 4
  br label %if.end297.i.i

if.end297.i.i:                                    ; preds = %if.then284.i.i, %if.then253.i.i.if.end297.i.i_crit_edge
  %pxd254.sroa.5.0.i.i = phi i32 [ %pxd254.sroa.5.0.copyload.i.i, %if.then284.i.i ], [ -1, %if.then253.i.i.if.end297.i.i_crit_edge ]
  %pxd254.sroa.0.0.i.i = phi i32 [ %pxd254.sroa.0.0.copyload.i.i, %if.then284.i.i ], [ -1, %if.then253.i.i.if.end297.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %conv268.i.i, i32 %conv21.i.i)
  %cmp298.not.i.i = icmp ult i32 %conv268.i.i, %conv21.i.i
  br i1 %cmp298.not.i.i, label %if.end297.i.i.if.end324.i.i_crit_edge, label %if.then300.i.i

if.end297.i.i.if.end324.i.i_crit_edge:            ; preds = %if.end297.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end324.i.i

if.then300.i.i:                                   ; preds = %if.end297.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %298 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 2048, ptr %type6.i121.i, align 4
  %299 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 2048, ptr %type.i119.i, align 4
  %300 = ptrtoint ptr %hwm266.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %hwm266.i.i, align 4
  %conv307.i.i = zext i8 %301 to i32
  %sub308.i.i = sub nsw i32 %conv307.i.i, %conv21.i.i
  %add309.i.i = add nsw i32 %sub308.i.i, 1
  %conv310.i.i = trunc i32 %add309.i.i to i16
  %302 = call i16 @llvm.bswap.i16(i16 %conv310.i.i) #9
  %303 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %302, ptr %l2linesize.i120.i, align 2
  %conv313.i.i = trunc i16 %128 to i8
  %header314.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %304 = ptrtoint ptr %header314.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv313.i.i, ptr %header314.i.i, align 4
  %conv318.i.i = trunc i32 %add309.i.i to i8
  %length320.i.i = getelementptr inbounds %struct.lv, ptr %header314.i.i, i32 0, i32 1
  %305 = ptrtoint ptr %length320.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv318.i.i, ptr %length320.i.i, align 1
  %index321.i.i = getelementptr inbounds %struct.xtlock, ptr %lock.i.i, i32 0, i32 2
  %306 = ptrtoint ptr %index321.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 1, ptr %index321.i.i, align 1
  %call322.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %307 = call i32 @llvm.bswap.i32(i32 %call322.i.i) #9
  %308 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %backchain, align 4
  br label %if.end324.i.i

if.end324.i.i:                                    ; preds = %if.then300.i.i, %if.end297.i.i.if.end324.i.i_crit_edge
  %hwm.0.i.i = phi i32 [ %conv307.i.i, %if.then300.i.i ], [ %conv268.i.i, %if.end297.i.i.if.end324.i.i_crit_edge ]
  %index325.i.i = getelementptr inbounds %struct.maplock, ptr %lock.i.i, i32 0, i32 2
  %309 = ptrtoint ptr %index325.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %index325.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select434.i.i, i32 %conv21.i.i)
  %cmp326.i.i = icmp ult i32 %spec.store.select434.i.i, %conv21.i.i
  br i1 %cmp326.i.i, label %if.then328.i.i, label %if.end324.i.i.if.end357.i.i_crit_edge

if.end324.i.i.if.end357.i.i_crit_edge:            ; preds = %if.end324.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end357.i.i

if.then328.i.i:                                   ; preds = %if.end324.i.i
  %310 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %flag.i, align 4
  %312 = or i16 %311, 128
  store i16 %312, ptr %flag.i, align 4
  %flag333.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 2
  %313 = ptrtoint ptr %flag333.i.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 128, ptr %flag333.i.i, align 4
  %sub334.i.i = sub nsw i32 %conv21.i.i, %spec.store.select434.i.i
  %conv335.i.i = trunc i32 %sub334.i.i to i8
  %count336.i.i = getelementptr inbounds %struct.xdlistlock, ptr %lock.i.i, i32 0, i32 5
  %314 = ptrtoint ptr %count336.i.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %conv335.i.i, ptr %count336.i.i, align 1
  %arrayidx337.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %spec.store.select434.i.i
  %union64338.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %315 = ptrtoint ptr %union64338.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %arrayidx337.i.i, ptr %union64338.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %316 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %316)
  %cmp340.i.i = icmp sgt i32 %316, 3
  br i1 %cmp340.i.i, label %do.end345.i.i, label %if.then328.i.i.do.end353.i.i_crit_edge

if.then328.i.i.do.end353.i.i_crit_edge:           ; preds = %if.then328.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end353.i.i

do.end345.i.i:                                    ; preds = %if.then328.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %317 = ptrtoint ptr %ip3.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ip3.i, align 4
  %conv349.i.i = and i32 %sub334.i.i, 255
  %call350.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %318, ptr noundef %113, i32 noundef %conv349.i.i, i32 noundef %spec.store.select434.i.i, i32 noundef %conv21.i.i) #12
  br label %do.end353.i.i

do.end353.i.i:                                    ; preds = %do.end345.i.i, %if.then328.i.i.do.end353.i.i_crit_edge
  %319 = ptrtoint ptr %index325.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %index325.i.i, align 1
  %inc355.i.i = add i8 %320, 1
  store i8 %inc355.i.i, ptr %index325.i.i, align 1
  %incdec.ptr356.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 8
  br label %if.end357.i.i

if.end357.i.i:                                    ; preds = %do.end353.i.i, %if.end324.i.i.if.end357.i.i_crit_edge
  %xadlock.0.i.i = phi ptr [ %incdec.ptr356.i.i, %do.end353.i.i ], [ %lock.i.i, %if.end324.i.i.if.end357.i.i_crit_edge ]
  br i1 %cmp282.i.i, label %if.then361.i.i, label %if.end357.i.i.if.end386.i.i_crit_edge

if.end357.i.i.if.end386.i.i_crit_edge:            ; preds = %if.end357.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end386.i.i

if.then361.i.i:                                   ; preds = %if.end357.i.i
  %321 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %flag.i, align 4
  %323 = or i16 %322, 128
  store i16 %323, ptr %flag.i, align 4
  %flag366.i.i = getelementptr inbounds %struct.maplock, ptr %xadlock.0.i.i, i32 0, i32 3
  %324 = ptrtoint ptr %flag366.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 1, ptr %flag366.i.i, align 4
  %count367.i.i = getelementptr inbounds %struct.maplock, ptr %xadlock.0.i.i, i32 0, i32 5
  %325 = ptrtoint ptr %count367.i.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %count367.i.i, align 1
  %pxd368.i.i = getelementptr inbounds %struct.maplock, ptr %xadlock.0.i.i, i32 0, i32 6
  %326 = ptrtoint ptr %pxd368.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %pxd254.sroa.0.0.i.i, ptr %pxd368.i.i, align 4
  %pxd254.sroa.5.0.pxd368.sroa_idx.i.i = getelementptr inbounds %struct.maplock, ptr %xadlock.0.i.i, i32 0, i32 6, i32 1
  %327 = ptrtoint ptr %pxd254.sroa.5.0.pxd368.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %pxd254.sroa.5.0.i.i, ptr %pxd254.sroa.5.0.pxd368.sroa_idx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %328 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %328)
  %cmp370.i.i = icmp sgt i32 %328, 3
  br i1 %cmp370.i.i, label %do.end375.i.i, label %if.then361.i.i.do.end382.i.i_crit_edge

if.then361.i.i.do.end382.i.i_crit_edge:           ; preds = %if.then361.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end382.i.i

do.end375.i.i:                                    ; preds = %if.then361.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call379.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %111, ptr noundef %113, i32 noundef 1, i32 noundef %hwm.0.i.i) #12
  br label %do.end382.i.i

do.end382.i.i:                                    ; preds = %do.end375.i.i, %if.then361.i.i.do.end382.i.i_crit_edge
  %329 = ptrtoint ptr %index325.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %index325.i.i, align 1
  %inc384.i.i = add i8 %330, 1
  store i8 %inc384.i.i, ptr %index325.i.i, align 1
  %incdec.ptr385.i.i = getelementptr %struct.xdlistlock, ptr %xadlock.0.i.i, i32 1
  br label %if.end386.i.i

if.end386.i.i:                                    ; preds = %do.end382.i.i, %if.end357.i.i.if.end386.i.i_crit_edge
  %xadlock.1.i.i = phi ptr [ %incdec.ptr385.i.i, %do.end382.i.i ], [ %xadlock.0.i.i, %if.end357.i.i.if.end386.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hwm.0.i.i, i32 %conv21.i.i)
  %cmp387.not.i.i = icmp ult i32 %hwm.0.i.i, %conv21.i.i
  br i1 %cmp387.not.i.i, label %if.end386.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then389.i.i

if.end386.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.end386.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.then389.i.i:                                   ; preds = %if.end386.i.i
  %331 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %flag.i, align 4
  %333 = or i16 %332, 128
  store i16 %333, ptr %flag.i, align 4
  %flag394.i.i = getelementptr inbounds %struct.xdlistlock, ptr %xadlock.1.i.i, i32 0, i32 3
  %334 = ptrtoint ptr %flag394.i.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 8, ptr %flag394.i.i, align 4
  %sub395.i.i = sub nsw i32 %hwm.0.i.i, %conv21.i.i
  %335 = trunc i32 %sub395.i.i to i8
  %conv397.i.i = add i8 %335, 1
  %count398.i.i = getelementptr inbounds %struct.xdlistlock, ptr %xadlock.1.i.i, i32 0, i32 5
  %336 = ptrtoint ptr %count398.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %conv397.i.i, ptr %count398.i.i, align 1
  %arrayidx399.i.i = getelementptr [18 x %struct.xad], ptr %p.0.i.i, i32 0, i32 %conv21.i.i
  %union64400.i.i = getelementptr inbounds %struct.xdlistlock, ptr %xadlock.1.i.i, i32 0, i32 6
  %337 = ptrtoint ptr %union64400.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %arrayidx399.i.i, ptr %union64400.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %338 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %338)
  %cmp402.i.i = icmp sgt i32 %338, 3
  br i1 %cmp402.i.i, label %do.end407.i.i, label %if.then389.i.i.do.end415.i.i_crit_edge

if.then389.i.i.do.end415.i.i_crit_edge:           ; preds = %if.then389.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end415.i.i

do.end407.i.i:                                    ; preds = %if.then389.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %339 = ptrtoint ptr %ip3.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %ip3.i, align 4
  %conv411.i.i = zext i8 %conv397.i.i to i32
  %call412.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %340, ptr noundef %113, i32 noundef %conv411.i.i, i32 noundef %conv21.i.i, i32 noundef %hwm.0.i.i) #12
  br label %do.end415.i.i

do.end415.i.i:                                    ; preds = %do.end407.i.i, %if.then389.i.i.do.end415.i.i_crit_edge
  %341 = ptrtoint ptr %index325.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %index325.i.i, align 1
  %inc417.i.i = add i8 %342, 1
  store i8 %inc417.i.i, ptr %index325.i.i, align 1
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %do.end415.i.i, %if.end386.i.i.cleanup.sink.split.i.i_crit_edge, %land.lhs.true237.i.i.cleanup.sink.split.i.i_crit_edge, %do.end107.i.i, %do.end.i.i, %do.body.i.i.cleanup.sink.split.i.i_crit_edge, %if.then27.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink708.i.i = phi i16 [ 2, %land.lhs.true237.i.i.cleanup.sink.split.i.i_crit_edge ], [ 4, %do.end107.i.i ], [ 4, %do.end.i.i ], [ 4, %do.body.i.i.cleanup.sink.split.i.i_crit_edge ], [ 4, %if.then27.i.i.cleanup.sink.split.i.i_crit_edge ], [ 4, %do.end415.i.i ], [ 4, %if.end386.i.i.cleanup.sink.split.i.i_crit_edge ]
  %343 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %flag.i, align 4
  %345 = or i16 %344, %.sink708.i.i
  store i16 %345, ptr %flag.i, align 4
  br label %for.inc.i

sw.bb10.i:                                        ; preds = %for.body.i
  %mp1.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 4
  %346 = ptrtoint ptr %mp1.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %mp1.i.i, align 4
  %348 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 1024, ptr %type.i119.i, align 4
  %349 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 1280, ptr %l2linesize.i120.i, align 2
  %350 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %type.i, align 2
  %352 = and i16 %351, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %352)
  %tobool.not.i52.i = icmp eq i16 %352, 0
  br i1 %tobool.not.i52.i, label %sw.bb10.i.if.end.i.i246_crit_edge, label %if.then.i53.i

sw.bb10.i.if.end.i.i246_crit_edge:                ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i246

if.then.i53.i:                                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  %353 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 5120, ptr %type.i119.i, align 4
  br label %if.end.i.i246

if.end.i.i246:                                    ; preds = %if.then.i53.i, %sw.bb10.i.if.end.i.i246_crit_edge
  %354 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %type.i, align 2
  %conv12.i.i = zext i16 %355 to i32
  %and13.i.i = and i32 %conv12.i.i, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end50.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i246
  %356 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 8, ptr %type6.i121.i, align 4
  %357 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %type.i, align 2
  %359 = and i16 %358, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %359)
  %tobool20.not.i.i = icmp eq i16 %359, 0
  %360 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %type.i119.i, align 4
  %..i.i = select i1 %tobool20.not.i.i, i16 1, i16 2
  %362 = or i16 %..i.i, %361
  store i16 %362, ptr %type.i119.i, align 4
  %index.i54.i = getelementptr inbounds %struct.metapage, ptr %347, i32 0, i32 8
  %363 = ptrtoint ptr %index.i54.i to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %index.i54.i, align 8
  %365 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %pxd5.i123.i, align 4
  %and.i.i55.i = and i32 %366, -256
  %sum.shift.i.i56.i = lshr i64 %364, 32
  %conv7.i.i57.i = trunc i64 %sum.shift.i.i56.i to i32
  %conv.i.i58.i = and i32 %conv7.i.i57.i, 255
  %or.i.i59.i = or i32 %conv.i.i58.i, %and.i.i55.i
  store i32 %or.i.i59.i, ptr %pxd5.i123.i, align 4
  %conv3.i.i60.i = trunc i64 %364 to i32
  %367 = call i32 @llvm.bswap.i32(i32 %conv3.i.i60.i) #9
  %368 = ptrtoint ptr %addr2.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %367, ptr %addr2.i.i130.i, align 4
  %logical_size.i62.i = getelementptr inbounds %struct.metapage, ptr %347, i32 0, i32 12
  %369 = ptrtoint ptr %logical_size.i62.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %logical_size.i62.i, align 4
  %371 = ptrtoint ptr %sb.i132.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %sb.i132.i, align 4
  %s_blocksize_bits.i64.i = getelementptr inbounds %struct.super_block, ptr %372, i32 0, i32 2
  %373 = ptrtoint ptr %s_blocksize_bits.i64.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %s_blocksize_bits.i64.i, align 4
  %conv33.i.i = zext i8 %374 to i32
  %shr.i65.i = lshr i32 %370, %conv33.i.i
  %and1.i.i66.i = and i32 %shr.i65.i, 16777215
  %375 = call i32 @llvm.bswap.i32(i32 %and1.i.i66.i) #9
  %or.i133.i.i = or i32 %375, %conv.i.i58.i
  %376 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %or.i133.i.i, ptr %pxd5.i123.i, align 4
  %call.i.i247 = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %377 = call i32 @llvm.bswap.i32(i32 %call.i.i247) #9
  %378 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %backchain, align 4
  %379 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %type.i, align 2
  %381 = and i16 %380, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %381)
  %tobool37.not.i.i = icmp eq i16 %381, 0
  br i1 %tobool37.not.i.i, label %if.end39.i.i, label %if.then15.i.i.for.inc.i_crit_edge

if.then15.i.i.for.inc.i_crit_edge:                ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end39.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %382 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %flag.i, align 4
  %384 = or i16 %383, 128
  store i16 %384, ptr %flag.i, align 4
  %lock.i69.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6
  %flag43.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 2
  %385 = ptrtoint ptr %flag43.i.i to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 16, ptr %flag43.i.i, align 4
  %pxd44.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %386 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_loadN_noabort(i32 %386, i32 8)
  %387 = load i64, ptr %pxd5.i123.i, align 4
  %388 = ptrtoint ptr %pxd44.i.i to i32
  call void @__asan_storeN_noabort(i32 %388, i32 8)
  store i64 %387, ptr %pxd44.i.i, align 4
  %index45.i.i = getelementptr inbounds %struct.maplock, ptr %lock.i69.i, i32 0, i32 2
  %389 = ptrtoint ptr %index45.i.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 1, ptr %index45.i.i, align 1
  %390 = or i16 %383, 132
  store i16 %390, ptr %flag.i, align 4
  br label %for.inc.i

if.end50.i.i:                                     ; preds = %if.end.i.i246
  %and53.i.i = and i32 %conv12.i.i, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end69.i.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %391 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 8, ptr %type6.i121.i, align 4
  %index57.i.i = getelementptr inbounds %struct.metapage, ptr %347, i32 0, i32 8
  %392 = ptrtoint ptr %index57.i.i to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %index57.i.i, align 8
  %394 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %pxd5.i123.i, align 4
  %and.i134.i.i = and i32 %395, -256
  %sum.shift.i135.i.i = lshr i64 %393, 32
  %conv7.i136.i.i = trunc i64 %sum.shift.i135.i.i to i32
  %conv.i137.i.i = and i32 %conv7.i136.i.i, 255
  %or.i138.i.i = or i32 %conv.i137.i.i, %and.i134.i.i
  store i32 %or.i138.i.i, ptr %pxd5.i123.i, align 4
  %conv3.i139.i.i = trunc i64 %393 to i32
  %396 = call i32 @llvm.bswap.i32(i32 %conv3.i139.i.i) #9
  %397 = ptrtoint ptr %addr2.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %addr2.i.i130.i, align 4
  %logical_size58.i.i = getelementptr inbounds %struct.metapage, ptr %347, i32 0, i32 12
  %398 = ptrtoint ptr %logical_size58.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %logical_size58.i.i, align 4
  %400 = ptrtoint ptr %sb.i132.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %sb.i132.i, align 4
  %s_blocksize_bits60.i.i = getelementptr inbounds %struct.super_block, ptr %401, i32 0, i32 2
  %402 = ptrtoint ptr %s_blocksize_bits60.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %s_blocksize_bits60.i.i, align 4
  %conv61.i.i = zext i8 %403 to i32
  %shr62.i.i = lshr i32 %399, %conv61.i.i
  %and1.i142.i.i = and i32 %shr62.i.i, 16777215
  %404 = call i32 @llvm.bswap.i32(i32 %and1.i142.i.i) #9
  %or.i143.i.i = or i32 %404, %conv.i137.i.i
  %405 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %or.i143.i.i, ptr %pxd5.i123.i, align 4
  %call63.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %406 = call i32 @llvm.bswap.i32(i32 %call63.i.i) #9
  %407 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %backchain, align 4
  %408 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %flag.i, align 4
  %410 = or i16 %409, 4
  store i16 %410, ptr %flag.i, align 4
  br label %for.inc.i

if.end69.i.i:                                     ; preds = %if.end50.i.i
  %and72.i.i = and i32 %conv12.i.i, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i.i)
  %tobool73.not.i.i = icmp eq i32 %and72.i.i, 0
  br i1 %tobool73.not.i.i, label %if.end69.i.i.for.inc.i_crit_edge, label %if.then74.i.i

if.end69.i.i.for.inc.i_crit_edge:                 ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then74.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %411 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 -32768, ptr %type6.i121.i, align 4
  %pxd77.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %412 = ptrtoint ptr %pxd77.i.i to i32
  call void @__asan_loadN_noabort(i32 %412, i32 8)
  %413 = load i64, ptr %pxd77.i.i, align 4
  %414 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_storeN_noabort(i32 %414, i32 8)
  store i64 %413, ptr %pxd5.i123.i, align 4
  %call78.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %415 = call i32 @llvm.bswap.i32(i32 %call78.i.i) #9
  %416 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %backchain, align 4
  %417 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %flag.i, align 4
  %419 = or i16 %418, 128
  store i16 %419, ptr %flag.i, align 4
  br label %for.inc.i

sw.bb11.i:                                        ; preds = %for.body.i
  %mp1.i70.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 4
  %420 = ptrtoint ptr %mp1.i70.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %mp1.i70.i, align 4
  %422 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 256, ptr %type.i119.i, align 4
  %423 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 1792, ptr %l2linesize.i120.i, align 2
  %424 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %type.i, align 2
  %conv.i.i = zext i16 %425 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i75.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i75.i, label %if.else.i95.i, label %if.then.i92.i

if.then.i92.i:                                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  %426 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 8, ptr %type6.i121.i, align 4
  %index.i76.i = getelementptr inbounds %struct.metapage, ptr %421, i32 0, i32 8
  %427 = ptrtoint ptr %index.i76.i to i32
  call void @__asan_load8_noabort(i32 %427)
  %428 = load i64, ptr %index.i76.i, align 8
  %429 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %pxd5.i123.i, align 4
  %and.i.i77.i = and i32 %430, -256
  %sum.shift.i.i78.i = lshr i64 %428, 32
  %conv7.i.i79.i = trunc i64 %sum.shift.i.i78.i to i32
  %conv.i.i80.i = and i32 %conv7.i.i79.i, 255
  %or.i.i81.i = or i32 %conv.i.i80.i, %and.i.i77.i
  store i32 %or.i.i81.i, ptr %pxd5.i123.i, align 4
  %conv3.i.i82.i = trunc i64 %428 to i32
  %431 = call i32 @llvm.bswap.i32(i32 %conv3.i.i82.i) #9
  %432 = ptrtoint ptr %addr2.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %431, ptr %addr2.i.i130.i, align 4
  %logical_size.i84.i = getelementptr inbounds %struct.metapage, ptr %421, i32 0, i32 12
  %433 = ptrtoint ptr %logical_size.i84.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %logical_size.i84.i, align 4
  %435 = ptrtoint ptr %sb.i132.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %sb.i132.i, align 4
  %s_blocksize_bits.i86.i = getelementptr inbounds %struct.super_block, ptr %436, i32 0, i32 2
  %437 = ptrtoint ptr %s_blocksize_bits.i86.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %s_blocksize_bits.i86.i, align 4
  %conv8.i.i = zext i8 %438 to i32
  %shr.i87.i = lshr i32 %434, %conv8.i.i
  %and1.i.i88.i = and i32 %shr.i87.i, 16777215
  %439 = call i32 @llvm.bswap.i32(i32 %and1.i.i88.i) #9
  %or.i67.i.i = or i32 %439, %conv.i.i80.i
  %440 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %or.i67.i.i, ptr %pxd5.i123.i, align 4
  %call.i89.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %441 = call i32 @llvm.bswap.i32(i32 %call.i89.i) #9
  %442 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %441, ptr %backchain, align 4
  %443 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %443)
  %444 = load i16, ptr %flag.i, align 4
  %445 = or i16 %444, 4
  store i16 %445, ptr %flag.i, align 4
  br label %for.inc.i

if.else.i95.i:                                    ; preds = %sw.bb11.i
  %and13.i93.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i93.i)
  %tobool14.not.i94.i = icmp eq i32 %and13.i93.i, 0
  br i1 %tobool14.not.i94.i, label %do.body.i100.i, label %if.then15.i98.i

if.then15.i98.i:                                  ; preds = %if.else.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  %446 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 16384, ptr %type6.i121.i, align 4
  %447 = ptrtoint ptr %iplist32 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %iplist32, align 4
  %arrayidx.i97.i = getelementptr ptr, ptr %448, i32 1
  %449 = ptrtoint ptr %arrayidx.i97.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %arrayidx.i97.i, align 4
  %451 = ptrtoint ptr %450 to i32
  %452 = call i32 @llvm.bswap.i32(i32 %451) #9
  %453 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %452, ptr %inode.i, align 4
  %arrayidx19.i.i = getelementptr ptr, ptr %448, i32 2
  %454 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %arrayidx19.i.i, align 4
  %456 = ptrtoint ptr %455 to i32
  %457 = call i32 @llvm.bswap.i32(i32 %456) #9
  %458 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %457, ptr %type.i119.i, align 4
  %pxd21.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %459 = ptrtoint ptr %pxd21.i.i to i32
  call void @__asan_loadN_noabort(i32 %459, i32 8)
  %460 = load i64, ptr %pxd21.i.i, align 4
  %461 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_storeN_noabort(i32 %461, i32 8)
  store i64 %460, ptr %pxd5.i123.i, align 4
  %call22.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %462 = call i32 @llvm.bswap.i32(i32 %call22.i.i) #9
  %463 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %462, ptr %backchain, align 4
  %464 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %flag.i, align 4
  %466 = or i16 %465, 132
  store i16 %466, ptr %flag.i, align 4
  br label %for.inc.i

do.body.i100.i:                                   ; preds = %if.else.i95.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %467 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %cmp.i99.i = icmp sgt i32 %467, 0
  br i1 %cmp.i99.i, label %do.end.i101.i, label %do.body.i100.i.for.inc.i_crit_edge

do.body.i100.i.for.inc.i_crit_edge:               ; preds = %do.body.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i101.i:                                    ; preds = %do.body.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %arrayidx.i) #12
  br label %for.inc.i

sw.bb12.i:                                        ; preds = %for.body.i
  %468 = and i16 %107, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %tobool.not.i104.i = icmp eq i16 %468, 0
  br i1 %tobool.not.i104.i, label %if.else.i111.i, label %if.then.i109.i

if.then.i109.i:                                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  %469 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 -32768, ptr %type6.i121.i, align 4
  %pxd4.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6, i32 4
  %470 = ptrtoint ptr %pxd4.i.i to i32
  call void @__asan_loadN_noabort(i32 %470, i32 8)
  %471 = load i64, ptr %pxd4.i.i, align 4
  %472 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_storeN_noabort(i32 %472, i32 8)
  store i64 %471, ptr %pxd5.i123.i, align 4
  %call.i106.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %473 = call i32 @llvm.bswap.i32(i32 %call.i106.i) #9
  %474 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %473, ptr %backchain, align 4
  %475 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 2048, ptr %type6.i121.i, align 4
  %476 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %476)
  store i16 256, ptr %type.i119.i, align 4
  %477 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %477)
  store i16 256, ptr %l2linesize.i120.i, align 2
  %478 = ptrtoint ptr %pxd4.i.i to i32
  call void @__asan_loadN_noabort(i32 %478, i32 8)
  %479 = load i64, ptr %pxd4.i.i, align 4
  %480 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_storeN_noabort(i32 %480, i32 8)
  store i64 %479, ptr %pxd5.i123.i, align 4
  %call12.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %481 = call i32 @llvm.bswap.i32(i32 %call12.i.i) #9
  %482 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %481, ptr %backchain, align 4
  br label %mapLog.exit.i

if.else.i111.i:                                   ; preds = %sw.bb12.i
  %483 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 2048, ptr %type6.i121.i, align 4
  %lock17.i.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 6
  %index.i110.i = getelementptr inbounds %struct.maplock, ptr %lock17.i.i, i32 0, i32 2
  %484 = ptrtoint ptr %index.i110.i to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %index.i110.i, align 1
  %conv18.i.i = zext i8 %485 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %485)
  %cmp90.not.i.i = icmp eq i8 %485, 0
  br i1 %cmp90.not.i.i, label %if.else.i111.i.mapLog.exit.i_crit_edge, label %if.else.i111.i.for.body.i113.i_crit_edge

if.else.i111.i.for.body.i113.i_crit_edge:         ; preds = %if.else.i111.i
  br label %for.body.i113.i

if.else.i111.i.mapLog.exit.i_crit_edge:           ; preds = %if.else.i111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mapLog.exit.i

for.body.i113.i:                                  ; preds = %for.inc.i.i.for.body.i113.i_crit_edge, %if.else.i111.i.for.body.i113.i_crit_edge
  %pxdlock.092.i.i = phi ptr [ %incdec.ptr.i117.i, %for.inc.i.i.for.body.i113.i_crit_edge ], [ %lock17.i.i, %if.else.i111.i.for.body.i113.i_crit_edge ]
  %i.091.i.i = phi i32 [ %inc.i116.i, %for.inc.i.i.for.body.i113.i_crit_edge ], [ 0, %if.else.i111.i.for.body.i113.i_crit_edge ]
  %flag20.i.i = getelementptr inbounds %struct.maplock, ptr %pxdlock.092.i.i, i32 0, i32 3
  %486 = ptrtoint ptr %flag20.i.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %flag20.i.i, align 4
  %488 = and i16 %487, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %488)
  %tobool23.not.i.i = icmp eq i16 %488, 0
  %spec.select.i.i = select i1 %tobool23.not.i.i, i16 256, i16 4096
  %489 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 %spec.select.i.i, ptr %type.i119.i, align 4
  %490 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 256, ptr %l2linesize.i120.i, align 2
  %pxd34.i.i = getelementptr inbounds %struct.maplock, ptr %pxdlock.092.i.i, i32 0, i32 6
  %491 = ptrtoint ptr %pxd34.i.i to i32
  call void @__asan_loadN_noabort(i32 %491, i32 8)
  %492 = load i64, ptr %pxd34.i.i, align 4
  %493 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_storeN_noabort(i32 %493, i32 8)
  store i64 %492, ptr %pxd5.i123.i, align 4
  %call35.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %494 = call i32 @llvm.bswap.i32(i32 %call35.i.i) #9
  %495 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %494, ptr %backchain, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %496 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %496)
  %cmp37.i112.i = icmp sgt i32 %496, 3
  br i1 %cmp37.i112.i, label %do.end.i115.i, label %for.body.i113.i.for.inc.i.i_crit_edge

for.body.i113.i.for.inc.i.i_crit_edge:            ; preds = %for.body.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end.i115.i:                                    ; preds = %for.body.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  %497 = ptrtoint ptr %pxd34.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %pxd34.i.i, align 4
  %addr2.i.i114.i = getelementptr inbounds %struct.maplock, ptr %pxdlock.092.i.i, i32 0, i32 6, i32 1
  %499 = ptrtoint ptr %addr2.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %addr2.i.i114.i, align 4
  %501 = call i32 @llvm.bswap.i32(i32 %500) #9
  %502 = and i32 %498, -256
  %503 = call i32 @llvm.bswap.i32(i32 %502) #9
  %call46.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %501, i32 noundef %503) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i115.i, %for.body.i113.i.for.inc.i.i_crit_edge
  %inc.i116.i = add nuw nsw i32 %i.091.i.i, 1
  %incdec.ptr.i117.i = getelementptr %struct.maplock, ptr %pxdlock.092.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i116.i, %conv18.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mapLog.exit.i_crit_edge, label %for.inc.i.i.for.body.i113.i_crit_edge

for.inc.i.i.for.body.i113.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i113.i

for.inc.i.i.mapLog.exit.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mapLog.exit.i

mapLog.exit.i:                                    ; preds = %for.inc.i.i.mapLog.exit.i_crit_edge, %if.else.i111.i.mapLog.exit.i_crit_edge, %if.then.i109.i
  %504 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %flag.i, align 4
  %506 = or i16 %505, 128
  store i16 %506, ptr %flag.i, align 4
  br label %for.inc.i

sw.bb13.i:                                        ; preds = %for.body.i
  %mp1.i118.i = getelementptr %struct.tlock, ptr %84, i32 %idxprom.i, i32 4
  %507 = ptrtoint ptr %mp1.i118.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %mp1.i118.i, align 4
  %509 = ptrtoint ptr %type.i119.i to i32
  call void @__asan_store2_noabort(i32 %509)
  store i16 -32768, ptr %type.i119.i, align 4
  %510 = ptrtoint ptr %l2linesize.i120.i to i32
  call void @__asan_store2_noabort(i32 %510)
  store i16 1024, ptr %l2linesize.i120.i, align 2
  %511 = ptrtoint ptr %type6.i121.i to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 8, ptr %type6.i121.i, align 4
  %512 = ptrtoint ptr %ip3.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %ip3.i, align 4
  %next_index.i.i.i = getelementptr i8, ptr %513, i32 -784
  %514 = ptrtoint ptr %next_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %next_index.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %515)
  %cmp.i.i.i = icmp ugt i32 %515, 14
  br i1 %cmp.i.i.i, label %if.end.i139.i, label %if.then.i122.i

if.then.i122.i:                                   ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  %lid.i.i = getelementptr inbounds %struct.metapage, ptr %508, i32 0, i32 2
  %516 = ptrtoint ptr %lid.i.i to i32
  call void @__asan_store2_noabort(i32 %516)
  store i16 0, ptr %lid.i.i, align 4
  call void @grab_metapage(ptr noundef %508) #9
  call fastcc void @metapage_homeok(ptr noundef %508) #9
  %flag.i.i.i = getelementptr inbounds %struct.metapage, ptr %508, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i.i.i) #9
  call void @_set_bit(i32 noundef 4, ptr noundef %flag.i.i.i) #9
  call void @release_metapage(ptr noundef %508) #9
  %517 = ptrtoint ptr %mp1.i118.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr null, ptr %mp1.i118.i, align 4
  br label %for.inc.i

if.end.i139.i:                                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  %index.i124.i = getelementptr inbounds %struct.metapage, ptr %508, i32 0, i32 8
  %518 = ptrtoint ptr %index.i124.i to i32
  call void @__asan_load8_noabort(i32 %518)
  %519 = load i64, ptr %index.i124.i, align 8
  %520 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %pxd5.i123.i, align 4
  %and.i.i125.i = and i32 %521, -256
  %sum.shift.i.i126.i = lshr i64 %519, 32
  %conv7.i.i127.i = trunc i64 %sum.shift.i.i126.i to i32
  %conv.i28.i.i = and i32 %conv7.i.i127.i, 255
  %or.i.i128.i = or i32 %conv.i28.i.i, %and.i.i125.i
  store i32 %or.i.i128.i, ptr %pxd5.i123.i, align 4
  %conv3.i.i129.i = trunc i64 %519 to i32
  %522 = call i32 @llvm.bswap.i32(i32 %conv3.i.i129.i) #9
  %523 = ptrtoint ptr %addr2.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %522, ptr %addr2.i.i130.i, align 4
  %logical_size.i131.i = getelementptr inbounds %struct.metapage, ptr %508, i32 0, i32 12
  %524 = ptrtoint ptr %logical_size.i131.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %logical_size.i131.i, align 4
  %526 = ptrtoint ptr %sb.i132.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %sb.i132.i, align 4
  %s_blocksize_bits.i133.i = getelementptr inbounds %struct.super_block, ptr %527, i32 0, i32 2
  %528 = ptrtoint ptr %s_blocksize_bits.i133.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %s_blocksize_bits.i133.i, align 4
  %conv.i134.i = zext i8 %529 to i32
  %shr.i135.i = lshr i32 %525, %conv.i134.i
  %and1.i.i136.i = and i32 %shr.i135.i, 16777215
  %530 = call i32 @llvm.bswap.i32(i32 %and1.i.i136.i) #9
  %or.i30.i.i = or i32 %530, %conv.i28.i.i
  %531 = ptrtoint ptr %pxd5.i123.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 %or.i30.i.i, ptr %pxd5.i123.i, align 4
  %call8.i.i = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef %arrayidx.i) #9
  %532 = call i32 @llvm.bswap.i32(i32 %call8.i.i) #9
  %533 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %532, ptr %backchain, align 4
  %534 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %534)
  %535 = load i16, ptr %flag.i, align 4
  %536 = or i16 %535, 4
  store i16 %536, ptr %flag.i, align 4
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %537 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %537)
  %cmp.i = icmp sgt i32 %537, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.for.inc.i_crit_edge

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %arrayidx.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %do.body.i.for.inc.i_crit_edge, %if.end.i139.i, %if.then.i122.i, %mapLog.exit.i, %do.end.i101.i, %do.body.i100.i.for.inc.i_crit_edge, %if.then15.i98.i, %if.then.i92.i, %if.then74.i.i, %if.end69.i.i.for.inc.i_crit_edge, %if.then55.i.i, %if.end39.i.i, %if.then15.i.i.for.inc.i_crit_edge, %cleanup.sink.split.i.i, %if.end248.i.i.for.inc.i_crit_edge, %land.lhs.true237.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge
  %538 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %538)
  %lid.0.i = load i16, ptr %arrayidx.i, align 4
  %tobool.not.i248 = icmp eq i16 %lid.0.i, 0
  br i1 %tobool.not.i248, label %for.inc.i.txLog.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.txLog.exit_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLog.exit

txLog.exit:                                       ; preds = %for.inc.i.txLog.exit_crit_edge, %for.end83.txLog.exit_crit_edge
  %539 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %539)
  %540 = load i16, ptr %arrayidx16, align 4
  %541 = and i16 %540, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %541)
  %tobool87.not = icmp eq i16 %541, 0
  br i1 %tobool87.not, label %txLog.exit.do.body99_crit_edge, label %if.then88

txLog.exit.do.body99_crit_edge:                   ; preds = %txLog.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.then88:                                        ; preds = %txLog.exit
  %u = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 16
  %542 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %u, align 4
  call void @ihold(ptr noundef %543) #9
  %544 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %u, align 4
  %i_state = getelementptr inbounds %struct.inode, ptr %545, i32 0, i32 24
  %546 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %i_state, align 8
  %and90 = and i32 %547, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then88.do.body99_crit_edge, label %if.then92

if.then88.do.body99_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.then92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %548 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %arrayidx16, align 4
  %550 = and i16 %549, -2049
  store i16 %550, ptr %arrayidx16, align 4
  br label %do.body99

do.body99:                                        ; preds = %if.then92, %if.then88.do.body99_crit_edge, %txLog.exit.do.body99_crit_edge
  %551 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %arrayidx16, align 4
  %553 = and i16 %552, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %553)
  %tobool103.not = icmp eq i16 %553, 0
  br i1 %tobool103.not, label %do.body99.do.end126_crit_edge, label %lor.lhs.false

do.body99.do.end126_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

lor.lhs.false:                                    ; preds = %do.body99
  %u104 = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 16
  %554 = ptrtoint ptr %u104 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %u104, align 4
  %556 = getelementptr inbounds %struct.inode, ptr %555, i32 0, i32 12
  %557 = ptrtoint ptr %556 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %556, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %558)
  %cmp105 = icmp eq i32 %558, 0
  br i1 %cmp105, label %land.lhs.true, label %lor.lhs.false.do.end115_crit_edge

lor.lhs.false.do.end115_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end115

land.lhs.true:                                    ; preds = %lor.lhs.false
  %cflag109 = getelementptr i8, ptr %555, i32 -768
  %559 = ptrtoint ptr %cflag109 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load volatile i32, ptr %cflag109, align 4
  %and1.i = and i32 %560, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool111.not = icmp eq i32 %and1.i, 0
  br i1 %tobool111.not, label %land.lhs.true.do.end126_crit_edge, label %land.lhs.true.do.end115_crit_edge

land.lhs.true.do.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end115

land.lhs.true.do.end126_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.end115:                                        ; preds = %land.lhs.true.do.end115_crit_edge, %lor.lhs.false.do.end115_crit_edge
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 1290, ptr noundef nonnull @.str.70) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1290, 0\0A.popsection", ""() #9, !srcloc !377
  unreachable

do.end126:                                        ; preds = %land.lhs.true.do.end126_crit_edge, %do.body99.do.end126_crit_edge
  %type = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 2
  %561 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %561)
  store i16 128, ptr %type, align 4
  %length = getelementptr inbounds %struct.commit, ptr %cd, i32 0, i32 6, i32 3
  %562 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %562)
  store i16 0, ptr %length, align 2
  %call127 = call i32 @lmLog(ptr noundef %16, ptr noundef %arrayidx16, ptr noundef %lrd20, ptr noundef null) #9
  %call128 = call i32 @lmGroupCommit(ptr noundef %16, ptr noundef %arrayidx16) #9
  %and129 = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.end126.if.end132_crit_edge, label %if.then131

do.end126.if.end132_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then131:                                       ; preds = %do.end126
  %563 = load ptr, ptr @TxLock, align 4
  %564 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %564)
  %565 = load i16, ptr %next, align 4
  %idxprom.i250 = zext i16 %565 to i32
  %arrayidx.i251 = getelementptr %struct.tlock, ptr %563, i32 %idxprom.i250
  %566 = ptrtoint ptr %arrayidx.i251 to i32
  call void @__asan_load2_noabort(i32 %566)
  %567 = load i16, ptr %arrayidx.i251, align 4
  store i16 0, ptr %arrayidx.i251, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %567)
  %tobool.not58.i = icmp eq i16 %567, 0
  br i1 %tobool.not58.i, label %while.end.i, label %if.then131.while.body.i_crit_edge

if.then131.while.body.i_crit_edge:                ; preds = %if.then131
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then131.while.body.i_crit_edge
  %lid.059.i = phi i16 [ %570, %while.body.i.while.body.i_crit_edge ], [ %567, %if.then131.while.body.i_crit_edge ]
  %568 = load ptr, ptr @TxLock, align 4
  %idxprom4.i = zext i16 %lid.059.i to i32
  %arrayidx5.i = getelementptr %struct.tlock, ptr %568, i32 %idxprom4.i
  %569 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %569)
  %570 = load i16, ptr %arrayidx5.i, align 4
  %571 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %571)
  %572 = load i16, ptr %next, align 4
  store i16 %572, ptr %arrayidx5.i, align 4
  store i16 %lid.059.i, ptr %next, align 4
  %tobool.not.i252 = icmp eq i16 %570, 0
  br i1 %tobool.not.i252, label %while.body.i.for.body.i253.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.for.body.i253.preheader_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i253.preheader

while.end.i:                                      ; preds = %if.then131
  %573 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %573)
  %.pr.i = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %tobool11.not60.i = icmp eq i16 %.pr.i, 0
  br i1 %tobool11.not60.i, label %while.end.i.if.end132_crit_edge, label %while.end.i.for.body.i253.preheader_crit_edge

while.end.i.for.body.i253.preheader_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i253.preheader

while.end.i.if.end132_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

for.body.i253.preheader:                          ; preds = %while.end.i.for.body.i253.preheader_crit_edge, %while.body.i.for.body.i253.preheader_crit_edge
  %lid.161.i.ph = phi i16 [ %.pr.i, %while.end.i.for.body.i253.preheader_crit_edge ], [ %lid.059.i, %while.body.i.for.body.i253.preheader_crit_edge ]
  br label %for.body.i253

for.body.i253:                                    ; preds = %for.inc.i258.for.body.i253_crit_edge, %for.body.i253.preheader
  %lid.161.i = phi i16 [ %576, %for.inc.i258.for.body.i253_crit_edge ], [ %lid.161.i.ph, %for.body.i253.preheader ]
  %574 = load ptr, ptr @TxLock, align 4
  %idxprom12.i = zext i16 %lid.161.i to i32
  %arrayidx13.i = getelementptr %struct.tlock, ptr %574, i32 %idxprom12.i
  %575 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %arrayidx13.i, align 4
  %mp15.i = getelementptr %struct.tlock, ptr %574, i32 %idxprom12.i, i32 4
  %577 = ptrtoint ptr %mp15.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %mp15.i, align 4
  %cmp.not.i = icmp eq ptr %578, null
  br i1 %cmp.not.i, label %for.body.i253.for.inc.i258_crit_edge, label %land.lhs.true.i

for.body.i253.for.inc.i258_crit_edge:             ; preds = %for.body.i253
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i258

land.lhs.true.i:                                  ; preds = %for.body.i253
  %type.i254 = getelementptr %struct.tlock, ptr %574, i32 %idxprom12.i, i32 3
  %579 = ptrtoint ptr %type.i254 to i32
  call void @__asan_load2_noabort(i32 %579)
  %580 = load i16, ptr %type.i254, align 2
  %581 = and i16 %580, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %581)
  %cmp16.i = icmp eq i16 %581, 0
  br i1 %cmp16.i, label %do.body.i255, label %land.lhs.true.i.for.inc.i258_crit_edge

land.lhs.true.i.for.inc.i258_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i258

do.body.i255:                                     ; preds = %land.lhs.true.i
  %582 = ptrtoint ptr %578 to i32
  call void @__asan_load2_noabort(i32 %582)
  %583 = load i16, ptr %578, align 8
  %584 = and i16 %583, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %584)
  %tobool20.not.i = icmp eq i16 %584, 0
  br i1 %tobool20.not.i, label %do.end.i256, label %do.end30.i

do.end.i256:                                      ; preds = %do.body.i255
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 2238, ptr noundef nonnull @.str.112) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2238, 0\0A.popsection", ""() #9, !srcloc !378
  unreachable

do.end30.i:                                       ; preds = %do.body.i255
  %flag.i257 = getelementptr %struct.tlock, ptr %574, i32 %idxprom12.i, i32 2
  %585 = ptrtoint ptr %flag.i257 to i32
  call void @__asan_load2_noabort(i32 %585)
  %586 = load i16, ptr %flag.i257, align 4
  %587 = and i16 %586, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %587)
  %tobool33.not.i = icmp eq i16 %587, 0
  br i1 %tobool33.not.i, label %do.end30.i.for.inc.i258_crit_edge, label %if.then34.i

do.end30.i.for.inc.i258_crit_edge:                ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i258

if.then34.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %and37.i = and i16 %586, -5
  %588 = ptrtoint ptr %flag.i257 to i32
  call void @__asan_store2_noabort(i32 %588)
  store i16 %and37.i, ptr %flag.i257, align 4
  call void @force_metapage(ptr noundef nonnull %578) #9
  br label %for.inc.i258

for.inc.i258:                                     ; preds = %if.then34.i, %do.end30.i.for.inc.i258_crit_edge, %land.lhs.true.i.for.inc.i258_crit_edge, %for.body.i253.for.inc.i258_crit_edge
  %tobool11.not.i = icmp eq i16 %576, 0
  br i1 %tobool11.not.i, label %for.inc.i258.if.end132_crit_edge, label %for.inc.i258.for.body.i253_crit_edge

for.inc.i258.for.body.i253_crit_edge:             ; preds = %for.inc.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i253

for.inc.i258.if.end132_crit_edge:                 ; preds = %for.inc.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.end132:                                        ; preds = %for.inc.i258.if.end132_crit_edge, %while.end.i.if.end132_crit_edge, %do.end126.if.end132_crit_edge
  %589 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %589)
  %590 = load i16, ptr %arrayidx16, align 4
  %591 = and i16 %590, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %591)
  %tobool136.not = icmp eq i16 %591, 0
  br i1 %tobool136.not, label %if.end132.if.end138_crit_edge, label %if.then137

if.end132.if.end138_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then137:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @txUpdateMap(ptr noundef %arrayidx16)
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end132.if.end138_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %592 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %592)
  %lid.025.i = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lid.025.i)
  %tobool.not26.i = icmp eq i16 %lid.025.i, 0
  br i1 %tobool.not26.i, label %if.end138.txRelease.exit_crit_edge, label %for.body.lr.ph.i260

if.end138.txRelease.exit_crit_edge:               ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %txRelease.exit

for.body.lr.ph.i260:                              ; preds = %if.end138
  %593 = load ptr, ptr @TxLock, align 4
  br label %for.body.i264

for.body.i264:                                    ; preds = %for.inc.i272.for.body.i264_crit_edge, %for.body.lr.ph.i260
  %lid.027.i = phi i16 [ %lid.025.i, %for.body.lr.ph.i260 ], [ %lid.0.i270, %for.inc.i272.for.body.i264_crit_edge ]
  %idxprom.i261 = zext i16 %lid.027.i to i32
  %arrayidx.i262 = getelementptr %struct.tlock, ptr %593, i32 %idxprom.i261
  %mp1.i = getelementptr %struct.tlock, ptr %593, i32 %idxprom.i261, i32 4
  %594 = ptrtoint ptr %mp1.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %mp1.i, align 4
  %cmp.not.i263 = icmp eq ptr %595, null
  br i1 %cmp.not.i263, label %for.body.i264.for.inc.i272_crit_edge, label %land.lhs.true.i266

for.body.i264.for.inc.i272_crit_edge:             ; preds = %for.body.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i272

land.lhs.true.i266:                               ; preds = %for.body.i264
  %type.i265 = getelementptr %struct.tlock, ptr %593, i32 %idxprom.i261, i32 3
  %596 = ptrtoint ptr %type.i265 to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %type.i265, align 2
  %598 = and i16 %597, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %598)
  %cmp2.i = icmp eq i16 %598, 0
  br i1 %cmp2.i, label %do.body.i267, label %land.lhs.true.i266.for.inc.i272_crit_edge

land.lhs.true.i266.for.inc.i272_crit_edge:        ; preds = %land.lhs.true.i266
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i272

do.body.i267:                                     ; preds = %land.lhs.true.i266
  %599 = ptrtoint ptr %595 to i32
  call void @__asan_load2_noabort(i32 %599)
  %600 = load i16, ptr %595, align 8
  %601 = and i16 %600, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %601)
  %tobool6.not.i = icmp eq i16 %601, 0
  br i1 %tobool6.not.i, label %do.end.i269, label %do.end16.i

do.end.i269:                                      ; preds = %do.body.i267
  call void @__sanitizer_cov_trace_pc() #11
  %call.i268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 875, ptr noundef nonnull @.str.112) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 875, 0\0A.popsection", ""() #9, !srcloc !379
  unreachable

do.end16.i:                                       ; preds = %do.body.i267
  call void @__sanitizer_cov_trace_pc() #11
  %lid17.i = getelementptr inbounds %struct.metapage, ptr %595, i32 0, i32 2
  %602 = ptrtoint ptr %lid17.i to i32
  call void @__asan_store2_noabort(i32 %602)
  store i16 0, ptr %lid17.i, align 4
  br label %for.inc.i272

for.inc.i272:                                     ; preds = %do.end16.i, %land.lhs.true.i266.for.inc.i272_crit_edge, %for.body.i264.for.inc.i272_crit_edge
  %603 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load2_noabort(i32 %603)
  %lid.0.i270 = load i16, ptr %arrayidx.i262, align 4
  %tobool.not.i271 = icmp eq i16 %lid.0.i270, 0
  br i1 %tobool.not.i271, label %for.inc.i272.txRelease.exit_crit_edge, label %for.inc.i272.for.body.i264_crit_edge

for.inc.i272.for.body.i264_crit_edge:             ; preds = %for.inc.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i264

for.inc.i272.txRelease.exit_crit_edge:            ; preds = %for.inc.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %txRelease.exit

txRelease.exit:                                   ; preds = %for.inc.i272.txRelease.exit_crit_edge, %if.end138.txRelease.exit_crit_edge
  %waitor.i = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 8
  call void @__wake_up(ptr noundef %waitor.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %flag139 = getelementptr %struct.tblock, ptr %12, i32 %idxprom, i32 1
  %604 = ptrtoint ptr %flag139 to i32
  call void @__asan_load2_noabort(i32 %604)
  %605 = load i16, ptr %flag139, align 2
  %606 = and i16 %605, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %606)
  %cmp142 = icmp eq i16 %606, 0
  br i1 %cmp142, label %if.then144, label %txRelease.exit.if.end145_crit_edge

txRelease.exit.if.end145_crit_edge:               ; preds = %txRelease.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then144:                                       ; preds = %txRelease.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @txUnlock(ptr noundef %arrayidx16)
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %txRelease.exit.if.end145_crit_edge
  %607 = ptrtoint ptr %nip33 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %nip33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %608)
  %cmp148279 = icmp sgt i32 %608, 0
  br i1 %cmp148279, label %if.end145.for.body150_crit_edge, label %if.end145.do.body161_crit_edge

if.end145.do.body161_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body161

if.end145.for.body150_crit_edge:                  ; preds = %if.end145
  br label %for.body150

for.body150:                                      ; preds = %for.body150.for.body150_crit_edge, %if.end145.for.body150_crit_edge
  %k.1280 = phi i32 [ %inc155, %for.body150.for.body150_crit_edge ], [ 0, %if.end145.for.body150_crit_edge ]
  %609 = ptrtoint ptr %iplist32 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %iplist32, align 4
  %arrayidx152 = getelementptr ptr, ptr %610, i32 %k.1280
  %611 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %arrayidx152, align 4
  %bxflag = getelementptr i8, ptr %612, i32 -752
  %613 = ptrtoint ptr %bxflag to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 0, ptr %bxflag, align 8
  %blid = getelementptr i8, ptr %612, i32 -748
  %614 = ptrtoint ptr %blid to i32
  call void @__asan_store2_noabort(i32 %614)
  store i16 0, ptr %blid, align 4
  %inc155 = add nuw nsw i32 %k.1280, 1
  %615 = ptrtoint ptr %nip33 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %nip33, align 4
  %cmp148 = icmp slt i32 %inc155, %616
  br i1 %cmp148, label %for.body150.for.body150_crit_edge, label %for.body150.do.body161_crit_edge

for.body150.do.body161_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body161

for.body150.for.body150_crit_edge:                ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body150

if.then159:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @txAbort(i16 noundef zeroext %tid.addr.0, i32 noundef 1)
  br label %do.body161

do.body161:                                       ; preds = %if.then159, %for.body150.do.body161_crit_edge, %if.end145.do.body161_crit_edge, %do.end3.do.body161_crit_edge
  %rc.2 = phi i32 [ %call77, %if.then159 ], [ -30, %do.end3.do.body161_crit_edge ], [ 0, %if.end145.do.body161_crit_edge ], [ 0, %for.body150.do.body161_crit_edge ]
  %tid.addr.1 = phi i16 [ %tid.addr.0, %if.then159 ], [ %tid, %do.end3.do.body161_crit_edge ], [ %tid.addr.0, %if.end145.do.body161_crit_edge ], [ %tid.addr.0, %for.body150.do.body161_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %617 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %617)
  %cmp162 = icmp sgt i32 %617, 3
  br i1 %cmp162, label %do.end167, label %do.body161.do.end173_crit_edge

do.body161.do.end173_crit_edge:                   ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end173

do.end167:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #11
  %conv169 = zext i16 %tid.addr.1 to i32
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %conv169, i32 noundef %rc.2) #12
  br label %do.end173

do.end173:                                        ; preds = %do.end167, %do.body161.do.end173_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cd) #9
  ret i32 %rc.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diWrite(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLog(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmGroupCommit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txUpdateMap(ptr noundef %tblk) unnamed_addr #0 align 64 {
entry:
  %pxdlock = alloca %struct.maplock, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pxdlock) #9
  %0 = getelementptr inbounds %struct.maplock, ptr %pxdlock, i32 0, i32 2
  %1 = getelementptr inbounds %struct.maplock, ptr %pxdlock, i32 0, i32 3
  %2 = getelementptr inbounds %struct.maplock, ptr %pxdlock, i32 0, i32 6
  %sb = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 5
  %3 = call ptr @memset(ptr %pxdlock, i32 255, i32 16)
  %4 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %ipimap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ipimap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipimap1, align 4
  %10 = ptrtoint ptr %tblk to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tblk, align 4
  %12 = and i16 %11, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  %cond = select i1 %tobool.not, i32 64, i32 16
  %next = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 6
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %13)
  %lid.0167 = load i16, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lid.0167)
  %tobool2.not168 = icmp eq i16 %lid.0167, 0
  br i1 %tobool2.not168, label %entry.for.end103_crit_edge, label %for.body.lr.ph

entry.for.end103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103

for.body.lr.ph:                                   ; preds = %entry
  %flag52 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc101.for.body_crit_edge, %for.body.lr.ph
  %lid.0170 = phi i16 [ %lid.0167, %for.body.lr.ph ], [ %lid.0, %for.inc101.for.body_crit_edge ]
  %mp.0169 = phi ptr [ null, %for.body.lr.ph ], [ %mp.2, %for.inc101.for.body_crit_edge ]
  %14 = load ptr, ptr @TxLock, align 4
  %idxprom = zext i16 %lid.0170 to i32
  %arrayidx = getelementptr %struct.tlock, ptr %14, i32 %idxprom
  %flag = getelementptr %struct.tlock, ptr %14, i32 %idxprom, i32 2
  %15 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flag, align 4
  %conv3 = zext i16 %16 to i32
  %and4 = and i32 %conv3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %for.body.for.inc101_crit_edge, label %if.end

for.body.for.inc101_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc101

if.end:                                           ; preds = %for.body
  %and8 = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end28_crit_edge, label %if.then10

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then10:                                        ; preds = %if.end
  %mp11 = getelementptr %struct.tlock, ptr %14, i32 %idxprom, i32 4
  %17 = ptrtoint ptr %mp11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mp11, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 8
  %21 = and i16 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool15.not = icmp eq i16 %21, 0
  br i1 %tobool15.not, label %do.end, label %do.end27

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 2318, ptr noundef nonnull @.str.151) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2318, 0\0A.popsection", ""() #9, !srcloc !380
  unreachable

do.end27:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @grab_metapage(ptr noundef %18) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %if.end.if.end28_crit_edge
  %mp.1 = phi ptr [ %18, %do.end27 ], [ %mp.0169, %if.end.if.end28_crit_edge ]
  %lock = getelementptr %struct.tlock, ptr %14, i32 %idxprom, i32 6
  %index = getelementptr inbounds %struct.maplock, ptr %lock, i32 0, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index, align 1
  %conv29 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp31163.not = icmp eq i8 %23, 0
  br i1 %cmp31163.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body33_crit_edge

if.end28.for.body33_crit_edge:                    ; preds = %if.end28
  br label %for.body33

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body33:                                       ; preds = %for.inc.for.body33_crit_edge, %if.end28.for.body33_crit_edge
  %k.0166 = phi i32 [ %inc, %for.inc.for.body33_crit_edge ], [ 0, %if.end28.for.body33_crit_edge ]
  %maplock.0164 = phi ptr [ %incdec.ptr, %for.inc.for.body33_crit_edge ], [ %lock, %if.end28.for.body33_crit_edge ]
  %flag34 = getelementptr inbounds %struct.maplock, ptr %maplock.0164, i32 0, i32 3
  %24 = ptrtoint ptr %flag34 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flag34, align 4
  %26 = and i16 %25, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool37.not = icmp eq i16 %26, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @txAllocPMap(ptr noundef %9, ptr noundef %maplock.0164, ptr noundef %tblk)
  br label %for.inc

if.else:                                          ; preds = %for.body33
  %27 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flag, align 4
  %29 = and i16 %28, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool42.not = icmp eq i16 %29, 0
  br i1 %tobool42.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @txFreeMap(ptr noundef %9, ptr noundef %maplock.0164, ptr noundef %tblk, i32 noundef 64)
  br label %for.inc

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @txFreeMap(ptr noundef %9, ptr noundef %maplock.0164, ptr noundef %tblk, i32 noundef %cond)
  br label %for.inc

for.inc:                                          ; preds = %if.else44, %if.then43, %if.then38
  %inc = add nuw nsw i32 %k.0166, 1
  %incdec.ptr = getelementptr %struct.maplock, ptr %maplock.0164, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv29
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body33_crit_edge

for.inc.for.body33_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  %30 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flag, align 4
  %32 = and i16 %31, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool50.not = icmp eq i16 %32, 0
  br i1 %tobool50.not, label %for.end.for.inc101_crit_edge, label %if.then51

for.end.for.inc101_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc101

if.then51:                                        ; preds = %for.end
  %33 = ptrtoint ptr %flag52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flag52, align 2
  %35 = and i16 %34, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool55.not = icmp eq i16 %35, 0
  br i1 %tobool55.not, label %do.body57, label %if.then51.do.body81_crit_edge

if.then51.do.body81_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

do.body57:                                        ; preds = %if.then51
  %lid58 = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 2
  %36 = ptrtoint ptr %lid58 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %lid58, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %lid.0170)
  %cmp61 = icmp eq i16 %37, %lid.0170
  br i1 %cmp61, label %do.end77, label %do.end66

do.end66:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 2366, ptr noundef nonnull @.str.154) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2366, 0\0A.popsection", ""() #9, !srcloc !381
  unreachable

do.end77:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %mp78 = getelementptr %struct.tlock, ptr %14, i32 %idxprom, i32 4
  %38 = ptrtoint ptr %mp78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mp78, align 4
  %lid79 = getelementptr inbounds %struct.metapage, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %lid79 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %lid79, align 4
  br label %do.body81

do.body81:                                        ; preds = %do.end77, %if.then51.do.body81_crit_edge
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 14
  %41 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp82 = icmp eq i32 %42, 1
  br i1 %cmp82, label %do.end98, label %do.end87

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 2369, ptr noundef nonnull @.str.157) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2369, 0\0A.popsection", ""() #9, !srcloc !382
  unreachable

do.end98:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @metapage_homeok(ptr noundef %mp.1)
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i) #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag.i) #9
  tail call void @release_metapage(ptr noundef %mp.1) #9
  %mp99 = getelementptr %struct.tlock, ptr %14, i32 %idxprom, i32 4
  %43 = ptrtoint ptr %mp99 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %mp99, align 4
  br label %for.inc101

for.inc101:                                       ; preds = %do.end98, %for.end.for.inc101_crit_edge, %for.body.for.inc101_crit_edge
  %mp.2 = phi ptr [ %mp.0169, %for.body.for.inc101_crit_edge ], [ %mp.1, %do.end98 ], [ %mp.1, %for.end.for.inc101_crit_edge ]
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %44)
  %lid.0 = load i16, ptr %arrayidx, align 4
  %tobool2.not = icmp eq i16 %lid.0, 0
  br i1 %tobool2.not, label %for.inc101.for.end103_crit_edge, label %for.inc101.for.body_crit_edge

for.inc101.for.body_crit_edge:                    ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %entry.for.end103_crit_edge
  %45 = ptrtoint ptr %tblk to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tblk, align 4
  %conv105 = zext i16 %46 to i32
  %and106 = and i32 %conv105, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.else112, label %if.then108

if.then108:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #11
  %ino = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 17
  %47 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ino, align 4
  %call109 = tail call i32 @diUpdatePMap(ptr noundef %9, i32 noundef %48, i1 noundef zeroext false, ptr noundef %tblk) #9
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 16, ptr %1, align 4
  %u = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 16
  %50 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %u, align 4
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %2, align 4
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %0, align 1
  call fastcc void @txAllocPMap(ptr noundef %9, ptr noundef nonnull %pxdlock, ptr noundef %tblk)
  br label %if.end121

if.else112:                                       ; preds = %for.end103
  %and115 = and i32 %conv105, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.else112.if.end121_crit_edge, label %if.then117

if.else112.if.end121_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then117:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #11
  %u118 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 16
  %54 = ptrtoint ptr %u118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %u118, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino, align 8
  %call119 = tail call i32 @diUpdatePMap(ptr noundef %9, i32 noundef %57, i1 noundef zeroext true, ptr noundef %tblk) #9
  tail call void @iput(ptr noundef %55) #9
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.else112.if.end121_crit_edge, %if.then108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pxdlock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txUnlock(ptr noundef %tblk) unnamed_addr #0 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %tblk) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %sb = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 5
  %1 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %log5 = getelementptr inbounds %struct.jfs_sb_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %log5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log5, align 4
  %next6 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 6
  %7 = ptrtoint ptr %next6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %next6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not202 = icmp eq i16 %8, 0
  br i1 %tobool.not202, label %do.end3.for.end_crit_edge, label %for.body.lr.ph

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end3
  %synclock = getelementptr inbounds %struct.jfs_log, ptr %6, i32 0, i32 30
  %clsn76 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 11
  %syncpt = getelementptr inbounds %struct.jfs_log, ptr %6, i32 0, i32 27
  %logsize = getelementptr inbounds %struct.jfs_log, ptr %6, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %txLockFree.exit199.for.body_crit_edge, %for.body.lr.ph
  %lid.0203 = phi i16 [ %8, %for.body.lr.ph ], [ %11, %txLockFree.exit199.for.body_crit_edge ]
  %9 = load ptr, ptr @TxLock, align 4
  %idxprom = zext i16 %lid.0203 to i32
  %arrayidx = getelementptr %struct.tlock, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %12 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp9 = icmp sgt i32 %12, 3
  br i1 %cmp9, label %do.end13, label %for.body.do.end18_crit_edge

for.body.do.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %idxprom, ptr noundef %arrayidx) #12
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %for.body.do.end18_crit_edge
  %mp19 = getelementptr %struct.tlock, ptr %9, i32 %idxprom, i32 4
  %13 = ptrtoint ptr %mp19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mp19, align 4
  %cmp20.not = icmp eq ptr %14, null
  br i1 %cmp20.not, label %do.end18.if.end119_crit_edge, label %land.lhs.true

do.end18.if.end119_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

land.lhs.true:                                    ; preds = %do.end18
  %type = getelementptr %struct.tlock, ptr %9, i32 %idxprom, i32 3
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type, align 2
  %17 = and i16 %16, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp23 = icmp eq i16 %17, 0
  br i1 %cmp23, label %do.body26, label %land.lhs.true.if.end119_crit_edge

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

do.body26:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %14, align 8
  %20 = and i16 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool29.not = icmp eq i16 %20, 0
  br i1 %tobool29.not, label %do.end33, label %do.end44

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 920, ptr noundef nonnull @.str.112) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 920, 0\0A.popsection", ""() #9, !srcloc !383
  unreachable

do.end44:                                         ; preds = %do.body26
  tail call void @hold_metapage(ptr noundef nonnull %14) #9
  %nohomeok = getelementptr inbounds %struct.metapage, ptr %14, i32 0, i32 14
  %21 = ptrtoint ptr %nohomeok to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp46 = icmp sgt i32 %22, 0
  br i1 %cmp46, label %do.end62, label %do.end51

do.end51:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 926, ptr noundef nonnull @.str.122) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 926, 0\0A.popsection", ""() #9, !srcloc !384
  unreachable

do.end62:                                         ; preds = %do.end44
  %dec.i = add nsw i32 %22, -1
  %23 = ptrtoint ptr %nohomeok to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec.i, ptr %nohomeok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end62._metapage_homeok.exit_crit_edge

do.end62._metapage_homeok.exit_crit_edge:         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %_metapage_homeok.exit

if.then.i:                                        ; preds = %do.end62
  %page.i = getelementptr inbounds %struct.metapage, ptr %14, i32 0, i32 10
  %24 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page.i, align 4
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !369

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %28, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %29, %if.end.i.i.i ]
  %30 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !373

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.126) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !385
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !387
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !388
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@txUnlock, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !376

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i._metapage_homeok.exit_crit_edge

folio_put_testzero.exit.i.i.i._metapage_homeok.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_metapage_homeok.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %30) #9
  br label %_metapage_homeok.exit

_metapage_homeok.exit:                            ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i._metapage_homeok.exit_crit_edge, %do.end62._metapage_homeok.exit_crit_edge
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock) #9
  %clsn = getelementptr inbounds %struct.metapage, ptr %14, i32 0, i32 13
  %35 = ptrtoint ptr %clsn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool74.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %clsn76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clsn76, align 4
  br i1 %tobool74.not, label %_metapage_homeok.exit.if.end98.sink.split_crit_edge, label %if.then75

_metapage_homeok.exit.if.end98.sink.split_crit_edge: ; preds = %_metapage_homeok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.sink.split

if.then75:                                        ; preds = %_metapage_homeok.exit
  %39 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %syncpt, align 4
  %sub = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp77 = icmp slt i32 %sub, 0
  br i1 %cmp77, label %if.then79, label %if.then75.if.end80_crit_edge

if.then75.if.end80_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then79:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %logsize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %logsize, align 8
  %add = add i32 %42, %sub
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.then75.if.end80_crit_edge
  %difft.0 = phi i32 [ %add, %if.then79 ], [ %sub, %if.then75.if.end80_crit_edge ]
  %sub83 = sub i32 %36, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub83)
  %cmp84 = icmp slt i32 %sub83, 0
  br i1 %cmp84, label %if.then86, label %if.end80.if.end89_crit_edge

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then86:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %logsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %logsize, align 8
  %add88 = add i32 %44, %sub83
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end80.if.end89_crit_edge
  %diffp.0 = phi i32 [ %add88, %if.then86 ], [ %sub83, %if.end80.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %difft.0, i32 %diffp.0)
  %cmp90 = icmp sgt i32 %difft.0, %diffp.0
  br i1 %cmp90, label %if.end89.if.end98.sink.split_crit_edge, label %if.end89.if.end98_crit_edge

if.end89.if.end98_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.end89.if.end98.sink.split_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.sink.split

if.end98.sink.split:                              ; preds = %if.end89.if.end98.sink.split_crit_edge, %_metapage_homeok.exit.if.end98.sink.split_crit_edge
  %45 = ptrtoint ptr %clsn to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %38, ptr %clsn, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.end98.sink.split, %if.end89.if.end98_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock, i32 noundef %call69) #9
  %flag = getelementptr %struct.tlock, ptr %9, i32 %idxprom, i32 2
  %46 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flag, align 4
  %48 = and i16 %47, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool103.not = icmp eq i16 %48, 0
  br i1 %tobool103.not, label %do.end118, label %do.end107

do.end107:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 940, ptr noundef nonnull @.str.125) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 940, 0\0A.popsection", ""() #9, !srcloc !389
  unreachable

do.end118:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_metapage(ptr noundef nonnull %14) #9
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %land.lhs.true.if.end119_crit_edge, %do.end18.if.end119_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %lock = getelementptr %struct.tlock, ptr %9, i32 %idxprom, i32 6
  %49 = ptrtoint ptr %lock to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool121.not200 = icmp eq i16 %50, 0
  br i1 %tobool121.not200, label %if.end119.while.end_crit_edge, label %if.end119.while.body_crit_edge

if.end119.while.body_crit_edge:                   ; preds = %if.end119
  br label %while.body

if.end119.while.end_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %txLockFree.exit.while.body_crit_edge, %if.end119.while.body_crit_edge
  %llid.0201 = phi i16 [ %53, %txLockFree.exit.while.body_crit_edge ], [ %50, %if.end119.while.body_crit_edge ]
  %51 = load ptr, ptr @TxLock, align 4
  %idxprom122 = zext i16 %llid.0201 to i32
  %arrayidx123 = getelementptr %struct.tlock, ptr %51, i32 %idxprom122
  %52 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx123, align 2
  %tid.i = getelementptr %struct.tlock, ptr %51, i32 %idxprom122, i32 1
  %54 = ptrtoint ptr %tid.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %tid.i, align 2
  %55 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %conv.i = trunc i32 %55 to i16
  %56 = load ptr, ptr @TxLock, align 4
  %arrayidx2.i = getelementptr %struct.tlock, ptr %56, i32 %idxprom122
  %57 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %arrayidx2.i, align 4
  store i32 %idxprom122, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %dec.i184 = add i32 %58, -1
  store i32 %dec.i184, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %59 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i185 = icmp eq i32 %59, 0
  br i1 %tobool.not.i185, label %while.body.txLockFree.exit_crit_edge, label %land.lhs.true.i

while.body.txLockFree.exit_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit

land.lhs.true.i:                                  ; preds = %while.body
  %60 = load i32, ptr @TxLockLWM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i184, i32 %60)
  %cmp.i = icmp slt i32 %dec.i184, %60
  br i1 %cmp.i, label %do.body.i, label %land.lhs.true.i.txLockFree.exit_crit_edge

land.lhs.true.i.txLockFree.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %61 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp5.i = icmp sgt i32 %61, 3
  br i1 %cmp5.i, label %do.end.i, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  store i32 0, ptr @jfs_tlocks_low, align 4
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %txLockFree.exit

txLockFree.exit:                                  ; preds = %do.end9.i, %land.lhs.true.i.txLockFree.exit_crit_edge, %while.body.txLockFree.exit_crit_edge
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %tobool121.not = icmp eq i16 %53, 0
  br i1 %tobool121.not, label %txLockFree.exit.while.end_crit_edge, label %txLockFree.exit.while.body_crit_edge

txLockFree.exit.while.body_crit_edge:             ; preds = %txLockFree.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

txLockFree.exit.while.end_crit_edge:              ; preds = %txLockFree.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %txLockFree.exit.while.end_crit_edge, %if.end119.while.end_crit_edge
  %62 = load ptr, ptr @TxLock, align 4
  %tid.i187 = getelementptr %struct.tlock, ptr %62, i32 %idxprom, i32 1
  %63 = ptrtoint ptr %tid.i187 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %tid.i187, align 2
  %64 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %conv.i188 = trunc i32 %64 to i16
  %65 = load ptr, ptr @TxLock, align 4
  %arrayidx2.i189 = getelementptr %struct.tlock, ptr %65, i32 %idxprom
  %66 = ptrtoint ptr %arrayidx2.i189 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i188, ptr %arrayidx2.i189, align 4
  store i32 %idxprom, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %67 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %dec.i190 = add i32 %67, -1
  store i32 %dec.i190, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %68 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i191 = icmp eq i32 %68, 0
  br i1 %tobool.not.i191, label %while.end.txLockFree.exit199_crit_edge, label %land.lhs.true.i193

while.end.txLockFree.exit199_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit199

land.lhs.true.i193:                               ; preds = %while.end
  %69 = load i32, ptr @TxLockLWM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i190, i32 %69)
  %cmp.i192 = icmp slt i32 %dec.i190, %69
  br i1 %cmp.i192, label %do.body.i195, label %land.lhs.true.i193.txLockFree.exit199_crit_edge

land.lhs.true.i193.txLockFree.exit199_crit_edge:  ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit199

do.body.i195:                                     ; preds = %land.lhs.true.i193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %70 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp5.i194 = icmp sgt i32 %70, 3
  br i1 %cmp5.i194, label %do.end.i197, label %do.body.i195.do.end9.i198_crit_edge

do.body.i195.do.end9.i198_crit_edge:              ; preds = %do.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i198

do.end.i197:                                      ; preds = %do.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  %call.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #12
  br label %do.end9.i198

do.end9.i198:                                     ; preds = %do.end.i197, %do.body.i195.do.end9.i198_crit_edge
  store i32 0, ptr @jfs_tlocks_low, align 4
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %txLockFree.exit199

txLockFree.exit199:                               ; preds = %do.end9.i198, %land.lhs.true.i193.txLockFree.exit199_crit_edge, %while.end.txLockFree.exit199_crit_edge
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %txLockFree.exit199.for.end_crit_edge, label %txLockFree.exit199.for.body_crit_edge

txLockFree.exit199.for.body_crit_edge:            ; preds = %txLockFree.exit199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

txLockFree.exit199.for.end_crit_edge:             ; preds = %txLockFree.exit199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %txLockFree.exit199.for.end_crit_edge, %do.end3.for.end_crit_edge
  %last = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 7
  %71 = ptrtoint ptr %last to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %last, align 2
  %72 = ptrtoint ptr %next6 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %next6, align 4
  %lsn = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 3
  %73 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lsn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool126.not = icmp eq i32 %74, 0
  br i1 %tobool126.not, label %for.end.if.end143_crit_edge, label %do.body129

for.end.if.end143_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

do.body129:                                       ; preds = %for.end
  %synclock135 = getelementptr inbounds %struct.jfs_log, ptr %6, i32 0, i32 30
  %call137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock135) #9
  %count = getelementptr inbounds %struct.jfs_log, ptr %6, i32 0, i32 32
  %75 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count, align 4
  %dec = add i32 %76, -1
  store i32 %dec, ptr %count, align 4
  %synclist = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body129.list_del.exit_crit_edge

do.body129.list_del.exit_crit_edge:               ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i, align 4
  %79 = ptrtoint ptr %synclist to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %synclist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body129.list_del.exit_crit_edge
  %83 = ptrtoint ptr %synclist to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %synclist, align 4
  %prev.i = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock135, i32 noundef %call137) #9
  br label %if.end143

if.end143:                                        ; preds = %list_del.exit, %for.end.if.end143_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txAbort(i16 noundef zeroext %tid, i32 noundef %dirty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @TxBlock, align 4
  %idxprom = zext i16 %tid to i32
  %next1 = getelementptr %struct.tblock, ptr %0, i32 %idxprom, i32 6
  %1 = ptrtoint ptr %next1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %next1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not30 = icmp eq i16 %2, 0
  br i1 %tobool.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %txLockFree.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %lid.031 = phi i16 [ %5, %txLockFree.exit.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %3 = load ptr, ptr @TxLock, align 4
  %idxprom2 = zext i16 %lid.031 to i32
  %arrayidx3 = getelementptr %struct.tlock, ptr %3, i32 %idxprom2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx3, align 4
  %mp5 = getelementptr %struct.tlock, ptr %3, i32 %idxprom2, i32 4
  %6 = ptrtoint ptr %mp5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mp5, align 4
  %ip = getelementptr %struct.tlock, ptr %3, i32 %idxprom2, i32 5
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 4
  %xtlid = getelementptr i8, ptr %9, i32 -404
  %10 = ptrtoint ptr %xtlid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %xtlid, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %for.body.if.end11_crit_edge, label %if.then

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %for.body
  %lid7 = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %lid7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %lid7, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %7, align 8
  %14 = and i16 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool8.not = icmp eq i16 %14, 0
  br i1 %tobool8.not, label %if.then.if.end11_crit_edge, label %land.lhs.true

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %lsn = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %lsn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %nohomeok.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 14
  %17 = ptrtoint ptr %nohomeok.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nohomeok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body11.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 2824, ptr noundef nonnull @.str.177) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2824, 0\0A.popsection", ""() #9, !srcloc !390
  unreachable

do.body11.i:                                      ; preds = %if.then10
  %log1.i = getelementptr inbounds %struct.metapage, ptr %7, i32 0, i32 15
  %19 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %log1.i, align 8
  %tobool12.not.i = icmp eq ptr %20, null
  br i1 %tobool12.not.i, label %do.end16.i, label %LogSyncRelease.exit

do.end16.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 2825, ptr noundef nonnull @.str.180) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_txnmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2825, 0\0A.popsection", ""() #9, !srcloc !391
  unreachable

LogSyncRelease.exit:                              ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @metapage_homeok(ptr noundef nonnull %7) #9
  br label %if.end11

if.end11:                                         ; preds = %LogSyncRelease.exit, %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge, %for.body.if.end11_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %21 = load ptr, ptr @TxLock, align 4
  %tid.i = getelementptr %struct.tlock, ptr %21, i32 %idxprom2, i32 1
  %22 = ptrtoint ptr %tid.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %tid.i, align 2
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %conv.i = trunc i32 %23 to i16
  %24 = load ptr, ptr @TxLock, align 4
  %arrayidx2.i = getelementptr %struct.tlock, ptr %24, i32 %idxprom2
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %arrayidx2.i, align 4
  store i32 %idxprom2, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %27 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i27 = icmp eq i32 %27, 0
  br i1 %tobool.not.i27, label %if.end11.txLockFree.exit_crit_edge, label %land.lhs.true.i

if.end11.txLockFree.exit_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %28 = load i32, ptr @TxLockLWM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %28)
  %cmp.i = icmp slt i32 %dec.i, %28
  br i1 %cmp.i, label %do.body.i, label %land.lhs.true.i.txLockFree.exit_crit_edge

land.lhs.true.i.txLockFree.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %29 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp5.i = icmp sgt i32 %29, 3
  br i1 %cmp5.i, label %do.end.i29, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

do.end.i29:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i29, %do.body.i.do.end9.i_crit_edge
  store i32 0, ptr @jfs_tlocks_low, align 4
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %txLockFree.exit

txLockFree.exit:                                  ; preds = %do.end9.i, %land.lhs.true.i.txLockFree.exit_crit_edge, %if.end11.txLockFree.exit_crit_edge
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %txLockFree.exit.for.end_crit_edge, label %txLockFree.exit.for.body_crit_edge

txLockFree.exit.for.body_crit_edge:               ; preds = %txLockFree.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

txLockFree.exit.for.end_crit_edge:                ; preds = %txLockFree.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %txLockFree.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %last = getelementptr %struct.tblock, ptr %0, i32 %idxprom, i32 7
  %30 = ptrtoint ptr %last to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %last, align 2
  %31 = ptrtoint ptr %next1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %next1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty)
  %tobool13.not = icmp eq i32 %dirty, 0
  br i1 %tobool13.not, label %for.end.if.end15_crit_edge, label %if.then14

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sb = getelementptr %struct.tblock, ptr %0, i32 %idxprom, i32 5
  %32 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %33, ptr noundef nonnull @.str.90) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txEA(i16 noundef zeroext %tid, ptr noundef %ip, ptr nocapture noundef readonly %oldea, ptr noundef readonly %newea) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %newea, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %newea to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %newea, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @txMaplock(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef 4096)
  %lock = getelementptr inbounds %struct.tlock, ptr %call, i32 0, i32 6
  %flag3 = getelementptr inbounds %struct.tlock, ptr %call, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %flag3 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %flag3, align 4
  %pxd = getelementptr inbounds %struct.tlock, ptr %call, i32 0, i32 6, i32 4
  %loc = getelementptr inbounds %struct.dxd_t, ptr %newea, i32 0, i32 3
  %3 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %loc, align 4
  %addr2.i = getelementptr inbounds %struct.dxd_t, ptr %newea, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr2.i, align 4
  %7 = ptrtoint ptr %pxd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pxd, align 4
  %and.i = and i32 %8, -256
  %sum.shift.i = and i32 %4, 255
  %or.i = or i32 %and.i, %sum.shift.i
  store i32 %or.i, ptr %pxd, align 4
  %addr2.i63 = getelementptr inbounds %struct.tlock, ptr %call, i32 0, i32 6, i32 6
  %9 = ptrtoint ptr %addr2.i63 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %addr2.i63, align 4
  %10 = load i32, ptr %loc, align 4
  %11 = and i32 %10, -256
  %or.i66 = or i32 %11, %sum.shift.i
  store i32 %or.i66, ptr %pxd, align 4
  %incdec.ptr = getelementptr %struct.tlock, ptr %call, i32 0, i32 6, i32 8
  %index = getelementptr inbounds %struct.maplock, ptr %lock, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %index, align 1
  br label %if.end15

if.else:                                          ; preds = %if.then
  %and10 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %if.then12

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %cflag = getelementptr i8, ptr %ip, i32 -768
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cflag) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else.if.end15_crit_edge, %if.then2, %entry.if.end15_crit_edge
  %tlck.0 = phi ptr [ %call, %if.then2 ], [ null, %if.then12 ], [ null, %if.else.if.end15_crit_edge ], [ null, %entry.if.end15_crit_edge ]
  %maplock.0 = phi ptr [ %lock, %if.then2 ], [ null, %if.then12 ], [ null, %if.else.if.end15_crit_edge ], [ null, %entry.if.end15_crit_edge ]
  %pxdlock.0 = phi ptr [ %incdec.ptr, %if.then2 ], [ null, %if.then12 ], [ null, %if.else.if.end15_crit_edge ], [ null, %entry.if.end15_crit_edge ]
  %cflag17 = getelementptr i8, ptr %ip, i32 -768
  %13 = ptrtoint ptr %cflag17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cflag17, align 4
  %and1.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end15.if.end39_crit_edge

if.end15.if.end39_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end15
  %15 = ptrtoint ptr %oldea to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %oldea, align 4
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool23.not = icmp eq i8 %17, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end39_crit_edge, label %if.then24

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then24:                                        ; preds = %land.lhs.true
  %cmp = icmp eq ptr %tlck.0, null
  br i1 %cmp, label %if.then26, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call ptr @txMaplock(i16 noundef zeroext %tid, ptr noundef %ip, i32 noundef 4096)
  %lock28 = getelementptr inbounds %struct.tlock, ptr %call27, i32 0, i32 6
  %index29 = getelementptr inbounds %struct.maplock, ptr %lock28, i32 0, i32 2
  %18 = ptrtoint ptr %index29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %index29, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then24.if.end30_crit_edge
  %maplock.1 = phi ptr [ %lock28, %if.then26 ], [ %maplock.0, %if.then24.if.end30_crit_edge ]
  %pxdlock.1 = phi ptr [ %lock28, %if.then26 ], [ %pxdlock.0, %if.then24.if.end30_crit_edge ]
  %flag31 = getelementptr inbounds %struct.maplock, ptr %pxdlock.1, i32 0, i32 3
  %19 = ptrtoint ptr %flag31 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flag31, align 4
  %pxd32 = getelementptr inbounds %struct.maplock, ptr %pxdlock.1, i32 0, i32 6
  %loc33 = getelementptr inbounds %struct.dxd_t, ptr %oldea, i32 0, i32 3
  %20 = ptrtoint ptr %loc33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loc33, align 4
  %addr2.i70 = getelementptr inbounds %struct.dxd_t, ptr %oldea, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %addr2.i70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr2.i70, align 4
  %24 = ptrtoint ptr %pxd32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pxd32, align 4
  %and.i73 = and i32 %25, -256
  %sum.shift.i74 = and i32 %21, 255
  %or.i77 = or i32 %and.i73, %sum.shift.i74
  store i32 %or.i77, ptr %pxd32, align 4
  %addr2.i79 = getelementptr inbounds %struct.maplock, ptr %pxdlock.1, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %addr2.i79 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %addr2.i79, align 4
  %27 = load i32, ptr %loc33, align 4
  %28 = and i32 %27, -256
  %or.i82 = or i32 %28, %sum.shift.i74
  store i32 %or.i82, ptr %pxd32, align 4
  %index38 = getelementptr inbounds %struct.maplock, ptr %maplock.1, i32 0, i32 2
  %29 = ptrtoint ptr %index38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %index38, align 1
  %inc = add i8 %30, 1
  store i8 %inc, ptr %index38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.end30, %land.lhs.true.if.end39_crit_edge, %if.end15.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txFreeMap(ptr noundef %ip, ptr noundef %maplock, ptr noundef %tblk, i32 noundef %maptype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipbmap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipbmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipbmap1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %6 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp sgt i32 %6, 3
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %tblk, ptr noundef %maplock, i32 noundef %maptype) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %7 = zext i32 %maptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %maptype, label %do.end5.if.end191_crit_edge [
    i32 16, label %do.end5.if.then8_crit_edge
    i32 64, label %do.end5.if.then8_crit_edge316
    i32 32, label %do.end5.if.then98_crit_edge
  ]

do.end5.if.then98_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

do.end5.if.then8_crit_edge316:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

do.end5.if.then8_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

do.end5.if.end191_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then8:                                         ; preds = %do.end5.if.then8_crit_edge, %do.end5.if.then8_crit_edge316
  %flag = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 3
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flag, align 4
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then8
  %count = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 5
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11292.not = icmp eq i8 %11, 0
  br i1 %cmp11292.not, label %if.then9.if.end92_crit_edge, label %for.body.preheader

if.then9.if.end92_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

for.body.preheader:                               ; preds = %if.then9
  %union64 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 6
  %12 = ptrtoint ptr %union64 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %union64, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %xad.0294 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %n.0293 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %14 = ptrtoint ptr %xad.0294 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %xad.0294, align 4
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %if.then17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %for.body
  %loc = getelementptr inbounds %struct.xad, ptr %xad.0294, i32 0, i32 4
  %17 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %loc, align 4
  %19 = shl i32 %18, 24
  %conv.i = zext i32 %19 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.xad, ptr %xad.0294, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr2.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %conv1.i = zext i32 %22 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %23 = and i32 %18, -256
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = zext i32 %24 to i64
  %call22 = tail call i32 @dbUpdatePMap(ptr noundef %5, i32 noundef 1, i64 noundef %add.i, i64 noundef %25, ptr noundef %tblk) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %26 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp24 = icmp sgt i32 %26, 3
  br i1 %cmp24, label %do.end29, label %if.then17.for.inc_crit_edge

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end29:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %22, i32 noundef %24) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end29, %if.then17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.0293, 1
  %incdec.ptr = getelementptr %struct.xad, ptr %xad.0294, i32 1
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %count, align 1
  %conv10 = zext i8 %28 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.if.end92_crit_edge

for.inc.if.end92_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %if.then8
  %and39 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else61, label %if.then41

if.then41:                                        ; preds = %if.else
  %pxd42 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6
  %29 = ptrtoint ptr %pxd42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pxd42, align 4
  %31 = shl i32 %30, 24
  %conv.i264 = zext i32 %31 to i64
  %shl.i265 = shl nuw nsw i64 %conv.i264, 8
  %addr2.i266 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %addr2.i266 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr2.i266, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %conv1.i267 = zext i32 %34 to i64
  %add.i268 = or i64 %shl.i265, %conv1.i267
  %35 = and i32 %30, -256
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = zext i32 %36 to i64
  %call47 = tail call i32 @dbUpdatePMap(ptr noundef %5, i32 noundef 1, i64 noundef %add.i268, i64 noundef %37, ptr noundef %tblk) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %38 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp49 = icmp sgt i32 %38, 3
  br i1 %cmp49, label %do.end54, label %if.then41.if.end92_crit_edge

if.then41.if.end92_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end54:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %34, i32 noundef %36) #12
  br label %if.end92

if.else61:                                        ; preds = %if.else
  %count64 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 5
  %39 = ptrtoint ptr %count64 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %count64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp66297.not = icmp eq i8 %40, 0
  br i1 %cmp66297.not, label %if.else61.if.end92_crit_edge, label %for.body68.preheader

if.else61.if.end92_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

for.body68.preheader:                             ; preds = %if.else61
  %union6462 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 6
  %41 = ptrtoint ptr %union6462 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %union6462, align 8
  br label %for.body68

for.body68:                                       ; preds = %for.inc86.for.body68_crit_edge, %for.body68.preheader
  %n.1299 = phi i32 [ %inc87, %for.inc86.for.body68_crit_edge ], [ 0, %for.body68.preheader ]
  %pxd.0298 = phi ptr [ %incdec.ptr88, %for.inc86.for.body68_crit_edge ], [ %42, %for.body68.preheader ]
  %43 = ptrtoint ptr %pxd.0298 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pxd.0298, align 4
  %45 = shl i32 %44, 24
  %conv.i269 = zext i32 %45 to i64
  %shl.i270 = shl nuw nsw i64 %conv.i269, 8
  %addr2.i271 = getelementptr inbounds %struct.pxd_t, ptr %pxd.0298, i32 0, i32 1
  %46 = ptrtoint ptr %addr2.i271 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr2.i271, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %conv1.i272 = zext i32 %48 to i64
  %add.i273 = or i64 %shl.i270, %conv1.i272
  %49 = and i32 %44, -256
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = zext i32 %50 to i64
  %call72 = tail call i32 @dbUpdatePMap(ptr noundef %5, i32 noundef 1, i64 noundef %add.i273, i64 noundef %51, ptr noundef %tblk) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %52 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp74 = icmp sgt i32 %52, 3
  br i1 %cmp74, label %do.end79, label %for.body68.for.inc86_crit_edge

for.body68.for.inc86_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc86

do.end79:                                         ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %48, i32 noundef %50) #12
  br label %for.inc86

for.inc86:                                        ; preds = %do.end79, %for.body68.for.inc86_crit_edge
  %inc87 = add nuw nsw i32 %n.1299, 1
  %incdec.ptr88 = getelementptr %struct.pxd_t, ptr %pxd.0298, i32 1
  %53 = ptrtoint ptr %count64 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %count64, align 1
  %conv65 = zext i8 %54 to i32
  %cmp66 = icmp ult i32 %inc87, %conv65
  br i1 %cmp66, label %for.inc86.for.body68_crit_edge, label %for.inc86.if.end92_crit_edge

for.inc86.if.end92_crit_edge:                     ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

for.inc86.for.body68_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

if.end92:                                         ; preds = %for.inc86.if.end92_crit_edge, %if.else61.if.end92_crit_edge, %do.end54, %if.then41.if.end92_crit_edge, %for.inc.if.end92_crit_edge, %if.then9.if.end92_crit_edge
  %55 = zext i32 %maptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %maptype, label %if.end92.if.end191_crit_edge [
    i32 64, label %if.end92.if.then98_crit_edge
    i32 32, label %if.end92.if.then98_crit_edge317
  ]

if.end92.if.then98_crit_edge317:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

if.end92.if.then98_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

if.end92.if.end191_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then98:                                        ; preds = %if.end92.if.then98_crit_edge, %if.end92.if.then98_crit_edge317, %do.end5.if.then98_crit_edge
  %flag99 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 3
  %56 = ptrtoint ptr %flag99 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flag99, align 4
  %conv100 = zext i16 %57 to i32
  %and101 = and i32 %conv100, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else135, label %if.then103

if.then103:                                       ; preds = %if.then98
  %count106 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 5
  %58 = ptrtoint ptr %count106 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %count106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp108301.not = icmp eq i8 %59, 0
  br i1 %cmp108301.not, label %if.then103.if.end191_crit_edge, label %for.body110.preheader

if.then103.if.end191_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

for.body110.preheader:                            ; preds = %if.then103
  %union64104 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 6
  %60 = ptrtoint ptr %union64104 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %union64104, align 8
  br label %for.body110

for.body110:                                      ; preds = %for.inc131.for.body110_crit_edge, %for.body110.preheader
  %xad.1303 = phi ptr [ %incdec.ptr133, %for.inc131.for.body110_crit_edge ], [ %61, %for.body110.preheader ]
  %n.2302 = phi i32 [ %inc132, %for.inc131.for.body110_crit_edge ], [ 0, %for.body110.preheader ]
  %loc111 = getelementptr inbounds %struct.xad, ptr %xad.1303, i32 0, i32 4
  %62 = ptrtoint ptr %loc111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %loc111, align 4
  %64 = shl i32 %63, 24
  %conv.i274 = zext i32 %64 to i64
  %shl.i275 = shl nuw nsw i64 %conv.i274, 8
  %addr2.i276 = getelementptr inbounds %struct.xad, ptr %xad.1303, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %addr2.i276 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr2.i276, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #9
  %conv1.i277 = zext i32 %67 to i64
  %add.i278 = or i64 %shl.i275, %conv1.i277
  %68 = and i32 %63, -256
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %70 = zext i32 %69 to i64
  %call116 = tail call i32 @dbFree(ptr noundef %ip, i64 noundef %add.i278, i64 noundef %70) #9
  %71 = ptrtoint ptr %xad.1303 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %xad.1303, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %72 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp119 = icmp sgt i32 %72, 3
  br i1 %cmp119, label %do.end124, label %for.body110.for.inc131_crit_edge

for.body110.for.inc131_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc131

do.end124:                                        ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %67, i32 noundef %69) #12
  br label %for.inc131

for.inc131:                                       ; preds = %do.end124, %for.body110.for.inc131_crit_edge
  %inc132 = add nuw nsw i32 %n.2302, 1
  %incdec.ptr133 = getelementptr %struct.xad, ptr %xad.1303, i32 1
  %73 = ptrtoint ptr %count106 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %count106, align 1
  %conv107 = zext i8 %74 to i32
  %cmp108 = icmp ult i32 %inc132, %conv107
  br i1 %cmp108, label %for.inc131.for.body110_crit_edge, label %for.inc131.if.end191_crit_edge

for.inc131.if.end191_crit_edge:                   ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

for.inc131.for.body110_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

if.else135:                                       ; preds = %if.then98
  %and138 = and i32 %conv100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.else160, label %if.then140

if.then140:                                       ; preds = %if.else135
  %pxd141 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6
  %75 = ptrtoint ptr %pxd141 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pxd141, align 4
  %77 = shl i32 %76, 24
  %conv.i279 = zext i32 %77 to i64
  %shl.i280 = shl nuw nsw i64 %conv.i279, 8
  %addr2.i281 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6, i32 1
  %78 = ptrtoint ptr %addr2.i281 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr2.i281, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #9
  %conv1.i282 = zext i32 %80 to i64
  %add.i283 = or i64 %shl.i280, %conv1.i282
  %81 = and i32 %76, -256
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #9
  %83 = zext i32 %82 to i64
  %call146 = tail call i32 @dbFree(ptr noundef %ip, i64 noundef %add.i283, i64 noundef %83) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %84 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp148 = icmp sgt i32 %84, 3
  br i1 %cmp148, label %do.end153, label %if.then140.if.end191_crit_edge

if.then140.if.end191_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

do.end153:                                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %80, i32 noundef %82) #12
  br label %if.end191

if.else160:                                       ; preds = %if.else135
  %count163 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 5
  %85 = ptrtoint ptr %count163 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %count163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp165305.not = icmp eq i8 %86, 0
  br i1 %cmp165305.not, label %if.else160.if.end191_crit_edge, label %for.body167.preheader

if.else160.if.end191_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

for.body167.preheader:                            ; preds = %if.else160
  %union64161 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 6
  %87 = ptrtoint ptr %union64161 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %union64161, align 8
  br label %for.body167

for.body167:                                      ; preds = %for.inc185.for.body167_crit_edge, %for.body167.preheader
  %n.3307 = phi i32 [ %inc186, %for.inc185.for.body167_crit_edge ], [ 0, %for.body167.preheader ]
  %pxd.1306 = phi ptr [ %incdec.ptr187, %for.inc185.for.body167_crit_edge ], [ %88, %for.body167.preheader ]
  %89 = ptrtoint ptr %pxd.1306 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pxd.1306, align 4
  %91 = shl i32 %90, 24
  %conv.i284 = zext i32 %91 to i64
  %shl.i285 = shl nuw nsw i64 %conv.i284, 8
  %addr2.i286 = getelementptr inbounds %struct.pxd_t, ptr %pxd.1306, i32 0, i32 1
  %92 = ptrtoint ptr %addr2.i286 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %addr2.i286, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  %conv1.i287 = zext i32 %94 to i64
  %add.i288 = or i64 %shl.i285, %conv1.i287
  %95 = and i32 %90, -256
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #9
  %97 = zext i32 %96 to i64
  %call171 = tail call i32 @dbFree(ptr noundef %ip, i64 noundef %add.i288, i64 noundef %97) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %98 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp173 = icmp sgt i32 %98, 3
  br i1 %cmp173, label %do.end178, label %for.body167.for.inc185_crit_edge

for.body167.for.inc185_crit_edge:                 ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc185

do.end178:                                        ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %94, i32 noundef %96) #12
  br label %for.inc185

for.inc185:                                       ; preds = %do.end178, %for.body167.for.inc185_crit_edge
  %inc186 = add nuw nsw i32 %n.3307, 1
  %incdec.ptr187 = getelementptr %struct.pxd_t, ptr %pxd.1306, i32 1
  %99 = ptrtoint ptr %count163 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %count163, align 1
  %conv164 = zext i8 %100 to i32
  %cmp165 = icmp ult i32 %inc186, %conv164
  br i1 %cmp165, label %for.inc185.for.body167_crit_edge, label %for.inc185.if.end191_crit_edge

for.inc185.if.end191_crit_edge:                   ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

for.inc185.for.body167_crit_edge:                 ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body167

if.end191:                                        ; preds = %for.inc185.if.end191_crit_edge, %if.else160.if.end191_crit_edge, %do.end153, %if.then140.if.end191_crit_edge, %for.inc131.if.end191_crit_edge, %if.then103.if.end191_crit_edge, %if.end92.if.end191_crit_edge, %do.end5.if.end191_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbUpdatePMap(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbFree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txFreelock(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %atlhead = getelementptr i8, ptr %ip, i32 -746
  %0 = ptrtoint ptr %atlhead to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %atlhead, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %2 = ptrtoint ptr %atlhead to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %atlhead, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not29 = icmp eq i16 %3, 0
  br i1 %cmp.not29, label %if.end.if.else12_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.else12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %if.end.while.body_crit_edge
  %4 = phi i16 [ %22, %if.end8.while.body_crit_edge ], [ %3, %if.end.while.body_crit_edge ]
  %xlid.031 = phi i16 [ %xlid.1, %if.end8.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %xtlck.030 = phi ptr [ %xtlck.1, %if.end8.while.body_crit_edge ], [ %atlhead, %if.end.while.body_crit_edge ]
  %conv = zext i16 %4 to i32
  %5 = load ptr, ptr @TxLock, align 4
  %arrayidx = getelementptr %struct.tlock, ptr %5, i32 %conv
  %flag = getelementptr %struct.tlock, ptr %5, i32 %conv, i32 2
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flag, align 4
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %while.body.if.end8_crit_edge, label %if.then5

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %while.body
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %xtlck.030 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %xtlck.030, align 4
  %12 = load ptr, ptr @TxLock, align 4
  %tid.i = getelementptr %struct.tlock, ptr %12, i32 %conv, i32 1
  %13 = ptrtoint ptr %tid.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %tid.i, align 2
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %conv.i = trunc i32 %14 to i16
  %15 = load ptr, ptr @TxLock, align 4
  %arrayidx2.i = getelementptr %struct.tlock, ptr %15, i32 %conv
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayidx2.i, align 4
  store i32 %conv, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %18 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then5.txLockFree.exit_crit_edge, label %land.lhs.true.i

if.then5.txLockFree.exit_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %19 = load i32, ptr @TxLockLWM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %19)
  %cmp.i = icmp slt i32 %dec.i, %19
  br i1 %cmp.i, label %do.body.i, label %land.lhs.true.i.txLockFree.exit_crit_edge

land.lhs.true.i.txLockFree.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %txLockFree.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %20 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp5.i = icmp sgt i32 %20, 3
  br i1 %cmp5.i, label %do.end.i, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  store i32 0, ptr @jfs_tlocks_low, align 4
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %txLockFree.exit

txLockFree.exit:                                  ; preds = %do.end9.i, %land.lhs.true.i.txLockFree.exit_crit_edge, %if.then5.txLockFree.exit_crit_edge
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3), i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %if.end8

if.end8:                                          ; preds = %txLockFree.exit, %while.body.if.end8_crit_edge
  %xtlck.1 = phi ptr [ %xtlck.030, %txLockFree.exit ], [ %arrayidx, %while.body.if.end8_crit_edge ]
  %xlid.1 = phi i16 [ %xlid.031, %txLockFree.exit ], [ %4, %while.body.if.end8_crit_edge ]
  %21 = ptrtoint ptr %xtlck.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %xtlck.1, align 4
  %cmp.not = icmp eq i16 %22, 0
  br i1 %cmp.not, label %while.end, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end8
  %23 = ptrtoint ptr %atlhead to i32
  call void @__asan_load2_noabort(i32 %23)
  %.pr = load i16, ptr %atlhead, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool10.not = icmp eq i16 %.pr, 0
  br i1 %tobool10.not, label %while.end.if.else12_crit_edge, label %if.then11

while.end.if.else12_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %atltail = getelementptr i8, ptr %ip, i32 -744
  %24 = ptrtoint ptr %atltail to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %xlid.1, ptr %atltail, align 8
  br label %if.end14

if.else12:                                        ; preds = %while.end.if.else12_crit_edge, %if.end.if.else12_crit_edge
  %atltail13 = getelementptr i8, ptr %ip, i32 -744
  %25 = ptrtoint ptr %atltail13 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %atltail13, align 8
  %anon_inode_list = getelementptr i8, ptr %ip, i32 -696
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %anon_inode_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else12.list_del_init.exit_crit_edge

if.else12.list_del_init.exit_crit_edge:           ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %ip, i32 -692
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %anon_inode_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else12.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %anon_inode_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %anon_inode_list, ptr %anon_inode_list, align 4
  %prev.i3.i = getelementptr i8, ptr %ip, i32 -692
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %anon_inode_list, ptr %prev.i3.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %list_del_init.exit, %if.then11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_lazycommit(ptr nocapture readnone %arg) #0 align 64 {
entry:
  %wq = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds i8, ptr %wq, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond117.do.body_crit_edge, %entry
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6)) #9
  store i1 false, ptr @jfs_commit_thread_waking, align 4
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), align 4
  %cmp.i.not207 = icmp eq ptr %5, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7)
  br i1 %cmp.i.not207, label %do.body.while.end_crit_edge, label %do.body.for.body.preheader_crit_edge

do.body.for.body.preheader_crit_edge:             ; preds = %do.body
  br label %for.body.preheader

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.body.preheader:                               ; preds = %for.end.for.body.preheader_crit_edge, %do.body.for.body.preheader_crit_edge
  %6 = phi ptr [ %55, %for.end.for.body.preheader_crit_edge ], [ %5, %do.body.for.body.preheader_crit_edge ]
  %flags.0208 = phi i32 [ %call23, %for.end.for.body.preheader_crit_edge ], [ %call3, %do.body.for.body.preheader_crit_edge ]
  br label %for.body

for.condthread-pre-split:                         ; preds = %for.body
  %7 = ptrtoint ptr %.pn179 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.pr = load ptr, ptr %.pn179, align 4
  %cmp8.not = icmp eq ptr %.pn.pr, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7)
  br i1 %cmp8.not, label %for.condthread-pre-split.while.end_crit_edge, label %for.condthread-pre-split.for.body_crit_edge

for.condthread-pre-split.for.body_crit_edge:      ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.condthread-pre-split.while.end_crit_edge:     ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.body:                                         ; preds = %for.condthread-pre-split.for.body_crit_edge, %for.body.preheader
  %.pn179 = phi ptr [ %.pn.pr, %for.condthread-pre-split.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %sb = getelementptr i8, ptr %.pn179, i32 -64
  %8 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %commit_state = getelementptr inbounds %struct.jfs_sb_info, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %commit_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %commit_state, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end, label %for.condthread-pre-split

if.end:                                           ; preds = %for.body
  %sb.le = getelementptr i8, ptr %.pn179, i32 -64
  %commit_state.le = getelementptr inbounds %struct.jfs_sb_info, ptr %11, i32 0, i32 20
  %tblk.0.le = getelementptr i8, ptr %.pn179, i32 -84
  %or = or i32 %13, 1
  %14 = ptrtoint ptr %commit_state.le to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %commit_state.le, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn179) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn179, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn179 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn179, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %21 = ptrtoint ptr %.pn179 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn179, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn179, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6), i32 noundef %flags.0208) #9
  %flag.i = getelementptr i8, ptr %.pn179, i32 -82
  %23 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flag.i, align 2
  %25 = and i16 %24, 514
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %list_del.exit.do.body.i_crit_edge, label %list_del.exit.do.body12.i_crit_edge

list_del.exit.do.body12.i_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

list_del.exit.do.body.i_crit_edge:                ; preds = %list_del.exit
  br label %do.body.i

do.body.i:                                        ; preds = %do.end11.i.do.body.i_crit_edge, %list_del.exit.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %27 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp7.i = icmp sgt i32 %27, 3
  br i1 %cmp7.i, label %do.end.i, label %do.body.i.do.end11.i_crit_edge

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %tblk.0.le) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %do.body.i.do.end11.i_crit_edge
  call void @yield() #9
  %28 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flag.i, align 2
  %30 = and i16 %29, 514
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %do.end11.i.do.body.i_crit_edge, label %do.end11.i.do.body12.i_crit_edge

do.end11.i.do.body12.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

do.end11.i.do.body.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body12.i:                                      ; preds = %do.end11.i.do.body12.i_crit_edge, %list_del.exit.do.body12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %32 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp13.i = icmp sgt i32 %32, 3
  br i1 %cmp13.i, label %do.end18.i, label %do.body12.i.do.end23.i_crit_edge

do.body12.i.do.end23.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %tblk.0.le) #12
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i, %do.body12.i.do.end23.i_crit_edge
  call fastcc void @txUpdateMap(ptr noundef %tblk.0.le) #9
  %33 = ptrtoint ptr %sb.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sb.le, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  %log25.i = getelementptr inbounds %struct.jfs_sb_info, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %log25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %log25.i, align 4
  %gclock.i = getelementptr inbounds %struct.jfs_log, ptr %38, i32 0, i32 23
  call void @_raw_spin_lock_irq(ptr noundef %gclock.i) #9
  %39 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flag.i, align 2
  %41 = or i16 %40, 8
  store i16 %41, ptr %flag.i, align 2
  %42 = and i16 %40, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i, label %do.end23.i.if.end33.i_crit_edge, label %if.then32.i

do.end23.i.if.end33.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then32.i:                                      ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %gcrtc.i = getelementptr inbounds %struct.jfs_log, ptr %38, i32 0, i32 21
  %43 = ptrtoint ptr %gcrtc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gcrtc.i, align 4
  %dec.i = add i32 %44, -1
  store i32 %dec.i, ptr %gcrtc.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %do.end23.i.if.end33.i_crit_edge
  %gcwait.i = getelementptr i8, ptr %.pn179, i32 24
  call void @__wake_up(ptr noundef %gcwait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %45 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flag.i, align 2
  %47 = and i16 %46, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool37.not.i = icmp eq i16 %47, 0
  call void @_raw_spin_unlock_irq(ptr noundef %gclock.i) #9
  br i1 %tobool37.not.i, label %if.end33.i.do.body47.i_crit_edge, label %if.then38.i

if.end33.i.do.body47.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @txUnlock(ptr noundef %tblk.0.le) #9
  %48 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flag.i, align 2
  %50 = and i16 %49, -257
  store i16 %50, ptr %flag.i, align 2
  %51 = load ptr, ptr @TxBlock, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %tblk.0.le to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 172
  %conv44.i = trunc i32 %sub.ptr.div.i to i16
  call void @txEnd(i16 noundef zeroext %conv44.i) #9
  br label %do.body47.i

do.body47.i:                                      ; preds = %if.then38.i, %if.end33.i.do.body47.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %52 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp48.i = icmp sgt i32 %52, 3
  br i1 %cmp48.i, label %do.end53.i, label %do.body47.i.for.end_crit_edge

do.body47.i.for.end_crit_edge:                    ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end53.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #11
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %tblk.0.le) #12
  br label %for.end

for.end:                                          ; preds = %do.end53.i, %do.body47.i.for.end_crit_edge
  %call23 = call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6)) #9
  %53 = ptrtoint ptr %commit_state.le to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %commit_state.le, align 4
  %and29 = and i32 %54, -2
  store i32 %and29, ptr %commit_state.le, align 4
  %55 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), align 4
  %cmp.i.not = icmp eq ptr %55, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7)
  br i1 %cmp.i.not, label %for.end.while.end_crit_edge, label %for.end.for.body.preheader_crit_edge

for.end.for.body.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %for.condthread-pre-split.while.end_crit_edge, %do.body.while.end_crit_edge
  %flags.0206 = phi i32 [ %call3, %do.body.while.end_crit_edge ], [ %flags.0208, %for.condthread-pre-split.while.end_crit_edge ], [ %call23, %for.end.while.end_crit_edge ]
  store i1 false, ptr @jfs_commit_thread_waking, align 4
  %56 = call i32 @llvm.read_register.i32(metadata !355) #9
  %and.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %60 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i161 = icmp eq i32 %60, 0
  br i1 %tobool.not.i161, label %while.end.if.else_crit_edge, label %freezing.exit, !prof !369

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

freezing.exit:                                    ; preds = %while.end
  %call4.i = call zeroext i1 @freezing_slow_path(ptr noundef %59) #9
  br i1 %call4.i, label %if.then39, label %freezing.exit.if.else_crit_edge

freezing.exit.if.else_crit_edge:                  ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then39:                                        ; preds = %freezing.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6), i32 noundef %flags.0206) #9
  %61 = call i32 @llvm.read_register.i32(metadata !355) #9
  %and.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i, align 4
  %and.i162 = and i32 %66, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i163 = icmp eq i32 %and.i162, 0
  br i1 %tobool.not.i163, label %if.then.i, label %if.then39.if.end.i164_crit_edge

if.then39.if.end.i164_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i164

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i164

if.end.i164:                                      ; preds = %if.then.i, %if.then39.if.end.i164_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.174, i32 noundef 57) #9
  %67 = call i32 @llvm.read_register.i32(metadata !355) #9
  %and.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %71 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i.i, label %if.end.i164.do.cond117_crit_edge, label %freezing.exit.i.i, !prof !369

if.end.i164.do.cond117_crit_edge:                 ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond117

freezing.exit.i.i:                                ; preds = %if.end.i164
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %70) #9
  br i1 %call4.i.i.i, label %if.end.i.i165, label %freezing.exit.i.i.do.cond117_crit_edge, !prof !373

freezing.exit.i.i.do.cond117_crit_edge:           ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond117

if.end.i.i165:                                    ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %do.cond117

if.else:                                          ; preds = %freezing.exit.if.else_crit_edge, %while.end.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wq) #9
  %72 = call ptr @memset(ptr %4, i32 255, i32 16)
  %73 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %wq, align 4
  %74 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task, align 8
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %0, align 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @default_wake_function, ptr %1, align 4
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %2, align 4
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %3, align 4
  call void @add_wait_queue(ptr noundef nonnull @jfs_commit_thread_wait, ptr noundef nonnull %wq) #9
  br label %__here

__here:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 212
  %82 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 ptrtoint (ptr blockaddress(@jfs_lazycommit, %__here) to i32), ptr %task_state_change, align 4
  %83 = load ptr, ptr %task, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 1, ptr %83, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !392
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6), i32 noundef %flags.0206) #9
  call void @schedule() #9
  call void @remove_wait_queue(ptr noundef nonnull @jfs_commit_thread_wait, ptr noundef nonnull %wq) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wq) #9
  br label %do.cond117

do.cond117:                                       ; preds = %__here, %if.end.i.i165, %freezing.exit.i.i.do.cond117_crit_edge, %if.end.i164.do.cond117_crit_edge
  %call118 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call118, label %do.end121, label %do.cond117.do.body_crit_edge

do.cond117.do.body_crit_edge:                     ; preds = %do.cond117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end121:                                        ; preds = %do.cond117
  %85 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), align 4
  %cmp.i166.not = icmp eq ptr %85, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %86 = load i32, ptr @jfsloglevel, align 4
  br i1 %cmp.i166.not, label %do.body138, label %do.body125

do.body125:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp126 = icmp sgt i32 %86, 0
  br i1 %cmp126, label %do.body125.if.end150.sink.split_crit_edge, label %do.body125.if.end150_crit_edge

do.body125.if.end150_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

do.body125.if.end150.sink.split_crit_edge:        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.sink.split

do.body138:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp139 = icmp sgt i32 %86, 3
  br i1 %cmp139, label %do.body138.if.end150.sink.split_crit_edge, label %do.body138.if.end150_crit_edge

do.body138.if.end150_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

do.body138.if.end150.sink.split_crit_edge:        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.sink.split

if.end150.sink.split:                             ; preds = %do.body138.if.end150.sink.split_crit_edge, %do.body125.if.end150.sink.split_crit_edge
  %.str.94.sink = phi ptr [ @.str.91, %do.body125.if.end150.sink.split_crit_edge ], [ @.str.94, %do.body138.if.end150.sink.split_crit_edge ]
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.94.sink) #12
  br label %if.end150

if.end150:                                        ; preds = %if.end150.sink.split, %do.body138.if.end150_crit_edge, %do.body125.if.end150_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txLazyUnlock(ptr noundef %tblk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6)) #9
  %cqueue = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 10
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cqueue, ptr noundef %0, ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7)) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %cqueue, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7, i32 1), align 4
  %1 = ptrtoint ptr %cqueue to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), ptr %cqueue, align 4
  %prev3.i.i = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %cqueue, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %sb = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 5
  %4 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %commit_state = getelementptr inbounds %struct.jfs_sb_info, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %commit_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %commit_state, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %.b = load i1, ptr @jfs_commit_thread_waking, align 4
  br i1 %.b, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @jfs_commit_thread_waking, align 4
  tail call void @__wake_up(ptr noundef nonnull @jfs_commit_thread_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %list_add_tail.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 6), i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txQuiesce(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  %ip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #9
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !393
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %log1 = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log1, align 4
  %flag = getelementptr inbounds %struct.jfs_log, ptr %4, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flag) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  br label %restart

restart:                                          ; preds = %restart.backedge, %entry
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), align 4
  %cmp.i.not16 = icmp eq ptr %5, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8)
  br i1 %cmp.i.not16, label %restart.while.end_crit_edge, label %restart.while.body_crit_edge

restart.while.body_crit_edge:                     ; preds = %restart
  br label %while.body

restart.while.end_crit_edge:                      ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %restart.while.body_crit_edge
  %6 = phi ptr [ %12, %while.body.while.body_crit_edge ], [ %5, %restart.while.body_crit_edge ]
  %vfs_inode = getelementptr i8, ptr %6, i32 696
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vfs_inode, ptr %ip, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call3 = call zeroext i16 @txBegin(ptr noundef %11, i32 noundef 8194)
  %commit_mutex = getelementptr i8, ptr %6, i32 104
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %call4 = call i32 @txCommit(i16 noundef zeroext %call3, i32 noundef 1, ptr noundef nonnull %ip, i32 noundef 0)
  call void @txEnd(i16 noundef zeroext %call3)
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2870, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), align 4
  %cmp.i.not = icmp eq ptr %12, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8)
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %restart.while.end_crit_edge
  %13 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  %cmp.i14.not = icmp eq ptr %13, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9)
  br i1 %cmp.i14.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  %cmp.i.not.i = icmp eq ptr %14, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9)
  br i1 %cmp.i.not.i, label %if.then.restart.backedge_crit_edge, label %if.then.i

if.then.restart.backedge_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

restart.backedge:                                 ; preds = %if.then.i, %if.then.restart.backedge_crit_edge
  br label %restart

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), ptr %prev3.i.i, align 4
  store ptr %14, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), ptr %15, align 4
  store ptr %15, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9, i32 1), align 4
  br label %restart.backedge

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  call void @jfs_flush_journal(ptr noundef %4, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_flush_journal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @txResume(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %log1 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  %flag = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flag) #9
  %syncwait = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %syncwait, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_sync(ptr nocapture readnone %arg) #0 align 64 {
entry:
  %ip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #9
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !393
  br label %do.body

do.body:                                          ; preds = %do.cond90.do.body_crit_edge, %entry
  call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  %1 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not123 = icmp eq i32 %1, 0
  br i1 %tobool.not123, label %do.body.while.end_crit_edge, label %do.body.land.rhs_crit_edge

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  br label %land.rhs

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %if.end14.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), align 4
  %cmp.i.not = icmp eq ptr %2, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8)
  br i1 %cmp.i.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %vfs_inode = getelementptr i8, ptr %2, i32 696
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vfs_inode, ptr %ip, align 4
  %call2 = call ptr @igrab(ptr noundef %vfs_inode) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %prev.i3.i, align 4
  br label %if.end14

if.else:                                          ; preds = %while.body
  %commit_mutex = getelementptr i8, ptr %2, i32 104
  %call4 = call i32 @mutex_trylock(ptr noundef %commit_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ip, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %call7 = call zeroext i16 @txBegin(ptr noundef %15, i32 noundef 8192)
  %call8 = call i32 @txCommit(i16 noundef zeroext %call7, i32 noundef 1, ptr noundef nonnull %ip, i32 noundef 0)
  call void @txEnd(i16 noundef zeroext %call7)
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 4
  call void @iput(ptr noundef %17) #9
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2948, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  br label %if.end14

if.else12:                                        ; preds = %if.else
  %call.i.i112 = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i112, label %if.end.i.i115, label %if.else12.__list_del_entry.exit.i_crit_edge

if.else12.__list_del_entry.exit.i_crit_edge:      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i115:                                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i113 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i113, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %prev1.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i114, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i115, %if.else12.__list_del_entry.exit.i_crit_edge
  %24 = load ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr noundef %24) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i1.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %2, ptr %prev1.i.i1.i, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr %prev3.i.i.i, align 4
  store volatile ptr %2, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %28 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ip, align 4
  call void @iput(ptr noundef %29) #9
  call void @_raw_spin_lock(ptr noundef nonnull @jfsTxnLock) #9
  br label %if.end14

if.end14:                                         ; preds = %list_move.exit, %if.then6, %list_del_init.exit
  %30 = load i32, ptr @jfs_tlocks_low, align 4
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end14.while.end_crit_edge, label %if.end14.land.rhs_crit_edge

if.end14.land.rhs_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.body.while.end_crit_edge
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  %cmp.i.not.i = icmp eq ptr %31, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9)
  br i1 %cmp.i.not.i, label %while.end.list_splice_init.exit_crit_edge, label %if.then.i

while.end.list_splice_init.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = load ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), ptr %prev3.i.i, align 4
  store ptr %31, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 8), align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %33, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev6.i.i, align 4
  store volatile ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), align 4
  store ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9), ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 9, i32 1), align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.end.list_splice_init.exit_crit_edge
  %37 = call i32 @llvm.read_register.i32(metadata !355) #9
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %call.i.i.i116 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %41 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %list_splice_init.exit.__here_crit_edge, label %freezing.exit, !prof !369

list_splice_init.exit.__here_crit_edge:           ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

freezing.exit:                                    ; preds = %list_splice_init.exit
  %call4.i = call zeroext i1 @freezing_slow_path(ptr noundef %40) #9
  br i1 %call4.i, label %if.then17, label %freezing.exit.__here_crit_edge

freezing.exit.__here_crit_edge:                   ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

if.then17:                                        ; preds = %freezing.exit
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  %42 = call i32 @llvm.read_register.i32(metadata !355) #9
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i117 = and i32 %47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i118 = icmp eq i32 %and.i117, 0
  br i1 %tobool.not.i118, label %if.then.i119, label %if.then17.if.end.i120_crit_edge

if.then17.if.end.i120_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i120

if.then.i119:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.then.i119, %if.then17.if.end.i120_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.174, i32 noundef 57) #9
  %48 = call i32 @llvm.read_register.i32(metadata !355) #9
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %52 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i, label %if.end.i120.do.cond90_crit_edge, label %freezing.exit.i.i, !prof !369

if.end.i120.do.cond90_crit_edge:                  ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond90

freezing.exit.i.i:                                ; preds = %if.end.i120
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %51) #9
  br i1 %call4.i.i.i, label %if.end.i.i121, label %freezing.exit.i.i.do.cond90_crit_edge, !prof !373

freezing.exit.i.i.do.cond90_crit_edge:            ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond90

if.end.i.i121:                                    ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %do.cond90

__here:                                           ; preds = %freezing.exit.__here_crit_edge, %list_splice_init.exit.__here_crit_edge
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 212
  %55 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 ptrtoint (ptr blockaddress(@jfs_sync, %__here) to i32), ptr %task_state_change, align 4
  %56 = load ptr, ptr %task, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 1, ptr %56, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !394
  call void @_raw_spin_unlock(ptr noundef nonnull @jfsTxnLock) #9
  call void @schedule() #9
  br label %do.cond90

do.cond90:                                        ; preds = %__here, %if.end.i.i121, %freezing.exit.i.i.do.cond90_crit_edge, %if.end.i120.do.cond90_crit_edge
  %call91 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call91, label %do.body95, label %do.cond90.do.body_crit_edge

do.cond90.do.body_crit_edge:                      ; preds = %do.cond90
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body95:                                        ; preds = %do.cond90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %58 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp = icmp sgt i32 %58, 3
  br i1 %cmp, label %do.end99, label %do.body95.do.end104_crit_edge

do.body95.do.end104_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104

do.end99:                                         ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #12
  br label %do.end104

do.end104:                                        ; preds = %do.end99, %do.body95.do.end104_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_txanchor_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 2, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %0, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 2, i32 1)
  %cond = select i1 %cmp.i.i.not, ptr @.str.99, ptr @.str.98
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3, i32 1), align 4
  %cmp.i.i10.not = icmp eq ptr %1, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 3, i32 1)
  %cond3 = select i1 %cmp.i.i10.not, ptr @.str.99, ptr @.str.98
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4, i32 1), align 4
  %cmp.i.i12.not = icmp eq ptr %2, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 4, i32 1)
  %cond6 = select i1 %cmp.i.i12.not, ptr @.str.99, ptr @.str.98
  %3 = load i32, ptr @TxAnchor, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 1), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 5), align 4
  %6 = load i32, ptr @jfs_tlocks_low, align 4
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7), align 4
  %cmp.i.not = icmp eq ptr %7, getelementptr inbounds (%struct.anon.74, ptr @TxAnchor, i32 0, i32 7)
  %cond9 = select i1 %cmp.i.not, ptr @.str.101, ptr @.str.102
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, i32 noundef %3, ptr noundef nonnull %cond, i32 noundef %4, ptr noundef nonnull %cond3, ptr noundef nonnull %cond6, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %cond9) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_txstats_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @TxStat.0, align 4
  %1 = load i32, ptr @TxStat.1, align 4
  %2 = load i32, ptr @TxStat.2, align 4
  %3 = load i32, ptr @TxStat.3, align 4
  %4 = load i32, ptr @TxStat.4, align 4
  %5 = load i32, ptr @TxStat.5, align 4
  %6 = load i32, ptr @TxStat.6, align 4
  %7 = load i32, ptr @TxStat.7, align 4
  %8 = load i32, ptr @TxStat.8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.103, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hold_metapage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_metapage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @grab_metapage(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @metapage_homeok(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hold_metapage(ptr noundef %mp) #9
  %nohomeok.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 14
  %0 = ptrtoint ptr %nohomeok.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nohomeok.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %nohomeok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry._metapage_homeok.exit_crit_edge

entry._metapage_homeok.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_metapage_homeok.exit

if.then.i:                                        ; preds = %entry
  %page.i = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 10
  %2 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page.i, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !369

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %6, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %7, %if.end.i.i.i ]
  %8 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !373

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.126) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !385
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !387
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !388
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@metapage_homeok, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !376

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i._metapage_homeok.exit_crit_edge

folio_put_testzero.exit.i.i.i._metapage_homeok.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_metapage_homeok.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %8) #9
  br label %_metapage_homeok.exit

_metapage_homeok.exit:                            ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i._metapage_homeok.exit_crit_edge, %entry._metapage_homeok.exit_crit_edge
  tail call void @put_metapage(ptr noundef %mp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_metapage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txAllocPMap(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %maplock, ptr noundef %tblk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipbmap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipbmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipbmap1, align 4
  %flag = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 3
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flag, align 4
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 5
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp124.not = icmp eq i8 %9, 0
  br i1 %cmp124.not, label %if.then.if.end81_crit_edge, label %for.body.preheader

if.then.if.end81_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

for.body.preheader:                               ; preds = %if.then
  %union64 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 6
  %10 = ptrtoint ptr %union64 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %union64, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %xad.0126 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %n.0125 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %12 = ptrtoint ptr %xad.0126 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xad.0126, align 4
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %loc = getelementptr inbounds %struct.xad, ptr %xad.0126, i32 0, i32 4
  %15 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %loc, align 4
  %17 = shl i32 %16, 24
  %conv.i = zext i32 %17 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.xad, ptr %xad.0126, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr2.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %conv1.i = zext i32 %20 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %21 = and i32 %16, -256
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = zext i32 %22 to i64
  %call13 = tail call i32 @dbUpdatePMap(ptr noundef %5, i32 noundef 0, i64 noundef %add.i, i64 noundef %23, ptr noundef %tblk) #9
  %24 = ptrtoint ptr %xad.0126 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %xad.0126, align 4
  %26 = and i8 %25, -4
  store i8 %26, ptr %xad.0126, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %27 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp18 = icmp sgt i32 %27, 3
  br i1 %cmp18, label %do.end, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %20, i32 noundef %22) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.0125, 1
  %incdec.ptr = getelementptr %struct.xad, ptr %xad.0126, i32 1
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %count, align 1
  %conv2 = zext i8 %29 to i32
  %cmp = icmp ult i32 %inc, %conv2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end81_crit_edge

for.inc.if.end81_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %entry
  %and29 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else51, label %if.then31

if.then31:                                        ; preds = %if.else
  %pxd32 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6
  %30 = ptrtoint ptr %pxd32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pxd32, align 4
  %32 = shl i32 %31, 24
  %conv.i112 = zext i32 %32 to i64
  %shl.i113 = shl nuw nsw i64 %conv.i112, 8
  %addr2.i114 = getelementptr inbounds %struct.maplock, ptr %maplock, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %addr2.i114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr2.i114, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %conv1.i115 = zext i32 %35 to i64
  %add.i116 = or i64 %shl.i113, %conv1.i115
  %36 = and i32 %31, -256
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = zext i32 %37 to i64
  %call37 = tail call i32 @dbUpdatePMap(ptr noundef %5, i32 noundef 0, i64 noundef %add.i116, i64 noundef %38, ptr noundef %tblk) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %39 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp39 = icmp sgt i32 %39, 3
  br i1 %cmp39, label %do.end44, label %if.then31.if.end81_crit_edge

if.then31.if.end81_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

do.end44:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %35, i32 noundef %37) #12
  br label %if.end81

if.else51:                                        ; preds = %if.else
  %count54 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 5
  %40 = ptrtoint ptr %count54 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %count54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp56129.not = icmp eq i8 %41, 0
  br i1 %cmp56129.not, label %if.else51.if.end81_crit_edge, label %for.body58.preheader

if.else51.if.end81_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

for.body58.preheader:                             ; preds = %if.else51
  %union6452 = getelementptr inbounds %struct.xdlistlock, ptr %maplock, i32 0, i32 6
  %42 = ptrtoint ptr %union6452 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %union6452, align 8
  br label %for.body58

for.body58:                                       ; preds = %for.inc76.for.body58_crit_edge, %for.body58.preheader
  %n.1131 = phi i32 [ %inc77, %for.inc76.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %pxd.0130 = phi ptr [ %incdec.ptr78, %for.inc76.for.body58_crit_edge ], [ %43, %for.body58.preheader ]
  %44 = ptrtoint ptr %pxd.0130 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pxd.0130, align 4
  %46 = shl i32 %45, 24
  %conv.i117 = zext i32 %46 to i64
  %shl.i118 = shl nuw nsw i64 %conv.i117, 8
  %addr2.i119 = getelementptr inbounds %struct.pxd_t, ptr %pxd.0130, i32 0, i32 1
  %47 = ptrtoint ptr %addr2.i119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr2.i119, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %conv1.i120 = zext i32 %49 to i64
  %add.i121 = or i64 %shl.i118, %conv1.i120
  %50 = and i32 %45, -256
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  %52 = zext i32 %51 to i64
  %call62 = tail call i32 @dbUpdatePMap(ptr noundef %5, i32 noundef 0, i64 noundef %add.i121, i64 noundef %52, ptr noundef %tblk) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %53 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp64 = icmp sgt i32 %53, 3
  br i1 %cmp64, label %do.end69, label %for.body58.for.inc76_crit_edge

for.body58.for.inc76_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76

do.end69:                                         ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #11
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %49, i32 noundef %51) #12
  br label %for.inc76

for.inc76:                                        ; preds = %do.end69, %for.body58.for.inc76_crit_edge
  %inc77 = add nuw nsw i32 %n.1131, 1
  %incdec.ptr78 = getelementptr %struct.pxd_t, ptr %pxd.0130, i32 1
  %54 = ptrtoint ptr %count54 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %count54, align 1
  %conv55 = zext i8 %55 to i32
  %cmp56 = icmp ult i32 %inc77, %conv55
  br i1 %cmp56, label %for.inc76.for.body58_crit_edge, label %for.inc76.if.end81_crit_edge

for.inc76.if.end81_crit_edge:                     ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

for.inc76.for.body58_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58

if.end81:                                         ; preds = %for.inc76.if.end81_crit_edge, %if.else51.if.end81_crit_edge, %do.end44, %if.then31.if.end81_crit_edge, %for.inc.if.end81_crit_edge, %if.then.if.end81_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diUpdatePMap(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !157, !159, !160, !161, !162, !164, !165, !166, !168, !170, !171, !172, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !208, !209, !211, !213, !214, !216, !218, !219, !220, !221, !223, !225, !227, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !250, !252, !253, !254, !256, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !317, !319, !320, !322, !323, !325, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !345, !346, !348, !349, !350, !351, !353, !354}
!llvm.named.register.sp = !{!355}
!llvm.module.flags = !{!356, !357, !358, !359, !360, !361, !362, !363}
!llvm.ident = !{!364}

!0 = !{ptr @__param_nTxBlock, !1, !"__param_nTxBlock", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_txnmgr.c", i32 85, i32 1}
!2 = !{ptr @__UNIQUE_ID_nTxBlocktype246, !1, !"__UNIQUE_ID_nTxBlocktype246", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nTxBlock247, !4, !"__UNIQUE_ID_nTxBlock247", i1 false, i1 false}
!4 = !{!"../fs/jfs/jfs_txnmgr.c", i32 86, i32 1}
!5 = !{ptr @__param_nTxLock, !6, !"__param_nTxLock", i1 false, i1 false}
!6 = !{!"../fs/jfs/jfs_txnmgr.c", i32 90, i32 1}
!7 = !{ptr @__UNIQUE_ID_nTxLocktype248, !6, !"__UNIQUE_ID_nTxLocktype248", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nTxLock249, !9, !"__UNIQUE_ID_nTxLock249", i1 false, i1 false}
!9 = !{!"../fs/jfs/jfs_txnmgr.c", i32 91, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jfs/jfs_txnmgr.c", i32 258, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @txInit._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @txInit._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @txInit.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/jfs/jfs_txnmgr.c", i32 277, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @txInit.__key.4, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/jfs/jfs_txnmgr.c", i32 278, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @txInit.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/jfs/jfs_txnmgr.c", i32 281, i32 2}
!24 = !{ptr @txInit.__key.7, !25, !"__key", i1 false, i1 false}
!25 = !{!"../fs/jfs/jfs_txnmgr.c", i32 282, i32 2}
!26 = !{ptr @txInit.__key.8, !27, !"__key", i1 false, i1 false}
!27 = !{!"../fs/jfs/jfs_txnmgr.c", i32 285, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @txInit.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../fs/jfs/jfs_txnmgr.c", i32 306, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @txInit.__key.12, !33, !"__key", i1 false, i1 false}
!33 = !{!"../fs/jfs/jfs_txnmgr.c", i32 307, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @txInit.__key.14, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/jfs/jfs_txnmgr.c", i32 314, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jfs/jfs_txnmgr.c", i32 354, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @txBegin._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @txBegin._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/jfs/jfs_txnmgr.c", i32 390, i32 3}
!45 = !{ptr @txBegin._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @txBegin._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @txBegin._entry.21, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../fs/jfs/jfs_txnmgr.c", i32 400, i32 3}
!49 = !{ptr @txBegin._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/jfs/jfs_txnmgr.c", i32 431, i32 2}
!52 = !{ptr @txBegin._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @txBegin._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/jfs/jfs_txnmgr.c", i32 492, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @txEnd._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @txEnd._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/jfs/jfs_txnmgr.c", i32 512, i32 3}
!61 = !{ptr @txEnd._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @txEnd._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/jfs/jfs_txnmgr.c", i32 521, i32 2}
!65 = !{ptr @txEnd._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @txEnd._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/jfs/jfs_txnmgr.c", i32 523, i32 2}
!69 = !{ptr @txEnd._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @txEnd._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/jfs/jfs_txnmgr.c", i32 546, i32 4}
!74 = !{ptr @txEnd._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @txEnd._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/jfs/jfs_txnmgr.c", i32 607, i32 2}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @txLock._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @txLock._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @txLock._entry.43, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../fs/jfs/jfs_txnmgr.c", i32 656, i32 5}
!83 = !{ptr @txLock._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/jfs/jfs_txnmgr.c", i32 699, i32 3}
!87 = !{ptr @txLock._entry.46, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @txLock._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/jfs/jfs_txnmgr.c", i32 801, i32 3}
!91 = !{ptr @txLock._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @txLock._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/jfs/jfs_txnmgr.c", i32 819, i32 3}
!95 = !{ptr @txLock._entry.52, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @txLock._entry_ptr.54, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/jfs/jfs_txnmgr.c", i32 820, i32 18}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/jfs/jfs_txnmgr.c", i32 820, i32 28}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/jfs/jfs_txnmgr.c", i32 822, i32 28}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/jfs/jfs_txnmgr.c", i32 824, i32 28}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/jfs/jfs_txnmgr.c", i32 827, i32 28}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/jfs/jfs_txnmgr.c", i32 837, i32 2}
!109 = !{ptr @txLock._entry.60, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @txLock._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/jfs/jfs_txnmgr.c", i32 845, i32 2}
!113 = !{ptr @txLock._entry.63, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @txLock._entry_ptr.65, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1138, i32 2}
!117 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @txCommit._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @txCommit._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @txCommit._entry.68, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1288, i32 2}
!122 = !{ptr @txCommit._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1352, i32 2}
!126 = !{ptr @txCommit._entry.71, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @txCommit._entry_ptr.73, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2491, i32 2}
!130 = !{ptr @.str.75, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @txFreeMap._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @txFreeMap._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2507, i32 6}
!135 = !{ptr @txFreeMap._entry.76, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @txFreeMap._entry_ptr.78, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @txFreeMap._entry.79, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2517, i32 4}
!139 = !{ptr @txFreeMap._entry_ptr.80, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @txFreeMap._entry.81, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2528, i32 5}
!142 = !{ptr @txFreeMap._entry_ptr.82, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.84, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2546, i32 5}
!145 = !{ptr @txFreeMap._entry.83, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @txFreeMap._entry_ptr.85, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @txFreeMap._entry.86, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2554, i32 4}
!149 = !{ptr @txFreeMap._entry_ptr.87, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @txFreeMap._entry.88, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2564, i32 5}
!152 = !{ptr @txFreeMap._entry_ptr.89, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.90, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2666, i32 23}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2787, i32 4}
!157 = !{ptr @.str.91, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2795, i32 3}
!159 = !{ptr @.str.92, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @jfs_lazycommit._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @jfs_lazycommit._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.94, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2797, i32 3}
!164 = !{ptr @jfs_lazycommit._entry.93, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @jfs_lazycommit._entry_ptr.95, !163, !"_entry_ptr", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2973, i32 4}
!168 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2979, i32 2}
!170 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @jfs_sync._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @jfs_sync._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.98, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2991, i32 45}
!175 = !{ptr @.str.99, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2991, i32 56}
!177 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2998, i32 10}
!179 = !{ptr @.str.101, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/jfs/jfs_txnmgr.c", i32 3015, i32 47}
!181 = !{ptr @.str.102, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/jfs/jfs_txnmgr.c", i32 3015, i32 52}
!183 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/jfs/jfs_txnmgr.c", i32 3024, i32 10}
!185 = !{ptr @TxAnchor, !186, !"TxAnchor", i1 false, i1 false}
!186 = !{!"../fs/jfs/jfs_txnmgr.c", i32 66, i32 3}
!187 = !{ptr @jfs_tlocks_low, !188, !"jfs_tlocks_low", i1 false, i1 false}
!188 = !{!"../fs/jfs/jfs_txnmgr.c", i32 68, i32 5}
!189 = distinct !{null, !190, !"TxStat", i1 false, i1 false}
!190 = !{!"../fs/jfs/jfs_txnmgr.c", i32 81, i32 3}
!191 = !{ptr @TxBlock, !192, !"TxBlock", i1 false, i1 false}
!192 = !{!"../fs/jfs/jfs_txnmgr.c", i32 94, i32 16}
!193 = !{ptr @TxLockLWM, !194, !"TxLockLWM", i1 false, i1 false}
!194 = !{!"../fs/jfs/jfs_txnmgr.c", i32 95, i32 12}
!195 = !{ptr @TxLockHWM, !196, !"TxLockHWM", i1 false, i1 false}
!196 = !{!"../fs/jfs/jfs_txnmgr.c", i32 96, i32 12}
!197 = !{ptr @TxLockVHWM, !198, !"TxLockVHWM", i1 false, i1 false}
!198 = !{!"../fs/jfs/jfs_txnmgr.c", i32 97, i32 12}
!199 = !{ptr @TxLock, !200, !"TxLock", i1 false, i1 false}
!200 = !{!"../fs/jfs/jfs_txnmgr.c", i32 98, i32 15}
!201 = distinct !{null, !202, !"jfs_commit_thread_waking", i1 false, i1 false}
!202 = !{!"../fs/jfs/jfs_txnmgr.c", i32 113, i32 12}
!203 = distinct !{null, !204, !"stattx", i1 false, i1 false}
!204 = !{!"../fs/jfs/jfs_txnmgr.c", i32 146, i32 3}
!205 = !{ptr @__param_str_nTxBlock, !1, !"__param_str_nTxBlock", i1 false, i1 false}
!206 = !{ptr @nTxBlock, !207, !"nTxBlock", i1 false, i1 false}
!207 = !{!"../fs/jfs/jfs_txnmgr.c", i32 84, i32 12}
!208 = !{ptr @__param_str_nTxLock, !6, !"__param_str_nTxLock", i1 false, i1 false}
!209 = !{ptr @nTxLock, !210, !"nTxLock", i1 false, i1 false}
!210 = !{!"../fs/jfs/jfs_txnmgr.c", i32 89, i32 12}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/jfs/jfs_txnmgr.c", i32 103, i32 8}
!213 = !{ptr @jfsTxnLock, !212, !"jfsTxnLock", i1 false, i1 false}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../fs/jfs/jfs_txnmgr.c", i32 123, i32 2}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/jfs/jfs_txnmgr.c", i32 194, i32 3}
!218 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @txLockAlloc._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @txLockAlloc._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!225 = distinct !{null, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/jfs/jfs_txnmgr.c", i32 875, i32 4}
!231 = !{ptr @txRelease._entry, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @txRelease._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/jfs/jfs_txnmgr.c", i32 905, i32 2}
!236 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @txUnlock._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @txUnlock._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/jfs/jfs_txnmgr.c", i32 915, i32 3}
!241 = !{ptr @txUnlock._entry.115, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @txUnlock._entry_ptr.117, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @txUnlock._entry.118, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../fs/jfs/jfs_txnmgr.c", i32 920, i32 4}
!245 = !{ptr @txUnlock._entry_ptr.119, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @txUnlock._entry.120, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../fs/jfs/jfs_txnmgr.c", i32 926, i32 4}
!248 = !{ptr @txUnlock._entry_ptr.121, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @txUnlock._entry.123, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../fs/jfs/jfs_txnmgr.c", i32 940, i32 4}
!252 = !{ptr @txUnlock._entry_ptr.124, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../include/linux/mm.h", i32 717, i32 2}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1411, i32 4}
!258 = !{ptr @txLog._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @txLog._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1751, i32 4}
!262 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @xtLog._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @xtLog._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1785, i32 3}
!267 = !{ptr @xtLog._entry.130, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @xtLog._entry_ptr.132, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1888, i32 3}
!271 = !{ptr @xtLog._entry.133, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @xtLog._entry_ptr.135, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2011, i32 4}
!275 = !{ptr @xtLog._entry.136, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @xtLog._entry_ptr.138, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.140, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2032, i32 4}
!279 = !{ptr @xtLog._entry.139, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @xtLog._entry_ptr.141, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.143, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2051, i32 4}
!283 = !{ptr @xtLog._entry.142, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @xtLog._entry_ptr.144, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.145, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/jfs/jfs_txnmgr.c", i32 1492, i32 3}
!287 = !{ptr @.str.146, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @diLog._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @diLog._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.147, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2138, i32 4}
!292 = !{ptr @.str.148, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @mapLog._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @mapLog._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2238, i32 4}
!297 = !{ptr @txForce._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @txForce._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2318, i32 4}
!301 = !{ptr @txUpdateMap._entry, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @txUpdateMap._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @txUpdateMap._entry.152, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2366, i32 5}
!306 = !{ptr @txUpdateMap._entry_ptr.153, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.154, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @txUpdateMap._entry.155, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2369, i32 4}
!310 = !{ptr @txUpdateMap._entry_ptr.156, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.157, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2446, i32 5}
!314 = !{ptr @.str.159, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @txAllocPMap._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @txAllocPMap._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @txAllocPMap._entry.160, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2455, i32 3}
!319 = !{ptr @txAllocPMap._entry_ptr.161, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @txAllocPMap._entry.162, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2465, i32 4}
!322 = !{ptr @txAllocPMap._entry_ptr.163, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.164, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/jfs/jfs_txnmgr.c", i32 209, i32 3}
!325 = !{ptr @.str.165, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @txLockFree._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @txLockFree._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.166, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2687, i32 3}
!330 = !{ptr @.str.167, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @txLazyCommit._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @txLazyCommit._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.169, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2691, i32 2}
!335 = !{ptr @txLazyCommit._entry.168, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @txLazyCommit._entry_ptr.170, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.172, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2717, i32 2}
!339 = !{ptr @txLazyCommit._entry.171, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @txLazyCommit._entry_ptr.173, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.174, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!343 = !{ptr @.str.175, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/jfs/jfs_txnmgr.c", i32 112, i32 8}
!345 = !{ptr @jfs_commit_thread_wait, !344, !"jfs_commit_thread_wait", i1 false, i1 false}
!346 = !{ptr @.str.176, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2824, i32 2}
!348 = !{ptr @LogSyncRelease._entry, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @LogSyncRelease._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.177, !347, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @LogSyncRelease._entry.178, !352, !"_entry", i1 false, i1 false}
!352 = !{!"../fs/jfs/jfs_txnmgr.c", i32 2825, i32 2}
!353 = !{ptr @LogSyncRelease._entry_ptr.179, !352, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.180, !352, !"<string literal>", i1 false, i1 false}
!355 = !{!"sp"}
!356 = !{i32 1, !"wchar_size", i32 2}
!357 = !{i32 1, !"min_enum_size", i32 4}
!358 = !{i32 8, !"branch-target-enforcement", i32 0}
!359 = !{i32 8, !"sign-return-address", i32 0}
!360 = !{i32 8, !"sign-return-address-all", i32 0}
!361 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!362 = !{i32 7, !"uwtable", i32 1}
!363 = !{i32 7, !"frame-pointer", i32 2}
!364 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!365 = !{i64 2154114854}
!366 = !{i64 2154139040, i64 2154139524, i64 2154139077, i64 2154139133, i64 2154139167, i64 2154139191, i64 2154139232, i64 2154139253, i64 2154139281, i64 2154139315}
!367 = !{i64 2154146275, i64 2154146759, i64 2154146312, i64 2154146368, i64 2154146402, i64 2154146426, i64 2154146467, i64 2154146488, i64 2154146516, i64 2154146550}
!368 = !{i64 2154153385, i64 2154153869, i64 2154153422, i64 2154153478, i64 2154153512, i64 2154153536, i64 2154153577, i64 2154153598, i64 2154153626, i64 2154153660}
!369 = !{!"branch_weights", i32 2000, i32 1}
!370 = !{i64 2150634588, i64 2150635079, i64 2150634625, i64 2150634681, i64 2150634715, i64 2150634739, i64 2150634780, i64 2150634801, i64 2150634829, i64 2150634863}
!371 = !{i64 2148734701, i64 2148734733, i64 2148734762, i64 2148734796, i64 2148734827, i64 2148734850}
!372 = !{i64 2148823806}
!373 = !{!"branch_weights", i32 1, i32 2000}
!374 = !{i64 2153595239, i64 2153595723, i64 2153595276, i64 2153595332, i64 2153595366, i64 2153595390, i64 2153595431, i64 2153595452, i64 2153595480, i64 2153595514}
!375 = !{i64 2148725843, i64 2148725869, i64 2148725898, i64 2148725932, i64 2148725963, i64 2148725986}
!376 = !{i64 2148550441, i64 2148550446, i64 2148550459, i64 2148550503, i64 2148550537, i64 2148550558}
!377 = !{i64 2154180740, i64 2154181225, i64 2154180777, i64 2154180833, i64 2154180867, i64 2154180891, i64 2154180932, i64 2154180953, i64 2154180981, i64 2154181015}
!378 = !{i64 2154214549, i64 2154215034, i64 2154214586, i64 2154214642, i64 2154214676, i64 2154214700, i64 2154214741, i64 2154214762, i64 2154214790, i64 2154214824}
!379 = !{i64 2154160264, i64 2154160748, i64 2154160301, i64 2154160357, i64 2154160391, i64 2154160415, i64 2154160456, i64 2154160477, i64 2154160505, i64 2154160539}
!380 = !{i64 2154217853, i64 2154218338, i64 2154217890, i64 2154217946, i64 2154217980, i64 2154218004, i64 2154218045, i64 2154218066, i64 2154218094, i64 2154218128}
!381 = !{i64 2154221077, i64 2154221562, i64 2154221114, i64 2154221170, i64 2154221204, i64 2154221228, i64 2154221269, i64 2154221290, i64 2154221318, i64 2154221352}
!382 = !{i64 2154224253, i64 2154224738, i64 2154224290, i64 2154224346, i64 2154224380, i64 2154224404, i64 2154224445, i64 2154224466, i64 2154224494, i64 2154224528}
!383 = !{i64 2154166881, i64 2154167365, i64 2154166918, i64 2154166974, i64 2154167008, i64 2154167032, i64 2154167073, i64 2154167094, i64 2154167122, i64 2154167156}
!384 = !{i64 2154170048, i64 2154170532, i64 2154170085, i64 2154170141, i64 2154170175, i64 2154170199, i64 2154170240, i64 2154170261, i64 2154170289, i64 2154170323}
!385 = !{i64 2153575327, i64 2153575810, i64 2153575364, i64 2153575420, i64 2153575454, i64 2153575478, i64 2153575519, i64 2153575540, i64 2153575568, i64 2153575602}
!386 = !{i64 2148814319}
!387 = !{i64 2148729028, i64 2148729060, i64 2148729089, i64 2148729123, i64 2148729154, i64 2148729177}
!388 = !{i64 2148814548}
!389 = !{i64 2154173980, i64 2154174464, i64 2154174017, i64 2154174073, i64 2154174107, i64 2154174131, i64 2154174172, i64 2154174193, i64 2154174221, i64 2154174255}
!390 = !{i64 2154263391, i64 2154263876, i64 2154263428, i64 2154263484, i64 2154263518, i64 2154263542, i64 2154263583, i64 2154263604, i64 2154263632, i64 2154263666}
!391 = !{i64 2154266511, i64 2154266996, i64 2154266548, i64 2154266604, i64 2154266638, i64 2154266662, i64 2154266703, i64 2154266724, i64 2154266752, i64 2154266786}
!392 = !{i64 2154257476}
!393 = !{!"auto-init"}
!394 = !{i64 2154276539}
