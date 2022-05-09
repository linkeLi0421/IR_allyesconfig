; ModuleID = '/llk/IR_all_yes/fs/afs/addr_list.c_pt.bc'
source_filename = "../fs/afs/addr_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.123, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%union.anon.123 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_vlserver_list = type <{ %struct.callback_head, %struct.atomic_t, i8, i8, i8, i16, [3 x i8], %struct.rwlock_t, [0 x %struct.afs_vlserver_entry] }>
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.afs_vlserver_entry = type { i16, i16, i16, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.150, i16, i16, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.150 = type { i32, i32, i16, i16 }
%struct.afs_cell = type { %union.anon.152, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.152 = type { %struct.rb_node }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_alloc_addrlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] ==> %s(%u,%u,%u)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afs_alloc_addrlist\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/afs/addr_list.c\00", [45 x i8] zeroinitializer }, align 32
@afs_alloc_addrlist._entry_ptr = internal global ptr @afs_alloc_addrlist._entry, section ".printk_index", align 4
@afs_parse_text_addrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] ==> %s(%*.*s,%c)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_parse_text_addrs\00", [43 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry_ptr = internal global ptr @afs_parse_text_addrs._entry, section ".printk_index", align 4
@afs_parse_text_addrs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%-6.6s] <== %s() = -EDESTADDRREQ [empty]\0A\00", [53 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry_ptr.7 = internal global ptr @afs_parse_text_addrs._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nul\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"brace1\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"brace2\00", [25 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     %u/%u addresses\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry_ptr.13 = internal global ptr @afs_parse_text_addrs._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<dummy>\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"family\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nostop\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pval\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"weird\00", [26 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = [nr %u]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry_ptr.22 = internal global ptr @afs_parse_text_addrs._entry.20, section ".printk_index", align 4
@afs_parse_text_addrs._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%-6.6s] <== %s() = -EINVAL [%s %zu %*.*s]\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry_ptr.25 = internal global ptr @afs_parse_text_addrs._entry.23, section ".printk_index", align 4
@afs_parse_text_addrs._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_parse_text_addrs._entry_ptr.27 = internal global ptr @afs_parse_text_addrs._entry.26, section ".printk_index", align 4
@afs_dns_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_dns_query\00", [18 x i8] zeroinitializer }, align 32
@afs_dns_query._entry_ptr = internal global ptr @afs_dns_query._entry, section ".printk_index", align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"afsdb\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"srv=1\00", [26 x i8] zeroinitializer }, align 32
@afs_dns_query._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = %d [dns]\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_dns_query._entry_ptr.34 = internal global ptr @afs_dns_query._entry.32, section ".printk_index", align 4
@afs_dns_query._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to parse DNS data %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@afs_dns_query._entry_ptr.37 = internal global ptr @afs_dns_query._entry.35, section ".printk_index", align 4
@afs_iterate_addresses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s(%lx-%lx-%lx,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_iterate_addresses\00", [42 x i8] zeroinitializer }, align 32
@afs_iterate_addresses._entry_ptr = internal global ptr @afs_iterate_addresses._entry, section ".printk_index", align 4
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 35, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 76, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 79, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 90, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 99, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 104, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 118, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 125, i32 49 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 160, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 166, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 179, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 186, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 194, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 207, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 211, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 215, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 247, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 249, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 250, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 252, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 266, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [22 x i8] c"../fs/afs/addr_list.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 364, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @afs_alloc_addrlist._entry, ptr @afs_alloc_addrlist._entry_ptr, ptr @afs_dns_query._entry, ptr @afs_dns_query._entry.32, ptr @afs_dns_query._entry.35, ptr @afs_dns_query._entry_ptr, ptr @afs_dns_query._entry_ptr.34, ptr @afs_dns_query._entry_ptr.37, ptr @afs_iterate_addresses._entry, ptr @afs_iterate_addresses._entry_ptr, ptr @afs_parse_text_addrs._entry, ptr @afs_parse_text_addrs._entry.11, ptr @afs_parse_text_addrs._entry.20, ptr @afs_parse_text_addrs._entry.23, ptr @afs_parse_text_addrs._entry.26, ptr @afs_parse_text_addrs._entry.5, ptr @afs_parse_text_addrs._entry_ptr, ptr @afs_parse_text_addrs._entry_ptr.13, ptr @afs_parse_text_addrs._entry_ptr.22, ptr @afs_parse_text_addrs._entry_ptr.25, ptr @afs_parse_text_addrs._entry_ptr.27, ptr @afs_parse_text_addrs._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_addrlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_text_addrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_text_addrs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_text_addrs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_text_addrs._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_text_addrs._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_text_addrs._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dns_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dns_query._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_dns_query._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_iterate_addresses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_addrlist(ptr noundef %alist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %alist, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %usage = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #11, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !82

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #11
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @kvfree_call_rcu(ptr noundef nonnull %alist, ptr noundef null) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_alloc_addrlist(i32 noundef %nr, i16 noundef zeroext %service, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !82

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %conv = zext i16 %service to i32
  %conv4 = zext i16 %port to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %nr, i32 noundef %conv, i32 noundef %conv4) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %5 = tail call i32 @llvm.umin.i32(i32 %nr, i32 32)
  %6 = mul nuw nsw i32 %5, 36
  %spec.select.i38 = add nuw nsw i32 %6, 32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i38, i32 noundef 3520) #15
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %do.end7.cleanup_crit_edge, label %if.end15

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %do.end7
  %usage = getelementptr inbounds %struct.afs_addr_list, ptr %call9.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #11
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %usage, align 8
  %conv16 = trunc i32 %5 to i8
  %max_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %call9.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %max_addrs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv16, ptr %max_addrs, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1739.not = icmp eq i32 %5, 0
  br i1 %cmp1739.not, label %if.end15.cleanup_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afs_addr_list, ptr %call9.i.i, i32 0, i32 10, i32 %i.040
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 33, ptr %arrayidx, align 4
  %srx_service = getelementptr %struct.afs_addr_list, ptr %call9.i.i, i32 0, i32 10, i32 %i.040, i32 1
  %10 = ptrtoint ptr %srx_service to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %service, ptr %srx_service, align 2
  %transport_type = getelementptr %struct.afs_addr_list, ptr %call9.i.i, i32 0, i32 10, i32 %i.040, i32 2
  %11 = ptrtoint ptr %transport_type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %transport_type, align 4
  %transport_len = getelementptr %struct.afs_addr_list, ptr %call9.i.i, i32 0, i32 10, i32 %i.040, i32 3
  %12 = ptrtoint ptr %transport_len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 28, ptr %transport_len, align 2
  %transport = getelementptr %struct.afs_addr_list, ptr %call9.i.i, i32 0, i32 10, i32 %i.040, i32 4
  %13 = ptrtoint ptr %transport to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 10, ptr %transport, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %transport, i32 0, i32 1
  %14 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %port, ptr %sin6_port, align 2
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_parse_text_addrs(ptr noundef %net, ptr noundef %text, i32 noundef %len, i8 noundef zeroext %delim, i16 noundef zeroext %service, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %stop = alloca ptr, align 4
  %x = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %text518 = ptrtoint ptr %text to i32
  %add.ptr = getelementptr i8, ptr %text, i32 %len
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !82

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %conv = zext i8 %delim to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4, i32 noundef %len, i32 noundef %len, ptr noundef %text, i32 noundef %conv) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool7.not = icmp eq i32 %len, 0
  br i1 %tobool7.not, label %do.body9, label %if.end32

do.body9:                                         ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and10 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.cleanup362_crit_edge, label %do.end21, !prof !82

do.body9.cleanup362_crit_edge:                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

do.end21:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i471 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i471 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm25, ptr noundef nonnull @.str.4) #14
  br label %cleanup362

if.end32:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %delim)
  %cmp = icmp eq i8 %delim, 58
  br i1 %cmp, label %land.lhs.true, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end32
  %call35 = tail call ptr @memchr(ptr noundef %text, i32 noundef 44, i32 noundef %len) #16
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %lor.lhs.false, label %land.lhs.true.if.then39_crit_edge

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call37 = tail call ptr @memchr(ptr noundef %text, i32 noundef 46, i32 noundef %len) #16
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %lor.lhs.false.if.then39_crit_edge, label %lor.lhs.false.if.end40_crit_edge

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %land.lhs.true.if.then39_crit_edge
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %lor.lhs.false.if.end40_crit_edge, %if.end32.if.end40_crit_edge
  %delim.addr.0 = phi i8 [ 44, %if.then39 ], [ 58, %lor.lhs.false.if.end40_crit_edge ], [ %delim, %if.end32.if.end40_crit_edge ]
  %conv46 = zext i8 %delim.addr.0 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %do.body41

do.body41:                                        ; preds = %do.cond78.do.body41_crit_edge, %if.end40
  %nr.0 = phi i32 [ 0, %if.end40 ], [ %nr.1, %do.cond78.do.body41_crit_edge ]
  %p.0 = phi ptr [ %text, %if.end40 ], [ %p.2, %do.cond78.do.body41_crit_edge ]
  %10 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool42.not = icmp eq i8 %11, 0
  br i1 %tobool42.not, label %do.body41.do.body310_crit_edge, label %if.end44

do.body41.do.body310_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body310

if.end44:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %delim.addr.0)
  %cmp47 = icmp eq i8 %11, %delim.addr.0
  br i1 %cmp47, label %if.end44.do.cond78_crit_edge, label %if.end50

if.end44.do.cond78_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond78

if.end50:                                         ; preds = %if.end44
  %inc = add i32 %nr.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %11)
  %cmp52 = icmp eq i8 %11, 91
  br i1 %cmp52, label %if.then54, label %if.end50.if.end68_crit_edge

if.end50.if.end68_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then54:                                        ; preds = %if.end50
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  %cmp55 = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %cmp55, label %if.then54.do.body310_crit_edge, label %if.end58

if.then54.do.body310_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body310

if.end58:                                         ; preds = %if.then54
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call59 = tail call ptr @memchr(ptr noundef %incdec.ptr, i32 noundef 93, i32 noundef %sub.ptr.sub) #16
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end58.do.body310_crit_edge, label %if.end62

if.end58.do.body310_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body310

if.end62:                                         ; preds = %if.end58
  %incdec.ptr63 = getelementptr i8, ptr %call59, i32 1
  %cmp64.not = icmp ult ptr %incdec.ptr63, %add.ptr
  br i1 %cmp64.not, label %if.end62.if.end68_crit_edge, label %if.end62.do.body82_crit_edge

if.end62.do.body82_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end68:                                         ; preds = %if.end62.if.end68_crit_edge, %if.end50.if.end68_crit_edge
  %p.1 = phi ptr [ %incdec.ptr63, %if.end62.if.end68_crit_edge ], [ %p.0, %if.end50.if.end68_crit_edge ]
  %sub.ptr.rhs.cast71 = ptrtoint ptr %p.1 to i32
  %sub.ptr.sub72 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast71
  %call73 = tail call ptr @memchr(ptr noundef %p.1, i32 noundef %conv46, i32 noundef %sub.ptr.sub72) #16
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end68.do.body82_crit_edge, label %if.end76

if.end68.do.body82_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

if.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr77 = getelementptr i8, ptr %call73, i32 1
  br label %do.cond78

do.cond78:                                        ; preds = %if.end76, %if.end44.do.cond78_crit_edge
  %nr.1 = phi i32 [ %nr.0, %if.end44.do.cond78_crit_edge ], [ %inc, %if.end76 ]
  %p.2 = phi ptr [ %p.0, %if.end44.do.cond78_crit_edge ], [ %incdec.ptr77, %if.end76 ]
  %cmp79 = icmp ult ptr %p.2, %add.ptr
  br i1 %cmp79, label %do.cond78.do.body41_crit_edge, label %do.cond78.do.body82_crit_edge

do.cond78.do.body82_crit_edge:                    ; preds = %do.cond78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

do.cond78.do.body41_crit_edge:                    ; preds = %do.cond78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41

do.body82:                                        ; preds = %do.cond78.do.body82_crit_edge, %if.end68.do.body82_crit_edge, %if.end62.do.body82_crit_edge
  %nr.2 = phi i32 [ %nr.1, %do.cond78.do.body82_crit_edge ], [ %inc, %if.end62.do.body82_crit_edge ], [ %inc, %if.end68.do.body82_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %12 = load i32, ptr @afs_debug, align 4
  %and83 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.do.end103_crit_edge, label %do.end94, !prof !82

do.body82.do.end103_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end103

do.end94:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i472 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i472 to ptr
  %task97 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task97 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task97, align 8
  %comm98 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm98, i32 noundef %nr.2, i32 noundef 32) #14
  br label %do.end103

do.end103:                                        ; preds = %do.end94, %do.body82.do.end103_crit_edge
  %call104 = tail call ptr @afs_alloc_vlserver_list(i32 noundef 1) #11
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %do.end103.cleanup362_crit_edge, label %if.end108

do.end103.cleanup362_crit_edge:                   ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

if.end108:                                        ; preds = %do.end103
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %call104, i32 0, i32 2
  %17 = ptrtoint ptr %nr_servers to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %nr_servers, align 4
  %call109 = tail call ptr @afs_alloc_vlserver(ptr noundef nonnull @.str.14, i32 noundef 7, i16 noundef zeroext 7003) #11
  %server = getelementptr inbounds %struct.afs_vlserver_list, ptr %call104, i32 1, i32 1
  %18 = ptrtoint ptr %server to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call109, ptr %server, align 4
  %tobool113.not = icmp eq ptr %call109, null
  br i1 %tobool113.not, label %if.end108.error_vl_crit_edge, label %if.end115

if.end108.error_vl_crit_edge:                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_vl

if.end115:                                        ; preds = %if.end108
  %call116 = tail call ptr @afs_alloc_addrlist(i32 noundef %nr.2, i16 noundef zeroext %service, i16 noundef zeroext 7003)
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.end115.error_vl_crit_edge, label %do.body120.preheader

if.end115.error_vl_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_vl

do.body120.preheader:                             ; preds = %if.end115
  %conv121 = zext i16 %port to i32
  %nr_addrs.i = getelementptr inbounds %struct.afs_addr_list, ptr %call116, i32 0, i32 4
  %max_addrs.i = getelementptr inbounds %struct.afs_addr_list, ptr %call116, i32 0, i32 3
  %nr_ipv4.i = getelementptr inbounds %struct.afs_addr_list, ptr %call116, i32 0, i32 6
  %addrs34.i = getelementptr inbounds %struct.afs_addr_list, ptr %call116, i32 0, i32 10
  %19 = add i32 %text518, %len
  %20 = add i32 %19, -1
  br label %do.body120

do.body120:                                       ; preds = %do.cond237.do.body120_crit_edge, %do.body120.preheader
  %p.3 = phi ptr [ %p.8.ph, %do.cond237.do.body120_crit_edge ], [ %text, %do.body120.preheader ]
  %p.3519 = ptrtoint ptr %p.3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stop) #11
  %21 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %stop, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x) #11
  %22 = call ptr @memset(ptr %x, i32 255, i32 16)
  %23 = ptrtoint ptr %p.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %delim.addr.0)
  %cmp124 = icmp eq i8 %24, %delim.addr.0
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr127 = getelementptr i8, ptr %p.3, i32 1
  br label %do.cond237

if.end128:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %24)
  %cmp130 = icmp eq i8 %24, 91
  br i1 %cmp130, label %if.then132, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end128
  %cmp138508 = icmp ult ptr %p.3, %add.ptr
  br i1 %cmp138508, label %for.body.preheader, label %for.cond.preheader.if.end151_crit_edge

for.cond.preheader.if.end151_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

for.body.preheader:                               ; preds = %for.cond.preheader
  %uglygep = getelementptr i8, ptr %p.3, i32 %19
  %25 = sub i32 0, %p.3519
  %uglygep520 = getelementptr i8, ptr %uglygep, i32 %25
  br label %for.body

if.then132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr133 = getelementptr i8, ptr %p.3, i32 1
  %sub.ptr.rhs.cast135 = ptrtoint ptr %incdec.ptr133 to i32
  %sub.ptr.sub136 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast135
  %call137 = call ptr @memchr(ptr noundef %incdec.ptr133, i32 noundef 93, i32 noundef %sub.ptr.sub136) #16
  br label %if.end151

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %q.0509 = phi ptr [ %incdec.ptr150, %for.inc.for.body_crit_edge ], [ %p.3, %for.body.preheader ]
  %26 = ptrtoint ptr %q.0509 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %q.0509, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %27)
  %cmp141 = icmp eq i8 %27, 43
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %delim.addr.0)
  %cmp146 = icmp eq i8 %27, %delim.addr.0
  %or.cond = or i1 %cmp141, %cmp146
  br i1 %or.cond, label %for.body.if.end151_crit_edge, label %for.inc

for.body.if.end151_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

for.inc:                                          ; preds = %for.body
  %incdec.ptr150 = getelementptr i8, ptr %q.0509, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr150, %uglygep520
  br i1 %exitcond.not, label %for.inc.if.end151_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end151_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.end151:                                        ; preds = %for.inc.if.end151_crit_edge, %for.body.if.end151_crit_edge, %if.then132, %for.cond.preheader.if.end151_crit_edge
  %sub.ptr.rhs.cast153.pre-phi = phi i32 [ %p.3519, %for.cond.preheader.if.end151_crit_edge ], [ %sub.ptr.rhs.cast135, %if.then132 ], [ %p.3519, %for.inc.if.end151_crit_edge ], [ %p.3519, %for.body.if.end151_crit_edge ]
  %p.4 = phi ptr [ %p.3, %for.cond.preheader.if.end151_crit_edge ], [ %incdec.ptr133, %if.then132 ], [ %p.3, %for.inc.if.end151_crit_edge ], [ %p.3, %for.body.if.end151_crit_edge ]
  %q.1 = phi ptr [ %p.3, %for.cond.preheader.if.end151_crit_edge ], [ %call137, %if.then132 ], [ %q.0509, %for.body.if.end151_crit_edge ], [ %uglygep520, %for.inc.if.end151_crit_edge ]
  %sub.ptr.lhs.cast152 = ptrtoint ptr %q.1 to i32
  %sub.ptr.sub154 = sub i32 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153.pre-phi
  %call156 = call i32 @in4_pton(ptr noundef %p.4, i32 noundef %sub.ptr.sub154, ptr noundef nonnull %x, i32 noundef -1, ptr noundef nonnull %stop) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.else159, label %if.end151.if.end169_crit_edge

if.end151.if.end169_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.else159:                                       ; preds = %if.end151
  %call164 = call i32 @in6_pton(ptr noundef %p.4, i32 noundef %sub.ptr.sub154, ptr noundef nonnull %x, i32 noundef -1, ptr noundef nonnull %stop) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.else159.do.body336_crit_edge, label %if.else159.if.end169_crit_edge

if.else159.if.end169_crit_edge:                   ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.else159.do.body336_crit_edge:                  ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body336

if.end169:                                        ; preds = %if.else159.if.end169_crit_edge, %if.end151.if.end169_crit_edge
  %28 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stop, align 4
  %cmp170.not = icmp eq ptr %29, %q.1
  br i1 %cmp170.not, label %if.end173, label %if.end169.do.body336_crit_edge

if.end169.do.body336_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body336

if.end173:                                        ; preds = %if.end169
  %cmp174 = icmp ult ptr %q.1, %add.ptr
  br i1 %cmp174, label %land.lhs.true176, label %if.end173.if.end182_crit_edge

if.end173.if.end182_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

land.lhs.true176:                                 ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %q.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %q.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %31)
  %cmp178 = icmp eq i8 %31, 93
  %spec.select.idx = zext i1 %cmp178 to i32
  %spec.select = getelementptr i8, ptr %q.1, i32 %spec.select.idx
  %.pre = ptrtoint ptr %spec.select to i32
  br label %if.end182

if.end182:                                        ; preds = %land.lhs.true176, %if.end173.if.end182_crit_edge
  %p.5522.pre-phi = phi i32 [ %.pre, %land.lhs.true176 ], [ %sub.ptr.lhs.cast152, %if.end173.if.end182_crit_edge ]
  %p.5 = phi ptr [ %spec.select, %land.lhs.true176 ], [ %q.1, %if.end173.if.end182_crit_edge ]
  %cmp183 = icmp ult ptr %p.5, %add.ptr
  br i1 %cmp183, label %if.then185, label %if.end182.if.end223_crit_edge

if.end182.if.end223_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

if.then185:                                       ; preds = %if.end182
  %32 = ptrtoint ptr %p.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %p.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %33)
  %cmp187 = icmp eq i8 %33, 43
  br i1 %cmp187, label %if.then189, label %if.else213

if.then189:                                       ; preds = %if.then185
  %incdec.ptr190 = getelementptr i8, ptr %p.5, i32 1
  %cmp191.not = icmp ult ptr %incdec.ptr190, %add.ptr
  br i1 %cmp191.not, label %lor.lhs.false193, label %if.then189.do.body336_crit_edge

if.then189.do.body336_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body336

lor.lhs.false193:                                 ; preds = %if.then189
  %34 = ptrtoint ptr %incdec.ptr190 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr190, align 1
  %conv194 = zext i8 %35 to i32
  %36 = add nsw i32 %conv194, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %36)
  %37 = icmp ult i32 %36, -10
  br i1 %37, label %lor.lhs.false193.do.body336_crit_edge, label %do.body199.preheader

lor.lhs.false193.do.body336_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body336

do.body199.preheader:                             ; preds = %lor.lhs.false193
  %uglygep521 = getelementptr i8, ptr %p.5, i32 %19
  %38 = sub i32 0, %p.5522.pre-phi
  %uglygep523 = getelementptr i8, ptr %uglygep521, i32 %38
  %uglygep524 = getelementptr i8, ptr %p.5, i32 %20
  %uglygep525 = getelementptr i8, ptr %uglygep524, i32 %38
  br label %do.body199

do.body199:                                       ; preds = %land.rhs.do.body199_crit_edge, %do.body199.preheader
  %p.6 = phi ptr [ %incdec.ptr205, %land.rhs.do.body199_crit_edge ], [ %incdec.ptr190, %do.body199.preheader ]
  %xport.0 = phi i32 [ %add, %land.rhs.do.body199_crit_edge ], [ 0, %do.body199.preheader ]
  %mul = mul i32 %xport.0, 10
  %39 = ptrtoint ptr %p.6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %p.6, align 1
  %conv200 = zext i8 %40 to i32
  %sub = add i32 %mul, -48
  %add = add i32 %sub, %conv200
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp201 = icmp ugt i32 %add, 65535
  br i1 %cmp201, label %do.body199.do.body336_crit_edge, label %if.end204

do.body199.do.body336_crit_edge:                  ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body336

if.end204:                                        ; preds = %do.body199
  %exitcond526.not = icmp eq ptr %p.6, %uglygep525
  br i1 %exitcond526.not, label %if.end204.if.end223_crit_edge, label %land.rhs

if.end204.if.end223_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

land.rhs:                                         ; preds = %if.end204
  %incdec.ptr205 = getelementptr i8, ptr %p.6, i32 1
  %41 = ptrtoint ptr %incdec.ptr205 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr205, align 1
  %conv209 = zext i8 %42 to i32
  %43 = add nsw i32 %conv209, -58
  %44 = icmp ult i32 %43, -10
  br i1 %44, label %land.rhs.if.end223_crit_edge, label %land.rhs.do.body199_crit_edge

land.rhs.do.body199_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body199

land.rhs.if.end223_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

if.else213:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %delim.addr.0)
  %cmp216 = icmp eq i8 %33, %delim.addr.0
  br i1 %cmp216, label %if.then218, label %if.else213.do.body336_crit_edge

if.else213.do.body336_crit_edge:                  ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body336

if.then218:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr219 = getelementptr i8, ptr %p.5, i32 1
  br label %if.end223

if.end223:                                        ; preds = %if.then218, %land.rhs.if.end223_crit_edge, %if.end204.if.end223_crit_edge, %if.end182.if.end223_crit_edge
  %p.7 = phi ptr [ %incdec.ptr219, %if.then218 ], [ %p.5, %if.end182.if.end223_crit_edge ], [ %uglygep523, %if.end204.if.end223_crit_edge ], [ %incdec.ptr205, %land.rhs.if.end223_crit_edge ]
  %xport.1 = phi i32 [ %conv121, %if.then218 ], [ %conv121, %if.end182.if.end223_crit_edge ], [ %add, %land.rhs.if.end223_crit_edge ], [ %add, %if.end204.if.end223_crit_edge ]
  br i1 %tobool157.not, label %if.else229, label %if.then226

if.then226:                                       ; preds = %if.end223
  %45 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %x, align 4
  %conv228 = trunc i32 %xport.1 to i16
  %47 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nr_addrs.i, align 1
  %49 = ptrtoint ptr %max_addrs.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %max_addrs.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp.not.i = icmp ult i8 %48, %50
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then226.do.cond237_crit_edge

if.then226.do.cond237_crit_edge:                  ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond237

for.cond.preheader.i:                             ; preds = %if.then226
  %51 = ptrtoint ptr %nr_ipv4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nr_ipv4.i, align 1
  %conv3.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp497.not.i = icmp eq i8 %52, 0
  br i1 %cmp497.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.098.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %transport.i = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.098.i, i32 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %transport.i, i32 0, i32 2
  %53 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sin_addr.i, align 4
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %transport.i, i32 0, i32 1
  %55 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sin_port.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %46)
  %cmp6.i = icmp eq i32 %54, %46
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %conv228)
  %cmp10.i = icmp eq i16 %56, %conv228
  %or.cond.i = select i1 %cmp6.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %for.body.i.do.cond237_crit_edge, label %if.end13.i

for.body.i.do.cond237_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond237

if.end13.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %conv228)
  %cmp19.i = icmp ugt i16 %56, %conv228
  %or.cond90.i = select i1 %cmp6.i, i1 %cmp19.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %46)
  %cmp23.i = icmp ugt i32 %54, %46
  %or.cond94.i = or i1 %cmp23.i, %or.cond90.i
  br i1 %or.cond94.i, label %if.end13.i.for.end.i_crit_edge, label %for.inc.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end13.i
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv3.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv3.i, %for.inc.i.for.end.i_crit_edge ], [ %i.098.i, %if.end13.i.for.end.i_crit_edge ]
  %conv30.i = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv30.i)
  %cmp31.i = icmp ult i32 %i.0.lcssa.i, %conv30.i
  br i1 %cmp31.i, label %if.then33.i, label %for.end.i.if.end41.i_crit_edge

for.end.i.if.end41.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.sockaddr_rxrpc, ptr %addrs34.i, i32 %i.0.lcssa.i
  %add.ptr35.i = getelementptr %struct.sockaddr_rxrpc, ptr %add.ptr.i, i32 1
  %sub.i = sub nsw i32 %conv30.i, %i.0.lcssa.i
  %mul.i = mul i32 %sub.i, 36
  %57 = call ptr @memmove(ptr %add.ptr35.i, ptr %add.ptr.i, i32 %mul.i)
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then33.i, %for.end.i.if.end41.i_crit_edge
  %arrayidx43.i = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.0.lcssa.i
  %58 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 33, ptr %arrayidx43.i, align 4
  %transport_type.i = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.0.lcssa.i, i32 2
  %59 = ptrtoint ptr %transport_type.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 2, ptr %transport_type.i, align 4
  %transport_len.i = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.0.lcssa.i, i32 3
  %60 = ptrtoint ptr %transport_len.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 16, ptr %transport_len.i, align 2
  %transport44.i = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.0.lcssa.i, i32 4
  %61 = ptrtoint ptr %transport44.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 2, ptr %transport44.i, align 4
  %sin_port46.i = getelementptr inbounds %struct.sockaddr_in, ptr %transport44.i, i32 0, i32 1
  %62 = ptrtoint ptr %sin_port46.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv228, ptr %sin_port46.i, align 2
  %sin_addr48.i = getelementptr inbounds %struct.sockaddr_in, ptr %transport44.i, i32 0, i32 2
  %63 = ptrtoint ptr %sin_addr48.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %46, ptr %sin_addr48.i, align 4
  %64 = ptrtoint ptr %nr_ipv4.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nr_ipv4.i, align 1
  %inc51.i = add i8 %65, 1
  store i8 %inc51.i, ptr %nr_ipv4.i, align 1
  %66 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nr_addrs.i, align 1
  %inc53.i = add i8 %67, 1
  store i8 %inc53.i, ptr %nr_addrs.i, align 1
  br label %do.cond237

if.else229:                                       ; preds = %if.end223
  %conv231 = trunc i32 %xport.1 to i16
  %68 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nr_addrs.i, align 1
  %70 = ptrtoint ptr %max_addrs.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %max_addrs.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp.not.i475 = icmp ult i8 %69, %71
  br i1 %cmp.not.i475, label %if.end.i, label %if.else229.do.cond237_crit_edge

if.else229.do.cond237_crit_edge:                  ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond237

if.end.i:                                         ; preds = %if.else229
  %72 = ptrtoint ptr %nr_ipv4.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %nr_ipv4.i, align 1
  %conv3.i477 = zext i8 %73 to i32
  %conv5.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %69)
  %cmp696.i = icmp ult i8 %73, %69
  br i1 %cmp696.i, label %if.end.i.for.body.i480_crit_edge, label %if.end.i.if.end42.i_crit_edge

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end.i.for.body.i480_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i480

for.body.i480:                                    ; preds = %for.inc.i484.for.body.i480_crit_edge, %if.end.i.for.body.i480_crit_edge
  %i.097.i = phi i32 [ %inc.i482, %for.inc.i484.for.body.i480_crit_edge ], [ %conv3.i477, %if.end.i.for.body.i480_crit_edge ]
  %transport.i478 = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.097.i, i32 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %transport.i478, i32 0, i32 1
  %74 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sin6_port.i, align 2
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %transport.i478, i32 0, i32 3
  %call.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %x, ptr noundef dereferenceable(16) %sin6_addr.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %conv231)
  %cmp12.i = icmp eq i16 %75, %conv231
  %or.cond.i479 = select i1 %cmp8.i, i1 %cmp12.i, i1 false
  br i1 %or.cond.i479, label %for.body.i480.do.cond237_crit_edge, label %if.end15.i

for.body.i480.do.cond237_crit_edge:               ; preds = %for.body.i480
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond237

if.end15.i:                                       ; preds = %for.body.i480
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %conv231)
  %cmp21.i = icmp ugt i16 %75, %conv231
  %or.cond86.i = select i1 %cmp8.i, i1 %cmp21.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25.i = icmp slt i32 %call.i, 0
  %or.cond90.i481 = or i1 %cmp25.i, %or.cond86.i
  br i1 %or.cond90.i481, label %if.then34.i, label %for.inc.i484

for.inc.i484:                                     ; preds = %if.end15.i
  %inc.i482 = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i483 = icmp eq i32 %inc.i482, %conv5.i
  br i1 %exitcond.not.i483, label %for.inc.i484.if.end42.i_crit_edge, label %for.inc.i484.for.body.i480_crit_edge

for.inc.i484.for.body.i480_crit_edge:             ; preds = %for.inc.i484
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i480

for.inc.i484.if.end42.i_crit_edge:                ; preds = %for.inc.i484
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then34.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i485 = getelementptr %struct.sockaddr_rxrpc, ptr %addrs34.i, i32 %i.097.i
  %add.ptr36.i = getelementptr %struct.sockaddr_rxrpc, ptr %add.ptr.i485, i32 1
  %sub.i486 = sub nsw i32 %conv5.i, %i.097.i
  %mul.i487 = mul i32 %sub.i486, 36
  %76 = call ptr @memmove(ptr %add.ptr36.i, ptr %add.ptr.i485, i32 %mul.i487)
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then34.i, %for.inc.i484.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %i.095.i = phi i32 [ %i.097.i, %if.then34.i ], [ %conv3.i477, %if.end.i.if.end42.i_crit_edge ], [ %conv5.i, %for.inc.i484.if.end42.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.095.i
  %77 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 33, ptr %arrayidx44.i, align 4
  %transport_type.i488 = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.095.i, i32 2
  %78 = ptrtoint ptr %transport_type.i488 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 2, ptr %transport_type.i488, align 4
  %transport_len.i489 = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.095.i, i32 3
  %79 = ptrtoint ptr %transport_len.i489 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 28, ptr %transport_len.i489, align 2
  %transport45.i = getelementptr %struct.afs_addr_list, ptr %call116, i32 0, i32 10, i32 %i.095.i, i32 4
  %80 = ptrtoint ptr %transport45.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 10, ptr %transport45.i, align 4
  %sin6_port47.i = getelementptr inbounds %struct.sockaddr_in6, ptr %transport45.i, i32 0, i32 1
  %81 = ptrtoint ptr %sin6_port47.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv231, ptr %sin6_port47.i, align 2
  %sin6_addr49.i = getelementptr inbounds %struct.sockaddr_in6, ptr %transport45.i, i32 0, i32 3
  %82 = call ptr @memcpy(ptr %sin6_addr49.i, ptr %x, i32 16)
  %83 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %nr_addrs.i, align 1
  %inc51.i490 = add i8 %84, 1
  store i8 %inc51.i490, ptr %nr_addrs.i, align 1
  br label %do.cond237

do.cond237:                                       ; preds = %if.end42.i, %for.body.i480.do.cond237_crit_edge, %if.else229.do.cond237_crit_edge, %if.end41.i, %for.body.i.do.cond237_crit_edge, %if.then226.do.cond237_crit_edge, %if.then126
  %p.8.ph = phi ptr [ %p.7, %if.end42.i ], [ %p.7, %if.else229.do.cond237_crit_edge ], [ %p.7, %if.end41.i ], [ %p.7, %if.then226.do.cond237_crit_edge ], [ %incdec.ptr127, %if.then126 ], [ %p.7, %for.body.i480.do.cond237_crit_edge ], [ %p.7, %for.body.i.do.cond237_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stop) #11
  %cmp238 = icmp ult ptr %p.8.ph, %add.ptr
  br i1 %cmp238, label %do.cond237.do.body120_crit_edge, label %do.body241

do.cond237.do.body120_crit_edge:                  ; preds = %do.cond237
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body120

do.body241:                                       ; preds = %do.cond237
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  %85 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %server, align 4
  %addresses275 = getelementptr inbounds %struct.afs_vlserver, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %addresses275 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %call116, ptr %addresses275, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %88 = load i32, ptr @afs_debug, align 4
  %and288 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288)
  %tobool289.not = icmp eq i32 %and288, 0
  br i1 %tobool289.not, label %do.body241.cleanup362_crit_edge, label %do.end299, !prof !82

do.body241.cleanup362_crit_edge:                  ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

do.end299:                                        ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #13
  %89 = call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i491 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i491 to ptr
  %task302 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task302 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task302, align 8
  %comm303 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 101
  %93 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %nr_addrs.i, align 1
  %conv305 = zext i8 %94 to i32
  %call306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %comm303, ptr noundef nonnull @.str.4, i32 noundef %conv305) #14
  br label %cleanup362

do.body310:                                       ; preds = %if.end58.do.body310_crit_edge, %if.then54.do.body310_crit_edge, %do.body41.do.body310_crit_edge
  %problem.2 = phi ptr [ @.str.8, %do.body41.do.body310_crit_edge ], [ @.str.9, %if.then54.do.body310_crit_edge ], [ @.str.10, %if.end58.do.body310_crit_edge ]
  %p.9 = phi ptr [ %p.0, %do.body41.do.body310_crit_edge ], [ %add.ptr, %if.then54.do.body310_crit_edge ], [ null, %if.end58.do.body310_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %95 = load i32, ptr @afs_debug, align 4
  %and311 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  br i1 %tobool312.not, label %do.body310.cleanup362_crit_edge, label %do.end322, !prof !82

do.body310.cleanup362_crit_edge:                  ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

do.end322:                                        ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #13
  %96 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i492 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i492 to ptr
  %task325 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task325 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task325, align 8
  %comm326 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 101
  %sub.ptr.lhs.cast328 = ptrtoint ptr %p.9 to i32
  %sub.ptr.sub330 = sub i32 %sub.ptr.lhs.cast328, %text518
  %call331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm326, ptr noundef nonnull @.str.4, ptr noundef nonnull %problem.2, i32 noundef %sub.ptr.sub330, i32 noundef %len, i32 noundef %len, ptr noundef %text) #14
  br label %cleanup362

do.body336:                                       ; preds = %if.else213.do.body336_crit_edge, %do.body199.do.body336_crit_edge, %lor.lhs.false193.do.body336_crit_edge, %if.then189.do.body336_crit_edge, %if.end169.do.body336_crit_edge, %if.else159.do.body336_crit_edge
  %problem.1 = phi ptr [ @.str.18, %do.body199.do.body336_crit_edge ], [ @.str.19, %if.else213.do.body336_crit_edge ], [ @.str.17, %if.then189.do.body336_crit_edge ], [ @.str.17, %lor.lhs.false193.do.body336_crit_edge ], [ @.str.16, %if.end169.do.body336_crit_edge ], [ @.str.15, %if.else159.do.body336_crit_edge ]
  %p.8 = phi ptr [ %p.6, %do.body199.do.body336_crit_edge ], [ %p.5, %if.else213.do.body336_crit_edge ], [ %incdec.ptr190, %if.then189.do.body336_crit_edge ], [ %incdec.ptr190, %lor.lhs.false193.do.body336_crit_edge ], [ %q.1, %if.end169.do.body336_crit_edge ], [ %p.4, %if.else159.do.body336_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stop) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %100 = load i32, ptr @afs_debug, align 4
  %and337 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %tobool338.not = icmp eq i32 %and337, 0
  br i1 %tobool338.not, label %do.body336.land.lhs.true.i_crit_edge, label %do.end348, !prof !82

do.body336.land.lhs.true.i_crit_edge:             ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

do.end348:                                        ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #13
  %101 = call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i493 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i493 to ptr
  %task351 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task351 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task351, align 8
  %comm352 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 101
  %sub.ptr.lhs.cast354 = ptrtoint ptr %p.8 to i32
  %sub.ptr.sub356 = sub i32 %sub.ptr.lhs.cast354, %text518
  %call357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm352, ptr noundef nonnull @.str.4, ptr noundef nonnull %problem.1, i32 noundef %sub.ptr.sub356, i32 noundef %len, i32 noundef %len, ptr noundef %text) #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end348, %do.body336.land.lhs.true.i_crit_edge
  %usage.i = getelementptr inbounds %struct.afs_addr_list, ptr %call116, i32 0, i32 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !81
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.error_vl_crit_edge, label %if.then10.i.i.i.i, !prof !82

if.end5.i.i.i.i.error_vl_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_vl

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %error_vl

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  call void @kvfree_call_rcu(ptr noundef nonnull %call116, ptr noundef null) #11
  br label %error_vl

error_vl:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.error_vl_crit_edge, %if.end115.error_vl_crit_edge, %if.end108.error_vl_crit_edge
  %ret.1 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end108.error_vl_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.error_vl_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -12 to ptr), %if.end115.error_vl_crit_edge ]
  call void @afs_put_vlserverlist(ptr noundef %net, ptr noundef nonnull %call104) #11
  br label %cleanup362

cleanup362:                                       ; preds = %error_vl, %do.end322, %do.body310.cleanup362_crit_edge, %do.end299, %do.body241.cleanup362_crit_edge, %do.end103.cleanup362_crit_edge, %do.end21, %do.body9.cleanup362_crit_edge
  %retval.0 = phi ptr [ %ret.1, %error_vl ], [ %call104, %do.end299 ], [ %call104, %do.body241.cleanup362_crit_edge ], [ inttoptr (i32 -89 to ptr), %do.end21 ], [ inttoptr (i32 -89 to ptr), %do.body9.cleanup362_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end103.cleanup362_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end322 ], [ inttoptr (i32 -22 to ptr), %do.body310.cleanup362_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_vlserver_list(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_vlserver(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_merge_fs_addr4(ptr nocapture noundef %alist, i32 noundef %xdr, i16 noundef zeroext %port) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 4
  %0 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_addrs, align 1
  %max_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 3
  %2 = ptrtoint ptr %max_addrs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_addrs, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp ult i8 %1, %3
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup54

for.cond.preheader:                               ; preds = %entry
  %nr_ipv4 = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 6
  %4 = ptrtoint ptr %nr_ipv4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_ipv4, align 1
  %conv3 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp497.not = icmp eq i8 %5, 0
  br i1 %cmp497.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %transport = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.098, i32 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %transport, i32 0, i32 2
  %6 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sin_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %transport, i32 0, i32 1
  %8 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %xdr)
  %cmp6 = icmp eq i32 %7, %xdr
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %port)
  %cmp10 = icmp eq i16 %9, %port
  %or.cond = select i1 %cmp6, i1 %cmp10, i1 false
  br i1 %or.cond, label %for.body.cleanup54_crit_edge, label %if.end13

for.body.cleanup54_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup54

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %port)
  %cmp19 = icmp ugt i16 %9, %port
  %or.cond90 = select i1 %cmp6, i1 %cmp19, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %xdr)
  %cmp23 = icmp ugt i32 %7, %xdr
  %or.cond94 = or i1 %cmp23, %or.cond90
  br i1 %or.cond94, label %if.end13.for.end_crit_edge, label %for.inc

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end13
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.098, %if.end13.for.end_crit_edge ], [ %conv3, %for.inc.for.end_crit_edge ]
  %conv30 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %conv30)
  %cmp31 = icmp ult i32 %i.0.lcssa, %conv30
  br i1 %cmp31, label %if.then33, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %addrs34 = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 10
  %add.ptr = getelementptr %struct.sockaddr_rxrpc, ptr %addrs34, i32 %i.0.lcssa
  %add.ptr35 = getelementptr %struct.sockaddr_rxrpc, ptr %add.ptr, i32 1
  %sub = sub nsw i32 %conv30, %i.0.lcssa
  %mul = mul i32 %sub, 36
  %10 = call ptr @memmove(ptr %add.ptr35, ptr %add.ptr, i32 %mul)
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %for.end.if.end41_crit_edge
  %arrayidx43 = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.0.lcssa
  %11 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 33, ptr %arrayidx43, align 4
  %transport_type = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.0.lcssa, i32 2
  %12 = ptrtoint ptr %transport_type to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %transport_type, align 4
  %transport_len = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.0.lcssa, i32 3
  %13 = ptrtoint ptr %transport_len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16, ptr %transport_len, align 2
  %transport44 = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.0.lcssa, i32 4
  %14 = ptrtoint ptr %transport44 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %transport44, align 4
  %sin_port46 = getelementptr inbounds %struct.sockaddr_in, ptr %transport44, i32 0, i32 1
  %15 = ptrtoint ptr %sin_port46 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %port, ptr %sin_port46, align 2
  %sin_addr48 = getelementptr inbounds %struct.sockaddr_in, ptr %transport44, i32 0, i32 2
  %16 = ptrtoint ptr %sin_addr48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %xdr, ptr %sin_addr48, align 4
  %17 = ptrtoint ptr %nr_ipv4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_ipv4, align 1
  %inc51 = add i8 %18, 1
  store i8 %inc51, ptr %nr_ipv4, align 1
  %19 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nr_addrs, align 1
  %inc53 = add i8 %20, 1
  store i8 %inc53, ptr %nr_addrs, align 1
  br label %cleanup54

cleanup54:                                        ; preds = %if.end41, %for.body.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_merge_fs_addr6(ptr nocapture noundef %alist, ptr nocapture noundef readonly %xdr, i16 noundef zeroext %port) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 4
  %0 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_addrs, align 1
  %max_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 3
  %2 = ptrtoint ptr %max_addrs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_addrs, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp ult i8 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup52_crit_edge

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end:                                           ; preds = %entry
  %nr_ipv4 = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 6
  %4 = ptrtoint ptr %nr_ipv4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_ipv4, align 1
  %conv3 = zext i8 %5 to i32
  %conv5 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %1)
  %cmp696 = icmp ult i8 %5, %1
  br i1 %cmp696, label %if.end.for.body_crit_edge, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %conv3, %if.end.for.body_crit_edge ]
  %transport = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.097, i32 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %transport, i32 0, i32 1
  %6 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %transport, i32 0, i32 3
  %call = tail call i32 @memcmp(ptr noundef dereferenceable(16) %xdr, ptr noundef dereferenceable(16) %sin6_addr, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %port)
  %cmp12 = icmp eq i16 %7, %port
  %or.cond = select i1 %cmp8, i1 %cmp12, i1 false
  br i1 %or.cond, label %for.body.cleanup52_crit_edge, label %if.end15

for.body.cleanup52_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %port)
  %cmp21 = icmp ugt i16 %7, %port
  %or.cond86 = select i1 %cmp8, i1 %cmp21, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp25 = icmp slt i32 %call, 0
  %or.cond90 = or i1 %cmp25, %or.cond86
  br i1 %or.cond90, label %if.then34, label %for.inc

for.inc:                                          ; preds = %if.end15
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %conv5
  br i1 %exitcond.not, label %for.inc.if.end42_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %addrs35 = getelementptr inbounds %struct.afs_addr_list, ptr %alist, i32 0, i32 10
  %add.ptr = getelementptr %struct.sockaddr_rxrpc, ptr %addrs35, i32 %i.097
  %add.ptr36 = getelementptr %struct.sockaddr_rxrpc, ptr %add.ptr, i32 1
  %sub = sub nsw i32 %conv5, %i.097
  %mul = mul i32 %sub, 36
  %8 = call ptr @memmove(ptr %add.ptr36, ptr %add.ptr, i32 %mul)
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %for.inc.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %i.095 = phi i32 [ %i.097, %if.then34 ], [ %conv3, %if.end.if.end42_crit_edge ], [ %conv5, %for.inc.if.end42_crit_edge ]
  %arrayidx44 = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.095
  %9 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 33, ptr %arrayidx44, align 4
  %transport_type = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.095, i32 2
  %10 = ptrtoint ptr %transport_type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %transport_type, align 4
  %transport_len = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.095, i32 3
  %11 = ptrtoint ptr %transport_len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 28, ptr %transport_len, align 2
  %transport45 = getelementptr %struct.afs_addr_list, ptr %alist, i32 0, i32 10, i32 %i.095, i32 4
  %12 = ptrtoint ptr %transport45 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 10, ptr %transport45, align 4
  %sin6_port47 = getelementptr inbounds %struct.sockaddr_in6, ptr %transport45, i32 0, i32 1
  %13 = ptrtoint ptr %sin6_port47 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %port, ptr %sin6_port47, align 2
  %sin6_addr49 = getelementptr inbounds %struct.sockaddr_in6, ptr %transport45, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %sin6_addr49, ptr %xdr, i32 16)
  %15 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_addrs, align 1
  %inc51 = add i8 %16, 1
  store i8 %inc51, ptr %nr_addrs, align 1
  br label %cleanup52

cleanup52:                                        ; preds = %if.end42, %for.body.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_vlserverlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_dns_query(ptr noundef %cell, ptr noundef %_expiry) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #11
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %result, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !82

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.29, ptr noundef %7) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %net = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %name8 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %12 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name8, align 8
  %name_len = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 27
  %14 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name_len, align 4
  %conv = zext i8 %15 to i32
  %call9 = call i32 @dns_query(ptr noundef %11, ptr noundef nonnull @.str.30, ptr noundef %13, i32 noundef %conv, ptr noundef nonnull @.str.31, ptr noundef nonnull %result, ptr noundef %_expiry, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.body12, label %if.end35

do.body12:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %16 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end33_crit_edge, label %do.end24, !prof !82

do.body12.do.end33_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i82 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i82 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm28, ptr noundef nonnull @.str.29, i32 noundef %call9) #14
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %do.body12.do.end33_crit_edge
  %21 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end35:                                         ; preds = %do.end6
  %22 = ptrtoint ptr %_expiry to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %_expiry, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp36 = icmp eq i64 %23, 0
  br i1 %cmp36, label %if.then38, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = call i64 @ktime_get_real_seconds() #11
  %add = add i64 %call39, 60
  %24 = ptrtoint ptr %_expiry to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %_expiry, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp41 = icmp ugt i32 %call9, 1
  br i1 %cmp41, label %land.lhs.true, label %if.end40.if.else_crit_edge

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end40
  %25 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %result, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp44 = icmp eq i8 %28, 0
  br i1 %cmp44, label %if.then46, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = call ptr @afs_extract_vlserver_list(ptr noundef %cell, ptr noundef %26, i32 noundef %call9) #11
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end40.if.else_crit_edge
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 4
  %31 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %result, align 4
  %call49 = call ptr @afs_parse_text_addrs(ptr noundef %30, ptr noundef %32, i32 noundef %call9, i8 noundef zeroext 44, i16 noundef zeroext 52, i16 noundef zeroext 7003)
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then46
  %vllist.0 = phi ptr [ %call47, %if.then46 ], [ %call49, %if.else ]
  %33 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %result, align 4
  call void @kfree(ptr noundef %34) #11
  %cmp.i = icmp ugt ptr %vllist.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true53, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end50
  %cmp55.not = icmp eq ptr %vllist.0, inttoptr (i32 -12 to ptr)
  br i1 %cmp55.not, label %land.lhs.true53.cleanup_crit_edge, label %do.end60

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end60:                                         ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %vllist.0 to i32
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %35) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %land.lhs.true53.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end33
  %retval.0 = phi ptr [ %21, %do.end33 ], [ %vllist.0, %do.end60 ], [ inttoptr (i32 -12 to ptr), %land.lhs.true53.cleanup_crit_edge ], [ %vllist.0, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dns_query(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_extract_vlserver_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_iterate_addresses(ptr noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set)
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %responded = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %responded to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %responded, align 4
  %4 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %set, align 4
  %failed3 = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %failed3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %failed3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %7 = load i32, ptr @afs_debug, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.do.end13_crit_edge, label %do.end, !prof !82

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i49 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i49 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %tried = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 1
  %12 = ptrtoint ptr %tried to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tried, align 4
  %index9 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 2
  %14 = ptrtoint ptr %index9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index9, align 4
  %conv = sext i8 %15 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm, ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %6, i32 noundef %13, i32 noundef %conv) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  %nr_iterations = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 4
  %16 = ptrtoint ptr %nr_iterations to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nr_iterations, align 2
  %inc = add i16 %17, 1
  store i16 %inc, ptr %nr_iterations, align 2
  %tried14 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 1
  %18 = ptrtoint ptr %tried14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tried14, align 4
  %or = or i32 %19, %6
  %neg = xor i32 %or, -1
  %20 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %20)
  %set.0.50 = load i32, ptr %set, align 4
  %and15 = and i32 %set.0.50, %neg
  store i32 %and15, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end13.cleanup_crit_edge, label %do.end21

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ac, align 4
  %preferred = getelementptr inbounds %struct.afs_addr_list, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %preferred, align 2
  %conv24 = zext i8 %24 to i32
  %25 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %25)
  %set.0. = load volatile i32, ptr %set, align 4
  %and.i = and i32 %conv24, 31
  %26 = shl nuw i32 1, %and.i
  %27 = and i32 %26, %set.0.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.cttz.i32(i32 %and15, i1 true) #11, !range !86
  %spec.select = select i1 %tobool26.not, i32 %28, i32 %conv24
  %conv30 = trunc i32 %spec.select to i8
  %index31 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 2
  %29 = ptrtoint ptr %index31 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv30, ptr %index31, align 4
  tail call void @_set_bit(i32 noundef %spec.select, ptr noundef %tried14) #11
  %responded33 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 3
  %30 = ptrtoint ptr %responded33 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %responded33, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end21 ], [ false, %entry.cleanup_crit_edge ], [ false, %do.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set)
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_end_cursor(ptr noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %entry
  %responded = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 3
  %2 = ptrtoint ptr %responded to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %responded, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.land.lhs.true.i_crit_edge, label %land.lhs.true

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true:                                    ; preds = %if.then
  %index = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = sext i8 %5 to i32
  %preferred = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %preferred, align 2
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv3)
  %cmp.not = icmp eq i32 %conv, %conv3
  br i1 %cmp.not, label %land.lhs.true.land.lhs.true.i_crit_edge, label %land.lhs.true5

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true5:                                   ; preds = %land.lhs.true
  %tried = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 1
  %div3.i = lshr i32 %conv3, 5
  %arrayidx.i = getelementptr i32, ptr %tried, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv3, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %land.lhs.true5.land.lhs.true.i_crit_edge, label %do.body12

land.lhs.true5.land.lhs.true.i_crit_edge:         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

do.body12:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %preferred to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 %5, ptr %preferred, align 2
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.body12, %land.lhs.true5.land.lhs.true.i_crit_edge, %land.lhs.true.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %usage.i = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !81
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.afs_put_addrlist.exit_crit_edge, label %if.then10.i.i.i.i, !prof !82

if.end5.i.i.i.i.afs_put_addrlist.exit_crit_edge:  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %afs_put_addrlist.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %afs_put_addrlist.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #11
  br label %afs_put_addrlist.exit

afs_put_addrlist.exit:                            ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.afs_put_addrlist.exit_crit_edge
  %14 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ac, align 4
  br label %if.end20

if.end20:                                         ; preds = %afs_put_addrlist.exit, %entry.if.end20_crit_edge
  %error = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 5
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %error, align 4
  %conv21 = sext i16 %16 to i32
  ret i32 %conv21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/addr_list.c", i32 35, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_alloc_addrlist._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_alloc_addrlist._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/addr_list.c", i32 76, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @afs_parse_text_addrs._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @afs_parse_text_addrs._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/afs/addr_list.c", i32 79, i32 3}
!13 = !{ptr @afs_parse_text_addrs._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @afs_parse_text_addrs._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/afs/addr_list.c", i32 90, i32 14}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/afs/addr_list.c", i32 99, i32 15}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/afs/addr_list.c", i32 104, i32 15}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/afs/addr_list.c", i32 118, i32 2}
!23 = !{ptr @afs_parse_text_addrs._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @afs_parse_text_addrs._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/afs/addr_list.c", i32 125, i32 49}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/afs/addr_list.c", i32 160, i32 14}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/afs/addr_list.c", i32 166, i32 14}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/afs/addr_list.c", i32 179, i32 16}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/afs/addr_list.c", i32 186, i32 17}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/addr_list.c", i32 194, i32 15}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/afs/addr_list.c", i32 207, i32 2}
!39 = !{ptr @afs_parse_text_addrs._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @afs_parse_text_addrs._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/afs/addr_list.c", i32 211, i32 2}
!43 = !{ptr @afs_parse_text_addrs._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @afs_parse_text_addrs._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @afs_parse_text_addrs._entry.26, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../fs/afs/addr_list.c", i32 215, i32 2}
!47 = !{ptr @afs_parse_text_addrs._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/afs/addr_list.c", i32 247, i32 2}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @afs_dns_query._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @afs_dns_query._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/afs/addr_list.c", i32 249, i32 34}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/afs/addr_list.c", i32 250, i32 4}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/afs/addr_list.c", i32 252, i32 3}
!59 = !{ptr @afs_dns_query._entry.32, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @afs_dns_query._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/afs/addr_list.c", i32 266, i32 3}
!63 = !{ptr @afs_dns_query._entry.35, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @afs_dns_query._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/afs/addr_list.c", i32 364, i32 2}
!67 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @afs_iterate_addresses._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @afs_iterate_addresses._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148676852}
!81 = !{i64 2148591292, i64 2148591324, i64 2148591353, i64 2148591387, i64 2148591418, i64 2148591441}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2149874625}
!84 = !{!"auto-init"}
!85 = !{i64 2157801189}
!86 = !{i32 0, i32 33}
!87 = !{i8 0, i8 2}
