; ModuleID = '/llk/IR_all_yes/security/tomoyo/network.c_pt.bc'
source_filename = "../security/tomoyo/network.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tomoyo_unix_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_name_union }
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.list_head = type { ptr, ptr }
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.tomoyo_ipaddr_union = type { [2 x %struct.in6_addr], ptr, i8 }
%struct.tomoyo_inet_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_ipaddr_union, %struct.tomoyo_number_union }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_addr_info = type { i8, i8, %struct.tomoyo_inet_addr_info, %struct.tomoyo_unix_addr_info }
%struct.tomoyo_inet_addr_info = type { i16, ptr, i8 }
%struct.tomoyo_unix_addr_info = type { ptr, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.146 }
%union.anon.146 = type { ptr, [124 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.44 }
%struct.llist_node = type { ptr }
%union.anon.44 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock_common = type { %union.anon.51, %union.anon.53, %union.anon.54, i16, i8, i8, i32, %union.anon.56, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.82, [0 x i32], %union.anon.83, i16, i16, %union.anon.84, %struct.refcount_struct, [0 x i32], %union.anon.85 }
%union.anon.51 = type { i64 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.56 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { %struct.hlist_node }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.148, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.148 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.anon.155 = type { ptr, i8, i8 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.154 = type { ptr, i16, i8, i8, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.90, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.91, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.92, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.90 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.91 = type { ptr }
%union.anon.92 = type { ptr }
%struct.sk_buff_head = type { %union.anon.88, i32, %struct.spinlock }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.60, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { i64 }
%union.anon.60 = type { ptr }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stream\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dgram\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"seqpacket\00", [22 x i8] zeroinitializer }, align 32
@tomoyo_proto_keyword = dso_local constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4], [40 x i8] zeroinitializer }, align 32
@tomoyo_socket_keyword = external dso_local local_unnamed_addr constant [4 x ptr], align 4
@__const.tomoyo_write_unix_network.e = private unnamed_addr constant %struct.tomoyo_unix_acl { %struct.tomoyo_acl_info <{ %struct.list_head zeroinitializer, ptr null, i8 0, i8 6 }>, i8 0, i8 0, %struct.tomoyo_name_union zeroinitializer }, align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%pI6c%c%pI6c\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%pI4%c%pI4\00", [21 x i8] zeroinitializer }, align 32
@tomoyo_unix2mac = internal constant { [6 x [4 x i8]], [40 x i8] } { [6 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\1E\1F \00", [4 x i8] c"!\00\00\22", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"#$%\00"], [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"anonymous\00", [22 x i8] zeroinitializer }, align 32
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unix\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"network %s %s %s %s\0A\00", [43 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@tomoyo_inet2mac = internal constant { [6 x [4 x i8]], [40 x i8] } { [6 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\17\18\19\00", [4 x i8] c"\1A\00\00\1B", [4 x i8] c"\1C\00\00\1D", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inet\00", [27 x i8] zeroinitializer }, align 32
@switch.table.tomoyo_socket_connect_permission = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\03\03\03\02", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 38, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 34, i32 21 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 35, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 36, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 37, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"tomoyo_proto_keyword\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 33, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 111, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 93, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"tomoyo_unix2mac\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 161, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 557, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 406, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 367, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 189, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"tomoyo_inet2mac\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 138, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 391, i32 41 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [29 x i8] c"../security/tomoyo/network.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 393, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant [46 x i8] c"switch.table.tomoyo_socket_connect_permission\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tomoyo_proto_keyword, ptr @.str.5, ptr @.str.6, ptr @tomoyo_unix2mac, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @tomoyo_inet2mac, ptr @.str.11, ptr @.str.12, ptr @switch.table.tomoyo_socket_connect_permission], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_proto_keyword to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_unix2mac to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_inet2mac to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tomoyo_socket_connect_permission to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_parse_ipaddr_union(ptr noundef %param, ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  %end = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr [2 x %struct.in6_addr], ptr %ptr, i32 0, i32 1
  %call = tail call ptr @tomoyo_read_token(ptr noundef %param) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #13
  %0 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %end, align 4, !annotation !43
  %call5 = tail call ptr @strchr(ptr noundef %call, i32 noundef 58)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %call6 = call i32 @in4_pton(ptr noundef %call, i32 noundef -1, ptr noundef %ptr, i32 noundef 45, ptr noundef nonnull %end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true
  %is_ipv6 = getelementptr inbounds %struct.tomoyo_ipaddr_union, ptr %ptr, i32 0, i32 2
  %1 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %is_ipv6, align 4
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptr, align 4
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx2, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr, ptr %end, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %11)
  %cmp17.not = icmp eq i8 %11, 45
  br i1 %cmp17.not, label %lor.lhs.false, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %call19 = call i32 @in4_pton(ptr noundef %incdec.ptr, i32 noundef -1, ptr noundef %arrayidx2, i32 noundef 0, ptr noundef nonnull %end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %lor.lhs.false22.if.end26_crit_edge, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false22.if.end26_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26:                                         ; preds = %lor.lhs.false22.if.end26_crit_edge, %if.then8
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %entry.if.end27_crit_edge
  %call28 = call i32 @in6_pton(ptr noundef %call, i32 noundef -1, ptr noundef %ptr, i32 noundef 45, ptr noundef nonnull %end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  %is_ipv632 = getelementptr inbounds %struct.tomoyo_ipaddr_union, ptr %ptr, i32 0, i32 2
  %16 = ptrtoint ptr %is_ipv632 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %is_ipv632, align 4
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool33.not = icmp eq i8 %20, 0
  br i1 %tobool33.not, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %21 = call ptr @memcpy(ptr %arrayidx2, ptr %ptr, i32 16)
  br label %if.end49

if.else35:                                        ; preds = %if.then31
  %incdec.ptr36 = getelementptr i8, ptr %18, i32 1
  %22 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr36, ptr %end, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %24)
  %cmp38.not = icmp eq i8 %24, 45
  br i1 %cmp38.not, label %lor.lhs.false40, label %if.else35.cleanup_crit_edge

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false40:                                  ; preds = %if.else35
  %call41 = call i32 @in6_pton(ptr noundef %incdec.ptr36, i32 noundef -1, ptr noundef %arrayidx2, i32 noundef 0, ptr noundef nonnull %end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %lor.lhs.false40.cleanup_crit_edge, label %lor.lhs.false44

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %25 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool46.not = icmp eq i8 %28, 0
  br i1 %tobool46.not, label %lor.lhs.false44.if.end49_crit_edge, label %lor.lhs.false44.cleanup_crit_edge

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false44.if.end49_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.end49:                                         ; preds = %lor.lhs.false44.if.end49_crit_edge, %if.then34
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %lor.lhs.false44.cleanup_crit_edge, %lor.lhs.false40.cleanup_crit_edge, %if.else35.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end26, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end49 ], [ true, %if.end26 ], [ false, %lor.lhs.false22.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %lor.lhs.false44.cleanup_crit_edge ], [ false, %lor.lhs.false40.cleanup_crit_edge ], [ false, %if.else35.cleanup_crit_edge ], [ false, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_read_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_print_ip(ptr nocapture noundef writeonly %buf, i32 noundef %size, ptr noundef %ptr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ipv6 = getelementptr inbounds %struct.tomoyo_ipaddr_union, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ipv6, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %arrayidx7 = getelementptr [2 x %struct.in6_addr], ptr %ptr, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ptr, ptr noundef dereferenceable(16) %arrayidx7, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr, align 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp eq i32 %3, %5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp.i.sink = phi i1 [ %cmp.i, %if.else ], [ %tobool.not.i, %if.then ]
  %.str.6.sink = phi ptr [ @.str.6, %if.else ], [ @.str.5, %if.then ]
  %cond.i16 = select i1 %cmp.i.sink, i32 0, i32 45
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull %.str.6.sink, ptr noundef %ptr, i32 noundef %cond.i16, ptr noundef %arrayidx7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_inet_network(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_inet_acl, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %e) #13
  %0 = call ptr @memset(ptr %e, i32 0, i32 72)
  %1 = getelementptr inbounds %struct.tomoyo_acl_info, ptr %e, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %1, align 1
  %call = tail call ptr @tomoyo_read_token(ptr noundef %param) #13
  %call1 = tail call ptr @tomoyo_read_token(ptr noundef %param) #13
  %protocol2 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 1
  %call6 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(2) @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %entry
  %call6.1 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(7) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %call6.2 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(6) @.str.2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %tobool.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %call6.3 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(4) @.str.3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3)
  %tobool.not.3 = icmp eq i32 %call6.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.end_crit_edge, label %for.inc.4

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %call6.5 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.5)
  %tobool.not.5 = icmp eq i32 %call6.5, 0
  %not.tobool.not.5 = xor i1 %tobool.not.5, true
  %spec.select80 = select i1 %tobool.not.5, i8 5, i8 6
  br label %for.end

for.end:                                          ; preds = %for.inc.4, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp26 = phi i1 [ false, %for.inc.2.for.end_crit_edge ], [ false, %for.inc.1.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ], [ false, %entry.for.end_crit_edge ], [ %not.tobool.not.5, %for.inc.4 ]
  %storemerge.lcssa = phi i8 [ 3, %for.inc.2.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %spec.select80, %for.inc.4 ]
  %3 = ptrtoint ptr %protocol2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge.lcssa, ptr %protocol2, align 2
  %perm = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 2
  %4 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %4)
  %perm.promoted = load i8, ptr %perm, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_socket_keyword to i32))
  %5 = load ptr, ptr @tomoyo_socket_keyword, align 4
  %call15 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %5) #13
  %conv19 = zext i1 %call15 to i8
  %conv1978 = or i8 %perm.promoted, %conv19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 1), align 4
  %call15.1 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %6) #13
  %conv19.1 = select i1 %call15.1, i8 2, i8 0
  %conv1978.1 = or i8 %conv1978, %conv19.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 2), align 4
  %call15.2 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %7) #13
  %conv19.2 = select i1 %call15.2, i8 4, i8 0
  %conv1978.2 = or i8 %conv1978.1, %conv19.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 3) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 3), align 4
  %call15.3 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %8) #13
  %conv19.3 = select i1 %call15.3, i8 8, i8 0
  %conv1978.3 = or i8 %conv1978.2, %conv19.3
  %9 = ptrtoint ptr %perm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1978.3, ptr %perm, align 1
  br i1 %cmp26, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %10 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool29.not = icmp eq i8 %11, 0
  br i1 %tobool29.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp34 = icmp eq i8 %15, 64
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end31
  %incdec.ptr = getelementptr i8, ptr %13, i32 1
  %16 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr, ptr %param, align 4
  %call38 = tail call ptr @tomoyo_get_group(ptr noundef %param, i8 noundef zeroext 2) #13
  %group = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %group, align 4
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %if.then36.cleanup_crit_edge, label %if.then36.if.end48_crit_edge

if.then36.if.end48_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end31
  %address44 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 3
  %call45 = call zeroext i1 @tomoyo_parse_ipaddr_union(ptr noundef %param, ptr noundef %address44)
  br i1 %call45, label %if.else.if.end48_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then36.if.end48_crit_edge
  %port = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 4
  %call49 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef %port) #13
  br i1 %call49, label %lor.lhs.false50, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false50:                                  ; preds = %if.end48
  %arrayidx52 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %19)
  %cmp53 = icmp ugt i32 %19, 65535
  br i1 %cmp53, label %lor.lhs.false50.out_crit_edge, label %if.end56

lor.lhs.false50.out_crit_edge:                    ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end56:                                         ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = call i32 @tomoyo_update_domain(ptr noundef nonnull %e, i32 noundef 72, ptr noundef %param, ptr noundef nonnull @tomoyo_same_inet_acl, ptr noundef nonnull @tomoyo_merge_inet_acl) #13
  br label %out

out:                                              ; preds = %if.end56, %lor.lhs.false50.out_crit_edge, %if.end48.out_crit_edge, %if.else.out_crit_edge
  %error.0 = phi i32 [ -22, %lor.lhs.false50.out_crit_edge ], [ %call57, %if.end56 ], [ -22, %if.end48.out_crit_edge ], [ -22, %if.else.out_crit_edge ]
  %group59 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %group59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group59, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %out.tomoyo_put_group.exit_crit_edge, label %if.then.i

out.tomoyo_put_group.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_put_group.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %users.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %21, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !45
  br label %tomoyo_put_group.exit

tomoyo_put_group.exit:                            ; preds = %if.then.i, %out.tomoyo_put_group.exit_crit_edge
  %port60 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %e, i32 0, i32 4
  call void @tomoyo_put_number_union(ptr noundef %port60) #13
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_put_group.exit, %if.then36.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %tomoyo_put_group.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -12, %if.then36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %e) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_permstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_group(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_number_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_update_domain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_inet_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 2
  %protocol4 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %protocol4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %address = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 3
  %address7 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %address, ptr noundef dereferenceable(32) %address7, i32 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %group.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group.i, align 4
  %group3.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %group3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group3.i, align 4
  %cmp.i = icmp eq ptr %5, %7
  br i1 %cmp.i, label %tomoyo_same_ipaddr_union.exit, label %land.lhs.true.i.land.end_crit_edge

land.lhs.true.i.land.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

tomoyo_same_ipaddr_union.exit:                    ; preds = %land.lhs.true.i
  %is_ipv6.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_ipv6.i, align 4, !range !44
  %is_ipv65.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %is_ipv65.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_ipv65.i, align 4, !range !44
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp8.i = icmp eq i8 %9, %11
  br i1 %cmp8.i, label %land.rhs, label %tomoyo_same_ipaddr_union.exit.land.end_crit_edge

tomoyo_same_ipaddr_union.exit.land.end_crit_edge: ; preds = %tomoyo_same_ipaddr_union.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_same_ipaddr_union.exit
  %port = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 4
  %port9 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %14 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i16 = icmp eq i32 %13, %15
  br i1 %cmp.i16, label %land.lhs.true.i17, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true.i17:                                ; preds = %land.rhs
  %arrayidx4.i = getelementptr %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp7.i = icmp eq i32 %17, %19
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i17.land.end_crit_edge

land.lhs.true.i17.land.end_crit_edge:             ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i17
  %group.i18 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %group.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group.i18, align 4
  %group9.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %group9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group9.i, align 4
  %cmp10.i = icmp eq ptr %21, %23
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.land.end_crit_edge

land.lhs.true8.i.land.end_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %value_type.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %value_type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %value_type.i, align 4
  %value_type13.i = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %value_type13.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %value_type13.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp16.i = icmp eq i8 %25, %27
  br i1 %cmp16.i, label %land.rhs.i19, label %land.lhs.true11.i.land.end_crit_edge

land.lhs.true11.i.land.end_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs.i19:                                     ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx19.i = getelementptr %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 4, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx22.i = getelementptr %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 4, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp24.i = icmp eq i8 %29, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs.i19, %land.lhs.true11.i.land.end_crit_edge, %land.lhs.true8.i.land.end_crit_edge, %land.lhs.true.i17.land.end_crit_edge, %land.rhs.land.end_crit_edge, %tomoyo_same_ipaddr_union.exit.land.end_crit_edge, %land.lhs.true.i.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %32 = phi i1 [ false, %tomoyo_same_ipaddr_union.exit.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ false, %land.lhs.true11.i.land.end_crit_edge ], [ false, %land.lhs.true8.i.land.end_crit_edge ], [ false, %land.lhs.true.i17.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp24.i, %land.rhs.i19 ], [ false, %land.lhs.true.i.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ]
  ret i1 %32
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_merge_inet_acl(ptr noundef %a, ptr nocapture noundef readonly %b, i1 noundef zeroext %is_delete) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %perm, align 1
  %perm6 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %perm6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %perm6, align 1
  %neg = xor i8 %3, -1
  %and = and i8 %1, %neg
  %or27 = or i8 %3, %1
  %perm1.0 = select i1 %is_delete, i8 %and, i8 %or27
  store volatile i8 %perm1.0, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %perm1.0)
  %tobool21.not = icmp eq i8 %perm1.0, 0
  ret i1 %tobool21.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_put_number_union(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_unix_network(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_unix_acl, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %e) #13
  %0 = call ptr @memcpy(ptr %e, ptr @__const.tomoyo_write_unix_network.e, i32 24)
  %call = tail call ptr @tomoyo_read_token(ptr noundef %param) #13
  %call1 = tail call ptr @tomoyo_read_token(ptr noundef %param) #13
  %protocol2 = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %e, i32 0, i32 1
  %call6 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(2) @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %entry
  %call6.1 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(7) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %call6.2 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(6) @.str.2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %tobool.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %call6.3 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(4) @.str.3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3)
  %tobool.not.3 = icmp eq i32 %call6.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.end_crit_edge, label %for.inc.4

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %call6.5 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.5)
  %tobool.not.5 = icmp eq i32 %call6.5, 0
  %not.tobool.not.5 = xor i1 %tobool.not.5, true
  %spec.select52 = select i1 %tobool.not.5, i8 5, i8 6
  br label %for.end

for.end:                                          ; preds = %for.inc.4, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp26 = phi i1 [ false, %for.inc.2.for.end_crit_edge ], [ false, %for.inc.1.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ], [ false, %entry.for.end_crit_edge ], [ %not.tobool.not.5, %for.inc.4 ]
  %storemerge.lcssa = phi i8 [ 3, %for.inc.2.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %spec.select52, %for.inc.4 ]
  %1 = ptrtoint ptr %protocol2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %storemerge.lcssa, ptr %protocol2, align 2
  %perm = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %e, i32 0, i32 2
  %2 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %2)
  %perm.promoted = load i8, ptr %perm, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_socket_keyword to i32))
  %3 = load ptr, ptr @tomoyo_socket_keyword, align 4
  %call15 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %3) #13
  %conv19 = zext i1 %call15 to i8
  %conv1950 = or i8 %perm.promoted, %conv19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 1), align 4
  %call15.1 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %4) #13
  %conv19.1 = select i1 %call15.1, i8 2, i8 0
  %conv1950.1 = or i8 %conv1950, %conv19.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 2), align 4
  %call15.2 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %5) #13
  %conv19.2 = select i1 %call15.2, i8 4, i8 0
  %conv1950.2 = or i8 %conv1950.1, %conv19.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 3) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 3), align 4
  %call15.3 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call1, ptr noundef %6) #13
  %conv19.3 = select i1 %call15.3, i8 8, i8 0
  %conv1950.3 = or i8 %conv1950.2, %conv19.3
  %7 = ptrtoint ptr %perm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1950.3, ptr %perm, align 1
  br i1 %cmp26, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %8 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool29.not = icmp eq i8 %9, 0
  br i1 %tobool29.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %e, i32 0, i32 3
  %call32 = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %name) #13
  br i1 %call32, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = call i32 @tomoyo_update_domain(ptr noundef nonnull %e, i32 noundef 24, ptr noundef %param, ptr noundef nonnull @tomoyo_same_unix_acl, ptr noundef nonnull @tomoyo_merge_unix_acl) #13
  call void @tomoyo_put_name_union(ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end31.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %e) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_name_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_unix_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 2
  %protocol4 = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %protocol4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  %name = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %a, i32 0, i32 3
  %name7 = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %b, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name7, align 4
  %cmp.i = icmp eq ptr %5, %7
  br i1 %cmp.i, label %land.rhs.i, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %group.i = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %a, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group.i, align 4
  %group2.i = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %b, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %group2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group2.i, align 4
  %cmp3.i = icmp eq ptr %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp3.i, %land.rhs.i ]
  ret i1 %12
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_merge_unix_acl(ptr noundef %a, ptr nocapture noundef readonly %b, i1 noundef zeroext %is_delete) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %perm, align 1
  %perm6 = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %perm6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %perm6, align 1
  %neg = xor i8 %3, -1
  %and = and i8 %1, %neg
  %or27 = or i8 %3, %1
  %perm1.0 = select i1 %is_delete, i8 %and, i8 %or27
  store volatile i8 %perm1.0, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %perm1.0)
  %tobool21.not = icmp eq i8 %perm1.0, 0
  ret i1 %tobool21.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_put_name_union(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_socket_listen_permission(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  %address = alloca %struct.tomoyo_addr_info, align 4
  %addr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %address) #13
  %0 = call ptr @memset(ptr %address, i32 255, i32 24)
  %1 = tail call i32 @llvm.read_register.i32(metadata !33) #13
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.tomoyo_sock_family.exit.thread_crit_edge

entry.tomoyo_sock_family.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_sock_family.exit.thread

if.end.i:                                         ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %7 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk, align 16
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_family.i, align 8
  %trunc.i = trunc i16 %10 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.end.i.tomoyo_sock_family.exit.thread_crit_edge [
    i8 2, label %if.end.i.lor.lhs.false_crit_edge
    i8 10, label %if.end.i.lor.lhs.false_crit_edge35
    i8 1, label %if.end.i.lor.lhs.false_crit_edge36
  ]

if.end.i.lor.lhs.false_crit_edge36:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i.lor.lhs.false_crit_edge35:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i.tomoyo_sock_family.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_sock_family.exit.thread

tomoyo_sock_family.exit.thread:                   ; preds = %if.end.i.tomoyo_sock_family.exit.thread_crit_edge, %entry.tomoyo_sock_family.exit.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #13
  br label %cleanup18

lor.lhs.false:                                    ; preds = %if.end.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge35, %if.end.i.lor.lhs.false_crit_edge36
  %type1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %12 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #13
  %14 = call ptr @memset(ptr %addr, i32 255, i32 128)
  %15 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %13, label %lor.lhs.false.cleanup18_crit_edge [
    i16 1, label %lor.lhs.false.if.end_crit_edge
    i16 5, label %lor.lhs.false.if.end_crit_edge37
  ]

lor.lhs.false.if.end_crit_edge37:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.cleanup18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge37
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %getname = getelementptr inbounds %struct.proto_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %getname to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %getname, align 4
  %call5 = call i32 %19(ptr noundef %sock, ptr noundef nonnull %addr, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %.call5 = select i1 %cmp6, i32 -1, i32 %call5
  br i1 %cmp6, label %if.end.cleanup18_crit_edge, label %cleanup.cont

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

cleanup.cont:                                     ; preds = %if.end
  %conv10 = trunc i16 %13 to i8
  %20 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %address, align 4
  %operation = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 1
  %21 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %operation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %trunc.i)
  %cmp12 = icmp eq i8 %trunc.i, 1
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = call fastcc i32 @tomoyo_check_unix_address(ptr noundef nonnull %addr, i32 noundef %.call5, ptr noundef nonnull %address)
  br label %cleanup18

if.end16:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = call fastcc i32 @tomoyo_check_inet_address(ptr noundef nonnull %addr, i32 noundef %.call5, i16 noundef zeroext 0, ptr noundef nonnull %address)
  br label %cleanup18

cleanup18:                                        ; preds = %if.end16, %if.then14, %if.end.cleanup18_crit_edge, %lor.lhs.false.cleanup18_crit_edge, %tomoyo_sock_family.exit.thread
  %retval.1 = phi i32 [ %call15, %if.then14 ], [ %call17, %if.end16 ], [ %call5, %if.end.cleanup18_crit_edge ], [ 0, %lor.lhs.false.cleanup18_crit_edge ], [ 0, %tomoyo_sock_family.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %address) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tomoyo_check_unix_address(ptr noundef %addr, i32 noundef %addr_len, ptr nocapture noundef %address) unnamed_addr #0 align 64 {
entry:
  %r.i = alloca %struct.tomoyo_request_info, align 4
  %addr17.i = alloca %struct.tomoyo_path_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %unix0 = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp1.not = icmp eq i16 %1, 1
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %unix0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sun_path, ptr %unix0, align 4
  %addr_len6 = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %addr_len6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %addr_len, ptr %addr_len6, align 4
  %call.i.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #13
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r.i) #13
  %4 = call ptr @memset(ptr %r.i, i32 255, i32 44)
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %address, align 4
  %idxprom.i = zext i8 %6 to i32
  %operation.i = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 1
  %7 = ptrtoint ptr %operation.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %operation.i, align 1
  %idxprom1.i = zext i8 %8 to i32
  %arrayidx2.i = getelementptr [6 x [4 x i8]], ptr @tomoyo_unix2mac, i32 0, i32 %idxprom.i, i32 %idxprom1.i
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end4.if.end30.i_crit_edge, label %land.lhs.true.i

if.end4.if.end30.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.end4
  %call3.i = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r.i, ptr noundef null, i8 noundef zeroext %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end30.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %unix0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unix0, align 4
  %13 = ptrtoint ptr %addr_len6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr_len6, align 4
  %sub.i = add i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 1
  br i1 %cmp6.i, label %if.then.i.if.end13.i_crit_edge, label %if.else.i

if.then.i.if.end13.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.else.i:                                        ; preds = %if.then.i
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.i, label %if.else.i.if.end13.i_crit_edge, label %if.then11.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = call i32 @strnlen(ptr noundef %12, i32 noundef %sub.i) #16
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.else.i.if.end13.i_crit_edge, %if.then.i.if.end13.i_crit_edge
  %buf.0.i = phi ptr [ %12, %if.then11.i ], [ %12, %if.else.i.if.end13.i_crit_edge ], [ @.str.7, %if.then.i.if.end13.i_crit_edge ]
  %len.0.i = phi i32 [ %call12.i, %if.then11.i ], [ %sub.i, %if.else.i.if.end13.i_crit_edge ], [ 9, %if.then.i.if.end13.i_crit_edge ]
  %call14.i = call ptr @tomoyo_encode2(ptr noundef %buf.0.i, i32 noundef %len.0.i) #13
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.if.end30.i_crit_edge, label %if.then16.i

if.end13.i.if.end30.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %addr17.i) #13
  %17 = getelementptr inbounds i8, ptr %addr17.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 -1, ptr %17, align 4
  %19 = ptrtoint ptr %addr17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call14.i, ptr %addr17.i, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %addr17.i) #13
  %param_type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r.i, i32 0, i32 5
  %20 = ptrtoint ptr %param_type.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 6, ptr %param_type.i, align 4
  %21 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %address, align 4
  %param.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r.i, i32 0, i32 3
  %protocol19.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r.i, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %protocol19.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %protocol19.i, align 4
  %24 = ptrtoint ptr %operation.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %operation.i, align 1
  %operation22.i = getelementptr inbounds %struct.anon.155, ptr %param.i, i32 0, i32 2
  %26 = ptrtoint ptr %operation22.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %operation22.i, align 1
  %27 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %addr17.i, ptr %param.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then16.i
  call void @tomoyo_check_acl(ptr noundef nonnull %r.i, ptr noundef nonnull @tomoyo_check_unix_acl) #13
  %28 = ptrtoint ptr %protocol19.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protocol19.i, align 4
  %30 = ptrtoint ptr %operation22.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %operation22.i, align 1
  %32 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %param.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %idxprom.i.i.i = zext i8 %29 to i32
  %arrayidx.i.i.i = getelementptr [6 x ptr], ptr @tomoyo_proto_keyword, i32 0, i32 %idxprom.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i, align 4
  %idxprom1.i.i.i = zext i8 %31 to i32
  %arrayidx2.i.i.i = getelementptr [4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 %idxprom1.i.i.i
  %38 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %call.i.i45.i = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %37, ptr noundef %39, ptr noundef %35) #13
  %cmp26.i = icmp eq i32 %call.i.i45.i, 1
  br i1 %cmp26.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call14.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr17.i) #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end.i, %if.end13.i.if.end30.i_crit_edge, %land.lhs.true.i.if.end30.i_crit_edge, %if.end4.if.end30.i_crit_edge
  %error.1.i = phi i32 [ 0, %land.lhs.true.i.if.end30.i_crit_edge ], [ 0, %if.end4.if.end30.i_crit_edge ], [ %call.i.i45.i, %do.end.i ], [ -12, %if.end13.i.if.end30.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp ult i32 %call.i.i.i, 2
  br i1 %tobool.not.i.i.i, label %if.end30.i.tomoyo_unix_entry.exit_crit_edge, label %land.rhs.i.i.i

if.end30.i.tomoyo_unix_entry.exit_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_unix_entry.exit

land.rhs.i.i.i:                                   ; preds = %if.end30.i
  %.b1.i.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.tomoyo_unix_entry.exit_crit_edge, label %if.then.i.i.i, !prof !46

land.rhs.i.i.i.tomoyo_unix_entry.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_unix_entry.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %tomoyo_unix_entry.exit

tomoyo_unix_entry.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.tomoyo_unix_entry.exit_crit_edge, %if.end30.i.tomoyo_unix_entry.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #13
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r.i) #13
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_unix_entry.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1.i, %tomoyo_unix_entry.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tomoyo_check_inet_address(ptr noundef %addr, i32 noundef %addr_len, i16 noundef zeroext %port, ptr nocapture noundef %address) unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [128 x i8], align 1
  %r.i = alloca %struct.tomoyo_request_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inet = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %1, label %if.end.cleanup_crit_edge [
    i16 10, label %sw.bb
    i16 2, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addr_len)
  %cmp1 = icmp ult i32 %addr_len, 24
  br i1 %cmp1, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %is_ipv6 = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_ipv6, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %address5 = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %address5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sin6_addr, ptr %address5, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp8 = icmp ult i32 %addr_len, 16
  br i1 %cmp8, label %sw.bb7.cleanup_crit_edge, label %if.end11

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  %is_ipv612 = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %is_ipv612 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_ipv612, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %address13 = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %address13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sin_addr, ptr %address13, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11, %if.end4
  %storemerge.in = phi ptr [ %sin_port, %if.end11 ], [ %sin6_port, %if.end4 ]
  %7 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %storemerge = load i16, ptr %storemerge.in, align 2
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp16 = icmp eq i8 %9, 3
  %spec.store.select = select i1 %cmp16, i16 %port, i16 %storemerge
  %10 = ptrtoint ptr %inet to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %spec.store.select, ptr %inet, align 4
  %call.i.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #13
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r.i) #13
  %11 = call ptr @memset(ptr %r.i, i32 255, i32 44)
  %12 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %address, align 4
  %idxprom.i = zext i8 %13 to i32
  %operation.i = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 1
  %14 = ptrtoint ptr %operation.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %operation.i, align 1
  %idxprom1.i = zext i8 %15 to i32
  %arrayidx2.i = getelementptr [6 x [4 x i8]], ptr @tomoyo_inet2mac, i32 0, i32 %idxprom.i, i32 %idxprom1.i
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %land.lhs.true.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.epilog
  %call3.i = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r.i, ptr noundef null, i8 noundef zeroext %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %param_type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r.i, i32 0, i32 5
  %18 = ptrtoint ptr %param_type.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %param_type.i, align 4
  %19 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %address, align 4
  %param.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r.i, i32 0, i32 3
  %protocol6.i = getelementptr inbounds %struct.anon.154, ptr %param.i, i32 0, i32 2
  %21 = ptrtoint ptr %protocol6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %protocol6.i, align 2
  %22 = ptrtoint ptr %operation.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %operation.i, align 1
  %operation9.i = getelementptr inbounds %struct.anon.154, ptr %param.i, i32 0, i32 3
  %24 = ptrtoint ptr %operation9.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %operation9.i, align 1
  %is_ipv6.i = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_ipv6.i, align 4, !range !44
  %is_ipv612.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r.i, i32 0, i32 3, i32 0, i32 2
  %27 = ptrtoint ptr %is_ipv612.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %is_ipv612.i, align 4
  %address14.i = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %address14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %address14.i, align 4
  %30 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %param.i, align 4
  %31 = ptrtoint ptr %inet to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %inet, align 4
  %port19.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r.i, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %port19.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %port19.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.i
  call void @tomoyo_check_acl(ptr noundef nonnull %r.i, ptr noundef nonnull @tomoyo_check_inet_acl) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i.i) #13
  %34 = call ptr @memset(ptr %buf.i.i, i32 255, i32 128)
  %35 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %param.i, align 4
  %37 = ptrtoint ptr %is_ipv612.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_ipv612.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  %.str.6..str.5.i.i = select i1 %tobool.not.i.i, ptr @.str.6, ptr @.str.5
  %call.i.i31.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i.i, i32 noundef 128, ptr noundef nonnull %.str.6..str.5.i.i, ptr noundef %36, i32 noundef 0, ptr noundef %36) #13
  %call.i.i = call i32 @strlen(ptr noundef nonnull %buf.i.i) #16
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %call.i.i
  %sub.i.i = sub i32 128, %call.i.i
  %39 = ptrtoint ptr %port19.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %port19.i, align 4
  %conv.i.i = zext i16 %40 to i32
  %call7.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv.i.i) #13
  %41 = ptrtoint ptr %protocol6.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %protocol6.i, align 2
  %43 = ptrtoint ptr %operation9.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %operation9.i, align 1
  %idxprom.i.i.i = zext i8 %42 to i32
  %arrayidx.i.i.i = getelementptr [6 x ptr], ptr @tomoyo_proto_keyword, i32 0, i32 %idxprom.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %idxprom1.i.i.i = zext i8 %44 to i32
  %arrayidx2.i.i.i = getelementptr [4 x ptr], ptr @tomoyo_socket_keyword, i32 0, i32 %idxprom1.i.i.i
  %47 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %call.i22.i.i = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %46, ptr noundef %48, ptr noundef nonnull %buf.i.i) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i.i) #13
  %cmp21.i = icmp eq i32 %call.i22.i.i, 1
  br i1 %cmp21.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.if.end.i_crit_edge

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end.i:                                         ; preds = %do.body.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %sw.epilog.if.end.i_crit_edge
  %error.0.i = phi i32 [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %sw.epilog.if.end.i_crit_edge ], [ %call.i22.i.i, %do.body.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp ult i32 %call.i.i.i, 2
  br i1 %tobool.not.i.i.i, label %if.end.i.tomoyo_inet_entry.exit_crit_edge, label %land.rhs.i.i.i

if.end.i.tomoyo_inet_entry.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_inet_entry.exit

land.rhs.i.i.i:                                   ; preds = %if.end.i
  %.b1.i.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.tomoyo_inet_entry.exit_crit_edge, label %if.then.i.i.i, !prof !46

land.rhs.i.i.i.tomoyo_inet_entry.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_inet_entry.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %tomoyo_inet_entry.exit

tomoyo_inet_entry.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.tomoyo_inet_entry.exit_crit_edge, %if.end.i.tomoyo_inet_entry.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #13
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r.i) #13
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_inet_entry.exit, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0.i, %tomoyo_inet_entry.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb7.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_socket_connect_permission(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %addr_len) local_unnamed_addr #0 align 64 {
entry:
  %address = alloca %struct.tomoyo_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %address) #13
  %0 = call ptr @memset(ptr %address, i32 255, i32 24)
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %3 = tail call i32 @llvm.read_register.i32(metadata !33) #13
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_family.i, align 8
  %trunc.i = trunc i16 %10 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc.i, label %if.end.i.cleanup_crit_edge [
    i8 2, label %if.end.i.if.end_crit_edge
    i8 10, label %if.end.i.if.end_crit_edge22
    i8 1, label %if.end.i.if.end_crit_edge23
  ]

if.end.i.if.end_crit_edge23:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.if.end_crit_edge22:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge22, %if.end.i.if.end_crit_edge23
  %type1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %12 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type1, align 4
  %conv = sext i16 %13 to i32
  %conv2 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2, ptr %address, align 4
  %switch.tableidx = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 5
  br i1 %15, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.tomoyo_socket_connect_permission, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %17)
  %switch.load = load i8, ptr %switch.gep, align 1
  %operation4 = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 1
  %18 = ptrtoint ptr %operation4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %switch.load, ptr %operation4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %trunc.i)
  %cmp = icmp eq i8 %trunc.i, 1
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call fastcc i32 @tomoyo_check_unix_address(ptr noundef %addr, i32 noundef %addr_len, ptr noundef nonnull %address)
  br label %cleanup

if.end9:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %19 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sk_protocol, align 4
  %call11 = call fastcc i32 @tomoyo_check_inet_address(ptr noundef %addr, i32 noundef %addr_len, i16 noundef zeroext %20, ptr noundef nonnull %address)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %call11, %if.end9 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %address) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_socket_bind_permission(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %addr_len) local_unnamed_addr #0 align 64 {
entry:
  %address = alloca %struct.tomoyo_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %address) #13
  %0 = call ptr @memset(ptr %address, i32 255, i32 24)
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %3 = tail call i32 @llvm.read_register.i32(metadata !33) #13
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_family.i, align 8
  %trunc.i = trunc i16 %10 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %trunc.i, label %if.end.i.cleanup_crit_edge [
    i8 2, label %if.end.i.if.end_crit_edge
    i8 10, label %if.end.i.if.end_crit_edge21
    i8 1, label %if.end.i.if.end_crit_edge22
  ]

if.end.i.if.end_crit_edge22:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.if.end_crit_edge21:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge21, %if.end.i.if.end_crit_edge22
  %type1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %12 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type1, align 4
  %conv = sext i16 %13 to i32
  %14 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge23
    i32 3, label %if.end.sw.bb_crit_edge24
    i32 5, label %if.end.sw.bb_crit_edge25
  ]

if.end.sw.bb_crit_edge25:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge24:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge23, %if.end.sw.bb_crit_edge24, %if.end.sw.bb_crit_edge25
  %conv2 = trunc i16 %13 to i8
  %15 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2, ptr %address, align 4
  %operation = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 1
  %16 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %operation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %trunc.i)
  %cmp = icmp eq i8 %trunc.i, 1
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = call fastcc i32 @tomoyo_check_unix_address(ptr noundef %addr, i32 noundef %addr_len, ptr noundef nonnull %address)
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %17 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sk_protocol, align 4
  %call9 = call fastcc i32 @tomoyo_check_inet_address(ptr noundef %addr, i32 noundef %addr_len, i16 noundef zeroext %18, ptr noundef nonnull %address)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %call9, %if.end7 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %address) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_socket_sendmsg_permission(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %msg, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %address = alloca %struct.tomoyo_addr_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %address) #13
  %0 = call ptr @memset(ptr %address, i32 255, i32 24)
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %3 = tail call i32 @llvm.read_register.i32(metadata !33) #13
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.tomoyo_sock_family.exit_crit_edge

entry.tomoyo_sock_family.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_sock_family.exit

if.end.i:                                         ; preds = %entry
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_family.i, align 8
  %trunc.i = trunc i16 %10 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %trunc.i, label %if.end.i.tomoyo_sock_family.exit_crit_edge [
    i8 2, label %if.end.i.sw.bb.i_crit_edge
    i8 10, label %if.end.i.sw.bb.i_crit_edge31
    i8 1, label %if.end.i.sw.bb.i_crit_edge32
  ]

if.end.i.sw.bb.i_crit_edge32:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge31:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end.i.tomoyo_sock_family.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_sock_family.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge31, %if.end.i.sw.bb.i_crit_edge32
  br label %tomoyo_sock_family.exit

tomoyo_sock_family.exit:                          ; preds = %sw.bb.i, %if.end.i.tomoyo_sock_family.exit_crit_edge, %entry.tomoyo_sock_family.exit_crit_edge
  %retval.0.i = phi i8 [ %trunc.i, %sw.bb.i ], [ 0, %entry.tomoyo_sock_family.exit_crit_edge ], [ 0, %if.end.i.tomoyo_sock_family.exit_crit_edge ]
  %type1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %12 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type1, align 4
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msg, align 8
  %tobool.not = icmp ne ptr %15, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool2.not = icmp ne i8 %retval.0.i, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  %16 = and i16 %13, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %switch = icmp eq i16 %16, 2
  %or.cond30 = select i1 %or.cond, i1 %switch, i1 false
  br i1 %or.cond30, label %if.end, label %tomoyo_sock_family.exit.cleanup_crit_edge

tomoyo_sock_family.exit.cleanup_crit_edge:        ; preds = %tomoyo_sock_family.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %tomoyo_sock_family.exit
  %conv7 = trunc i16 %13 to i8
  %17 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %address, align 4
  %operation = getelementptr inbounds %struct.tomoyo_addr_info, ptr %address, i32 0, i32 1
  %18 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %operation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.i)
  %cmp9 = icmp eq i8 %retval.0.i, 1
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_namelen, align 4
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = call fastcc i32 @tomoyo_check_unix_address(ptr noundef nonnull %15, i32 noundef %20, ptr noundef nonnull %address)
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %21 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sk_protocol, align 4
  %call18 = call fastcc i32 @tomoyo_check_inet_address(ptr noundef nonnull %15, i32 noundef %20, i16 noundef zeroext %22, ptr noundef nonnull %address)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %tomoyo_sock_family.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then11 ], [ %call18, %if.end14 ], [ 0, %tomoyo_sock_family.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %address) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_init_request_info(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_encode2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_check_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_unix_acl(ptr nocapture noundef readonly %r, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %perm, align 1
  %conv = zext i8 %1 to i32
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %operation = getelementptr inbounds %struct.anon.155, ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operation, align 1
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %name = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %ptr, i32 0, i32 3
  %call = tail call ptr @tomoyo_compare_name_union(ptr noundef %5, ptr noundef %name) #13
  %tobool3 = icmp ne ptr %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool3, %land.rhs ]
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_compare_name_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_supervisor(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_inet_acl(ptr nocapture noundef readonly %r, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %is_ipv6 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ipv6, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv = select i1 %tobool.not, i32 4, i32 16
  %perm = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %ptr, i32 0, i32 2
  %2 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %perm, align 1
  %conv1 = zext i8 %3 to i32
  %operation = getelementptr inbounds %struct.anon.154, ptr %param, i32 0, i32 3
  %4 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %operation, align 1
  %conv3 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv3
  %and = and i32 %shl, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port, align 4
  %conv6 = zext i16 %7 to i32
  %port7 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %ptr, i32 0, i32 4
  %call = tail call zeroext i1 @tomoyo_compare_number_union(i32 noundef %conv6, ptr noundef %port7) #13
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %address = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %ptr, i32 0, i32 3
  %group = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %ptr, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_ipv6, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12 = icmp ne i8 %11, 0
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 4
  %call17 = tail call zeroext i1 @tomoyo_address_matches_group(i1 noundef zeroext %tobool12, ptr noundef %13, ptr noundef nonnull %9) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %is_ipv620 = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %ptr, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %is_ipv620 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_ipv620, align 4, !range !44
  %16 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_ipv6, align 4, !range !44
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp = icmp eq i8 %15, %17
  br i1 %cmp, label %land.lhs.true, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end18
  %18 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %param, align 4
  %call32 = tail call i32 @memcmp(ptr noundef dereferenceable(4) %address, ptr noundef dereferenceable(4) %19, i32 noundef %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %land.rhs, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx39 = getelementptr %struct.tomoyo_inet_acl, ptr %ptr, i32 0, i32 3, i32 0, i32 1
  %call41 = tail call i32 @memcmp(ptr noundef dereferenceable(4) %19, ptr noundef dereferenceable(4) %arrayidx39, i32 noundef %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 1
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %land.lhs.true.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call17, %if.then9 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end18.cleanup_crit_edge ], [ %cmp42, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_compare_number_union(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_address_matches_group(i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/network.c", i32 38, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/network.c", i32 34, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/tomoyo/network.c", i32 35, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/tomoyo/network.c", i32 36, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/tomoyo/network.c", i32 37, i32 21}
!10 = !{ptr @tomoyo_proto_keyword, !11, !"tomoyo_proto_keyword", i1 false, i1 false}
!11 = !{!"../security/tomoyo/network.c", i32 33, i32 20}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/network.c", i32 111, i32 31}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/tomoyo/network.c", i32 93, i32 31}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/tomoyo/network.c", i32 557, i32 10}
!18 = !{ptr @tomoyo_unix2mac, !19, !"tomoyo_unix2mac", i1 false, i1 false}
!19 = !{!"../security/tomoyo/network.c", i32 161, i32 17}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/tomoyo/network.c", i32 406, i32 33}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/tomoyo/network.c", i32 367, i32 30}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tomoyo_inet2mac, !28, !"tomoyo_inet2mac", i1 false, i1 false}
!28 = !{!"../security/tomoyo/network.c", i32 138, i32 17}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../security/tomoyo/network.c", i32 391, i32 41}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/tomoyo/network.c", i32 393, i32 33}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i8 0, i8 2}
!45 = !{i64 2148745689, i64 2148745715, i64 2148745744, i64 2148745778, i64 2148745809, i64 2148745832}
!46 = !{!"branch_weights", i32 2000, i32 1}
