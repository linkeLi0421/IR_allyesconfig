; ModuleID = '/llk/IR_all_yes/net/core/stream.c_pt.bc'
source_filename = "../net/core/stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sk_stream_wait_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_sk_stream_wait_connect\09\09\09\09"
module asm "\09.long\09__crc_sk_stream_wait_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_wait_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_wait_connect\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_wait_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sk_stream_wait_close\22, \22a\22\09"
module asm "\09.weak\09__crc_sk_stream_wait_close\09\09\09\09"
module asm "\09.long\09__crc_sk_stream_wait_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_wait_close:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_wait_close\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_wait_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sk_stream_wait_memory\22, \22a\22\09"
module asm "\09.weak\09__crc_sk_stream_wait_memory\09\09\09\09"
module asm "\09.long\09__crc_sk_stream_wait_memory\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_wait_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_wait_memory\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_wait_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sk_stream_error\22, \22a\22\09"
module asm "\09.weak\09__crc_sk_stream_error\09\09\09\09"
module asm "\09.long\09__crc_sk_stream_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_error:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_error\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sk_stream_kill_queues\22, \22a\22\09"
module asm "\09.weak\09__crc_sk_stream_kill_queues\09\09\09\09"
module asm "\09.long\09__crc_sk_stream_kill_queues\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_kill_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_kill_queues\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_kill_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }

@sk_stream_write_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/core/stream.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_sk_stream_wait_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_wait_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_wait_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_wait_connect to i32), ptr @__kstrtab_sk_stream_wait_connect, ptr @__kstrtabns_sk_stream_wait_connect }, section "___ksymtab+sk_stream_wait_connect", align 4
@__kstrtab_sk_stream_wait_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_wait_close = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_wait_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_wait_close to i32), ptr @__kstrtab_sk_stream_wait_close, ptr @__kstrtabns_sk_stream_wait_close }, section "___ksymtab+sk_stream_wait_close", align 4
@__kstrtab_sk_stream_wait_memory = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_wait_memory = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_wait_memory = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_wait_memory to i32), ptr @__kstrtab_sk_stream_wait_memory, ptr @__kstrtabns_sk_stream_wait_memory }, section "___ksymtab+sk_stream_wait_memory", align 4
@__kstrtab_sk_stream_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_error = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_error to i32), ptr @__kstrtab_sk_stream_error, ptr @__kstrtabns_sk_stream_error }, section "___ksymtab+sk_stream_error", align 4
@__kstrtab_sk_stream_kill_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_kill_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_kill_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_kill_queues to i32), ptr @__kstrtab_sk_stream_kill_queues, ptr @__kstrtabns_sk_stream_kill_queues }, section "___ksymtab+sk_stream_kill_queues", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private constant [21 x i8] c"../net/core/stream.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 39, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 695, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 723, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_sk_stream_error, ptr @__ksymtab_sk_stream_kill_queues, ptr @__ksymtab_sk_stream_wait_close, ptr @__ksymtab_sk_stream_wait_connect, ptr @__ksymtab_sk_stream_wait_memory, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sk_stream_write_space(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %0 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_socket, align 8
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %4 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  %6 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %shr.i.i = ashr i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %shr.i.i)
  %cmp.not.i = icmp slt i32 %sub.i.i, %shr.i.i
  br i1 %cmp.not.i, label %entry.if.end24_crit_edge, label %land.rhs.i

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.rhs.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %9 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not.i.i = icmp slt i32 %8, %10
  br i1 %cmp.not.i.i, label %if.end.i.i, label %land.rhs.i.if.end24_crit_edge

land.rhs.i.if.end24_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end.i.i:                                       ; preds = %land.rhs.i
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i.__sk_stream_is_writeable.exit_crit_edge, label %cond.true.i.i

if.end.i.i.__sk_stream_is_writeable.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_stream_is_writeable.exit

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 %14(ptr noundef %sk, i32 noundef 1) #7
  %phi.bo = xor i1 %call.i.i, true
  br label %__sk_stream_is_writeable.exit

__sk_stream_is_writeable.exit:                    ; preds = %cond.true.i.i, %if.end.i.i.__sk_stream_is_writeable.exit_crit_edge
  %15 = phi i1 [ %phi.bo, %cond.true.i.i ], [ false, %if.end.i.i.__sk_stream_is_writeable.exit_crit_edge ]
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %15, i1 true, i1 %tobool.not
  br i1 %or.cond, label %__sk_stream_is_writeable.exit.if.end24_crit_edge, label %if.then

__sk_stream_is_writeable.exit.if.end24_crit_edge: ; preds = %__sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then:                                          ; preds = %__sk_stream_is_writeable.exit
  %flags = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  %16 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %20 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %20, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

land.lhs.true4:                                   ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end11_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b34 = load i1, ptr @sk_stream_write_space.__warned, align 1
  br i1 %.b34, label %land.lhs.true7.do.end11_crit_edge, label %if.then9

land.lhs.true7.do.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sk_stream_write_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 39, ptr noundef nonnull @.str.1) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %land.lhs.true7.do.end11_crit_edge, %land.lhs.true4.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %tobool.not.i35 = icmp eq ptr %22, null
  br i1 %tobool.not.i35, label %do.end11.if.end23_crit_edge, label %skwq_has_sleeper.exit

do.end11.if.end23_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

skwq_has_sleeper.exit:                            ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %head.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.i.not = icmp eq ptr %24, %head.i.i.i
  br i1 %cmp.i.i.i.i.not, label %skwq_has_sleeper.exit.land.lhs.true17_crit_edge, label %if.then14

skwq_has_sleeper.exit.land.lhs.true17_crit_edge:  ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true17

if.then14:                                        ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__wake_up(ptr noundef nonnull %22, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #7
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then14, %skwq_has_sleeper.exit.land.lhs.true17_crit_edge
  %fasync_list = getelementptr inbounds %struct.socket_wq, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %fasync_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fasync_list, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %land.lhs.true17.if.end23_crit_edge, label %land.lhs.true19

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %27 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sk_shutdown, align 2
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not = icmp eq i8 %29, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true19.if.end23_crit_edge

land.lhs.true19.if.end23_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @sock_wake_async(ptr noundef nonnull %22, i32 noundef 2, i32 noundef 2) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true19.if.end23_crit_edge, %land.lhs.true17.if.end23_crit_edge, %do.end11.if.end23_crit_edge
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i37, label %if.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

if.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %if.end23
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %if.end23.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %30 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i.i.i44 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end24

if.end24:                                         ; preds = %rcu_read_unlock.exit, %__sk_stream_is_writeable.exit.if.end24_crit_edge, %land.rhs.i.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sk_stream_wait_connect(ptr noundef %sk, ptr nocapture noundef %timeo_p) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !21) #7
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
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = load ptr, ptr %task, align 8
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  br label %do.body

do.body.critedge:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 8
  call void @remove_wait_queue(ptr noundef %16, ptr noundef nonnull %wait) #7
  %17 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_write_pending, align 4
  %dec.c = add i32 %18, -1
  store i32 %dec.c, ptr %sk_write_pending, align 4
  br label %do.body.backedge

do.body:                                          ; preds = %do.body.backedge, %entry
  %19 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.if.end_crit_edge, label %sock_error.exit, !prof !34

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sock_error.exit:                                  ; preds = %do.body
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #7
  %21 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #7, !srcloc !36
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %sock_error.exit.if.end_crit_edge, label %cleanup48.loopexit.split.loop.exit77

sock_error.exit.if.end_crit_edge:                 ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sock_error.exit.if.end_crit_edge, %do.body.if.end_crit_edge
  %22 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup48_crit_edge

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end9:                                          ; preds = %if.end
  %24 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeo_p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not = icmp eq i32 %25, 0
  br i1 %tobool10.not, label %if.end9.cleanup48_crit_edge, label %if.end12

if.end9.cleanup48_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end12:                                         ; preds = %if.end9
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i67 = icmp eq i32 %30, 0
  br i1 %tobool.not.i67, label %signal_pending.exit, label %if.end12.if.then15_crit_edge, !prof !34

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

signal_pending.exit:                              ; preds = %if.end12
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool14.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool14.not, label %if.end17, label %signal_pending.exit.if.then15_crit_edge

signal_pending.exit.if.then15_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %signal_pending.exit.if.then15_crit_edge, %if.end12.if.then15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %25)
  %cmp.i = icmp eq i32 %25, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %cleanup48

if.end17:                                         ; preds = %signal_pending.exit
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %14, align 8
  call void @add_wait_queue(ptr noundef %34, ptr noundef nonnull %wait) #7
  %35 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_write_pending, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %sk_write_pending, align 4
  call void @release_sock(ptr noundef %sk) #7
  %37 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool19.not = icmp eq i32 %38, 0
  br i1 %tobool19.not, label %land.rhs, label %if.end17.if.then27_crit_edge

if.end17.if.then27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

land.rhs:                                         ; preds = %if.end17
  %39 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state, align 2
  %conv22 = zext i8 %40 to i32
  %shl23 = shl nuw i32 1, %conv22
  %and24 = and i32 %shl23, -259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.rhs.if.end29_crit_edge, label %land.rhs.if.then27_crit_edge

land.rhs.if.then27_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %land.rhs.if.then27_crit_edge, %if.end17.if.then27_crit_edge
  %41 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeo_p, align 4
  %call28 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %42) #7
  %43 = ptrtoint ptr %timeo_p to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call28, ptr %timeo_p, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.rhs.if.end29_crit_edge
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 212
  %46 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #7
  %47 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool33.not = icmp eq i32 %48, 0
  br i1 %tobool33.not, label %land.rhs34, label %do.body.critedge

land.rhs34:                                       ; preds = %if.end29
  %49 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load volatile i8, ptr %skc_state, align 2
  %conv37 = zext i8 %50 to i32
  %shl38 = shl nuw i32 1, %conv37
  %and39 = and i32 %shl38, -259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %51 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %14, align 8
  call void @remove_wait_queue(ptr noundef %52, ptr noundef nonnull %wait) #7
  %53 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sk_write_pending, align 4
  %dec = add i32 %54, -1
  store i32 %dec, ptr %sk_write_pending, align 4
  br i1 %tobool40.not, label %land.rhs34.cleanup48_crit_edge, label %land.rhs34.do.body.backedge_crit_edge

land.rhs34.do.body.backedge_crit_edge:            ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

land.rhs34.cleanup48_crit_edge:                   ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

do.body.backedge:                                 ; preds = %land.rhs34.do.body.backedge_crit_edge, %do.body.critedge
  br label %do.body

cleanup48.loopexit.split.loop.exit77:             ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  %asmresult.i.i.le = extractvalue { i32, i32 } %21, 0
  %sub.i.le = sub i32 0, %asmresult.i.i.le
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup48.loopexit.split.loop.exit77, %land.rhs34.cleanup48_crit_edge, %if.then15, %if.end9.cleanup48_crit_edge, %if.end.cleanup48_crit_edge
  %retval.2 = phi i32 [ %cond.i, %if.then15 ], [ %sub.i.le, %cleanup48.loopexit.split.loop.exit77 ], [ 0, %land.rhs34.cleanup48_crit_edge ], [ -32, %if.end.cleanup48_crit_edge ], [ -11, %if.end9.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sk_stream_wait_close(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !21) #7
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
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @add_wait_queue(ptr noundef %15, ptr noundef nonnull %wait) #7
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %if.then
  %timeout.addr.0 = phi i32 [ %timeout, %if.then ], [ %timeout.addr.1, %signal_pending.exit.do.body_crit_edge ]
  call void @release_sock(ptr noundef %sk) #7
  %16 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i34 = and i32 %shl.i, 2576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool6.not = icmp eq i32 %and.i34, 0
  br i1 %tobool6.not, label %do.body.if.end_crit_edge, label %if.then8

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeout.addr.0) #7
  br label %if.end

if.end:                                           ; preds = %if.then8, %do.body.if.end_crit_edge
  %timeout.addr.1 = phi i32 [ %timeout.addr.0, %do.body.if.end_crit_edge ], [ %call9, %if.then8 ]
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #7
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i36 = zext i8 %22 to i32
  %shl.i37 = shl nuw i32 1, %conv.i36
  %and.i38 = and i32 %shl.i37, 2576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool13.not = icmp eq i32 %and.i38, 0
  br i1 %tobool13.not, label %if.end.do.end_crit_edge, label %do.cond

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.cond:                                          ; preds = %if.end
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %do.cond.do.end_crit_edge, !prof !34

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

signal_pending.exit:                              ; preds = %do.cond
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool22.not = icmp ne i32 %and1.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.1)
  %tobool23.not = icmp eq i32 %timeout.addr.1, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %signal_pending.exit.do.end_crit_edge, label %signal_pending.exit.do.body_crit_edge

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

signal_pending.exit.do.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %signal_pending.exit.do.end_crit_edge, %do.cond.do.end_crit_edge, %if.end.do.end_crit_edge
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %13, align 8
  call void @remove_wait_queue(ptr noundef %33, ptr noundef nonnull %wait) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sk_stream_wait_memory(ptr noundef %sk, ptr nocapture noundef %timeo_p) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeo_p, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @woken_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %15 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %17 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i.i = icmp slt i32 %16, %18
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %19 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then_crit_edge, label %sk_stream_memory_free.exit

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sk_stream_memory_free.exit:                       ; preds = %if.end.i.i
  %call.i.i = call zeroext i1 %22(ptr noundef %sk, i32 noundef 0) #7
  br i1 %call.i.i, label %sk_stream_memory_free.exit.if.then_crit_edge, label %sk_stream_memory_free.exit.if.end_crit_edge

sk_stream_memory_free.exit.if.end_crit_edge:      ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sk_stream_memory_free.exit.if.then_crit_edge:     ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %sk_stream_memory_free.exit.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %call5 = call i32 @prandom_u32() #7
  %rem = urem i32 %call5, 20
  %add = add nuw nsw i32 %rem, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sk_stream_memory_free.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %vm_wait.0 = phi i32 [ %add, %if.then ], [ 0, %sk_stream_memory_free.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %current_timeo.0 = phi i32 [ %add, %if.then ], [ %1, %sk_stream_memory_free.exit.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %23 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %23, align 8
  call void @add_wait_queue(ptr noundef %25, ptr noundef nonnull %wait) #7
  %26 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %skc_prot.i.i113 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  br label %while.cond

while.cond:                                       ; preds = %if.end67, %if.end
  %vm_wait.1 = phi i32 [ %vm_wait.0, %if.end ], [ 0, %if.end67 ]
  %current_timeo.1 = phi i32 [ %current_timeo.0, %if.end ], [ %current_timeo.4, %if.end67 ]
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %while.cond.sk_set_bit.exit_crit_edge, label %if.end.i

while.cond.sk_set_bit.exit_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_set_bit.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %23, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %31, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #7
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i, %while.cond.sk_set_bit.exit_crit_edge
  %32 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sk_set_bit.exit.out_crit_edge

sk_set_bit.exit.out_crit_edge:                    ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %sk_set_bit.exit
  %34 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sk_shutdown, align 2
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool7.not = icmp eq i8 %36, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeo_p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool10.not = icmp eq i32 %38, 0
  br i1 %tobool10.not, label %do_eagain, label %if.end12

if.end12:                                         ; preds = %if.end9
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stack.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end12.do_interrupted_crit_edge, !prof !34

if.end12.do_interrupted_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_interrupted

signal_pending.exit:                              ; preds = %if.end12
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %and1.i.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool16.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool16.not, label %if.end18, label %signal_pending.exit.do_interrupted_crit_edge

signal_pending.exit.do_interrupted_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_interrupted

if.end18:                                         ; preds = %signal_pending.exit
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %26, align 4
  %50 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i107 = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i107, label %if.end18.sk_clear_bit.exit_crit_edge, label %if.end.i109

if.end18.sk_clear_bit.exit_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_clear_bit.exit

if.end.i109:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %23, align 8
  %flags.i108 = getelementptr inbounds %struct.socket_wq, ptr %52, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i108) #7
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i109, %if.end18.sk_clear_bit.exit_crit_edge
  %53 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %55 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.not.i.i112 = icmp slt i32 %54, %56
  br i1 %cmp.not.i.i112, label %if.end.i.i116, label %sk_stream_memory_free.exit120.thread

sk_stream_memory_free.exit120.thread:             ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vm_wait.1)
  %tobool21.not149 = icmp eq i32 %vm_wait.1, 0
  br label %if.end23

if.end.i.i116:                                    ; preds = %sk_clear_bit.exit
  %57 = ptrtoint ptr %skc_prot.i.i113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skc_prot.i.i113, align 8
  %stream_memory_free.i.i114 = getelementptr inbounds %struct.proto, ptr %58, i32 0, i32 28
  %59 = ptrtoint ptr %stream_memory_free.i.i114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stream_memory_free.i.i114, align 4
  %tobool.not.i.i115 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i115, label %if.end.i.i116.sk_stream_memory_free.exit120_crit_edge, label %cond.true.i.i118

if.end.i.i116.sk_stream_memory_free.exit120_crit_edge: ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_stream_memory_free.exit120

cond.true.i.i118:                                 ; preds = %if.end.i.i116
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i117 = call zeroext i1 %60(ptr noundef %sk, i32 noundef 0) #7
  br label %sk_stream_memory_free.exit120

sk_stream_memory_free.exit120:                    ; preds = %cond.true.i.i118, %if.end.i.i116.sk_stream_memory_free.exit120_crit_edge
  %retval.0.i.i119 = phi i1 [ %call.i.i117, %cond.true.i.i118 ], [ true, %if.end.i.i116.sk_stream_memory_free.exit120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vm_wait.1)
  %tobool21.not = icmp eq i32 %vm_wait.1, 0
  %or.cond = select i1 %retval.0.i.i119, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %sk_stream_memory_free.exit120.out_crit_edge, label %sk_stream_memory_free.exit120.if.end23_crit_edge

sk_stream_memory_free.exit120.if.end23_crit_edge: ; preds = %sk_stream_memory_free.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

sk_stream_memory_free.exit120.out_crit_edge:      ; preds = %sk_stream_memory_free.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end23:                                         ; preds = %sk_stream_memory_free.exit120.if.end23_crit_edge, %sk_stream_memory_free.exit120.thread
  %tobool21.not151 = phi i1 [ %tobool21.not149, %sk_stream_memory_free.exit120.thread ], [ %tobool21.not, %sk_stream_memory_free.exit120.if.end23_crit_edge ]
  %61 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sk_socket, align 8
  %flags24 = getelementptr inbounds %struct.socket, ptr %62, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags24) #7
  %63 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sk_write_pending, align 4
  %inc = add i32 %64, 1
  store i32 %inc, ptr %sk_write_pending, align 4
  call void @release_sock(ptr noundef %sk) #7
  %65 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool26.not = icmp eq i32 %66, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

lor.lhs.false27:                                  ; preds = %if.end23
  %67 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sk_shutdown, align 2
  %69 = and i8 %68, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool31.not = icmp eq i8 %69, 0
  br i1 %tobool31.not, label %lor.rhs, label %lor.lhs.false27.if.end38_crit_edge

lor.lhs.false27.if.end38_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

lor.rhs:                                          ; preds = %lor.lhs.false27
  %70 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %72 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.not.i.i123 = icmp slt i32 %71, %73
  br i1 %cmp.not.i.i123, label %if.end.i.i127, label %lor.rhs.if.then36_crit_edge

lor.rhs.if.then36_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end.i.i127:                                    ; preds = %lor.rhs
  %74 = ptrtoint ptr %skc_prot.i.i113 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skc_prot.i.i113, align 8
  %stream_memory_free.i.i125 = getelementptr inbounds %struct.proto, ptr %75, i32 0, i32 28
  %76 = ptrtoint ptr %stream_memory_free.i.i125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stream_memory_free.i.i125, align 4
  %tobool.not.i.i126 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i126, label %if.end.i.i127.sk_stream_memory_free.exit131_crit_edge, label %cond.true.i.i129

if.end.i.i127.sk_stream_memory_free.exit131_crit_edge: ; preds = %if.end.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_stream_memory_free.exit131

cond.true.i.i129:                                 ; preds = %if.end.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i128 = call zeroext i1 %77(ptr noundef %sk, i32 noundef 0) #7
  br label %sk_stream_memory_free.exit131

sk_stream_memory_free.exit131:                    ; preds = %cond.true.i.i129, %if.end.i.i127.sk_stream_memory_free.exit131_crit_edge
  %retval.0.i.i130 = phi i1 [ %call.i.i128, %cond.true.i.i129 ], [ true, %if.end.i.i127.sk_stream_memory_free.exit131_crit_edge ]
  %spec.select = select i1 %retval.0.i.i130, i1 %tobool21.not151, i1 false
  br i1 %spec.select, label %sk_stream_memory_free.exit131.if.end38_crit_edge, label %sk_stream_memory_free.exit131.if.then36_crit_edge

sk_stream_memory_free.exit131.if.then36_crit_edge: ; preds = %sk_stream_memory_free.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

sk_stream_memory_free.exit131.if.end38_crit_edge: ; preds = %sk_stream_memory_free.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %sk_stream_memory_free.exit131.if.then36_crit_edge, %lor.rhs.if.then36_crit_edge
  %call37 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %current_timeo.1) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %sk_stream_memory_free.exit131.if.end38_crit_edge, %lor.lhs.false27.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %current_timeo.2 = phi i32 [ %current_timeo.1, %sk_stream_memory_free.exit131.if.end38_crit_edge ], [ %call37, %if.then36 ], [ %current_timeo.1, %lor.lhs.false27.if.end38_crit_edge ], [ %current_timeo.1, %if.end23.if.end38_crit_edge ]
  %78 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 212
  %80 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #7
  %81 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool42.not = icmp eq i32 %82, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %if.end38.lor.end55_crit_edge

if.end38.lor.end55_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end55

lor.lhs.false43:                                  ; preds = %if.end38
  %83 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %sk_shutdown, align 2
  %85 = and i8 %84, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool47.not = icmp eq i8 %85, 0
  br i1 %tobool47.not, label %lor.rhs48, label %lor.lhs.false43.lor.end55_crit_edge

lor.lhs.false43.lor.end55_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end55

lor.rhs48:                                        ; preds = %lor.lhs.false43
  %86 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %88 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp.not.i.i134 = icmp slt i32 %87, %89
  br i1 %cmp.not.i.i134, label %if.end.i.i138, label %lor.rhs48.lor.end55_crit_edge

lor.rhs48.lor.end55_crit_edge:                    ; preds = %lor.rhs48
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end55

if.end.i.i138:                                    ; preds = %lor.rhs48
  %90 = ptrtoint ptr %skc_prot.i.i113 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %skc_prot.i.i113, align 8
  %stream_memory_free.i.i136 = getelementptr inbounds %struct.proto, ptr %91, i32 0, i32 28
  %92 = ptrtoint ptr %stream_memory_free.i.i136 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %stream_memory_free.i.i136, align 4
  %tobool.not.i.i137 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i137, label %if.end.i.i138.lor.end55_crit_edge, label %cond.true.i.i140

if.end.i.i138.lor.end55_crit_edge:                ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end55

cond.true.i.i140:                                 ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i139 = call zeroext i1 %93(ptr noundef %sk, i32 noundef 0) #7
  br label %lor.end55

lor.end55:                                        ; preds = %cond.true.i.i140, %if.end.i.i138.lor.end55_crit_edge, %lor.rhs48.lor.end55_crit_edge, %lor.lhs.false43.lor.end55_crit_edge, %if.end38.lor.end55_crit_edge
  %94 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sk_write_pending, align 4
  %dec = add i32 %95, -1
  store i32 %dec, ptr %sk_write_pending, align 4
  br i1 %tobool21.not151, label %lor.end55.if.end67_crit_edge, label %if.then59

lor.end55.if.end67_crit_edge:                     ; preds = %lor.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then59:                                        ; preds = %lor.end55
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %timeo_p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %97)
  %cmp.not = icmp eq i32 %97, 2147483647
  %sub.neg = sub i32 %current_timeo.2, %vm_wait.1
  %sub62 = add i32 %sub.neg, %97
  %98 = call i32 @llvm.smax.i32(i32 %sub62, i32 0)
  %current_timeo.3 = select i1 %cmp.not, i32 2147483647, i32 %98
  br label %if.end67

if.end67:                                         ; preds = %if.then59, %lor.end55.if.end67_crit_edge
  %current_timeo.4 = phi i32 [ %current_timeo.3, %if.then59 ], [ %current_timeo.2, %lor.end55.if.end67_crit_edge ]
  %99 = ptrtoint ptr %timeo_p to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %current_timeo.4, ptr %timeo_p, align 4
  br label %while.cond

out:                                              ; preds = %do_interrupted, %do_eagain, %sk_stream_memory_free.exit120.out_crit_edge, %lor.lhs.false.out_crit_edge, %sk_set_bit.exit.out_crit_edge
  %err.0 = phi i32 [ %cond.i, %do_interrupted ], [ -11, %do_eagain ], [ -32, %lor.lhs.false.out_crit_edge ], [ -32, %sk_set_bit.exit.out_crit_edge ], [ 0, %sk_stream_memory_free.exit120.out_crit_edge ]
  %100 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %23, align 8
  call void @remove_wait_queue(ptr noundef %101, ptr noundef nonnull %wait) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %err.0

do_eagain:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sk_socket, align 8
  %flags70 = getelementptr inbounds %struct.socket, ptr %103, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags70) #7
  br label %out

do_interrupted:                                   ; preds = %signal_pending.exit.do_interrupted_crit_edge, %if.end12.do_interrupted_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %38)
  %cmp.i = icmp eq i32 %38, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sk_stream_error(ptr noundef %sk, i32 noundef %flags, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %err)
  %cmp = icmp eq i32 %err, -32
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.sock_error.exit.thread_crit_edge, label %sock_error.exit, !prof !34

if.then.sock_error.exit.thread_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_error.exit.thread

sock_error.exit:                                  ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #7, !srcloc !36
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %sub.i = sub i32 0, %asmresult.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %sock_error.exit.sock_error.exit.thread_crit_edge, label %sock_error.exit.if.end_crit_edge

sock_error.exit.if.end_crit_edge:                 ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sock_error.exit.sock_error.exit.thread_crit_edge: ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_error.exit.thread

sock_error.exit.thread:                           ; preds = %sock_error.exit.sock_error.exit.thread_crit_edge, %if.then.sock_error.exit.thread_crit_edge
  br label %if.end

if.end:                                           ; preds = %sock_error.exit.thread, %sock_error.exit.if.end_crit_edge
  %err.addr.0 = phi i32 [ -32, %sock_error.exit.thread ], [ %sub.i, %sock_error.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %err.addr.0)
  %cmp1 = icmp eq i32 %err.addr.0, -32
  %and = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool2.not, %cmp1
  br i1 %or.cond, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %call5 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %6, i32 noundef 0) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %err.addr.016 = phi i32 [ -32, %if.then3 ], [ %err.addr.0, %if.end.if.end6_crit_edge ], [ %err, %entry.if.end6_crit_edge ]
  ret i32 %err.addr.016
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sk_stream_kill_queues(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %1, %sk_receive_queue
  %tobool.not.i13.i = icmp eq ptr %1, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %entry.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

entry.__skb_queue_purge.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %12, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #7
  %11 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.i.i = icmp eq ptr %12, %sk_receive_queue
  %tobool.not.i1.i = icmp eq ptr %12, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %entry.__skb_queue_purge.exit_crit_edge
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %13 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.not = icmp eq ptr %14, %sk_write_queue
  br i1 %cmp.i.not, label %__skb_queue_purge.exit.if.end_crit_edge, label %do.end, !prof !34

__skb_queue_purge.exit.if.end_crit_edge:          ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 199, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %__skb_queue_purge.exit.if.end_crit_edge
  %sk_reserved_mem.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %15 = ptrtoint ptr %sk_reserved_mem.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sk_reserved_mem.i, align 4
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %16 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.i.not.i.i, label %if.end.sk_mem_reclaim_final.exit_crit_edge, label %sk_unused_reserved_mem.exit.i.i

if.end.sk_mem_reclaim_final.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_mem_reclaim_final.exit

sk_unused_reserved_mem.exit.i.i:                  ; preds = %if.end
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %20 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_forward_alloc.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, 4095
  br i1 %cmp.i.i, label %if.then2.i.i, label %sk_unused_reserved_mem.exit.i.i.sk_mem_reclaim_final.exit_crit_edge

sk_unused_reserved_mem.exit.i.i.sk_mem_reclaim_final.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_mem_reclaim_final.exit

if.then2.i.i:                                     ; preds = %sk_unused_reserved_mem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef %21) #7
  br label %sk_mem_reclaim_final.exit

sk_mem_reclaim_final.exit:                        ; preds = %if.then2.i.i, %sk_unused_reserved_mem.exit.i.i.sk_mem_reclaim_final.exit_crit_edge, %if.end.sk_mem_reclaim_final.exit_crit_edge
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %22 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_wmem_queued, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %sk_mem_reclaim_final.exit.if.end44_crit_edge, label %do.end38, !prof !34

sk_mem_reclaim_final.exit.if.end44_crit_edge:     ; preds = %sk_mem_reclaim_final.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end38:                                         ; preds = %sk_mem_reclaim_final.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #7
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %sk_mem_reclaim_final.exit.if.end44_crit_edge
  %sk_forward_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %24 = ptrtoint ptr %sk_forward_alloc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_forward_alloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool53.not = icmp eq i32 %25, 0
  br i1 %tobool53.not, label %if.end44.if.end75_crit_edge, label %do.end69, !prof !34

if.end44.if.end75_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.end69:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef null) #7
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %if.end44.if.end75_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/core/stream.c", i32 39, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_sk_stream_wait_connect, !5, !"__ksymtab_sk_stream_wait_connect", i1 false, i1 false}
!5 = !{!"../net/core/stream.c", i32 84, i32 1}
!6 = !{ptr @__ksymtab_sk_stream_wait_close, !7, !"__ksymtab_sk_stream_wait_close", i1 false, i1 false}
!7 = !{!"../net/core/stream.c", i32 111, i32 1}
!8 = !{ptr @__ksymtab_sk_stream_wait_memory, !9, !"__ksymtab_sk_stream_wait_memory", i1 false, i1 false}
!9 = !{!"../net/core/stream.c", i32 181, i32 1}
!10 = !{ptr @__ksymtab_sk_stream_error, !11, !"__ksymtab_sk_stream_error", i1 false, i1 false}
!11 = !{!"../net/core/stream.c", i32 191, i32 1}
!12 = !{ptr @__ksymtab_sk_stream_kill_queues, !13, !"__ksymtab_sk_stream_kill_queues", i1 false, i1 false}
!13 = !{!"../net/core/stream.c", i32 212, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2149359693}
!32 = !{i64 2149453417}
!33 = !{i64 2149359959}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2156768844}
!36 = !{i64 850302, i64 850319, i64 850343, i64 850369, i64 850387}
!37 = !{i64 2156769187}
