; ModuleID = '/llk/IR_all_yes/net/sched/sch_etf.c_pt.bc'
source_filename = "../net/sched/sch_etf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.etf_sched_data = type { i8, i8, i8, i32, i32, i32, i64, %struct.rb_root_cached, %struct.qdisc_watchdog, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.101, [0 x i32], %union.anon.102, i16, i16, %union.anon.103, %struct.refcount_struct, [0 x i32], %union.anon.104 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.105, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.106, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.107, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.105 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.tc_etf_qopt_offload = type { i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.144 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_etf_qopt = type { i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@etf_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"etf\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 104, i32 0, ptr @etf_enqueue_timesortedlist, ptr @etf_dequeue_timesortedlist, ptr @etf_peek_timesortedlist, ptr @etf_init, ptr @etf_reset, ptr @etf_destroy, ptr null, ptr null, ptr null, ptr null, ptr @etf_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_etf__518_519_etf_module_init6 = internal global ptr @etf_module_init, section ".initcall6.init", align 4
@__exitcall_etf_module_exit = internal global ptr @etf_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file519 = internal constant [31 x i8] c"sch_etf.file=net/sched/sch_etf\00", section ".modinfo", align 1
@__UNIQUE_ID_license520 = internal constant [20 x i8] c"sch_etf.license=GPL\00", section ".modinfo", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@etf_init.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Missing ETF qdisc options which are mandatory\00", [50 x i8] zeroinitializer }, align 32
@etf_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.49 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@etf_init.__msg.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missing mandatory ETF parameters\00", [63 x i8] zeroinitializer }, align 32
@etf_init.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch_etf\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etf_init\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_etf.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"delta %d clockid %d offload %s deadline %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@etf_init.__msg.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Clockid is not supported\00", [39 x i8] zeroinitializer }, align 32
@validate_input_params.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dynamic clockids are not supported\00", [61 x i8] zeroinitializer }, align 32
@validate_input_params.__msg.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid clockid. CLOCK_TAI must be used\00", [56 x i8] zeroinitializer }, align 32
@validate_input_params.__msg.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Delta must be positive\00", [41 x i8] zeroinitializer }, align 32
@etf_enable_offload.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Specified device does not support ETF offload\00", [50 x i8] zeroinitializer }, align 32
@etf_enable_offload.__msg.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Specified device failed to setup ETF hardware offload\00", [42 x i8] zeroinitializer }, align 32
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@etf_disable_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Couldn't disable ETF offload for queue %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"etf_disable_offload\00", [44 x i8] zeroinitializer }, align 32
@etf_disable_offload._entry_ptr = internal global ptr @etf_disable_offload._entry, section ".printk_index", align 4
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 7, i64 11]
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 271, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 356, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"etf_policy\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 40, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 367, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 373, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 411, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 58, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 63, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 68, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 330, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 339, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1165, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private constant [23 x i8] c"../net/sched/sch_etf.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 315, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 991, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file519, ptr @__UNIQUE_ID_license520, ptr @__exitcall_etf_module_exit, ptr @__initcall__kmod_sch_etf__518_519_etf_module_init6, ptr @etf_disable_offload._entry, ptr @etf_disable_offload._entry_ptr, ptr @etf_module_exit, ptr @.str, ptr @etf_init.__msg, ptr @etf_policy, ptr @etf_init.__msg.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @etf_init.__msg.8, ptr @validate_input_params.__msg, ptr @validate_input_params.__msg.9, ptr @validate_input_params.__msg.10, ptr @etf_enable_offload.__msg, ptr @etf_enable_offload.__msg.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_init.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_init.__msg.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_init.__msg.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_input_params.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_input_params.__msg.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_input_params.__msg.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_enable_offload.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_enable_offload.__msg.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_disable_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @etf_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @etf_qdisc_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @etf_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @etf_qdisc_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etf_enqueue_timesortedlist(ptr noundef %nskb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %0 = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skip_sock_check.i = getelementptr inbounds %struct.etf_sched_data, ptr %privdata.i, i32 0, i32 2
  %6 = ptrtoint ptr %skip_sock_check.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %skip_sock_check.i, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.skip.i_crit_edge

entry.skip.i_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip.i

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.then_crit_edge, label %lor.lhs.false.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %if.end.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end4.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %10 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i39.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i39.not.i, label %if.end4.i.if.then_crit_edge, label %if.end7.i

if.end4.i.if.then_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end7.i:                                        ; preds = %if.end4.i
  %sk_clockid.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 69
  %14 = ptrtoint ptr %sk_clockid.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sk_clockid.i, align 4
  %conv.i = zext i8 %15 to i32
  %clockid.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %16 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clockid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %17, %conv.i
  br i1 %cmp.not.i, label %if.end10.i, label %if.end7.i.if.then_crit_edge

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end10.i:                                       ; preds = %if.end7.i
  %sk_txtime_deadline_mode.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 70
  %18 = ptrtoint ptr %sk_txtime_deadline_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %sk_txtime_deadline_mode.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %deadline_mode.i = getelementptr inbounds %struct.etf_sched_data, ptr %privdata.i, i32 0, i32 1
  %19 = ptrtoint ptr %deadline_mode.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %deadline_mode.i, align 1, !range !59
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i, i8 %20)
  %cmp14.not.i = icmp eq i8 %bf.lshr.i, %20
  br i1 %cmp14.not.i, label %if.end10.i.skip.i_crit_edge, label %if.end10.i.if.then_crit_edge

if.end10.i.if.then_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end10.i.skip.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip.i

skip.i:                                           ; preds = %if.end10.i.skip.i_crit_edge, %entry.skip.i_crit_edge
  %get_time.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %21 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_time.i, align 8
  %call18.i = tail call i64 %22() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %call18.i)
  %cmp.i.i.i = icmp slt i64 %2, %call18.i
  br i1 %cmp.i.i.i, label %skip.i.if.then_crit_edge, label %is_packet_valid.exit

skip.i.if.then_crit_edge:                         ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_packet_valid.exit:                             ; preds = %skip.i
  %last.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %23 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %last.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %24)
  %cmp.i.i40.i.not = icmp slt i64 %2, %24
  br i1 %cmp.i.i40.i.not, label %is_packet_valid.exit.if.then_crit_edge, label %while.cond.preheader

is_packet_valid.exit.if.then_crit_edge:           ; preds = %is_packet_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

while.cond.preheader:                             ; preds = %is_packet_valid.exit
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head, align 4
  %tobool.not51 = icmp eq ptr %26, null
  br i1 %tobool.not51, label %if.then.i.critedge, label %while.cond.preheader.cond.end_crit_edge

while.cond.preheader.cond.end_crit_edge:          ; preds = %while.cond.preheader
  br label %cond.end

if.then:                                          ; preds = %is_packet_valid.exit.if.then_crit_edge, %skip.i.if.then_crit_edge, %if.end10.i.if.then_crit_edge, %if.end7.i.if.then_crit_edge, %if.end4.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %0, align 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %tobool.not.i34 = icmp eq ptr %30, null
  br i1 %tobool.not.i34, label %if.then.report_sock_error.exit_crit_edge, label %lor.lhs.false.i40

if.then.report_sock_error.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit

lor.lhs.false.i40:                                ; preds = %if.then
  %skc_state.i.i35 = getelementptr inbounds %struct.sock_common, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state.i.i35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state.i.i35, align 2
  %conv.i.i36 = zext i8 %32 to i32
  %shl.i.i37 = shl nuw i32 1, %conv.i.i36
  %and.i.i38 = and i32 %shl.i.i37, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %tobool.i.not.i39 = icmp eq i32 %and.i.i38, 0
  br i1 %tobool.i.not.i39, label %lor.lhs.false.i40.report_sock_error.exit_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i40.report_sock_error.exit_crit_edge: ; preds = %lor.lhs.false.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i40
  %sk_txtime_report_errors.i = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 70
  %33 = ptrtoint ptr %sk_txtime_report_errors.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i41 = load i8, ptr %sk_txtime_report_errors.i, align 1
  %34 = and i8 %bf.load.i41, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool2.not.i = icmp eq i8 %34, 0
  br i1 %tobool2.not.i, label %lor.lhs.false1.i.report_sock_error.exit_crit_edge, label %if.end.i42

lor.lhs.false1.i.report_sock_error.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit

if.end.i42:                                       ; preds = %lor.lhs.false1.i
  %call3.i = tail call ptr @skb_clone(ptr noundef %nskb, i32 noundef 2592) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i42.report_sock_error.exit_crit_edge, label %if.end6.i

if.end.i42.report_sock_error.exit_crit_edge:      ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit

if.end6.i:                                        ; preds = %if.end.i42
  %ee.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 24
  %35 = ptrtoint ptr %ee.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 22, ptr %ee.i, align 4
  %ee_origin.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 28
  %36 = ptrtoint ptr %ee_origin.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %ee_origin.i, align 4
  %ee_type.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 29
  %37 = ptrtoint ptr %ee_type.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ee_type.i, align 1
  %ee_code.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 30
  %38 = ptrtoint ptr %ee_code.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %ee_code.i, align 2
  %ee_pad.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 31
  %39 = ptrtoint ptr %ee_pad.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ee_pad.i, align 1
  %40 = lshr i64 %28, 32
  %conv.i43 = trunc i64 %40 to i32
  %41 = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 36
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv.i43, ptr %41, align 4
  %conv12.i = trunc i64 %28 to i32
  %ee_info.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 32
  %43 = ptrtoint ptr %ee_info.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv12.i, ptr %ee_info.i, align 4
  %call14.i = tail call i32 @sock_queue_err_skb(ptr noundef nonnull %30, ptr noundef nonnull %call3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end6.i.report_sock_error.exit_crit_edge, label %if.then16.i

if.end6.i.report_sock_error.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit

if.then16.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3.i, i32 noundef 0) #9
  br label %report_sock_error.exit

report_sock_error.exit:                           ; preds = %if.then16.i, %if.end6.i.report_sock_error.exit_crit_edge, %if.end.i42.report_sock_error.exit_crit_edge, %lor.lhs.false1.i.report_sock_error.exit_crit_edge, %lor.lhs.false.i40.report_sock_error.exit_crit_edge, %if.then.report_sock_error.exit_crit_edge
  %44 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %to_free, align 4
  %46 = ptrtoint ptr %nskb to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %nskb, align 8
  store ptr %nskb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %47 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %while.cond.preheader.cond.end_crit_edge
  %49 = phi ptr [ %54, %cond.end.cond.end_crit_edge ], [ %26, %while.cond.preheader.cond.end_crit_edge ]
  %leftmost.0.off052 = phi i1 [ %leftmost.1.off0, %cond.end.cond.end_crit_edge ], [ true, %while.cond.preheader.cond.end_crit_edge ]
  %50 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %52)
  %cmp.i.not = icmp slt i64 %2, %52
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 1
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2
  %leftmost.1.off0 = select i1 %cmp.i.not, i1 %leftmost.0.off052, i1 false
  %p.1 = select i1 %cmp.i.not, ptr %rb_left, ptr %rb_right
  %53 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %54, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

while.cond.while.end_crit_edge:                   ; preds = %cond.end
  %phi.cast.le = ptrtoint ptr %49 to i32
  %55 = ptrtoint ptr %nskb to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %phi.cast.le, ptr %nskb, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %nskb, i32 0, i32 1
  %56 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %nskb, i32 0, i32 2
  %57 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rb_left.i, align 4
  %58 = ptrtoint ptr %p.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %nskb, ptr %p.1, align 4
  br i1 %leftmost.1.off0, label %while.cond.while.end_crit_edge.if.then.i_crit_edge, label %while.cond.while.end_crit_edge.rb_insert_color_cached.exit_crit_edge

while.cond.while.end_crit_edge.rb_insert_color_cached.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %rb_insert_color_cached.exit

while.cond.while.end_crit_edge.if.then.i_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.critedge:                               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %nskb to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %nskb, align 4
  %rb_right.i.c = getelementptr inbounds %struct.rb_node, ptr %nskb, i32 0, i32 1
  %60 = ptrtoint ptr %rb_right.i.c to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %rb_right.i.c, align 4
  %rb_left.i.c = getelementptr inbounds %struct.rb_node, ptr %nskb, i32 0, i32 2
  %61 = ptrtoint ptr %rb_left.i.c to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %rb_left.i.c, align 4
  %62 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %nskb, ptr %head, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.critedge, %while.cond.while.end_crit_edge.if.then.i_crit_edge
  %rb_leftmost.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %63 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %nskb, ptr %rb_leftmost.i, align 4
  br label %rb_insert_color_cached.exit

rb_insert_color_cached.exit:                      ; preds = %if.then.i, %while.cond.while.end_crit_edge.rb_insert_color_cached.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef %nskb, ptr noundef %head) #9
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 3
  %64 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %66 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %67, %65
  store i32 %add.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %68 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qlen, align 8
  %inc = add i32 %69, 1
  store i32 %inc, ptr %qlen, align 8
  %rb_leftmost.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %70 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not.i46 = icmp eq ptr %71, null
  br i1 %tobool.not.i46, label %if.then.i47, label %if.end.i49

if.then.i47:                                      ; preds = %rb_insert_color_cached.exit
  call void @__sanitizer_cov_trace_pc() #11
  %watchdog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog.i) #9
  br label %cleanup

if.end.i49:                                       ; preds = %rb_insert_color_cached.exit
  call void @__sanitizer_cov_trace_pc() #11
  %72 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %72, align 8
  %delta.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %75 = ptrtoint ptr %delta.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delta.i, align 4
  %conv.i48 = sext i32 %76 to i64
  %sub.i = sub i64 %74, %conv.i48
  %watchdog2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog2.i, i64 noundef %sub.i, i64 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i49, %if.then.i47, %report_sock_error.exit
  %retval.0 = phi i32 [ 1, %report_sock_error.exit ], [ 0, %if.then.i47 ], [ 0, %if.end.i49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @etf_dequeue_timesortedlist(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %rb_leftmost.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_time = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %2 = ptrtoint ptr %get_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_time, align 8
  %call2 = tail call i64 %3() #9
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %call2)
  %cmp.i.i = icmp slt i64 %6, %call2
  br i1 %cmp.i.i, label %for.body.lr.ph.i, label %if.end5

for.body.lr.ph.i:                                 ; preds = %if.end
  %head.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %drops.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %overlimits.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %report_sock_error.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.addr.034.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %call1.i, %report_sock_error.exit.i.for.body.i_crit_edge ]
  %to_free.033.i = phi ptr [ null, %for.body.lr.ph.i ], [ %skb.addr.034.i, %report_sock_error.exit.i.for.body.i_crit_edge ]
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %skb.addr.034.i) #9
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.034.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %call2)
  %cmp3.i.i.i = icmp sgt i64 %9, %call2
  br i1 %cmp3.i.i.i, label %for.body.i.timesortedlist_drop.exit_crit_edge, label %if.end.i

for.body.i.timesortedlist_drop.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timesortedlist_drop.exit

if.end.i:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i.i32 = icmp eq ptr %11, %skb.addr.034.i
  br i1 %cmp.i.i32, label %if.then.i.i, label %if.end.i.rb_erase_cached.exit.i_crit_edge

if.end.i.rb_erase_cached.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %skb.addr.034.i) #9
  %12 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end.i.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %skb.addr.034.i, ptr noundef %head.i) #9
  %13 = ptrtoint ptr %skb.addr.034.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %skb.addr.034.i, align 8
  %prev.i = getelementptr inbounds %struct.anon.0, ptr %skb.addr.034.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prev.i, align 4
  %15 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_queue.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %19 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.034.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %19, align 8
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.034.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %rb_erase_cached.exit.i.report_sock_error.exit.i_crit_edge, label %lor.lhs.false.i.i

rb_erase_cached.exit.i.report_sock_error.exit.i_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit.i

lor.lhs.false.i.i:                                ; preds = %rb_erase_cached.exit.i
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %27 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i.i.report_sock_error.exit.i_crit_edge, label %lor.lhs.false1.i.i

lor.lhs.false.i.i.report_sock_error.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit.i

lor.lhs.false1.i.i:                               ; preds = %lor.lhs.false.i.i
  %sk_txtime_report_errors.i.i = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 70
  %28 = ptrtoint ptr %sk_txtime_report_errors.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i = load i8, ptr %sk_txtime_report_errors.i.i, align 1
  %29 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false1.i.i.report_sock_error.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false1.i.i.report_sock_error.exit.i_crit_edge: ; preds = %lor.lhs.false1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false1.i.i
  %call3.i.i = tail call ptr @skb_clone(ptr noundef nonnull %skb.addr.034.i, i32 noundef 2592) #9
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.report_sock_error.exit.i_crit_edge, label %if.end6.i.i

if.end.i.i.report_sock_error.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %ee.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 24
  %30 = ptrtoint ptr %ee.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 125, ptr %ee.i.i, align 4
  %ee_origin.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 28
  %31 = ptrtoint ptr %ee_origin.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %ee_origin.i.i, align 4
  %ee_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 29
  %32 = ptrtoint ptr %ee_type.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ee_type.i.i, align 1
  %ee_code.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 30
  %33 = ptrtoint ptr %ee_code.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %ee_code.i.i, align 2
  %ee_pad.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 31
  %34 = ptrtoint ptr %ee_pad.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %ee_pad.i.i, align 1
  %35 = lshr i64 %22, 32
  %conv.i.i = trunc i64 %35 to i32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 36
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i.i, ptr %36, align 4
  %conv12.i.i = trunc i64 %22 to i32
  %ee_info.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i.i, i32 0, i32 3, i32 32
  %38 = ptrtoint ptr %ee_info.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv12.i.i, ptr %ee_info.i.i, align 4
  %call14.i.i = tail call i32 @sock_queue_err_skb(ptr noundef nonnull %25, ptr noundef nonnull %call3.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end6.i.i.report_sock_error.exit.i_crit_edge, label %if.then16.i.i

if.end6.i.i.report_sock_error.exit.i_crit_edge:   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %report_sock_error.exit.i

if.then16.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3.i.i, i32 noundef 0) #9
  br label %report_sock_error.exit.i

report_sock_error.exit.i:                         ; preds = %if.then16.i.i, %if.end6.i.i.report_sock_error.exit.i_crit_edge, %if.end.i.i.report_sock_error.exit.i_crit_edge, %lor.lhs.false1.i.i.report_sock_error.exit.i_crit_edge, %lor.lhs.false.i.i.report_sock_error.exit.i_crit_edge, %rb_erase_cached.exit.i.report_sock_error.exit.i_crit_edge
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.034.i, i32 0, i32 3
  %39 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb.i.i.i.i, align 4
  %41 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %backlog.i.i, align 4
  %sub.i.i = sub i32 %42, %40
  store i32 %sub.i.i, ptr %backlog.i.i, align 4
  %43 = ptrtoint ptr %skb.addr.034.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %to_free.033.i, ptr %skb.addr.034.i, align 8
  %44 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i.i, ptr %drops.i.i.i.i, align 4
  %46 = ptrtoint ptr %overlimits.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %overlimits.i.i, align 16
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %overlimits.i.i, align 16
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %49, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %report_sock_error.exit.i.timesortedlist_drop.exit_crit_edge, label %report_sock_error.exit.i.for.body.i_crit_edge

report_sock_error.exit.i.for.body.i_crit_edge:    ; preds = %report_sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

report_sock_error.exit.i.timesortedlist_drop.exit_crit_edge: ; preds = %report_sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timesortedlist_drop.exit

timesortedlist_drop.exit:                         ; preds = %report_sock_error.exit.i.timesortedlist_drop.exit_crit_edge, %for.body.i.timesortedlist_drop.exit_crit_edge
  %to_free.0.lcssa.i = phi ptr [ %skb.addr.034.i, %report_sock_error.exit.i.timesortedlist_drop.exit_crit_edge ], [ %to_free.033.i, %for.body.i.timesortedlist_drop.exit_crit_edge ]
  tail call void @kfree_skb_list(ptr noundef %to_free.0.lcssa.i) #9
  br label %out

if.end5:                                          ; preds = %if.end
  %deadline_mode = getelementptr inbounds %struct.etf_sched_data, ptr %privdata.i, i32 0, i32 1
  %50 = ptrtoint ptr %deadline_mode to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %deadline_mode, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool6.not = icmp eq i8 %51, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @timesortedlist_remove(ptr noundef %sch, ptr noundef nonnull %1)
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call2, ptr %4, align 8
  br label %out

if.end8:                                          ; preds = %if.end5
  %delta = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %53 = ptrtoint ptr %delta to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delta, align 4
  %conv = sext i32 %54 to i64
  %sub = sub i64 %6, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %sub)
  %cmp3.i.i = icmp sgt i64 %call2, %sub
  br i1 %cmp3.i.i, label %if.then10, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @timesortedlist_remove(ptr noundef %sch, ptr noundef nonnull %1)
  br label %out

out:                                              ; preds = %if.then10, %if.end8.out_crit_edge, %if.then7, %timesortedlist_drop.exit
  %skb.0 = phi ptr [ null, %timesortedlist_drop.exit ], [ %1, %if.then7 ], [ %1, %if.then10 ], [ null, %if.end8.out_crit_edge ]
  %55 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i34 = icmp eq ptr %56, null
  br i1 %tobool.not.i34, label %if.then.i, label %if.end.i35

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %watchdog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog.i) #9
  br label %cleanup

if.end.i35:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %57 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %57, align 8
  %delta.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %60 = ptrtoint ptr %delta.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delta.i, align 4
  %conv.i = sext i32 %61 to i64
  %sub.i = sub i64 %59, %conv.i
  %watchdog2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog2.i, i64 noundef %sub.i, i64 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i35, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %skb.0, %if.then.i ], [ %skb.0, %if.end.i35 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @etf_peek_timesortedlist(ptr nocapture noundef readonly %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_leftmost = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %0 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etf_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %etf.i = alloca %struct.tc_etf_qopt_offload, align 8
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #9
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !60
  %5 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !60
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @etf_init.__msg) #9
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @etf_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @etf_policy, i32 noundef 0, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @etf_init.__msg.1) #9
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @etf_init.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etf_init.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etf_init, %if.then26)) #9
          to label %do.end34 [label %if.then26], !srcloc !61

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %clockid = getelementptr i8, ptr %11, i32 8
  %15 = ptrtoint ptr %clockid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clockid, align 4
  %flags = getelementptr i8, ptr %11, i32 12
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool27.not, ptr @.str.7, ptr @.str.6
  %and29 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.7, ptr @.str.6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @etf_init.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.5, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %cond, ptr noundef nonnull %cond31) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then26, %if.end18
  %clockid.i = getelementptr i8, ptr %11, i32 8
  %19 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clockid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp slt i32 %20, 0
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %do.end34
  call void @do_trace_netlink_extack(ptr noundef nonnull @validate_input_params.__msg) #9
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %20)
  %cmp4.not.i = icmp eq i32 %20, 11
  br i1 %cmp4.not.i, label %if.end13.i, label %do.body6.i

do.body6.i:                                       ; preds = %if.end2.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @validate_input_params.__msg.9) #9
  %tobool8.not.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i, label %do.body6.i.cleanup_crit_edge, label %do.body6.i.return.sink.split.i_crit_edge

do.body6.i.return.sink.split.i_crit_edge:         ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body6.i.cleanup_crit_edge:                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.end2.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp14.i = icmp slt i32 %22, 0
  br i1 %cmp14.i, label %do.body16.i, label %if.end38

do.body16.i:                                      ; preds = %if.end13.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @validate_input_params.__msg.10) #9
  %tobool18.not.i = icmp eq ptr %extack, null
  br i1 %tobool18.not.i, label %do.body16.i.cleanup_crit_edge, label %do.body16.i.return.sink.split.i_crit_edge

do.body16.i.return.sink.split.i_crit_edge:        ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body16.i.cleanup_crit_edge:                    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

return.sink.split.i:                              ; preds = %do.body16.i.return.sink.split.i_crit_edge, %do.body6.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %validate_input_params.__msg.10.sink.i = phi ptr [ @validate_input_params.__msg, %do.body.i.return.sink.split.i_crit_edge ], [ @validate_input_params.__msg.9, %do.body6.i.return.sink.split.i_crit_edge ], [ @validate_input_params.__msg.10, %do.body16.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -524, %do.body.i.return.sink.split.i_crit_edge ], [ -22, %do.body6.i.return.sink.split.i_crit_edge ], [ -22, %do.body16.i.return.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %validate_input_params.__msg.10.sink.i, ptr %extack, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end13.i
  %24 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_queue.i, align 8
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 640
  %queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.ptr.div, ptr %queue, align 8
  %flags40 = getelementptr i8, ptr %11, i32 12
  %29 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags40, align 4
  %and41 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end38.if.end48_crit_edge, label %if.then43

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %if.end38
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev_ops.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %etf.i) #9
  %33 = ptrtoint ptr %etf.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 72057594037927936, ptr %etf.i, align 8
  %34 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %privdata.i, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i127 = icmp eq i8 %35, 0
  br i1 %tobool.not.i127, label %if.end.i, label %if.then43.etf_enable_offload.exit_crit_edge

if.then43.etf_enable_offload.exit_crit_edge:      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %etf_enable_offload.exit

if.end.i:                                         ; preds = %if.then43
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %32, i32 0, i32 42
  %36 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %do.body.i128, label %if.end6.i

do.body.i128:                                     ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @etf_enable_offload.__msg) #9
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.body.i128.etf_enable_offload.exit.thread_crit_edge, label %do.body.i128.cleanup.sink.split.i_crit_edge

do.body.i128.cleanup.sink.split.i_crit_edge:      ; preds = %do.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body.i128.etf_enable_offload.exit.thread_crit_edge: ; preds = %do.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %etf_enable_offload.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %queue7.i = getelementptr inbounds %struct.tc_etf_qopt_offload, ptr %etf.i, i32 0, i32 1
  %38 = ptrtoint ptr %queue7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.ptr.div, ptr %queue7.i, align 4
  %call.i = call i32 %37(ptr noundef %3, i32 noundef 10, ptr noundef nonnull %etf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i129 = icmp slt i32 %call.i, 0
  br i1 %cmp.i129, label %do.body10.i, label %if.end6.i.etf_enable_offload.exit_crit_edge

if.end6.i.etf_enable_offload.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etf_enable_offload.exit

do.body10.i:                                      ; preds = %if.end6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @etf_enable_offload.__msg.11) #9
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body10.i.etf_enable_offload.exit.thread_crit_edge, label %do.body10.i.cleanup.sink.split.i_crit_edge

do.body10.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.body10.i.etf_enable_offload.exit.thread_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etf_enable_offload.exit.thread

cleanup.sink.split.i:                             ; preds = %do.body10.i.cleanup.sink.split.i_crit_edge, %do.body.i128.cleanup.sink.split.i_crit_edge
  %etf_enable_offload.__msg.11.sink.i = phi ptr [ @etf_enable_offload.__msg, %do.body.i128.cleanup.sink.split.i_crit_edge ], [ @etf_enable_offload.__msg.11, %do.body10.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i130 = phi i32 [ -95, %do.body.i128.cleanup.sink.split.i_crit_edge ], [ %call.i, %do.body10.i.cleanup.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %etf_enable_offload.__msg.11.sink.i, ptr %extack, align 4
  br label %etf_enable_offload.exit.thread

etf_enable_offload.exit.thread:                   ; preds = %cleanup.sink.split.i, %do.body10.i.etf_enable_offload.exit.thread_crit_edge, %do.body.i128.etf_enable_offload.exit.thread_crit_edge
  %retval.0.i131.ph = phi i32 [ %retval.0.ph.i130, %cleanup.sink.split.i ], [ %call.i, %do.body10.i.etf_enable_offload.exit.thread_crit_edge ], [ -95, %do.body.i128.etf_enable_offload.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %etf.i) #9
  br label %cleanup

etf_enable_offload.exit:                          ; preds = %if.end6.i.etf_enable_offload.exit_crit_edge, %if.then43.etf_enable_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %etf.i) #9
  br label %if.end48

if.end48:                                         ; preds = %etf_enable_offload.exit, %if.end38.if.end48_crit_edge
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  %delta50 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %42 = ptrtoint ptr %delta50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %delta50, align 4
  %43 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clockid.i, align 4
  %clockid52 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %45 = ptrtoint ptr %clockid52 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %clockid52, align 4
  %46 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags40, align 4
  %48 = trunc i32 %47 to i8
  %49 = lshr i8 %48, 1
  %50 = and i8 %49, 1
  %51 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %privdata.i, align 8
  %52 = load i32, ptr %flags40, align 4
  %deadline_mode = getelementptr inbounds %struct.etf_sched_data, ptr %privdata.i, i32 0, i32 1
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = ptrtoint ptr %deadline_mode to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %deadline_mode, align 1
  %56 = load i32, ptr %flags40, align 4
  %skip_sock_check = getelementptr inbounds %struct.etf_sched_data, ptr %privdata.i, i32 0, i32 2
  %57 = trunc i32 %56 to i8
  %58 = lshr i8 %57, 2
  %59 = and i8 %58, 1
  %60 = ptrtoint ptr %skip_sock_check to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %skip_sock_check, align 2
  %61 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %do.body72 [
    i32 0, label %if.end48.sw.epilog_crit_edge
    i32 1, label %sw.bb66
    i32 7, label %sw.bb68
    i32 11, label %sw.bb70
  ]

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body72:                                        ; preds = %if.end48
  call void @do_trace_netlink_extack(ptr noundef nonnull @etf_init.__msg.8) #9
  %tobool74.not = icmp eq ptr %extack, null
  br i1 %tobool74.not, label %do.body72.cleanup_crit_edge, label %if.then75

do.body72.cleanup_crit_edge:                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then75:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @etf_init.__msg.8, ptr %extack, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb70, %sw.bb68, %sw.bb66, %if.end48.sw.epilog_crit_edge
  %ktime_get_clocktai.sink = phi ptr [ @ktime_get_clocktai, %sw.bb70 ], [ @ktime_get_boottime, %sw.bb68 ], [ @ktime_get, %sw.bb66 ], [ @ktime_get_real, %if.end48.sw.epilog_crit_edge ]
  %get_time71 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %63 = ptrtoint ptr %get_time71 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ktime_get_clocktai.sink, ptr %get_time71, align 8
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %64 = ptrtoint ptr %clockid52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clockid52, align 4
  call void @qdisc_watchdog_init_clockid(ptr noundef %watchdog, ptr noundef %sch, i32 noundef %65) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then75, %do.body72.cleanup_crit_edge, %etf_enable_offload.exit.thread, %return.sink.split.i, %do.body16.i.cleanup_crit_edge, %do.body6.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ %call2.i, %if.end4.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -524, %if.then75 ], [ -524, %do.body72.cleanup_crit_edge ], [ %retval.0.i131.ph, %etf_enable_offload.exit.thread ], [ %retval.0.ph.i, %return.sink.split.i ], [ -22, %do.body16.i.cleanup_crit_edge ], [ -22, %do.body6.i.cleanup_crit_edge ], [ -524, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etf_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %cmp = icmp eq ptr %1, %sch
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %head.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %rb_leftmost.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not14.i = icmp eq ptr %3, null
  br i1 %tobool.not14.i, label %if.end.timesortedlist_clear.exit_crit_edge, label %cond.end.lr.ph.i

if.end.timesortedlist_clear.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %timesortedlist_clear.exit

cond.end.lr.ph.i:                                 ; preds = %if.end
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %rb_erase_cached.exit.i.cond.end.i_crit_edge, %cond.end.lr.ph.i
  %p.015.i = phi ptr [ %3, %cond.end.lr.ph.i ], [ %call3.i, %rb_erase_cached.exit.i.cond.end.i_crit_edge ]
  %call3.i = tail call ptr @rb_next(ptr noundef nonnull %p.015.i) #9
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i.i = icmp eq ptr %5, %p.015.i
  br i1 %cmp.i.i, label %if.then.i.i, label %cond.end.i.rb_erase_cached.exit.i_crit_edge

cond.end.i.rb_erase_cached.exit.i_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %p.015.i) #9
  %6 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %cond.end.i.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %p.015.i, ptr noundef %head.i) #9
  tail call void @rtnl_kfree_skbs(ptr noundef nonnull %p.015.i, ptr noundef nonnull %p.015.i) #9
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %8, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %rb_erase_cached.exit.i.timesortedlist_clear.exit_crit_edge, label %rb_erase_cached.exit.i.cond.end.i_crit_edge

rb_erase_cached.exit.i.cond.end.i_crit_edge:      ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

rb_erase_cached.exit.i.timesortedlist_clear.exit_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timesortedlist_clear.exit

timesortedlist_clear.exit:                        ; preds = %rb_erase_cached.exit.i.timesortedlist_clear.exit_crit_edge, %if.end.timesortedlist_clear.exit_crit_edge
  %q2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i11 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i11, label %land.rhs.i, label %timesortedlist_clear.exit.if.end29.i_crit_edge

timesortedlist_clear.exit.if.end29.i_crit_edge:   ; preds = %timesortedlist_clear.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

land.rhs.i:                                       ; preds = %timesortedlist_clear.exit
  %.b50.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !62

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 1165) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %timesortedlist_clear.exit.if.end29.i_crit_edge
  %qlen.i12 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %9 = ptrtoint ptr %qlen.i12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool37.not.i = icmp eq i32 %10, 0
  br i1 %tobool37.not.i, label %if.end29.i.__qdisc_reset_queue.exit_crit_edge, label %if.then38.i

if.end29.i.__qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__qdisc_reset_queue.exit

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q2, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %12, ptr noundef %14) #9
  %15 = ptrtoint ptr %q2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %q2, align 4
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tail.i, align 4
  br label %__qdisc_reset_queue.exit

__qdisc_reset_queue.exit:                         ; preds = %if.then38.i, %if.end29.i.__qdisc_reset_queue.exit_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %backlog, align 4
  %18 = ptrtoint ptr %qlen.i12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i12, align 8
  %last = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %19 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %last, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etf_destroy(ptr noundef %sch) #2 align 64 {
entry:
  %etf.i = alloca %struct.tc_etf_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 8
  %cmp = icmp eq ptr %5, %sch
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %etf.i) #9
  %6 = ptrtoint ptr %etf.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %etf.i, align 8
  %7 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %privdata.i, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.etf_disable_offload.exit_crit_edge, label %if.end.i

if.end.etf_disable_offload.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %etf_disable_offload.exit

if.end.i:                                         ; preds = %if.end
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 42
  %11 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.etf_disable_offload.exit_crit_edge, label %if.end3.i

if.end.i.etf_disable_offload.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etf_disable_offload.exit

if.end3.i:                                        ; preds = %if.end.i
  %queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %queue.i, align 8
  %queue4.i = getelementptr inbounds %struct.tc_etf_qopt_offload, ptr %etf.i, i32 0, i32 1
  %15 = ptrtoint ptr %queue4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %queue4.i, align 4
  %call.i = call i32 %12(ptr noundef %3, i32 noundef 10, ptr noundef nonnull %etf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.etf_disable_offload.exit_crit_edge

if.end3.i.etf_disable_offload.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etf_disable_offload.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %queue4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue4.i, align 4
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %17) #12
  br label %etf_disable_offload.exit

etf_disable_offload.exit:                         ; preds = %do.end.i, %if.end3.i.etf_disable_offload.exit_crit_edge, %if.end.i.etf_disable_offload.exit_crit_edge, %if.end.etf_disable_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %etf.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etf_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %opt = alloca %struct.tc_etf_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opt) #9
  %0 = getelementptr inbounds i8, ptr %opt, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not34 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not34
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %delta = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %4 = ptrtoint ptr %delta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delta, align 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %opt, align 4
  %clockid = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %7 = ptrtoint ptr %clockid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clockid, align 4
  %clockid3 = getelementptr inbounds %struct.tc_etf_qopt, ptr %opt, i32 0, i32 1
  %9 = ptrtoint ptr %clockid3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %clockid3, align 4
  %10 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %privdata.i, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.tc_etf_qopt, ptr %opt, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %deadline_mode = getelementptr inbounds %struct.etf_sched_data, ptr %privdata.i, i32 0, i32 1
  %14 = ptrtoint ptr %deadline_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %deadline_mode, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %flags9 = getelementptr inbounds %struct.tc_etf_qopt, ptr %opt, i32 0, i32 2
  %16 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags9, align 4
  %or10 = or i32 %17, 1
  store i32 %or10, ptr %flags9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %skip_sock_check = getelementptr inbounds %struct.etf_sched_data, ptr %privdata.i, i32 0, i32 2
  %18 = ptrtoint ptr %skip_sock_check to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %skip_sock_check, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %flags14 = getelementptr inbounds %struct.tc_etf_qopt, ptr %opt, i32 0, i32 2
  %20 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags14, align 4
  %or15 = or i32 %21, 4
  store i32 %or15, ptr %flags14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 12, ptr noundef nonnull %opt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then.i.i

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %3, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %28, %3
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !63

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.end20 ], [ -1, %if.end.i.i ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opt) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @timesortedlist_remove(ptr noundef %sch, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %rb_leftmost.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %1, %skb
  br i1 %cmp.i, label %if.then.i, label %entry.rb_erase_cached.exit_crit_edge

entry.rb_erase_cached.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @rb_next(ptr noundef %skb) #9
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %entry.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %skb, ptr noundef %head) #9
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %skb, align 8
  %prev = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %prev, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %9 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %14, %12
  store i32 %sub.i, ptr %backlog.i, align 4
  %15 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool.i.not.i.i, label %rb_erase_cached.exit.cond.end.i.i_crit_edge, label %cond.true.i.i

rb_erase_cached.exit.cond.end.i.i_crit_edge:      ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #11
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %21 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %rb_erase_cached.exit.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %rb_erase_cached.exit.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %23 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %27 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %32, ptrtoint (ptr @lockdep_recursion to i32)
  %33 = inttoptr i32 %add.i.i.i.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %36 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i7.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %40 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %44 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i9.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %48 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %51, ptrtoint (ptr @hardirqs_enabled to i32)
  %52 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  %55 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i12.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !62

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %15 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %59 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %60, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %61 = tail call ptr @llvm.returnaddress(i32 0) #9
  %62 = ptrtoint ptr %61 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %62) #9
  %63 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %64, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %65 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %66, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %62) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %67 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %69, align 8
  %last = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %72 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %last, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %73 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen, align 8
  %dec = add i32 %74, -1
  store i32 %dec, ptr %qlen, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ktime_get_real() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ktime_get_boottime() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i64 @ktime_get_with_offset(i32 noundef 1) #9
  ret i64 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ktime_get_clocktai() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i64 @ktime_get_with_offset(i32 noundef 2) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init_clockid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_sch_etf__518_519_etf_module_init6, !1, !"__initcall__kmod_sch_etf__518_519_etf_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_etf.c", i32 519, i32 1}
!2 = !{ptr @__exitcall_etf_module_exit, !3, !"__exitcall_etf_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_etf.c", i32 520, i32 1}
!4 = !{ptr @__UNIQUE_ID_file519, !5, !"__UNIQUE_ID_file519", i1 false, i1 false}
!5 = !{!"../net/sched/sch_etf.c", i32 521, i32 1}
!6 = !{ptr @__UNIQUE_ID_license520, !5, !"__UNIQUE_ID_license520", i1 false, i1 false}
!7 = !{ptr @etf_qdisc_ops, !8, !"etf_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_etf.c", i32 497, i32 25}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @etf_init.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/sched/sch_etf.c", i32 356, i32 3}
!14 = !{ptr @etf_init.__msg.1, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/sched/sch_etf.c", i32 367, i32 3}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sched/sch_etf.c", i32 373, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @etf_init.__UNIQUE_ID_ddebug517, !17, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!22 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @etf_init.__msg.8, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../net/sched/sch_etf.c", i32 411, i32 3}
!26 = !{ptr @etf_policy, !27, !"etf_policy", i1 false, i1 false}
!27 = !{!"../net/sched/sch_etf.c", i32 40, i32 32}
!28 = !{ptr @validate_input_params.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/sched/sch_etf.c", i32 58, i32 3}
!30 = !{ptr @validate_input_params.__msg.9, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/sched/sch_etf.c", i32 63, i32 3}
!32 = !{ptr @validate_input_params.__msg.10, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/sched/sch_etf.c", i32 68, i32 3}
!34 = !{ptr @etf_enable_offload.__msg, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../net/sched/sch_etf.c", i32 330, i32 3}
!36 = !{ptr @etf_enable_offload.__msg.11, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/sched/sch_etf.c", i32 339, i32 3}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/sched/sch_etf.c", i32 315, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @etf_disable_offload._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @etf_disable_offload._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/net/netlink.h", i32 991, i32 3}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{!"auto-init"}
!61 = !{i64 2148963432, i64 2148963437, i64 2148963450, i64 2148963494, i64 2148963528, i64 2148963549}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2149874213}
!65 = !{i64 2149879145}
!66 = !{i64 2149900857}
!67 = !{i64 2149905749}
!68 = !{i64 2149982206}
!69 = !{i64 2149982531}
