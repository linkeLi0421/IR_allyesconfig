; ModuleID = '/llk/IR_all_yes/fs/afs/vl_list.c_pt.bc'
source_filename = "../fs/afs/vl_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.4, i16, i16, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.anon.4 = type { i32, i32, i16, i16 }
%struct.afs_vlserver_list = type <{ %struct.callback_head, %struct.atomic_t, i8, i8, i8, i16, [3 x i8], %struct.rwlock_t, [0 x %struct.afs_vlserver_entry] }>
%struct.afs_vlserver_entry = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dns_payload_header = type { i8, i8, i8 }
%struct.dns_server_list_v1_header = type { %struct.dns_payload_header, i8, i8, i8 }
%struct.afs_cell = type { %union.anon.145, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.145 = type { %struct.rb_node }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }

@afs_alloc_vlserver.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vlserver->lock\00", [16 x i8] zeroinitializer }, align 32
@afs_alloc_vlserver.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vlserver->probe_wq\00", [44 x i8] zeroinitializer }, align 32
@afs_alloc_vlserver.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vlserver->probe_lock\00", [42 x i8] zeroinitializer }, align 32
@afs_alloc_vlserver_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vllist->lock\00", [18 x i8] zeroinitializer }, align 32
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_extract_vlserver_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_extract_vlserver_list\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/afs/vl_list.c\00", [47 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr = internal global ptr @afs_extract_vlserver_list._entry, section ".printk_index", align 4
@afs_extract_vlserver_list._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015kAFS: Got DNS record [%u,%u] len %zu\0A\00", [56 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr.11 = internal global ptr @afs_extract_vlserver_list._entry.9, section ".printk_index", align 4
@afs_extract_vlserver_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.8, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%-6.6s]     extract %u %u %u %u %u %u %*.*s\0A\00", [50 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr.15 = internal global ptr @afs_extract_vlserver_list._entry.13, section ".printk_index", align 4
@afs_extract_vlserver_list._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.8, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = [proto %u]\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr.18 = internal global ptr @afs_extract_vlserver_list._entry.16, section ".printk_index", align 4
@afs_extract_vlserver_list._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.8, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     skip %u >= %u\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr.21 = internal global ptr @afs_extract_vlserver_list._entry.19, section ".printk_index", align 4
@afs_extract_vlserver_list.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_extract_vlserver_list._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     parse error %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr.25 = internal global ptr @afs_extract_vlserver_list._entry.23, section ".printk_index", align 4
@afs_extract_vlserver_list._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.8, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = ok [%u]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr.28 = internal global ptr @afs_extract_vlserver_list._entry.26, section ".printk_index", align 4
@afs_extract_vlserver_list._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.8, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017DNS: at %zu\0A\00", [17 x i8] zeroinitializer }, align 32
@afs_extract_vlserver_list._entry_ptr.31 = internal global ptr @afs_extract_vlserver_list._entry.29, section ".printk_index", align 4
@afs_extract_vlserver_list.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.7, ptr @.str.8, ptr @.str.33, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kafs\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DNS: \00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@afs_extract_vl_addrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%-6.6s] <== %s() = -EINVAL [short inet]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_extract_vl_addrs\00", [43 x i8] zeroinitializer }, align 32
@afs_extract_vl_addrs._entry_ptr = internal global ptr @afs_extract_vl_addrs._entry, section ".printk_index", align 4
@afs_extract_vl_addrs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.8, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%-6.6s] <== %s() = -EINVAL [short inet6]\0A\00", [53 x i8] zeroinitializer }, align 32
@afs_extract_vl_addrs._entry_ptr.39 = internal global ptr @afs_extract_vl_addrs._entry.37, section ".printk_index", align 4
@afs_extract_vl_addrs._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.8, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%-6.6s] <== %s() = -EADDRNOTAVAIL [unknown af %u]\0A\00", [44 x i8] zeroinitializer }, align 32
@afs_extract_vl_addrs._entry_ptr.42 = internal global ptr @afs_extract_vl_addrs._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 21, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 22, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 23, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 58, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 169, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 175, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 194, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 209, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 221, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 264, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 316, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 321, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 331, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 332, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 115, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 125, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [20 x i8] c"../fs/afs/vl_list.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 134, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @afs_extract_vl_addrs._entry, ptr @afs_extract_vl_addrs._entry.37, ptr @afs_extract_vl_addrs._entry.40, ptr @afs_extract_vl_addrs._entry_ptr, ptr @afs_extract_vl_addrs._entry_ptr.39, ptr @afs_extract_vl_addrs._entry_ptr.42, ptr @afs_extract_vlserver_list._entry, ptr @afs_extract_vlserver_list._entry.13, ptr @afs_extract_vlserver_list._entry.16, ptr @afs_extract_vlserver_list._entry.19, ptr @afs_extract_vlserver_list._entry.23, ptr @afs_extract_vlserver_list._entry.26, ptr @afs_extract_vlserver_list._entry.29, ptr @afs_extract_vlserver_list._entry.9, ptr @afs_extract_vlserver_list._entry_ptr, ptr @afs_extract_vlserver_list._entry_ptr.11, ptr @afs_extract_vlserver_list._entry_ptr.15, ptr @afs_extract_vlserver_list._entry_ptr.18, ptr @afs_extract_vlserver_list._entry_ptr.21, ptr @afs_extract_vlserver_list._entry_ptr.25, ptr @afs_extract_vlserver_list._entry_ptr.28, ptr @afs_extract_vlserver_list._entry_ptr.31, ptr @afs_alloc_vlserver.__key, ptr @.str, ptr @afs_alloc_vlserver.__key.1, ptr @.str.2, ptr @afs_alloc_vlserver.__key.3, ptr @.str.4, ptr @afs_alloc_vlserver_list.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_vlserver.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_vlserver.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_vlserver.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_vlserver_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vlserver_list._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vl_addrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vl_addrs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_vl_addrs._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_alloc_vlserver(ptr nocapture noundef readonly %name, i32 noundef %name_len, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %name_len, 1
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %add, i32 184) #9
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usage = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %usage, align 4
  %lock = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 3
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @afs_alloc_vlserver.__key) #9
  %probe_wq = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %probe_wq, ptr noundef nonnull @.str.2, ptr noundef nonnull @afs_alloc_vlserver.__key.1) #9
  %probe_lock = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %probe_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @afs_alloc_vlserver.__key.3, i16 noundef signext 3) #9
  %rtt = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %rtt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rtt, align 64
  %conv = trunc i32 %name_len to i16
  %name_len9 = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %name_len9 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %name_len9, align 2
  %port10 = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %port10 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %port, ptr %port10, align 4
  %name11 = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i, i32 0, i32 12
  %4 = call ptr @memcpy(ptr %name11, ptr %name, i32 %name_len)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_vlserver(ptr nocapture readnone %net, ptr noundef %vlserver) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vlserver, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.afs_vlserver, ptr %vlserver, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !80
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @call_rcu(ptr noundef nonnull %vlserver, ptr noundef nonnull @afs_vlserver_rcu) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_vlserver_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addresses = getelementptr inbounds %struct.afs_vlserver, ptr %rcu, i32 0, i32 1
  %0 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %addresses, align 4
  tail call void @afs_put_addrlist(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %rcu, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree_call_rcu(ptr noundef nonnull %rcu, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_alloc_vlserver_list(i32 noundef %nr_servers) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_servers, i32 12) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 64) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usage = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  %3 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %usage, align 8
  %lock = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i, i32 0, i32 7
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @afs_alloc_vlserver_list.__key) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_vlserverlist(ptr nocapture readnone %net, ptr noundef %vllist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vllist, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !80
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %for.cond.preheader, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.cond.preheader:                               ; preds = %if.then
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 2
  %1 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp219.not = icmp eq i8 %2, 0
  br i1 %cmp219.not, label %for.cond.preheader.do.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body:                                         ; preds = %afs_put_vlserver.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %afs_put_vlserver.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %server = getelementptr %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 8, i32 %i.020, i32 3
  %3 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %server, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.afs_put_vlserver.exit_crit_edge, label %if.then.i

for.body.afs_put_vlserver.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_put_vlserver.exit

if.then.i:                                        ; preds = %for.body
  %usage.i = getelementptr inbounds %struct.afs_vlserver, ptr %4, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !80
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.afs_put_vlserver.exit_crit_edge

if.then.i.afs_put_vlserver.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_put_vlserver.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @call_rcu(ptr noundef nonnull %4, ptr noundef nonnull @afs_vlserver_rcu) #9
  br label %afs_put_vlserver.exit

afs_put_vlserver.exit:                            ; preds = %if.then1.i, %if.then.i.afs_put_vlserver.exit_crit_edge, %for.body.afs_put_vlserver.exit_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %6 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %7 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %afs_put_vlserver.exit.for.body_crit_edge, label %afs_put_vlserver.exit.do.end_crit_edge

afs_put_vlserver.exit.do.end_crit_edge:           ; preds = %afs_put_vlserver.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

afs_put_vlserver.exit.for.body_crit_edge:         ; preds = %afs_put_vlserver.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end:                                           ; preds = %afs_put_vlserver.exit.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  tail call void @kvfree_call_rcu(ptr noundef nonnull %vllist, ptr noundef null) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_extract_vlserver_list(ptr noundef %cell, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %x.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buffer, i32 %buffer_size
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !82

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.7) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %buffer_size)
  %cmp = icmp ult i32 %buffer_size, 6
  br i1 %cmp, label %do.end6.dump.thread_crit_edge, label %lor.lhs.false

do.end6.dump.thread_crit_edge:                    ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump.thread

lor.lhs.false:                                    ; preds = %do.end6
  %content = getelementptr inbounds %struct.dns_payload_header, ptr %buffer, i32 0, i32 1
  %5 = ptrtoint ptr %content to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %content, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp8.not = icmp eq i8 %6, 0
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false.dump.thread_crit_edge

lor.lhs.false.dump.thread_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump.thread

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.dns_payload_header, ptr %buffer, i32 0, i32 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp13.not = icmp eq i8 %8, 1
  br i1 %cmp13.not, label %if.end30, label %lor.lhs.false10.dump.thread_crit_edge

lor.lhs.false10.dump.thread_crit_edge:            ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump.thread

dump.thread:                                      ; preds = %lor.lhs.false10.dump.thread_crit_edge, %lor.lhs.false.dump.thread_crit_edge, %do.end6.dump.thread_crit_edge
  %content21 = getelementptr inbounds %struct.dns_payload_header, ptr %buffer, i32 0, i32 1
  %9 = ptrtoint ptr %content21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %content21, align 1
  %conv22 = zext i8 %10 to i32
  %version24 = getelementptr inbounds %struct.dns_payload_header, ptr %buffer, i32 0, i32 2
  %11 = ptrtoint ptr %version24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %version24, align 1
  %conv25 = zext i8 %12 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv22, i32 noundef %conv25, i32 noundef %buffer_size) #13
  br label %do.end492

if.end30:                                         ; preds = %lor.lhs.false10
  %nr_servers31 = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %buffer, i32 0, i32 3
  %13 = ptrtoint ptr %nr_servers31 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr_servers31, align 1
  %conv32 = zext i8 %14 to i32
  %15 = mul nuw nsw i32 %conv32, 12
  %spec.select.i.i768 = add nuw nsw i32 %15, 64
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i768, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end30.cleanup514_crit_edge, label %if.end37

if.end30.cleanup514_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup514

if.end37:                                         ; preds = %if.end30
  %usage.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %usage.i, align 8
  %lock.i = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 7
  tail call void @__rwlock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @afs_alloc_vlserver_list.__key) #9
  %source = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %buffer, i32 0, i32 1
  %17 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %source, align 1
  %19 = tail call i8 @llvm.umin.i8(i8 %18, i8 6)
  %spec.select = zext i8 %19 to i16
  %source43 = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 5
  %bf.shl = shl nuw nsw i16 %spec.select, 8
  %status = getelementptr inbounds %struct.dns_server_list_v1_header, ptr %buffer, i32 0, i32 2
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 1
  %22 = tail call i8 @llvm.umin.i8(i8 %21, i8 8)
  %cond52 = zext i8 %22 to i16
  %bf.set57 = or i16 %bf.shl, %cond52
  %23 = ptrtoint ptr %source43 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %bf.set57, ptr %source43, align 1
  %vl_servers_lock = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 25
  tail call void @_raw_read_lock(ptr noundef %vl_servers_lock) #9
  %dep_map = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 25, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool62.not = icmp eq i32 %call.i, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.end37.do.end70_crit_edge

if.end37.do.end70_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

land.lhs.true:                                    ; preds = %if.end37
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b639 = load i1, ptr @afs_extract_vlserver_list.__warned, align 1
  br i1 %.b639, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @afs_extract_vlserver_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 195, ptr noundef nonnull @.str.12) #9
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.end37.do.end70_crit_edge
  %vl_servers = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 26
  %24 = ptrtoint ptr %vl_servers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vl_servers, align 8
  %tobool.not.i642 = icmp eq ptr %25, null
  br i1 %tobool.not.i642, label %do.end70.afs_get_vlserverlist.exit_crit_edge, label %if.then.i645

do.end70.afs_get_vlserverlist.exit_crit_edge:     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_get_vlserverlist.exit

if.then.i645:                                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  %usage.i643 = getelementptr inbounds %struct.afs_vlserver_list, ptr %25, i32 0, i32 1
  %call.i.i.i644 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i643, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage.i643, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i643, ptr %usage.i643, i32 1, ptr elementtype(i32) %usage.i643) #9, !srcloc !83
  br label %afs_get_vlserverlist.exit

afs_get_vlserverlist.exit:                        ; preds = %if.then.i645, %do.end70.afs_get_vlserverlist.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %vl_servers_lock) #9
  %add.ptr74 = getelementptr i8, ptr %buffer, i32 6
  %27 = add i32 %buffer_size, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %27)
  %cmp78823 = icmp ult i32 %27, -12
  br i1 %cmp78823, label %while.body.lr.ph, label %afs_get_vlserverlist.exit.while.end_crit_edge

afs_get_vlserverlist.exit.while.end_crit_edge:    ; preds = %afs_get_vlserverlist.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %afs_get_vlserverlist.exit
  %nr_servers194 = getelementptr inbounds %struct.afs_vlserver_list, ptr %25, i32 0, i32 2
  %nr_servers242 = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 2
  %servers407 = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %ret.0825 = phi i32 [ -12, %while.body.lr.ph ], [ %ret.1, %while.cond.backedge.while.body_crit_edge ]
  %b.0824 = phi ptr [ %add.ptr74, %while.body.lr.ph ], [ %b.1, %while.cond.backedge.while.body_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %b.0824, i32 1
  %28 = ptrtoint ptr %b.0824 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %b.0824, align 1
  %conv1.i = zext i8 %29 to i16
  %incdec.ptr3.i = getelementptr i8, ptr %b.0824, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i, align 1
  %conv5.i = zext i8 %31 to i16
  %shl6.i = shl nuw i16 %conv5.i, 8
  %or.i = or i16 %shl6.i, %conv1.i
  %incdec.ptr.i646 = getelementptr i8, ptr %b.0824, i32 3
  %32 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr3.i, align 1
  %conv1.i647 = zext i8 %33 to i16
  %incdec.ptr3.i648 = getelementptr i8, ptr %b.0824, i32 4
  %34 = ptrtoint ptr %incdec.ptr.i646 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.i646, align 1
  %conv5.i649 = zext i8 %35 to i16
  %shl6.i650 = shl nuw i16 %conv5.i649, 8
  %or.i651 = or i16 %shl6.i650, %conv1.i647
  %incdec.ptr.i652 = getelementptr i8, ptr %b.0824, i32 5
  %36 = ptrtoint ptr %incdec.ptr3.i648 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr3.i648, align 1
  %conv1.i653 = zext i8 %37 to i16
  %incdec.ptr3.i654 = getelementptr i8, ptr %b.0824, i32 6
  %38 = ptrtoint ptr %incdec.ptr.i652 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.i652, align 1
  %conv5.i655 = zext i8 %39 to i16
  %shl6.i656 = shl nuw i16 %conv5.i655, 8
  %or.i657 = or i16 %shl6.i656, %conv1.i653
  %incdec.ptr.i658 = getelementptr i8, ptr %b.0824, i32 7
  %40 = ptrtoint ptr %incdec.ptr3.i654 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr3.i654, align 1
  %conv1.i659 = zext i8 %41 to i16
  %incdec.ptr3.i660 = getelementptr i8, ptr %b.0824, i32 8
  %42 = ptrtoint ptr %incdec.ptr.i658 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.i658, align 1
  %conv5.i661 = zext i8 %43 to i16
  %shl6.i662 = shl nuw i16 %conv5.i661, 8
  %or.i663 = or i16 %shl6.i662, %conv1.i659
  %incdec.ptr = getelementptr i8, ptr %b.0824, i32 9
  %44 = ptrtoint ptr %incdec.ptr3.i660 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr3.i660, align 1
  %incdec.ptr85 = getelementptr i8, ptr %b.0824, i32 10
  %46 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr, align 1
  %incdec.ptr87 = getelementptr i8, ptr %b.0824, i32 11
  %48 = ptrtoint ptr %incdec.ptr85 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr85, align 1
  %incdec.ptr88 = getelementptr i8, ptr %b.0824, i32 12
  %50 = ptrtoint ptr %incdec.ptr87 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr87, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %52 = load i32, ptr @afs_debug, align 4
  %and90 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %while.body.do.end126_crit_edge, label %do.end101, !prof !82

while.body.do.end126_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %.pre870 = zext i16 %or.i to i32
  br label %do.end126

do.end101:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %53 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i664 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i664 to ptr
  %task104 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task104, align 8
  %comm105 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 101
  %conv108 = zext i16 %or.i to i32
  %conv110 = zext i16 %or.i651 to i32
  %conv112 = zext i16 %or.i657 to i32
  %conv114 = zext i16 %or.i663 to i32
  %conv116 = zext i8 %49 to i32
  %conv118 = zext i8 %51 to i32
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm105, i32 noundef %conv108, i32 noundef %conv110, i32 noundef %conv112, i32 noundef %conv114, i32 noundef %conv116, i32 noundef %conv118, i32 noundef %conv108, i32 noundef %conv108, ptr noundef %incdec.ptr88) #13
  br label %do.end126

do.end126:                                        ; preds = %do.end101, %while.body.do.end126_crit_edge
  %conv131.pre-phi = phi i32 [ %.pre870, %while.body.do.end126_crit_edge ], [ %conv108, %do.end101 ]
  %sub.ptr.rhs.cast128 = ptrtoint ptr %incdec.ptr88 to i32
  %sub.ptr.sub129 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast128
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub129, i32 %conv131.pre-phi)
  %cmp132 = icmp slt i32 %sub.ptr.sub129, %conv131.pre-phi
  br i1 %cmp132, label %do.end126.while.end_crit_edge, label %if.end135

do.end126.while.end_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end135:                                        ; preds = %do.end126
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %switch641 = icmp ult i8 %49, 2
  br i1 %switch641, label %if.end172, label %do.body147

do.body147:                                       ; preds = %if.end135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %57 = load i32, ptr @afs_debug, align 4
  %and148 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.dump_crit_edge, label %do.end159, !prof !82

do.body147.dump_crit_edge:                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump

do.end159:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  %conv137.le = zext i8 %49 to i32
  %58 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i665 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i665 to ptr
  %task162 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task162 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task162, align 8
  %comm163 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm163, ptr noundef nonnull @.str.7, i32 noundef %conv137.le) #13
  br label %dump

if.end172:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i663)
  %cmp175 = icmp eq i16 %or.i663, 0
  %spec.select640 = select i1 %cmp175, i16 7003, i16 %or.i663
  %62 = call i8 @llvm.umin.i8(i8 %45, i8 6)
  %63 = call i8 @llvm.umin.i8(i8 %47, i8 8)
  %64 = ptrtoint ptr %nr_servers194 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nr_servers194, align 4
  %conv195 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp196814.not = icmp eq i8 %65, 0
  br i1 %cmp196814.not, label %if.end172.if.end8.i.i.i691_crit_edge, label %if.end172.for.body_crit_edge

if.end172.for.body_crit_edge:                     ; preds = %if.end172
  br label %for.body

if.end172.if.end8.i.i.i691_crit_edge:             ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i691

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end172.for.body_crit_edge
  %i.0815 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end172.for.body_crit_edge ]
  %server198 = getelementptr %struct.afs_vlserver_list, ptr %25, i32 0, i32 8, i32 %i.0815, i32 3
  %66 = ptrtoint ptr %server198 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %server198, align 4
  %name_len199 = getelementptr inbounds %struct.afs_vlserver, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %name_len199 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %name_len199, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %or.i)
  %cmp203 = icmp eq i16 %69, %or.i
  br i1 %cmp203, label %land.lhs.true205, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true205:                                 ; preds = %for.body
  %port206 = getelementptr inbounds %struct.afs_vlserver, ptr %67, i32 0, i32 10
  %70 = ptrtoint ptr %port206 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %port206, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %spec.select640)
  %cmp210 = icmp eq i16 %71, %spec.select640
  br i1 %cmp210, label %land.lhs.true212, label %land.lhs.true205.for.inc_crit_edge

land.lhs.true205.for.inc_crit_edge:               ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true212:                                 ; preds = %land.lhs.true205
  %name = getelementptr inbounds %struct.afs_vlserver, ptr %67, i32 0, i32 12
  %call216 = call i32 @strncasecmp(ptr noundef %incdec.ptr88, ptr noundef %name, i32 noundef %conv131.pre-phi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp217 = icmp eq i32 %call216, 0
  br i1 %cmp217, label %for.end, label %land.lhs.true212.for.inc_crit_edge

land.lhs.true212.for.inc_crit_edge:               ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true212.for.inc_crit_edge, %land.lhs.true205.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0815, 1
  %exitcond.not = icmp eq i32 %inc, %conv195
  br i1 %exitcond.not, label %for.inc.if.end8.i.i.i691_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end8.i.i.i691_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i691

for.end:                                          ; preds = %land.lhs.true212
  %usage.i666 = getelementptr inbounds %struct.afs_vlserver, ptr %67, i32 0, i32 4
  %call.i.i.i667 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i666, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %usage.i666, i32 1, i32 3, i32 1) #9
  %72 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i666, ptr %usage.i666, i32 1, ptr elementtype(i32) %usage.i666) #9, !srcloc !83
  %tobool222.not = icmp eq ptr %67, null
  br i1 %tobool222.not, label %for.end.if.end8.i.i.i691_crit_edge, label %for.end.if.end231_crit_edge

for.end.if.end231_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

for.end.if.end8.i.i.i691_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i691

if.end8.i.i.i691:                                 ; preds = %for.end.if.end8.i.i.i691_crit_edge, %for.inc.if.end8.i.i.i691_crit_edge, %if.end172.if.end8.i.i.i691_crit_edge
  %spec.select.i.i668 = add nuw nsw i32 %conv131.pre-phi, 185
  %call9.i.i.i690 = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i668, i32 noundef 3520) #12
  %tobool.not.i693 = icmp eq ptr %call9.i.i.i690, null
  br i1 %tobool.not.i693, label %if.end8.i.i.i691.dump_crit_edge, label %afs_alloc_vlserver.exit

if.end8.i.i.i691.dump_crit_edge:                  ; preds = %if.end8.i.i.i691
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump

afs_alloc_vlserver.exit:                          ; preds = %if.end8.i.i.i691
  call void @__sanitizer_cov_trace_pc() #11
  %usage.i695 = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 4
  %call.i.i.i696 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i695, i32 noundef 4) #9
  %73 = ptrtoint ptr %usage.i695 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 1, ptr %usage.i695, align 4
  %lock.i697 = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 3
  call void @__rwlock_init(ptr noundef %lock.i697, ptr noundef nonnull @.str, ptr noundef nonnull @afs_alloc_vlserver.__key) #9
  %probe_wq.i = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 6
  call void @__init_waitqueue_head(ptr noundef %probe_wq.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @afs_alloc_vlserver.__key.1) #9
  %probe_lock.i = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %probe_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @afs_alloc_vlserver.__key.3, i16 noundef signext 3) #9
  %rtt.i = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 5
  %74 = ptrtoint ptr %rtt.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %rtt.i, align 64
  %name_len9.i = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 11
  %75 = ptrtoint ptr %name_len9.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %or.i, ptr %name_len9.i, align 2
  %port10.i = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 10
  %76 = ptrtoint ptr %port10.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %spec.select640, ptr %port10.i, align 4
  %name11.i = getelementptr inbounds %struct.afs_vlserver, ptr %call9.i.i.i690, i32 0, i32 12
  %77 = call ptr @memcpy(ptr %name11.i, ptr %incdec.ptr88, i32 %conv131.pre-phi)
  br label %if.end231

if.end231:                                        ; preds = %afs_alloc_vlserver.exit, %for.end.if.end231_crit_edge
  %ret.1 = phi i32 [ -93, %for.end.if.end231_crit_edge ], [ -12, %afs_alloc_vlserver.exit ]
  %server.3 = phi ptr [ %67, %for.end.if.end231_crit_edge ], [ %call9.i.i.i690, %afs_alloc_vlserver.exit ]
  %add.ptr234 = getelementptr i8, ptr %incdec.ptr88, i32 %conv131.pre-phi
  %conv.i = zext i8 %51 to i32
  %call.i699 = call ptr @afs_alloc_addrlist(i32 noundef %conv.i, i16 noundef zeroext 52, i16 noundef zeroext %spec.select640) #9
  %tobool.not.i700 = icmp eq ptr %call.i699, null
  br i1 %tobool.not.i700, label %if.end231.if.then.i709_crit_edge, label %if.end.i

if.end231.if.then.i709_crit_edge:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i709

if.end.i:                                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.i = icmp eq i8 %51, 0
  br i1 %cmp.i, label %if.end.i.afs_extract_vl_addrs.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.afs_extract_vl_addrs.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_extract_vl_addrs.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %nr_addrs.addr.0148.i = phi i8 [ %dec.i, %for.inc.i.land.rhs.i_crit_edge ], [ %51, %if.end.i.land.rhs.i_crit_edge ]
  %b.0147.i = phi ptr [ %add.ptr64.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr234, %if.end.i.land.rhs.i_crit_edge ]
  %conv6.i = zext i8 %nr_addrs.addr.0148.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %b.0147.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv6.i)
  %cmp10.not.i = icmp slt i32 %sub.ptr.sub.i, %conv6.i
  br i1 %cmp10.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x.i) #9
  %incdec.ptr.i701 = getelementptr i8, ptr %b.0147.i, i32 1
  %78 = call ptr @memset(ptr %x.i, i32 255, i32 16)
  %79 = ptrtoint ptr %b.0147.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %b.0147.i, align 1
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i8 %80, label %do.body65.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb32.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %sub.ptr.rhs.cast15.i = ptrtoint ptr %incdec.ptr.i701 to i32
  %sub.ptr.sub16.i = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub16.i)
  %cmp17.i = icmp slt i32 %sub.ptr.sub16.i, 4
  br i1 %cmp17.i, label %do.body.i, label %if.end30.i

do.body.i:                                        ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %82 = load i32, ptr @afs_debug, align 4
  %and.i702 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i702)
  %tobool20.not.i = icmp eq i32 %and.i702, 0
  br i1 %tobool20.not.i, label %do.body.i.error.i_crit_edge, label %do.end.i, !prof !82

do.body.i.error.i_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 101
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i, ptr noundef nonnull @.str.36) #13
  br label %error.i

if.end30.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %incdec.ptr.i701 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %incdec.ptr.i701, align 1
  %89 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %x.i, align 4
  call void @afs_merge_fs_addr4(ptr noundef nonnull %call.i699, i32 noundef %88, i16 noundef zeroext %spec.select640) #9
  br label %for.inc.i

sw.bb32.i:                                        ; preds = %for.body.i
  %sub.ptr.rhs.cast34.i = ptrtoint ptr %incdec.ptr.i701 to i32
  %sub.ptr.sub35.i = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub35.i)
  %cmp36.i = icmp slt i32 %sub.ptr.sub35.i, 16
  br i1 %cmp36.i, label %do.body39.i, label %if.end61.i

do.body39.i:                                      ; preds = %sw.bb32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %90 = load i32, ptr @afs_debug, align 4
  %and40.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %do.body39.i.error.i_crit_edge, label %do.end51.i, !prof !82

do.body39.i.error.i_crit_edge:                    ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

do.end51.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i131.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i131.i to ptr
  %task54.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task54.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task54.i, align 8
  %comm55.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 101
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm55.i, ptr noundef nonnull @.str.36) #13
  br label %error.i

if.end61.i:                                       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = call ptr @memcpy(ptr %x.i, ptr %incdec.ptr.i701, i32 16)
  call void @afs_merge_fs_addr6(ptr noundef nonnull %call.i699, ptr noundef nonnull %x.i, i16 noundef zeroext %spec.select640) #9
  br label %for.inc.i

do.body65.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %96 = load i32, ptr @afs_debug, align 4
  %and66.i = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %do.body65.i.error.i_crit_edge, label %do.end77.i, !prof !82

do.body65.i.error.i_crit_edge:                    ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

do.end77.i:                                       ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.le.i = zext i8 %80 to i32
  %97 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i132.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i132.i to ptr
  %task80.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task80.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task80.i, align 8
  %comm81.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 101
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm81.i, ptr noundef nonnull @.str.36, i32 noundef %conv13.le.i) #13
  br label %error.i

for.inc.i:                                        ; preds = %if.end61.i, %if.end30.i
  %.sink.i = phi i32 [ 17, %if.end61.i ], [ 5, %if.end30.i ]
  %add.ptr64.i = getelementptr i8, ptr %b.0147.i, i32 %.sink.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x.i) #9
  %dec.i = add i8 %nr_addrs.addr.0148.i, -1
  %cmp7.not.i = icmp eq i8 %dec.i, 0
  br i1 %cmp7.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %b.0.lcssa.i = phi ptr [ %add.ptr64.i, %for.inc.i.for.end.i_crit_edge ], [ %b.0147.i, %land.rhs.i.for.end.i_crit_edge ]
  %nr_ipv4.i = getelementptr inbounds %struct.afs_addr_list, ptr %call.i699, i32 0, i32 6
  %101 = ptrtoint ptr %nr_ipv4.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nr_ipv4.i, align 1
  %nr_addrs91.i = getelementptr inbounds %struct.afs_addr_list, ptr %call.i699, i32 0, i32 4
  %103 = ptrtoint ptr %nr_addrs91.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %nr_addrs91.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp93.i = icmp ult i8 %102, %104
  br i1 %cmp93.i, label %if.then95.i, label %for.end.i.afs_extract_vl_addrs.exit_crit_edge

for.end.i.afs_extract_vl_addrs.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_extract_vl_addrs.exit

if.then95.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %preferred.i = getelementptr inbounds %struct.afs_addr_list, ptr %call.i699, i32 0, i32 5
  %105 = ptrtoint ptr %preferred.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %102, ptr %preferred.i, align 2
  br label %afs_extract_vl_addrs.exit

error.i:                                          ; preds = %do.end77.i, %do.body65.i.error.i_crit_edge, %do.end51.i, %do.body39.i.error.i_crit_edge, %do.end.i, %do.body.i.error.i_crit_edge
  %ret.1.ph.i = phi ptr [ inttoptr (i32 -99 to ptr), %do.body65.i.error.i_crit_edge ], [ inttoptr (i32 -99 to ptr), %do.end77.i ], [ inttoptr (i32 -22 to ptr), %do.body39.i.error.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end51.i ], [ inttoptr (i32 -22 to ptr), %do.body.i.error.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x.i) #9
  call void @afs_put_addrlist(ptr noundef nonnull %call.i699) #9
  br label %if.then239

afs_extract_vl_addrs.exit:                        ; preds = %if.then95.i, %for.end.i.afs_extract_vl_addrs.exit_crit_edge, %if.end.i.afs_extract_vl_addrs.exit_crit_edge
  %b.1 = phi ptr [ %add.ptr234, %if.end.i.afs_extract_vl_addrs.exit_crit_edge ], [ %b.0.lcssa.i, %if.then95.i ], [ %b.0.lcssa.i, %for.end.i.afs_extract_vl_addrs.exit_crit_edge ]
  %cmp.i704 = icmp ugt ptr %call.i699, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i704, label %afs_extract_vl_addrs.exit.if.then239_crit_edge, label %if.end241

afs_extract_vl_addrs.exit.if.then239_crit_edge:   ; preds = %afs_extract_vl_addrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then239

if.then239:                                       ; preds = %afs_extract_vl_addrs.exit.if.then239_crit_edge, %error.i
  %retval.0.i703756 = phi ptr [ %ret.1.ph.i, %error.i ], [ %call.i699, %afs_extract_vl_addrs.exit.if.then239_crit_edge ]
  %b.1755 = phi ptr [ %incdec.ptr.i701, %error.i ], [ %b.1, %afs_extract_vl_addrs.exit.if.then239_crit_edge ]
  %106 = ptrtoint ptr %retval.0.i703756 to i32
  %tobool.not.i705 = icmp eq ptr %server.3, null
  br i1 %tobool.not.i705, label %if.then239.dump_crit_edge, label %if.then239.if.then.i709_crit_edge

if.then239.if.then.i709_crit_edge:                ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i709

if.then239.dump_crit_edge:                        ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump

if.then.i709:                                     ; preds = %if.then239.if.then.i709_crit_edge, %if.end231.if.then.i709_crit_edge
  %107 = phi i32 [ %106, %if.then239.if.then.i709_crit_edge ], [ -12, %if.end231.if.then.i709_crit_edge ]
  %b.1755767 = phi ptr [ %b.1755, %if.then239.if.then.i709_crit_edge ], [ %add.ptr234, %if.end231.if.then.i709_crit_edge ]
  %usage.i706 = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 4
  %call.i.i.i707 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i706, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @llvm.prefetch.p0(ptr %usage.i706, i32 1, i32 3, i32 1) #9
  %108 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i706, ptr %usage.i706, i32 1, ptr elementtype(i32) %usage.i706) #9, !srcloc !80
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %108, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i708 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i708, label %if.then1.i, label %if.then.i709.dump_crit_edge

if.then.i709.dump_crit_edge:                      ; preds = %if.then.i709
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump

if.then1.i:                                       ; preds = %if.then.i709
  call void @__sanitizer_cov_trace_pc() #11
  call void @call_rcu(ptr noundef nonnull %server.3, ptr noundef nonnull @afs_vlserver_rcu) #9
  br label %dump

if.end241:                                        ; preds = %afs_extract_vl_addrs.exit
  %109 = ptrtoint ptr %nr_servers242 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nr_servers242, align 4
  %conv243 = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %14)
  %cmp244.not = icmp ult i8 %110, %14
  br i1 %cmp244.not, label %if.end271, label %do.body247

do.body247:                                       ; preds = %if.end241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %111 = load i32, ptr @afs_debug, align 4
  %and248 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %do.body247.do.end270_crit_edge, label %do.end259, !prof !82

do.body247.do.end270_crit_edge:                   ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end270

do.end259:                                        ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #11
  %112 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i710 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i710 to ptr
  %task262 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task262 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task262, align 8
  %comm263 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 101
  %call267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm263, i32 noundef %conv243, i32 noundef %conv32) #13
  br label %do.end270

do.end270:                                        ; preds = %do.end259, %do.body247.do.end270_crit_edge
  call void @afs_put_addrlist(ptr noundef nonnull %call.i699) #9
  %tobool.not.i711 = icmp eq ptr %server.3, null
  br i1 %tobool.not.i711, label %do.end270.while.cond.backedge_crit_edge, label %if.then.i716

do.end270.while.cond.backedge_crit_edge:          ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then.i716:                                     ; preds = %do.end270
  %usage.i712 = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 4
  %call.i.i.i713 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i712, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @llvm.prefetch.p0(ptr %usage.i712, i32 1, i32 3, i32 1) #9
  %116 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i712, ptr %usage.i712, i32 1, ptr elementtype(i32) %usage.i712) #9, !srcloc !80
  %asmresult.i.i.i.i.i714 = extractvalue { i32, i32 } %116, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i714)
  %cmp.i715 = icmp eq i32 %asmresult.i.i.i.i.i714, 0
  br i1 %cmp.i715, label %if.then1.i717, label %if.then.i716.while.cond.backedge_crit_edge

if.then.i716.while.cond.backedge_crit_edge:       ; preds = %if.then.i716
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then1.i717:                                    ; preds = %if.then.i716
  call void @__sanitizer_cov_trace_pc() #11
  call void @call_rcu(ptr noundef nonnull %server.3, ptr noundef nonnull @afs_vlserver_rcu) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end416, %if.then1.i725, %if.then.i724.while.cond.backedge_crit_edge, %if.then300.while.cond.backedge_crit_edge, %if.then1.i717, %if.then.i716.while.cond.backedge_crit_edge, %do.end270.while.cond.backedge_crit_edge
  %sub.ptr.rhs.cast76 = ptrtoint ptr %b.1 to i32
  %sub.ptr.sub77 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast76
  %cmp78 = icmp ugt i32 %sub.ptr.sub77, 11
  br i1 %cmp78, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end271:                                        ; preds = %if.end241
  %source274 = getelementptr inbounds %struct.afs_addr_list, ptr %call.i699, i32 0, i32 7
  %117 = zext i8 %62 to i16
  %bf.shl277 = shl nuw nsw i16 %117, 8
  %118 = zext i8 %63 to i16
  %bf.set287 = or i16 %bf.shl277, %118
  %119 = ptrtoint ptr %source274 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %bf.set287, ptr %source274, align 4
  %nr_addrs289 = getelementptr inbounds %struct.afs_addr_list, ptr %call.i699, i32 0, i32 4
  %120 = ptrtoint ptr %nr_addrs289 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %nr_addrs289, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp291 = icmp eq i8 %121, 0
  br i1 %cmp291, label %if.then293, label %if.else303

if.then293:                                       ; preds = %if.end271
  call void @afs_put_addrlist(ptr noundef nonnull %call.i699) #9
  %addresses = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 1
  %122 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %addresses, align 4
  %tobool299.not = icmp eq ptr %123, null
  br i1 %tobool299.not, label %if.then300, label %if.then293.if.end363_crit_edge

if.then293.if.end363_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end363

if.then300:                                       ; preds = %if.then293
  %tobool.not.i719 = icmp eq ptr %server.3, null
  br i1 %tobool.not.i719, label %if.then300.while.cond.backedge_crit_edge, label %if.then.i724

if.then300.while.cond.backedge_crit_edge:         ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then.i724:                                     ; preds = %if.then300
  %usage.i720 = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 4
  %call.i.i.i721 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i720, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @llvm.prefetch.p0(ptr %usage.i720, i32 1, i32 3, i32 1) #9
  %124 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i720, ptr %usage.i720, i32 1, ptr elementtype(i32) %usage.i720) #9, !srcloc !80
  %asmresult.i.i.i.i.i722 = extractvalue { i32, i32 } %124, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i722)
  %cmp.i723 = icmp eq i32 %asmresult.i.i.i.i.i722, 0
  br i1 %cmp.i723, label %if.then1.i725, label %if.then.i724.while.cond.backedge_crit_edge

if.then.i724.while.cond.backedge_crit_edge:       ; preds = %if.then.i724
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then1.i725:                                    ; preds = %if.then.i724
  call void @__sanitizer_cov_trace_pc() #11
  call void @call_rcu(ptr noundef nonnull %server.3, ptr noundef nonnull @afs_vlserver_rcu) #9
  br label %while.cond.backedge

if.else303:                                       ; preds = %if.end271
  %lock = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 3
  call void @_raw_write_lock(ptr noundef %lock) #9
  %dep_map306 = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 3, i32 4
  %call.i727 = call i32 @lock_is_held_type(ptr noundef %dep_map306, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i727)
  %tobool308.not = icmp eq i32 %call.i727, 0
  br i1 %tobool308.not, label %land.lhs.true309, label %if.else303.do.end317_crit_edge

if.else303.do.end317_crit_edge:                   ; preds = %if.else303
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end317

land.lhs.true309:                                 ; preds = %if.else303
  %call310 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %land.lhs.true309.do.end317_crit_edge, label %land.lhs.true312

land.lhs.true309.do.end317_crit_edge:             ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end317

land.lhs.true312:                                 ; preds = %land.lhs.true309
  %.b637638 = load i1, ptr @afs_extract_vlserver_list.__warned.22, align 1
  br i1 %.b637638, label %land.lhs.true312.do.end317_crit_edge, label %if.then314

land.lhs.true312.do.end317_crit_edge:             ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end317

if.then314:                                       ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @afs_extract_vlserver_list.__warned.22, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 284, ptr noundef nonnull @.str.12) #9
  br label %do.end317

do.end317:                                        ; preds = %if.then314, %land.lhs.true312.do.end317_crit_edge, %land.lhs.true309.do.end317_crit_edge, %if.else303.do.end317_crit_edge
  %addresses319 = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 1
  %125 = ptrtoint ptr %addresses319 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %addresses319, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  %127 = ptrtoint ptr %addresses319 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %call.i699, ptr %addresses319, align 4
  call void @_raw_write_unlock(ptr noundef %lock) #9
  call void @afs_put_addrlist(ptr noundef %126) #9
  br label %if.end363

if.end363:                                        ; preds = %do.end317, %if.then293.if.end363_crit_edge
  %128 = ptrtoint ptr %nr_servers242 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %nr_servers242, align 4
  %conv366 = zext i8 %129 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp367817.not = icmp eq i8 %129, 0
  br i1 %cmp367817.not, label %if.end363.if.end416_crit_edge, label %if.end363.for.body369_crit_edge

if.end363.for.body369_crit_edge:                  ; preds = %if.end363
  br label %for.body369

if.end363.if.end416_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

for.body369:                                      ; preds = %for.inc399.for.body369_crit_edge, %if.end363.for.body369_crit_edge
  %j.0818 = phi i32 [ %inc400, %for.inc399.for.body369_crit_edge ], [ 0, %if.end363.for.body369_crit_edge ]
  %arrayidx373 = getelementptr %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 8, i32 %j.0818
  %130 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx373, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i651, i16 %131)
  %cmp376 = icmp ult i16 %or.i651, %131
  br i1 %cmp376, label %for.body369.if.then406_crit_edge, label %if.end379

for.body369.if.then406_crit_edge:                 ; preds = %for.body369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then406

if.end379:                                        ; preds = %for.body369
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i651, i16 %131)
  %cmp386 = icmp eq i16 %or.i651, %131
  br i1 %cmp386, label %land.lhs.true388, label %if.end379.for.inc399_crit_edge

if.end379.for.inc399_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc399

land.lhs.true388:                                 ; preds = %if.end379
  %weight393 = getelementptr %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 8, i32 %j.0818, i32 1
  %132 = ptrtoint ptr %weight393 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %weight393, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i657, i16 %133)
  %cmp395 = icmp ugt i16 %or.i657, %133
  br i1 %cmp395, label %land.lhs.true388.if.then406_crit_edge, label %land.lhs.true388.for.inc399_crit_edge

land.lhs.true388.for.inc399_crit_edge:            ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc399

land.lhs.true388.if.then406_crit_edge:            ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then406

for.inc399:                                       ; preds = %land.lhs.true388.for.inc399_crit_edge, %if.end379.for.inc399_crit_edge
  %inc400 = add nuw nsw i32 %j.0818, 1
  %exitcond869.not = icmp eq i32 %inc400, %conv366
  br i1 %exitcond869.not, label %for.inc399.if.end416_crit_edge, label %for.inc399.for.body369_crit_edge

for.inc399.for.body369_crit_edge:                 ; preds = %for.inc399
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body369

for.inc399.if.end416_crit_edge:                   ; preds = %for.inc399
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

if.then406:                                       ; preds = %land.lhs.true388.if.then406_crit_edge, %for.body369.if.then406_crit_edge
  %add.ptr409 = getelementptr %struct.afs_vlserver_entry, ptr %servers407, i32 %j.0818
  %add.ptr410 = getelementptr %struct.afs_vlserver_entry, ptr %add.ptr409, i32 1
  %sub = sub nsw i32 %conv366, %j.0818
  %mul = mul i32 %sub, 12
  %134 = call ptr @memmove(ptr %add.ptr410, ptr %add.ptr409, i32 %mul)
  br label %if.end416

if.end416:                                        ; preds = %if.then406, %for.inc399.if.end416_crit_edge, %if.end363.if.end416_crit_edge
  %j.0778 = phi i32 [ %j.0818, %if.then406 ], [ 0, %if.end363.if.end416_crit_edge ], [ %conv366, %for.inc399.if.end416_crit_edge ]
  %flags = getelementptr inbounds %struct.afs_vlserver, ptr %server.3, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  %arrayidx419 = getelementptr %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 8, i32 %j.0778
  %135 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %or.i651, ptr %arrayidx419, align 4
  %weight424 = getelementptr %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 8, i32 %j.0778, i32 1
  %136 = ptrtoint ptr %weight424 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %or.i657, ptr %weight424, align 2
  %server427 = getelementptr %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 8, i32 %j.0778, i32 3
  %137 = ptrtoint ptr %server427 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %server.3, ptr %server427, align 4
  %138 = ptrtoint ptr %nr_servers242 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nr_servers242, align 4
  %inc429 = add i8 %139, 1
  store i8 %inc429, ptr %nr_servers242, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %do.end126.while.end_crit_edge, %afs_get_vlserverlist.exit.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ -12, %afs_get_vlserverlist.exit.while.end_crit_edge ], [ %ret.0825, %do.end126.while.end_crit_edge ], [ %ret.1, %while.cond.backedge.while.end_crit_edge ]
  %b.2 = phi ptr [ %add.ptr74, %afs_get_vlserverlist.exit.while.end_crit_edge ], [ %incdec.ptr88, %do.end126.while.end_crit_edge ], [ %b.1, %while.cond.backedge.while.end_crit_edge ]
  %cmp430.not = icmp eq ptr %b.2, %add.ptr
  br i1 %cmp430.not, label %if.end458, label %do.body433

do.body433:                                       ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %140 = load i32, ptr @afs_debug, align 4
  %and434 = and i32 %140, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and434)
  %tobool435.not = icmp eq i32 %and434, 0
  br i1 %tobool435.not, label %do.body433.dump_crit_edge, label %do.end445, !prof !82

do.body433.dump_crit_edge:                        ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #11
  br label %dump

do.end445:                                        ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #11
  %141 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i728 = and i32 %141, -16384
  %142 = inttoptr i32 %and.i728 to ptr
  %task448 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %task448 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task448, align 8
  %comm449 = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 101
  %sub.ptr.lhs.cast451 = ptrtoint ptr %b.2 to i32
  %sub.ptr.sub453 = sub i32 %sub.ptr.lhs.cast451, %sub.ptr.lhs.cast
  %call454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm449, i32 noundef %sub.ptr.sub453) #13
  br label %dump

if.end458:                                        ; preds = %while.end
  call void @afs_put_vlserverlist(ptr undef, ptr noundef %25)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %145 = load i32, ptr @afs_debug, align 4
  %and461 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and461)
  %tobool462.not = icmp eq i32 %and461, 0
  br i1 %tobool462.not, label %if.end458.cleanup514_crit_edge, label %do.end472, !prof !82

if.end458.cleanup514_crit_edge:                   ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup514

do.end472:                                        ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #11
  %146 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i729 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i729 to ptr
  %task475 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task475 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task475, align 8
  %comm476 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 101
  %nr_servers478 = getelementptr inbounds %struct.afs_vlserver_list, ptr %call9.i.i.i, i32 0, i32 2
  %150 = ptrtoint ptr %nr_servers478 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %nr_servers478, align 4
  %conv479 = zext i8 %151 to i32
  %call480 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm476, ptr noundef nonnull @.str.7, i32 noundef %conv479) #13
  br label %cleanup514

dump:                                             ; preds = %do.end445, %do.body433.dump_crit_edge, %if.then1.i, %if.then.i709.dump_crit_edge, %if.then239.dump_crit_edge, %if.end8.i.i.i691.dump_crit_edge, %do.end159, %do.body147.dump_crit_edge
  %b.3 = phi ptr [ %b.2, %do.body433.dump_crit_edge ], [ %b.2, %do.end445 ], [ %incdec.ptr88, %do.body147.dump_crit_edge ], [ %incdec.ptr88, %do.end159 ], [ %b.1755, %if.then239.dump_crit_edge ], [ %b.1755767, %if.then.i709.dump_crit_edge ], [ %b.1755767, %if.then1.i ], [ %incdec.ptr88, %if.end8.i.i.i691.dump_crit_edge ]
  %ret.2 = phi i32 [ %ret.0.lcssa, %do.body433.dump_crit_edge ], [ %ret.0.lcssa, %do.end445 ], [ -93, %do.body147.dump_crit_edge ], [ -93, %do.end159 ], [ %106, %if.then239.dump_crit_edge ], [ %107, %if.then.i709.dump_crit_edge ], [ %107, %if.then1.i ], [ -12, %if.end8.i.i.i691.dump_crit_edge ]
  call void @afs_put_vlserverlist(ptr undef, ptr noundef nonnull %call9.i.i.i)
  call void @afs_put_vlserverlist(ptr undef, ptr noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %ret.2)
  %cmp487.not = icmp eq i32 %ret.2, -12
  br i1 %cmp487.not, label %dump.if.end512_crit_edge, label %dump.do.end492_crit_edge

dump.if.end512_crit_edge:                         ; preds = %dump
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end512

dump.do.end492_crit_edge:                         ; preds = %dump
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = ptrtoint ptr %b.3 to i32
  br label %do.end492

do.end492:                                        ; preds = %dump.do.end492_crit_edge, %dump.thread
  %sub.ptr.lhs.cast494.pre-phi = phi i32 [ %.pre, %dump.do.end492_crit_edge ], [ %sub.ptr.rhs.cast, %dump.thread ]
  %ret.3761 = phi i32 [ %ret.2, %dump.do.end492_crit_edge ], [ -89, %dump.thread ]
  %sub.ptr.sub496 = sub i32 %sub.ptr.lhs.cast494.pre-phi, %sub.ptr.rhs.cast
  %call497 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %sub.ptr.sub496) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_extract_vlserver_list.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_extract_vlserver_list, %if.then508)) #9
          to label %if.end512 [label %if.then508], !srcloc !85

if.then508:                                       ; preds = %do.end492
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %buffer, i32 noundef %buffer_size, i1 noundef zeroext true) #9
  br label %if.end512

if.end512:                                        ; preds = %if.then508, %do.end492, %dump.if.end512_crit_edge
  %ret.3762 = phi i32 [ %ret.3761, %if.then508 ], [ -12, %dump.if.end512_crit_edge ], [ %ret.3761, %do.end492 ]
  %152 = inttoptr i32 %ret.3762 to ptr
  br label %cleanup514

cleanup514:                                       ; preds = %if.end512, %do.end472, %if.end458.cleanup514_crit_edge, %if.end30.cleanup514_crit_edge
  %retval.0 = phi ptr [ %152, %if.end512 ], [ %call9.i.i.i, %do.end472 ], [ %call9.i.i.i, %if.end458.cleanup514_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end30.cleanup514_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_addrlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_addrlist(i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_merge_fs_addr4(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_merge_fs_addr6(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @afs_alloc_vlserver.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/afs/vl_list.c", i32 21, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @afs_alloc_vlserver.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/afs/vl_list.c", i32 22, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @afs_alloc_vlserver.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/afs/vl_list.c", i32 23, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @afs_alloc_vlserver_list.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/afs/vl_list.c", i32 58, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/afs/vl_list.c", i32 169, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @afs_extract_vlserver_list._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_extract_vlserver_list._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/vl_list.c", i32 175, i32 3}
!20 = !{ptr @afs_extract_vlserver_list._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_extract_vlserver_list._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../fs/afs/vl_list.c", i32 194, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/afs/vl_list.c", i32 209, i32 3}
!27 = !{ptr @afs_extract_vlserver_list._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @afs_extract_vlserver_list._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/afs/vl_list.c", i32 221, i32 4}
!31 = !{ptr @afs_extract_vlserver_list._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @afs_extract_vlserver_list._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/afs/vl_list.c", i32 264, i32 4}
!35 = !{ptr @afs_extract_vlserver_list._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @afs_extract_vlserver_list._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../fs/afs/vl_list.c", i32 283, i32 10}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/afs/vl_list.c", i32 316, i32 3}
!41 = !{ptr @afs_extract_vlserver_list._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @afs_extract_vlserver_list._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/afs/vl_list.c", i32 321, i32 2}
!45 = !{ptr @afs_extract_vlserver_list._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @afs_extract_vlserver_list._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/afs/vl_list.c", i32 331, i32 3}
!49 = !{ptr @afs_extract_vlserver_list._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @afs_extract_vlserver_list._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/afs/vl_list.c", i32 332, i32 3}
!53 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @afs_extract_vlserver_list.__UNIQUE_ID_ddebug538, !52, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!55 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/afs/vl_list.c", i32 115, i32 5}
!58 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @afs_extract_vl_addrs._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @afs_extract_vl_addrs._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/afs/vl_list.c", i32 125, i32 5}
!63 = !{ptr @afs_extract_vl_addrs._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @afs_extract_vl_addrs._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/afs/vl_list.c", i32 134, i32 4}
!67 = !{ptr @afs_extract_vl_addrs._entry.40, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @afs_extract_vl_addrs._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148304478}
!80 = !{i64 2148219211, i64 2148219243, i64 2148219272, i64 2148219306, i64 2148219337, i64 2148219360}
!81 = !{i64 2148304707}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148216026, i64 2148216052, i64 2148216081, i64 2148216115, i64 2148216146, i64 2148216169}
!84 = !{i64 2157814029}
!85 = !{i64 2148697841, i64 2148697846, i64 2148697859, i64 2148697903, i64 2148697937, i64 2148697958}
