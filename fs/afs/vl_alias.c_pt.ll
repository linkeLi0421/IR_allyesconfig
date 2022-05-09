; ModuleID = '/llk/IR_all_yes/fs/afs/vl_alias.c_pt.bc'
source_filename = "../fs/afs/vl_alias.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_fs_context = type { i8, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.afs_vl_cursor = type { %struct.afs_addr_cursor, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_cell = type { %union.anon, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.146, i16, i16, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.146 = type { i32, i32, i16, i16 }
%struct.afs_volume = type { %union.anon.149, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.149 = type { i64 }
%struct.afs_server_list = type { [3 x i64], %struct.refcount_struct, i8, i8, i16, i32, %struct.rwlock_t, [0 x %struct.afs_server_entry] }
%struct.afs_server_entry = type { ptr }
%struct.afs_server = type { %struct.callback_head, %union.anon.144, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.145 }
%union.anon.144 = type { %struct.afs_uuid }
%struct.anon.145 = type { i32, i32, i16, i8 }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.143 }
%union.anon.143 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }

@afs_cell_detect_alias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015kAFS: Cell %s is an alias of %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_cell_detect_alias\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/vl_alias.c\00", [46 x i8] zeroinitializer }, align 32
@afs_cell_detect_alias._entry_ptr = internal global ptr @afs_cell_detect_alias._entry, section ".printk_index", align 4
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_do_cell_detect_alias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_do_cell_detect_alias\00", [39 x i8] zeroinitializer }, align 32
@afs_do_cell_detect_alias._entry_ptr = internal global ptr @afs_do_cell_detect_alias._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"root.cell\00", [22 x i8] zeroinitializer }, align 32
@afs_sample_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afs_sample_volume\00", [46 x i8] zeroinitializer }, align 32
@afs_sample_volume._entry_ptr = internal global ptr @afs_sample_volume._entry, section ".printk_index", align 4
@afs_compare_cell_roots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_compare_cell_roots\00", [41 x i8] zeroinitializer }, align 32
@afs_compare_cell_roots._entry_ptr = internal global ptr @afs_compare_cell_roots._entry, section ".printk_index", align 4
@afs_compare_cell_roots.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@afs_compare_cell_roots._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_compare_cell_roots._entry_ptr.13 = internal global ptr @afs_compare_cell_roots._entry.11, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@afs_compare_volume_slists.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@afs_compare_volume_slists.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_compare_volume_slists._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = %d [um %d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_compare_volume_slists\00", [38 x i8] zeroinitializer }, align 32
@afs_compare_volume_slists._entry_ptr = internal global ptr @afs_compare_volume_slists._entry, section ".printk_index", align 4
@afs_compare_fs_alists.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_compare_fs_alists.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@afs_query_for_alias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.22, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_query_for_alias\00", [44 x i8] zeroinitializer }, align 32
@afs_query_for_alias._entry_ptr = internal global ptr @afs_query_for_alias._entry, section ".printk_index", align 4
@afs_query_for_alias._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.22, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_query_for_alias._entry_ptr.24 = internal global ptr @afs_query_for_alias._entry.23, section ".printk_index", align 4
@afs_query_for_alias_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(%s:%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_query_for_alias_one\00", [40 x i8] zeroinitializer }, align 32
@afs_query_for_alias_one._entry_ptr = internal global ptr @afs_query_for_alias_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 380, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 331, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 338, i32 45 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 31, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 160, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 164, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 175, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 695, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 125, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 149, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 238, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 265, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [21 x i8] c"../fs/afs/vl_alias.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 203, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @afs_cell_detect_alias._entry, ptr @afs_cell_detect_alias._entry_ptr, ptr @afs_compare_cell_roots._entry, ptr @afs_compare_cell_roots._entry.11, ptr @afs_compare_cell_roots._entry_ptr, ptr @afs_compare_cell_roots._entry_ptr.13, ptr @afs_compare_volume_slists._entry, ptr @afs_compare_volume_slists._entry_ptr, ptr @afs_do_cell_detect_alias._entry, ptr @afs_do_cell_detect_alias._entry_ptr, ptr @afs_query_for_alias._entry, ptr @afs_query_for_alias._entry.23, ptr @afs_query_for_alias._entry_ptr, ptr @afs_query_for_alias._entry_ptr.24, ptr @afs_query_for_alias_one._entry, ptr @afs_query_for_alias_one._entry_ptr, ptr @afs_sample_volume._entry, ptr @afs_sample_volume._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cell_detect_alias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_cell_detect_alias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_sample_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_compare_cell_roots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_compare_cell_roots._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_compare_volume_slists._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_query_for_alias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_query_for_alias._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_query_for_alias_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_cell_detect_alias(ptr noundef %cell, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %fc.i.i.i.i = alloca %struct.afs_fs_context, align 4
  %fc.i.i = alloca %struct.afs_fs_context, align 4
  %vc.i.i.i = alloca %struct.afs_vl_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %cells_alias_lock = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 15
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cells_alias_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.do.end6.i_crit_edge, label %do.end.i, !prof !73

if.then3.do.end6.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %name.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm.i, ptr noundef nonnull @.str.4, ptr noundef %11) #11
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then3.do.end6.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %vc.i.i.i) #8
  %12 = call ptr @memset(ptr %vc.i.i.i, i32 255, i32 48)
  %call1.i.i.i = call zeroext i1 @afs_begin_vlserver_operation(ptr noundef nonnull %vc.i.i.i, ptr noundef %cell, ptr noundef %key) #8
  br i1 %call1.i.i.i, label %while.cond.preheader.i.i.i, label %yfs_check_canonical_cell_name.exit.thread.i

yfs_check_canonical_cell_name.exit.thread.i:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vc.i.i.i) #8
  br label %if.end10.thread

while.cond.preheader.i.i.i:                       ; preds = %do.end6.i
  %call32128.i.i.i = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc.i.i.i) #8
  br i1 %call32128.i.i.i, label %while.body.lr.ph.lr.ph.i.i.i, label %while.cond.preheader.i.i.i..thread63.sink.split.i.i.i_crit_edge

while.cond.preheader.i.i.i..thread63.sink.split.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread63.sink.split.i.i.i

while.body.lr.ph.lr.ph.i.i.i:                     ; preds = %while.cond.preheader.i.i.i
  %server.i.i.i = getelementptr inbounds %struct.afs_vl_cursor, ptr %vc.i.i.i, i32 0, i32 3
  %error.i.i.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %vc.i.i.i, i32 0, i32 5
  br label %while.body.lr.ph.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end6.i.i.i.while.body.lr.ph.i.i.i_crit_edge, %while.body.lr.ph.lr.ph.i.i.i
  %not_skipped.0.off0.ph31.i.i.i = phi i1 [ false, %while.body.lr.ph.lr.ph.i.i.i ], [ true, %if.end6.i.i.i.while.body.lr.ph.i.i.i_crit_edge ]
  %cell_name.0.ph29.i.i.i = phi ptr [ inttoptr (i32 -89 to ptr), %while.body.lr.ph.lr.ph.i.i.i ], [ %call7.i.i.i, %if.end6.i.i.i.while.body.lr.ph.i.i.i_crit_edge ]
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.then5.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %13 = ptrtoint ptr %server.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.afs_vlserver, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %if.then5.i.i.i, label %if.end6.i.i.i

if.then5.i.i.i:                                   ; preds = %while.body.i.i.i
  %18 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -95, ptr %error.i.i.i, align 4
  %call3.i.i.i = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc.i.i.i) #8
  br i1 %call3.i.i.i, label %if.then5.i.i.i.while.body.i.i.i_crit_edge, label %while.end.i.i.i

if.then5.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

if.end6.i.i.i:                                    ; preds = %while.body.i.i.i
  %call7.i.i.i = call ptr @afs_yfsvl_get_cell_name(ptr noundef nonnull %vc.i.i.i) #8
  %call321.i.i.i = call zeroext i1 @afs_select_vlserver(ptr noundef nonnull %vc.i.i.i) #8
  br i1 %call321.i.i.i, label %if.end6.i.i.i.while.body.lr.ph.i.i.i_crit_edge, label %if.end6.i.i.i..thread63.sink.split.i.i.i_crit_edge

if.end6.i.i.i..thread63.sink.split.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread63.sink.split.i.i.i

if.end6.i.i.i.while.body.lr.ph.i.i.i_crit_edge:   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph.i.i.i

while.end.i.i.i:                                  ; preds = %if.then5.i.i.i
  %call8.i.i.i = call i32 @afs_end_vlserver_operation(ptr noundef nonnull %vc.i.i.i) #8
  br i1 %not_skipped.0.off0.ph31.i.i.i, label %while.end.i.i.i..thread63.i.i.i_crit_edge, label %while.end.i.i.i..thread67.i.i.i_crit_edge

while.end.i.i.i..thread67.i.i.i_crit_edge:        ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread67.i.i.i

while.end.i.i.i..thread63.i.i.i_crit_edge:        ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread63.i.i.i

.thread63.sink.split.i.i.i:                       ; preds = %if.end6.i.i.i..thread63.sink.split.i.i.i_crit_edge, %while.cond.preheader.i.i.i..thread63.sink.split.i.i.i_crit_edge
  %cell_name.0.ph.lcssa4357.ph.i.i.i = phi ptr [ inttoptr (i32 -89 to ptr), %while.cond.preheader.i.i.i..thread63.sink.split.i.i.i_crit_edge ], [ %call7.i.i.i, %if.end6.i.i.i..thread63.sink.split.i.i.i_crit_edge ]
  %call842.i.i.i = call i32 @afs_end_vlserver_operation(ptr noundef nonnull %vc.i.i.i) #8
  br label %.thread63.i.i.i

.thread63.i.i.i:                                  ; preds = %.thread63.sink.split.i.i.i, %while.end.i.i.i..thread63.i.i.i_crit_edge
  %cell_name.0.ph.lcssa4357.i.i.i = phi ptr [ %cell_name.0.ph29.i.i.i, %while.end.i.i.i..thread63.i.i.i_crit_edge ], [ %cell_name.0.ph.lcssa4357.ph.i.i.i, %.thread63.sink.split.i.i.i ]
  %19 = phi i32 [ %call8.i.i.i, %while.end.i.i.i..thread63.i.i.i_crit_edge ], [ %call842.i.i.i, %.thread63.sink.split.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i = icmp slt i32 %19, 0
  %20 = inttoptr i32 %19 to ptr
  br i1 %cmp.i.i.i, label %.thread63.i.i.i..thread67.i.i.i_crit_edge, label %.thread63.i.i.i.afs_vl_get_cell_name.exit.i.i_crit_edge

.thread63.i.i.i.afs_vl_get_cell_name.exit.i.i_crit_edge: ; preds = %.thread63.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_vl_get_cell_name.exit.i.i

.thread63.i.i.i..thread67.i.i.i_crit_edge:        ; preds = %.thread63.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread67.i.i.i

.thread67.i.i.i:                                  ; preds = %.thread63.i.i.i..thread67.i.i.i_crit_edge, %while.end.i.i.i..thread67.i.i.i_crit_edge
  %21 = phi ptr [ %20, %.thread63.i.i.i..thread67.i.i.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %while.end.i.i.i..thread67.i.i.i_crit_edge ]
  br label %afs_vl_get_cell_name.exit.i.i

afs_vl_get_cell_name.exit.i.i:                    ; preds = %.thread67.i.i.i, %.thread63.i.i.i.afs_vl_get_cell_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %21, %.thread67.i.i.i ], [ %cell_name.0.ph.lcssa4357.i.i.i, %.thread63.i.i.i.afs_vl_get_cell_name.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vc.i.i.i) #8
  %cmp.i24.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i.i, label %afs_vl_get_cell_name.exit.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge, label %if.end.i.i

afs_vl_get_cell_name.exit.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge: ; preds = %afs_vl_get_cell_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %yfs_check_canonical_cell_name.exit.i

if.end.i.i:                                       ; preds = %afs_vl_get_cell_name.exit.i.i
  %name.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %22 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i.i, align 8
  %call3.i.i = call i32 @strcmp(ptr noundef %retval.0.i.i.i, ptr noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %retval.0.i.i.i) #8
  br label %if.then6

if.end5.i.i:                                      ; preds = %if.end.i.i
  %24 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net1, align 4
  %call6.i.i = call i32 @strlen(ptr noundef %retval.0.i.i.i) #12
  %call7.i.i = call ptr @afs_lookup_cell(ptr noundef %25, ptr noundef %retval.0.i.i.i, i32 noundef %call6.i.i, ptr noundef null, i1 noundef zeroext false) #8
  call void @kfree(ptr noundef %retval.0.i.i.i) #8
  %cmp.i25.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i.i, label %if.end5.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge, label %if.end11.i.i

if.end5.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %yfs_check_canonical_cell_name.exit.i

if.end11.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %alias_of.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 2
  %26 = ptrtoint ptr %alias_of.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %alias_of.i.i, align 8
  br label %if.then6

yfs_check_canonical_cell_name.exit.i:             ; preds = %if.end5.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge, %afs_vl_get_cell_name.exit.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %retval.0.i.i.i, %afs_vl_get_cell_name.exit.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge ], [ %call7.i.i, %if.end5.i.i.yfs_check_canonical_cell_name.exit.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %retval.0.i.in.i, inttoptr (i32 -95 to ptr)
  br i1 %cmp.not.i, label %if.end9.i, label %yfs_check_canonical_cell_name.exit.i.afs_do_cell_detect_alias.exit_crit_edge

yfs_check_canonical_cell_name.exit.i.afs_do_cell_detect_alias.exit_crit_edge: ; preds = %yfs_check_canonical_cell_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_do_cell_detect_alias.exit

if.end9.i:                                        ; preds = %yfs_check_canonical_cell_name.exit.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fc.i.i) #8
  %27 = getelementptr inbounds i8, ptr %fc.i.i, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4, !annotation !74
  %volnamesz.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i, i32 0, i32 6
  %29 = call ptr @memset(ptr %fc.i.i, i32 0, i32 9)
  %30 = ptrtoint ptr %volnamesz.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %volnamesz.i.i, align 4
  %volname.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %volname.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.5, ptr %volname.i.i, align 4
  %net.i34.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net1, align 4
  %34 = ptrtoint ptr %net.i34.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %net.i34.i, align 4
  %cell2.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %cell2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cell, ptr %cell2.i.i, align 4
  %volume3.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %volume3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %volume3.i.i, align 4
  %key4.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i, i32 0, i32 11
  %37 = ptrtoint ptr %key4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %key, ptr %key4.i.i, align 4
  %call.i.i = call ptr @afs_create_volume(ptr noundef nonnull %fc.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %38 = load i32, ptr @afs_debug, align 4
  %and.i35.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35.i)
  %tobool.not.i.i = icmp eq i32 %and.i35.i, 0
  br i1 %tobool.not.i.i, label %if.end9.i.afs_sample_volume.exit.i_crit_edge, label %do.end.i.i, !prof !73

if.end9.i.afs_sample_volume.exit.i_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_sample_volume.exit.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 101
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm.i.i, ptr noundef nonnull @.str.7, ptr noundef %call.i.i) #11
  br label %afs_sample_volume.exit.i

afs_sample_volume.exit.i:                         ; preds = %do.end.i.i, %if.end9.i.afs_sample_volume.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fc.i.i) #8
  %cmp.i36.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %if.end15.i, label %if.then12.i

if.then12.i:                                      ; preds = %afs_sample_volume.exit.i
  %root_volume13.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 3
  %43 = ptrtoint ptr %root_volume13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %root_volume13.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %44 = load i32, ptr @afs_debug, align 4
  %and.i37.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool.not.i38.i = icmp eq i32 %and.i37.i, 0
  br i1 %tobool.not.i38.i, label %if.then12.i.do.end6.i.i_crit_edge, label %do.end.i42.i, !prof !73

if.then12.i.do.end6.i.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i.i

do.end.i42.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i39.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i39.i to ptr
  %task.i40.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i40.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i40.i, align 8
  %comm.i41.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 101
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm.i41.i, ptr noundef nonnull @.str.9) #11
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i42.i, %if.then12.i.do.end6.i.i_crit_edge
  %49 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %do.end6.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end6.i.i.rcu_read_lock.exit.i.i_crit_edge:     ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end6.i.i
  %call1.i.i43.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i43.i)
  %tobool.not.i.i44.i = icmp eq i32 %call1.i.i43.i, 0
  br i1 %tobool.not.i.i44.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.end6.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call8.i.i = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end17.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end17.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call10.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i.do.end17.i.i_crit_edge, label %land.lhs.true12.i.i

land.lhs.true.i.i.do.end17.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i
  %.b91.i.i = load i1, ptr @afs_compare_cell_roots.__warned, align 1
  br i1 %.b91.i.i, label %land.lhs.true12.i.i.do.end17.i.i_crit_edge, label %if.then14.i.i

land.lhs.true12.i.i.do.end17.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_compare_cell_roots.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 164, ptr noundef nonnull @.str.10) #8
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.then14.i.i, %land.lhs.true12.i.i.do.end17.i.i_crit_edge, %land.lhs.true.i.i.do.end17.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end17.i.i_crit_edge
  %53 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net1, align 4
  %proc_cells.i.i = getelementptr inbounds %struct.afs_net, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %proc_cells.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %proc_cells.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %56, null
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 -72
  %tobool26.not117120.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool26.not117.i.i = or i1 %tobool24.not.i.i, %tobool26.not117120.i.i
  br i1 %tobool26.not117.i.i, label %do.end17.i.i.for.end.i.i_crit_edge, label %do.end17.i.i.for.body.i.i_crit_edge

do.end17.i.i.for.body.i.i_crit_edge:              ; preds = %do.end17.i.i
  br label %for.body.i.i

do.end17.i.i.for.end.i.i_crit_edge:               ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end17.i.i.for.body.i.i_crit_edge
  %p.0118.i.i = phi ptr [ %add.ptr50.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end17.i.i.for.body.i.i_crit_edge ]
  %cmp.i46.i = icmp eq ptr %p.0118.i.i, %cell
  br i1 %cmp.i46.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %alias_of.i47.i = getelementptr inbounds %struct.afs_cell, ptr %p.0118.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %alias_of.i47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %alias_of.i47.i, align 8
  %tobool27.not.i.i = icmp eq ptr %58, null
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end29.i.i:                                     ; preds = %lor.lhs.false.i.i
  %root_volume.i.i = getelementptr inbounds %struct.afs_cell, ptr %p.0118.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %root_volume.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %root_volume.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %60, null
  br i1 %tobool30.not.i.i, label %if.end29.i.i.for.inc.i.i_crit_edge, label %if.end32.i.i

if.end29.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %61 = ptrtoint ptr %root_volume13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %root_volume13.i, align 4
  %call35.i.i = call fastcc i32 @afs_compare_volume_slists(ptr noundef %62, ptr noundef nonnull %60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %cmp36.not.i.i, label %if.end32.i.i.for.inc.i.i_crit_edge, label %is_alias.i.i

if.end32.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end32.i.i.for.inc.i.i_crit_edge, %if.end29.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %proc_link.i.i = getelementptr inbounds %struct.afs_cell, ptr %p.0118.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %proc_link.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %proc_link.i.i, align 8
  %tobool46.not.i.i = icmp eq ptr %64, null
  %add.ptr50.i.i = getelementptr i8, ptr %64, i32 -72
  %tobool26.not123.i.i = icmp eq ptr %add.ptr50.i.i, null
  %tobool26.not.i.i = or i1 %tobool46.not.i.i, %tobool26.not123.i.i
  br i1 %tobool26.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end17.i.i.for.end.i.i_crit_edge
  %call.i93.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i93.i.i, label %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i96.i.i

for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i96.i.i:                            ; preds = %for.end.i.i
  %call1.i94.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94.i.i)
  %tobool.not.i95.i.i = icmp eq i32 %call1.i94.i.i, 0
  br i1 %tobool.not.i95.i.i, label %land.lhs.true.i96.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i98.i.i

land.lhs.true.i96.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i98.i.i:                           ; preds = %land.lhs.true.i96.i.i
  %.b4.i97.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97.i.i, label %land.lhs.true2.i98.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i99.i.i

land.lhs.true2.i98.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i98.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

if.then.i99.i.i:                                  ; preds = %land.lhs.true2.i98.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i99.i.i, %land.lhs.true2.i98.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i96.i.i.rcu_read_unlock.exit.i.i_crit_edge, %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !76
  %65 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i100.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i100.i.i to ptr
  %preempt_count.i.i.i.i101.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i101.i.i, align 4
  %sub.i.i.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i101.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %69 = load i32, ptr @afs_debug, align 4
  %and55.i.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %rcu_read_unlock.exit.i.i.if.then6_crit_edge, label %do.end66.i.i, !prof !73

rcu_read_unlock.exit.i.i.if.then6_crit_edge:      ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

do.end66.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i102.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i102.i.i to ptr
  %task69.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task69.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task69.i.i, align 8
  %comm70.i.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 101
  %call72.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm70.i.i, ptr noundef nonnull @.str.9) #11
  br label %if.then6

is_alias.i.i:                                     ; preds = %if.end32.i.i
  %call.i103.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i103.i.i, label %is_alias.i.i.rcu_read_unlock.exit113.i.i_crit_edge, label %land.lhs.true.i106.i.i

is_alias.i.i.rcu_read_unlock.exit113.i.i_crit_edge: ; preds = %is_alias.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit113.i.i

land.lhs.true.i106.i.i:                           ; preds = %is_alias.i.i
  %call1.i104.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104.i.i)
  %tobool.not.i105.i.i = icmp eq i32 %call1.i104.i.i, 0
  br i1 %tobool.not.i105.i.i, label %land.lhs.true.i106.i.i.rcu_read_unlock.exit113.i.i_crit_edge, label %land.lhs.true2.i108.i.i

land.lhs.true.i106.i.i.rcu_read_unlock.exit113.i.i_crit_edge: ; preds = %land.lhs.true.i106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit113.i.i

land.lhs.true2.i108.i.i:                          ; preds = %land.lhs.true.i106.i.i
  %.b4.i107.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107.i.i, label %land.lhs.true2.i108.i.i.rcu_read_unlock.exit113.i.i_crit_edge, label %if.then.i109.i.i

land.lhs.true2.i108.i.i.rcu_read_unlock.exit113.i.i_crit_edge: ; preds = %land.lhs.true2.i108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit113.i.i

if.then.i109.i.i:                                 ; preds = %land.lhs.true2.i108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit113.i.i

rcu_read_unlock.exit113.i.i:                      ; preds = %if.then.i109.i.i, %land.lhs.true2.i108.i.i.rcu_read_unlock.exit113.i.i_crit_edge, %land.lhs.true.i106.i.i.rcu_read_unlock.exit113.i.i_crit_edge, %is_alias.i.i.rcu_read_unlock.exit113.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !76
  %74 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i110.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i110.i.i to ptr
  %preempt_count.i.i.i.i111.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i111.i.i, align 4
  %sub.i.i.i112.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i112.i.i, ptr %preempt_count.i.i.i.i111.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call76.i.i = call ptr @afs_use_cell(ptr noundef nonnull %p.0118.i.i, i32 noundef 27) #8
  %alias_of77.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 2
  %78 = ptrtoint ptr %alias_of77.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call76.i.i, ptr %alias_of77.i.i, align 8
  br label %if.then6

if.end15.i:                                       ; preds = %afs_sample_volume.exit.i
  %cmp17.not.i = icmp eq ptr %call.i.i, inttoptr (i32 -123 to ptr)
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end15.i.afs_do_cell_detect_alias.exit_crit_edge

if.end15.i.afs_do_cell_detect_alias.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_do_cell_detect_alias.exit

if.end20.i:                                       ; preds = %if.end15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %79 = load i32, ptr @afs_debug, align 4
  %and.i49.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49.i)
  %tobool.not.i50.i = icmp eq i32 %and.i49.i, 0
  br i1 %tobool.not.i50.i, label %if.end20.i.do.end6.i60.i_crit_edge, label %do.end.i56.i, !prof !73

if.end20.i.do.end6.i60.i_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i60.i

do.end.i56.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i51.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i51.i to ptr
  %task.i52.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i52.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i52.i, align 8
  %comm.i53.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 101
  %name.i54.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %84 = ptrtoint ptr %name.i54.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name.i54.i, align 8
  %call4.i55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm.i53.i, ptr noundef nonnull @.str.22, ptr noundef %85) #11
  br label %do.end6.i60.i

do.end6.i60.i:                                    ; preds = %do.end.i56.i, %if.end20.i.do.end6.i60.i_crit_edge
  %86 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net1, align 4
  %proc_cells_lock.i.i = getelementptr inbounds %struct.afs_net, ptr %87, i32 0, i32 16
  %call7.i58.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %proc_cells_lock.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i58.i)
  %cmp.i59.i = icmp slt i32 %call7.i58.i, 0
  br i1 %cmp.i59.i, label %do.end6.i60.i.if.end10.thread_crit_edge, label %if.end9.i.i

do.end6.i60.i.if.end10.thread_crit_edge:          ; preds = %do.end6.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.thread

if.end9.i.i:                                      ; preds = %do.end6.i60.i
  %88 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net1, align 4
  %proc_cells.i61.i = getelementptr inbounds %struct.afs_net, ptr %89, i32 0, i32 17
  %90 = ptrtoint ptr %proc_cells.i61.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %proc_cells.i61.i, align 4
  %tobool12.not.i.i = icmp eq ptr %91, null
  %add.ptr.i62.i = getelementptr i8, ptr %91, i32 -72
  %tobool14.not112115.i.i = icmp eq ptr %add.ptr.i62.i, null
  %tobool14.not112.i.i = or i1 %tobool12.not.i.i, %tobool14.not112115.i.i
  br i1 %tobool14.not112.i.i, label %if.end9.i.i.for.end.i76.i_crit_edge, label %for.body.lr.ph.i63.i

if.end9.i.i.for.end.i76.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i76.i

for.body.lr.ph.i63.i:                             ; preds = %if.end9.i.i
  %name.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %92 = getelementptr inbounds i8, ptr %fc.i.i.i.i, i32 8
  %volnamesz.i.i.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i.i.i, i32 0, i32 6
  %volname.i.i.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i.i.i, i32 0, i32 7
  %net.i.i.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i.i.i, i32 0, i32 8
  %cell2.i.i.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i.i.i, i32 0, i32 9
  %volume3.i.i.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i.i.i, i32 0, i32 10
  %key4.i.i.i.i = getelementptr inbounds %struct.afs_fs_context, ptr %fc.i.i.i.i, i32 0, i32 11
  br label %for.body.i64.i

for.body.i64.i:                                   ; preds = %for.inc.i75.i.for.body.i64.i_crit_edge, %for.body.lr.ph.i63.i
  %p.0113.i.i = phi ptr [ %add.ptr.i62.i, %for.body.lr.ph.i63.i ], [ %add.ptr50.i74.i, %for.inc.i75.i.for.body.i64.i_crit_edge ]
  %cmp15.i.i = icmp eq ptr %p.0113.i.i, %cell
  br i1 %cmp15.i.i, label %for.body.i64.i.for.inc.i75.i_crit_edge, label %lor.lhs.false.i66.i

for.body.i64.i.for.inc.i75.i_crit_edge:           ; preds = %for.body.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i75.i

lor.lhs.false.i66.i:                              ; preds = %for.body.i64.i
  %alias_of.i65.i = getelementptr inbounds %struct.afs_cell, ptr %p.0113.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %alias_of.i65.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %alias_of.i65.i, align 8
  %tobool16.not.i.i = icmp eq ptr %94, null
  br i1 %tobool16.not.i.i, label %do.end21.i.i, label %lor.lhs.false.i66.i.for.inc.i75.i_crit_edge

lor.lhs.false.i66.i.for.inc.i75.i_crit_edge:      ; preds = %lor.lhs.false.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i75.i

do.end21.i.i:                                     ; preds = %lor.lhs.false.i66.i
  %volumes.i.i = getelementptr inbounds %struct.afs_cell, ptr %p.0113.i.i, i32 0, i32 17
  %95 = ptrtoint ptr %volumes.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %volumes.i.i, align 4
  %cmp23.i.i = icmp eq ptr %96, null
  br i1 %cmp23.i.i, label %do.end21.i.i.for.inc.i75.i_crit_edge, label %if.end25.i.i

do.end21.i.i.for.inc.i75.i_crit_edge:             ; preds = %do.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i75.i

if.end25.i.i:                                     ; preds = %do.end21.i.i
  %root_volume.i67.i = getelementptr inbounds %struct.afs_cell, ptr %p.0113.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %root_volume.i67.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %root_volume.i67.i, align 4
  %tobool26.not.i68.i = icmp eq ptr %98, null
  br i1 %tobool26.not.i68.i, label %if.end28.i.i, label %if.end25.i.i.for.inc.i75.i_crit_edge

if.end25.i.i.for.inc.i75.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i75.i

if.end28.i.i:                                     ; preds = %if.end25.i.i
  %call29.i.i = call ptr @afs_use_cell(ptr noundef nonnull %p.0113.i.i, i32 noundef 28) #8
  %99 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %net1, align 4
  %proc_cells_lock31.i.i = getelementptr inbounds %struct.afs_net, ptr %100, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %proc_cells_lock31.i.i) #8
  %lock.i.i.i.i = getelementptr inbounds %struct.afs_cell, ptr %p.0113.i.i, i32 0, i32 19, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i.i) #8
  %101 = ptrtoint ptr %volumes.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %volumes.i.i, align 4
  %cmp.i.i69.i = icmp eq ptr %102, null
  br i1 %cmp.i.i69.i, label %if.end.thread.i.i.i, label %if.end.i.i.i

if.end.thread.i.i.i:                              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i) #8
  br label %if.end35.i.i

if.end.i.i.i:                                     ; preds = %if.end28.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %102, i32 -28
  %call.i.i70.i = call ptr @afs_get_volume(ptr noundef %add.ptr.i.i.i, i32 noundef 5) #8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i) #8
  %tobool.not.i.i71.i = icmp eq ptr %call.i.i70.i, null
  br i1 %tobool.not.i.i71.i, label %if.end.i.i.i.if.end35.i.i_crit_edge, label %do.body7.i.i.i

if.end.i.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i.i

do.body7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %103 = load i32, ptr @afs_debug, align 4
  %and.i103.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and.i103.i.i, 0
  br i1 %tobool8.not.i.i.i, label %do.body7.i.i.i.do.end22.i.i.i_crit_edge, label %do.end14.i.i.i, !prof !73

do.body7.i.i.i.do.end22.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i.i.i

do.end14.i.i.i:                                   ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task.i.i.i, align 8
  %comm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 101
  %108 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name.i.i.i, align 8
  %name17.i.i.i = getelementptr inbounds %struct.afs_volume, ptr %call.i.i70.i, i32 0, i32 17
  %call19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm.i.i.i, ptr noundef nonnull @.str.26, ptr noundef %109, ptr noundef %name17.i.i.i) #11
  br label %do.end22.i.i.i

do.end22.i.i.i:                                   ; preds = %do.end14.i.i.i, %do.body7.i.i.i.do.end22.i.i.i_crit_edge
  %name23.i.i.i = getelementptr inbounds %struct.afs_volume, ptr %call.i.i70.i, i32 0, i32 17
  %name_len.i.i.i = getelementptr inbounds %struct.afs_volume, ptr %call.i.i70.i, i32 0, i32 16
  %110 = ptrtoint ptr %name_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %name_len.i.i.i, align 2
  %conv.i.i.i = zext i8 %111 to i32
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fc.i.i.i.i) #8
  %112 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %92, align 4, !annotation !74
  %113 = call ptr @memset(ptr %fc.i.i.i.i, i32 0, i32 9)
  %114 = ptrtoint ptr %volnamesz.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i.i.i, ptr %volnamesz.i.i.i.i, align 4
  %115 = ptrtoint ptr %volname.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %name23.i.i.i, ptr %volname.i.i.i.i, align 4
  %116 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %net1, align 4
  %118 = ptrtoint ptr %net.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %net.i.i.i.i, align 4
  %119 = ptrtoint ptr %cell2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %cell, ptr %cell2.i.i.i.i, align 4
  %120 = ptrtoint ptr %volume3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %volume3.i.i.i.i, align 4
  %121 = ptrtoint ptr %key4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %key, ptr %key4.i.i.i.i, align 4
  %call.i67.i.i.i = call ptr @afs_create_volume(ptr noundef nonnull %fc.i.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %122 = load i32, ptr @afs_debug, align 4
  %and.i68.i.i.i = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68.i.i.i)
  %tobool.not.i69.i.i.i = icmp eq i32 %and.i68.i.i.i, 0
  br i1 %tobool.not.i69.i.i.i, label %do.end22.i.i.i.afs_sample_volume.exit.i.i.i_crit_edge, label %do.end.i.i.i.i, !prof !73

do.end22.i.i.i.afs_sample_volume.exit.i.i.i_crit_edge: ; preds = %do.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_sample_volume.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task.i.i.i.i, align 8
  %comm.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 101
  %call9.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm.i.i.i.i, ptr noundef nonnull @.str.7, ptr noundef %call.i67.i.i.i) #11
  br label %afs_sample_volume.exit.i.i.i

afs_sample_volume.exit.i.i.i:                     ; preds = %do.end.i.i.i.i, %do.end22.i.i.i.afs_sample_volume.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fc.i.i.i.i) #8
  %cmp.i.i.i.i = icmp ugt ptr %call.i67.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then27.i.i.i, label %if.end34.i.i.i

if.then27.i.i.i:                                  ; preds = %afs_sample_volume.exit.i.i.i
  %127 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net1, align 4
  call void @afs_put_volume(ptr noundef %128, ptr noundef nonnull %call.i.i70.i, i32 noundef 11) #8
  %cmp29.not.i.i.i = icmp eq ptr %call.i67.i.i.i, inttoptr (i32 -123 to ptr)
  br i1 %cmp29.not.i.i.i, label %if.then27.i.i.i.if.end35.i.i_crit_edge, label %if.then27.i.i.i.is_alias.i77.i_crit_edge

if.then27.i.i.i.is_alias.i77.i_crit_edge:         ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_alias.i77.i

if.then27.i.i.i.if.end35.i.i_crit_edge:           ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i.i

if.end34.i.i.i:                                   ; preds = %afs_sample_volume.exit.i.i.i
  %129 = ptrtoint ptr %call.i.i70.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %call.i.i70.i, align 8
  %131 = ptrtoint ptr %call.i67.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %call.i67.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %130, i64 %132)
  %cmp35.i.i.i = icmp eq i64 %130, %132
  br i1 %cmp35.i.i.i, label %if.then37.i.i.i, label %if.end34.i.i.i.afs_query_for_alias_one.exit.i.i_crit_edge

if.end34.i.i.i.afs_query_for_alias_one.exit.i.i_crit_edge: ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_query_for_alias_one.exit.i.i

if.then37.i.i.i:                                  ; preds = %if.end34.i.i.i
  %133 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i.i.i.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %136, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i.i, label %if.then37.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then37.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %if.then37.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then37.i.i.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #8
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then37.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %call38.i.i.i = call fastcc i32 @afs_compare_volume_slists(ptr noundef %call.i67.i.i.i, ptr noundef nonnull %call.i.i70.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i.i)
  %tobool39.not.i.i.i = icmp ne i32 %call38.i.i.i, 0
  %spec.select.i.i.i = zext i1 %tobool39.not.i.i.i to i32
  %call.i70.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i70.i.i.i, label %rcu_read_lock.exit.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i73.i.i.i

rcu_read_lock.exit.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i73.i.i.i:                          ; preds = %rcu_read_lock.exit.i.i.i
  %call1.i71.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71.i.i.i)
  %tobool.not.i72.i.i.i = icmp eq i32 %call1.i71.i.i.i, 0
  br i1 %tobool.not.i72.i.i.i, label %land.lhs.true.i73.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i75.i.i.i

land.lhs.true.i73.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i75.i.i.i:                         ; preds = %land.lhs.true.i73.i.i.i
  %.b4.i74.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74.i.i.i, label %land.lhs.true2.i75.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i76.i.i.i

land.lhs.true2.i75.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i.i

if.then.i76.i.i.i:                                ; preds = %land.lhs.true2.i75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i76.i.i.i, %land.lhs.true2.i75.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i73.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !76
  %137 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i77.i.i.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i77.i.i.i to ptr
  %preempt_count.i.i.i.i78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i.i.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i.i.i78.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %140, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i78.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %afs_query_for_alias_one.exit.i.i

afs_query_for_alias_one.exit.i.i:                 ; preds = %rcu_read_unlock.exit.i.i.i, %if.end34.i.i.i.afs_query_for_alias_one.exit.i.i_crit_edge
  %ret.1.i.i.i = phi i32 [ %spec.select.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ 0, %if.end34.i.i.i.afs_query_for_alias_one.exit.i.i_crit_edge ]
  %141 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %net1, align 4
  call void @afs_put_volume(ptr noundef %142, ptr noundef %call.i67.i.i.i, i32 noundef 11) #8
  %143 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %net1, align 4
  call void @afs_put_volume(ptr noundef %144, ptr noundef nonnull %call.i.i70.i, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i.i)
  %cmp33.not.i.i = icmp eq i32 %ret.1.i.i.i, 0
  br i1 %cmp33.not.i.i, label %afs_query_for_alias_one.exit.i.i.if.end35.i.i_crit_edge, label %afs_query_for_alias_one.exit.i.i.is_alias.i77.i_crit_edge

afs_query_for_alias_one.exit.i.i.is_alias.i77.i_crit_edge: ; preds = %afs_query_for_alias_one.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_alias.i77.i

afs_query_for_alias_one.exit.i.i.if.end35.i.i_crit_edge: ; preds = %afs_query_for_alias_one.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %afs_query_for_alias_one.exit.i.i.if.end35.i.i_crit_edge, %if.then27.i.i.i.if.end35.i.i_crit_edge, %if.end.i.i.i.if.end35.i.i_crit_edge, %if.end.thread.i.i.i
  %145 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %net1, align 4
  %proc_cells_lock37.i.i = getelementptr inbounds %struct.afs_net, ptr %146, i32 0, i32 16
  %call38.i.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %proc_cells_lock37.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %cmp39.i.i = icmp slt i32 %call38.i.i, 0
  %147 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %net1, align 4
  call void @afs_unuse_cell(ptr noundef %148, ptr noundef nonnull %p.0113.i.i, i32 noundef 16) #8
  br i1 %cmp39.i.i, label %if.end35.i.i.if.end10.thread_crit_edge, label %if.end35.i.i.for.inc.i75.i_crit_edge

if.end35.i.i.for.inc.i75.i_crit_edge:             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i75.i

if.end35.i.i.if.end10.thread_crit_edge:           ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.thread

for.inc.i75.i:                                    ; preds = %if.end35.i.i.for.inc.i75.i_crit_edge, %if.end25.i.i.for.inc.i75.i_crit_edge, %do.end21.i.i.for.inc.i75.i_crit_edge, %lor.lhs.false.i66.i.for.inc.i75.i_crit_edge, %for.body.i64.i.for.inc.i75.i_crit_edge
  %proc_link.i72.i = getelementptr inbounds %struct.afs_cell, ptr %p.0113.i.i, i32 0, i32 6
  %149 = ptrtoint ptr %proc_link.i72.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %proc_link.i72.i, align 8
  %tobool46.not.i73.i = icmp eq ptr %150, null
  %add.ptr50.i74.i = getelementptr i8, ptr %150, i32 -72
  %tobool14.not122.i.i = icmp eq ptr %add.ptr50.i74.i, null
  %tobool14.not.i.i = or i1 %tobool46.not.i73.i, %tobool14.not122.i.i
  br i1 %tobool14.not.i.i, label %for.inc.i75.i.for.end.i76.i_crit_edge, label %for.inc.i75.i.for.body.i64.i_crit_edge

for.inc.i75.i.for.body.i64.i_crit_edge:           ; preds = %for.inc.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i64.i

for.inc.i75.i.for.end.i76.i_crit_edge:            ; preds = %for.inc.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i76.i

for.end.i76.i:                                    ; preds = %for.inc.i75.i.for.end.i76.i_crit_edge, %if.end9.i.i.for.end.i76.i_crit_edge
  %151 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %net1, align 4
  %proc_cells_lock55.i.i = getelementptr inbounds %struct.afs_net, ptr %152, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %proc_cells_lock55.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %153 = load i32, ptr @afs_debug, align 4
  %and57.i.i = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %for.end.i76.i.if.then6_crit_edge, label %do.end68.i.i, !prof !73

for.end.i76.i.if.then6_crit_edge:                 ; preds = %for.end.i76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

do.end68.i.i:                                     ; preds = %for.end.i76.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i104.i.i = and i32 %154, -16384
  %155 = inttoptr i32 %and.i104.i.i to ptr
  %task71.i.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %task71.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task71.i.i, align 8
  %comm72.i.i = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 101
  %call74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm72.i.i, ptr noundef nonnull @.str.22) #11
  br label %if.then6

is_alias.i77.i:                                   ; preds = %afs_query_for_alias_one.exit.i.i.is_alias.i77.i_crit_edge, %if.then27.i.i.i.is_alias.i77.i_crit_edge
  %alias_of78.i.i = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 2
  %158 = ptrtoint ptr %alias_of78.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %p.0113.i.i, ptr %alias_of78.i.i, align 8
  br label %if.then6

afs_do_cell_detect_alias.exit:                    ; preds = %if.end15.i.afs_do_cell_detect_alias.exit_crit_edge, %yfs_check_canonical_cell_name.exit.i.afs_do_cell_detect_alias.exit_crit_edge
  %retval.0.i.in = phi ptr [ %retval.0.i.in.i, %yfs_check_canonical_cell_name.exit.i.afs_do_cell_detect_alias.exit_crit_edge ], [ %call.i.i, %if.end15.i.afs_do_cell_detect_alias.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %cmp5 = icmp sgt ptr %retval.0.i.in, inttoptr (i32 -1 to ptr)
  br i1 %cmp5, label %afs_do_cell_detect_alias.exit.if.then6_crit_edge, label %afs_do_cell_detect_alias.exit.if.end10.thread_crit_edge

afs_do_cell_detect_alias.exit.if.end10.thread_crit_edge: ; preds = %afs_do_cell_detect_alias.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.thread

afs_do_cell_detect_alias.exit.if.then6_crit_edge: ; preds = %afs_do_cell_detect_alias.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %afs_do_cell_detect_alias.exit.if.then6_crit_edge, %is_alias.i77.i, %do.end68.i.i, %for.end.i76.i.if.then6_crit_edge, %rcu_read_unlock.exit113.i.i, %do.end66.i.i, %rcu_read_unlock.exit.i.i.if.then6_crit_edge, %if.end11.i.i, %if.then4.i.i
  %retval.0.i31 = phi i32 [ %retval.0.i, %afs_do_cell_detect_alias.exit.if.then6_crit_edge ], [ 0, %if.then4.i.i ], [ 1, %if.end11.i.i ], [ 0, %for.end.i76.i.if.then6_crit_edge ], [ 0, %do.end68.i.i ], [ 1, %is_alias.i77.i ], [ 0, %rcu_read_unlock.exit.i.i.if.then6_crit_edge ], [ 0, %do.end66.i.i ], [ 1, %rcu_read_unlock.exit113.i.i ]
  %call.i.i28 = call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #8
  %159 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 4, ptr elementtype(i32) %flags) #8, !srcloc !78
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %alias_of = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 2
  %160 = ptrtoint ptr %alias_of to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %alias_of, align 8
  %tobool9.not = icmp ne ptr %161, null
  %cond = zext i1 %tobool9.not to i32
  br label %if.end10

if.end10.thread:                                  ; preds = %afs_do_cell_detect_alias.exit.if.end10.thread_crit_edge, %if.end35.i.i.if.end10.thread_crit_edge, %do.end6.i60.i.if.end10.thread_crit_edge, %yfs_check_canonical_cell_name.exit.thread.i
  %ret.0.ph = phi i32 [ %retval.0.i, %afs_do_cell_detect_alias.exit.if.end10.thread_crit_edge ], [ -512, %do.end6.i60.i.if.end10.thread_crit_edge ], [ -512, %yfs_check_canonical_cell_name.exit.thread.i ], [ -512, %if.end35.i.i.if.end10.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %cells_alias_lock) #8
  br label %cleanup

if.end10:                                         ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %retval.0.i31, %if.then6 ], [ %cond, %if.else ]
  call void @mutex_unlock(ptr noundef %cells_alias_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp12 = icmp eq i32 %ret.0, 1
  br i1 %cmp12, label %do.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %162 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %name, align 8
  %alias_of14 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 2
  %164 = ptrtoint ptr %alias_of14 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %alias_of14, align 8
  %name15 = getelementptr inbounds %struct.afs_cell, ptr %165, i32 0, i32 28
  %166 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %name15, align 8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %163, ptr noundef %167) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %if.end10.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ 1, %do.end ], [ %ret.0, %if.end10.cleanup_crit_edge ], [ %ret.0.ph, %if.end10.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_lookup_cell(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vlserver_operation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_select_vlserver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_yfsvl_get_cell_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_end_vlserver_operation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_create_volume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_compare_volume_slists(ptr noundef %vol_a, ptr noundef %vol_b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %servers = getelementptr inbounds %struct.afs_volume, ptr %vol_a, i32 0, i32 9
  %0 = ptrtoint ptr %servers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %servers, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b100 = load i1, ptr @afs_compare_volume_slists.__warned, align 1
  br i1 %.b100, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_compare_volume_slists.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 125, ptr noundef nonnull @.str.16) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %servers13 = getelementptr inbounds %struct.afs_volume, ptr %vol_b, i32 0, i32 9
  %2 = ptrtoint ptr %servers13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %servers13, align 4
  %call15 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %do.end7.do.end25_crit_edge

do.end7.do.end25_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

land.lhs.true17:                                  ; preds = %do.end7
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b9899 = load i1, ptr @afs_compare_volume_slists.__warned.17, align 1
  br i1 %.b9899, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_compare_volume_slists.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 126, ptr noundef nonnull @.str.16) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %do.end7.do.end25_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp29.not = icmp eq i64 %5, %7
  br i1 %cmp29.not, label %for.cond, label %do.end25.cleanup_crit_edge

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %do.end25
  %arrayidx.1 = getelementptr [3 x i64], ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.1, align 8
  %arrayidx28.1 = getelementptr [3 x i64], ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx28.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp29.not.1 = icmp eq i64 %9, %11
  br i1 %cmp29.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr [3 x i64], ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.2, align 8
  %arrayidx28.2 = getelementptr [3 x i64], ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx28.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp29.not.2 = icmp eq i64 %13, %15
  br i1 %cmp29.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %nr_servers34 = getelementptr inbounds %struct.afs_server_list, ptr %3, i32 0, i32 2
  %nr_servers = getelementptr inbounds %struct.afs_server_list, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp32103.not = icmp eq i8 %17, 0
  br i1 %cmp32103.not, label %for.cond.2.do.body59_crit_edge, label %for.cond.2.land.rhs_crit_edge

for.cond.2.land.rhs_crit_edge:                    ; preds = %for.cond.2
  br label %land.rhs

for.cond.2.do.body59_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

land.rhs:                                         ; preds = %if.end58.land.rhs_crit_edge, %for.cond.2.land.rhs_crit_edge
  %a.0107 = phi i32 [ %a.1, %if.end58.land.rhs_crit_edge ], [ 0, %for.cond.2.land.rhs_crit_edge ]
  %addr_matches.0106 = phi i32 [ %addr_matches.1, %if.end58.land.rhs_crit_edge ], [ 0, %for.cond.2.land.rhs_crit_edge ]
  %uuid_matches.0105 = phi i32 [ %uuid_matches.1, %if.end58.land.rhs_crit_edge ], [ 0, %for.cond.2.land.rhs_crit_edge ]
  %b.0104 = phi i32 [ %b.1, %if.end58.land.rhs_crit_edge ], [ 0, %for.cond.2.land.rhs_crit_edge ]
  %18 = ptrtoint ptr %nr_servers34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_servers34, align 4
  %conv35 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %b.0104, i32 %conv35)
  %cmp36 = icmp slt i32 %b.0104, %conv35
  br i1 %cmp36, label %while.body, label %land.rhs.do.body59_crit_edge

land.rhs.do.body59_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

while.body:                                       ; preds = %land.rhs
  %arrayidx39 = getelementptr %struct.afs_server_list, ptr %1, i32 0, i32 7, i32 %a.0107
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 4
  %arrayidx41 = getelementptr %struct.afs_server_list, ptr %3, i32 0, i32 7, i32 %b.0104
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx41, align 4
  %24 = getelementptr inbounds %struct.afs_server, ptr %21, i32 0, i32 1
  %25 = getelementptr inbounds %struct.afs_server, ptr %23, i32 0, i32 1
  %call43 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %24, ptr noundef dereferenceable(16) %25, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc47 = add nsw i32 %a.0107, 1
  br label %if.end58

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp48.not = icmp eq i32 %call43, 0
  br i1 %cmp48.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %inc51 = add nsw i32 %b.0104, 1
  br label %if.end58

if.else52:                                        ; preds = %if.else
  %inc53 = add i32 %uuid_matches.0105, 1
  %addresses.i = getelementptr inbounds %struct.afs_server, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %addresses.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %addresses.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else52.do.end7.i_crit_edge

if.else52.do.end7.i_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.else52
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b60.i = load i1, ptr @afs_compare_fs_alists.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_compare_fs_alists.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 93, ptr noundef nonnull @.str.16) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.else52.do.end7.i_crit_edge
  %addresses13.i = getelementptr inbounds %struct.afs_server, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %addresses13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %addresses13.i, align 8
  %call15.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true17.i, label %do.end7.i.do.end25.i_crit_edge

do.end7.i.do.end25.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25.i

land.lhs.true17.i:                                ; preds = %do.end7.i
  %call18.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.do.end25.i_crit_edge, label %land.lhs.true20.i

land.lhs.true17.i.do.end25.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25.i

land.lhs.true20.i:                                ; preds = %land.lhs.true17.i
  %.b5859.i = load i1, ptr @afs_compare_fs_alists.__warned.20, align 1
  br i1 %.b5859.i, label %land.lhs.true20.i.do.end25.i_crit_edge, label %if.then22.i

land.lhs.true20.i.do.end25.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25.i

if.then22.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_compare_fs_alists.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 94, ptr noundef nonnull @.str.16) #8
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then22.i, %land.lhs.true20.i.do.end25.i_crit_edge, %land.lhs.true17.i.do.end25.i_crit_edge, %do.end7.i.do.end25.i_crit_edge
  %nr_addrs28.i = getelementptr inbounds %struct.afs_addr_list, ptr %29, i32 0, i32 4
  %nr_addrs.i = getelementptr inbounds %struct.afs_addr_list, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_addrs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp67.not.i = icmp eq i8 %31, 0
  br i1 %cmp67.not.i, label %do.end25.i.afs_compare_fs_alists.exit_crit_edge, label %do.end25.i.land.rhs.i_crit_edge

do.end25.i.land.rhs.i_crit_edge:                  ; preds = %do.end25.i
  br label %land.rhs.i

do.end25.i.afs_compare_fs_alists.exit_crit_edge:  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_fs_alists.exit

land.rhs.i:                                       ; preds = %if.end47.i.land.rhs.i_crit_edge, %do.end25.i.land.rhs.i_crit_edge
  %a.073.i = phi i32 [ %a.1.i, %if.end47.i.land.rhs.i_crit_edge ], [ 0, %do.end25.i.land.rhs.i_crit_edge ]
  %b.070.i = phi i32 [ %b.1.i, %if.end47.i.land.rhs.i_crit_edge ], [ 0, %do.end25.i.land.rhs.i_crit_edge ]
  %addr_matches.068.i = phi i32 [ %addr_matches.1.i, %if.end47.i.land.rhs.i_crit_edge ], [ 0, %do.end25.i.land.rhs.i_crit_edge ]
  %32 = ptrtoint ptr %nr_addrs28.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_addrs28.i, align 1
  %conv29.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %b.070.i, i32 %conv29.i)
  %cmp30.i = icmp slt i32 %b.070.i, %conv29.i
  br i1 %cmp30.i, label %while.body.i, label %land.rhs.i.afs_compare_fs_alists.exit_crit_edge

land.rhs.i.afs_compare_fs_alists.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_fs_alists.exit

while.body.i:                                     ; preds = %land.rhs.i
  %transport_type.i.i = getelementptr %struct.afs_addr_list, ptr %27, i32 0, i32 10, i32 %a.073.i, i32 2
  %34 = ptrtoint ptr %transport_type.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %transport_type.i.i, align 4
  %conv.i.i = sext i16 %35 to i32
  %transport_type1.i.i = getelementptr %struct.afs_addr_list, ptr %29, i32 0, i32 10, i32 %b.070.i, i32 2
  %36 = ptrtoint ptr %transport_type1.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_type1.i.i, align 4
  %conv2.i.i = sext i16 %37 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.afs_compare_addrs.exit.i_crit_edge

while.body.i.afs_compare_addrs.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_addrs.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %38 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i16 %35, label %if.else.thread.i [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb16.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %sin_addr.i.i = getelementptr %struct.afs_addr_list, ptr %27, i32 0, i32 10, i32 %a.073.i, i32 4, i32 0, i32 2
  %39 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sin_addr.i.i, align 4
  %sin_addr6.i.i = getelementptr %struct.afs_addr_list, ptr %29, i32 0, i32 10, i32 %b.070.i, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %sin_addr6.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sin_addr6.i.i, align 4
  %sub8.i.i = sub i32 %40, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp.i.i = icmp eq i32 %sub8.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.i.afs_compare_addrs.exit.sink.split.i_crit_edge, label %sw.bb.i.i.afs_compare_addrs.exit.i_crit_edge

sw.bb.i.i.afs_compare_addrs.exit.i_crit_edge:     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_addrs.exit.i

sw.bb.i.i.afs_compare_addrs.exit.sink.split.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_addrs.exit.sink.split.i

sw.bb16.i.i:                                      ; preds = %if.end.i.i
  %sin6_addr.i.i = getelementptr %struct.afs_addr_list, ptr %27, i32 0, i32 10, i32 %a.073.i, i32 4, i32 0, i32 3
  %sin6_addr21.i.i = getelementptr %struct.afs_addr_list, ptr %29, i32 0, i32 10, i32 %b.070.i, i32 4, i32 0, i32 3
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %sin6_addr.i.i, ptr noundef dereferenceable(16) %sin6_addr21.i.i, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp22.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp22.i.i, label %sw.bb16.i.i.afs_compare_addrs.exit.sink.split.i_crit_edge, label %sw.bb16.i.i.afs_compare_addrs.exit.i_crit_edge

sw.bb16.i.i.afs_compare_addrs.exit.i_crit_edge:   ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_addrs.exit.i

sw.bb16.i.i.afs_compare_addrs.exit.sink.split.i_crit_edge: ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_addrs.exit.sink.split.i

if.else.thread.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 76, i32 noundef 9, ptr noundef null) #8
  br label %if.then40.i

afs_compare_addrs.exit.sink.split.i:              ; preds = %sw.bb16.i.i.afs_compare_addrs.exit.sink.split.i_crit_edge, %sw.bb.i.i.afs_compare_addrs.exit.sink.split.i_crit_edge
  %sin_port.i.i = getelementptr %struct.afs_addr_list, ptr %27, i32 0, i32 10, i32 %a.073.i, i32 4, i32 0, i32 1
  %43 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sin_port.i.i, align 2
  %sin_port11.i.i = getelementptr %struct.afs_addr_list, ptr %29, i32 0, i32 10, i32 %b.070.i, i32 4, i32 0, i32 1
  %45 = ptrtoint ptr %sin_port11.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sin_port11.i.i, align 2
  %conv12.i.i = sext i16 %44 to i32
  %conv13.i.i = sext i16 %46 to i32
  %sub14.i.i = sub nsw i32 %conv12.i.i, %conv13.i.i
  br label %afs_compare_addrs.exit.i

afs_compare_addrs.exit.i:                         ; preds = %afs_compare_addrs.exit.sink.split.i, %sw.bb16.i.i.afs_compare_addrs.exit.i_crit_edge, %sw.bb.i.i.afs_compare_addrs.exit.i_crit_edge, %while.body.i.afs_compare_addrs.exit.i_crit_edge
  %diff.2.i.i = phi i32 [ %sub.i.i, %while.body.i.afs_compare_addrs.exit.i_crit_edge ], [ %sub8.i.i, %sw.bb.i.i.afs_compare_addrs.exit.i_crit_edge ], [ %call.i.i, %sw.bb16.i.i.afs_compare_addrs.exit.i_crit_edge ], [ %sub14.i.i, %afs_compare_addrs.exit.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %diff.2.i.i)
  %cmp35.i = icmp slt i32 %diff.2.i.i, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %afs_compare_addrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %a.073.i, 1
  br label %if.end47.i

if.else.i:                                        ; preds = %afs_compare_addrs.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %diff.2.i.i)
  %cmp38.not.i = icmp eq i32 %diff.2.i.i, 0
  br i1 %cmp38.not.i, label %if.else42.i, label %if.else.i.if.then40.i_crit_edge

if.else.i.if.then40.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.else.i.if.then40.i_crit_edge, %if.else.thread.i
  %inc41.i = add nsw i32 %b.070.i, 1
  br label %if.end47.i

if.else42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc43.i = add i32 %addr_matches.068.i, 1
  %inc44.i = add nsw i32 %a.073.i, 1
  %inc45.i = add nsw i32 %b.070.i, 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else42.i, %if.then40.i, %if.then37.i
  %addr_matches.1.i = phi i32 [ %addr_matches.068.i, %if.then37.i ], [ %addr_matches.068.i, %if.then40.i ], [ %inc43.i, %if.else42.i ]
  %b.1.i = phi i32 [ %b.070.i, %if.then37.i ], [ %inc41.i, %if.then40.i ], [ %inc45.i, %if.else42.i ]
  %a.1.i = phi i32 [ %inc.i, %if.then37.i ], [ %a.073.i, %if.then40.i ], [ %inc44.i, %if.else42.i ]
  %47 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nr_addrs.i, align 1
  %conv.i = zext i8 %48 to i32
  %cmp.i = icmp slt i32 %a.1.i, %conv.i
  br i1 %cmp.i, label %if.end47.i.land.rhs.i_crit_edge, label %if.end47.i.afs_compare_fs_alists.exit_crit_edge

if.end47.i.afs_compare_fs_alists.exit_crit_edge:  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_compare_fs_alists.exit

if.end47.i.land.rhs.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

afs_compare_fs_alists.exit:                       ; preds = %if.end47.i.afs_compare_fs_alists.exit_crit_edge, %land.rhs.i.afs_compare_fs_alists.exit_crit_edge, %do.end25.i.afs_compare_fs_alists.exit_crit_edge
  %addr_matches.0.lcssa.i = phi i32 [ 0, %do.end25.i.afs_compare_fs_alists.exit_crit_edge ], [ %addr_matches.068.i, %land.rhs.i.afs_compare_fs_alists.exit_crit_edge ], [ %addr_matches.1.i, %if.end47.i.afs_compare_fs_alists.exit_crit_edge ]
  %add = add i32 %addr_matches.0.lcssa.i, %addr_matches.0106
  %inc55 = add i32 %a.0107, 1
  %inc56 = add i32 %b.0104, 1
  br label %if.end58

if.end58:                                         ; preds = %afs_compare_fs_alists.exit, %if.then50, %if.then46
  %b.1 = phi i32 [ %b.0104, %if.then46 ], [ %inc51, %if.then50 ], [ %inc56, %afs_compare_fs_alists.exit ]
  %uuid_matches.1 = phi i32 [ %uuid_matches.0105, %if.then46 ], [ %uuid_matches.0105, %if.then50 ], [ %inc53, %afs_compare_fs_alists.exit ]
  %addr_matches.1 = phi i32 [ %addr_matches.0106, %if.then46 ], [ %addr_matches.0106, %if.then50 ], [ %add, %afs_compare_fs_alists.exit ]
  %a.1 = phi i32 [ %inc47, %if.then46 ], [ %a.0107, %if.then50 ], [ %inc55, %afs_compare_fs_alists.exit ]
  %49 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %50 to i32
  %cmp32 = icmp slt i32 %a.1, %conv
  br i1 %cmp32, label %if.end58.land.rhs_crit_edge, label %if.end58.do.body59_crit_edge

if.end58.do.body59_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

if.end58.land.rhs_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.body59:                                        ; preds = %if.end58.do.body59_crit_edge, %land.rhs.do.body59_crit_edge, %for.cond.2.do.body59_crit_edge
  %uuid_matches.0.lcssa = phi i32 [ 0, %for.cond.2.do.body59_crit_edge ], [ %uuid_matches.0105, %land.rhs.do.body59_crit_edge ], [ %uuid_matches.1, %if.end58.do.body59_crit_edge ]
  %addr_matches.0.lcssa = phi i32 [ 0, %for.cond.2.do.body59_crit_edge ], [ %addr_matches.0106, %land.rhs.do.body59_crit_edge ], [ %addr_matches.1, %if.end58.do.body59_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %51 = load i32, ptr @afs_debug, align 4
  %and = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %do.body59.cleanup_crit_edge, label %do.end66, !prof !73

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end66:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  %52 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 101
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm, ptr noundef nonnull @.str.19, i32 noundef %addr_matches.0.lcssa, i32 noundef %uuid_matches.0.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.body59.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ %addr_matches.0.lcssa, %do.end66 ], [ %addr_matches.0.lcssa, %do.body59.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %do.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_use_cell(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_unuse_cell(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_get_volume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_volume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/vl_alias.c", i32 380, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_cell_detect_alias._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_cell_detect_alias._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/vl_alias.c", i32 331, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @afs_do_cell_detect_alias._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @afs_do_cell_detect_alias._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/afs/vl_alias.c", i32 338, i32 45}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/afs/vl_alias.c", i32 31, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @afs_sample_volume._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_sample_volume._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/vl_alias.c", i32 160, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @afs_compare_cell_roots._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @afs_compare_cell_roots._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../fs/afs/vl_alias.c", i32 164, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/vl_alias.c", i32 175, i32 2}
!28 = !{ptr @afs_compare_cell_roots._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_compare_cell_roots._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../fs/afs/vl_alias.c", i32 125, i32 7}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../fs/afs/vl_alias.c", i32 126, i32 7}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/afs/vl_alias.c", i32 149, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @afs_compare_volume_slists._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @afs_compare_volume_slists._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../fs/afs/vl_alias.c", i32 93, i32 7}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../fs/afs/vl_alias.c", i32 94, i32 7}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/afs/vl_alias.c", i32 238, i32 2}
!53 = !{ptr @afs_query_for_alias._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @afs_query_for_alias._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @afs_query_for_alias._entry.23, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../fs/afs/vl_alias.c", i32 265, i32 2}
!57 = !{ptr @afs_query_for_alias._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/afs/vl_alias.c", i32 203, i32 2}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @afs_query_for_alias_one._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @afs_query_for_alias_one._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{!"auto-init"}
!75 = !{i64 2149924853}
!76 = !{i64 2149925119}
!77 = !{i64 2148684832}
!78 = !{i64 2148595227, i64 2148595259, i64 2148595288, i64 2148595322, i64 2148595353, i64 2148595376}
