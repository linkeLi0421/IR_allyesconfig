; ModuleID = '/llk/IR_all_yes/fs/autofs/waitq.c_pt.bc'
source_filename = "../fs/autofs/waitq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.41, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.41 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.autofs_wait_queue = type { %struct.wait_queue_head, ptr, i32, %struct.qstr, i32, i32, i64, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.kgid_t = type { i32 }
%struct.path = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.anon.4 = type { i32, i32 }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.56 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.57 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.60 = type { ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.24 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.24 = type { %struct.callback_head }
%union.anon.67 = type { %union.autofs_v5_packet_union }
%union.autofs_v5_packet_union = type { %struct.autofs_v5_packet }
%struct.autofs_v5_packet = type { %struct.autofs_packet_hdr, i32, i32, i64, i32, i32, i32, i32, i32, [256 x i8] }
%struct.autofs_packet_hdr = type { i32, i32 }
%struct.autofs_packet_missing = type { %struct.autofs_packet_hdr, i32, i32, [256 x i8] }
%struct.autofs_packet_expire_multi = type { %struct.autofs_packet_hdr, i32, i32, [256 x i8] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@autofs_catatonic_mode.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"autofs4\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"autofs_catatonic_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/autofs/waitq.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"entering catatonic mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"autofs4:pid:%d:%s: entering catatonic mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%p\00", [29 x i8] zeroinitializer }, align 32
@autofs_next_wait_queue = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@autofs_wait.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wq->queue\00", [21 x i8] zeroinitializer }, align 32
@autofs_wait.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"autofs_wait\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"new wait id = 0x%08lx, name = %.*s, nfy=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"autofs4:pid:%d:%s: new wait id = 0x%08lx, name = %.*s, nfy=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@autofs_wait.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"existing wait id = 0x%08lx, name = %.*s, nfy=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"autofs4:pid:%d:%s: existing wait id = 0x%08lx, name = %.*s, nfy=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@autofs_notify_daemon.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"autofs_notify_daemon\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wait id = 0x%08lx, name = %.*s, type=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"autofs4:pid:%d:%s: wait id = 0x%08lx, name = %.*s, type=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@autofs_notify_daemon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014autofs4:pid:%d:%s: bad type %d!\0A\00", [61 x i8] zeroinitializer }, align 32
@autofs_notify_daemon._entry_ptr = internal global ptr @autofs_notify_daemon._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966784, i64 4294967284]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 25, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 350, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"autofs_next_wait_queue\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 13, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 390, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 418, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 428, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 91, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [21 x i8] c"../fs/autofs/waitq.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 154, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @autofs_notify_daemon._entry, ptr @autofs_notify_daemon._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @autofs_next_wait_queue, ptr @autofs_wait.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_next_wait_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_wait.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_notify_daemon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @autofs_catatonic_mode(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %wq_mutex, i32 noundef 0) #11
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_catatonic_mode.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_catatonic_mode, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !46

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_catatonic_mode.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.4, i32 noundef %7, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 1
  store i32 %or, ptr %flags, align 4
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 15
  %10 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queues, align 4
  store ptr null, ptr %queues, align 4
  %tobool10.not34 = icmp eq ptr %11, null
  br i1 %tobool10.not34, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %wq.035 = phi ptr [ %13, %while.body.while.body_crit_edge ], [ %11, %do.end.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.035, i32 0, i32 1
  %12 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next, align 4
  %status = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.035, i32 0, i32 11
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2, ptr %status, align 8
  %name11 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.035, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name11, align 8
  %offset = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.035, i32 0, i32 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 8
  %idx.neg = sub i32 0, %18
  %add.ptr = getelementptr i8, ptr %16, i32 %idx.neg
  tail call void @kfree(ptr noundef %add.ptr) #11
  %19 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %name11, align 8
  %wait_ctr = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.035, i32 0, i32 12
  %20 = ptrtoint ptr %wait_ctr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wait_ctr, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %wait_ctr, align 4
  tail call void @__wake_up(ptr noundef nonnull %wq.035, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %pipe = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 2
  %22 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe, align 4
  tail call void @fput(ptr noundef %23) #11
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pipe, align 4
  %pipefd = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 1
  %25 = ptrtoint ptr %pipefd to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %pipefd, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %wq_mutex) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_wait(ptr noundef %sbi, ptr nocapture noundef readonly %path, i32 noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  %this.i = alloca %struct.path, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup219_crit_edge

entry.cleanup219_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 3
  %8 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oz_pgrp, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.ns_of_pid.exit_crit_edge, label %if.then.i

if.end.ns_of_pid.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_of_pid.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %level.i = getelementptr inbounds %struct.pid, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i, align 4
  %ns1.i = getelementptr %struct.pid, ptr %9, i32 0, i32 7, i32 %11, i32 1
  %12 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns1.i, align 4
  br label %ns_of_pid.exit

ns_of_pid.exit:                                   ; preds = %if.then.i, %if.end.ns_of_pid.exit_crit_edge
  %ns.0.i = phi ptr [ %13, %if.then.i ], [ null, %if.end.ns_of_pid.exit_crit_edge ]
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 0, ptr noundef %ns.0.i) #11
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oz_pgrp, align 4
  %tobool.not.i296 = icmp eq ptr %17, null
  br i1 %tobool.not.i296, label %ns_of_pid.exit.ns_of_pid.exit301_crit_edge, label %if.then.i299

ns_of_pid.exit.ns_of_pid.exit301_crit_edge:       ; preds = %ns_of_pid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_of_pid.exit301

if.then.i299:                                     ; preds = %ns_of_pid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %level.i297 = getelementptr inbounds %struct.pid, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %level.i297 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level.i297, align 4
  %ns1.i298 = getelementptr %struct.pid, ptr %17, i32 0, i32 7, i32 %19, i32 1
  %20 = ptrtoint ptr %ns1.i298 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ns1.i298, align 4
  br label %ns_of_pid.exit301

ns_of_pid.exit301:                                ; preds = %if.then.i299, %ns_of_pid.exit.ns_of_pid.exit301_crit_edge
  %ns.0.i300 = phi ptr [ %21, %if.then.i299 ], [ null, %ns_of_pid.exit.ns_of_pid.exit301_crit_edge ]
  %call.i302 = tail call i32 @__task_pid_nr_ns(ptr noundef %15, i32 noundef 1, ptr noundef %ns.0.i300) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %cmp9 = icmp eq i32 %call.i302, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %ns_of_pid.exit301.cleanup219_crit_edge, label %if.end11

ns_of_pid.exit301.cleanup219_crit_edge:           ; preds = %ns_of_pid.exit301
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.end11:                                         ; preds = %ns_of_pid.exit301
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %23, null
  br i1 %cmp.i, label %if.then13, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then13:                                        ; preds = %if.end11
  %type14 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 10
  %24 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type14, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.else [
    i32 4, label %if.then13.cleanup219_crit_edge
    i32 2, label %if.then13.cleanup219_crit_edge416
  ]

if.then13.cleanup219_crit_edge416:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.then13.cleanup219_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.else:                                          ; preds = %if.then13
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_parent, align 8
  %d_parent19 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %d_parent19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_parent19, align 8
  %cmp20 = icmp eq ptr %28, %30
  br i1 %cmp20, label %if.else.if.end24_crit_edge, label %if.else.cleanup219_crit_edge

if.else.cleanup219_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 256) #14
  %tobool26.not = icmp eq ptr %call7.i, null
  br i1 %tobool26.not, label %if.end24.cleanup219_crit_edge, label %if.end28

if.end24.cleanup219_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup219

if.end28:                                         ; preds = %if.end24
  %d_parent29 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %d_parent29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_parent29, align 8
  %cmp30 = icmp eq ptr %1, %33
  br i1 %cmp30, label %land.lhs.true, label %if.end28.if.else37_crit_edge

if.end28.if.else37_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

land.lhs.true:                                    ; preds = %if.end28
  %type31 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 10
  %34 = ptrtoint ptr %type31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type31, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %35, label %land.lhs.true.if.else37_crit_edge [
    i32 4, label %land.lhs.true.if.then34_crit_edge
    i32 2, label %land.lhs.true.if.then34_crit_edge417
  ]

land.lhs.true.if.then34_crit_edge417:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

land.lhs.true.if.then34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

land.lhs.true.if.else37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

if.then34:                                        ; preds = %land.lhs.true.if.then34_crit_edge, %land.lhs.true.if.then34_crit_edge417
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.5, ptr noundef %1)
  br label %if.end45

if.else37:                                        ; preds = %land.lhs.true.if.else37_crit_edge, %if.end28.if.else37_crit_edge
  %call38 = tail call ptr @dentry_path_raw(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 255) #11
  %cmp.i307 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup219

cleanup:                                          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %call38, i32 1
  %call43 = tail call i32 @strlen(ptr noundef %incdec.ptr) #15
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call7.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end45

if.end45:                                         ; preds = %cleanup, %if.then34
  %qstr.sroa.12.1 = phi ptr [ %incdec.ptr, %cleanup ], [ %call7.i, %if.then34 ]
  %qstr.sroa.0.1 = phi i32 [ %call43, %cleanup ], [ %call36, %if.then34 ]
  %offset.1 = phi i32 [ %sub.ptr.sub, %cleanup ], [ 0, %if.then34 ]
  %call48 = tail call i32 @full_name_hash(ptr noundef %1, ptr noundef %qstr.sroa.12.1, i32 noundef %qstr.sroa.0.1) #16
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 12
  %call49 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %wq_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup219

if.end52:                                         ; preds = %if.end45
  %37 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentry1, align 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and.i308 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308)
  %tobool.not.i309 = icmp eq i32 %and.i308, 0
  br i1 %tobool.not.i309, label %if.end.i, label %if.end52.if.then57_crit_edge

if.end52.if.then57_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.end.i:                                         ; preds = %if.end52
  %queues.i.i = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 15
  %41 = ptrtoint ptr %queues.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %wq.025.i.i = load ptr, ptr %queues.i.i, align 4
  %tobool.not26.i.i = icmp eq ptr %wq.025.i.i, null
  br i1 %tobool.not26.i.i, label %if.end.i.if.end4.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %wq.027.i.i = phi ptr [ %wq.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %wq.025.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.027.i.i, i32 0, i32 3
  %hash.i.i = getelementptr inbounds %struct.anon.4, ptr %name.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call48)
  %cmp.i.i = icmp eq i32 %43, %call48
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %44 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %name.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %qstr.sroa.0.1)
  %cmp4.i.i = icmp eq i32 %45, %qstr.sroa.0.1
  br i1 %cmp4.i.i, label %land.lhs.true5.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %name7.i.i = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.027.i.i, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %name7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name7.i.i, align 8
  %tobool8.not.i.i = icmp eq ptr %47, null
  br i1 %tobool8.not.i.i, label %land.lhs.true5.i.i.for.inc.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true5.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true5.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %47, ptr %qstr.sroa.12.1, i32 %qstr.sroa.0.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool14.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true9.i.i.if.else130_crit_edge, label %land.lhs.true9.i.i.for.inc.i.i_crit_edge

land.lhs.true9.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true9.i.i.if.else130_crit_edge:          ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else130

for.inc.i.i:                                      ; preds = %land.lhs.true9.i.i.for.inc.i.i_crit_edge, %land.lhs.true5.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %next.i.i = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.027.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %wq.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %wq.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.end4.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end4.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.inc.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 11
  %49 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_fsdata.i.i, align 4
  %tobool6.not.i = icmp eq ptr %50, null
  br i1 %tobool6.not.i, label %if.end4.i.if.then62_crit_edge, label %if.end8.i

if.end4.i.if.then62_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.end8.i:                                        ; preds = %if.end4.i
  %51 = zext i32 %notify to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %notify, label %if.end8.i.if.then62_crit_edge [
    i32 0, label %while.cond.preheader.i
    i32 1, label %if.then30.i
  ]

if.end8.i.if.then62_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

while.cond.preheader.i:                           ; preds = %if.end8.i
  %flags10.i = getelementptr inbounds %struct.autofs_info, ptr %50, i32 0, i32 2
  %52 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags10.i, align 4
  %and11114.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11114.i)
  %tobool12.not115.i = icmp eq i32 %and11114.i, 0
  br i1 %tobool12.not115.i, label %while.cond.preheader.i.if.then57_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.then57_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

while.body.i:                                     ; preds = %autofs_find_wait.exit105.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %wq_mutex) #11
  %call13.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #11
  %call15.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %wq_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %while.body.i.if.end59_crit_edge

while.body.i.if.end59_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.end18.i:                                       ; preds = %while.body.i
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and20.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end18.i.if.then57_crit_edge

if.end18.i.if.then57_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.end23.i:                                       ; preds = %if.end18.i
  %56 = ptrtoint ptr %queues.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %wq.025.i83.i = load ptr, ptr %queues.i.i, align 4
  %tobool.not26.i84.i = icmp eq ptr %wq.025.i83.i, null
  br i1 %tobool.not26.i84.i, label %if.end23.i.autofs_find_wait.exit105.i_crit_edge, label %if.end23.i.for.body.i91.i_crit_edge

if.end23.i.for.body.i91.i_crit_edge:              ; preds = %if.end23.i
  br label %for.body.i91.i

if.end23.i.autofs_find_wait.exit105.i_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %autofs_find_wait.exit105.i

for.body.i91.i:                                   ; preds = %for.inc.i103.i.for.body.i91.i_crit_edge, %if.end23.i.for.body.i91.i_crit_edge
  %wq.027.i87.i = phi ptr [ %wq.0.i101.i, %for.inc.i103.i.for.body.i91.i_crit_edge ], [ %wq.025.i83.i, %if.end23.i.for.body.i91.i_crit_edge ]
  %name.i88.i = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.027.i87.i, i32 0, i32 3
  %hash.i89.i = getelementptr inbounds %struct.anon.4, ptr %name.i88.i, i32 0, i32 1
  %57 = ptrtoint ptr %hash.i89.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hash.i89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %call48)
  %cmp.i90.i = icmp eq i32 %58, %call48
  br i1 %cmp.i90.i, label %land.lhs.true.i93.i, label %for.body.i91.i.for.inc.i103.i_crit_edge

for.body.i91.i.for.inc.i103.i_crit_edge:          ; preds = %for.body.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i103.i

land.lhs.true.i93.i:                              ; preds = %for.body.i91.i
  %59 = ptrtoint ptr %name.i88.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %name.i88.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %qstr.sroa.0.1)
  %cmp4.i92.i = icmp eq i32 %60, %qstr.sroa.0.1
  br i1 %cmp4.i92.i, label %land.lhs.true5.i96.i, label %land.lhs.true.i93.i.for.inc.i103.i_crit_edge

land.lhs.true.i93.i.for.inc.i103.i_crit_edge:     ; preds = %land.lhs.true.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i103.i

land.lhs.true5.i96.i:                             ; preds = %land.lhs.true.i93.i
  %name7.i94.i = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.027.i87.i, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %name7.i94.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name7.i94.i, align 8
  %tobool8.not.i95.i = icmp eq ptr %62, null
  br i1 %tobool8.not.i95.i, label %land.lhs.true5.i96.i.for.inc.i103.i_crit_edge, label %land.lhs.true9.i99.i

land.lhs.true5.i96.i.for.inc.i103.i_crit_edge:    ; preds = %land.lhs.true5.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i103.i

land.lhs.true9.i99.i:                             ; preds = %land.lhs.true5.i96.i
  %bcmp.i97.i = tail call i32 @bcmp(ptr nonnull %62, ptr %qstr.sroa.12.1, i32 %qstr.sroa.0.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i97.i)
  %tobool14.not.i98.i = icmp eq i32 %bcmp.i97.i, 0
  br i1 %tobool14.not.i98.i, label %land.lhs.true9.i99.i.if.else130_crit_edge, label %land.lhs.true9.i99.i.for.inc.i103.i_crit_edge

land.lhs.true9.i99.i.for.inc.i103.i_crit_edge:    ; preds = %land.lhs.true9.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i103.i

land.lhs.true9.i99.i.if.else130_crit_edge:        ; preds = %land.lhs.true9.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else130

for.inc.i103.i:                                   ; preds = %land.lhs.true9.i99.i.for.inc.i103.i_crit_edge, %land.lhs.true5.i96.i.for.inc.i103.i_crit_edge, %land.lhs.true.i93.i.for.inc.i103.i_crit_edge, %for.body.i91.i.for.inc.i103.i_crit_edge
  %next.i100.i = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.027.i87.i, i32 0, i32 1
  %63 = ptrtoint ptr %next.i100.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %wq.0.i101.i = load ptr, ptr %next.i100.i, align 4
  %tobool.not.i102.i = icmp eq ptr %wq.0.i101.i, null
  br i1 %tobool.not.i102.i, label %for.inc.i103.i.autofs_find_wait.exit105.i_crit_edge, label %for.inc.i103.i.for.body.i91.i_crit_edge

for.inc.i103.i.for.body.i91.i_crit_edge:          ; preds = %for.inc.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i91.i

for.inc.i103.i.autofs_find_wait.exit105.i_crit_edge: ; preds = %for.inc.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %autofs_find_wait.exit105.i

autofs_find_wait.exit105.i:                       ; preds = %for.inc.i103.i.autofs_find_wait.exit105.i_crit_edge, %if.end23.i.autofs_find_wait.exit105.i_crit_edge
  %64 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags10.i, align 4
  %and11.i = and i32 %65, 1
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %autofs_find_wait.exit105.i.if.then57_crit_edge, label %autofs_find_wait.exit105.i.while.body.i_crit_edge

autofs_find_wait.exit105.i.while.body.i_crit_edge: ; preds = %autofs_find_wait.exit105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

autofs_find_wait.exit105.i.if.then57_crit_edge:   ; preds = %autofs_find_wait.exit105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then30.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %this.i) #11
  %66 = getelementptr inbounds %struct.path, ptr %this.i, i32 0, i32 1
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 3
  %67 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d_parent.i, align 8
  %cmp31.i = icmp eq ptr %38, %68
  br i1 %cmp31.i, label %if.then30.i.if.end43.i_crit_edge, label %if.then32.i

if.then30.i.if.end43.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then32.i:                                      ; preds = %if.then30.i
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.not.i, label %land.lhs.true.i, label %if.then32.i.if.end43.i_crit_edge

if.then32.i.if.end43.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %if.then32.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %71 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i106.not.i = icmp eq ptr %72, null
  br i1 %cmp.i106.not.i, label %land.lhs.true.i.if.end43.i_crit_edge, label %if.then36.i

land.lhs.true.i.if.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 4
  %call38.i = tail call ptr @d_lookup(ptr noundef %68, ptr noundef %d_name.i) #11
  %tobool39.not.i = icmp eq ptr %call38.i, null
  %spec.select.i = select i1 %tobool39.not.i, ptr %38, ptr %call38.i
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then36.i, %land.lhs.true.i.if.end43.i_crit_edge, %if.then32.i.if.end43.i_crit_edge, %if.then30.i.if.end43.i_crit_edge
  %dentry.1.i = phi ptr [ %38, %if.then30.i.if.end43.i_crit_edge ], [ %spec.select.i, %if.then36.i ], [ %38, %land.lhs.true.i.if.end43.i_crit_edge ], [ %38, %if.then32.i.if.end43.i_crit_edge ]
  %new.0.i = phi ptr [ null, %if.then30.i.if.end43.i_crit_edge ], [ %call38.i, %if.then36.i ], [ null, %land.lhs.true.i.if.end43.i_crit_edge ], [ null, %if.then32.i.if.end43.i_crit_edge ]
  %73 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %path, align 4
  %75 = ptrtoint ptr %this.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %this.i, align 4
  %76 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dentry.1.i, ptr %66, align 4
  %call46.i = call i32 @path_has_submounts(ptr noundef nonnull %this.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  %tobool50.not.i = icmp eq ptr %new.0.i, null
  br i1 %tobool50.not.i, label %if.end43.i.validate_request.exit_crit_edge, label %if.then51.i

if.end43.i.validate_request.exit_crit_edge:       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %validate_request.exit

if.then51.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dput(ptr noundef nonnull %new.0.i) #11
  br label %validate_request.exit

validate_request.exit:                            ; preds = %if.then51.i, %if.end43.i.validate_request.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %this.i) #11
  br i1 %tobool47.not.i, label %validate_request.exit.if.then62_crit_edge, label %validate_request.exit.if.then57_crit_edge

validate_request.exit.if.then57_crit_edge:        ; preds = %validate_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

validate_request.exit.if.then62_crit_edge:        ; preds = %validate_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.then57:                                        ; preds = %validate_request.exit.if.then57_crit_edge, %autofs_find_wait.exit105.i.if.then57_crit_edge, %if.end18.i.if.then57_crit_edge, %while.cond.preheader.i.if.then57_crit_edge, %if.end52.if.then57_crit_edge
  %retval.0.i310354363 = phi i32 [ 0, %validate_request.exit.if.then57_crit_edge ], [ -2, %if.end52.if.then57_crit_edge ], [ 0, %while.cond.preheader.i.if.then57_crit_edge ], [ 0, %autofs_find_wait.exit105.i.if.then57_crit_edge ], [ -2, %if.end18.i.if.then57_crit_edge ]
  call void @mutex_unlock(ptr noundef %wq_mutex) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %while.body.i.if.end59_crit_edge
  %retval.0.i310354364 = phi i32 [ %retval.0.i310354363, %if.then57 ], [ -4, %while.body.i.if.end59_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup219

if.then62:                                        ; preds = %validate_request.exit.if.then62_crit_edge, %if.end8.i.if.then62_crit_edge, %if.end4.i.if.then62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i292 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3264, i32 noundef 120) #14
  %tobool64.not = icmp eq ptr %call7.i292, null
  br i1 %tobool64.not, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i) #11
  call void @mutex_unlock(ptr noundef %wq_mutex) #11
  br label %cleanup219

if.end67:                                         ; preds = %if.then62
  %78 = load i32, ptr @autofs_next_wait_queue, align 4
  %wait_queue_token = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 2
  %79 = ptrtoint ptr %wait_queue_token to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %wait_queue_token, align 8
  %inc = add i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp68 = icmp eq i32 %inc, 0
  %spec.store.select = select i1 %cmp68, i32 1, i32 %inc
  store i32 %spec.store.select, ptr @autofs_next_wait_queue, align 4
  %80 = ptrtoint ptr %queues.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %queues.i.i, align 4
  %next = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 1
  %82 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %next, align 4
  store ptr %call7.i292, ptr %queues.i.i, align 4
  call void @__init_waitqueue_head(ptr noundef nonnull %call7.i292, ptr noundef nonnull @.str.6, ptr noundef nonnull @autofs_wait.__key) #11
  %name72 = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 3
  %83 = ptrtoint ptr %name72 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %qstr.sroa.0.1, ptr %name72, align 8
  %qstr.sroa.9.0.name72.sroa_idx = getelementptr inbounds i8, ptr %name72, i32 4
  %84 = ptrtoint ptr %qstr.sroa.9.0.name72.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call48, ptr %qstr.sroa.9.0.name72.sroa_idx, align 4
  %qstr.sroa.12.0.name72.sroa_idx = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %qstr.sroa.12.0.name72.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %qstr.sroa.12.1, ptr %qstr.sroa.12.0.name72.sroa_idx, align 8
  %qstr.sroa.17.0.name72.sroa_idx = getelementptr inbounds i8, ptr %name72, i32 12
  %86 = ptrtoint ptr %qstr.sroa.17.0.name72.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %qstr.sroa.17.0.name72.sroa_idx, align 4
  %offset73 = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 4
  %87 = ptrtoint ptr %offset73 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %offset.1, ptr %offset73, align 8
  %sb.i = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 11
  %88 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sb.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_dev.i, align 8
  %and1.i.i = and i32 %91, 255
  %92 = lshr i32 %91, 12
  %shl.i.i = and i32 %92, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %91, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %dev = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 5
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or4.i.i, ptr %dev, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 13
  %94 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i312 = getelementptr inbounds %struct.dentry, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %d_inode.i.i312 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %d_inode.i.i312, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %99 to i64
  %ino = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 6
  %100 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv.i, ptr %ino, align 8
  %uid = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 7
  %101 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 99
  %103 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cred, align 16
  %uid81 = getelementptr inbounds %struct.cred, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %uid81 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %uid81, align 4
  %107 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %uid, align 8
  %gid = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 8
  %108 = load ptr, ptr %task, align 8
  %cred88 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 99
  %109 = ptrtoint ptr %cred88 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cred88, align 16
  %gid89 = getelementptr inbounds %struct.cred, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %gid89 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %gid89, align 4
  %113 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %gid, align 4
  %pid90 = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 9
  %114 = ptrtoint ptr %pid90 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call.i, ptr %pid90, align 8
  %tgid91 = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 10
  %115 = ptrtoint ptr %tgid91 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call.i302, ptr %tgid91, align 4
  %status92 = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 11
  %116 = ptrtoint ptr %status92 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -4, ptr %status92, align 8
  %wait_ctr = getelementptr inbounds %struct.autofs_wait_queue, ptr %call7.i292, i32 0, i32 12
  %117 = ptrtoint ptr %wait_ctr to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %wait_ctr, align 4
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 4
  %118 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %119)
  %cmp93 = icmp slt i32 %119, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %notify)
  %cmp95 = icmp eq i32 %notify, 1
  br i1 %cmp93, label %if.then94, label %if.else99

if.then94:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %cmp95, i32 0, i32 2
  br label %do.body112

if.else99:                                        ; preds = %if.end67
  %type102 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 10
  %120 = ptrtoint ptr %type102 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp.i313 = icmp ne i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %cmp1.i314 = icmp ne i32 %121, 4
  %tobool104.not = and i1 %cmp.i313, %cmp1.i314
  br i1 %cmp95, label %if.then101, label %if.else105

if.then101:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %tobool104.not, i32 3, i32 5
  br label %do.body112

if.else105:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #13
  %cond109 = select i1 %tobool104.not, i32 4, i32 6
  br label %do.body112

do.body112:                                       ; preds = %if.else105, %if.then101, %if.then94
  %type.0 = phi i32 [ %cond, %if.then101 ], [ %cond109, %if.else105 ], [ %., %if.then94 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_wait.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_wait, %if.then118)) #11
          to label %do.end129 [label %if.then118], !srcloc !46

if.then118:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task, align 8
  %pid121 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 68
  %124 = ptrtoint ptr %pid121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pid121, align 8
  %126 = ptrtoint ptr %wait_queue_token to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %wait_queue_token, align 8
  %128 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %name72, align 8
  %130 = ptrtoint ptr %qstr.sroa.12.0.name72.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %qstr.sroa.12.0.name72.sroa_idx, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_wait.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.10, i32 noundef %125, ptr noundef nonnull @.str.8, i32 noundef %127, i32 noundef %129, ptr noundef %131, i32 noundef %notify) #11
  br label %do.end129

do.end129:                                        ; preds = %if.then118, %do.body112
  call fastcc void @autofs_notify_daemon(ptr noundef %sbi, ptr noundef nonnull %call7.i292, i32 noundef %type.0)
  br label %if.end158

if.else130:                                       ; preds = %land.lhs.true9.i99.i.if.else130_crit_edge, %land.lhs.true9.i.i.if.else130_crit_edge
  %wq.0.ph = phi ptr [ %wq.027.i87.i, %land.lhs.true9.i99.i.if.else130_crit_edge ], [ %wq.027.i.i, %land.lhs.true9.i.i.if.else130_crit_edge ]
  %wait_ctr131 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.0.ph, i32 0, i32 12
  %132 = ptrtoint ptr %wait_ctr131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %wait_ctr131, align 4
  %inc132 = add i32 %133, 1
  store i32 %inc132, ptr %wait_ctr131, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_wait.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_wait, %if.then145)) #11
          to label %do.end156 [label %if.then145], !srcloc !46

if.then145:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task, align 8
  %pid148 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 68
  %136 = ptrtoint ptr %pid148 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pid148, align 8
  %wait_queue_token149 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.0.ph, i32 0, i32 2
  %138 = ptrtoint ptr %wait_queue_token149 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wait_queue_token149, align 8
  %name150 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.0.ph, i32 0, i32 3
  %140 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %name150, align 8
  %name153 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.0.ph, i32 0, i32 3, i32 1
  %142 = ptrtoint ptr %name153 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name153, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_wait.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.12, i32 noundef %137, ptr noundef nonnull @.str.8, i32 noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %notify) #11
  br label %do.end156

do.end156:                                        ; preds = %if.then145, %if.else130
  tail call void @mutex_unlock(ptr noundef %wq_mutex) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %if.end158

if.end158:                                        ; preds = %do.end156, %do.end129
  %wq.1 = phi ptr [ %call7.i292, %do.end129 ], [ %wq.0.ph, %do.end156 ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 439) #11
  %name166 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.1, i32 0, i32 3, i32 1
  %144 = ptrtoint ptr %name166 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name166, align 8
  %cmp167 = icmp eq ptr %145, null
  br i1 %cmp167, label %if.end158.if.end185_crit_edge, label %if.then168

if.end158.if.end185_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

if.then168:                                       ; preds = %if.end158
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %146 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call171399 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wq.1, ptr noundef nonnull %__wq_entry, i32 noundef 258) #11
  %147 = ptrtoint ptr %name166 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name166, align 8
  %cmp174400 = icmp eq ptr %148, null
  br i1 %cmp174400, label %if.then168.for.end_crit_edge, label %if.then168.if.end176_crit_edge

if.then168.if.end176_crit_edge:                   ; preds = %if.then168
  br label %if.end176

if.then168.for.end_crit_edge:                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end176:                                        ; preds = %cleanup180.if.end176_crit_edge, %if.then168.if.end176_crit_edge
  %call171401 = phi i32 [ %call171, %cleanup180.if.end176_crit_edge ], [ %call171399, %if.then168.if.end176_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171401)
  %tobool177.not = icmp eq i32 %call171401, 0
  br i1 %tobool177.not, label %cleanup180, label %if.end176.__out_crit_edge

if.end176.__out_crit_edge:                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup180:                                       ; preds = %if.end176
  call void @schedule() #11
  %call171 = call i32 @prepare_to_wait_event(ptr noundef %wq.1, ptr noundef nonnull %__wq_entry, i32 noundef 258) #11
  %149 = ptrtoint ptr %name166 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name166, align 8
  %cmp174 = icmp eq ptr %150, null
  br i1 %cmp174, label %cleanup180.for.end_crit_edge, label %cleanup180.if.end176_crit_edge

cleanup180.if.end176_crit_edge:                   ; preds = %cleanup180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

cleanup180.for.end_crit_edge:                     ; preds = %cleanup180
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup180.for.end_crit_edge, %if.then168.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq.1, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end176.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end185

if.end185:                                        ; preds = %__out, %if.end158.if.end185_crit_edge
  %status187 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.1, i32 0, i32 11
  %151 = ptrtoint ptr %status187 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %status187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool188.not = icmp eq i32 %152, 0
  br i1 %tobool188.not, label %if.then189, label %if.end185.if.end212_crit_edge

if.end185.if.end212_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end212

if.then189:                                       ; preds = %if.end185
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %153 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %d_fsdata.i, align 4
  %tobool192.not = icmp eq ptr %154, null
  br i1 %tobool192.not, label %if.then193, label %if.then189.if.end208_crit_edge

if.then189.if.end208_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.then193:                                       ; preds = %if.then189
  %155 = ptrtoint ptr %d_parent29 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %d_parent29, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %call195 = call ptr @d_lookup(ptr noundef %156, ptr noundef %d_name) #11
  %tobool196.not = icmp eq ptr %call195, null
  br i1 %tobool196.not, label %if.then193.if.end212_crit_edge, label %if.end200

if.then193.if.end212_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end212

if.end200:                                        ; preds = %if.then193
  %d_fsdata.i319 = getelementptr inbounds %struct.dentry, ptr %call195, i32 0, i32 11
  %157 = ptrtoint ptr %d_fsdata.i319 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %d_fsdata.i319, align 4
  %tobool201.not = icmp eq ptr %158, null
  br i1 %tobool201.not, label %if.end200.if.then210_crit_edge, label %if.end200.if.end208_crit_edge

if.end200.if.end208_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.end200.if.then210_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then210

if.end208:                                        ; preds = %if.end200.if.end208_crit_edge, %if.then189.if.end208_crit_edge
  %de.0389 = phi ptr [ %call195, %if.end200.if.end208_crit_edge ], [ null, %if.then189.if.end208_crit_edge ]
  %ino190.0388 = phi ptr [ %158, %if.end200.if.end208_crit_edge ], [ %154, %if.then189.if.end208_crit_edge ]
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %fs_lock) #11
  %uid203 = getelementptr inbounds %struct.autofs_info, ptr %ino190.0388, i32 0, i32 9
  %uid204 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.1, i32 0, i32 7
  %159 = ptrtoint ptr %uid204 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %uid204, align 8
  %161 = ptrtoint ptr %uid203 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %uid203, align 4
  %gid205 = getelementptr inbounds %struct.autofs_info, ptr %ino190.0388, i32 0, i32 10
  %gid206 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.1, i32 0, i32 8
  %162 = ptrtoint ptr %gid206 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %gid206, align 4
  %164 = ptrtoint ptr %gid205 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %gid205, align 4
  call void @_raw_spin_unlock(ptr noundef %fs_lock) #11
  %tobool209.not = icmp eq ptr %de.0389, null
  br i1 %tobool209.not, label %if.end208.if.end212_crit_edge, label %if.end208.if.then210_crit_edge

if.end208.if.then210_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then210

if.end208.if.end212_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end212

if.then210:                                       ; preds = %if.end208.if.then210_crit_edge, %if.end200.if.then210_crit_edge
  %de.0383395 = phi ptr [ %de.0389, %if.end208.if.then210_crit_edge ], [ %call195, %if.end200.if.then210_crit_edge ]
  call void @dput(ptr noundef nonnull %de.0383395) #11
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.end208.if.end212_crit_edge, %if.then193.if.end212_crit_edge, %if.end185.if.end212_crit_edge
  call void @mutex_lock_nested(ptr noundef %wq_mutex, i32 noundef 0) #11
  %wait_ctr214 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq.1, i32 0, i32 12
  %165 = ptrtoint ptr %wait_ctr214 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %wait_ctr214, align 4
  %dec = add i32 %166, -1
  store i32 %dec, ptr %wait_ctr214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool215.not = icmp eq i32 %dec, 0
  br i1 %tobool215.not, label %if.then216, label %if.end212.if.end217_crit_edge

if.end212.if.end217_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end217

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %wq.1) #11
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.end212.if.end217_crit_edge
  call void @mutex_unlock(ptr noundef %wq_mutex) #11
  br label %cleanup219

cleanup219:                                       ; preds = %if.end217, %if.then65, %if.end59, %if.then51, %cleanup.thread, %if.end24.cleanup219_crit_edge, %if.else.cleanup219_crit_edge, %if.then13.cleanup219_crit_edge, %if.then13.cleanup219_crit_edge416, %ns_of_pid.exit301.cleanup219_crit_edge, %entry.cleanup219_crit_edge
  %retval.1 = phi i32 [ -4, %if.then51 ], [ %retval.0.i310354364, %if.end59 ], [ %152, %if.end217 ], [ -12, %if.then65 ], [ -2, %entry.cleanup219_crit_edge ], [ -2, %ns_of_pid.exit301.cleanup219_crit_edge ], [ -2, %if.then13.cleanup219_crit_edge ], [ -2, %if.else.cleanup219_crit_edge ], [ -12, %if.end24.cleanup219_crit_edge ], [ -2, %cleanup.thread ], [ -2, %if.then13.cleanup219_crit_edge416 ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @autofs_notify_daemon(ptr noundef %sbi, ptr nocapture noundef readonly %wq, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %union.anon.67, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %pkt) #11
  %0 = call ptr @memset(ptr %pkt, i32 255, i32 304)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_notify_daemon.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_notify_daemon, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !46

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !36) #11
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
  %wait_queue_token = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 2
  %7 = ptrtoint ptr %wait_queue_token to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wait_queue_token, align 8
  %name = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %name, align 8
  %name5 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name5, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_notify_daemon.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.15, i32 noundef %6, ptr noundef nonnull @.str.13, i32 noundef %8, i32 noundef %10, ptr noundef %12, i32 noundef %type) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = getelementptr inbounds i8, ptr %pkt, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 296)
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 4
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 4
  %17 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pkt, align 8
  %type6 = getelementptr inbounds %struct.autofs_packet_hdr, ptr %pkt, i32 0, i32 1
  %18 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %type, ptr %type6, align 4
  %19 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %type, label %do.end66 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %do.end.sw.bb36_crit_edge
    i32 4, label %do.end.sw.bb36_crit_edge138
    i32 5, label %do.end.sw.bb36_crit_edge139
    i32 6, label %do.end.sw.bb36_crit_edge140
  ]

do.end.sw.bb36_crit_edge140:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

do.end.sw.bb36_crit_edge139:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

do.end.sw.bb36_crit_edge138:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

do.end.sw.bb36_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %wait_queue_token7 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 2
  %20 = ptrtoint ptr %wait_queue_token7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wait_queue_token7, align 8
  %wait_queue_token8 = getelementptr inbounds %struct.autofs_packet_missing, ptr %pkt, i32 0, i32 1
  %22 = ptrtoint ptr %wait_queue_token8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %wait_queue_token8, align 8
  %name9 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3
  %23 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %name9, align 8
  %len11 = getelementptr inbounds %struct.autofs_packet_missing, ptr %pkt, i32 0, i32 2
  %25 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %len11, align 4
  %name12 = getelementptr inbounds %struct.autofs_packet_missing, ptr %pkt, i32 0, i32 3
  %name14 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name14, align 8
  %28 = call ptr @memcpy(ptr %name12, ptr %27, i32 %24)
  %arrayidx = getelementptr %struct.autofs_packet_missing, ptr %pkt, i32 0, i32 3, i32 %24
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx, align 1
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %wait_queue_token21 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 2
  %30 = ptrtoint ptr %wait_queue_token21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wait_queue_token21, align 8
  %wait_queue_token22 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %pkt, i32 0, i32 1
  %32 = ptrtoint ptr %wait_queue_token22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %wait_queue_token22, align 8
  %name23 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3
  %33 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %name23, align 8
  %len25 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %pkt, i32 0, i32 2
  %35 = ptrtoint ptr %len25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %len25, align 4
  %name26 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %pkt, i32 0, i32 3
  %name29 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name29, align 8
  %38 = call ptr @memcpy(ptr %name26, ptr %37, i32 %34)
  %arrayidx35 = getelementptr %struct.autofs_packet_expire_multi, ptr %pkt, i32 0, i32 3, i32 %34
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx35, align 1
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.end.sw.bb36_crit_edge, %do.end.sw.bb36_crit_edge138, %do.end.sw.bb36_crit_edge139, %do.end.sw.bb36_crit_edge140
  %pipe37 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 2
  %40 = ptrtoint ptr %pipe37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pipe37, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f_cred, align 8
  %user_ns38 = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 25
  %44 = ptrtoint ptr %user_ns38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %user_ns38, align 4
  %wait_queue_token39 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 2
  %46 = ptrtoint ptr %wait_queue_token39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wait_queue_token39, align 8
  %wait_queue_token40 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 1
  %48 = ptrtoint ptr %wait_queue_token40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %wait_queue_token40, align 8
  %name41 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3
  %49 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %name41, align 8
  %len43 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 8
  %51 = ptrtoint ptr %len43 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %len43, align 8
  %name44 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 9
  %name47 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name47, align 8
  %54 = call ptr @memcpy(ptr %name44, ptr %53, i32 %50)
  %arrayidx53 = getelementptr %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 9, i32 %50
  %55 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx53, align 1
  %dev = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 5
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dev, align 4
  %dev54 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 2
  %58 = ptrtoint ptr %dev54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dev54, align 4
  %ino = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 6
  %59 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ino, align 8
  %ino55 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 3
  %61 = ptrtoint ptr %ino55 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %ino55, align 8
  %uid = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 7
  %62 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack = load i32, ptr %uid, align 8
  %63 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call56 = tail call i32 @from_kuid_munged(ptr noundef %45, [1 x i32] %63) #11
  %uid57 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 4
  %64 = ptrtoint ptr %uid57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call56, ptr %uid57, align 8
  %gid = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 8
  %65 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack135 = load i32, ptr %gid, align 4
  %66 = insertvalue [1 x i32] undef, i32 %.unpack135, 0
  %call59 = tail call i32 @from_kgid_munged(ptr noundef %45, [1 x i32] %66) #11
  %gid60 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 5
  %67 = ptrtoint ptr %gid60 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call59, ptr %gid60, align 4
  %pid61 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 9
  %68 = ptrtoint ptr %pid61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid61, align 8
  %pid62 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 6
  %70 = ptrtoint ptr %pid62 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %pid62, align 8
  %tgid = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 10
  %71 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tgid, align 4
  %tgid63 = getelementptr inbounds %struct.autofs_v5_packet, ptr %pkt, i32 0, i32 7
  %73 = ptrtoint ptr %tgid63 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %tgid63, align 4
  br label %sw.epilog

do.end66:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %74 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i136 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i136 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task69, align 8
  %pid70 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 68
  %78 = ptrtoint ptr %pid70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pid70, align 8
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %79, ptr noundef nonnull @.str.13, i32 noundef %type) #18
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %wq_mutex) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb20, %sw.bb
  %pktsz.0 = phi i32 [ 304, %sw.bb36 ], [ 272, %sw.bb20 ], [ 272, %sw.bb ]
  %pipe72 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 2
  %80 = ptrtoint ptr %pipe72 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pipe72, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %81, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #11
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #11, !srcloc !47
  %wq_mutex74 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %wq_mutex74) #11
  %83 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 116, i32 1
  %87 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %signal.i, align 4
  %pipe_mutex.i = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %pipe_mutex.i, i32 noundef 0) #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.epilog
  %bytes.addr.046.i = phi i32 [ %pktsz.0, %sw.epilog ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %data.045.i = phi ptr [ %pkt, %sw.epilog ], [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %call2.i = call i32 @__kernel_write(ptr noundef %81, ptr noundef %data.045.i, i32 noundef %bytes.addr.046.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 1
  %add.ptr.i = getelementptr i8, ptr %data.045.i, i32 %call2.i
  %sub.i = sub i32 %bytes.addr.046.i, %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  %or.cond51.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond51.i, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @mutex_unlock(ptr noundef %pipe_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call2.i)
  %cmp4.i = icmp eq i32 %call2.i, -32
  %89 = and i32 %88, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool5.not.i = icmp eq i32 %89, 0
  %or.cond.i = select i1 %cmp4.i, i1 %tobool5.not.i, i1 false
  br i1 %or.cond.i, label %do.body7.i, label %while.end.loopexit.i.autofs_write.exit_crit_edge

while.end.loopexit.i.autofs_write.exit_crit_edge: ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %autofs_write.exit

do.body7.i:                                       ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 112
  %92 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sighand.i, align 4
  %call12.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %93) #11
  %94 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task.i, align 8
  %signal18.i = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 116, i32 1
  %96 = ptrtoint ptr %signal18.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %signal18.i, align 4
  %and.i43.i = and i32 %97, -4097
  store i32 %and.i43.i, ptr %signal18.i, align 4
  call void @recalc_sigpending() #11
  %98 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task.i, align 8
  %sighand21.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 112
  %100 = ptrtoint ptr %sighand21.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sighand21.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %101, i32 noundef %call12.i) #11
  br label %autofs_write.exit

autofs_write.exit:                                ; preds = %do.body7.i, %while.end.loopexit.i.autofs_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp26.i = icmp slt i32 %call2.i, 0
  %spec.select.i = select i1 %cmp26.i, i32 %call2.i, i32 -5
  %cond31.i = select i1 %cmp.i, i32 %spec.select.i, i32 0
  %102 = zext i32 %cond31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cond31.i, label %sw.default79 [
    i32 0, label %autofs_write.exit.sw.epilog80_crit_edge
    i32 -12, label %autofs_write.exit.sw.bb76_crit_edge
    i32 -512, label %autofs_write.exit.sw.bb76_crit_edge141
  ]

autofs_write.exit.sw.bb76_crit_edge141:           ; preds = %autofs_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb76

autofs_write.exit.sw.bb76_crit_edge:              ; preds = %autofs_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb76

autofs_write.exit.sw.epilog80_crit_edge:          ; preds = %autofs_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog80

sw.bb76:                                          ; preds = %autofs_write.exit.sw.bb76_crit_edge, %autofs_write.exit.sw.bb76_crit_edge141
  %wait_queue_token77 = getelementptr inbounds %struct.autofs_wait_queue, ptr %wq, i32 0, i32 2
  %103 = ptrtoint ptr %wait_queue_token77 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %wait_queue_token77, align 8
  %call78 = call i32 @autofs_wait_release(ptr noundef %sbi, i32 noundef %104, i32 noundef %cond31.i)
  br label %sw.epilog80

sw.default79:                                     ; preds = %autofs_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @autofs_catatonic_mode(ptr noundef %sbi)
  br label %sw.epilog80

sw.epilog80:                                      ; preds = %sw.default79, %sw.bb76, %autofs_write.exit.sw.epilog80_crit_edge
  call void @fput(ptr noundef %81) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog80, %do.end66
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %pkt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_wait_release(ptr noundef %sbi, i32 noundef %wait_queue_token, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %wq_mutex, i32 noundef 0) #11
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 15
  %0 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues, align 4
  %cmp.not32 = icmp eq ptr %1, null
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %wait_queue_token140 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wait_queue_token140 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wait_queue_token140, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %wait_queue_token)
  %cmp241 = icmp eq i32 %3, %wait_queue_token
  br i1 %cmp241, label %for.body.preheader.if.end5_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.if.end5_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.body:                                         ; preds = %for.inc
  %wait_queue_token1 = getelementptr inbounds %struct.autofs_wait_queue, ptr %8, i32 0, i32 2
  %4 = ptrtoint ptr %wait_queue_token1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wait_queue_token1, align 8
  %cmp2 = icmp eq i32 %5, %wait_queue_token
  br i1 %cmp2, label %if.end5.loopexit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %6 = phi ptr [ %8, %for.body.for.inc_crit_edge ], [ %1, %for.body.preheader.for.inc_crit_edge ]
  %next = getelementptr inbounds %struct.autofs_wait_queue, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %next.le = getelementptr inbounds %struct.autofs_wait_queue, ptr %6, i32 0, i32 1
  br label %if.end5

if.end5:                                          ; preds = %if.end5.loopexit, %for.body.preheader.if.end5_crit_edge
  %.lcssa = phi ptr [ %1, %for.body.preheader.if.end5_crit_edge ], [ %8, %if.end5.loopexit ]
  %wql.033.lcssa = phi ptr [ %queues, %for.body.preheader.if.end5_crit_edge ], [ %next.le, %if.end5.loopexit ]
  %next6 = getelementptr inbounds %struct.autofs_wait_queue, ptr %.lcssa, i32 0, i32 1
  %9 = ptrtoint ptr %next6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next6, align 4
  %11 = ptrtoint ptr %wql.033.lcssa to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %wql.033.lcssa, align 4
  %name7 = getelementptr inbounds %struct.autofs_wait_queue, ptr %.lcssa, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name7, align 8
  %offset = getelementptr inbounds %struct.autofs_wait_queue, ptr %.lcssa, i32 0, i32 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 8
  %idx.neg = sub i32 0, %15
  %add.ptr = getelementptr i8, ptr %13, i32 %idx.neg
  tail call void @kfree(ptr noundef %add.ptr) #11
  %16 = ptrtoint ptr %name7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %name7, align 8
  %status10 = getelementptr inbounds %struct.autofs_wait_queue, ptr %.lcssa, i32 0, i32 11
  %17 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %status, ptr %status10, align 8
  tail call void @__wake_up(ptr noundef nonnull %.lcssa, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %wait_ctr = getelementptr inbounds %struct.autofs_wait_queue, ptr %.lcssa, i32 0, i32 12
  %18 = ptrtoint ptr %wait_ctr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wait_ctr, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %wait_ctr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %if.then12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end5.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end5.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wq_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_has_submounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/autofs/waitq.c", i32 25, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @autofs_catatonic_mode.__UNIQUE_ID_ddebug206, !1, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/autofs/waitq.c", i32 350, i32 28}
!9 = !{ptr @autofs_wait.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/autofs/waitq.c", i32 390, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../fs/autofs/waitq.c", i32 395, i32 13}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../fs/autofs/waitq.c", i32 396, i32 13}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/autofs/waitq.c", i32 418, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @autofs_wait.__UNIQUE_ID_ddebug208, !17, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/autofs/waitq.c", i32 428, i32 3}
!23 = !{ptr @autofs_wait.__UNIQUE_ID_ddebug209, !22, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @autofs_next_wait_queue, !26, !"autofs_next_wait_queue", i1 false, i1 false}
!26 = !{!"../fs/autofs/waitq.c", i32 13, i32 21}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/autofs/waitq.c", i32 91, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @autofs_notify_daemon.__UNIQUE_ID_ddebug207, !28, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!31 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/autofs/waitq.c", i32 154, i32 3}
!34 = !{ptr @autofs_notify_daemon._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @autofs_notify_daemon._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148792916, i64 2148792921, i64 2148792934, i64 2148792978, i64 2148793012, i64 2148793033}
!47 = !{i64 2148327437, i64 2148327463, i64 2148327492, i64 2148327526, i64 2148327557, i64 2148327580}
